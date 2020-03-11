--- GENERATED CODE - DO NOT MODIFY
-- AWS Database Migration Service (dms-2016-01-01)

local M = {}

M.metadata = {
	api_version = "2016-01-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "dms",
	service_abbreviation = "",
	service_full_name = "AWS Database Migration Service",
	signature_version = "v4",
	target_prefix = "AmazonDMSv20160101",
	timestamp_format = "",
	global_endpoint = "",
	uid = "dms-2016-01-01",
}

local keys = {}
local asserts = {}

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
-- * SourceType [String] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | migration-task</p>
-- * Filters [FilterList] <p>Filters applied to the action.</p>
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

keys.DescribeConnectionsResponse = { ["Marker"] = true, ["Connections"] = true, nil }

function asserts.AssertDescribeConnectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Connections"] then asserts.AssertConnectionList(struct["Connections"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConnectionsResponse[k], "DescribeConnectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Connections [ConnectionList] <p>A description of the connections.</p>
-- @return DescribeConnectionsResponse structure as a key-value pair table
function M.DescribeConnectionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConnectionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Connections"] = args["Connections"],
	}
	asserts.AssertDescribeConnectionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationSubnetGroupResponse = { nil }

function asserts.AssertDeleteReplicationSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationSubnetGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationSubnetGroupResponse[k], "DeleteReplicationSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationSubnetGroupResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteReplicationSubnetGroupResponse structure as a key-value pair table
function M.DeleteReplicationSubnetGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationSubnetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteReplicationSubnetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRefreshSchemasStatusResponse = { ["RefreshSchemasStatus"] = true, nil }

function asserts.AssertDescribeRefreshSchemasStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRefreshSchemasStatusResponse to be of type 'table'")
	if struct["RefreshSchemasStatus"] then asserts.AssertRefreshSchemasStatus(struct["RefreshSchemasStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRefreshSchemasStatusResponse[k], "DescribeRefreshSchemasStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRefreshSchemasStatusResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RefreshSchemasStatus [RefreshSchemasStatus] <p>The status of the schema.</p>
-- @return DescribeRefreshSchemasStatusResponse structure as a key-value pair table
function M.DescribeRefreshSchemasStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRefreshSchemasStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RefreshSchemasStatus"] = args["RefreshSchemasStatus"],
	}
	asserts.AssertDescribeRefreshSchemasStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTableStatisticsResponse = { ["ReplicationTaskArn"] = true, ["Marker"] = true, ["TableStatistics"] = true, nil }

function asserts.AssertDescribeTableStatisticsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableStatisticsResponse to be of type 'table'")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TableStatistics"] then asserts.AssertTableStatisticsList(struct["TableStatistics"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTableStatisticsResponse[k], "DescribeTableStatisticsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableStatisticsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * TableStatistics [TableStatisticsList] <p>The table statistics.</p>
-- @return DescribeTableStatisticsResponse structure as a key-value pair table
function M.DescribeTableStatisticsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTableStatisticsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["Marker"] = args["Marker"],
		["TableStatistics"] = args["TableStatistics"],
	}
	asserts.AssertDescribeTableStatisticsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCertificateMessage = { ["CertificateArn"] = true, nil }

function asserts.AssertDeleteCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateMessage to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCertificateMessage[k], "DeleteCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [String] <p>The Amazon Resource Name (ARN) of the deleted certificate.</p>
-- Required key: CertificateArn
-- @return DeleteCertificateMessage structure as a key-value pair table
function M.DeleteCertificateMessage(args)
	assert(args, "You must provide an argument table when creating DeleteCertificateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertDeleteCertificateMessage(all_args)
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
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a source type that you want to subscribe to. Use the <code>DescribeEventCategories</code> action to see a list of event categories. </p>
-- * Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription. </p>
-- * SourceType [String] <p> The type of AWS DMS resource that generates the events you want to subscribe to. </p> <p>Valid values: replication-instance | migration-task</p>
-- * SubscriptionName [String] <p>The name of the AWS DMS event notification subscription to be modified.</p>
-- * SnsTopicArn [String] <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
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
-- <p>Describes a quota for an AWS account, for example, the number of replication instances allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Max [Long] <p>The maximum allowed value for the quota.</p>
-- * AccountQuotaName [String] <p>The name of the AWS DMS quota for this AWS account.</p>
-- * Used [Long] <p>The amount currently used toward the quota maximum.</p>
-- @return AccountQuota structure as a key-value pair table
function M.AccountQuota(args)
	assert(args, "You must provide an argument table when creating AccountQuota")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Max"] = args["Max"],
		["AccountQuotaName"] = args["AccountQuotaName"],
		["Used"] = args["Used"],
	}
	asserts.AssertAccountQuota(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MongoDbSettings = { ["Username"] = true, ["NestingLevel"] = true, ["AuthType"] = true, ["AuthSource"] = true, ["ServerName"] = true, ["AuthMechanism"] = true, ["DocsToInvestigate"] = true, ["KmsKeyId"] = true, ["DatabaseName"] = true, ["ExtractDocId"] = true, ["Password"] = true, ["Port"] = true, nil }

function asserts.AssertMongoDbSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MongoDbSettings to be of type 'table'")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["NestingLevel"] then asserts.AssertNestingLevelValue(struct["NestingLevel"]) end
	if struct["AuthType"] then asserts.AssertAuthTypeValue(struct["AuthType"]) end
	if struct["AuthSource"] then asserts.AssertString(struct["AuthSource"]) end
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["AuthMechanism"] then asserts.AssertAuthMechanismValue(struct["AuthMechanism"]) end
	if struct["DocsToInvestigate"] then asserts.AssertString(struct["DocsToInvestigate"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["ExtractDocId"] then asserts.AssertString(struct["ExtractDocId"]) end
	if struct["Password"] then asserts.AssertSecretString(struct["Password"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.MongoDbSettings[k], "MongoDbSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MongoDbSettings
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [String] <p>The user name you use to access the MongoDB source endpoint. </p>
-- * NestingLevel [NestingLevelValue] <p> Specifies either document or table mode. </p> <p>Valid values: NONE, ONE</p> <p>Default value is NONE. Specify NONE to use document mode. Specify ONE to use table mode.</p>
-- * AuthType [AuthTypeValue] <p> The authentication type you use to access the MongoDB source endpoint.</p> <p>Valid values: NO, PASSWORD </p> <p>When NO is selected, user name and password parameters are not used and can be empty. </p>
-- * AuthSource [String] <p> The MongoDB database name. This attribute is not used when <code>authType=NO</code>. </p> <p>The default is admin.</p>
-- * ServerName [String] <p> The name of the server on the MongoDB source endpoint. </p>
-- * AuthMechanism [AuthMechanismValue] <p> The authentication mechanism you use to access the MongoDB source endpoint.</p> <p>Valid values: DEFAULT, MONGODB_CR, SCRAM_SHA_1 </p> <p>DEFAULT – For MongoDB version 2.x, use MONGODB_CR. For MongoDB version 3.x, use SCRAM_SHA_1. This attribute is not used when authType=No.</p>
-- * DocsToInvestigate [String] <p> Indicates the number of documents to preview to determine the document organization. Use this attribute when <code>NestingLevel</code> is set to ONE. </p> <p>Must be a positive value greater than 0. Default value is 1000.</p>
-- * KmsKeyId [String] <p> The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region. </p>
-- * DatabaseName [String] <p> The database name on the MongoDB source endpoint. </p>
-- * ExtractDocId [String] <p> Specifies the document ID. Use this attribute when <code>NestingLevel</code> is set to NONE. </p> <p>Default value is false. </p>
-- * Password [SecretString] <p> The password for the user account you use to access the MongoDB source endpoint. </p>
-- * Port [IntegerOptional] <p> The port value for the MongoDB source endpoint. </p>
-- @return MongoDbSettings structure as a key-value pair table
function M.MongoDbSettings(args)
	assert(args, "You must provide an argument table when creating MongoDbSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["NestingLevel"] = args["NestingLevel"],
		["AuthType"] = args["AuthType"],
		["AuthSource"] = args["AuthSource"],
		["ServerName"] = args["ServerName"],
		["AuthMechanism"] = args["AuthMechanism"],
		["DocsToInvestigate"] = args["DocsToInvestigate"],
		["KmsKeyId"] = args["KmsKeyId"],
		["DatabaseName"] = args["DatabaseName"],
		["ExtractDocId"] = args["ExtractDocId"],
		["Password"] = args["Password"],
		["Port"] = args["Port"],
	}
	asserts.AssertMongoDbSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyEventSubscriptionResponse = { ["EventSubscription"] = true, nil }

function asserts.AssertModifyEventSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionResponse to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEventSubscriptionResponse[k], "ModifyEventSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] <p>The modified event subscription.</p>
-- @return ModifyEventSubscriptionResponse structure as a key-value pair table
function M.ModifyEventSubscriptionResponse(args)
	assert(args, "You must provide an argument table when creating ModifyEventSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertModifyEventSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationTaskStats = { ["TablesLoading"] = true, ["TablesQueued"] = true, ["TablesErrored"] = true, ["FullLoadProgressPercent"] = true, ["TablesLoaded"] = true, ["ElapsedTimeMillis"] = true, nil }

function asserts.AssertReplicationTaskStats(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationTaskStats to be of type 'table'")
	if struct["TablesLoading"] then asserts.AssertInteger(struct["TablesLoading"]) end
	if struct["TablesQueued"] then asserts.AssertInteger(struct["TablesQueued"]) end
	if struct["TablesErrored"] then asserts.AssertInteger(struct["TablesErrored"]) end
	if struct["FullLoadProgressPercent"] then asserts.AssertInteger(struct["FullLoadProgressPercent"]) end
	if struct["TablesLoaded"] then asserts.AssertInteger(struct["TablesLoaded"]) end
	if struct["ElapsedTimeMillis"] then asserts.AssertLong(struct["ElapsedTimeMillis"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationTaskStats[k], "ReplicationTaskStats contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationTaskStats
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TablesLoading [Integer] <p>The number of tables currently loading for this task.</p>
-- * TablesQueued [Integer] <p>The number of tables queued for this task.</p>
-- * TablesErrored [Integer] <p>The number of errors that have occurred during this task.</p>
-- * FullLoadProgressPercent [Integer] <p>The percent complete for the full load migration task.</p>
-- * TablesLoaded [Integer] <p>The number of tables loaded for this task.</p>
-- * ElapsedTimeMillis [Long] <p>The elapsed time of the task, in milliseconds.</p>
-- @return ReplicationTaskStats structure as a key-value pair table
function M.ReplicationTaskStats(args)
	assert(args, "You must provide an argument table when creating ReplicationTaskStats")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TablesLoading"] = args["TablesLoading"],
		["TablesQueued"] = args["TablesQueued"],
		["TablesErrored"] = args["TablesErrored"],
		["FullLoadProgressPercent"] = args["FullLoadProgressPercent"],
		["TablesLoaded"] = args["TablesLoaded"],
		["ElapsedTimeMillis"] = args["ElapsedTimeMillis"],
	}
	asserts.AssertReplicationTaskStats(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DynamoDbSettings = { ["ServiceAccessRoleArn"] = true, nil }

function asserts.AssertDynamoDbSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDbSettings to be of type 'table'")
	assert(struct["ServiceAccessRoleArn"], "Expected key ServiceAccessRoleArn to exist in table")
	if struct["ServiceAccessRoleArn"] then asserts.AssertString(struct["ServiceAccessRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamoDbSettings[k], "DynamoDbSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDbSettings
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceAccessRoleArn [String] <p> The Amazon Resource Name (ARN) used by the service access IAM role. </p>
-- Required key: ServiceAccessRoleArn
-- @return DynamoDbSettings structure as a key-value pair table
function M.DynamoDbSettings(args)
	assert(args, "You must provide an argument table when creating DynamoDbSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceAccessRoleArn"] = args["ServiceAccessRoleArn"],
	}
	asserts.AssertDynamoDbSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEndpointResponse = { ["Endpoint"] = true, nil }

function asserts.AssertDeleteEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointResponse to be of type 'table'")
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointResponse[k], "DeleteEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [Endpoint] <p>The endpoint that was deleted.</p>
-- @return DeleteEndpointResponse structure as a key-value pair table
function M.DeleteEndpointResponse(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
	}
	asserts.AssertDeleteEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTableStatisticsMessage = { ["ReplicationTaskArn"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeTableStatisticsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableStatisticsMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTableStatisticsMessage[k], "DescribeTableStatisticsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableStatisticsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 500.</p>
-- * Filters [FilterList] <p>Filters applied to the describe table statistics action.</p> <p>Valid filter names: schema-name | table-name | table-state</p> <p>A combination of filters creates an AND condition where each record matches all specified filters.</p>
-- Required key: ReplicationTaskArn
-- @return DescribeTableStatisticsMessage structure as a key-value pair table
function M.DescribeTableStatisticsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeTableStatisticsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeTableStatisticsMessage(all_args)
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
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a source type that you want to subscribe to. You can see a list of the categories for a given source type by calling the <b>DescribeEventCategories</b> action or in the topic <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html"> Working with Events and Notifications</a> in the AWS Database Migration Service User Guide. </p>
-- * SourceType [String] <p> The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to <code>replication-instance</code>. If this value is not specified, all events are returned. </p> <p>Valid values: replication-instance | migration-task</p>
-- * Tags [TagList] <p>A tag to be attached to the event subscription.</p>
-- * Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription, or set to <b>false</b> to create the subscription but not activate it. </p>
-- * SnsTopicArn [String] <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>
-- * SubscriptionName [String] <p>The name of the AWS DMS event notification subscription. </p> <p>Constraints: The name must be less than 255 characters. </p>
-- * SourceIds [SourceIdsList] <p> The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens. </p>
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

keys.DescribeReplicationInstancesMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeReplicationInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationInstancesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationInstancesMessage[k], "DescribeReplicationInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationInstancesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version</p>
-- @return DescribeReplicationInstancesMessage structure as a key-value pair table
function M.DescribeReplicationInstancesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationInstancesMessage")
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
	}
	asserts.AssertDescribeReplicationInstancesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationTaskMessage = { ["SourceEndpointArn"] = true, ["ReplicationTaskIdentifier"] = true, ["CdcStopPosition"] = true, ["ReplicationInstanceArn"] = true, ["CdcStartPosition"] = true, ["TableMappings"] = true, ["Tags"] = true, ["MigrationType"] = true, ["TargetEndpointArn"] = true, ["ReplicationTaskSettings"] = true, ["CdcStartTime"] = true, nil }

function asserts.AssertCreateReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskIdentifier"], "Expected key ReplicationTaskIdentifier to exist in table")
	assert(struct["SourceEndpointArn"], "Expected key SourceEndpointArn to exist in table")
	assert(struct["TargetEndpointArn"], "Expected key TargetEndpointArn to exist in table")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	assert(struct["MigrationType"], "Expected key MigrationType to exist in table")
	assert(struct["TableMappings"], "Expected key TableMappings to exist in table")
	if struct["SourceEndpointArn"] then asserts.AssertString(struct["SourceEndpointArn"]) end
	if struct["ReplicationTaskIdentifier"] then asserts.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["CdcStopPosition"] then asserts.AssertString(struct["CdcStopPosition"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["CdcStartPosition"] then asserts.AssertString(struct["CdcStartPosition"]) end
	if struct["TableMappings"] then asserts.AssertString(struct["TableMappings"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["MigrationType"] then asserts.AssertMigrationTypeValue(struct["MigrationType"]) end
	if struct["TargetEndpointArn"] then asserts.AssertString(struct["TargetEndpointArn"]) end
	if struct["ReplicationTaskSettings"] then asserts.AssertString(struct["ReplicationTaskSettings"]) end
	if struct["CdcStartTime"] then asserts.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationTaskMessage[k], "CreateReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationTaskMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationTaskIdentifier [String] <p>The replication task identifier.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * CdcStopPosition [String] <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- * CdcStartPosition [String] <p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
-- * TableMappings [String] <p>When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with "file://". When working with the DMS API, provide the JSON as the parameter value.</p> <p>For example, --table-mappings file://mappingfile.json</p>
-- * Tags [TagList] <p>Tags to be added to the replication instance.</p>
-- * MigrationType [MigrationTypeValue] <p>The migration type.</p>
-- * TargetEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationTaskSettings [String] <p>Settings for the task, such as target metadata settings. For a complete list of task settings, see <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Task Settings for AWS Database Migration Service Tasks</a>.</p>
-- * CdcStartTime [TStamp] <p>Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
-- Required key: ReplicationTaskIdentifier
-- Required key: SourceEndpointArn
-- Required key: TargetEndpointArn
-- Required key: ReplicationInstanceArn
-- Required key: MigrationType
-- Required key: TableMappings
-- @return CreateReplicationTaskMessage structure as a key-value pair table
function M.CreateReplicationTaskMessage(args)
	assert(args, "You must provide an argument table when creating CreateReplicationTaskMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceEndpointArn"] = args["SourceEndpointArn"],
		["ReplicationTaskIdentifier"] = args["ReplicationTaskIdentifier"],
		["CdcStopPosition"] = args["CdcStopPosition"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
		["CdcStartPosition"] = args["CdcStartPosition"],
		["TableMappings"] = args["TableMappings"],
		["Tags"] = args["Tags"],
		["MigrationType"] = args["MigrationType"],
		["TargetEndpointArn"] = args["TargetEndpointArn"],
		["ReplicationTaskSettings"] = args["ReplicationTaskSettings"],
		["CdcStartTime"] = args["CdcStartTime"],
	}
	asserts.AssertCreateReplicationTaskMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestConnectionResponse = { ["Connection"] = true, nil }

function asserts.AssertTestConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestConnectionResponse to be of type 'table'")
	if struct["Connection"] then asserts.AssertConnection(struct["Connection"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestConnectionResponse[k], "TestConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestConnectionResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Connection [Connection] <p>The connection tested.</p>
-- @return TestConnectionResponse structure as a key-value pair table
function M.TestConnectionResponse(args)
	assert(args, "You must provide an argument table when creating TestConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Connection"] = args["Connection"],
	}
	asserts.AssertTestConnectionResponse(all_args)
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
-- * EventCategories [EventCategoriesList] <p>A list of event categories for a source type that you want to subscribe to.</p>
-- * SourceType [SourceType] <p>The type of AWS DMS resource that generates events.</p> <p>Valid values: replication-instance | migration-task</p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * StartTime [TStamp] <p>The start time for the events to be listed.</p>
-- * Duration [IntegerOptional] <p>The duration of the events to be listed.</p>
-- * Filters [FilterList] <p>Filters applied to the action.</p>
-- * SourceIdentifier [String] <p> The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It cannot end with a hyphen or contain two consecutive hyphens. </p>
-- * EndTime [TStamp] <p>The end time for the events to be listed.</p>
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

keys.CreateReplicationTaskResponse = { ["ReplicationTask"] = true, nil }

function asserts.AssertCreateReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then asserts.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationTaskResponse[k], "CreateReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationTaskResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTask [ReplicationTask] <p>The replication task that was created.</p>
-- @return CreateReplicationTaskResponse structure as a key-value pair table
function M.CreateReplicationTaskResponse(args)
	assert(args, "You must provide an argument table when creating CreateReplicationTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTask"] = args["ReplicationTask"],
	}
	asserts.AssertCreateReplicationTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartReplicationTaskAssessmentMessage = { ["ReplicationTaskArn"] = true, nil }

function asserts.AssertStartReplicationTaskAssessmentMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskAssessmentMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartReplicationTaskAssessmentMessage[k], "StartReplicationTaskAssessmentMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskAssessmentMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p> The Amazon Resource Name (ARN) of the replication task. </p>
-- Required key: ReplicationTaskArn
-- @return StartReplicationTaskAssessmentMessage structure as a key-value pair table
function M.StartReplicationTaskAssessmentMessage(args)
	assert(args, "You must provide an argument table when creating StartReplicationTaskAssessmentMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
	}
	asserts.AssertStartReplicationTaskAssessmentMessage(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and cannot be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- * Key [String] <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and cannot be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
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

keys.AddTagsToResourceMessage = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceMessage[k], "AddTagsToResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be added to. AWS DMS resources include a replication instance, endpoint, and a replication task.</p>
-- * Tags [TagList] <p>The tag to be assigned to the DMS resource.</p>
-- Required key: ResourceArn
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
		["ResourceArn"] = args["ResourceArn"],
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

keys.Event = { ["Date"] = true, ["Message"] = true, ["SourceIdentifier"] = true, ["EventCategories"] = true, ["SourceType"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["Date"] then asserts.AssertTStamp(struct["Date"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Date [TStamp] <p>The date of the event.</p>
-- * Message [String] <p>The event message.</p>
-- * SourceIdentifier [String] <p> The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens. </p> <p>Constraints:replication instance, endpoint, migration task</p>
-- * EventCategories [EventCategoriesList] <p>The event categories available for the specified source type.</p>
-- * SourceType [SourceType] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | endpoint | migration-task</p>
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
		["EventCategories"] = args["EventCategories"],
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

keys.DeleteReplicationSubnetGroupMessage = { ["ReplicationSubnetGroupIdentifier"] = true, nil }

function asserts.AssertDeleteReplicationSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationSubnetGroupMessage to be of type 'table'")
	assert(struct["ReplicationSubnetGroupIdentifier"], "Expected key ReplicationSubnetGroupIdentifier to exist in table")
	if struct["ReplicationSubnetGroupIdentifier"] then asserts.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationSubnetGroupMessage[k], "DeleteReplicationSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationSubnetGroupIdentifier [String] <p>The subnet group name of the replication instance.</p>
-- Required key: ReplicationSubnetGroupIdentifier
-- @return DeleteReplicationSubnetGroupMessage structure as a key-value pair table
function M.DeleteReplicationSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationSubnetGroupIdentifier"] = args["ReplicationSubnetGroupIdentifier"],
	}
	asserts.AssertDeleteReplicationSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationSubnetGroupMessage = { ["ReplicationSubnetGroupDescription"] = true, ["SubnetIds"] = true, ["Tags"] = true, ["ReplicationSubnetGroupIdentifier"] = true, nil }

function asserts.AssertCreateReplicationSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationSubnetGroupMessage to be of type 'table'")
	assert(struct["ReplicationSubnetGroupIdentifier"], "Expected key ReplicationSubnetGroupIdentifier to exist in table")
	assert(struct["ReplicationSubnetGroupDescription"], "Expected key ReplicationSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["ReplicationSubnetGroupDescription"] then asserts.AssertString(struct["ReplicationSubnetGroupDescription"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then asserts.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationSubnetGroupMessage[k], "CreateReplicationSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationSubnetGroupDescription [String] <p>The description for the subnet group.</p>
-- * SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the subnet group.</p>
-- * Tags [TagList] <p>The tag to be assigned to the subnet group.</p>
-- * ReplicationSubnetGroupIdentifier [String] <p>The name for the replication subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be "default".</p> <p>Example: <code>mySubnetgroup</code> </p>
-- Required key: ReplicationSubnetGroupIdentifier
-- Required key: ReplicationSubnetGroupDescription
-- Required key: SubnetIds
-- @return CreateReplicationSubnetGroupMessage structure as a key-value pair table
function M.CreateReplicationSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateReplicationSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationSubnetGroupDescription"] = args["ReplicationSubnetGroupDescription"],
		["SubnetIds"] = args["SubnetIds"],
		["Tags"] = args["Tags"],
		["ReplicationSubnetGroupIdentifier"] = args["ReplicationSubnetGroupIdentifier"],
	}
	asserts.AssertCreateReplicationSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestConnectionMessage = { ["EndpointArn"] = true, ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertTestConnectionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestConnectionMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestConnectionMessage[k], "TestConnectionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestConnectionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- Required key: ReplicationInstanceArn
-- Required key: EndpointArn
-- @return TestConnectionMessage structure as a key-value pair table
function M.TestConnectionMessage(args)
	assert(args, "You must provide an argument table when creating TestConnectionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertTestConnectionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TableToReload = { ["SchemaName"] = true, ["TableName"] = true, nil }

function asserts.AssertTableToReload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableToReload to be of type 'table'")
	if struct["SchemaName"] then asserts.AssertString(struct["SchemaName"]) end
	if struct["TableName"] then asserts.AssertString(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableToReload[k], "TableToReload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableToReload
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaName [String] <p>The schema name of the table to be reloaded.</p>
-- * TableName [String] <p>The table name of the table to be reloaded.</p>
-- @return TableToReload structure as a key-value pair table
function M.TableToReload(args)
	assert(args, "You must provide an argument table when creating TableToReload")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaName"] = args["SchemaName"],
		["TableName"] = args["TableName"],
	}
	asserts.AssertTableToReload(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReloadTablesMessage = { ["ReplicationTaskArn"] = true, ["ReloadOption"] = true, ["TablesToReload"] = true, nil }

function asserts.AssertReloadTablesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReloadTablesMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	assert(struct["TablesToReload"], "Expected key TablesToReload to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["ReloadOption"] then asserts.AssertReloadOptionValue(struct["ReloadOption"]) end
	if struct["TablesToReload"] then asserts.AssertTableListToReload(struct["TablesToReload"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReloadTablesMessage[k], "ReloadTablesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReloadTablesMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task. </p>
-- * ReloadOption [ReloadOptionValue] <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate it if validation is enabled. Specify <code>validate-only</code> to re-validate the table. This option applies only when validation is enabled for the task. </p> <p>Valid values: data-reload, validate-only</p> <p>Default value is data-reload.</p>
-- * TablesToReload [TableListToReload] <p>The name and schema of the table to be reloaded. </p>
-- Required key: ReplicationTaskArn
-- Required key: TablesToReload
-- @return ReloadTablesMessage structure as a key-value pair table
function M.ReloadTablesMessage(args)
	assert(args, "You must provide an argument table when creating ReloadTablesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["ReloadOption"] = args["ReloadOption"],
		["TablesToReload"] = args["TablesToReload"],
	}
	asserts.AssertReloadTablesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsFromResourceResponse = { nil }

function asserts.AssertRemoveTagsFromResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceResponse[k], "RemoveTagsFromResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveTagsFromResourceResponse structure as a key-value pair table
function M.RemoveTagsFromResourceResponse(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveTagsFromResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationSubnetGroupsResponse = { ["Marker"] = true, ["ReplicationSubnetGroups"] = true, nil }

function asserts.AssertDescribeReplicationSubnetGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationSubnetGroupsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReplicationSubnetGroups"] then asserts.AssertReplicationSubnetGroups(struct["ReplicationSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationSubnetGroupsResponse[k], "DescribeReplicationSubnetGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationSubnetGroupsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * ReplicationSubnetGroups [ReplicationSubnetGroups] <p>A description of the replication subnet groups.</p>
-- @return DescribeReplicationSubnetGroupsResponse structure as a key-value pair table
function M.DescribeReplicationSubnetGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationSubnetGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReplicationSubnetGroups"] = args["ReplicationSubnetGroups"],
	}
	asserts.AssertDescribeReplicationSubnetGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationInstanceTaskLogsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertDescribeReplicationInstanceTaskLogsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationInstanceTaskLogsMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationInstanceTaskLogsMessage[k], "DescribeReplicationInstanceTaskLogsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationInstanceTaskLogsMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- Required key: ReplicationInstanceArn
-- @return DescribeReplicationInstanceTaskLogsMessage structure as a key-value pair table
function M.DescribeReplicationInstanceTaskLogsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationInstanceTaskLogsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertDescribeReplicationInstanceTaskLogsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartReplicationTaskAssessmentResponse = { ["ReplicationTask"] = true, nil }

function asserts.AssertStartReplicationTaskAssessmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskAssessmentResponse to be of type 'table'")
	if struct["ReplicationTask"] then asserts.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartReplicationTaskAssessmentResponse[k], "StartReplicationTaskAssessmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskAssessmentResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTask [ReplicationTask] <p> The assessed replication task. </p>
-- @return StartReplicationTaskAssessmentResponse structure as a key-value pair table
function M.StartReplicationTaskAssessmentResponse(args)
	assert(args, "You must provide an argument table when creating StartReplicationTaskAssessmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTask"] = args["ReplicationTask"],
	}
	asserts.AssertStartReplicationTaskAssessmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEventSubscriptionResponse = { ["EventSubscription"] = true, nil }

function asserts.AssertCreateEventSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionResponse to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSubscriptionResponse[k], "CreateEventSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] <p>The event subscription that was created.</p>
-- @return CreateEventSubscriptionResponse structure as a key-value pair table
function M.CreateEventSubscriptionResponse(args)
	assert(args, "You must provide an argument table when creating CreateEventSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertCreateEventSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrderableReplicationInstancesResponse = { ["Marker"] = true, ["OrderableReplicationInstances"] = true, nil }

function asserts.AssertDescribeOrderableReplicationInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableReplicationInstancesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["OrderableReplicationInstances"] then asserts.AssertOrderableReplicationInstanceList(struct["OrderableReplicationInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrderableReplicationInstancesResponse[k], "DescribeOrderableReplicationInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableReplicationInstancesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * OrderableReplicationInstances [OrderableReplicationInstanceList] <p>The order-able replication instances available.</p>
-- @return DescribeOrderableReplicationInstancesResponse structure as a key-value pair table
function M.DescribeOrderableReplicationInstancesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeOrderableReplicationInstancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["OrderableReplicationInstances"] = args["OrderableReplicationInstances"],
	}
	asserts.AssertDescribeOrderableReplicationInstancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationTaskMessage = { ["ReplicationTaskIdentifier"] = true, ["CdcStopPosition"] = true, ["CdcStartPosition"] = true, ["ReplicationTaskArn"] = true, ["MigrationType"] = true, ["TableMappings"] = true, ["ReplicationTaskSettings"] = true, ["CdcStartTime"] = true, nil }

function asserts.AssertModifyReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskIdentifier"] then asserts.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["CdcStopPosition"] then asserts.AssertString(struct["CdcStopPosition"]) end
	if struct["CdcStartPosition"] then asserts.AssertString(struct["CdcStartPosition"]) end
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["MigrationType"] then asserts.AssertMigrationTypeValue(struct["MigrationType"]) end
	if struct["TableMappings"] then asserts.AssertString(struct["TableMappings"]) end
	if struct["ReplicationTaskSettings"] then asserts.AssertString(struct["ReplicationTaskSettings"]) end
	if struct["CdcStartTime"] then asserts.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationTaskMessage[k], "ModifyReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationTaskMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskIdentifier [String] <p>The replication task identifier.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * CdcStopPosition [String] <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “</p>
-- * CdcStartPosition [String] <p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- * MigrationType [MigrationTypeValue] <p>The migration type.</p> <p>Valid values: full-load | cdc | full-load-and-cdc</p>
-- * TableMappings [String] <p>When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with "file://". When working with the DMS API, provide the JSON as the parameter value.</p> <p>For example, --table-mappings file://mappingfile.json</p>
-- * ReplicationTaskSettings [String] <p>JSON file that contains settings for the task, such as target metadata settings.</p>
-- * CdcStartTime [TStamp] <p>Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
-- Required key: ReplicationTaskArn
-- @return ModifyReplicationTaskMessage structure as a key-value pair table
function M.ModifyReplicationTaskMessage(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationTaskMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskIdentifier"] = args["ReplicationTaskIdentifier"],
		["CdcStopPosition"] = args["CdcStopPosition"],
		["CdcStartPosition"] = args["CdcStartPosition"],
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["MigrationType"] = args["MigrationType"],
		["TableMappings"] = args["TableMappings"],
		["ReplicationTaskSettings"] = args["ReplicationTaskSettings"],
		["CdcStartTime"] = args["CdcStartTime"],
	}
	asserts.AssertModifyReplicationTaskMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConnectionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeConnectionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConnectionsMessage[k], "DescribeConnectionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>The filters applied to the connection.</p> <p>Valid filter names: endpoint-arn | replication-instance-arn</p>
-- @return DescribeConnectionsMessage structure as a key-value pair table
function M.DescribeConnectionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeConnectionsMessage")
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
	}
	asserts.AssertDescribeConnectionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationInstancesResponse = { ["Marker"] = true, ["ReplicationInstances"] = true, nil }

function asserts.AssertDescribeReplicationInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationInstancesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReplicationInstances"] then asserts.AssertReplicationInstanceList(struct["ReplicationInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationInstancesResponse[k], "DescribeReplicationInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationInstancesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * ReplicationInstances [ReplicationInstanceList] <p>The replication instances described.</p>
-- @return DescribeReplicationInstancesResponse structure as a key-value pair table
function M.DescribeReplicationInstancesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationInstancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReplicationInstances"] = args["ReplicationInstances"],
	}
	asserts.AssertDescribeReplicationInstancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSchemasResponse = { ["Marker"] = true, ["Schemas"] = true, nil }

function asserts.AssertDescribeSchemasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSchemasResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Schemas"] then asserts.AssertSchemaList(struct["Schemas"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSchemasResponse[k], "DescribeSchemasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSchemasResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Schemas [SchemaList] <p>The described schema.</p>
-- @return DescribeSchemasResponse structure as a key-value pair table
function M.DescribeSchemasResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSchemasResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Schemas"] = args["Schemas"],
	}
	asserts.AssertDescribeSchemasResponse(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the VPC security group.</p>
-- * VpcSecurityGroupId [String] <p>The VPC security group Id.</p>
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

keys.S3Settings = { ["CompressionType"] = true, ["BucketFolder"] = true, ["CsvRowDelimiter"] = true, ["CsvDelimiter"] = true, ["ServiceAccessRoleArn"] = true, ["ExternalTableDefinition"] = true, ["BucketName"] = true, nil }

function asserts.AssertS3Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Settings to be of type 'table'")
	if struct["CompressionType"] then asserts.AssertCompressionTypeValue(struct["CompressionType"]) end
	if struct["BucketFolder"] then asserts.AssertString(struct["BucketFolder"]) end
	if struct["CsvRowDelimiter"] then asserts.AssertString(struct["CsvRowDelimiter"]) end
	if struct["CsvDelimiter"] then asserts.AssertString(struct["CsvDelimiter"]) end
	if struct["ServiceAccessRoleArn"] then asserts.AssertString(struct["ServiceAccessRoleArn"]) end
	if struct["ExternalTableDefinition"] then asserts.AssertString(struct["ExternalTableDefinition"]) end
	if struct["BucketName"] then asserts.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Settings[k], "S3Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Settings
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompressionType [CompressionTypeValue] <p> An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed. </p>
-- * BucketFolder [String] <p> An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path &lt;bucketFolder&gt;/&lt;schema_name&gt;/&lt;table_name&gt;/. If this parameter is not specified, then the path used is &lt;schema_name&gt;/&lt;table_name&gt;/. </p>
-- * CsvRowDelimiter [String] <p> The delimiter used to separate rows in the source files. The default is a carriage return (\n). </p>
-- * CsvDelimiter [String] <p> The delimiter used to separate columns in the source files. The default is a comma. </p>
-- * ServiceAccessRoleArn [String] <p> The Amazon Resource Name (ARN) used by the service access IAM role. </p>
-- * ExternalTableDefinition [String] <p> The external table definition. </p>
-- * BucketName [String] <p> The name of the S3 bucket. </p>
-- @return S3Settings structure as a key-value pair table
function M.S3Settings(args)
	assert(args, "You must provide an argument table when creating S3Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompressionType"] = args["CompressionType"],
		["BucketFolder"] = args["BucketFolder"],
		["CsvRowDelimiter"] = args["CsvRowDelimiter"],
		["CsvDelimiter"] = args["CsvDelimiter"],
		["ServiceAccessRoleArn"] = args["ServiceAccessRoleArn"],
		["ExternalTableDefinition"] = args["ExternalTableDefinition"],
		["BucketName"] = args["BucketName"],
	}
	asserts.AssertS3Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointsResponse = { ["Marker"] = true, ["Endpoints"] = true, nil }

function asserts.AssertDescribeEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Endpoints"] then asserts.AssertEndpointList(struct["Endpoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointsResponse[k], "DescribeEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Endpoints [EndpointList] <p>Endpoint description.</p>
-- @return DescribeEndpointsResponse structure as a key-value pair table
function M.DescribeEndpointsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Endpoints"] = args["Endpoints"],
	}
	asserts.AssertDescribeEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEndpointResponse = { ["Endpoint"] = true, nil }

function asserts.AssertCreateEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointResponse to be of type 'table'")
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointResponse[k], "CreateEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [Endpoint] <p>The endpoint that was created.</p>
-- @return CreateEndpointResponse structure as a key-value pair table
function M.CreateEndpointResponse(args)
	assert(args, "You must provide an argument table when creating CreateEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
	}
	asserts.AssertCreateEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRefreshSchemasStatusMessage = { ["EndpointArn"] = true, nil }

function asserts.AssertDescribeRefreshSchemasStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRefreshSchemasStatusMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRefreshSchemasStatusMessage[k], "DescribeRefreshSchemasStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRefreshSchemasStatusMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- Required key: EndpointArn
-- @return DescribeRefreshSchemasStatusMessage structure as a key-value pair table
function M.DescribeRefreshSchemasStatusMessage(args)
	assert(args, "You must provide an argument table when creating DescribeRefreshSchemasStatusMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertDescribeRefreshSchemasStatusMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationSubnetGroupsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeReplicationSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationSubnetGroupsMessage[k], "DescribeReplicationSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationSubnetGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Filters applied to the describe action.</p>
-- @return DescribeReplicationSubnetGroupsMessage structure as a key-value pair table
function M.DescribeReplicationSubnetGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationSubnetGroupsMessage")
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
	}
	asserts.AssertDescribeReplicationSubnetGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationSubnetGroup = { ["ReplicationSubnetGroupDescription"] = true, ["Subnets"] = true, ["VpcId"] = true, ["SubnetGroupStatus"] = true, ["ReplicationSubnetGroupIdentifier"] = true, nil }

function asserts.AssertReplicationSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationSubnetGroup to be of type 'table'")
	if struct["ReplicationSubnetGroupDescription"] then asserts.AssertString(struct["ReplicationSubnetGroupDescription"]) end
	if struct["Subnets"] then asserts.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["SubnetGroupStatus"] then asserts.AssertString(struct["SubnetGroupStatus"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then asserts.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationSubnetGroup[k], "ReplicationSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationSubnetGroup
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationSubnetGroupDescription [String] <p>The description of the replication subnet group.</p>
-- * Subnets [SubnetList] <p>The subnets that are in the subnet group.</p>
-- * VpcId [String] <p>The ID of the VPC.</p>
-- * SubnetGroupStatus [String] <p>The status of the subnet group.</p>
-- * ReplicationSubnetGroupIdentifier [String] <p>The identifier of the replication instance subnet group.</p>
-- @return ReplicationSubnetGroup structure as a key-value pair table
function M.ReplicationSubnetGroup(args)
	assert(args, "You must provide an argument table when creating ReplicationSubnetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationSubnetGroupDescription"] = args["ReplicationSubnetGroupDescription"],
		["Subnets"] = args["Subnets"],
		["VpcId"] = args["VpcId"],
		["SubnetGroupStatus"] = args["SubnetGroupStatus"],
		["ReplicationSubnetGroupIdentifier"] = args["ReplicationSubnetGroupIdentifier"],
	}
	asserts.AssertReplicationSubnetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationInstanceResponse = { ["ReplicationInstance"] = true, nil }

function asserts.AssertModifyReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then asserts.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationInstanceResponse[k], "ModifyReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationInstanceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstance [ReplicationInstance] <p>The modified replication instance.</p>
-- @return ModifyReplicationInstanceResponse structure as a key-value pair table
function M.ModifyReplicationInstanceResponse(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstance"] = args["ReplicationInstance"],
	}
	asserts.AssertModifyReplicationInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshSchemasResponse = { ["RefreshSchemasStatus"] = true, nil }

function asserts.AssertRefreshSchemasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshSchemasResponse to be of type 'table'")
	if struct["RefreshSchemasStatus"] then asserts.AssertRefreshSchemasStatus(struct["RefreshSchemasStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshSchemasResponse[k], "RefreshSchemasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshSchemasResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RefreshSchemasStatus [RefreshSchemasStatus] <p>The status of the refreshed schema.</p>
-- @return RefreshSchemasResponse structure as a key-value pair table
function M.RefreshSchemasResponse(args)
	assert(args, "You must provide an argument table when creating RefreshSchemasResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RefreshSchemasStatus"] = args["RefreshSchemasStatus"],
	}
	asserts.AssertRefreshSchemasResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCertificatesResponse = { ["Marker"] = true, ["Certificates"] = true, nil }

function asserts.AssertDescribeCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificatesResponse[k], "DescribeCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>The pagination token.</p>
-- * Certificates [CertificateList] <p>The Secure Sockets Layer (SSL) certificates associated with the replication instance.</p>
-- @return DescribeCertificatesResponse structure as a key-value pair table
function M.DescribeCertificatesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCertificatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Certificates"] = args["Certificates"],
	}
	asserts.AssertDescribeCertificatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartReplicationTaskMessage = { ["ReplicationTaskArn"] = true, ["CdcStartPosition"] = true, ["CdcStopPosition"] = true, ["StartReplicationTaskType"] = true, ["CdcStartTime"] = true, nil }

function asserts.AssertStartReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	assert(struct["StartReplicationTaskType"], "Expected key StartReplicationTaskType to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["CdcStartPosition"] then asserts.AssertString(struct["CdcStartPosition"]) end
	if struct["CdcStopPosition"] then asserts.AssertString(struct["CdcStopPosition"]) end
	if struct["StartReplicationTaskType"] then asserts.AssertStartReplicationTaskTypeValue(struct["StartReplicationTaskType"]) end
	if struct["CdcStartTime"] then asserts.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartReplicationTaskMessage[k], "StartReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task to be started.</p>
-- * CdcStartPosition [String] <p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
-- * CdcStopPosition [String] <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “</p>
-- * StartReplicationTaskType [StartReplicationTaskTypeValue] <p>The type of replication task.</p>
-- * CdcStartTime [TStamp] <p>Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
-- Required key: ReplicationTaskArn
-- Required key: StartReplicationTaskType
-- @return StartReplicationTaskMessage structure as a key-value pair table
function M.StartReplicationTaskMessage(args)
	assert(args, "You must provide an argument table when creating StartReplicationTaskMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["CdcStartPosition"] = args["CdcStartPosition"],
		["CdcStopPosition"] = args["CdcStopPosition"],
		["StartReplicationTaskType"] = args["StartReplicationTaskType"],
		["CdcStartTime"] = args["CdcStartTime"],
	}
	asserts.AssertStartReplicationTaskMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartReplicationTaskResponse = { ["ReplicationTask"] = true, nil }

function asserts.AssertStartReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then asserts.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartReplicationTaskResponse[k], "StartReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTask [ReplicationTask] <p>The replication task started.</p>
-- @return StartReplicationTaskResponse structure as a key-value pair table
function M.StartReplicationTaskResponse(args)
	assert(args, "You must provide an argument table when creating StartReplicationTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTask"] = args["ReplicationTask"],
	}
	asserts.AssertStartReplicationTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationSubnetGroupMessage = { ["ReplicationSubnetGroupDescription"] = true, ["SubnetIds"] = true, ["ReplicationSubnetGroupIdentifier"] = true, nil }

function asserts.AssertModifyReplicationSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationSubnetGroupMessage to be of type 'table'")
	assert(struct["ReplicationSubnetGroupIdentifier"], "Expected key ReplicationSubnetGroupIdentifier to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["ReplicationSubnetGroupDescription"] then asserts.AssertString(struct["ReplicationSubnetGroupDescription"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then asserts.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationSubnetGroupMessage[k], "ModifyReplicationSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationSubnetGroupDescription [String] <p>The description of the replication instance subnet group.</p>
-- * SubnetIds [SubnetIdentifierList] <p>A list of subnet IDs.</p>
-- * ReplicationSubnetGroupIdentifier [String] <p>The name of the replication instance subnet group.</p>
-- Required key: ReplicationSubnetGroupIdentifier
-- Required key: SubnetIds
-- @return ModifyReplicationSubnetGroupMessage structure as a key-value pair table
function M.ModifyReplicationSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationSubnetGroupDescription"] = args["ReplicationSubnetGroupDescription"],
		["SubnetIds"] = args["SubnetIds"],
		["ReplicationSubnetGroupIdentifier"] = args["ReplicationSubnetGroupIdentifier"],
	}
	asserts.AssertModifyReplicationSubnetGroupMessage(all_args)
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
-- <p/>
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

keys.TableStatistics = { ["ValidationPendingRecords"] = true, ["Inserts"] = true, ["ValidationState"] = true, ["ValidationSuspendedRecords"] = true, ["LastUpdateTime"] = true, ["FullLoadErrorRows"] = true, ["FullLoadCondtnlChkFailedRows"] = true, ["Ddls"] = true, ["TableName"] = true, ["ValidationFailedRecords"] = true, ["ValidationStateDetails"] = true, ["Updates"] = true, ["FullLoadRows"] = true, ["TableState"] = true, ["SchemaName"] = true, ["Deletes"] = true, nil }

function asserts.AssertTableStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableStatistics to be of type 'table'")
	if struct["ValidationPendingRecords"] then asserts.AssertLong(struct["ValidationPendingRecords"]) end
	if struct["Inserts"] then asserts.AssertLong(struct["Inserts"]) end
	if struct["ValidationState"] then asserts.AssertString(struct["ValidationState"]) end
	if struct["ValidationSuspendedRecords"] then asserts.AssertLong(struct["ValidationSuspendedRecords"]) end
	if struct["LastUpdateTime"] then asserts.AssertTStamp(struct["LastUpdateTime"]) end
	if struct["FullLoadErrorRows"] then asserts.AssertLong(struct["FullLoadErrorRows"]) end
	if struct["FullLoadCondtnlChkFailedRows"] then asserts.AssertLong(struct["FullLoadCondtnlChkFailedRows"]) end
	if struct["Ddls"] then asserts.AssertLong(struct["Ddls"]) end
	if struct["TableName"] then asserts.AssertString(struct["TableName"]) end
	if struct["ValidationFailedRecords"] then asserts.AssertLong(struct["ValidationFailedRecords"]) end
	if struct["ValidationStateDetails"] then asserts.AssertString(struct["ValidationStateDetails"]) end
	if struct["Updates"] then asserts.AssertLong(struct["Updates"]) end
	if struct["FullLoadRows"] then asserts.AssertLong(struct["FullLoadRows"]) end
	if struct["TableState"] then asserts.AssertString(struct["TableState"]) end
	if struct["SchemaName"] then asserts.AssertString(struct["SchemaName"]) end
	if struct["Deletes"] then asserts.AssertLong(struct["Deletes"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableStatistics[k], "TableStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableStatistics
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValidationPendingRecords [Long] <p>The number of records that have yet to be validated.</p>
-- * Inserts [Long] <p>The number of insert actions performed on a table.</p>
-- * ValidationState [String] <p>The validation state of the table.</p> <p>The parameter can have the following values</p> <ul> <li> <p>Not enabled—Validation is not enabled for the table in the migration task.</p> </li> <li> <p>Pending records—Some records in the table are waiting for validation.</p> </li> <li> <p>Mismatched records—Some records in the table do not match between the source and target.</p> </li> <li> <p>Suspended records—Some records in the table could not be validated.</p> </li> <li> <p>No primary key—The table could not be validated because it had no primary key.</p> </li> <li> <p>Table error—The table was not validated because it was in an error state and some data was not migrated.</p> </li> <li> <p>Validated—All rows in the table were validated. If the table is updated, the status can change from Validated.</p> </li> <li> <p>Error—The table could not be validated because of an unexpected error.</p> </li> </ul>
-- * ValidationSuspendedRecords [Long] <p>The number of records that could not be validated.</p>
-- * LastUpdateTime [TStamp] <p>The last time the table was updated.</p>
-- * FullLoadErrorRows [Long] <p>The number of rows that failed to load during the Full Load operation (valid only for DynamoDB as a target migrations).</p>
-- * FullLoadCondtnlChkFailedRows [Long] <p>The number of rows that failed conditional checks during the Full Load operation (valid only for DynamoDB as a target migrations).</p>
-- * Ddls [Long] <p>The Data Definition Language (DDL) used to build and modify the structure of your tables.</p>
-- * TableName [String] <p>The name of the table.</p>
-- * ValidationFailedRecords [Long] <p>The number of records that failed validation.</p>
-- * ValidationStateDetails [String] <p>Additional details about the state of validation.</p>
-- * Updates [Long] <p>The number of update actions performed on a table.</p>
-- * FullLoadRows [Long] <p>The number of rows added during the Full Load operation.</p>
-- * TableState [String] <p>The state of the tables described.</p> <p>Valid states: Table does not exist | Before load | Full load | Table completed | Table cancelled | Table error | Table all | Table updates | Table is being reloaded</p>
-- * SchemaName [String] <p>The schema name.</p>
-- * Deletes [Long] <p>The number of delete actions performed on a table.</p>
-- @return TableStatistics structure as a key-value pair table
function M.TableStatistics(args)
	assert(args, "You must provide an argument table when creating TableStatistics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ValidationPendingRecords"] = args["ValidationPendingRecords"],
		["Inserts"] = args["Inserts"],
		["ValidationState"] = args["ValidationState"],
		["ValidationSuspendedRecords"] = args["ValidationSuspendedRecords"],
		["LastUpdateTime"] = args["LastUpdateTime"],
		["FullLoadErrorRows"] = args["FullLoadErrorRows"],
		["FullLoadCondtnlChkFailedRows"] = args["FullLoadCondtnlChkFailedRows"],
		["Ddls"] = args["Ddls"],
		["TableName"] = args["TableName"],
		["ValidationFailedRecords"] = args["ValidationFailedRecords"],
		["ValidationStateDetails"] = args["ValidationStateDetails"],
		["Updates"] = args["Updates"],
		["FullLoadRows"] = args["FullLoadRows"],
		["TableState"] = args["TableState"],
		["SchemaName"] = args["SchemaName"],
		["Deletes"] = args["Deletes"],
	}
	asserts.AssertTableStatistics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationInstanceMessage = { ["MultiAZ"] = true, ["AllowMajorVersionUpgrade"] = true, ["ReplicationInstanceArn"] = true, ["ReplicationInstanceClass"] = true, ["VpcSecurityGroupIds"] = true, ["ApplyImmediately"] = true, ["AutoMinorVersionUpgrade"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["ReplicationInstanceIdentifier"] = true, ["PreferredMaintenanceWindow"] = true, nil }

function asserts.AssertModifyReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["AllowMajorVersionUpgrade"] then asserts.AssertBoolean(struct["AllowMajorVersionUpgrade"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["ReplicationInstanceClass"] then asserts.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstanceIdentifier"] then asserts.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationInstanceMessage[k], "ModifyReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [BooleanOptional] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- * AllowMajorVersionUpgrade [Boolean] <p>Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: This parameter must be set to true when specifying a value for the <code>EngineVersion</code> parameter that is a different major version than the replication instance's current version.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- * ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p> Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. </p>
-- * ApplyImmediately [Boolean] <p>Indicates whether the changes should be applied immediately or during the next maintenance window.</p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p> Indicates that minor version upgrades will be applied automatically to the replication instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and AWS DMS has enabled auto patching for that engine version. </p>
-- * AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be allocated for the replication instance.</p>
-- * EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- * ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>
-- Required key: ReplicationInstanceArn
-- @return ModifyReplicationInstanceMessage structure as a key-value pair table
function M.ModifyReplicationInstanceMessage(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["AllowMajorVersionUpgrade"] = args["AllowMajorVersionUpgrade"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
		["ReplicationInstanceClass"] = args["ReplicationInstanceClass"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["EngineVersion"] = args["EngineVersion"],
		["ReplicationInstanceIdentifier"] = args["ReplicationInstanceIdentifier"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
	}
	asserts.AssertModifyReplicationInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationTaskResponse = { ["ReplicationTask"] = true, nil }

function asserts.AssertModifyReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then asserts.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationTaskResponse[k], "ModifyReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationTaskResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTask [ReplicationTask] <p>The replication task that was modified.</p>
-- @return ModifyReplicationTaskResponse structure as a key-value pair table
function M.ModifyReplicationTaskResponse(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTask"] = args["ReplicationTask"],
	}
	asserts.AssertModifyReplicationTaskResponse(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetStatus [String] <p>The status of the subnet.</p>
-- * SubnetIdentifier [String] <p>The subnet identifier.</p>
-- * SubnetAvailabilityZone [AvailabilityZone] <p>The Availability Zone of the subnet.</p>
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

keys.DeleteReplicationTaskResponse = { ["ReplicationTask"] = true, nil }

function asserts.AssertDeleteReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then asserts.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationTaskResponse[k], "DeleteReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationTaskResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTask [ReplicationTask] <p>The deleted replication task.</p>
-- @return DeleteReplicationTaskResponse structure as a key-value pair table
function M.DeleteReplicationTaskResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTask"] = args["ReplicationTask"],
	}
	asserts.AssertDeleteReplicationTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootReplicationInstanceResponse = { ["ReplicationInstance"] = true, nil }

function asserts.AssertRebootReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then asserts.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootReplicationInstanceResponse[k], "RebootReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootReplicationInstanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstance [ReplicationInstance] <p>The replication instance that is being rebooted. </p>
-- @return RebootReplicationInstanceResponse structure as a key-value pair table
function M.RebootReplicationInstanceResponse(args)
	assert(args, "You must provide an argument table when creating RebootReplicationInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstance"] = args["ReplicationInstance"],
	}
	asserts.AssertRebootReplicationInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Certificate = { ["CertificateArn"] = true, ["CertificateCreationDate"] = true, ["CertificatePem"] = true, ["CertificateOwner"] = true, ["CertificateWallet"] = true, ["ValidToDate"] = true, ["KeyLength"] = true, ["CertificateIdentifier"] = true, ["SigningAlgorithm"] = true, ["ValidFromDate"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["CertificateCreationDate"] then asserts.AssertTStamp(struct["CertificateCreationDate"]) end
	if struct["CertificatePem"] then asserts.AssertString(struct["CertificatePem"]) end
	if struct["CertificateOwner"] then asserts.AssertString(struct["CertificateOwner"]) end
	if struct["CertificateWallet"] then asserts.AssertCertificateWallet(struct["CertificateWallet"]) end
	if struct["ValidToDate"] then asserts.AssertTStamp(struct["ValidToDate"]) end
	if struct["KeyLength"] then asserts.AssertIntegerOptional(struct["KeyLength"]) end
	if struct["CertificateIdentifier"] then asserts.AssertString(struct["CertificateIdentifier"]) end
	if struct["SigningAlgorithm"] then asserts.AssertString(struct["SigningAlgorithm"]) end
	if struct["ValidFromDate"] then asserts.AssertTStamp(struct["ValidFromDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [String] <p>The Amazon Resource Name (ARN) for the certificate.</p>
-- * CertificateCreationDate [TStamp] <p>The date that the certificate was created.</p>
-- * CertificatePem [String] <p>The contents of the .pem X.509 certificate file for the certificate.</p>
-- * CertificateOwner [String] <p>The owner of the certificate.</p>
-- * CertificateWallet [CertificateWallet] <p>The location of the imported Oracle Wallet certificate for use with SSL.</p>
-- * ValidToDate [TStamp] <p>The final date that the certificate is valid.</p>
-- * KeyLength [IntegerOptional] <p>The key length of the cryptographic algorithm being used.</p>
-- * CertificateIdentifier [String] <p>The customer-assigned name of the certificate. Valid characters are A-z and 0-9.</p>
-- * SigningAlgorithm [String] <p>The signing algorithm for the certificate.</p>
-- * ValidFromDate [TStamp] <p>The beginning date that the certificate is valid.</p>
-- @return Certificate structure as a key-value pair table
function M.Certificate(args)
	assert(args, "You must provide an argument table when creating Certificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
		["CertificateCreationDate"] = args["CertificateCreationDate"],
		["CertificatePem"] = args["CertificatePem"],
		["CertificateOwner"] = args["CertificateOwner"],
		["CertificateWallet"] = args["CertificateWallet"],
		["ValidToDate"] = args["ValidToDate"],
		["KeyLength"] = args["KeyLength"],
		["CertificateIdentifier"] = args["CertificateIdentifier"],
		["SigningAlgorithm"] = args["SigningAlgorithm"],
		["ValidFromDate"] = args["ValidFromDate"],
	}
	asserts.AssertCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrderableReplicationInstancesMessage = { ["Marker"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeOrderableReplicationInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableReplicationInstancesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrderableReplicationInstancesMessage[k], "DescribeOrderableReplicationInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableReplicationInstancesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @return DescribeOrderableReplicationInstancesMessage structure as a key-value pair table
function M.DescribeOrderableReplicationInstancesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeOrderableReplicationInstancesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeOrderableReplicationInstancesMessage(all_args)
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
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Filters applied to the action.</p>
-- * SubscriptionName [String] <p>The name of the AWS DMS event subscription to be described.</p>
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

keys.DescribeEventsResponse = { ["Marker"] = true, ["Events"] = true, nil }

function asserts.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsResponse[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Events [EventList] <p>The events described.</p>
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
		["Marker"] = args["Marker"],
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

keys.DeleteReplicationInstanceMessage = { ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertDeleteReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationInstanceMessage[k], "DeleteReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>
-- Required key: ReplicationInstanceArn
-- @return DeleteReplicationInstanceMessage structure as a key-value pair table
function M.DeleteReplicationInstanceMessage(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertDeleteReplicationInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEndpointMessage = { ["EndpointArn"] = true, nil }

function asserts.AssertDeleteEndpointMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointMessage[k], "DeleteEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- Required key: EndpointArn
-- @return DeleteEndpointMessage structure as a key-value pair table
function M.DeleteEndpointMessage(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertDeleteEndpointMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventCategoryGroup = { ["EventCategories"] = true, ["SourceType"] = true, nil }

function asserts.AssertEventCategoryGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoryGroup to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventCategoryGroup[k], "EventCategoryGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoryGroup
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a <code>SourceType</code> that you want to subscribe to. </p>
-- * SourceType [String] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-server | security-group | migration-task</p>
-- @return EventCategoryGroup structure as a key-value pair table
function M.EventCategoryGroup(args)
	assert(args, "You must provide an argument table when creating EventCategoryGroup")
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
	asserts.AssertEventCategoryGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SupportedEndpointType = { ["EngineDisplayName"] = true, ["EngineName"] = true, ["SupportsCDC"] = true, ["EndpointType"] = true, nil }

function asserts.AssertSupportedEndpointType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SupportedEndpointType to be of type 'table'")
	if struct["EngineDisplayName"] then asserts.AssertString(struct["EngineDisplayName"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["SupportsCDC"] then asserts.AssertBoolean(struct["SupportsCDC"]) end
	if struct["EndpointType"] then asserts.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SupportedEndpointType[k], "SupportedEndpointType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SupportedEndpointType
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineDisplayName [String] <p>The expanded name for the engine name. For example, if the <code>EngineName</code> parameter is "aurora," this value would be "Amazon Aurora MySQL."</p>
-- * EngineName [String] <p>The database engine name. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and sqlserver.</p>
-- * SupportsCDC [Boolean] <p>Indicates if Change Data Capture (CDC) is supported.</p>
-- * EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- @return SupportedEndpointType structure as a key-value pair table
function M.SupportedEndpointType(args)
	assert(args, "You must provide an argument table when creating SupportedEndpointType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineDisplayName"] = args["EngineDisplayName"],
		["EngineName"] = args["EngineName"],
		["SupportsCDC"] = args["SupportsCDC"],
		["EndpointType"] = args["EndpointType"],
	}
	asserts.AssertSupportedEndpointType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCertificateResponse = { ["Certificate"] = true, nil }

function asserts.AssertDeleteCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateResponse to be of type 'table'")
	if struct["Certificate"] then asserts.AssertCertificate(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCertificateResponse[k], "DeleteCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [Certificate] <p>The Secure Sockets Layer (SSL) certificate.</p>
-- @return DeleteCertificateResponse structure as a key-value pair table
function M.DeleteCertificateResponse(args)
	assert(args, "You must provide an argument table when creating DeleteCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertDeleteCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventCategoriesResponse = { ["EventCategoryGroupList"] = true, nil }

function asserts.AssertDescribeEventCategoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesResponse to be of type 'table'")
	if struct["EventCategoryGroupList"] then asserts.AssertEventCategoryGroupList(struct["EventCategoryGroupList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventCategoriesResponse[k], "DescribeEventCategoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategoryGroupList [EventCategoryGroupList] <p>A list of event categories.</p>
-- @return DescribeEventCategoriesResponse structure as a key-value pair table
function M.DescribeEventCategoriesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEventCategoriesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategoryGroupList"] = args["EventCategoryGroupList"],
	}
	asserts.AssertDescribeEventCategoriesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationInstanceResponse = { ["ReplicationInstance"] = true, nil }

function asserts.AssertDeleteReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then asserts.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationInstanceResponse[k], "DeleteReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationInstanceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstance [ReplicationInstance] <p>The replication instance that was deleted.</p>
-- @return DeleteReplicationInstanceResponse structure as a key-value pair table
function M.DeleteReplicationInstanceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstance"] = args["ReplicationInstance"],
	}
	asserts.AssertDeleteReplicationInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceMessage = { ["ResourceArn"] = true, nil }

function asserts.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceMessage[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource.</p>
-- Required key: ResourceArn
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
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertListTagsForResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationTaskAssessmentResultsMessage = { ["ReplicationTaskArn"] = true, ["Marker"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeReplicationTaskAssessmentResultsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationTaskAssessmentResultsMessage to be of type 'table'")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationTaskAssessmentResultsMessage[k], "DescribeReplicationTaskAssessmentResultsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationTaskAssessmentResultsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>- The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified the API will return only one result and ignore the values of the max-records and marker parameters. </p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @return DescribeReplicationTaskAssessmentResultsMessage structure as a key-value pair table
function M.DescribeReplicationTaskAssessmentResultsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationTaskAssessmentResultsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeReplicationTaskAssessmentResultsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationTaskMessage = { ["ReplicationTaskArn"] = true, nil }

function asserts.AssertDeleteReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationTaskMessage[k], "DeleteReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationTaskMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>
-- Required key: ReplicationTaskArn
-- @return DeleteReplicationTaskMessage structure as a key-value pair table
function M.DeleteReplicationTaskMessage(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationTaskMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
	}
	asserts.AssertDeleteReplicationTaskMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEndpointsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointsMessage[k], "DescribeEndpointsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>
-- @return DescribeEndpointsMessage structure as a key-value pair table
function M.DescribeEndpointsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointsMessage")
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
	}
	asserts.AssertDescribeEndpointsMessage(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValueList] <p>The filter value.</p>
-- * Name [String] <p>The name of the filter.</p>
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

keys.Connection = { ["Status"] = true, ["ReplicationInstanceArn"] = true, ["LastFailureMessage"] = true, ["EndpointArn"] = true, ["ReplicationInstanceIdentifier"] = true, ["EndpointIdentifier"] = true, nil }

function asserts.AssertConnection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connection to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["LastFailureMessage"] then asserts.AssertString(struct["LastFailureMessage"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceIdentifier"] then asserts.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.Connection[k], "Connection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connection
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The connection status.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- * LastFailureMessage [String] <p>The error message when the connection last failed.</p>
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p>
-- * EndpointIdentifier [String] <p>The identifier of the endpoint. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- @return Connection structure as a key-value pair table
function M.Connection(args)
	assert(args, "You must provide an argument table when creating Connection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
		["LastFailureMessage"] = args["LastFailureMessage"],
		["EndpointArn"] = args["EndpointArn"],
		["ReplicationInstanceIdentifier"] = args["ReplicationInstanceIdentifier"],
		["EndpointIdentifier"] = args["EndpointIdentifier"],
	}
	asserts.AssertConnection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointTypesResponse = { ["Marker"] = true, ["SupportedEndpointTypes"] = true, nil }

function asserts.AssertDescribeEndpointTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointTypesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["SupportedEndpointTypes"] then asserts.AssertSupportedEndpointTypeList(struct["SupportedEndpointTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointTypesResponse[k], "DescribeEndpointTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointTypesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * SupportedEndpointTypes [SupportedEndpointTypeList] <p>The type of endpoints that are supported.</p>
-- @return DescribeEndpointTypesResponse structure as a key-value pair table
function M.DescribeEndpointTypesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointTypesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["SupportedEndpointTypes"] = args["SupportedEndpointTypes"],
	}
	asserts.AssertDescribeEndpointTypesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationTaskAssessmentResult = { ["ReplicationTaskIdentifier"] = true, ["AssessmentStatus"] = true, ["S3ObjectUrl"] = true, ["AssessmentResultsFile"] = true, ["ReplicationTaskArn"] = true, ["AssessmentResults"] = true, ["ReplicationTaskLastAssessmentDate"] = true, nil }

function asserts.AssertReplicationTaskAssessmentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationTaskAssessmentResult to be of type 'table'")
	if struct["ReplicationTaskIdentifier"] then asserts.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["AssessmentStatus"] then asserts.AssertString(struct["AssessmentStatus"]) end
	if struct["S3ObjectUrl"] then asserts.AssertString(struct["S3ObjectUrl"]) end
	if struct["AssessmentResultsFile"] then asserts.AssertString(struct["AssessmentResultsFile"]) end
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["AssessmentResults"] then asserts.AssertString(struct["AssessmentResults"]) end
	if struct["ReplicationTaskLastAssessmentDate"] then asserts.AssertTStamp(struct["ReplicationTaskLastAssessmentDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationTaskAssessmentResult[k], "ReplicationTaskAssessmentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationTaskAssessmentResult
-- <p> The task assessment report in JSON format. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskIdentifier [String] <p> The replication task identifier of the task on which the task assessment was run. </p>
-- * AssessmentStatus [String] <p> The status of the task assessment. </p>
-- * S3ObjectUrl [String] <p> The URL of the S3 object containing the task assessment results. </p>
-- * AssessmentResultsFile [String] <p> The file containing the results of the task assessment. </p>
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task. </p>
-- * AssessmentResults [String] <p> The task assessment results in JSON format. </p>
-- * ReplicationTaskLastAssessmentDate [TStamp] <p>The date the task assessment was completed. </p>
-- @return ReplicationTaskAssessmentResult structure as a key-value pair table
function M.ReplicationTaskAssessmentResult(args)
	assert(args, "You must provide an argument table when creating ReplicationTaskAssessmentResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskIdentifier"] = args["ReplicationTaskIdentifier"],
		["AssessmentStatus"] = args["AssessmentStatus"],
		["S3ObjectUrl"] = args["S3ObjectUrl"],
		["AssessmentResultsFile"] = args["AssessmentResultsFile"],
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["AssessmentResults"] = args["AssessmentResults"],
		["ReplicationTaskLastAssessmentDate"] = args["ReplicationTaskLastAssessmentDate"],
	}
	asserts.AssertReplicationTaskAssessmentResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCertificatesMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificatesMessage[k], "DescribeCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 10</p>
-- * Filters [FilterList] <p>Filters applied to the certificate described in the form of key-value pairs.</p>
-- @return DescribeCertificatesMessage structure as a key-value pair table
function M.DescribeCertificatesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCertificatesMessage")
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
	}
	asserts.AssertDescribeCertificatesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationPendingModifiedValues = { ["ReplicationInstanceClass"] = true, ["EngineVersion"] = true, ["AllocatedStorage"] = true, ["MultiAZ"] = true, nil }

function asserts.AssertReplicationPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationPendingModifiedValues to be of type 'table'")
	if struct["ReplicationInstanceClass"] then asserts.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationPendingModifiedValues[k], "ReplicationPendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationPendingModifiedValues
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- * EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- * AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- * MultiAZ [BooleanOptional] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- @return ReplicationPendingModifiedValues structure as a key-value pair table
function M.ReplicationPendingModifiedValues(args)
	assert(args, "You must provide an argument table when creating ReplicationPendingModifiedValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstanceClass"] = args["ReplicationInstanceClass"],
		["EngineVersion"] = args["EngineVersion"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["MultiAZ"] = args["MultiAZ"],
	}
	asserts.AssertReplicationPendingModifiedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationTasksMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeReplicationTasksMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationTasksMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationTasksMessage[k], "DescribeReplicationTasksMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationTasksMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn</p>
-- @return DescribeReplicationTasksMessage structure as a key-value pair table
function M.DescribeReplicationTasksMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationTasksMessage")
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
	}
	asserts.AssertDescribeReplicationTasksMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationInstanceMessage = { ["MultiAZ"] = true, ["AvailabilityZone"] = true, ["PubliclyAccessible"] = true, ["Tags"] = true, ["ReplicationInstanceClass"] = true, ["VpcSecurityGroupIds"] = true, ["AutoMinorVersionUpgrade"] = true, ["KmsKeyId"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["ReplicationInstanceIdentifier"] = true, ["PreferredMaintenanceWindow"] = true, ["ReplicationSubnetGroupIdentifier"] = true, nil }

function asserts.AssertCreateReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceIdentifier"], "Expected key ReplicationInstanceIdentifier to exist in table")
	assert(struct["ReplicationInstanceClass"], "Expected key ReplicationInstanceClass to exist in table")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ReplicationInstanceClass"] then asserts.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstanceIdentifier"] then asserts.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then asserts.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationInstanceMessage[k], "CreateReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [BooleanOptional] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- * AvailabilityZone [String] <p>The EC2 Availability Zone that the replication instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p>
-- * PubliclyAccessible [BooleanOptional] <p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>
-- * Tags [TagList] <p>Tags to be associated with the replication instance.</p>
-- * ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance as specified by the replication instance class.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p> Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. </p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.</p> <p>Default: <code>true</code> </p>
-- * KmsKeyId [String] <p>The KMS key identifier that will be used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- * AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be initially allocated for the replication instance.</p>
-- * EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- * ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.</p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * ReplicationSubnetGroupIdentifier [String] <p>A subnet group to associate with the replication instance.</p>
-- Required key: ReplicationInstanceIdentifier
-- Required key: ReplicationInstanceClass
-- @return CreateReplicationInstanceMessage structure as a key-value pair table
function M.CreateReplicationInstanceMessage(args)
	assert(args, "You must provide an argument table when creating CreateReplicationInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultiAZ"] = args["MultiAZ"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["Tags"] = args["Tags"],
		["ReplicationInstanceClass"] = args["ReplicationInstanceClass"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["KmsKeyId"] = args["KmsKeyId"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["EngineVersion"] = args["EngineVersion"],
		["ReplicationInstanceIdentifier"] = args["ReplicationInstanceIdentifier"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["ReplicationSubnetGroupIdentifier"] = args["ReplicationSubnetGroupIdentifier"],
	}
	asserts.AssertCreateReplicationInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyEndpointResponse = { ["Endpoint"] = true, nil }

function asserts.AssertModifyEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEndpointResponse to be of type 'table'")
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEndpointResponse[k], "ModifyEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEndpointResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [Endpoint] <p>The modified endpoint.</p>
-- @return ModifyEndpointResponse structure as a key-value pair table
function M.ModifyEndpointResponse(args)
	assert(args, "You must provide an argument table when creating ModifyEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
	}
	asserts.AssertModifyEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyEndpointMessage = { ["Username"] = true, ["CertificateArn"] = true, ["MongoDbSettings"] = true, ["S3Settings"] = true, ["ServerName"] = true, ["EndpointType"] = true, ["ServiceAccessRoleArn"] = true, ["DmsTransferSettings"] = true, ["EndpointArn"] = true, ["ExtraConnectionAttributes"] = true, ["DatabaseName"] = true, ["DynamoDbSettings"] = true, ["SslMode"] = true, ["EngineName"] = true, ["Password"] = true, ["EndpointIdentifier"] = true, ["Port"] = true, ["ExternalTableDefinition"] = true, nil }

function asserts.AssertModifyEndpointMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEndpointMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["MongoDbSettings"] then asserts.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then asserts.AssertS3Settings(struct["S3Settings"]) end
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["EndpointType"] then asserts.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["ServiceAccessRoleArn"] then asserts.AssertString(struct["ServiceAccessRoleArn"]) end
	if struct["DmsTransferSettings"] then asserts.AssertDmsTransferSettings(struct["DmsTransferSettings"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ExtraConnectionAttributes"] then asserts.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then asserts.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then asserts.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["Password"] then asserts.AssertSecretString(struct["Password"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["ExternalTableDefinition"] then asserts.AssertString(struct["ExternalTableDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEndpointMessage[k], "ModifyEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEndpointMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [String] <p>The user name to be used to login to the endpoint database.</p>
-- * CertificateArn [String] <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
-- * MongoDbSettings [MongoDbSettings] <p>Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the <b>Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- * S3Settings [S3Settings] <p>Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the <b>Extra Connection Attributes</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- * ServerName [String] <p>The name of the server where the endpoint database resides.</p>
-- * EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- * ServiceAccessRoleArn [String] <p> The Amazon Resource Name (ARN) for the service access role you want to use to modify the endpoint. </p>
-- * DmsTransferSettings [DmsTransferSettings] <p> The settings in JSON format for the DMS Transfer type source endpoint. </p> <p>Attributes include:</p> <ul> <li> <p>serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.</p> </li> <li> <p>BucketName - The name of the S3 bucket to use.</p> </li> <li> <p>compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.</p> </li> </ul> <p>Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string</p> <p>JSON syntax:</p> <p> { "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } </p>
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ExtraConnectionAttributes [String] <p>Additional attributes associated with the connection. To reset this parameter, pass the empty string ("") as an argument.</p>
-- * DatabaseName [String] <p>The name of the endpoint database.</p>
-- * DynamoDbSettings [DynamoDbSettings] <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the <b>Using Object Mapping to Migrate Data to DynamoDB</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html"> Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service</a>. </p>
-- * SslMode [DmsSslModeValue] <p>The SSL mode to be used.</p> <p>SSL mode can be one of four values: none, require, verify-ca, verify-full. </p> <p>The default value is none.</p>
-- * EngineName [String] <p>The type of engine for the endpoint. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and sqlserver.</p>
-- * Password [SecretString] <p>The password to be used to login to the endpoint database.</p>
-- * EndpointIdentifier [String] <p>The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- * Port [IntegerOptional] <p>The port used by the endpoint database.</p>
-- * ExternalTableDefinition [String] <p>The external table definition.</p>
-- Required key: EndpointArn
-- @return ModifyEndpointMessage structure as a key-value pair table
function M.ModifyEndpointMessage(args)
	assert(args, "You must provide an argument table when creating ModifyEndpointMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["CertificateArn"] = args["CertificateArn"],
		["MongoDbSettings"] = args["MongoDbSettings"],
		["S3Settings"] = args["S3Settings"],
		["ServerName"] = args["ServerName"],
		["EndpointType"] = args["EndpointType"],
		["ServiceAccessRoleArn"] = args["ServiceAccessRoleArn"],
		["DmsTransferSettings"] = args["DmsTransferSettings"],
		["EndpointArn"] = args["EndpointArn"],
		["ExtraConnectionAttributes"] = args["ExtraConnectionAttributes"],
		["DatabaseName"] = args["DatabaseName"],
		["DynamoDbSettings"] = args["DynamoDbSettings"],
		["SslMode"] = args["SslMode"],
		["EngineName"] = args["EngineName"],
		["Password"] = args["Password"],
		["EndpointIdentifier"] = args["EndpointIdentifier"],
		["Port"] = args["Port"],
		["ExternalTableDefinition"] = args["ExternalTableDefinition"],
	}
	asserts.AssertModifyEndpointMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshSchemasMessage = { ["EndpointArn"] = true, ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertRefreshSchemasMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshSchemasMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshSchemasMessage[k], "RefreshSchemasMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshSchemasMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- Required key: EndpointArn
-- Required key: ReplicationInstanceArn
-- @return RefreshSchemasMessage structure as a key-value pair table
function M.RefreshSchemasMessage(args)
	assert(args, "You must provide an argument table when creating RefreshSchemasMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertRefreshSchemasMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopReplicationTaskResponse = { ["ReplicationTask"] = true, nil }

function asserts.AssertStopReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then asserts.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopReplicationTaskResponse[k], "StopReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopReplicationTaskResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTask [ReplicationTask] <p>The replication task stopped.</p>
-- @return StopReplicationTaskResponse structure as a key-value pair table
function M.StopReplicationTaskResponse(args)
	assert(args, "You must provide an argument table when creating StopReplicationTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTask"] = args["ReplicationTask"],
	}
	asserts.AssertStopReplicationTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountAttributesResponse = { ["AccountQuotas"] = true, nil }

function asserts.AssertDescribeAccountAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesResponse to be of type 'table'")
	if struct["AccountQuotas"] then asserts.AssertAccountQuotaList(struct["AccountQuotas"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountAttributesResponse[k], "DescribeAccountAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountQuotas [AccountQuotaList] <p>Account quota information.</p>
-- @return DescribeAccountAttributesResponse structure as a key-value pair table
function M.DescribeAccountAttributesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAccountAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountQuotas"] = args["AccountQuotas"],
	}
	asserts.AssertDescribeAccountAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSchemasMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["EndpointArn"] = true, nil }

function asserts.AssertDescribeSchemasMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSchemasMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSchemasMessage[k], "DescribeSchemasMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSchemasMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- Required key: EndpointArn
-- @return DescribeSchemasMessage structure as a key-value pair table
function M.DescribeSchemasMessage(args)
	assert(args, "You must provide an argument table when creating DescribeSchemasMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertDescribeSchemasMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReloadTablesResponse = { ["ReplicationTaskArn"] = true, nil }

function asserts.AssertReloadTablesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReloadTablesResponse to be of type 'table'")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReloadTablesResponse[k], "ReloadTablesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReloadTablesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task. </p>
-- @return ReloadTablesResponse structure as a key-value pair table
function M.ReloadTablesResponse(args)
	assert(args, "You must provide an argument table when creating ReloadTablesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
	}
	asserts.AssertReloadTablesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationInstanceTaskLogsResponse = { ["Marker"] = true, ["ReplicationInstanceTaskLogs"] = true, ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertDescribeReplicationInstanceTaskLogsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationInstanceTaskLogsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReplicationInstanceTaskLogs"] then asserts.AssertReplicationInstanceTaskLogsList(struct["ReplicationInstanceTaskLogs"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationInstanceTaskLogsResponse[k], "DescribeReplicationInstanceTaskLogsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationInstanceTaskLogsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * ReplicationInstanceTaskLogs [ReplicationInstanceTaskLogsList] <p>An array of replication task log metadata. Each member of the array contains the replication task name, ARN, and task log size (in bytes). </p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @return DescribeReplicationInstanceTaskLogsResponse structure as a key-value pair table
function M.DescribeReplicationInstanceTaskLogsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationInstanceTaskLogsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReplicationInstanceTaskLogs"] = args["ReplicationInstanceTaskLogs"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertDescribeReplicationInstanceTaskLogsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationInstanceResponse = { ["ReplicationInstance"] = true, nil }

function asserts.AssertCreateReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then asserts.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationInstanceResponse[k], "CreateReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationInstanceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstance [ReplicationInstance] <p>The replication instance that was created.</p>
-- @return CreateReplicationInstanceResponse structure as a key-value pair table
function M.CreateReplicationInstanceResponse(args)
	assert(args, "You must provide an argument table when creating CreateReplicationInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstance"] = args["ReplicationInstance"],
	}
	asserts.AssertCreateReplicationInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceResponse = { ["TagList"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>A list of tags for the resource.</p>
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
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
-- * SubscriptionName [String] <p>The name of the DMS event notification subscription to be deleted.</p>
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

keys.DmsTransferSettings = { ["ServiceAccessRoleArn"] = true, ["BucketName"] = true, nil }

function asserts.AssertDmsTransferSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DmsTransferSettings to be of type 'table'")
	if struct["ServiceAccessRoleArn"] then asserts.AssertString(struct["ServiceAccessRoleArn"]) end
	if struct["BucketName"] then asserts.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DmsTransferSettings[k], "DmsTransferSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DmsTransferSettings
-- <p> The settings in JSON format for the DMS Transfer type source endpoint. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceAccessRoleArn [String] <p> The IAM role that has permission to access the Amazon S3 bucket. </p>
-- * BucketName [String] <p> The name of the S3 bucket to use. </p>
-- @return DmsTransferSettings structure as a key-value pair table
function M.DmsTransferSettings(args)
	assert(args, "You must provide an argument table when creating DmsTransferSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceAccessRoleArn"] = args["ServiceAccessRoleArn"],
		["BucketName"] = args["BucketName"],
	}
	asserts.AssertDmsTransferSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationTask = { ["SourceEndpointArn"] = true, ["ReplicationTaskIdentifier"] = true, ["CdcStopPosition"] = true, ["RecoveryCheckpoint"] = true, ["ReplicationInstanceArn"] = true, ["CdcStartPosition"] = true, ["TableMappings"] = true, ["ReplicationTaskStartDate"] = true, ["ReplicationTaskStats"] = true, ["Status"] = true, ["ReplicationTaskArn"] = true, ["LastFailureMessage"] = true, ["StopReason"] = true, ["ReplicationTaskCreationDate"] = true, ["MigrationType"] = true, ["TargetEndpointArn"] = true, ["ReplicationTaskSettings"] = true, nil }

function asserts.AssertReplicationTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationTask to be of type 'table'")
	if struct["SourceEndpointArn"] then asserts.AssertString(struct["SourceEndpointArn"]) end
	if struct["ReplicationTaskIdentifier"] then asserts.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["CdcStopPosition"] then asserts.AssertString(struct["CdcStopPosition"]) end
	if struct["RecoveryCheckpoint"] then asserts.AssertString(struct["RecoveryCheckpoint"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["CdcStartPosition"] then asserts.AssertString(struct["CdcStartPosition"]) end
	if struct["TableMappings"] then asserts.AssertString(struct["TableMappings"]) end
	if struct["ReplicationTaskStartDate"] then asserts.AssertTStamp(struct["ReplicationTaskStartDate"]) end
	if struct["ReplicationTaskStats"] then asserts.AssertReplicationTaskStats(struct["ReplicationTaskStats"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["LastFailureMessage"] then asserts.AssertString(struct["LastFailureMessage"]) end
	if struct["StopReason"] then asserts.AssertString(struct["StopReason"]) end
	if struct["ReplicationTaskCreationDate"] then asserts.AssertTStamp(struct["ReplicationTaskCreationDate"]) end
	if struct["MigrationType"] then asserts.AssertMigrationTypeValue(struct["MigrationType"]) end
	if struct["TargetEndpointArn"] then asserts.AssertString(struct["TargetEndpointArn"]) end
	if struct["ReplicationTaskSettings"] then asserts.AssertString(struct["ReplicationTaskSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationTask[k], "ReplicationTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationTask
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationTaskIdentifier [String] <p>The user-assigned replication task identifier or name.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * CdcStopPosition [String] <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:3018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 3018-02-09T12:12:12 “</p>
-- * RecoveryCheckpoint [String] <p>Indicates the last checkpoint that occurred during a change data capture (CDC) operation. You can provide this value to the <code>CdcStartPosition</code> parameter to start a CDC operation that begins at that checkpoint.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- * CdcStartPosition [String] <p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
-- * TableMappings [String] <p>Table mappings specified in the task.</p>
-- * ReplicationTaskStartDate [TStamp] <p>The date the replication task is scheduled to start.</p>
-- * ReplicationTaskStats [ReplicationTaskStats] <p>The statistics for the task, including elapsed time, tables loaded, and table errors.</p>
-- * Status [String] <p>The status of the replication task.</p>
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- * LastFailureMessage [String] <p>The last error (failure) message generated for the replication instance.</p>
-- * StopReason [String] <p>The reason the replication task was stopped.</p>
-- * ReplicationTaskCreationDate [TStamp] <p>The date the replication task was created.</p>
-- * MigrationType [MigrationTypeValue] <p>The type of migration.</p>
-- * TargetEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationTaskSettings [String] <p>The settings for the replication task.</p>
-- @return ReplicationTask structure as a key-value pair table
function M.ReplicationTask(args)
	assert(args, "You must provide an argument table when creating ReplicationTask")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceEndpointArn"] = args["SourceEndpointArn"],
		["ReplicationTaskIdentifier"] = args["ReplicationTaskIdentifier"],
		["CdcStopPosition"] = args["CdcStopPosition"],
		["RecoveryCheckpoint"] = args["RecoveryCheckpoint"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
		["CdcStartPosition"] = args["CdcStartPosition"],
		["TableMappings"] = args["TableMappings"],
		["ReplicationTaskStartDate"] = args["ReplicationTaskStartDate"],
		["ReplicationTaskStats"] = args["ReplicationTaskStats"],
		["Status"] = args["Status"],
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["LastFailureMessage"] = args["LastFailureMessage"],
		["StopReason"] = args["StopReason"],
		["ReplicationTaskCreationDate"] = args["ReplicationTaskCreationDate"],
		["MigrationType"] = args["MigrationType"],
		["TargetEndpointArn"] = args["TargetEndpointArn"],
		["ReplicationTaskSettings"] = args["ReplicationTaskSettings"],
	}
	asserts.AssertReplicationTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Endpoint = { ["Username"] = true, ["Status"] = true, ["MongoDbSettings"] = true, ["S3Settings"] = true, ["EndpointArn"] = true, ["ServerName"] = true, ["DmsTransferSettings"] = true, ["CertificateArn"] = true, ["EndpointType"] = true, ["ServiceAccessRoleArn"] = true, ["SslMode"] = true, ["KmsKeyId"] = true, ["ExtraConnectionAttributes"] = true, ["DatabaseName"] = true, ["DynamoDbSettings"] = true, ["EngineDisplayName"] = true, ["EngineName"] = true, ["ExternalId"] = true, ["EndpointIdentifier"] = true, ["Port"] = true, ["ExternalTableDefinition"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["MongoDbSettings"] then asserts.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then asserts.AssertS3Settings(struct["S3Settings"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["DmsTransferSettings"] then asserts.AssertDmsTransferSettings(struct["DmsTransferSettings"]) end
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["EndpointType"] then asserts.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["ServiceAccessRoleArn"] then asserts.AssertString(struct["ServiceAccessRoleArn"]) end
	if struct["SslMode"] then asserts.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ExtraConnectionAttributes"] then asserts.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then asserts.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["EngineDisplayName"] then asserts.AssertString(struct["EngineDisplayName"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["ExternalId"] then asserts.AssertString(struct["ExternalId"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["ExternalTableDefinition"] then asserts.AssertString(struct["ExternalTableDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [String] <p>The user name used to connect to the endpoint.</p>
-- * Status [String] <p>The status of the endpoint.</p>
-- * MongoDbSettings [MongoDbSettings] <p>The settings for the MongoDB source endpoint. For more information, see the <code>MongoDbSettings</code> structure.</p>
-- * S3Settings [S3Settings] <p>The settings for the S3 target endpoint. For more information, see the <code>S3Settings</code> structure.</p>
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ServerName [String] <p>The name of the server at the endpoint.</p>
-- * DmsTransferSettings [DmsTransferSettings] <p> The settings in JSON format for the DMS Transfer type source endpoint. </p> <p>Attributes include:</p> <ul> <li> <p>serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.</p> </li> <li> <p>bucketName - The name of the S3 bucket to use.</p> </li> <li> <p>compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.</p> </li> </ul> <p>Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string</p> <p>JSON syntax:</p> <p> { "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } </p>
-- * CertificateArn [String] <p>The Amazon Resource Name (ARN) used for SSL connection to the endpoint.</p>
-- * EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- * ServiceAccessRoleArn [String] <p>The Amazon Resource Name (ARN) used by the service access IAM role.</p>
-- * SslMode [DmsSslModeValue] <p>The SSL mode used to connect to the endpoint.</p> <p>SSL mode can be one of four values: none, require, verify-ca, verify-full. </p> <p>The default value is none.</p>
-- * KmsKeyId [String] <p>The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- * ExtraConnectionAttributes [String] <p>Additional connection attributes used to connect to the endpoint.</p>
-- * DatabaseName [String] <p>The name of the database at the endpoint.</p>
-- * DynamoDbSettings [DynamoDbSettings] <p>The settings for the target DynamoDB database. For more information, see the <code>DynamoDBSettings</code> structure.</p>
-- * EngineDisplayName [String] <p>The expanded name for the engine name. For example, if the <code>EngineName</code> parameter is "aurora," this value would be "Amazon Aurora MySQL."</p>
-- * EngineName [String] <p>The database engine name. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and sqlserver.</p>
-- * ExternalId [String] <p> Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account. </p>
-- * EndpointIdentifier [String] <p>The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- * Port [IntegerOptional] <p>The port value used to access the endpoint.</p>
-- * ExternalTableDefinition [String] <p>The external table definition.</p>
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
		["Username"] = args["Username"],
		["Status"] = args["Status"],
		["MongoDbSettings"] = args["MongoDbSettings"],
		["S3Settings"] = args["S3Settings"],
		["EndpointArn"] = args["EndpointArn"],
		["ServerName"] = args["ServerName"],
		["DmsTransferSettings"] = args["DmsTransferSettings"],
		["CertificateArn"] = args["CertificateArn"],
		["EndpointType"] = args["EndpointType"],
		["ServiceAccessRoleArn"] = args["ServiceAccessRoleArn"],
		["SslMode"] = args["SslMode"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ExtraConnectionAttributes"] = args["ExtraConnectionAttributes"],
		["DatabaseName"] = args["DatabaseName"],
		["DynamoDbSettings"] = args["DynamoDbSettings"],
		["EngineDisplayName"] = args["EngineDisplayName"],
		["EngineName"] = args["EngineName"],
		["ExternalId"] = args["ExternalId"],
		["EndpointIdentifier"] = args["EndpointIdentifier"],
		["Port"] = args["Port"],
		["ExternalTableDefinition"] = args["ExternalTableDefinition"],
	}
	asserts.AssertEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportCertificateResponse = { ["Certificate"] = true, nil }

function asserts.AssertImportCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateResponse to be of type 'table'")
	if struct["Certificate"] then asserts.AssertCertificate(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportCertificateResponse[k], "ImportCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [Certificate] <p>The certificate to be uploaded.</p>
-- @return ImportCertificateResponse structure as a key-value pair table
function M.ImportCertificateResponse(args)
	assert(args, "You must provide an argument table when creating ImportCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertImportCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEndpointMessage = { ["Username"] = true, ["CertificateArn"] = true, ["MongoDbSettings"] = true, ["S3Settings"] = true, ["Tags"] = true, ["ServerName"] = true, ["EndpointType"] = true, ["ServiceAccessRoleArn"] = true, ["DmsTransferSettings"] = true, ["KmsKeyId"] = true, ["ExtraConnectionAttributes"] = true, ["DatabaseName"] = true, ["DynamoDbSettings"] = true, ["SslMode"] = true, ["EngineName"] = true, ["Password"] = true, ["EndpointIdentifier"] = true, ["Port"] = true, ["ExternalTableDefinition"] = true, nil }

function asserts.AssertCreateEndpointMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointMessage to be of type 'table'")
	assert(struct["EndpointIdentifier"], "Expected key EndpointIdentifier to exist in table")
	assert(struct["EndpointType"], "Expected key EndpointType to exist in table")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["MongoDbSettings"] then asserts.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then asserts.AssertS3Settings(struct["S3Settings"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["EndpointType"] then asserts.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["ServiceAccessRoleArn"] then asserts.AssertString(struct["ServiceAccessRoleArn"]) end
	if struct["DmsTransferSettings"] then asserts.AssertDmsTransferSettings(struct["DmsTransferSettings"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ExtraConnectionAttributes"] then asserts.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then asserts.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then asserts.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["Password"] then asserts.AssertSecretString(struct["Password"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["ExternalTableDefinition"] then asserts.AssertString(struct["ExternalTableDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointMessage[k], "CreateEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [String] <p>The user name to be used to login to the endpoint database.</p>
-- * CertificateArn [String] <p>The Amazon Resource Name (ARN) for the certificate.</p>
-- * MongoDbSettings [MongoDbSettings] <p>Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the <b>Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html"> Using MongoDB as a Target for AWS Database Migration Service</a>. </p>
-- * S3Settings [S3Settings] <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see the <b>Extra Connection Attributes</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- * Tags [TagList] <p>Tags to be added to the endpoint.</p>
-- * ServerName [String] <p>The name of the server where the endpoint database resides.</p>
-- * EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- * ServiceAccessRoleArn [String] <p> The Amazon Resource Name (ARN) for the service access role you want to use to create the endpoint. </p>
-- * DmsTransferSettings [DmsTransferSettings] <p> The settings in JSON format for the DMS Transfer type source endpoint. </p> <p>Attributes include:</p> <ul> <li> <p>serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.</p> </li> <li> <p>bucketName - The name of the S3 bucket to use.</p> </li> <li> <p>compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.</p> </li> </ul> <p>Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string</p> <p>JSON syntax:</p> <p> { "ServiceAccessRoleArn": "string", "BucketName": "string", "CompressionType": "none"|"gzip" } </p>
-- * KmsKeyId [String] <p>The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- * ExtraConnectionAttributes [String] <p>Additional attributes associated with the connection.</p>
-- * DatabaseName [String] <p>The name of the endpoint database.</p>
-- * DynamoDbSettings [DynamoDbSettings] <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the <b>Using Object Mapping to Migrate Data to DynamoDB</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html"> Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service</a>. </p>
-- * SslMode [DmsSslModeValue] <p>The SSL mode to use for the SSL connection.</p> <p>SSL mode can be one of four values: none, require, verify-ca, verify-full. </p> <p>The default value is none.</p>
-- * EngineName [String] <p>The type of engine for the endpoint. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, dynamodb, mongodb, and sqlserver.</p>
-- * Password [SecretString] <p>The password to be used to login to the endpoint database.</p>
-- * EndpointIdentifier [String] <p>The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- * Port [IntegerOptional] <p>The port used by the endpoint database.</p>
-- * ExternalTableDefinition [String] <p>The external table definition. </p>
-- Required key: EndpointIdentifier
-- Required key: EndpointType
-- Required key: EngineName
-- @return CreateEndpointMessage structure as a key-value pair table
function M.CreateEndpointMessage(args)
	assert(args, "You must provide an argument table when creating CreateEndpointMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["CertificateArn"] = args["CertificateArn"],
		["MongoDbSettings"] = args["MongoDbSettings"],
		["S3Settings"] = args["S3Settings"],
		["Tags"] = args["Tags"],
		["ServerName"] = args["ServerName"],
		["EndpointType"] = args["EndpointType"],
		["ServiceAccessRoleArn"] = args["ServiceAccessRoleArn"],
		["DmsTransferSettings"] = args["DmsTransferSettings"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ExtraConnectionAttributes"] = args["ExtraConnectionAttributes"],
		["DatabaseName"] = args["DatabaseName"],
		["DynamoDbSettings"] = args["DynamoDbSettings"],
		["SslMode"] = args["SslMode"],
		["EngineName"] = args["EngineName"],
		["Password"] = args["Password"],
		["EndpointIdentifier"] = args["EndpointIdentifier"],
		["Port"] = args["Port"],
		["ExternalTableDefinition"] = args["ExternalTableDefinition"],
	}
	asserts.AssertCreateEndpointMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsFromResourceMessage = { ["ResourceArn"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	if struct["TagKeys"] then asserts.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceMessage[k], "RemoveTagsFromResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [String] <p>&gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be removed from.</p>
-- * TagKeys [KeyList] <p>The tag key (name) of the tag to be removed.</p>
-- Required key: ResourceArn
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
		["ResourceArn"] = args["ResourceArn"],
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

keys.OrderableReplicationInstance = { ["StorageType"] = true, ["ReplicationInstanceClass"] = true, ["EngineVersion"] = true, ["IncludedAllocatedStorage"] = true, ["DefaultAllocatedStorage"] = true, ["MinAllocatedStorage"] = true, ["MaxAllocatedStorage"] = true, nil }

function asserts.AssertOrderableReplicationInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableReplicationInstance to be of type 'table'")
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["ReplicationInstanceClass"] then asserts.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["IncludedAllocatedStorage"] then asserts.AssertInteger(struct["IncludedAllocatedStorage"]) end
	if struct["DefaultAllocatedStorage"] then asserts.AssertInteger(struct["DefaultAllocatedStorage"]) end
	if struct["MinAllocatedStorage"] then asserts.AssertInteger(struct["MinAllocatedStorage"]) end
	if struct["MaxAllocatedStorage"] then asserts.AssertInteger(struct["MaxAllocatedStorage"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableReplicationInstance[k], "OrderableReplicationInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableReplicationInstance
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageType [String] <p>The type of storage used by the replication instance.</p>
-- * ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- * EngineVersion [String] <p>The version of the replication engine.</p>
-- * IncludedAllocatedStorage [Integer] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- * DefaultAllocatedStorage [Integer] <p>The default amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- * MinAllocatedStorage [Integer] <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.</p>
-- * MaxAllocatedStorage [Integer] <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.</p>
-- @return OrderableReplicationInstance structure as a key-value pair table
function M.OrderableReplicationInstance(args)
	assert(args, "You must provide an argument table when creating OrderableReplicationInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageType"] = args["StorageType"],
		["ReplicationInstanceClass"] = args["ReplicationInstanceClass"],
		["EngineVersion"] = args["EngineVersion"],
		["IncludedAllocatedStorage"] = args["IncludedAllocatedStorage"],
		["DefaultAllocatedStorage"] = args["DefaultAllocatedStorage"],
		["MinAllocatedStorage"] = args["MinAllocatedStorage"],
		["MaxAllocatedStorage"] = args["MaxAllocatedStorage"],
	}
	asserts.AssertOrderableReplicationInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationInstance = { ["ReplicationInstanceArn"] = true, ["ReplicationInstanceStatus"] = true, ["VpcSecurityGroups"] = true, ["InstanceCreateTime"] = true, ["ReplicationInstancePublicIpAddresses"] = true, ["PendingModifiedValues"] = true, ["MultiAZ"] = true, ["PubliclyAccessible"] = true, ["AutoMinorVersionUpgrade"] = true, ["ReplicationInstancePublicIpAddress"] = true, ["SecondaryAvailabilityZone"] = true, ["AllocatedStorage"] = true, ["PreferredMaintenanceWindow"] = true, ["ReplicationSubnetGroup"] = true, ["FreeUntil"] = true, ["EngineVersion"] = true, ["ReplicationInstanceIdentifier"] = true, ["AvailabilityZone"] = true, ["ReplicationInstancePrivateIpAddress"] = true, ["ReplicationInstancePrivateIpAddresses"] = true, ["ReplicationInstanceClass"] = true, ["KmsKeyId"] = true, nil }

function asserts.AssertReplicationInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationInstance to be of type 'table'")
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["ReplicationInstanceStatus"] then asserts.AssertString(struct["ReplicationInstanceStatus"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["InstanceCreateTime"] then asserts.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["ReplicationInstancePublicIpAddresses"] then asserts.AssertReplicationInstancePublicIpAddressList(struct["ReplicationInstancePublicIpAddresses"]) end
	if struct["PendingModifiedValues"] then asserts.AssertReplicationPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["ReplicationInstancePublicIpAddress"] then asserts.AssertString(struct["ReplicationInstancePublicIpAddress"]) end
	if struct["SecondaryAvailabilityZone"] then asserts.AssertString(struct["SecondaryAvailabilityZone"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["ReplicationSubnetGroup"] then asserts.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	if struct["FreeUntil"] then asserts.AssertTStamp(struct["FreeUntil"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstanceIdentifier"] then asserts.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["ReplicationInstancePrivateIpAddress"] then asserts.AssertString(struct["ReplicationInstancePrivateIpAddress"]) end
	if struct["ReplicationInstancePrivateIpAddresses"] then asserts.AssertReplicationInstancePrivateIpAddressList(struct["ReplicationInstancePrivateIpAddresses"]) end
	if struct["ReplicationInstanceClass"] then asserts.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationInstance[k], "ReplicationInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationInstance
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- * ReplicationInstanceStatus [String] <p>The status of the replication instance.</p>
-- * VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>The VPC security group for the instance.</p>
-- * InstanceCreateTime [TStamp] <p>The time the replication instance was created.</p>
-- * ReplicationInstancePublicIpAddresses [ReplicationInstancePublicIpAddressList] <p>The public IP address of the replication instance.</p>
-- * PendingModifiedValues [ReplicationPendingModifiedValues] <p>The pending modification values.</p>
-- * MultiAZ [Boolean] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- * PubliclyAccessible [Boolean] <p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>
-- * AutoMinorVersionUpgrade [Boolean] <p>Boolean value indicating if minor version upgrades will be automatically applied to the instance.</p>
-- * ReplicationInstancePublicIpAddress [String] <p>The public IP address of the replication instance.</p>
-- * SecondaryAvailabilityZone [String] <p>The availability zone of the standby replication instance in a Multi-AZ deployment.</p>
-- * AllocatedStorage [Integer] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- * PreferredMaintenanceWindow [String] <p>The maintenance window times for the replication instance.</p>
-- * ReplicationSubnetGroup [ReplicationSubnetGroup] <p>The subnet group for the replication instance.</p>
-- * FreeUntil [TStamp] <p> The expiration date of the free replication instance that is part of the Free DMS program. </p>
-- * EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- * ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>
-- * AvailabilityZone [String] <p>The Availability Zone for the instance.</p>
-- * ReplicationInstancePrivateIpAddress [String] <p>The private IP address of the replication instance.</p>
-- * ReplicationInstancePrivateIpAddresses [ReplicationInstancePrivateIpAddressList] <p>The private IP address of the replication instance.</p>
-- * ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- * KmsKeyId [String] <p>The KMS key identifier that is used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @return ReplicationInstance structure as a key-value pair table
function M.ReplicationInstance(args)
	assert(args, "You must provide an argument table when creating ReplicationInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
		["ReplicationInstanceStatus"] = args["ReplicationInstanceStatus"],
		["VpcSecurityGroups"] = args["VpcSecurityGroups"],
		["InstanceCreateTime"] = args["InstanceCreateTime"],
		["ReplicationInstancePublicIpAddresses"] = args["ReplicationInstancePublicIpAddresses"],
		["PendingModifiedValues"] = args["PendingModifiedValues"],
		["MultiAZ"] = args["MultiAZ"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["ReplicationInstancePublicIpAddress"] = args["ReplicationInstancePublicIpAddress"],
		["SecondaryAvailabilityZone"] = args["SecondaryAvailabilityZone"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["ReplicationSubnetGroup"] = args["ReplicationSubnetGroup"],
		["FreeUntil"] = args["FreeUntil"],
		["EngineVersion"] = args["EngineVersion"],
		["ReplicationInstanceIdentifier"] = args["ReplicationInstanceIdentifier"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["ReplicationInstancePrivateIpAddress"] = args["ReplicationInstancePrivateIpAddress"],
		["ReplicationInstancePrivateIpAddresses"] = args["ReplicationInstancePrivateIpAddresses"],
		["ReplicationInstanceClass"] = args["ReplicationInstanceClass"],
		["KmsKeyId"] = args["KmsKeyId"],
	}
	asserts.AssertReplicationInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootReplicationInstanceMessage = { ["ForceFailover"] = true, ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertRebootReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["ForceFailover"] then asserts.AssertBooleanOptional(struct["ForceFailover"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootReplicationInstanceMessage[k], "RebootReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootReplicationInstanceMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForceFailover [BooleanOptional] <p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then you can't specify <code>true</code>.)</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- Required key: ReplicationInstanceArn
-- @return RebootReplicationInstanceMessage structure as a key-value pair table
function M.RebootReplicationInstanceMessage(args)
	assert(args, "You must provide an argument table when creating RebootReplicationInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForceFailover"] = args["ForceFailover"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertRebootReplicationInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationInstanceTaskLog = { ["ReplicationTaskArn"] = true, ["ReplicationTaskName"] = true, ["ReplicationInstanceTaskLogSize"] = true, nil }

function asserts.AssertReplicationInstanceTaskLog(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationInstanceTaskLog to be of type 'table'")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["ReplicationTaskName"] then asserts.AssertString(struct["ReplicationTaskName"]) end
	if struct["ReplicationInstanceTaskLogSize"] then asserts.AssertLong(struct["ReplicationInstanceTaskLogSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationInstanceTaskLog[k], "ReplicationInstanceTaskLog contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationInstanceTaskLog
-- <p>Contains metadata for a replication instance task log.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- * ReplicationTaskName [String] <p>The name of the replication task.</p>
-- * ReplicationInstanceTaskLogSize [Long] <p>The size, in bytes, of the replication task log.</p>
-- @return ReplicationInstanceTaskLog structure as a key-value pair table
function M.ReplicationInstanceTaskLog(args)
	assert(args, "You must provide an argument table when creating ReplicationInstanceTaskLog")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
		["ReplicationTaskName"] = args["ReplicationTaskName"],
		["ReplicationInstanceTaskLogSize"] = args["ReplicationInstanceTaskLogSize"],
	}
	asserts.AssertReplicationInstanceTaskLog(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsToResourceResponse = { nil }

function asserts.AssertAddTagsToResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceResponse[k], "AddTagsToResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddTagsToResourceResponse structure as a key-value pair table
function M.AddTagsToResourceResponse(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddTagsToResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationTaskAssessmentResultsResponse = { ["Marker"] = true, ["ReplicationTaskAssessmentResults"] = true, ["BucketName"] = true, nil }

function asserts.AssertDescribeReplicationTaskAssessmentResultsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationTaskAssessmentResultsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReplicationTaskAssessmentResults"] then asserts.AssertReplicationTaskAssessmentResultList(struct["ReplicationTaskAssessmentResults"]) end
	if struct["BucketName"] then asserts.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationTaskAssessmentResultsResponse[k], "DescribeReplicationTaskAssessmentResultsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationTaskAssessmentResultsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * ReplicationTaskAssessmentResults [ReplicationTaskAssessmentResultList] <p> The task assessment report. </p>
-- * BucketName [String] <p>- The Amazon S3 bucket where the task assessment report is located. </p>
-- @return DescribeReplicationTaskAssessmentResultsResponse structure as a key-value pair table
function M.DescribeReplicationTaskAssessmentResultsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationTaskAssessmentResultsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReplicationTaskAssessmentResults"] = args["ReplicationTaskAssessmentResults"],
		["BucketName"] = args["BucketName"],
	}
	asserts.AssertDescribeReplicationTaskAssessmentResultsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationTasksResponse = { ["Marker"] = true, ["ReplicationTasks"] = true, nil }

function asserts.AssertDescribeReplicationTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationTasksResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReplicationTasks"] then asserts.AssertReplicationTaskList(struct["ReplicationTasks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationTasksResponse[k], "DescribeReplicationTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationTasksResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * ReplicationTasks [ReplicationTaskList] <p>A description of the replication tasks.</p>
-- @return DescribeReplicationTasksResponse structure as a key-value pair table
function M.DescribeReplicationTasksResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationTasksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReplicationTasks"] = args["ReplicationTasks"],
	}
	asserts.AssertDescribeReplicationTasksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportCertificateMessage = { ["CertificateIdentifier"] = true, ["Tags"] = true, ["CertificatePem"] = true, ["CertificateWallet"] = true, nil }

function asserts.AssertImportCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateMessage to be of type 'table'")
	assert(struct["CertificateIdentifier"], "Expected key CertificateIdentifier to exist in table")
	if struct["CertificateIdentifier"] then asserts.AssertString(struct["CertificateIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["CertificatePem"] then asserts.AssertString(struct["CertificatePem"]) end
	if struct["CertificateWallet"] then asserts.AssertCertificateWallet(struct["CertificateWallet"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportCertificateMessage[k], "ImportCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateIdentifier [String] <p>The customer-assigned name of the certificate. Valid characters are A-z and 0-9.</p>
-- * Tags [TagList] <p>The tags associated with the certificate.</p>
-- * CertificatePem [String] <p>The contents of the .pem X.509 certificate file for the certificate.</p>
-- * CertificateWallet [CertificateWallet] <p>The location of the imported Oracle Wallet certificate for use with SSL.</p>
-- Required key: CertificateIdentifier
-- @return ImportCertificateMessage structure as a key-value pair table
function M.ImportCertificateMessage(args)
	assert(args, "You must provide an argument table when creating ImportCertificateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateIdentifier"] = args["CertificateIdentifier"],
		["Tags"] = args["Tags"],
		["CertificatePem"] = args["CertificatePem"],
		["CertificateWallet"] = args["CertificateWallet"],
	}
	asserts.AssertImportCertificateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationSubnetGroupResponse = { ["ReplicationSubnetGroup"] = true, nil }

function asserts.AssertCreateReplicationSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationSubnetGroupResponse to be of type 'table'")
	if struct["ReplicationSubnetGroup"] then asserts.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationSubnetGroupResponse[k], "CreateReplicationSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationSubnetGroupResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationSubnetGroup [ReplicationSubnetGroup] <p>The replication subnet group that was created.</p>
-- @return CreateReplicationSubnetGroupResponse structure as a key-value pair table
function M.CreateReplicationSubnetGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateReplicationSubnetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationSubnetGroup"] = args["ReplicationSubnetGroup"],
	}
	asserts.AssertCreateReplicationSubnetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointTypesMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEndpointTypesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointTypesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointTypesMessage[k], "DescribeEndpointTypesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointTypesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: engine-name | endpoint-type</p>
-- @return DescribeEndpointTypesMessage structure as a key-value pair table
function M.DescribeEndpointTypesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointTypesMessage")
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
	}
	asserts.AssertDescribeEndpointTypesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationSubnetGroupResponse = { ["ReplicationSubnetGroup"] = true, nil }

function asserts.AssertModifyReplicationSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationSubnetGroupResponse to be of type 'table'")
	if struct["ReplicationSubnetGroup"] then asserts.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationSubnetGroupResponse[k], "ModifyReplicationSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationSubnetGroupResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationSubnetGroup [ReplicationSubnetGroup] <p>The modified replication subnet group.</p>
-- @return ModifyReplicationSubnetGroupResponse structure as a key-value pair table
function M.ModifyReplicationSubnetGroupResponse(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationSubnetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationSubnetGroup"] = args["ReplicationSubnetGroup"],
	}
	asserts.AssertModifyReplicationSubnetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventSubscriptionsResponse = { ["Marker"] = true, ["EventSubscriptionsList"] = true, nil }

function asserts.AssertDescribeEventSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EventSubscriptionsList"] then asserts.AssertEventSubscriptionsList(struct["EventSubscriptionsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventSubscriptionsResponse[k], "DescribeEventSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * EventSubscriptionsList [EventSubscriptionsList] <p>A list of event subscriptions.</p>
-- @return DescribeEventSubscriptionsResponse structure as a key-value pair table
function M.DescribeEventSubscriptionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEventSubscriptionsResponse")
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
	asserts.AssertDescribeEventSubscriptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventSubscriptionResponse = { ["EventSubscription"] = true, nil }

function asserts.AssertDeleteEventSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionResponse to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSubscriptionResponse[k], "DeleteEventSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionResponse
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] <p>The event subscription that was deleted.</p>
-- @return DeleteEventSubscriptionResponse structure as a key-value pair table
function M.DeleteEventSubscriptionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteEventSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertDeleteEventSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeAccountAttributesMessage structure as a key-value pair table
function M.DescribeAccountAttributesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeAccountAttributesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeAccountAttributesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshSchemasStatus = { ["Status"] = true, ["LastFailureMessage"] = true, ["LastRefreshDate"] = true, ["EndpointArn"] = true, ["ReplicationInstanceArn"] = true, nil }

function asserts.AssertRefreshSchemasStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshSchemasStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertRefreshSchemasStatusTypeValue(struct["Status"]) end
	if struct["LastFailureMessage"] then asserts.AssertString(struct["LastFailureMessage"]) end
	if struct["LastRefreshDate"] then asserts.AssertTStamp(struct["LastRefreshDate"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshSchemasStatus[k], "RefreshSchemasStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshSchemasStatus
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [RefreshSchemasStatusTypeValue] <p>The status of the schema.</p>
-- * LastFailureMessage [String] <p>The last failure message for the schema.</p>
-- * LastRefreshDate [TStamp] <p>The date the schema was last refreshed.</p>
-- * EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- * ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @return RefreshSchemasStatus structure as a key-value pair table
function M.RefreshSchemasStatus(args)
	assert(args, "You must provide an argument table when creating RefreshSchemasStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["LastFailureMessage"] = args["LastFailureMessage"],
		["LastRefreshDate"] = args["LastRefreshDate"],
		["EndpointArn"] = args["EndpointArn"],
		["ReplicationInstanceArn"] = args["ReplicationInstanceArn"],
	}
	asserts.AssertRefreshSchemasStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSubscription = { ["Status"] = true, ["SubscriptionCreationTime"] = true, ["SourceType"] = true, ["EventCategoriesList"] = true, ["SourceIdsList"] = true, ["CustSubscriptionId"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["CustomerAwsId"] = true, nil }

function asserts.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["SubscriptionCreationTime"] then asserts.AssertString(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then asserts.AssertEventCategoriesList(struct["EventCategoriesList"]) end
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the AWS DMS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status "no-permission" indicates that AWS DMS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
-- * SubscriptionCreationTime [String] <p>The time the RDS event notification subscription was created.</p>
-- * SourceType [String] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-server | security-group | migration-task</p>
-- * EventCategoriesList [EventCategoriesList] <p>A lists of event categories.</p>
-- * SourceIdsList [SourceIdsList] <p>A list of source Ids for the event subscription.</p>
-- * CustSubscriptionId [String] <p>The AWS DMS event notification subscription Id.</p>
-- * Enabled [Boolean] <p>Boolean value that indicates if the event subscription is enabled.</p>
-- * SnsTopicArn [String] <p>The topic ARN of the AWS DMS event notification subscription.</p>
-- * CustomerAwsId [String] <p>The AWS customer account associated with the AWS DMS event notification subscription.</p>
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

keys.StopReplicationTaskMessage = { ["ReplicationTaskArn"] = true, nil }

function asserts.AssertStopReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopReplicationTaskMessage[k], "StopReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopReplicationTaskMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationTaskArn [String] <p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>
-- Required key: ReplicationTaskArn
-- @return StopReplicationTaskMessage structure as a key-value pair table
function M.StopReplicationTaskMessage(args)
	assert(args, "You must provide an argument table when creating StopReplicationTaskMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationTaskArn"] = args["ReplicationTaskArn"],
	}
	asserts.AssertStopReplicationTaskMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDmsSslModeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DmsSslModeValue to be of type 'string'")
end

--  
function M.DmsSslModeValue(str)
	asserts.AssertDmsSslModeValue(str)
	return str
end

function asserts.AssertStartReplicationTaskTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StartReplicationTaskTypeValue to be of type 'string'")
end

--  
function M.StartReplicationTaskTypeValue(str)
	asserts.AssertStartReplicationTaskTypeValue(str)
	return str
end

function asserts.AssertRefreshSchemasStatusTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RefreshSchemasStatusTypeValue to be of type 'string'")
end

--  
function M.RefreshSchemasStatusTypeValue(str)
	asserts.AssertRefreshSchemasStatusTypeValue(str)
	return str
end

function asserts.AssertReplicationEndpointTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationEndpointTypeValue to be of type 'string'")
end

--  
function M.ReplicationEndpointTypeValue(str)
	asserts.AssertReplicationEndpointTypeValue(str)
	return str
end

function asserts.AssertMigrationTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MigrationTypeValue to be of type 'string'")
end

--  
function M.MigrationTypeValue(str)
	asserts.AssertMigrationTypeValue(str)
	return str
end

function asserts.AssertAuthTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthTypeValue to be of type 'string'")
end

--  
function M.AuthTypeValue(str)
	asserts.AssertAuthTypeValue(str)
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

function asserts.AssertSecretString(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretString to be of type 'string'")
end

--  
function M.SecretString(str)
	asserts.AssertSecretString(str)
	return str
end

function asserts.AssertNestingLevelValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NestingLevelValue to be of type 'string'")
end

--  
function M.NestingLevelValue(str)
	asserts.AssertNestingLevelValue(str)
	return str
end

function asserts.AssertReloadOptionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReloadOptionValue to be of type 'string'")
end

--  
function M.ReloadOptionValue(str)
	asserts.AssertReloadOptionValue(str)
	return str
end

function asserts.AssertAuthMechanismValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthMechanismValue to be of type 'string'")
end

--  
function M.AuthMechanismValue(str)
	asserts.AssertAuthMechanismValue(str)
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

function asserts.AssertCompressionTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionTypeValue to be of type 'string'")
end

--  
function M.CompressionTypeValue(str)
	asserts.AssertCompressionTypeValue(str)
	return str
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

function asserts.AssertCertificateWallet(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected CertificateWallet to be of type 'string'")
end

function M.CertificateWallet(blob)
	asserts.AssertCertificateWallet(blob)
	return blob
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

function asserts.AssertOrderableReplicationInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableReplicationInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrderableReplicationInstance(v)
	end
end

--  
-- List of OrderableReplicationInstance objects
function M.OrderableReplicationInstanceList(list)
	asserts.AssertOrderableReplicationInstanceList(list)
	return list
end

function asserts.AssertSupportedEndpointTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedEndpointTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSupportedEndpointType(v)
	end
end

--  
-- List of SupportedEndpointType objects
function M.SupportedEndpointTypeList(list)
	asserts.AssertSupportedEndpointTypeList(list)
	return list
end

function asserts.AssertReplicationInstanceTaskLogsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstanceTaskLogsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationInstanceTaskLog(v)
	end
end

--  
-- List of ReplicationInstanceTaskLog objects
function M.ReplicationInstanceTaskLogsList(list)
	asserts.AssertReplicationInstanceTaskLogsList(list)
	return list
end

function asserts.AssertEventCategoryGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoryGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventCategoryGroup(v)
	end
end

--  
-- List of EventCategoryGroup objects
function M.EventCategoryGroupList(list)
	asserts.AssertEventCategoryGroupList(list)
	return list
end

function asserts.AssertConnectionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConnection(v)
	end
end

--  
-- List of Connection objects
function M.ConnectionList(list)
	asserts.AssertConnectionList(list)
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

function asserts.AssertEndpointList(list)
	assert(list)
	assert(type(list) == "table", "Expected EndpointList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpoint(v)
	end
end

--  
-- List of Endpoint objects
function M.EndpointList(list)
	asserts.AssertEndpointList(list)
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

function asserts.AssertReplicationInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationInstance(v)
	end
end

--  
-- List of ReplicationInstance objects
function M.ReplicationInstanceList(list)
	asserts.AssertReplicationInstanceList(list)
	return list
end

function asserts.AssertReplicationInstancePrivateIpAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstancePrivateIpAddressList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReplicationInstancePrivateIpAddressList(list)
	asserts.AssertReplicationInstancePrivateIpAddressList(list)
	return list
end

function asserts.AssertReplicationInstancePublicIpAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstancePublicIpAddressList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReplicationInstancePublicIpAddressList(list)
	asserts.AssertReplicationInstancePublicIpAddressList(list)
	return list
end

function asserts.AssertReplicationTaskList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationTaskList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationTask(v)
	end
end

--  
-- List of ReplicationTask objects
function M.ReplicationTaskList(list)
	asserts.AssertReplicationTaskList(list)
	return list
end

function asserts.AssertSchemaList(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SchemaList(list)
	asserts.AssertSchemaList(list)
	return list
end

function asserts.AssertReplicationTaskAssessmentResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationTaskAssessmentResultList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationTaskAssessmentResult(v)
	end
end

--  
-- List of ReplicationTaskAssessmentResult objects
function M.ReplicationTaskAssessmentResultList(list)
	asserts.AssertReplicationTaskAssessmentResultList(list)
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

function asserts.AssertTableStatisticsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableStatisticsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableStatistics(v)
	end
end

--  
-- List of TableStatistics objects
function M.TableStatisticsList(list)
	asserts.AssertTableStatisticsList(list)
	return list
end

function asserts.AssertTableListToReload(list)
	assert(list)
	assert(type(list) == "table", "Expected TableListToReload to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableToReload(v)
	end
end

--  
-- List of TableToReload objects
function M.TableListToReload(list)
	asserts.AssertTableListToReload(list)
	return list
end

function asserts.AssertReplicationSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationSubnetGroup(v)
	end
end

--  
-- List of ReplicationSubnetGroup objects
function M.ReplicationSubnetGroups(list)
	asserts.AssertReplicationSubnetGroups(list)
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
			return "dms.amazonaws.com"
		end
	end
	local ss = { "dms" }
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
--- Call RefreshSchemas asynchronously, invoking a callback when done
-- @param RefreshSchemasMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RefreshSchemasAsync(RefreshSchemasMessage, cb)
	assert(RefreshSchemasMessage, "You must provide a RefreshSchemasMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.RefreshSchemas",
	}
	for header,value in pairs(RefreshSchemasMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RefreshSchemasMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RefreshSchemas synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RefreshSchemasMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RefreshSchemasSync(RefreshSchemasMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RefreshSchemasAsync(RefreshSchemasMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCertificates asynchronously, invoking a callback when done
-- @param DescribeCertificatesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCertificatesAsync(DescribeCertificatesMessage, cb)
	assert(DescribeCertificatesMessage, "You must provide a DescribeCertificatesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeCertificates",
	}
	for header,value in pairs(DescribeCertificatesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeCertificatesSync(DescribeCertificatesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCertificatesAsync(DescribeCertificatesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationInstances asynchronously, invoking a callback when done
-- @param DescribeReplicationInstancesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReplicationInstancesAsync(DescribeReplicationInstancesMessage, cb)
	assert(DescribeReplicationInstancesMessage, "You must provide a DescribeReplicationInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationInstances",
	}
	for header,value in pairs(DescribeReplicationInstancesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReplicationInstancesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReplicationInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationInstancesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReplicationInstancesSync(DescribeReplicationInstancesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationInstancesAsync(DescribeReplicationInstancesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReplicationSubnetGroup asynchronously, invoking a callback when done
-- @param CreateReplicationSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReplicationSubnetGroupAsync(CreateReplicationSubnetGroupMessage, cb)
	assert(CreateReplicationSubnetGroupMessage, "You must provide a CreateReplicationSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateReplicationSubnetGroup",
	}
	for header,value in pairs(CreateReplicationSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReplicationSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReplicationSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReplicationSubnetGroupSync(CreateReplicationSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationSubnetGroupAsync(CreateReplicationSubnetGroupMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEvents",
	}
	for header,value in pairs(DescribeEventsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEventSubscriptions",
	}
	for header,value in pairs(DescribeEventSubscriptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call CreateReplicationTask asynchronously, invoking a callback when done
-- @param CreateReplicationTaskMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReplicationTaskAsync(CreateReplicationTaskMessage, cb)
	assert(CreateReplicationTaskMessage, "You must provide a CreateReplicationTaskMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateReplicationTask",
	}
	for header,value in pairs(CreateReplicationTaskMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReplicationTaskMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationTaskMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReplicationTaskSync(CreateReplicationTaskMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationTaskAsync(CreateReplicationTaskMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationInstance asynchronously, invoking a callback when done
-- @param DeleteReplicationInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReplicationInstanceAsync(DeleteReplicationInstanceMessage, cb)
	assert(DeleteReplicationInstanceMessage, "You must provide a DeleteReplicationInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteReplicationInstance",
	}
	for header,value in pairs(DeleteReplicationInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReplicationInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReplicationInstanceSync(DeleteReplicationInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationInstanceAsync(DeleteReplicationInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationInstance asynchronously, invoking a callback when done
-- @param ModifyReplicationInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyReplicationInstanceAsync(ModifyReplicationInstanceMessage, cb)
	assert(ModifyReplicationInstanceMessage, "You must provide a ModifyReplicationInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyReplicationInstance",
	}
	for header,value in pairs(ModifyReplicationInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyReplicationInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyReplicationInstanceSync(ModifyReplicationInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationInstanceAsync(ModifyReplicationInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTableStatistics asynchronously, invoking a callback when done
-- @param DescribeTableStatisticsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTableStatisticsAsync(DescribeTableStatisticsMessage, cb)
	assert(DescribeTableStatisticsMessage, "You must provide a DescribeTableStatisticsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeTableStatistics",
	}
	for header,value in pairs(DescribeTableStatisticsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTableStatisticsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTableStatistics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTableStatisticsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTableStatisticsSync(DescribeTableStatisticsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTableStatisticsAsync(DescribeTableStatisticsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootReplicationInstance asynchronously, invoking a callback when done
-- @param RebootReplicationInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootReplicationInstanceAsync(RebootReplicationInstanceMessage, cb)
	assert(RebootReplicationInstanceMessage, "You must provide a RebootReplicationInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.RebootReplicationInstance",
	}
	for header,value in pairs(RebootReplicationInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootReplicationInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootReplicationInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RebootReplicationInstanceSync(RebootReplicationInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootReplicationInstanceAsync(RebootReplicationInstanceMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEventCategories",
	}
	for header,value in pairs(DescribeEventCategoriesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call StartReplicationTask asynchronously, invoking a callback when done
-- @param StartReplicationTaskMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartReplicationTaskAsync(StartReplicationTaskMessage, cb)
	assert(StartReplicationTaskMessage, "You must provide a StartReplicationTaskMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.StartReplicationTask",
	}
	for header,value in pairs(StartReplicationTaskMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartReplicationTaskMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartReplicationTaskMessage
-- @return response
-- @return error_type
-- @return error_message
function M.StartReplicationTaskSync(StartReplicationTaskMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartReplicationTaskAsync(StartReplicationTaskMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteReplicationSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReplicationSubnetGroupAsync(DeleteReplicationSubnetGroupMessage, cb)
	assert(DeleteReplicationSubnetGroupMessage, "You must provide a DeleteReplicationSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteReplicationSubnetGroup",
	}
	for header,value in pairs(DeleteReplicationSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReplicationSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReplicationSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReplicationSubnetGroupSync(DeleteReplicationSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationSubnetGroupAsync(DeleteReplicationSubnetGroupMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.AddTagsToResource",
	}
	for header,value in pairs(AddTagsToResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call DescribeAccountAttributes asynchronously, invoking a callback when done
-- @param DescribeAccountAttributesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountAttributesAsync(DescribeAccountAttributesMessage, cb)
	assert(DescribeAccountAttributesMessage, "You must provide a DescribeAccountAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeAccountAttributes",
	}
	for header,value in pairs(DescribeAccountAttributesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAccountAttributesSync(DescribeAccountAttributesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountAttributesAsync(DescribeAccountAttributesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCertificate asynchronously, invoking a callback when done
-- @param DeleteCertificateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCertificateAsync(DeleteCertificateMessage, cb)
	assert(DeleteCertificateMessage, "You must provide a DeleteCertificateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteCertificate",
	}
	for header,value in pairs(DeleteCertificateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCertificateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCertificateMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCertificateSync(DeleteCertificateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCertificateAsync(DeleteCertificateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestConnection asynchronously, invoking a callback when done
-- @param TestConnectionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestConnectionAsync(TestConnectionMessage, cb)
	assert(TestConnectionMessage, "You must provide a TestConnectionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.TestConnection",
	}
	for header,value in pairs(TestConnectionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TestConnectionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestConnectionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.TestConnectionSync(TestConnectionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestConnectionAsync(TestConnectionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpoints asynchronously, invoking a callback when done
-- @param DescribeEndpointsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEndpointsAsync(DescribeEndpointsMessage, cb)
	assert(DescribeEndpointsMessage, "You must provide a DescribeEndpointsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEndpoints",
	}
	for header,value in pairs(DescribeEndpointsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEndpointsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEndpointsSync(DescribeEndpointsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointsAsync(DescribeEndpointsMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.RemoveTagsFromResource",
	}
	for header,value in pairs(RemoveTagsFromResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call CreateEndpoint asynchronously, invoking a callback when done
-- @param CreateEndpointMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEndpointAsync(CreateEndpointMessage, cb)
	assert(CreateEndpointMessage, "You must provide a CreateEndpointMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateEndpoint",
	}
	for header,value in pairs(CreateEndpointMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEndpointMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEndpointMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEndpointSync(CreateEndpointMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEndpointAsync(CreateEndpointMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationTask asynchronously, invoking a callback when done
-- @param DeleteReplicationTaskMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReplicationTaskAsync(DeleteReplicationTaskMessage, cb)
	assert(DeleteReplicationTaskMessage, "You must provide a DeleteReplicationTaskMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteReplicationTask",
	}
	for header,value in pairs(DeleteReplicationTaskMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReplicationTaskMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationTaskMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReplicationTaskSync(DeleteReplicationTaskMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationTaskAsync(DeleteReplicationTaskMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationTaskAssessmentResults asynchronously, invoking a callback when done
-- @param DescribeReplicationTaskAssessmentResultsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReplicationTaskAssessmentResultsAsync(DescribeReplicationTaskAssessmentResultsMessage, cb)
	assert(DescribeReplicationTaskAssessmentResultsMessage, "You must provide a DescribeReplicationTaskAssessmentResultsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationTaskAssessmentResults",
	}
	for header,value in pairs(DescribeReplicationTaskAssessmentResultsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReplicationTaskAssessmentResultsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReplicationTaskAssessmentResults synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationTaskAssessmentResultsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReplicationTaskAssessmentResultsSync(DescribeReplicationTaskAssessmentResultsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationTaskAssessmentResultsAsync(DescribeReplicationTaskAssessmentResultsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRefreshSchemasStatus asynchronously, invoking a callback when done
-- @param DescribeRefreshSchemasStatusMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRefreshSchemasStatusAsync(DescribeRefreshSchemasStatusMessage, cb)
	assert(DescribeRefreshSchemasStatusMessage, "You must provide a DescribeRefreshSchemasStatusMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeRefreshSchemasStatus",
	}
	for header,value in pairs(DescribeRefreshSchemasStatusMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRefreshSchemasStatusMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRefreshSchemasStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRefreshSchemasStatusMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRefreshSchemasStatusSync(DescribeRefreshSchemasStatusMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRefreshSchemasStatusAsync(DescribeRefreshSchemasStatusMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyEndpoint asynchronously, invoking a callback when done
-- @param ModifyEndpointMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyEndpointAsync(ModifyEndpointMessage, cb)
	assert(ModifyEndpointMessage, "You must provide a ModifyEndpointMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyEndpoint",
	}
	for header,value in pairs(ModifyEndpointMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyEndpointMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyEndpointMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyEndpointSync(ModifyEndpointMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyEndpointAsync(ModifyEndpointMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReloadTables asynchronously, invoking a callback when done
-- @param ReloadTablesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReloadTablesAsync(ReloadTablesMessage, cb)
	assert(ReloadTablesMessage, "You must provide a ReloadTablesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ReloadTables",
	}
	for header,value in pairs(ReloadTablesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ReloadTablesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReloadTables synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReloadTablesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ReloadTablesSync(ReloadTablesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReloadTablesAsync(ReloadTablesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyReplicationSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyReplicationSubnetGroupAsync(ModifyReplicationSubnetGroupMessage, cb)
	assert(ModifyReplicationSubnetGroupMessage, "You must provide a ModifyReplicationSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyReplicationSubnetGroup",
	}
	for header,value in pairs(ModifyReplicationSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyReplicationSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyReplicationSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyReplicationSubnetGroupSync(ModifyReplicationSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationSubnetGroupAsync(ModifyReplicationSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSchemas asynchronously, invoking a callback when done
-- @param DescribeSchemasMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSchemasAsync(DescribeSchemasMessage, cb)
	assert(DescribeSchemasMessage, "You must provide a DescribeSchemasMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeSchemas",
	}
	for header,value in pairs(DescribeSchemasMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSchemasMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSchemas synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSchemasMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSchemasSync(DescribeSchemasMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSchemasAsync(DescribeSchemasMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteEventSubscription",
	}
	for header,value in pairs(DeleteEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call StartReplicationTaskAssessment asynchronously, invoking a callback when done
-- @param StartReplicationTaskAssessmentMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartReplicationTaskAssessmentAsync(StartReplicationTaskAssessmentMessage, cb)
	assert(StartReplicationTaskAssessmentMessage, "You must provide a StartReplicationTaskAssessmentMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.StartReplicationTaskAssessment",
	}
	for header,value in pairs(StartReplicationTaskAssessmentMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartReplicationTaskAssessmentMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartReplicationTaskAssessment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartReplicationTaskAssessmentMessage
-- @return response
-- @return error_type
-- @return error_message
function M.StartReplicationTaskAssessmentSync(StartReplicationTaskAssessmentMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartReplicationTaskAssessmentAsync(StartReplicationTaskAssessmentMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyEventSubscription",
	}
	for header,value in pairs(ModifyEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call DescribeConnections asynchronously, invoking a callback when done
-- @param DescribeConnectionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConnectionsAsync(DescribeConnectionsMessage, cb)
	assert(DescribeConnectionsMessage, "You must provide a DescribeConnectionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeConnections",
	}
	for header,value in pairs(DescribeConnectionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConnectionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConnections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConnectionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConnectionsSync(DescribeConnectionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConnectionsAsync(DescribeConnectionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReplicationInstance asynchronously, invoking a callback when done
-- @param CreateReplicationInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReplicationInstanceAsync(CreateReplicationInstanceMessage, cb)
	assert(CreateReplicationInstanceMessage, "You must provide a CreateReplicationInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateReplicationInstance",
	}
	for header,value in pairs(CreateReplicationInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReplicationInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReplicationInstanceSync(CreateReplicationInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationInstanceAsync(CreateReplicationInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationInstanceTaskLogs asynchronously, invoking a callback when done
-- @param DescribeReplicationInstanceTaskLogsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReplicationInstanceTaskLogsAsync(DescribeReplicationInstanceTaskLogsMessage, cb)
	assert(DescribeReplicationInstanceTaskLogsMessage, "You must provide a DescribeReplicationInstanceTaskLogsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationInstanceTaskLogs",
	}
	for header,value in pairs(DescribeReplicationInstanceTaskLogsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReplicationInstanceTaskLogsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReplicationInstanceTaskLogs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationInstanceTaskLogsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReplicationInstanceTaskLogsSync(DescribeReplicationInstanceTaskLogsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationInstanceTaskLogsAsync(DescribeReplicationInstanceTaskLogsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportCertificate asynchronously, invoking a callback when done
-- @param ImportCertificateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportCertificateAsync(ImportCertificateMessage, cb)
	assert(ImportCertificateMessage, "You must provide a ImportCertificateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ImportCertificate",
	}
	for header,value in pairs(ImportCertificateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportCertificateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportCertificateMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ImportCertificateSync(ImportCertificateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportCertificateAsync(ImportCertificateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeReplicationSubnetGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReplicationSubnetGroupsAsync(DescribeReplicationSubnetGroupsMessage, cb)
	assert(DescribeReplicationSubnetGroupsMessage, "You must provide a DescribeReplicationSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationSubnetGroups",
	}
	for header,value in pairs(DescribeReplicationSubnetGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReplicationSubnetGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReplicationSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationSubnetGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReplicationSubnetGroupsSync(DescribeReplicationSubnetGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationSubnetGroupsAsync(DescribeReplicationSubnetGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopReplicationTask asynchronously, invoking a callback when done
-- @param StopReplicationTaskMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopReplicationTaskAsync(StopReplicationTaskMessage, cb)
	assert(StopReplicationTaskMessage, "You must provide a StopReplicationTaskMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.StopReplicationTask",
	}
	for header,value in pairs(StopReplicationTaskMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopReplicationTaskMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopReplicationTaskMessage
-- @return response
-- @return error_type
-- @return error_message
function M.StopReplicationTaskSync(StopReplicationTaskMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopReplicationTaskAsync(StopReplicationTaskMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpointTypes asynchronously, invoking a callback when done
-- @param DescribeEndpointTypesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEndpointTypesAsync(DescribeEndpointTypesMessage, cb)
	assert(DescribeEndpointTypesMessage, "You must provide a DescribeEndpointTypesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEndpointTypes",
	}
	for header,value in pairs(DescribeEndpointTypesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEndpointTypesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpointTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointTypesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEndpointTypesSync(DescribeEndpointTypesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointTypesAsync(DescribeEndpointTypesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationTasks asynchronously, invoking a callback when done
-- @param DescribeReplicationTasksMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReplicationTasksAsync(DescribeReplicationTasksMessage, cb)
	assert(DescribeReplicationTasksMessage, "You must provide a DescribeReplicationTasksMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationTasks",
	}
	for header,value in pairs(DescribeReplicationTasksMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReplicationTasksMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReplicationTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationTasksMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReplicationTasksSync(DescribeReplicationTasksMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationTasksAsync(DescribeReplicationTasksMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateEventSubscription",
	}
	for header,value in pairs(CreateEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call DeleteEndpoint asynchronously, invoking a callback when done
-- @param DeleteEndpointMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEndpointAsync(DeleteEndpointMessage, cb)
	assert(DeleteEndpointMessage, "You must provide a DeleteEndpointMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteEndpoint",
	}
	for header,value in pairs(DeleteEndpointMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEndpointMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEndpointMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEndpointSync(DeleteEndpointMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointAsync(DeleteEndpointMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableReplicationInstances asynchronously, invoking a callback when done
-- @param DescribeOrderableReplicationInstancesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOrderableReplicationInstancesAsync(DescribeOrderableReplicationInstancesMessage, cb)
	assert(DescribeOrderableReplicationInstancesMessage, "You must provide a DescribeOrderableReplicationInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeOrderableReplicationInstances",
	}
	for header,value in pairs(DescribeOrderableReplicationInstancesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOrderableReplicationInstancesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrderableReplicationInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrderableReplicationInstancesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOrderableReplicationInstancesSync(DescribeOrderableReplicationInstancesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableReplicationInstancesAsync(DescribeOrderableReplicationInstancesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationTask asynchronously, invoking a callback when done
-- @param ModifyReplicationTaskMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyReplicationTaskAsync(ModifyReplicationTaskMessage, cb)
	assert(ModifyReplicationTaskMessage, "You must provide a ModifyReplicationTaskMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyReplicationTask",
	}
	for header,value in pairs(ModifyReplicationTaskMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyReplicationTaskMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationTaskMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyReplicationTaskSync(ModifyReplicationTaskMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationTaskAsync(ModifyReplicationTaskMessage, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
