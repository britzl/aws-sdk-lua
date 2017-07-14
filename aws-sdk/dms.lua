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
-- &lt;p/&gt;
-- @param SourceType [String] &lt;p&gt; The type of AWS DMS resource that generates events. &lt;/p&gt; &lt;p&gt;Valid values: replication-instance | migration-task&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the action.&lt;/p&gt;
function M.DescribeEventCategoriesMessage(SourceType, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesMessage")
	local t = { 
		["SourceType"] = SourceType,
		["Filters"] = Filters,
	}
	M.AssertDescribeEventCategoriesMessage(t)
	return t
end

local DescribeConnectionsResponse_keys = { "Marker" = true, "Connections" = true, nil }

function M.AssertDescribeConnectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Connections"] then M.AssertConnectionList(struct["Connections"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConnectionsResponse_keys[k], "DescribeConnectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param Connections [ConnectionList] &lt;p&gt;A description of the connections.&lt;/p&gt;
function M.DescribeConnectionsResponse(Marker, Connections, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsResponse")
	local t = { 
		["Marker"] = Marker,
		["Connections"] = Connections,
	}
	M.AssertDescribeConnectionsResponse(t)
	return t
end

local DeleteReplicationSubnetGroupResponse_keys = { nil }

function M.AssertDeleteReplicationSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationSubnetGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteReplicationSubnetGroupResponse_keys[k], "DeleteReplicationSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationSubnetGroupResponse
-- &lt;p/&gt;
function M.DeleteReplicationSubnetGroupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationSubnetGroupResponse")
	local t = { 
	}
	M.AssertDeleteReplicationSubnetGroupResponse(t)
	return t
end

local DescribeRefreshSchemasStatusResponse_keys = { "RefreshSchemasStatus" = true, nil }

function M.AssertDescribeRefreshSchemasStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRefreshSchemasStatusResponse to be of type 'table'")
	if struct["RefreshSchemasStatus"] then M.AssertRefreshSchemasStatus(struct["RefreshSchemasStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRefreshSchemasStatusResponse_keys[k], "DescribeRefreshSchemasStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRefreshSchemasStatusResponse
-- &lt;p/&gt;
-- @param RefreshSchemasStatus [RefreshSchemasStatus] &lt;p&gt;The status of the schema.&lt;/p&gt;
function M.DescribeRefreshSchemasStatusResponse(RefreshSchemasStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRefreshSchemasStatusResponse")
	local t = { 
		["RefreshSchemasStatus"] = RefreshSchemasStatus,
	}
	M.AssertDescribeRefreshSchemasStatusResponse(t)
	return t
end

local DescribeTableStatisticsResponse_keys = { "ReplicationTaskArn" = true, "Marker" = true, "TableStatistics" = true, nil }

function M.AssertDescribeTableStatisticsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableStatisticsResponse to be of type 'table'")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TableStatistics"] then M.AssertTableStatisticsList(struct["TableStatistics"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTableStatisticsResponse_keys[k], "DescribeTableStatisticsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableStatisticsResponse
-- &lt;p/&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication task.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param TableStatistics [TableStatisticsList] &lt;p&gt;The table statistics.&lt;/p&gt;
function M.DescribeTableStatisticsResponse(ReplicationTaskArn, Marker, TableStatistics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableStatisticsResponse")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
		["Marker"] = Marker,
		["TableStatistics"] = TableStatistics,
	}
	M.AssertDescribeTableStatisticsResponse(t)
	return t
end

local DeleteCertificateMessage_keys = { "CertificateArn" = true, nil }

function M.AssertDeleteCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateMessage to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then M.AssertString(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCertificateMessage_keys[k], "DeleteCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateMessage
--  
-- @param CertificateArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the deleted certificate.&lt;/p&gt;
-- Required parameter: CertificateArn
function M.DeleteCertificateMessage(CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateMessage")
	local t = { 
		["CertificateArn"] = CertificateArn,
	}
	M.AssertDeleteCertificateMessage(t)
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
-- &lt;p/&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt; A list of event categories for a source type that you want to subscribe to. Use the &lt;code&gt;DescribeEventCategories&lt;/code&gt; action to see a list of event categories. &lt;/p&gt;
-- @param Enabled [BooleanOptional] &lt;p&gt; A Boolean value; set to &lt;b&gt;true&lt;/b&gt; to activate the subscription. &lt;/p&gt;
-- @param SourceType [String] &lt;p&gt; The type of AWS DMS resource that generates the events you want to subscribe to. &lt;/p&gt; &lt;p&gt;Valid values: replication-instance | migration-task&lt;/p&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the AWS DMS event notification subscription to be modified.&lt;/p&gt;
-- @param SnsTopicArn [String] &lt;p&gt; The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.&lt;/p&gt;
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
-- &lt;p&gt;Describes a quota for an AWS account, for example, the number of replication instances allowed.&lt;/p&gt;
-- @param Max [Long] &lt;p&gt;The maximum allowed value for the quota.&lt;/p&gt;
-- @param AccountQuotaName [String] &lt;p&gt;The name of the AWS DMS quota for this AWS account.&lt;/p&gt;
-- @param Used [Long] &lt;p&gt;The amount currently used toward the quota maximum.&lt;/p&gt;
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

local InvalidCertificateFault_keys = { "message" = true, nil }

function M.AssertInvalidCertificateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCertificateFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCertificateFault_keys[k], "InvalidCertificateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCertificateFault
-- &lt;p&gt;The certificate was not valid.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The certificate was not valid.&lt;/p&gt;
function M.InvalidCertificateFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCertificateFault")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidCertificateFault(t)
	return t
end

local MongoDbSettings_keys = { "Username" = true, "NestingLevel" = true, "AuthType" = true, "AuthSource" = true, "ServerName" = true, "AuthMechanism" = true, "DocsToInvestigate" = true, "DatabaseName" = true, "ExtractDocId" = true, "Password" = true, "Port" = true, nil }

function M.AssertMongoDbSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MongoDbSettings to be of type 'table'")
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["NestingLevel"] then M.AssertNestingLevelValue(struct["NestingLevel"]) end
	if struct["AuthType"] then M.AssertAuthTypeValue(struct["AuthType"]) end
	if struct["AuthSource"] then M.AssertString(struct["AuthSource"]) end
	if struct["ServerName"] then M.AssertString(struct["ServerName"]) end
	if struct["AuthMechanism"] then M.AssertAuthMechanismValue(struct["AuthMechanism"]) end
	if struct["DocsToInvestigate"] then M.AssertString(struct["DocsToInvestigate"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["ExtractDocId"] then M.AssertString(struct["ExtractDocId"]) end
	if struct["Password"] then M.AssertSecretString(struct["Password"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(MongoDbSettings_keys[k], "MongoDbSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MongoDbSettings
-- &lt;p/&gt;
-- @param Username [String] &lt;p&gt;The user name you use to access the MongoDB source endpoint. &lt;/p&gt;
-- @param NestingLevel [NestingLevelValue] &lt;p&gt; Specifies either document or table mode. &lt;/p&gt; &lt;p&gt;Valid values: NONE, ONE&lt;/p&gt; &lt;p&gt;Default value is NONE. Specify NONE to use document mode. Specify ONE to use table mode.&lt;/p&gt;
-- @param AuthType [AuthTypeValue] &lt;p&gt; The authentication type you use to access the MongoDB source endpoint.&lt;/p&gt; &lt;p&gt;Valid values: NO, PASSWORD &lt;/p&gt; &lt;p&gt;When NO is selected, user name and password parameters are not used and can be empty. &lt;/p&gt;
-- @param AuthSource [String] &lt;p&gt; The MongoDB database name. This attribute is not used when &lt;code&gt;authType=NO&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;The default is admin.&lt;/p&gt;
-- @param ServerName [String] &lt;p&gt; The name of the server on the MongoDB source endpoint. &lt;/p&gt;
-- @param AuthMechanism [AuthMechanismValue] &lt;p&gt; The authentication mechanism you use to access the MongoDB source endpoint.&lt;/p&gt; &lt;p&gt;Valid values: DEFAULT, MONGODB_CR, SCRAM_SHA_1 &lt;/p&gt; &lt;p&gt;DEFAULT – For MongoDB version 2.x, use MONGODB_CR. For MongoDB version 3.x, use SCRAM_SHA_1. This attribute is not used when authType=No.&lt;/p&gt;
-- @param DocsToInvestigate [String] &lt;p&gt; Indicates the number of documents to preview to determine the document organization. Use this attribute when &lt;code&gt;NestingLevel&lt;/code&gt; is set to ONE. &lt;/p&gt; &lt;p&gt;Must be a positive value greater than 0. Default value is 1000.&lt;/p&gt;
-- @param DatabaseName [String] &lt;p&gt; The database name on the MongoDB source endpoint. &lt;/p&gt;
-- @param ExtractDocId [String] &lt;p&gt; Specifies the document ID. Use this attribute when &lt;code&gt;NestingLevel&lt;/code&gt; is set to NONE. &lt;/p&gt; &lt;p&gt;Default value is false. &lt;/p&gt;
-- @param Password [SecretString] &lt;p&gt; The password for the user account you use to access the MongoDB source endpoint. &lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt; The port value for the MongoDB source endpoint. &lt;/p&gt;
function M.MongoDbSettings(Username, NestingLevel, AuthType, AuthSource, ServerName, AuthMechanism, DocsToInvestigate, DatabaseName, ExtractDocId, Password, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MongoDbSettings")
	local t = { 
		["Username"] = Username,
		["NestingLevel"] = NestingLevel,
		["AuthType"] = AuthType,
		["AuthSource"] = AuthSource,
		["ServerName"] = ServerName,
		["AuthMechanism"] = AuthMechanism,
		["DocsToInvestigate"] = DocsToInvestigate,
		["DatabaseName"] = DatabaseName,
		["ExtractDocId"] = ExtractDocId,
		["Password"] = Password,
		["Port"] = Port,
	}
	M.AssertMongoDbSettings(t)
	return t
end

local ModifyEventSubscriptionResponse_keys = { "EventSubscription" = true, nil }

function M.AssertModifyEventSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionResponse to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(ModifyEventSubscriptionResponse_keys[k], "ModifyEventSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionResponse
-- &lt;p/&gt;
-- @param EventSubscription [EventSubscription] &lt;p&gt;The modified event subscription.&lt;/p&gt;
function M.ModifyEventSubscriptionResponse(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionResponse")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertModifyEventSubscriptionResponse(t)
	return t
end

local ReplicationTaskStats_keys = { "TablesLoading" = true, "TablesQueued" = true, "TablesErrored" = true, "FullLoadProgressPercent" = true, "TablesLoaded" = true, "ElapsedTimeMillis" = true, nil }

function M.AssertReplicationTaskStats(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationTaskStats to be of type 'table'")
	if struct["TablesLoading"] then M.AssertInteger(struct["TablesLoading"]) end
	if struct["TablesQueued"] then M.AssertInteger(struct["TablesQueued"]) end
	if struct["TablesErrored"] then M.AssertInteger(struct["TablesErrored"]) end
	if struct["FullLoadProgressPercent"] then M.AssertInteger(struct["FullLoadProgressPercent"]) end
	if struct["TablesLoaded"] then M.AssertInteger(struct["TablesLoaded"]) end
	if struct["ElapsedTimeMillis"] then M.AssertLong(struct["ElapsedTimeMillis"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationTaskStats_keys[k], "ReplicationTaskStats contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationTaskStats
-- &lt;p/&gt;
-- @param TablesLoading [Integer] &lt;p&gt;The number of tables currently loading for this task.&lt;/p&gt;
-- @param TablesQueued [Integer] &lt;p&gt;The number of tables queued for this task.&lt;/p&gt;
-- @param TablesErrored [Integer] &lt;p&gt;The number of errors that have occurred during this task.&lt;/p&gt;
-- @param FullLoadProgressPercent [Integer] &lt;p&gt;The percent complete for the full load migration task.&lt;/p&gt;
-- @param TablesLoaded [Integer] &lt;p&gt;The number of tables loaded for this task.&lt;/p&gt;
-- @param ElapsedTimeMillis [Long] &lt;p&gt;The elapsed time of the task, in milliseconds.&lt;/p&gt;
function M.ReplicationTaskStats(TablesLoading, TablesQueued, TablesErrored, FullLoadProgressPercent, TablesLoaded, ElapsedTimeMillis, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationTaskStats")
	local t = { 
		["TablesLoading"] = TablesLoading,
		["TablesQueued"] = TablesQueued,
		["TablesErrored"] = TablesErrored,
		["FullLoadProgressPercent"] = FullLoadProgressPercent,
		["TablesLoaded"] = TablesLoaded,
		["ElapsedTimeMillis"] = ElapsedTimeMillis,
	}
	M.AssertReplicationTaskStats(t)
	return t
end

local DynamoDbSettings_keys = { "ServiceAccessRoleArn" = true, nil }

function M.AssertDynamoDbSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDbSettings to be of type 'table'")
	assert(struct["ServiceAccessRoleArn"], "Expected key ServiceAccessRoleArn to exist in table")
	if struct["ServiceAccessRoleArn"] then M.AssertString(struct["ServiceAccessRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(DynamoDbSettings_keys[k], "DynamoDbSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDbSettings
-- &lt;p/&gt;
-- @param ServiceAccessRoleArn [String] &lt;p&gt; The Amazon Resource Name (ARN) used by the service access IAM role. &lt;/p&gt;
-- Required parameter: ServiceAccessRoleArn
function M.DynamoDbSettings(ServiceAccessRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DynamoDbSettings")
	local t = { 
		["ServiceAccessRoleArn"] = ServiceAccessRoleArn,
	}
	M.AssertDynamoDbSettings(t)
	return t
end

local DeleteEndpointResponse_keys = { "Endpoint" = true, nil }

function M.AssertDeleteEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointResponse to be of type 'table'")
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEndpointResponse_keys[k], "DeleteEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointResponse
-- &lt;p/&gt;
-- @param Endpoint [Endpoint] &lt;p&gt;The endpoint that was deleted.&lt;/p&gt;
function M.DeleteEndpointResponse(Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEndpointResponse")
	local t = { 
		["Endpoint"] = Endpoint,
	}
	M.AssertDeleteEndpointResponse(t)
	return t
end

local AccessDeniedFault_keys = { "message" = true, nil }

function M.AssertAccessDeniedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AccessDeniedFault_keys[k], "AccessDeniedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedFault
-- &lt;p&gt;AWS DMS was denied access to the endpoint.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.AccessDeniedFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedFault")
	local t = { 
		["message"] = message,
	}
	M.AssertAccessDeniedFault(t)
	return t
end

local DescribeTableStatisticsMessage_keys = { "ReplicationTaskArn" = true, "Marker" = true, "MaxRecords" = true, nil }

function M.AssertDescribeTableStatisticsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableStatisticsMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTableStatisticsMessage_keys[k], "DescribeTableStatisticsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableStatisticsMessage
-- &lt;p/&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication task.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- Required parameter: ReplicationTaskArn
function M.DescribeTableStatisticsMessage(ReplicationTaskArn, Marker, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableStatisticsMessage")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeTableStatisticsMessage(t)
	return t
end

local InsufficientResourceCapacityFault_keys = { "message" = true, nil }

function M.AssertInsufficientResourceCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientResourceCapacityFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InsufficientResourceCapacityFault_keys[k], "InsufficientResourceCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientResourceCapacityFault
-- &lt;p&gt;There are not enough resources allocated to the database migration.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.InsufficientResourceCapacityFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientResourceCapacityFault")
	local t = { 
		["message"] = message,
	}
	M.AssertInsufficientResourceCapacityFault(t)
	return t
end

local DescribeReplicationInstancesMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeReplicationInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationInstancesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationInstancesMessage_keys[k], "DescribeReplicationInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationInstancesMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the describe action.&lt;/p&gt; &lt;p&gt;Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version&lt;/p&gt;
function M.DescribeReplicationInstancesMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationInstancesMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeReplicationInstancesMessage(t)
	return t
end

local CreateReplicationTaskMessage_keys = { "SourceEndpointArn" = true, "ReplicationTaskIdentifier" = true, "ReplicationInstanceArn" = true, "Tags" = true, "TableMappings" = true, "MigrationType" = true, "TargetEndpointArn" = true, "ReplicationTaskSettings" = true, "CdcStartTime" = true, nil }

function M.AssertCreateReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskIdentifier"], "Expected key ReplicationTaskIdentifier to exist in table")
	assert(struct["SourceEndpointArn"], "Expected key SourceEndpointArn to exist in table")
	assert(struct["TargetEndpointArn"], "Expected key TargetEndpointArn to exist in table")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	assert(struct["MigrationType"], "Expected key MigrationType to exist in table")
	assert(struct["TableMappings"], "Expected key TableMappings to exist in table")
	if struct["SourceEndpointArn"] then M.AssertString(struct["SourceEndpointArn"]) end
	if struct["ReplicationTaskIdentifier"] then M.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["TableMappings"] then M.AssertString(struct["TableMappings"]) end
	if struct["MigrationType"] then M.AssertMigrationTypeValue(struct["MigrationType"]) end
	if struct["TargetEndpointArn"] then M.AssertString(struct["TargetEndpointArn"]) end
	if struct["ReplicationTaskSettings"] then M.AssertString(struct["ReplicationTaskSettings"]) end
	if struct["CdcStartTime"] then M.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationTaskMessage_keys[k], "CreateReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationTaskMessage
-- &lt;p/&gt;
-- @param SourceEndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationTaskIdentifier [String] &lt;p&gt;The replication task identifier.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;Tags to be added to the replication instance.&lt;/p&gt;
-- @param TableMappings [String] &lt;p&gt;When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with &quot;file://&quot;. When working with the DMS API, provide the JSON as the parameter value.&lt;/p&gt; &lt;p&gt;For example, --table-mappings file://mappingfile.json&lt;/p&gt;
-- @param MigrationType [MigrationTypeValue] &lt;p&gt;The migration type.&lt;/p&gt;
-- @param TargetEndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationTaskSettings [String] &lt;p&gt;Settings for the task, such as target metadata settings. For a complete list of task settings, see &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html&quot;&gt;Task Settings for AWS Database Migration Service Tasks&lt;/a&gt;.&lt;/p&gt;
-- @param CdcStartTime [TStamp] &lt;p&gt;The start time for the Change Data Capture (CDC) operation.&lt;/p&gt;
-- Required parameter: ReplicationTaskIdentifier
-- Required parameter: SourceEndpointArn
-- Required parameter: TargetEndpointArn
-- Required parameter: ReplicationInstanceArn
-- Required parameter: MigrationType
-- Required parameter: TableMappings
function M.CreateReplicationTaskMessage(SourceEndpointArn, ReplicationTaskIdentifier, ReplicationInstanceArn, Tags, TableMappings, MigrationType, TargetEndpointArn, ReplicationTaskSettings, CdcStartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationTaskMessage")
	local t = { 
		["SourceEndpointArn"] = SourceEndpointArn,
		["ReplicationTaskIdentifier"] = ReplicationTaskIdentifier,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
		["Tags"] = Tags,
		["TableMappings"] = TableMappings,
		["MigrationType"] = MigrationType,
		["TargetEndpointArn"] = TargetEndpointArn,
		["ReplicationTaskSettings"] = ReplicationTaskSettings,
		["CdcStartTime"] = CdcStartTime,
	}
	M.AssertCreateReplicationTaskMessage(t)
	return t
end

local InvalidResourceStateFault_keys = { "message" = true, nil }

function M.AssertInvalidResourceStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceStateFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidResourceStateFault_keys[k], "InvalidResourceStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceStateFault
-- &lt;p&gt;The resource is in a state that prevents it from being used for database migration.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.InvalidResourceStateFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceStateFault")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidResourceStateFault(t)
	return t
end

local TestConnectionResponse_keys = { "Connection" = true, nil }

function M.AssertTestConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestConnectionResponse to be of type 'table'")
	if struct["Connection"] then M.AssertConnection(struct["Connection"]) end
	for k,_ in pairs(struct) do
		assert(TestConnectionResponse_keys[k], "TestConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestConnectionResponse
-- &lt;p/&gt;
-- @param Connection [Connection] &lt;p&gt;The connection tested.&lt;/p&gt;
function M.TestConnectionResponse(Connection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestConnectionResponse")
	local t = { 
		["Connection"] = Connection,
	}
	M.AssertTestConnectionResponse(t)
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
-- &lt;p/&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt;A list of event categories for a source type that you want to subscribe to.&lt;/p&gt;
-- @param SourceType [SourceType] &lt;p&gt;The type of AWS DMS resource that generates events.&lt;/p&gt; &lt;p&gt;Valid values: replication-instance | migration-task&lt;/p&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param StartTime [TStamp] &lt;p&gt;The start time for the events to be listed.&lt;/p&gt;
-- @param Duration [IntegerOptional] &lt;p&gt;The duration of the events to be listed.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the action.&lt;/p&gt;
-- @param SourceIdentifier [String] &lt;p&gt; The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It cannot end with a hyphen or contain two consecutive hyphens. &lt;/p&gt;
-- @param EndTime [TStamp] &lt;p&gt;The end time for the events to be listed.&lt;/p&gt;
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

local CreateReplicationTaskResponse_keys = { "ReplicationTask" = true, nil }

function M.AssertCreateReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then M.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationTaskResponse_keys[k], "CreateReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationTaskResponse
-- &lt;p/&gt;
-- @param ReplicationTask [ReplicationTask] &lt;p&gt;The replication task that was created.&lt;/p&gt;
function M.CreateReplicationTaskResponse(ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = ReplicationTask,
	}
	M.AssertCreateReplicationTaskResponse(t)
	return t
end

local StorageQuotaExceededFault_keys = { "message" = true, nil }

function M.AssertStorageQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageQuotaExceededFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(StorageQuotaExceededFault_keys[k], "StorageQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageQuotaExceededFault
-- &lt;p&gt;The storage quota has been exceeded.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.StorageQuotaExceededFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageQuotaExceededFault")
	local t = { 
		["message"] = message,
	}
	M.AssertStorageQuotaExceededFault(t)
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
-- &lt;p/&gt;
-- @param Value [String] &lt;p&gt;A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and cannot be prefixed with &quot;aws:&quot; or &quot;dms:&quot;. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: &quot;^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$&quot;).&lt;/p&gt;
-- @param Key [String] &lt;p&gt;A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and cannot be prefixed with &quot;aws:&quot; or &quot;dms:&quot;. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: &quot;^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$&quot;).&lt;/p&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local AddTagsToResourceMessage_keys = { "ResourceArn" = true, "Tags" = true, nil }

function M.AssertAddTagsToResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceMessage_keys[k], "AddTagsToResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceMessage
-- &lt;p/&gt;
-- @param ResourceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be added to. AWS DMS resources include a replication instance, endpoint, and a replication task.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tag to be assigned to the DMS resource.&lt;/p&gt;
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.AddTagsToResourceMessage(ResourceArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceMessage")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToResourceMessage(t)
	return t
end

local Event_keys = { "Date" = true, "Message" = true, "SourceIdentifier" = true, "EventCategories" = true, "SourceType" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["Date"] then M.AssertTStamp(struct["Date"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- &lt;p/&gt;
-- @param Date [TStamp] &lt;p&gt;The date of the event.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The event message.&lt;/p&gt;
-- @param SourceIdentifier [String] &lt;p&gt; The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens. &lt;/p&gt; &lt;p&gt;Constraints:replication instance, endpoint, migration task&lt;/p&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt;The event categories available for the specified source type.&lt;/p&gt;
-- @param SourceType [SourceType] &lt;p&gt; The type of AWS DMS resource that generates events. &lt;/p&gt; &lt;p&gt;Valid values: replication-instance | endpoint | migration-task&lt;/p&gt;
function M.Event(Date, Message, SourceIdentifier, EventCategories, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["Date"] = Date,
		["Message"] = Message,
		["SourceIdentifier"] = SourceIdentifier,
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
	}
	M.AssertEvent(t)
	return t
end

local DeleteReplicationSubnetGroupMessage_keys = { "ReplicationSubnetGroupIdentifier" = true, nil }

function M.AssertDeleteReplicationSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationSubnetGroupMessage to be of type 'table'")
	assert(struct["ReplicationSubnetGroupIdentifier"], "Expected key ReplicationSubnetGroupIdentifier to exist in table")
	if struct["ReplicationSubnetGroupIdentifier"] then M.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationSubnetGroupMessage_keys[k], "DeleteReplicationSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationSubnetGroupMessage
-- &lt;p/&gt;
-- @param ReplicationSubnetGroupIdentifier [String] &lt;p&gt;The subnet group name of the replication instance.&lt;/p&gt;
-- Required parameter: ReplicationSubnetGroupIdentifier
function M.DeleteReplicationSubnetGroupMessage(ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationSubnetGroupMessage")
	local t = { 
		["ReplicationSubnetGroupIdentifier"] = ReplicationSubnetGroupIdentifier,
	}
	M.AssertDeleteReplicationSubnetGroupMessage(t)
	return t
end

local DescribeRefreshSchemasStatusMessage_keys = { "EndpointArn" = true, nil }

function M.AssertDescribeRefreshSchemasStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRefreshSchemasStatusMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRefreshSchemasStatusMessage_keys[k], "DescribeRefreshSchemasStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRefreshSchemasStatusMessage
-- &lt;p/&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- Required parameter: EndpointArn
function M.DescribeRefreshSchemasStatusMessage(EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRefreshSchemasStatusMessage")
	local t = { 
		["EndpointArn"] = EndpointArn,
	}
	M.AssertDescribeRefreshSchemasStatusMessage(t)
	return t
end

local TestConnectionMessage_keys = { "EndpointArn" = true, "ReplicationInstanceArn" = true, nil }

function M.AssertTestConnectionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestConnectionMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(TestConnectionMessage_keys[k], "TestConnectionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestConnectionMessage
-- &lt;p/&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- Required parameter: ReplicationInstanceArn
-- Required parameter: EndpointArn
function M.TestConnectionMessage(EndpointArn, ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestConnectionMessage")
	local t = { 
		["EndpointArn"] = EndpointArn,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
	}
	M.AssertTestConnectionMessage(t)
	return t
end

local InvalidSubnet_keys = { "message" = true, nil }

function M.AssertInvalidSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnet to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSubnet_keys[k], "InvalidSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnet
-- &lt;p&gt;The subnet provided is invalid.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.InvalidSubnet(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidSubnet(t)
	return t
end

local TableToReload_keys = { "SchemaName" = true, "TableName" = true, nil }

function M.AssertTableToReload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableToReload to be of type 'table'")
	if struct["SchemaName"] then M.AssertString(struct["SchemaName"]) end
	if struct["TableName"] then M.AssertString(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(TableToReload_keys[k], "TableToReload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableToReload
-- &lt;p/&gt;
-- @param SchemaName [String] &lt;p&gt;The schema name of the table to be reloaded.&lt;/p&gt;
-- @param TableName [String] &lt;p&gt;The table name of the table to be reloaded.&lt;/p&gt;
function M.TableToReload(SchemaName, TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableToReload")
	local t = { 
		["SchemaName"] = SchemaName,
		["TableName"] = TableName,
	}
	M.AssertTableToReload(t)
	return t
end

local ReloadTablesMessage_keys = { "ReplicationTaskArn" = true, "TablesToReload" = true, nil }

function M.AssertReloadTablesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReloadTablesMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	assert(struct["TablesToReload"], "Expected key TablesToReload to exist in table")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	if struct["TablesToReload"] then M.AssertTableListToReload(struct["TablesToReload"]) end
	for k,_ in pairs(struct) do
		assert(ReloadTablesMessage_keys[k], "ReloadTablesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReloadTablesMessage
--  
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance. &lt;/p&gt;
-- @param TablesToReload [TableListToReload] &lt;p&gt;The name and schema of the table to be reloaded. &lt;/p&gt;
-- Required parameter: ReplicationTaskArn
-- Required parameter: TablesToReload
function M.ReloadTablesMessage(ReplicationTaskArn, TablesToReload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReloadTablesMessage")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
		["TablesToReload"] = TablesToReload,
	}
	M.AssertReloadTablesMessage(t)
	return t
end

local ResourceNotFoundFault_keys = { "message" = true, nil }

function M.AssertResourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundFault_keys[k], "ResourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundFault
-- &lt;p&gt;The resource could not be found.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.ResourceNotFoundFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundFault")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundFault(t)
	return t
end

local RemoveTagsFromResourceResponse_keys = { nil }

function M.AssertRemoveTagsFromResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceResponse_keys[k], "RemoveTagsFromResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResponse
-- &lt;p/&gt;
function M.RemoveTagsFromResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceResponse")
	local t = { 
	}
	M.AssertRemoveTagsFromResourceResponse(t)
	return t
end

local DescribeReplicationSubnetGroupsResponse_keys = { "Marker" = true, "ReplicationSubnetGroups" = true, nil }

function M.AssertDescribeReplicationSubnetGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationSubnetGroupsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReplicationSubnetGroups"] then M.AssertReplicationSubnetGroups(struct["ReplicationSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationSubnetGroupsResponse_keys[k], "DescribeReplicationSubnetGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationSubnetGroupsResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param ReplicationSubnetGroups [ReplicationSubnetGroups] &lt;p&gt;A description of the replication subnet groups.&lt;/p&gt;
function M.DescribeReplicationSubnetGroupsResponse(Marker, ReplicationSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationSubnetGroupsResponse")
	local t = { 
		["Marker"] = Marker,
		["ReplicationSubnetGroups"] = ReplicationSubnetGroups,
	}
	M.AssertDescribeReplicationSubnetGroupsResponse(t)
	return t
end

local CreateEventSubscriptionResponse_keys = { "EventSubscription" = true, nil }

function M.AssertCreateEventSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionResponse to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(CreateEventSubscriptionResponse_keys[k], "CreateEventSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionResponse
-- &lt;p/&gt;
-- @param EventSubscription [EventSubscription] &lt;p&gt;The event subscription that was created.&lt;/p&gt;
function M.CreateEventSubscriptionResponse(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionResponse")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertCreateEventSubscriptionResponse(t)
	return t
end

local DescribeOrderableReplicationInstancesResponse_keys = { "Marker" = true, "OrderableReplicationInstances" = true, nil }

function M.AssertDescribeOrderableReplicationInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableReplicationInstancesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["OrderableReplicationInstances"] then M.AssertOrderableReplicationInstanceList(struct["OrderableReplicationInstances"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrderableReplicationInstancesResponse_keys[k], "DescribeOrderableReplicationInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableReplicationInstancesResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param OrderableReplicationInstances [OrderableReplicationInstanceList] &lt;p&gt;The order-able replication instances available.&lt;/p&gt;
function M.DescribeOrderableReplicationInstancesResponse(Marker, OrderableReplicationInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableReplicationInstancesResponse")
	local t = { 
		["Marker"] = Marker,
		["OrderableReplicationInstances"] = OrderableReplicationInstances,
	}
	M.AssertDescribeOrderableReplicationInstancesResponse(t)
	return t
end

local ModifyReplicationTaskMessage_keys = { "ReplicationTaskIdentifier" = true, "ReplicationTaskArn" = true, "MigrationType" = true, "TableMappings" = true, "ReplicationTaskSettings" = true, "CdcStartTime" = true, nil }

function M.AssertModifyReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskIdentifier"] then M.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	if struct["MigrationType"] then M.AssertMigrationTypeValue(struct["MigrationType"]) end
	if struct["TableMappings"] then M.AssertString(struct["TableMappings"]) end
	if struct["ReplicationTaskSettings"] then M.AssertString(struct["ReplicationTaskSettings"]) end
	if struct["CdcStartTime"] then M.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationTaskMessage_keys[k], "ModifyReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationTaskMessage
-- &lt;p/&gt;
-- @param ReplicationTaskIdentifier [String] &lt;p&gt;The replication task identifier.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication task.&lt;/p&gt;
-- @param MigrationType [MigrationTypeValue] &lt;p&gt;The migration type.&lt;/p&gt; &lt;p&gt;Valid values: full-load | cdc | full-load-and-cdc&lt;/p&gt;
-- @param TableMappings [String] &lt;p&gt;When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with &quot;file://&quot;. When working with the DMS API, provide the JSON as the parameter value.&lt;/p&gt; &lt;p&gt;For example, --table-mappings file://mappingfile.json&lt;/p&gt;
-- @param ReplicationTaskSettings [String] &lt;p&gt;JSON file that contains settings for the task, such as target metadata settings.&lt;/p&gt;
-- @param CdcStartTime [TStamp] &lt;p&gt;The start time for the Change Data Capture (CDC) operation.&lt;/p&gt;
-- Required parameter: ReplicationTaskArn
function M.ModifyReplicationTaskMessage(ReplicationTaskIdentifier, ReplicationTaskArn, MigrationType, TableMappings, ReplicationTaskSettings, CdcStartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationTaskMessage")
	local t = { 
		["ReplicationTaskIdentifier"] = ReplicationTaskIdentifier,
		["ReplicationTaskArn"] = ReplicationTaskArn,
		["MigrationType"] = MigrationType,
		["TableMappings"] = TableMappings,
		["ReplicationTaskSettings"] = ReplicationTaskSettings,
		["CdcStartTime"] = CdcStartTime,
	}
	M.AssertModifyReplicationTaskMessage(t)
	return t
end

local DescribeConnectionsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeConnectionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConnectionsMessage_keys[k], "DescribeConnectionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;The filters applied to the connection.&lt;/p&gt; &lt;p&gt;Valid filter names: endpoint-arn | replication-instance-arn&lt;/p&gt;
function M.DescribeConnectionsMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeConnectionsMessage(t)
	return t
end

local DescribeReplicationInstancesResponse_keys = { "Marker" = true, "ReplicationInstances" = true, nil }

function M.AssertDescribeReplicationInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationInstancesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReplicationInstances"] then M.AssertReplicationInstanceList(struct["ReplicationInstances"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationInstancesResponse_keys[k], "DescribeReplicationInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationInstancesResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param ReplicationInstances [ReplicationInstanceList] &lt;p&gt;The replication instances described.&lt;/p&gt;
function M.DescribeReplicationInstancesResponse(Marker, ReplicationInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationInstancesResponse")
	local t = { 
		["Marker"] = Marker,
		["ReplicationInstances"] = ReplicationInstances,
	}
	M.AssertDescribeReplicationInstancesResponse(t)
	return t
end

local DescribeSchemasResponse_keys = { "Marker" = true, "Schemas" = true, nil }

function M.AssertDescribeSchemasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSchemasResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Schemas"] then M.AssertSchemaList(struct["Schemas"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSchemasResponse_keys[k], "DescribeSchemasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSchemasResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param Schemas [SchemaList] &lt;p&gt;The described schema.&lt;/p&gt;
function M.DescribeSchemasResponse(Marker, Schemas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSchemasResponse")
	local t = { 
		["Marker"] = Marker,
		["Schemas"] = Schemas,
	}
	M.AssertDescribeSchemasResponse(t)
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
-- &lt;p/&gt;
-- @param Status [String] &lt;p&gt;The status of the VPC security group.&lt;/p&gt;
-- @param VpcSecurityGroupId [String] &lt;p&gt;The VPC security group Id.&lt;/p&gt;
function M.VpcSecurityGroupMembership(Status, VpcSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcSecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["VpcSecurityGroupId"] = VpcSecurityGroupId,
	}
	M.AssertVpcSecurityGroupMembership(t)
	return t
end

local S3Settings_keys = { "CompressionType" = true, "BucketFolder" = true, "CsvRowDelimiter" = true, "CsvDelimiter" = true, "ServiceAccessRoleArn" = true, "ExternalTableDefinition" = true, "BucketName" = true, nil }

function M.AssertS3Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Settings to be of type 'table'")
	if struct["CompressionType"] then M.AssertCompressionTypeValue(struct["CompressionType"]) end
	if struct["BucketFolder"] then M.AssertString(struct["BucketFolder"]) end
	if struct["CsvRowDelimiter"] then M.AssertString(struct["CsvRowDelimiter"]) end
	if struct["CsvDelimiter"] then M.AssertString(struct["CsvDelimiter"]) end
	if struct["ServiceAccessRoleArn"] then M.AssertString(struct["ServiceAccessRoleArn"]) end
	if struct["ExternalTableDefinition"] then M.AssertString(struct["ExternalTableDefinition"]) end
	if struct["BucketName"] then M.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(S3Settings_keys[k], "S3Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Settings
-- &lt;p/&gt;
-- @param CompressionType [CompressionTypeValue] &lt;p&gt; An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed. &lt;/p&gt;
-- @param BucketFolder [String] &lt;p&gt; An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path &amp;lt;bucketFolder&amp;gt;/&amp;lt;schema_name&amp;gt;/&amp;lt;table_name&amp;gt;/. If this parameter is not specified, then the path used is &amp;lt;schema_name&amp;gt;/&amp;lt;table_name&amp;gt;/. &lt;/p&gt;
-- @param CsvRowDelimiter [String] &lt;p&gt; The delimiter used to separate rows in the source files. The default is a carriage return (\n). &lt;/p&gt;
-- @param CsvDelimiter [String] &lt;p&gt; The delimiter used to separate columns in the source files. The default is a comma. &lt;/p&gt;
-- @param ServiceAccessRoleArn [String] &lt;p&gt; The Amazon Resource Name (ARN) used by the service access IAM role. &lt;/p&gt;
-- @param ExternalTableDefinition [String] &lt;p&gt; &lt;/p&gt;
-- @param BucketName [String] &lt;p&gt; The name of the S3 bucket. &lt;/p&gt;
function M.S3Settings(CompressionType, BucketFolder, CsvRowDelimiter, CsvDelimiter, ServiceAccessRoleArn, ExternalTableDefinition, BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Settings")
	local t = { 
		["CompressionType"] = CompressionType,
		["BucketFolder"] = BucketFolder,
		["CsvRowDelimiter"] = CsvRowDelimiter,
		["CsvDelimiter"] = CsvDelimiter,
		["ServiceAccessRoleArn"] = ServiceAccessRoleArn,
		["ExternalTableDefinition"] = ExternalTableDefinition,
		["BucketName"] = BucketName,
	}
	M.AssertS3Settings(t)
	return t
end

local DescribeEndpointsResponse_keys = { "Marker" = true, "Endpoints" = true, nil }

function M.AssertDescribeEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Endpoints"] then M.AssertEndpointList(struct["Endpoints"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEndpointsResponse_keys[k], "DescribeEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param Endpoints [EndpointList] &lt;p&gt;Endpoint description.&lt;/p&gt;
function M.DescribeEndpointsResponse(Marker, Endpoints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointsResponse")
	local t = { 
		["Marker"] = Marker,
		["Endpoints"] = Endpoints,
	}
	M.AssertDescribeEndpointsResponse(t)
	return t
end

local CreateEndpointResponse_keys = { "Endpoint" = true, nil }

function M.AssertCreateEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointResponse to be of type 'table'")
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(CreateEndpointResponse_keys[k], "CreateEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointResponse
-- &lt;p/&gt;
-- @param Endpoint [Endpoint] &lt;p&gt;The endpoint that was created.&lt;/p&gt;
function M.CreateEndpointResponse(Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEndpointResponse")
	local t = { 
		["Endpoint"] = Endpoint,
	}
	M.AssertCreateEndpointResponse(t)
	return t
end

local CreateReplicationSubnetGroupMessage_keys = { "ReplicationSubnetGroupDescription" = true, "SubnetIds" = true, "Tags" = true, "ReplicationSubnetGroupIdentifier" = true, nil }

function M.AssertCreateReplicationSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationSubnetGroupMessage to be of type 'table'")
	assert(struct["ReplicationSubnetGroupIdentifier"], "Expected key ReplicationSubnetGroupIdentifier to exist in table")
	assert(struct["ReplicationSubnetGroupDescription"], "Expected key ReplicationSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["ReplicationSubnetGroupDescription"] then M.AssertString(struct["ReplicationSubnetGroupDescription"]) end
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then M.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationSubnetGroupMessage_keys[k], "CreateReplicationSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationSubnetGroupMessage
-- &lt;p/&gt;
-- @param ReplicationSubnetGroupDescription [String] &lt;p&gt;The description for the subnet group.&lt;/p&gt;
-- @param SubnetIds [SubnetIdentifierList] &lt;p&gt;The EC2 subnet IDs for the subnet group.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tag to be assigned to the subnet group.&lt;/p&gt;
-- @param ReplicationSubnetGroupIdentifier [String] &lt;p&gt;The name for the replication subnet group. This value is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be &quot;default&quot;.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;mySubnetgroup&lt;/code&gt; &lt;/p&gt;
-- Required parameter: ReplicationSubnetGroupIdentifier
-- Required parameter: ReplicationSubnetGroupDescription
-- Required parameter: SubnetIds
function M.CreateReplicationSubnetGroupMessage(ReplicationSubnetGroupDescription, SubnetIds, Tags, ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationSubnetGroupMessage")
	local t = { 
		["ReplicationSubnetGroupDescription"] = ReplicationSubnetGroupDescription,
		["SubnetIds"] = SubnetIds,
		["Tags"] = Tags,
		["ReplicationSubnetGroupIdentifier"] = ReplicationSubnetGroupIdentifier,
	}
	M.AssertCreateReplicationSubnetGroupMessage(t)
	return t
end

local DescribeReplicationSubnetGroupsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeReplicationSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationSubnetGroupsMessage_keys[k], "DescribeReplicationSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationSubnetGroupsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the describe action.&lt;/p&gt;
function M.DescribeReplicationSubnetGroupsMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationSubnetGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeReplicationSubnetGroupsMessage(t)
	return t
end

local ReplicationSubnetGroup_keys = { "ReplicationSubnetGroupDescription" = true, "Subnets" = true, "VpcId" = true, "SubnetGroupStatus" = true, "ReplicationSubnetGroupIdentifier" = true, nil }

function M.AssertReplicationSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationSubnetGroup to be of type 'table'")
	if struct["ReplicationSubnetGroupDescription"] then M.AssertString(struct["ReplicationSubnetGroupDescription"]) end
	if struct["Subnets"] then M.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["SubnetGroupStatus"] then M.AssertString(struct["SubnetGroupStatus"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then M.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationSubnetGroup_keys[k], "ReplicationSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationSubnetGroup
-- &lt;p/&gt;
-- @param ReplicationSubnetGroupDescription [String] &lt;p&gt;The description of the replication subnet group.&lt;/p&gt;
-- @param Subnets [SubnetList] &lt;p&gt;The subnets that are in the subnet group.&lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The ID of the VPC.&lt;/p&gt;
-- @param SubnetGroupStatus [String] &lt;p&gt;The status of the subnet group.&lt;/p&gt;
-- @param ReplicationSubnetGroupIdentifier [String] &lt;p&gt;The identifier of the replication instance subnet group.&lt;/p&gt;
function M.ReplicationSubnetGroup(ReplicationSubnetGroupDescription, Subnets, VpcId, SubnetGroupStatus, ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationSubnetGroup")
	local t = { 
		["ReplicationSubnetGroupDescription"] = ReplicationSubnetGroupDescription,
		["Subnets"] = Subnets,
		["VpcId"] = VpcId,
		["SubnetGroupStatus"] = SubnetGroupStatus,
		["ReplicationSubnetGroupIdentifier"] = ReplicationSubnetGroupIdentifier,
	}
	M.AssertReplicationSubnetGroup(t)
	return t
end

local ModifyReplicationInstanceResponse_keys = { "ReplicationInstance" = true, nil }

function M.AssertModifyReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then M.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationInstanceResponse_keys[k], "ModifyReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationInstanceResponse
-- &lt;p/&gt;
-- @param ReplicationInstance [ReplicationInstance] &lt;p&gt;The modified replication instance.&lt;/p&gt;
function M.ModifyReplicationInstanceResponse(ReplicationInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationInstanceResponse")
	local t = { 
		["ReplicationInstance"] = ReplicationInstance,
	}
	M.AssertModifyReplicationInstanceResponse(t)
	return t
end

local RefreshSchemasResponse_keys = { "RefreshSchemasStatus" = true, nil }

function M.AssertRefreshSchemasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshSchemasResponse to be of type 'table'")
	if struct["RefreshSchemasStatus"] then M.AssertRefreshSchemasStatus(struct["RefreshSchemasStatus"]) end
	for k,_ in pairs(struct) do
		assert(RefreshSchemasResponse_keys[k], "RefreshSchemasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshSchemasResponse
-- &lt;p/&gt;
-- @param RefreshSchemasStatus [RefreshSchemasStatus] &lt;p&gt;The status of the refreshed schema.&lt;/p&gt;
function M.RefreshSchemasResponse(RefreshSchemasStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshSchemasResponse")
	local t = { 
		["RefreshSchemasStatus"] = RefreshSchemasStatus,
	}
	M.AssertRefreshSchemasResponse(t)
	return t
end

local DescribeCertificatesResponse_keys = { "Marker" = true, "Certificates" = true, nil }

function M.AssertDescribeCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Certificates"] then M.AssertCertificateList(struct["Certificates"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificatesResponse_keys[k], "DescribeCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesResponse
--  
-- @param Marker [String] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param Certificates [CertificateList] &lt;p&gt;The Secure Sockets Layer (SSL) certificates associated with the replication instance.&lt;/p&gt;
function M.DescribeCertificatesResponse(Marker, Certificates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificatesResponse")
	local t = { 
		["Marker"] = Marker,
		["Certificates"] = Certificates,
	}
	M.AssertDescribeCertificatesResponse(t)
	return t
end

local StartReplicationTaskMessage_keys = { "ReplicationTaskArn" = true, "StartReplicationTaskType" = true, "CdcStartTime" = true, nil }

function M.AssertStartReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	assert(struct["StartReplicationTaskType"], "Expected key StartReplicationTaskType to exist in table")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	if struct["StartReplicationTaskType"] then M.AssertStartReplicationTaskTypeValue(struct["StartReplicationTaskType"]) end
	if struct["CdcStartTime"] then M.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(StartReplicationTaskMessage_keys[k], "StartReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskMessage
-- &lt;p/&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Number (ARN) of the replication task to be started.&lt;/p&gt;
-- @param StartReplicationTaskType [StartReplicationTaskTypeValue] &lt;p&gt;The type of replication task.&lt;/p&gt;
-- @param CdcStartTime [TStamp] &lt;p&gt;The start time for the Change Data Capture (CDC) operation.&lt;/p&gt;
-- Required parameter: ReplicationTaskArn
-- Required parameter: StartReplicationTaskType
function M.StartReplicationTaskMessage(ReplicationTaskArn, StartReplicationTaskType, CdcStartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartReplicationTaskMessage")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
		["StartReplicationTaskType"] = StartReplicationTaskType,
		["CdcStartTime"] = CdcStartTime,
	}
	M.AssertStartReplicationTaskMessage(t)
	return t
end

local ResourceQuotaExceededFault_keys = { "message" = true, nil }

function M.AssertResourceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceQuotaExceededFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceQuotaExceededFault_keys[k], "ResourceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceQuotaExceededFault
-- &lt;p&gt;The quota for this resource quota has been exceeded.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.ResourceQuotaExceededFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceQuotaExceededFault")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceQuotaExceededFault(t)
	return t
end

local StartReplicationTaskResponse_keys = { "ReplicationTask" = true, nil }

function M.AssertStartReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then M.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(StartReplicationTaskResponse_keys[k], "StartReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskResponse
-- &lt;p/&gt;
-- @param ReplicationTask [ReplicationTask] &lt;p&gt;The replication task started.&lt;/p&gt;
function M.StartReplicationTaskResponse(ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = ReplicationTask,
	}
	M.AssertStartReplicationTaskResponse(t)
	return t
end

local ModifyReplicationSubnetGroupMessage_keys = { "ReplicationSubnetGroupDescription" = true, "SubnetIds" = true, "ReplicationSubnetGroupIdentifier" = true, nil }

function M.AssertModifyReplicationSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationSubnetGroupMessage to be of type 'table'")
	assert(struct["ReplicationSubnetGroupIdentifier"], "Expected key ReplicationSubnetGroupIdentifier to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["ReplicationSubnetGroupDescription"] then M.AssertString(struct["ReplicationSubnetGroupDescription"]) end
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then M.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationSubnetGroupMessage_keys[k], "ModifyReplicationSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationSubnetGroupMessage
-- &lt;p/&gt;
-- @param ReplicationSubnetGroupDescription [String] &lt;p&gt;The description of the replication instance subnet group.&lt;/p&gt;
-- @param SubnetIds [SubnetIdentifierList] &lt;p&gt;A list of subnet IDs.&lt;/p&gt;
-- @param ReplicationSubnetGroupIdentifier [String] &lt;p&gt;The name of the replication instance subnet group.&lt;/p&gt;
-- Required parameter: ReplicationSubnetGroupIdentifier
-- Required parameter: SubnetIds
function M.ModifyReplicationSubnetGroupMessage(ReplicationSubnetGroupDescription, SubnetIds, ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationSubnetGroupMessage")
	local t = { 
		["ReplicationSubnetGroupDescription"] = ReplicationSubnetGroupDescription,
		["SubnetIds"] = SubnetIds,
		["ReplicationSubnetGroupIdentifier"] = ReplicationSubnetGroupIdentifier,
	}
	M.AssertModifyReplicationSubnetGroupMessage(t)
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
-- &lt;p/&gt;
-- @param Name [String] &lt;p&gt;The name of the availability zone.&lt;/p&gt;
function M.AvailabilityZone(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = Name,
	}
	M.AssertAvailabilityZone(t)
	return t
end

local TableStatistics_keys = { "Inserts" = true, "LastUpdateTime" = true, "FullLoadErrorRows" = true, "FullLoadCondtnlChkFailedRows" = true, "Ddls" = true, "TableName" = true, "Updates" = true, "FullLoadRows" = true, "TableState" = true, "SchemaName" = true, "Deletes" = true, nil }

function M.AssertTableStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableStatistics to be of type 'table'")
	if struct["Inserts"] then M.AssertLong(struct["Inserts"]) end
	if struct["LastUpdateTime"] then M.AssertTStamp(struct["LastUpdateTime"]) end
	if struct["FullLoadErrorRows"] then M.AssertLong(struct["FullLoadErrorRows"]) end
	if struct["FullLoadCondtnlChkFailedRows"] then M.AssertLong(struct["FullLoadCondtnlChkFailedRows"]) end
	if struct["Ddls"] then M.AssertLong(struct["Ddls"]) end
	if struct["TableName"] then M.AssertString(struct["TableName"]) end
	if struct["Updates"] then M.AssertLong(struct["Updates"]) end
	if struct["FullLoadRows"] then M.AssertLong(struct["FullLoadRows"]) end
	if struct["TableState"] then M.AssertString(struct["TableState"]) end
	if struct["SchemaName"] then M.AssertString(struct["SchemaName"]) end
	if struct["Deletes"] then M.AssertLong(struct["Deletes"]) end
	for k,_ in pairs(struct) do
		assert(TableStatistics_keys[k], "TableStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableStatistics
-- &lt;p/&gt;
-- @param Inserts [Long] &lt;p&gt;The number of insert actions performed on a table.&lt;/p&gt;
-- @param LastUpdateTime [TStamp] &lt;p&gt;The last time the table was updated.&lt;/p&gt;
-- @param FullLoadErrorRows [Long] &lt;p&gt;The number of rows that failed to load during the Full Load operation (valid only for DynamoDB as a target migrations).&lt;/p&gt;
-- @param FullLoadCondtnlChkFailedRows [Long] &lt;p&gt;The number of rows that failed conditional checks during the Full Load operation (valid only for DynamoDB as a target migrations).&lt;/p&gt;
-- @param Ddls [Long] &lt;p&gt;The Data Definition Language (DDL) used to build and modify the structure of your tables.&lt;/p&gt;
-- @param TableName [String] &lt;p&gt;The name of the table.&lt;/p&gt;
-- @param Updates [Long] &lt;p&gt;The number of update actions performed on a table.&lt;/p&gt;
-- @param FullLoadRows [Long] &lt;p&gt;The number of rows added during the Full Load operation.&lt;/p&gt;
-- @param TableState [String] &lt;p&gt;The state of the table.&lt;/p&gt;
-- @param SchemaName [String] &lt;p&gt;The schema name.&lt;/p&gt;
-- @param Deletes [Long] &lt;p&gt;The number of delete actions performed on a table.&lt;/p&gt;
function M.TableStatistics(Inserts, LastUpdateTime, FullLoadErrorRows, FullLoadCondtnlChkFailedRows, Ddls, TableName, Updates, FullLoadRows, TableState, SchemaName, Deletes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableStatistics")
	local t = { 
		["Inserts"] = Inserts,
		["LastUpdateTime"] = LastUpdateTime,
		["FullLoadErrorRows"] = FullLoadErrorRows,
		["FullLoadCondtnlChkFailedRows"] = FullLoadCondtnlChkFailedRows,
		["Ddls"] = Ddls,
		["TableName"] = TableName,
		["Updates"] = Updates,
		["FullLoadRows"] = FullLoadRows,
		["TableState"] = TableState,
		["SchemaName"] = SchemaName,
		["Deletes"] = Deletes,
	}
	M.AssertTableStatistics(t)
	return t
end

local ModifyReplicationInstanceMessage_keys = { "MultiAZ" = true, "AllowMajorVersionUpgrade" = true, "ReplicationInstanceArn" = true, "ReplicationInstanceClass" = true, "VpcSecurityGroupIds" = true, "ApplyImmediately" = true, "AutoMinorVersionUpgrade" = true, "AllocatedStorage" = true, "EngineVersion" = true, "ReplicationInstanceIdentifier" = true, "PreferredMaintenanceWindow" = true, nil }

function M.AssertModifyReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["AllowMajorVersionUpgrade"] then M.AssertBoolean(struct["AllowMajorVersionUpgrade"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["ReplicationInstanceClass"] then M.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["ApplyImmediately"] then M.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstanceIdentifier"] then M.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationInstanceMessage_keys[k], "ModifyReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationInstanceMessage
-- &lt;p/&gt;
-- @param MultiAZ [BooleanOptional] &lt;p&gt; Specifies if the replication instance is a Multi-AZ deployment. You cannot set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param AllowMajorVersionUpgrade [Boolean] &lt;p&gt;Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.&lt;/p&gt; &lt;p&gt;Constraints: This parameter must be set to true when specifying a value for the &lt;code&gt;EngineVersion&lt;/code&gt; parameter that is a different major version than the replication instance's current version.&lt;/p&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceClass [String] &lt;p&gt;The compute and memory capacity of the replication instance.&lt;/p&gt; &lt;p&gt; Valid Values: &lt;code&gt;dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge &lt;/code&gt; &lt;/p&gt;
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] &lt;p&gt; Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. &lt;/p&gt;
-- @param ApplyImmediately [Boolean] &lt;p&gt;Indicates whether the changes should be applied immediately or during the next maintenance window.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [BooleanOptional] &lt;p&gt; Indicates that minor version upgrades will be applied automatically to the replication instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to &lt;code&gt;true&lt;/code&gt; during the maintenance window, and a newer minor version is available, and AWS DMS has enabled auto patching for that engine version. &lt;/p&gt;
-- @param AllocatedStorage [IntegerOptional] &lt;p&gt;The amount of storage (in gigabytes) to be allocated for the replication instance.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceIdentifier [String] &lt;p&gt;The replication instance identifier. This parameter is stored as a lowercase string.&lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.&lt;/p&gt; &lt;p&gt;Default: Uses existing setting&lt;/p&gt; &lt;p&gt;Format: ddd:hh24:mi-ddd:hh24:mi&lt;/p&gt; &lt;p&gt;Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun&lt;/p&gt; &lt;p&gt;Constraints: Must be at least 30 minutes&lt;/p&gt;
-- Required parameter: ReplicationInstanceArn
function M.ModifyReplicationInstanceMessage(MultiAZ, AllowMajorVersionUpgrade, ReplicationInstanceArn, ReplicationInstanceClass, VpcSecurityGroupIds, ApplyImmediately, AutoMinorVersionUpgrade, AllocatedStorage, EngineVersion, ReplicationInstanceIdentifier, PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationInstanceMessage")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["AllowMajorVersionUpgrade"] = AllowMajorVersionUpgrade,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
		["ReplicationInstanceClass"] = ReplicationInstanceClass,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["ApplyImmediately"] = ApplyImmediately,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["AllocatedStorage"] = AllocatedStorage,
		["EngineVersion"] = EngineVersion,
		["ReplicationInstanceIdentifier"] = ReplicationInstanceIdentifier,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
	}
	M.AssertModifyReplicationInstanceMessage(t)
	return t
end

local ModifyReplicationTaskResponse_keys = { "ReplicationTask" = true, nil }

function M.AssertModifyReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then M.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationTaskResponse_keys[k], "ModifyReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationTaskResponse
-- &lt;p/&gt;
-- @param ReplicationTask [ReplicationTask] &lt;p&gt;The replication task that was modified.&lt;/p&gt;
function M.ModifyReplicationTaskResponse(ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = ReplicationTask,
	}
	M.AssertModifyReplicationTaskResponse(t)
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
-- &lt;p/&gt;
-- @param SubnetStatus [String] &lt;p&gt;The status of the subnet.&lt;/p&gt;
-- @param SubnetIdentifier [String] &lt;p&gt;The subnet identifier.&lt;/p&gt;
-- @param SubnetAvailabilityZone [AvailabilityZone] &lt;p&gt;The Availability Zone of the subnet.&lt;/p&gt;
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

local DeleteReplicationTaskResponse_keys = { "ReplicationTask" = true, nil }

function M.AssertDeleteReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then M.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationTaskResponse_keys[k], "DeleteReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationTaskResponse
-- &lt;p/&gt;
-- @param ReplicationTask [ReplicationTask] &lt;p&gt;The deleted replication task.&lt;/p&gt;
function M.DeleteReplicationTaskResponse(ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = ReplicationTask,
	}
	M.AssertDeleteReplicationTaskResponse(t)
	return t
end

local Certificate_keys = { "CertificateArn" = true, "CertificateCreationDate" = true, "CertificatePem" = true, "CertificateOwner" = true, "CertificateWallet" = true, "ValidToDate" = true, "KeyLength" = true, "CertificateIdentifier" = true, "SigningAlgorithm" = true, "ValidFromDate" = true, nil }

function M.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then M.AssertString(struct["CertificateArn"]) end
	if struct["CertificateCreationDate"] then M.AssertTStamp(struct["CertificateCreationDate"]) end
	if struct["CertificatePem"] then M.AssertString(struct["CertificatePem"]) end
	if struct["CertificateOwner"] then M.AssertString(struct["CertificateOwner"]) end
	if struct["CertificateWallet"] then M.AssertCertificateWallet(struct["CertificateWallet"]) end
	if struct["ValidToDate"] then M.AssertTStamp(struct["ValidToDate"]) end
	if struct["KeyLength"] then M.AssertIntegerOptional(struct["KeyLength"]) end
	if struct["CertificateIdentifier"] then M.AssertString(struct["CertificateIdentifier"]) end
	if struct["SigningAlgorithm"] then M.AssertString(struct["SigningAlgorithm"]) end
	if struct["ValidFromDate"] then M.AssertTStamp(struct["ValidFromDate"]) end
	for k,_ in pairs(struct) do
		assert(Certificate_keys[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- &lt;p&gt;The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.&lt;/p&gt;
-- @param CertificateArn [String] &lt;p&gt;The Amazon Resource Name (ARN) for the certificate.&lt;/p&gt;
-- @param CertificateCreationDate [TStamp] &lt;p&gt;The date that the certificate was created.&lt;/p&gt;
-- @param CertificatePem [String] &lt;p&gt;The contents of the .pem X.509 certificate file for the certificate.&lt;/p&gt;
-- @param CertificateOwner [String] &lt;p&gt;The owner of the certificate.&lt;/p&gt;
-- @param CertificateWallet [CertificateWallet] &lt;p&gt;The location of the imported Oracle Wallet certificate for use with SSL.&lt;/p&gt;
-- @param ValidToDate [TStamp] &lt;p&gt;The final date that the certificate is valid.&lt;/p&gt;
-- @param KeyLength [IntegerOptional] &lt;p&gt;The key length of the cryptographic algorithm being used.&lt;/p&gt;
-- @param CertificateIdentifier [String] &lt;p&gt;The customer-assigned name of the certificate. Valid characters are A-z and 0-9.&lt;/p&gt;
-- @param SigningAlgorithm [String] &lt;p&gt;The signing algorithm for the certificate.&lt;/p&gt;
-- @param ValidFromDate [TStamp] &lt;p&gt;The beginning date that the certificate is valid.&lt;/p&gt;
function M.Certificate(CertificateArn, CertificateCreationDate, CertificatePem, CertificateOwner, CertificateWallet, ValidToDate, KeyLength, CertificateIdentifier, SigningAlgorithm, ValidFromDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["CertificateCreationDate"] = CertificateCreationDate,
		["CertificatePem"] = CertificatePem,
		["CertificateOwner"] = CertificateOwner,
		["CertificateWallet"] = CertificateWallet,
		["ValidToDate"] = ValidToDate,
		["KeyLength"] = KeyLength,
		["CertificateIdentifier"] = CertificateIdentifier,
		["SigningAlgorithm"] = SigningAlgorithm,
		["ValidFromDate"] = ValidFromDate,
	}
	M.AssertCertificate(t)
	return t
end

local DescribeOrderableReplicationInstancesMessage_keys = { "Marker" = true, "MaxRecords" = true, nil }

function M.AssertDescribeOrderableReplicationInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableReplicationInstancesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrderableReplicationInstancesMessage_keys[k], "DescribeOrderableReplicationInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableReplicationInstancesMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
function M.DescribeOrderableReplicationInstancesMessage(Marker, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableReplicationInstancesMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeOrderableReplicationInstancesMessage(t)
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
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the action.&lt;/p&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the AWS DMS event subscription to be described.&lt;/p&gt;
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

local DescribeEventsResponse_keys = { "Marker" = true, "Events" = true, nil }

function M.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsResponse_keys[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param Events [EventList] &lt;p&gt;The events described.&lt;/p&gt;
function M.DescribeEventsResponse(Marker, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["Marker"] = Marker,
		["Events"] = Events,
	}
	M.AssertDescribeEventsResponse(t)
	return t
end

local DeleteReplicationInstanceMessage_keys = { "ReplicationInstanceArn" = true, nil }

function M.AssertDeleteReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationInstanceMessage_keys[k], "DeleteReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationInstanceMessage
-- &lt;p/&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance to be deleted.&lt;/p&gt;
-- Required parameter: ReplicationInstanceArn
function M.DeleteReplicationInstanceMessage(ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationInstanceMessage")
	local t = { 
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
	}
	M.AssertDeleteReplicationInstanceMessage(t)
	return t
end

local DeleteEndpointMessage_keys = { "EndpointArn" = true, nil }

function M.AssertDeleteEndpointMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEndpointMessage_keys[k], "DeleteEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointMessage
-- &lt;p/&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- Required parameter: EndpointArn
function M.DeleteEndpointMessage(EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEndpointMessage")
	local t = { 
		["EndpointArn"] = EndpointArn,
	}
	M.AssertDeleteEndpointMessage(t)
	return t
end

local EventCategoryGroup_keys = { "EventCategories" = true, "SourceType" = true, nil }

function M.AssertEventCategoryGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoryGroup to be of type 'table'")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(EventCategoryGroup_keys[k], "EventCategoryGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoryGroup
-- &lt;p/&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt; A list of event categories for a &lt;code&gt;SourceType&lt;/code&gt; that you want to subscribe to. &lt;/p&gt;
-- @param SourceType [String] &lt;p&gt; The type of AWS DMS resource that generates events. &lt;/p&gt; &lt;p&gt;Valid values: replication-instance | replication-server | security-group | migration-task&lt;/p&gt;
function M.EventCategoryGroup(EventCategories, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoryGroup")
	local t = { 
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
	}
	M.AssertEventCategoryGroup(t)
	return t
end

local SupportedEndpointType_keys = { "EngineName" = true, "SupportsCDC" = true, "EndpointType" = true, nil }

function M.AssertSupportedEndpointType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SupportedEndpointType to be of type 'table'")
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["SupportsCDC"] then M.AssertBoolean(struct["SupportsCDC"]) end
	if struct["EndpointType"] then M.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	for k,_ in pairs(struct) do
		assert(SupportedEndpointType_keys[k], "SupportedEndpointType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SupportedEndpointType
-- &lt;p/&gt;
-- @param EngineName [String] &lt;p&gt;The database engine name. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, SYBASE, DYNAMODB, MONGODB, and SQLSERVER.&lt;/p&gt;
-- @param SupportsCDC [Boolean] &lt;p&gt;Indicates if Change Data Capture (CDC) is supported.&lt;/p&gt;
-- @param EndpointType [ReplicationEndpointTypeValue] &lt;p&gt;The type of endpoint.&lt;/p&gt;
function M.SupportedEndpointType(EngineName, SupportsCDC, EndpointType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SupportedEndpointType")
	local t = { 
		["EngineName"] = EngineName,
		["SupportsCDC"] = SupportsCDC,
		["EndpointType"] = EndpointType,
	}
	M.AssertSupportedEndpointType(t)
	return t
end

local DeleteCertificateResponse_keys = { "Certificate" = true, nil }

function M.AssertDeleteCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateResponse to be of type 'table'")
	if struct["Certificate"] then M.AssertCertificate(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCertificateResponse_keys[k], "DeleteCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateResponse
--  
-- @param Certificate [Certificate] &lt;p&gt;The Secure Sockets Layer (SSL) certificate.&lt;/p&gt;
function M.DeleteCertificateResponse(Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateResponse")
	local t = { 
		["Certificate"] = Certificate,
	}
	M.AssertDeleteCertificateResponse(t)
	return t
end

local DescribeEventCategoriesResponse_keys = { "EventCategoryGroupList" = true, nil }

function M.AssertDescribeEventCategoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesResponse to be of type 'table'")
	if struct["EventCategoryGroupList"] then M.AssertEventCategoryGroupList(struct["EventCategoryGroupList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventCategoriesResponse_keys[k], "DescribeEventCategoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesResponse
-- &lt;p/&gt;
-- @param EventCategoryGroupList [EventCategoryGroupList] &lt;p&gt;A list of event categories.&lt;/p&gt;
function M.DescribeEventCategoriesResponse(EventCategoryGroupList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesResponse")
	local t = { 
		["EventCategoryGroupList"] = EventCategoryGroupList,
	}
	M.AssertDescribeEventCategoriesResponse(t)
	return t
end

local DeleteReplicationInstanceResponse_keys = { "ReplicationInstance" = true, nil }

function M.AssertDeleteReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then M.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationInstanceResponse_keys[k], "DeleteReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationInstanceResponse
-- &lt;p/&gt;
-- @param ReplicationInstance [ReplicationInstance] &lt;p&gt;The replication instance that was deleted.&lt;/p&gt;
function M.DeleteReplicationInstanceResponse(ReplicationInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationInstanceResponse")
	local t = { 
		["ReplicationInstance"] = ReplicationInstance,
	}
	M.AssertDeleteReplicationInstanceResponse(t)
	return t
end

local ListTagsForResourceMessage_keys = { "ResourceArn" = true, nil }

function M.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceMessage_keys[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- &lt;p/&gt;
-- @param ResourceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource.&lt;/p&gt;
-- Required parameter: ResourceArn
function M.ListTagsForResourceMessage(ResourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceMessage")
	local t = { 
		["ResourceArn"] = ResourceArn,
	}
	M.AssertListTagsForResourceMessage(t)
	return t
end

local DeleteReplicationTaskMessage_keys = { "ReplicationTaskArn" = true, nil }

function M.AssertDeleteReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationTaskMessage_keys[k], "DeleteReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationTaskMessage
-- &lt;p/&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication task to be deleted.&lt;/p&gt;
-- Required parameter: ReplicationTaskArn
function M.DeleteReplicationTaskMessage(ReplicationTaskArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationTaskMessage")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
	}
	M.AssertDeleteReplicationTaskMessage(t)
	return t
end

local DescribeEndpointsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeEndpointsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEndpointsMessage_keys[k], "DescribeEndpointsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the describe action.&lt;/p&gt; &lt;p&gt;Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name&lt;/p&gt;
function M.DescribeEndpointsMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeEndpointsMessage(t)
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
-- &lt;p/&gt;
-- @param Values [FilterValueList] &lt;p&gt;The filter value.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the filter.&lt;/p&gt;
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

local Connection_keys = { "Status" = true, "ReplicationInstanceArn" = true, "LastFailureMessage" = true, "EndpointArn" = true, "ReplicationInstanceIdentifier" = true, "EndpointIdentifier" = true, nil }

function M.AssertConnection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connection to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["LastFailureMessage"] then M.AssertString(struct["LastFailureMessage"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceIdentifier"] then M.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["EndpointIdentifier"] then M.AssertString(struct["EndpointIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(Connection_keys[k], "Connection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connection
-- &lt;p/&gt;
-- @param Status [String] &lt;p&gt;The connection status.&lt;/p&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- @param LastFailureMessage [String] &lt;p&gt;The error message when the connection last failed.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationInstanceIdentifier [String] &lt;p&gt;The replication instance identifier. This parameter is stored as a lowercase string.&lt;/p&gt;
-- @param EndpointIdentifier [String] &lt;p&gt;The identifier of the endpoint. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.&lt;/p&gt;
function M.Connection(Status, ReplicationInstanceArn, LastFailureMessage, EndpointArn, ReplicationInstanceIdentifier, EndpointIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connection")
	local t = { 
		["Status"] = Status,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
		["LastFailureMessage"] = LastFailureMessage,
		["EndpointArn"] = EndpointArn,
		["ReplicationInstanceIdentifier"] = ReplicationInstanceIdentifier,
		["EndpointIdentifier"] = EndpointIdentifier,
	}
	M.AssertConnection(t)
	return t
end

local DescribeEndpointTypesResponse_keys = { "Marker" = true, "SupportedEndpointTypes" = true, nil }

function M.AssertDescribeEndpointTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointTypesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["SupportedEndpointTypes"] then M.AssertSupportedEndpointTypeList(struct["SupportedEndpointTypes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEndpointTypesResponse_keys[k], "DescribeEndpointTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointTypesResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param SupportedEndpointTypes [SupportedEndpointTypeList] &lt;p&gt;The type of endpoints that are supported.&lt;/p&gt;
function M.DescribeEndpointTypesResponse(Marker, SupportedEndpointTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointTypesResponse")
	local t = { 
		["Marker"] = Marker,
		["SupportedEndpointTypes"] = SupportedEndpointTypes,
	}
	M.AssertDescribeEndpointTypesResponse(t)
	return t
end

local UpgradeDependencyFailureFault_keys = { "message" = true, nil }

function M.AssertUpgradeDependencyFailureFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeDependencyFailureFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UpgradeDependencyFailureFault_keys[k], "UpgradeDependencyFailureFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeDependencyFailureFault
-- &lt;p&gt;An upgrade dependency is preventing the database migration.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.UpgradeDependencyFailureFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpgradeDependencyFailureFault")
	local t = { 
		["message"] = message,
	}
	M.AssertUpgradeDependencyFailureFault(t)
	return t
end

local DescribeCertificatesMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificatesMessage_keys[k], "DescribeCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesMessage
--  
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 10&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the certificate described in the form of key-value pairs.&lt;/p&gt;
function M.DescribeCertificatesMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificatesMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeCertificatesMessage(t)
	return t
end

local ReplicationPendingModifiedValues_keys = { "ReplicationInstanceClass" = true, "EngineVersion" = true, "AllocatedStorage" = true, "MultiAZ" = true, nil }

function M.AssertReplicationPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationPendingModifiedValues to be of type 'table'")
	if struct["ReplicationInstanceClass"] then M.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationPendingModifiedValues_keys[k], "ReplicationPendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationPendingModifiedValues
-- &lt;p/&gt;
-- @param ReplicationInstanceClass [String] &lt;p&gt;The compute and memory capacity of the replication instance.&lt;/p&gt; &lt;p&gt; Valid Values: &lt;code&gt;dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge &lt;/code&gt; &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt;
-- @param AllocatedStorage [IntegerOptional] &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
-- @param MultiAZ [BooleanOptional] &lt;p&gt; Specifies if the replication instance is a Multi-AZ deployment. You cannot set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
function M.ReplicationPendingModifiedValues(ReplicationInstanceClass, EngineVersion, AllocatedStorage, MultiAZ, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationPendingModifiedValues")
	local t = { 
		["ReplicationInstanceClass"] = ReplicationInstanceClass,
		["EngineVersion"] = EngineVersion,
		["AllocatedStorage"] = AllocatedStorage,
		["MultiAZ"] = MultiAZ,
	}
	M.AssertReplicationPendingModifiedValues(t)
	return t
end

local DescribeReplicationTasksMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeReplicationTasksMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationTasksMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationTasksMessage_keys[k], "DescribeReplicationTasksMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationTasksMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the describe action.&lt;/p&gt; &lt;p&gt;Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn&lt;/p&gt;
function M.DescribeReplicationTasksMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationTasksMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeReplicationTasksMessage(t)
	return t
end

local CreateReplicationInstanceMessage_keys = { "MultiAZ" = true, "AvailabilityZone" = true, "PubliclyAccessible" = true, "Tags" = true, "ReplicationInstanceClass" = true, "VpcSecurityGroupIds" = true, "AutoMinorVersionUpgrade" = true, "KmsKeyId" = true, "AllocatedStorage" = true, "EngineVersion" = true, "ReplicationInstanceIdentifier" = true, "PreferredMaintenanceWindow" = true, "ReplicationSubnetGroupIdentifier" = true, nil }

function M.AssertCreateReplicationInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationInstanceMessage to be of type 'table'")
	assert(struct["ReplicationInstanceIdentifier"], "Expected key ReplicationInstanceIdentifier to exist in table")
	assert(struct["ReplicationInstanceClass"], "Expected key ReplicationInstanceClass to exist in table")
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ReplicationInstanceClass"] then M.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstanceIdentifier"] then M.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["ReplicationSubnetGroupIdentifier"] then M.AssertString(struct["ReplicationSubnetGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationInstanceMessage_keys[k], "CreateReplicationInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationInstanceMessage
-- &lt;p/&gt;
-- @param MultiAZ [BooleanOptional] &lt;p&gt; Specifies if the replication instance is a Multi-AZ deployment. You cannot set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The EC2 Availability Zone that the replication instance will be created in.&lt;/p&gt; &lt;p&gt;Default: A random, system-chosen Availability Zone in the endpoint's region.&lt;/p&gt; &lt;p&gt; Example: &lt;code&gt;us-east-1d&lt;/code&gt; &lt;/p&gt;
-- @param PubliclyAccessible [BooleanOptional] &lt;p&gt; Specifies the accessibility options for the replication instance. A value of &lt;code&gt;true&lt;/code&gt; represents an instance with a public IP address. A value of &lt;code&gt;false&lt;/code&gt; represents an instance with a private IP address. The default value is &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;Tags to be associated with the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceClass [String] &lt;p&gt;The compute and memory capacity of the replication instance as specified by the replication instance class.&lt;/p&gt; &lt;p&gt; Valid Values: &lt;code&gt;dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge &lt;/code&gt; &lt;/p&gt;
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] &lt;p&gt; Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. &lt;/p&gt;
-- @param AutoMinorVersionUpgrade [BooleanOptional] &lt;p&gt;Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;true&lt;/code&gt; &lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The KMS key identifier that will be used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.&lt;/p&gt;
-- @param AllocatedStorage [IntegerOptional] &lt;p&gt;The amount of storage (in gigabytes) to be initially allocated for the replication instance.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceIdentifier [String] &lt;p&gt;The replication instance identifier. This parameter is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;myrepinstance&lt;/code&gt; &lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).&lt;/p&gt; &lt;p&gt; Format: &lt;code&gt;ddd:hh24:mi-ddd:hh24:mi&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.&lt;/p&gt; &lt;p&gt;Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun&lt;/p&gt; &lt;p&gt;Constraints: Minimum 30-minute window.&lt;/p&gt;
-- @param ReplicationSubnetGroupIdentifier [String] &lt;p&gt;A subnet group to associate with the replication instance.&lt;/p&gt;
-- Required parameter: ReplicationInstanceIdentifier
-- Required parameter: ReplicationInstanceClass
function M.CreateReplicationInstanceMessage(MultiAZ, AvailabilityZone, PubliclyAccessible, Tags, ReplicationInstanceClass, VpcSecurityGroupIds, AutoMinorVersionUpgrade, KmsKeyId, AllocatedStorage, EngineVersion, ReplicationInstanceIdentifier, PreferredMaintenanceWindow, ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationInstanceMessage")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["AvailabilityZone"] = AvailabilityZone,
		["PubliclyAccessible"] = PubliclyAccessible,
		["Tags"] = Tags,
		["ReplicationInstanceClass"] = ReplicationInstanceClass,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["KmsKeyId"] = KmsKeyId,
		["AllocatedStorage"] = AllocatedStorage,
		["EngineVersion"] = EngineVersion,
		["ReplicationInstanceIdentifier"] = ReplicationInstanceIdentifier,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["ReplicationSubnetGroupIdentifier"] = ReplicationSubnetGroupIdentifier,
	}
	M.AssertCreateReplicationInstanceMessage(t)
	return t
end

local ModifyEndpointResponse_keys = { "Endpoint" = true, nil }

function M.AssertModifyEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEndpointResponse to be of type 'table'")
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	for k,_ in pairs(struct) do
		assert(ModifyEndpointResponse_keys[k], "ModifyEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEndpointResponse
-- &lt;p/&gt;
-- @param Endpoint [Endpoint] &lt;p&gt;The modified endpoint.&lt;/p&gt;
function M.ModifyEndpointResponse(Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEndpointResponse")
	local t = { 
		["Endpoint"] = Endpoint,
	}
	M.AssertModifyEndpointResponse(t)
	return t
end

local ModifyEndpointMessage_keys = { "Username" = true, "CertificateArn" = true, "MongoDbSettings" = true, "S3Settings" = true, "ServerName" = true, "EndpointType" = true, "EndpointArn" = true, "ExtraConnectionAttributes" = true, "DatabaseName" = true, "DynamoDbSettings" = true, "SslMode" = true, "EngineName" = true, "Password" = true, "EndpointIdentifier" = true, "Port" = true, nil }

function M.AssertModifyEndpointMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEndpointMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["CertificateArn"] then M.AssertString(struct["CertificateArn"]) end
	if struct["MongoDbSettings"] then M.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then M.AssertS3Settings(struct["S3Settings"]) end
	if struct["ServerName"] then M.AssertString(struct["ServerName"]) end
	if struct["EndpointType"] then M.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	if struct["ExtraConnectionAttributes"] then M.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then M.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then M.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["Password"] then M.AssertSecretString(struct["Password"]) end
	if struct["EndpointIdentifier"] then M.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(ModifyEndpointMessage_keys[k], "ModifyEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEndpointMessage
-- &lt;p/&gt;
-- @param Username [String] &lt;p&gt;The user name to be used to login to the endpoint database.&lt;/p&gt;
-- @param CertificateArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the certificate used for SSL connection.&lt;/p&gt;
-- @param MongoDbSettings [MongoDbSettings] &lt;p&gt;Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the &lt;b&gt;Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service&lt;/b&gt; section at &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html&quot;&gt; Using Amazon S3 as a Target for AWS Database Migration Service&lt;/a&gt;. &lt;/p&gt;
-- @param S3Settings [S3Settings] &lt;p&gt;Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the &lt;b&gt;Extra Connection Attributes&lt;/b&gt; section at &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html&quot;&gt; Using Amazon S3 as a Target for AWS Database Migration Service&lt;/a&gt;. &lt;/p&gt;
-- @param ServerName [String] &lt;p&gt;The name of the server where the endpoint database resides.&lt;/p&gt;
-- @param EndpointType [ReplicationEndpointTypeValue] &lt;p&gt;The type of endpoint.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ExtraConnectionAttributes [String] &lt;p&gt;Additional attributes associated with the connection.&lt;/p&gt;
-- @param DatabaseName [String] &lt;p&gt;The name of the endpoint database.&lt;/p&gt;
-- @param DynamoDbSettings [DynamoDbSettings] &lt;p&gt;Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the &lt;b&gt;Using Object Mapping to Migrate Data to DynamoDB&lt;/b&gt; section at &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html&quot;&gt; Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service&lt;/a&gt;. &lt;/p&gt;
-- @param SslMode [DmsSslModeValue] &lt;p&gt;The SSL mode to be used.&lt;/p&gt; &lt;p&gt;SSL mode can be one of four values: none, require, verify-ca, verify-full. &lt;/p&gt; &lt;p&gt;The default value is none.&lt;/p&gt;
-- @param EngineName [String] &lt;p&gt;The type of engine for the endpoint. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, DYNAMODB, MONGODB, SYBASE, and SQLSERVER.&lt;/p&gt;
-- @param Password [SecretString] &lt;p&gt;The password to be used to login to the endpoint database.&lt;/p&gt;
-- @param EndpointIdentifier [String] &lt;p&gt;The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.&lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port used by the endpoint database.&lt;/p&gt;
-- Required parameter: EndpointArn
function M.ModifyEndpointMessage(Username, CertificateArn, MongoDbSettings, S3Settings, ServerName, EndpointType, EndpointArn, ExtraConnectionAttributes, DatabaseName, DynamoDbSettings, SslMode, EngineName, Password, EndpointIdentifier, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEndpointMessage")
	local t = { 
		["Username"] = Username,
		["CertificateArn"] = CertificateArn,
		["MongoDbSettings"] = MongoDbSettings,
		["S3Settings"] = S3Settings,
		["ServerName"] = ServerName,
		["EndpointType"] = EndpointType,
		["EndpointArn"] = EndpointArn,
		["ExtraConnectionAttributes"] = ExtraConnectionAttributes,
		["DatabaseName"] = DatabaseName,
		["DynamoDbSettings"] = DynamoDbSettings,
		["SslMode"] = SslMode,
		["EngineName"] = EngineName,
		["Password"] = Password,
		["EndpointIdentifier"] = EndpointIdentifier,
		["Port"] = Port,
	}
	M.AssertModifyEndpointMessage(t)
	return t
end

local RefreshSchemasMessage_keys = { "EndpointArn" = true, "ReplicationInstanceArn" = true, nil }

function M.AssertRefreshSchemasMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshSchemasMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	assert(struct["ReplicationInstanceArn"], "Expected key ReplicationInstanceArn to exist in table")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(RefreshSchemasMessage_keys[k], "RefreshSchemasMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshSchemasMessage
-- &lt;p/&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- Required parameter: EndpointArn
-- Required parameter: ReplicationInstanceArn
function M.RefreshSchemasMessage(EndpointArn, ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshSchemasMessage")
	local t = { 
		["EndpointArn"] = EndpointArn,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
	}
	M.AssertRefreshSchemasMessage(t)
	return t
end

local StopReplicationTaskResponse_keys = { "ReplicationTask" = true, nil }

function M.AssertStopReplicationTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopReplicationTaskResponse to be of type 'table'")
	if struct["ReplicationTask"] then M.AssertReplicationTask(struct["ReplicationTask"]) end
	for k,_ in pairs(struct) do
		assert(StopReplicationTaskResponse_keys[k], "StopReplicationTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopReplicationTaskResponse
-- &lt;p/&gt;
-- @param ReplicationTask [ReplicationTask] &lt;p&gt;The replication task stopped.&lt;/p&gt;
function M.StopReplicationTaskResponse(ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = ReplicationTask,
	}
	M.AssertStopReplicationTaskResponse(t)
	return t
end

local KMSKeyNotAccessibleFault_keys = { "message" = true, nil }

function M.AssertKMSKeyNotAccessibleFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSKeyNotAccessibleFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(KMSKeyNotAccessibleFault_keys[k], "KMSKeyNotAccessibleFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSKeyNotAccessibleFault
-- &lt;p&gt;AWS DMS cannot access the KMS key.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.KMSKeyNotAccessibleFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSKeyNotAccessibleFault")
	local t = { 
		["message"] = message,
	}
	M.AssertKMSKeyNotAccessibleFault(t)
	return t
end

local DescribeAccountAttributesResponse_keys = { "AccountQuotas" = true, nil }

function M.AssertDescribeAccountAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesResponse to be of type 'table'")
	if struct["AccountQuotas"] then M.AssertAccountQuotaList(struct["AccountQuotas"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountAttributesResponse_keys[k], "DescribeAccountAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesResponse
-- &lt;p/&gt;
-- @param AccountQuotas [AccountQuotaList] &lt;p&gt;Account quota information.&lt;/p&gt;
function M.DescribeAccountAttributesResponse(AccountQuotas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesResponse")
	local t = { 
		["AccountQuotas"] = AccountQuotas,
	}
	M.AssertDescribeAccountAttributesResponse(t)
	return t
end

local DescribeSchemasMessage_keys = { "Marker" = true, "MaxRecords" = true, "EndpointArn" = true, nil }

function M.AssertDescribeSchemasMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSchemasMessage to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSchemasMessage_keys[k], "DescribeSchemasMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSchemasMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- Required parameter: EndpointArn
function M.DescribeSchemasMessage(Marker, MaxRecords, EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSchemasMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["EndpointArn"] = EndpointArn,
	}
	M.AssertDescribeSchemasMessage(t)
	return t
end

local ReloadTablesResponse_keys = { "ReplicationTaskArn" = true, nil }

function M.AssertReloadTablesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReloadTablesResponse to be of type 'table'")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(ReloadTablesResponse_keys[k], "ReloadTablesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReloadTablesResponse
--  
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication task. &lt;/p&gt;
function M.ReloadTablesResponse(ReplicationTaskArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReloadTablesResponse")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
	}
	M.AssertReloadTablesResponse(t)
	return t
end

local SNSNoAuthorizationFault_keys = { "message" = true, nil }

function M.AssertSNSNoAuthorizationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSNoAuthorizationFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SNSNoAuthorizationFault_keys[k], "SNSNoAuthorizationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSNoAuthorizationFault
-- &lt;p&gt;You are not authorized for the SNS subscription.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.SNSNoAuthorizationFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSNoAuthorizationFault")
	local t = { 
		["message"] = message,
	}
	M.AssertSNSNoAuthorizationFault(t)
	return t
end

local CreateReplicationInstanceResponse_keys = { "ReplicationInstance" = true, nil }

function M.AssertCreateReplicationInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationInstanceResponse to be of type 'table'")
	if struct["ReplicationInstance"] then M.AssertReplicationInstance(struct["ReplicationInstance"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationInstanceResponse_keys[k], "CreateReplicationInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationInstanceResponse
-- &lt;p/&gt;
-- @param ReplicationInstance [ReplicationInstance] &lt;p&gt;The replication instance that was created.&lt;/p&gt;
function M.CreateReplicationInstanceResponse(ReplicationInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationInstanceResponse")
	local t = { 
		["ReplicationInstance"] = ReplicationInstance,
	}
	M.AssertCreateReplicationInstanceResponse(t)
	return t
end

local ListTagsForResourceResponse_keys = { "TagList" = true, nil }

function M.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResponse_keys[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
-- &lt;p/&gt;
-- @param TagList [TagList] &lt;p&gt;A list of tags for the resource.&lt;/p&gt;
function M.ListTagsForResourceResponse(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertListTagsForResourceResponse(t)
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
-- @param SubscriptionName [String] &lt;p&gt;The name of the DMS event notification subscription to be deleted.&lt;/p&gt;
-- Required parameter: SubscriptionName
function M.DeleteEventSubscriptionMessage(SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionMessage")
	local t = { 
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertDeleteEventSubscriptionMessage(t)
	return t
end

local SNSInvalidTopicFault_keys = { "message" = true, nil }

function M.AssertSNSInvalidTopicFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSInvalidTopicFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SNSInvalidTopicFault_keys[k], "SNSInvalidTopicFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSInvalidTopicFault
-- &lt;p&gt;The SNS topic is invalid.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.SNSInvalidTopicFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSInvalidTopicFault")
	local t = { 
		["message"] = message,
	}
	M.AssertSNSInvalidTopicFault(t)
	return t
end

local ReplicationTask_keys = { "SourceEndpointArn" = true, "ReplicationTaskIdentifier" = true, "ReplicationInstanceArn" = true, "TableMappings" = true, "ReplicationTaskStartDate" = true, "ReplicationTaskStats" = true, "Status" = true, "ReplicationTaskArn" = true, "LastFailureMessage" = true, "StopReason" = true, "ReplicationTaskCreationDate" = true, "MigrationType" = true, "TargetEndpointArn" = true, "ReplicationTaskSettings" = true, nil }

function M.AssertReplicationTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationTask to be of type 'table'")
	if struct["SourceEndpointArn"] then M.AssertString(struct["SourceEndpointArn"]) end
	if struct["ReplicationTaskIdentifier"] then M.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["TableMappings"] then M.AssertString(struct["TableMappings"]) end
	if struct["ReplicationTaskStartDate"] then M.AssertTStamp(struct["ReplicationTaskStartDate"]) end
	if struct["ReplicationTaskStats"] then M.AssertReplicationTaskStats(struct["ReplicationTaskStats"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	if struct["LastFailureMessage"] then M.AssertString(struct["LastFailureMessage"]) end
	if struct["StopReason"] then M.AssertString(struct["StopReason"]) end
	if struct["ReplicationTaskCreationDate"] then M.AssertTStamp(struct["ReplicationTaskCreationDate"]) end
	if struct["MigrationType"] then M.AssertMigrationTypeValue(struct["MigrationType"]) end
	if struct["TargetEndpointArn"] then M.AssertString(struct["TargetEndpointArn"]) end
	if struct["ReplicationTaskSettings"] then M.AssertString(struct["ReplicationTaskSettings"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationTask_keys[k], "ReplicationTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationTask
-- &lt;p/&gt;
-- @param SourceEndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationTaskIdentifier [String] &lt;p&gt;The replication task identifier.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- @param TableMappings [String] &lt;p&gt;Table mappings specified in the task.&lt;/p&gt;
-- @param ReplicationTaskStartDate [TStamp] &lt;p&gt;The date the replication task is scheduled to start.&lt;/p&gt;
-- @param ReplicationTaskStats [ReplicationTaskStats] &lt;p&gt;The statistics for the task, including elapsed time, tables loaded, and table errors.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the replication task.&lt;/p&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication task.&lt;/p&gt;
-- @param LastFailureMessage [String] &lt;p&gt;The last error (failure) message generated for the replication instance.&lt;/p&gt;
-- @param StopReason [String] &lt;p&gt;The reason the replication task was stopped.&lt;/p&gt;
-- @param ReplicationTaskCreationDate [TStamp] &lt;p&gt;The date the replication task was created.&lt;/p&gt;
-- @param MigrationType [MigrationTypeValue] &lt;p&gt;The type of migration.&lt;/p&gt;
-- @param TargetEndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationTaskSettings [String] &lt;p&gt;The settings for the replication task.&lt;/p&gt;
function M.ReplicationTask(SourceEndpointArn, ReplicationTaskIdentifier, ReplicationInstanceArn, TableMappings, ReplicationTaskStartDate, ReplicationTaskStats, Status, ReplicationTaskArn, LastFailureMessage, StopReason, ReplicationTaskCreationDate, MigrationType, TargetEndpointArn, ReplicationTaskSettings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationTask")
	local t = { 
		["SourceEndpointArn"] = SourceEndpointArn,
		["ReplicationTaskIdentifier"] = ReplicationTaskIdentifier,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
		["TableMappings"] = TableMappings,
		["ReplicationTaskStartDate"] = ReplicationTaskStartDate,
		["ReplicationTaskStats"] = ReplicationTaskStats,
		["Status"] = Status,
		["ReplicationTaskArn"] = ReplicationTaskArn,
		["LastFailureMessage"] = LastFailureMessage,
		["StopReason"] = StopReason,
		["ReplicationTaskCreationDate"] = ReplicationTaskCreationDate,
		["MigrationType"] = MigrationType,
		["TargetEndpointArn"] = TargetEndpointArn,
		["ReplicationTaskSettings"] = ReplicationTaskSettings,
	}
	M.AssertReplicationTask(t)
	return t
end

local Endpoint_keys = { "Username" = true, "Status" = true, "MongoDbSettings" = true, "S3Settings" = true, "EndpointArn" = true, "ServerName" = true, "CertificateArn" = true, "EndpointType" = true, "ExternalId" = true, "KmsKeyId" = true, "ExtraConnectionAttributes" = true, "DatabaseName" = true, "DynamoDbSettings" = true, "SslMode" = true, "EngineName" = true, "EndpointIdentifier" = true, "Port" = true, nil }

function M.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["MongoDbSettings"] then M.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then M.AssertS3Settings(struct["S3Settings"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	if struct["ServerName"] then M.AssertString(struct["ServerName"]) end
	if struct["CertificateArn"] then M.AssertString(struct["CertificateArn"]) end
	if struct["EndpointType"] then M.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["ExternalId"] then M.AssertString(struct["ExternalId"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["ExtraConnectionAttributes"] then M.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then M.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then M.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["EndpointIdentifier"] then M.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(Endpoint_keys[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- &lt;p/&gt;
-- @param Username [String] &lt;p&gt;The user name used to connect to the endpoint.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the endpoint.&lt;/p&gt;
-- @param MongoDbSettings [MongoDbSettings] &lt;p&gt;The settings for the MongoDB source endpoint. For more information, see the &lt;code&gt;MongoDbSettings&lt;/code&gt; structure.&lt;/p&gt;
-- @param S3Settings [S3Settings] &lt;p&gt;The settings for the S3 target endpoint. For more information, see the &lt;code&gt;S3Settings&lt;/code&gt; structure.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ServerName [String] &lt;p&gt;The name of the server at the endpoint.&lt;/p&gt;
-- @param CertificateArn [String] &lt;p&gt;The Amazon Resource Name (ARN) used for SSL connection to the endpoint.&lt;/p&gt;
-- @param EndpointType [ReplicationEndpointTypeValue] &lt;p&gt;The type of endpoint.&lt;/p&gt;
-- @param ExternalId [String] &lt;p&gt; Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account. &lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.&lt;/p&gt;
-- @param ExtraConnectionAttributes [String] &lt;p&gt;Additional connection attributes used to connect to the endpoint.&lt;/p&gt;
-- @param DatabaseName [String] &lt;p&gt;The name of the database at the endpoint.&lt;/p&gt;
-- @param DynamoDbSettings [DynamoDbSettings] &lt;p&gt;The settings for the target DynamoDB database. For more information, see the &lt;code&gt;DynamoDBSettings&lt;/code&gt; structure.&lt;/p&gt;
-- @param SslMode [DmsSslModeValue] &lt;p&gt;The SSL mode used to connect to the endpoint.&lt;/p&gt; &lt;p&gt;SSL mode can be one of four values: none, require, verify-ca, verify-full. &lt;/p&gt; &lt;p&gt;The default value is none.&lt;/p&gt;
-- @param EngineName [String] &lt;p&gt;The database engine name. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, SYBASE, DYNAMODB, MONGODB, and SQLSERVER.&lt;/p&gt;
-- @param EndpointIdentifier [String] &lt;p&gt;The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.&lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port value used to access the endpoint.&lt;/p&gt;
function M.Endpoint(Username, Status, MongoDbSettings, S3Settings, EndpointArn, ServerName, CertificateArn, EndpointType, ExternalId, KmsKeyId, ExtraConnectionAttributes, DatabaseName, DynamoDbSettings, SslMode, EngineName, EndpointIdentifier, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Username"] = Username,
		["Status"] = Status,
		["MongoDbSettings"] = MongoDbSettings,
		["S3Settings"] = S3Settings,
		["EndpointArn"] = EndpointArn,
		["ServerName"] = ServerName,
		["CertificateArn"] = CertificateArn,
		["EndpointType"] = EndpointType,
		["ExternalId"] = ExternalId,
		["KmsKeyId"] = KmsKeyId,
		["ExtraConnectionAttributes"] = ExtraConnectionAttributes,
		["DatabaseName"] = DatabaseName,
		["DynamoDbSettings"] = DynamoDbSettings,
		["SslMode"] = SslMode,
		["EngineName"] = EngineName,
		["EndpointIdentifier"] = EndpointIdentifier,
		["Port"] = Port,
	}
	M.AssertEndpoint(t)
	return t
end

local ImportCertificateResponse_keys = { "Certificate" = true, nil }

function M.AssertImportCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateResponse to be of type 'table'")
	if struct["Certificate"] then M.AssertCertificate(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(ImportCertificateResponse_keys[k], "ImportCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateResponse
--  
-- @param Certificate [Certificate] &lt;p&gt;The certificate to be uploaded.&lt;/p&gt;
function M.ImportCertificateResponse(Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportCertificateResponse")
	local t = { 
		["Certificate"] = Certificate,
	}
	M.AssertImportCertificateResponse(t)
	return t
end

local CreateEndpointMessage_keys = { "Username" = true, "CertificateArn" = true, "MongoDbSettings" = true, "S3Settings" = true, "Tags" = true, "ServerName" = true, "EndpointType" = true, "KmsKeyId" = true, "ExtraConnectionAttributes" = true, "DatabaseName" = true, "DynamoDbSettings" = true, "SslMode" = true, "EngineName" = true, "Password" = true, "EndpointIdentifier" = true, "Port" = true, nil }

function M.AssertCreateEndpointMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointMessage to be of type 'table'")
	assert(struct["EndpointIdentifier"], "Expected key EndpointIdentifier to exist in table")
	assert(struct["EndpointType"], "Expected key EndpointType to exist in table")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["CertificateArn"] then M.AssertString(struct["CertificateArn"]) end
	if struct["MongoDbSettings"] then M.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then M.AssertS3Settings(struct["S3Settings"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ServerName"] then M.AssertString(struct["ServerName"]) end
	if struct["EndpointType"] then M.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["ExtraConnectionAttributes"] then M.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then M.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then M.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["Password"] then M.AssertSecretString(struct["Password"]) end
	if struct["EndpointIdentifier"] then M.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(CreateEndpointMessage_keys[k], "CreateEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointMessage
-- &lt;p/&gt;
-- @param Username [String] &lt;p&gt;The user name to be used to login to the endpoint database.&lt;/p&gt;
-- @param CertificateArn [String] &lt;p&gt;The Amazon Resource Number (ARN) for the certificate.&lt;/p&gt;
-- @param MongoDbSettings [MongoDbSettings] &lt;p&gt;Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the &lt;b&gt;Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service&lt;/b&gt; section at &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html&quot;&gt; Using Amazon S3 as a Target for AWS Database Migration Service&lt;/a&gt;. &lt;/p&gt;
-- @param S3Settings [S3Settings] &lt;p&gt;Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the &lt;b&gt;Extra Connection Attributes&lt;/b&gt; section at &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html&quot;&gt; Using Amazon S3 as a Target for AWS Database Migration Service&lt;/a&gt;. &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;Tags to be added to the endpoint.&lt;/p&gt;
-- @param ServerName [String] &lt;p&gt;The name of the server where the endpoint database resides.&lt;/p&gt;
-- @param EndpointType [ReplicationEndpointTypeValue] &lt;p&gt;The type of endpoint.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.&lt;/p&gt;
-- @param ExtraConnectionAttributes [String] &lt;p&gt;Additional attributes associated with the connection.&lt;/p&gt;
-- @param DatabaseName [String] &lt;p&gt;The name of the endpoint database.&lt;/p&gt;
-- @param DynamoDbSettings [DynamoDbSettings] &lt;p&gt;Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the &lt;b&gt;Using Object Mapping to Migrate Data to DynamoDB&lt;/b&gt; section at &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html&quot;&gt; Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service&lt;/a&gt;. &lt;/p&gt;
-- @param SslMode [DmsSslModeValue] &lt;p&gt;The SSL mode to use for the SSL connection.&lt;/p&gt; &lt;p&gt;SSL mode can be one of four values: none, require, verify-ca, verify-full. &lt;/p&gt; &lt;p&gt;The default value is none.&lt;/p&gt;
-- @param EngineName [String] &lt;p&gt;The type of engine for the endpoint. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, SYBASE, DYNAMODB, MONGODB, and SQLSERVER.&lt;/p&gt;
-- @param Password [SecretString] &lt;p&gt;The password to be used to login to the endpoint database.&lt;/p&gt;
-- @param EndpointIdentifier [String] &lt;p&gt;The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.&lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port used by the endpoint database.&lt;/p&gt;
-- Required parameter: EndpointIdentifier
-- Required parameter: EndpointType
-- Required parameter: EngineName
function M.CreateEndpointMessage(Username, CertificateArn, MongoDbSettings, S3Settings, Tags, ServerName, EndpointType, KmsKeyId, ExtraConnectionAttributes, DatabaseName, DynamoDbSettings, SslMode, EngineName, Password, EndpointIdentifier, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEndpointMessage")
	local t = { 
		["Username"] = Username,
		["CertificateArn"] = CertificateArn,
		["MongoDbSettings"] = MongoDbSettings,
		["S3Settings"] = S3Settings,
		["Tags"] = Tags,
		["ServerName"] = ServerName,
		["EndpointType"] = EndpointType,
		["KmsKeyId"] = KmsKeyId,
		["ExtraConnectionAttributes"] = ExtraConnectionAttributes,
		["DatabaseName"] = DatabaseName,
		["DynamoDbSettings"] = DynamoDbSettings,
		["SslMode"] = SslMode,
		["EngineName"] = EngineName,
		["Password"] = Password,
		["EndpointIdentifier"] = EndpointIdentifier,
		["Port"] = Port,
	}
	M.AssertCreateEndpointMessage(t)
	return t
end

local RemoveTagsFromResourceMessage_keys = { "ResourceArn" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsFromResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceMessage to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	if struct["TagKeys"] then M.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceMessage_keys[k], "RemoveTagsFromResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceMessage
-- &lt;p/&gt;
-- @param ResourceArn [String] &lt;p&gt;&amp;gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be removed from.&lt;/p&gt;
-- @param TagKeys [KeyList] &lt;p&gt;The tag key (name) of the tag to be removed.&lt;/p&gt;
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceMessage(ResourceArn, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceMessage")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsFromResourceMessage(t)
	return t
end

local OrderableReplicationInstance_keys = { "StorageType" = true, "ReplicationInstanceClass" = true, "EngineVersion" = true, "IncludedAllocatedStorage" = true, "DefaultAllocatedStorage" = true, "MinAllocatedStorage" = true, "MaxAllocatedStorage" = true, nil }

function M.AssertOrderableReplicationInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableReplicationInstance to be of type 'table'")
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["ReplicationInstanceClass"] then M.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["IncludedAllocatedStorage"] then M.AssertInteger(struct["IncludedAllocatedStorage"]) end
	if struct["DefaultAllocatedStorage"] then M.AssertInteger(struct["DefaultAllocatedStorage"]) end
	if struct["MinAllocatedStorage"] then M.AssertInteger(struct["MinAllocatedStorage"]) end
	if struct["MaxAllocatedStorage"] then M.AssertInteger(struct["MaxAllocatedStorage"]) end
	for k,_ in pairs(struct) do
		assert(OrderableReplicationInstance_keys[k], "OrderableReplicationInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableReplicationInstance
-- &lt;p/&gt;
-- @param StorageType [String] &lt;p&gt;The type of storage used by the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceClass [String] &lt;p&gt;The compute and memory capacity of the replication instance.&lt;/p&gt; &lt;p&gt; Valid Values: &lt;code&gt;dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge &lt;/code&gt; &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The version of the replication engine.&lt;/p&gt;
-- @param IncludedAllocatedStorage [Integer] &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
-- @param DefaultAllocatedStorage [Integer] &lt;p&gt;The default amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
-- @param MinAllocatedStorage [Integer] &lt;p&gt;The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.&lt;/p&gt;
-- @param MaxAllocatedStorage [Integer] &lt;p&gt;The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.&lt;/p&gt;
function M.OrderableReplicationInstance(StorageType, ReplicationInstanceClass, EngineVersion, IncludedAllocatedStorage, DefaultAllocatedStorage, MinAllocatedStorage, MaxAllocatedStorage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableReplicationInstance")
	local t = { 
		["StorageType"] = StorageType,
		["ReplicationInstanceClass"] = ReplicationInstanceClass,
		["EngineVersion"] = EngineVersion,
		["IncludedAllocatedStorage"] = IncludedAllocatedStorage,
		["DefaultAllocatedStorage"] = DefaultAllocatedStorage,
		["MinAllocatedStorage"] = MinAllocatedStorage,
		["MaxAllocatedStorage"] = MaxAllocatedStorage,
	}
	M.AssertOrderableReplicationInstance(t)
	return t
end

local ReplicationInstance_keys = { "MultiAZ" = true, "AvailabilityZone" = true, "ReplicationInstancePrivateIpAddress" = true, "ReplicationInstanceArn" = true, "ReplicationInstancePrivateIpAddresses" = true, "ReplicationInstanceClass" = true, "ReplicationSubnetGroup" = true, "AutoMinorVersionUpgrade" = true, "ReplicationInstanceStatus" = true, "VpcSecurityGroups" = true, "KmsKeyId" = true, "InstanceCreateTime" = true, "ReplicationInstancePublicIpAddress" = true, "AllocatedStorage" = true, "EngineVersion" = true, "ReplicationInstancePublicIpAddresses" = true, "SecondaryAvailabilityZone" = true, "ReplicationInstanceIdentifier" = true, "PubliclyAccessible" = true, "PreferredMaintenanceWindow" = true, "PendingModifiedValues" = true, nil }

function M.AssertReplicationInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationInstance to be of type 'table'")
	if struct["MultiAZ"] then M.AssertBoolean(struct["MultiAZ"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["ReplicationInstancePrivateIpAddress"] then M.AssertString(struct["ReplicationInstancePrivateIpAddress"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["ReplicationInstancePrivateIpAddresses"] then M.AssertReplicationInstancePrivateIpAddressList(struct["ReplicationInstancePrivateIpAddresses"]) end
	if struct["ReplicationInstanceClass"] then M.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["ReplicationSubnetGroup"] then M.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["ReplicationInstanceStatus"] then M.AssertString(struct["ReplicationInstanceStatus"]) end
	if struct["VpcSecurityGroups"] then M.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["InstanceCreateTime"] then M.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["ReplicationInstancePublicIpAddress"] then M.AssertString(struct["ReplicationInstancePublicIpAddress"]) end
	if struct["AllocatedStorage"] then M.AssertInteger(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstancePublicIpAddresses"] then M.AssertReplicationInstancePublicIpAddressList(struct["ReplicationInstancePublicIpAddresses"]) end
	if struct["SecondaryAvailabilityZone"] then M.AssertString(struct["SecondaryAvailabilityZone"]) end
	if struct["ReplicationInstanceIdentifier"] then M.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["PubliclyAccessible"] then M.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["PendingModifiedValues"] then M.AssertReplicationPendingModifiedValues(struct["PendingModifiedValues"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationInstance_keys[k], "ReplicationInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationInstance
-- &lt;p/&gt;
-- @param MultiAZ [Boolean] &lt;p&gt; Specifies if the replication instance is a Multi-AZ deployment. You cannot set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The Availability Zone for the instance.&lt;/p&gt;
-- @param ReplicationInstancePrivateIpAddress [String] &lt;p&gt;The private IP address of the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
-- @param ReplicationInstancePrivateIpAddresses [ReplicationInstancePrivateIpAddressList] &lt;p&gt;The private IP address of the replication instance.&lt;/p&gt;
-- @param ReplicationInstanceClass [String] &lt;p&gt;The compute and memory capacity of the replication instance.&lt;/p&gt; &lt;p&gt; Valid Values: &lt;code&gt;dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge &lt;/code&gt; &lt;/p&gt;
-- @param ReplicationSubnetGroup [ReplicationSubnetGroup] &lt;p&gt;The subnet group for the replication instance.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [Boolean] &lt;p&gt;Boolean value indicating if minor version upgrades will be automatically applied to the instance.&lt;/p&gt;
-- @param ReplicationInstanceStatus [String] &lt;p&gt;The status of the replication instance.&lt;/p&gt;
-- @param VpcSecurityGroups [VpcSecurityGroupMembershipList] &lt;p&gt;The VPC security group for the instance.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The KMS key identifier that is used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.&lt;/p&gt;
-- @param InstanceCreateTime [TStamp] &lt;p&gt;The time the replication instance was created.&lt;/p&gt;
-- @param ReplicationInstancePublicIpAddress [String] &lt;p&gt;The public IP address of the replication instance.&lt;/p&gt;
-- @param AllocatedStorage [Integer] &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt;
-- @param ReplicationInstancePublicIpAddresses [ReplicationInstancePublicIpAddressList] &lt;p&gt;The public IP address of the replication instance.&lt;/p&gt;
-- @param SecondaryAvailabilityZone [String] &lt;p&gt;The availability zone of the standby replication instance in a Multi-AZ deployment.&lt;/p&gt;
-- @param ReplicationInstanceIdentifier [String] &lt;p&gt;The replication instance identifier. This parameter is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;myrepinstance&lt;/code&gt; &lt;/p&gt;
-- @param PubliclyAccessible [Boolean] &lt;p&gt; Specifies the accessibility options for the replication instance. A value of &lt;code&gt;true&lt;/code&gt; represents an instance with a public IP address. A value of &lt;code&gt;false&lt;/code&gt; represents an instance with a private IP address. The default value is &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The maintenance window times for the replication instance.&lt;/p&gt;
-- @param PendingModifiedValues [ReplicationPendingModifiedValues] &lt;p&gt;The pending modification values.&lt;/p&gt;
function M.ReplicationInstance(MultiAZ, AvailabilityZone, ReplicationInstancePrivateIpAddress, ReplicationInstanceArn, ReplicationInstancePrivateIpAddresses, ReplicationInstanceClass, ReplicationSubnetGroup, AutoMinorVersionUpgrade, ReplicationInstanceStatus, VpcSecurityGroups, KmsKeyId, InstanceCreateTime, ReplicationInstancePublicIpAddress, AllocatedStorage, EngineVersion, ReplicationInstancePublicIpAddresses, SecondaryAvailabilityZone, ReplicationInstanceIdentifier, PubliclyAccessible, PreferredMaintenanceWindow, PendingModifiedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationInstance")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["AvailabilityZone"] = AvailabilityZone,
		["ReplicationInstancePrivateIpAddress"] = ReplicationInstancePrivateIpAddress,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
		["ReplicationInstancePrivateIpAddresses"] = ReplicationInstancePrivateIpAddresses,
		["ReplicationInstanceClass"] = ReplicationInstanceClass,
		["ReplicationSubnetGroup"] = ReplicationSubnetGroup,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["ReplicationInstanceStatus"] = ReplicationInstanceStatus,
		["VpcSecurityGroups"] = VpcSecurityGroups,
		["KmsKeyId"] = KmsKeyId,
		["InstanceCreateTime"] = InstanceCreateTime,
		["ReplicationInstancePublicIpAddress"] = ReplicationInstancePublicIpAddress,
		["AllocatedStorage"] = AllocatedStorage,
		["EngineVersion"] = EngineVersion,
		["ReplicationInstancePublicIpAddresses"] = ReplicationInstancePublicIpAddresses,
		["SecondaryAvailabilityZone"] = SecondaryAvailabilityZone,
		["ReplicationInstanceIdentifier"] = ReplicationInstanceIdentifier,
		["PubliclyAccessible"] = PubliclyAccessible,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["PendingModifiedValues"] = PendingModifiedValues,
	}
	M.AssertReplicationInstance(t)
	return t
end

local AddTagsToResourceResponse_keys = { nil }

function M.AssertAddTagsToResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceResponse_keys[k], "AddTagsToResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResponse
-- &lt;p/&gt;
function M.AddTagsToResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceResponse")
	local t = { 
	}
	M.AssertAddTagsToResourceResponse(t)
	return t
end

local ResourceAlreadyExistsFault_keys = { "message" = true, nil }

function M.AssertResourceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsFault to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsFault_keys[k], "ResourceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsFault
-- &lt;p&gt;The resource you are attempting to create already exists.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.ResourceAlreadyExistsFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsFault")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceAlreadyExistsFault(t)
	return t
end

local ReplicationSubnetGroupDoesNotCoverEnoughAZs_keys = { "message" = true, nil }

function M.AssertReplicationSubnetGroupDoesNotCoverEnoughAZs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationSubnetGroupDoesNotCoverEnoughAZs to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationSubnetGroupDoesNotCoverEnoughAZs_keys[k], "ReplicationSubnetGroupDoesNotCoverEnoughAZs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationSubnetGroupDoesNotCoverEnoughAZs
-- &lt;p&gt;The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.ReplicationSubnetGroupDoesNotCoverEnoughAZs(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationSubnetGroupDoesNotCoverEnoughAZs")
	local t = { 
		["message"] = message,
	}
	M.AssertReplicationSubnetGroupDoesNotCoverEnoughAZs(t)
	return t
end

local DescribeReplicationTasksResponse_keys = { "Marker" = true, "ReplicationTasks" = true, nil }

function M.AssertDescribeReplicationTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationTasksResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReplicationTasks"] then M.AssertReplicationTaskList(struct["ReplicationTasks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationTasksResponse_keys[k], "DescribeReplicationTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationTasksResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param ReplicationTasks [ReplicationTaskList] &lt;p&gt;A description of the replication tasks.&lt;/p&gt;
function M.DescribeReplicationTasksResponse(Marker, ReplicationTasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationTasksResponse")
	local t = { 
		["Marker"] = Marker,
		["ReplicationTasks"] = ReplicationTasks,
	}
	M.AssertDescribeReplicationTasksResponse(t)
	return t
end

local ImportCertificateMessage_keys = { "CertificateIdentifier" = true, "Tags" = true, "CertificatePem" = true, "CertificateWallet" = true, nil }

function M.AssertImportCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCertificateMessage to be of type 'table'")
	assert(struct["CertificateIdentifier"], "Expected key CertificateIdentifier to exist in table")
	if struct["CertificateIdentifier"] then M.AssertString(struct["CertificateIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["CertificatePem"] then M.AssertString(struct["CertificatePem"]) end
	if struct["CertificateWallet"] then M.AssertCertificateWallet(struct["CertificateWallet"]) end
	for k,_ in pairs(struct) do
		assert(ImportCertificateMessage_keys[k], "ImportCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCertificateMessage
--  
-- @param CertificateIdentifier [String] &lt;p&gt;The customer-assigned name of the certificate. Valid characters are A-z and 0-9.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tags associated with the certificate.&lt;/p&gt;
-- @param CertificatePem [String] &lt;p&gt;The contents of the .pem X.509 certificate file for the certificate.&lt;/p&gt;
-- @param CertificateWallet [CertificateWallet] &lt;p&gt;The location of the imported Oracle Wallet certificate for use with SSL.&lt;/p&gt;
-- Required parameter: CertificateIdentifier
function M.ImportCertificateMessage(CertificateIdentifier, Tags, CertificatePem, CertificateWallet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportCertificateMessage")
	local t = { 
		["CertificateIdentifier"] = CertificateIdentifier,
		["Tags"] = Tags,
		["CertificatePem"] = CertificatePem,
		["CertificateWallet"] = CertificateWallet,
	}
	M.AssertImportCertificateMessage(t)
	return t
end

local CreateReplicationSubnetGroupResponse_keys = { "ReplicationSubnetGroup" = true, nil }

function M.AssertCreateReplicationSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationSubnetGroupResponse to be of type 'table'")
	if struct["ReplicationSubnetGroup"] then M.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationSubnetGroupResponse_keys[k], "CreateReplicationSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationSubnetGroupResponse
-- &lt;p/&gt;
-- @param ReplicationSubnetGroup [ReplicationSubnetGroup] &lt;p&gt;The replication subnet group that was created.&lt;/p&gt;
function M.CreateReplicationSubnetGroupResponse(ReplicationSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationSubnetGroupResponse")
	local t = { 
		["ReplicationSubnetGroup"] = ReplicationSubnetGroup,
	}
	M.AssertCreateReplicationSubnetGroupResponse(t)
	return t
end

local DescribeEndpointTypesMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeEndpointTypesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointTypesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEndpointTypesMessage_keys[k], "DescribeEndpointTypesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointTypesMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt; The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. &lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: Minimum 20, maximum 100.&lt;/p&gt;
-- @param Filters [FilterList] &lt;p&gt;Filters applied to the describe action.&lt;/p&gt; &lt;p&gt;Valid filter names: engine-name | endpoint-type&lt;/p&gt;
function M.DescribeEndpointTypesMessage(Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointTypesMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeEndpointTypesMessage(t)
	return t
end

local ModifyReplicationSubnetGroupResponse_keys = { "ReplicationSubnetGroup" = true, nil }

function M.AssertModifyReplicationSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationSubnetGroupResponse to be of type 'table'")
	if struct["ReplicationSubnetGroup"] then M.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationSubnetGroupResponse_keys[k], "ModifyReplicationSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationSubnetGroupResponse
-- &lt;p/&gt;
-- @param ReplicationSubnetGroup [ReplicationSubnetGroup] &lt;p&gt;The modified replication subnet group.&lt;/p&gt;
function M.ModifyReplicationSubnetGroupResponse(ReplicationSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationSubnetGroupResponse")
	local t = { 
		["ReplicationSubnetGroup"] = ReplicationSubnetGroup,
	}
	M.AssertModifyReplicationSubnetGroupResponse(t)
	return t
end

local DescribeEventSubscriptionsResponse_keys = { "Marker" = true, "EventSubscriptionsList" = true, nil }

function M.AssertDescribeEventSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["EventSubscriptionsList"] then M.AssertEventSubscriptionsList(struct["EventSubscriptionsList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventSubscriptionsResponse_keys[k], "DescribeEventSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsResponse
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;. &lt;/p&gt;
-- @param EventSubscriptionsList [EventSubscriptionsList] &lt;p&gt;A list of event subscriptions.&lt;/p&gt;
function M.DescribeEventSubscriptionsResponse(Marker, EventSubscriptionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventSubscriptionsResponse")
	local t = { 
		["Marker"] = Marker,
		["EventSubscriptionsList"] = EventSubscriptionsList,
	}
	M.AssertDescribeEventSubscriptionsResponse(t)
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
-- &lt;p/&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt; A list of event categories for a source type that you want to subscribe to. You can see a list of the categories for a given source type by calling the &lt;b&gt;DescribeEventCategories&lt;/b&gt; action or in the topic &lt;a href=&quot;http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html&quot;&gt; Working with Events and Notifications&lt;/a&gt; in the AWS Database Migration Service User Guide. &lt;/p&gt;
-- @param SourceType [String] &lt;p&gt; The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to &lt;code&gt;replication-instance&lt;/code&gt;. If this value is not specified, all events are returned. &lt;/p&gt; &lt;p&gt;Valid values: replication-instance | migration-task&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A tag to be attached to the event subscription.&lt;/p&gt;
-- @param Enabled [BooleanOptional] &lt;p&gt; A Boolean value; set to &lt;b&gt;true&lt;/b&gt; to activate the subscription, or set to &lt;b&gt;false&lt;/b&gt; to create the subscription but not activate it. &lt;/p&gt;
-- @param SnsTopicArn [String] &lt;p&gt; The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it. &lt;/p&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the DMS event notification subscription. &lt;/p&gt; &lt;p&gt;Constraints: The name must be less than 255 characters. &lt;/p&gt;
-- @param SourceIds [SourceIdsList] &lt;p&gt; The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens. &lt;/p&gt;
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

local DeleteEventSubscriptionResponse_keys = { "EventSubscription" = true, nil }

function M.AssertDeleteEventSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionResponse to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEventSubscriptionResponse_keys[k], "DeleteEventSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionResponse
-- &lt;p/&gt;
-- @param EventSubscription [EventSubscription] &lt;p&gt;The event subscription that was deleted.&lt;/p&gt;
function M.DeleteEventSubscriptionResponse(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionResponse")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertDeleteEventSubscriptionResponse(t)
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
-- &lt;p/&gt;
function M.DescribeAccountAttributesMessage(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesMessage")
	local t = { 
	}
	M.AssertDescribeAccountAttributesMessage(t)
	return t
end

local RefreshSchemasStatus_keys = { "Status" = true, "LastFailureMessage" = true, "LastRefreshDate" = true, "EndpointArn" = true, "ReplicationInstanceArn" = true, nil }

function M.AssertRefreshSchemasStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshSchemasStatus to be of type 'table'")
	if struct["Status"] then M.AssertRefreshSchemasStatusTypeValue(struct["Status"]) end
	if struct["LastFailureMessage"] then M.AssertString(struct["LastFailureMessage"]) end
	if struct["LastRefreshDate"] then M.AssertTStamp(struct["LastRefreshDate"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	if struct["ReplicationInstanceArn"] then M.AssertString(struct["ReplicationInstanceArn"]) end
	for k,_ in pairs(struct) do
		assert(RefreshSchemasStatus_keys[k], "RefreshSchemasStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshSchemasStatus
-- &lt;p/&gt;
-- @param Status [RefreshSchemasStatusTypeValue] &lt;p&gt;The status of the schema.&lt;/p&gt;
-- @param LastFailureMessage [String] &lt;p&gt;The last failure message for the schema.&lt;/p&gt;
-- @param LastRefreshDate [TStamp] &lt;p&gt;The date the schema was last refreshed.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.&lt;/p&gt;
-- @param ReplicationInstanceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the replication instance.&lt;/p&gt;
function M.RefreshSchemasStatus(Status, LastFailureMessage, LastRefreshDate, EndpointArn, ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshSchemasStatus")
	local t = { 
		["Status"] = Status,
		["LastFailureMessage"] = LastFailureMessage,
		["LastRefreshDate"] = LastRefreshDate,
		["EndpointArn"] = EndpointArn,
		["ReplicationInstanceArn"] = ReplicationInstanceArn,
	}
	M.AssertRefreshSchemasStatus(t)
	return t
end

local EventSubscription_keys = { "Status" = true, "SubscriptionCreationTime" = true, "SourceType" = true, "EventCategoriesList" = true, "SourceIdsList" = true, "CustSubscriptionId" = true, "Enabled" = true, "SnsTopicArn" = true, "CustomerAwsId" = true, nil }

function M.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["SubscriptionCreationTime"] then M.AssertString(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then M.AssertEventCategoriesList(struct["EventCategoriesList"]) end
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
-- &lt;p/&gt;
-- @param Status [String] &lt;p&gt;The status of the AWS DMS event notification subscription.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;p&gt;Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist&lt;/p&gt; &lt;p&gt;The status &quot;no-permission&quot; indicates that AWS DMS no longer has permission to post to the SNS topic. The status &quot;topic-not-exist&quot; indicates that the topic was deleted after the subscription was created.&lt;/p&gt;
-- @param SubscriptionCreationTime [String] &lt;p&gt;The time the RDS event notification subscription was created.&lt;/p&gt;
-- @param SourceType [String] &lt;p&gt; The type of AWS DMS resource that generates events. &lt;/p&gt; &lt;p&gt;Valid values: replication-instance | replication-server | security-group | migration-task&lt;/p&gt;
-- @param EventCategoriesList [EventCategoriesList] &lt;p&gt;A lists of event categories.&lt;/p&gt;
-- @param SourceIdsList [SourceIdsList] &lt;p&gt;A list of source Ids for the event subscription.&lt;/p&gt;
-- @param CustSubscriptionId [String] &lt;p&gt;The AWS DMS event notification subscription Id.&lt;/p&gt;
-- @param Enabled [Boolean] &lt;p&gt;Boolean value that indicates if the event subscription is enabled.&lt;/p&gt;
-- @param SnsTopicArn [String] &lt;p&gt;The topic ARN of the AWS DMS event notification subscription.&lt;/p&gt;
-- @param CustomerAwsId [String] &lt;p&gt;The AWS customer account associated with the AWS DMS event notification subscription.&lt;/p&gt;
function M.EventSubscription(Status, SubscriptionCreationTime, SourceType, EventCategoriesList, SourceIdsList, CustSubscriptionId, Enabled, SnsTopicArn, CustomerAwsId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["Status"] = Status,
		["SubscriptionCreationTime"] = SubscriptionCreationTime,
		["SourceType"] = SourceType,
		["EventCategoriesList"] = EventCategoriesList,
		["SourceIdsList"] = SourceIdsList,
		["CustSubscriptionId"] = CustSubscriptionId,
		["Enabled"] = Enabled,
		["SnsTopicArn"] = SnsTopicArn,
		["CustomerAwsId"] = CustomerAwsId,
	}
	M.AssertEventSubscription(t)
	return t
end

local SubnetAlreadyInUse_keys = { "message" = true, nil }

function M.AssertSubnetAlreadyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetAlreadyInUse to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SubnetAlreadyInUse_keys[k], "SubnetAlreadyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetAlreadyInUse
-- &lt;p&gt;The specified subnet is already in use.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p/&gt;
function M.SubnetAlreadyInUse(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetAlreadyInUse")
	local t = { 
		["message"] = message,
	}
	M.AssertSubnetAlreadyInUse(t)
	return t
end

local StopReplicationTaskMessage_keys = { "ReplicationTaskArn" = true, nil }

function M.AssertStopReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then M.AssertString(struct["ReplicationTaskArn"]) end
	for k,_ in pairs(struct) do
		assert(StopReplicationTaskMessage_keys[k], "StopReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopReplicationTaskMessage
-- &lt;p/&gt;
-- @param ReplicationTaskArn [String] &lt;p&gt;The Amazon Resource Number(ARN) of the replication task to be stopped.&lt;/p&gt;
-- Required parameter: ReplicationTaskArn
function M.StopReplicationTaskMessage(ReplicationTaskArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopReplicationTaskMessage")
	local t = { 
		["ReplicationTaskArn"] = ReplicationTaskArn,
	}
	M.AssertStopReplicationTaskMessage(t)
	return t
end

function M.AssertDmsSslModeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DmsSslModeValue to be of type 'string'")
end

--  
function M.DmsSslModeValue(str)
	M.AssertDmsSslModeValue(str)
	return str
end

function M.AssertStartReplicationTaskTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StartReplicationTaskTypeValue to be of type 'string'")
end

--  
function M.StartReplicationTaskTypeValue(str)
	M.AssertStartReplicationTaskTypeValue(str)
	return str
end

function M.AssertRefreshSchemasStatusTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RefreshSchemasStatusTypeValue to be of type 'string'")
end

--  
function M.RefreshSchemasStatusTypeValue(str)
	M.AssertRefreshSchemasStatusTypeValue(str)
	return str
end

function M.AssertReplicationEndpointTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationEndpointTypeValue to be of type 'string'")
end

--  
function M.ReplicationEndpointTypeValue(str)
	M.AssertReplicationEndpointTypeValue(str)
	return str
end

function M.AssertMigrationTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MigrationTypeValue to be of type 'string'")
end

--  
function M.MigrationTypeValue(str)
	M.AssertMigrationTypeValue(str)
	return str
end

function M.AssertAuthTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthTypeValue to be of type 'string'")
end

--  
function M.AuthTypeValue(str)
	M.AssertAuthTypeValue(str)
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

function M.AssertSecretString(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretString to be of type 'string'")
end

--  
function M.SecretString(str)
	M.AssertSecretString(str)
	return str
end

function M.AssertNestingLevelValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NestingLevelValue to be of type 'string'")
end

--  
function M.NestingLevelValue(str)
	M.AssertNestingLevelValue(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertAuthMechanismValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthMechanismValue to be of type 'string'")
end

--  
function M.AuthMechanismValue(str)
	M.AssertAuthMechanismValue(str)
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

function M.AssertCompressionTypeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionTypeValue to be of type 'string'")
end

--  
function M.CompressionTypeValue(str)
	M.AssertCompressionTypeValue(str)
	return str
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

function M.AssertCertificateWallet(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CertificateWallet to be of type 'string'")
end

function M.CertificateWallet(blob)
	M.AssertCertificateWallet(blob)
	return blob
end

function M.AssertOrderableReplicationInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableReplicationInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOrderableReplicationInstance(v)
	end
end

--  
-- List of OrderableReplicationInstance objects
function M.OrderableReplicationInstanceList(list)
	M.AssertOrderableReplicationInstanceList(list)
	return list
end

function M.AssertSupportedEndpointTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedEndpointTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSupportedEndpointType(v)
	end
end

--  
-- List of SupportedEndpointType objects
function M.SupportedEndpointTypeList(list)
	M.AssertSupportedEndpointTypeList(list)
	return list
end

function M.AssertEventCategoryGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoryGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventCategoryGroup(v)
	end
end

--  
-- List of EventCategoryGroup objects
function M.EventCategoryGroupList(list)
	M.AssertEventCategoryGroupList(list)
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

function M.AssertConnectionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConnection(v)
	end
end

--  
-- List of Connection objects
function M.ConnectionList(list)
	M.AssertConnectionList(list)
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

function M.AssertEndpointList(list)
	assert(list)
	assert(type(list) == "table", "Expected EndpointList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEndpoint(v)
	end
end

--  
-- List of Endpoint objects
function M.EndpointList(list)
	M.AssertEndpointList(list)
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

function M.AssertReplicationInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationInstance(v)
	end
end

--  
-- List of ReplicationInstance objects
function M.ReplicationInstanceList(list)
	M.AssertReplicationInstanceList(list)
	return list
end

function M.AssertReplicationInstancePrivateIpAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstancePrivateIpAddressList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReplicationInstancePrivateIpAddressList(list)
	M.AssertReplicationInstancePrivateIpAddressList(list)
	return list
end

function M.AssertReplicationInstancePublicIpAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationInstancePublicIpAddressList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReplicationInstancePublicIpAddressList(list)
	M.AssertReplicationInstancePublicIpAddressList(list)
	return list
end

function M.AssertReplicationTaskList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationTaskList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationTask(v)
	end
end

--  
-- List of ReplicationTask objects
function M.ReplicationTaskList(list)
	M.AssertReplicationTaskList(list)
	return list
end

function M.AssertSchemaList(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SchemaList(list)
	M.AssertSchemaList(list)
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

function M.AssertTableStatisticsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableStatisticsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTableStatistics(v)
	end
end

--  
-- List of TableStatistics objects
function M.TableStatisticsList(list)
	M.AssertTableStatisticsList(list)
	return list
end

function M.AssertTableListToReload(list)
	assert(list)
	assert(type(list) == "table", "Expected TableListToReload to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTableToReload(v)
	end
end

--  
-- List of TableToReload objects
function M.TableListToReload(list)
	M.AssertTableListToReload(list)
	return list
end

function M.AssertReplicationSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationSubnetGroup(v)
	end
end

--  
-- List of ReplicationSubnetGroup objects
function M.ReplicationSubnetGroups(list)
	M.AssertReplicationSubnetGroups(list)
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- RefreshSchemas
-- @param RefreshSchemasMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RefreshSchemasAsync(RefreshSchemasMessage, cb)
	assert(RefreshSchemasMessage, "You must provide a RefreshSchemasMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.RefreshSchemas",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RefreshSchemasMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCertificates
-- @param DescribeCertificatesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificatesAsync(DescribeCertificatesMessage, cb)
	assert(DescribeCertificatesMessage, "You must provide a DescribeCertificatesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCertificatesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReplicationInstances
-- @param DescribeReplicationInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReplicationInstancesAsync(DescribeReplicationInstancesMessage, cb)
	assert(DescribeReplicationInstancesMessage, "You must provide a DescribeReplicationInstancesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReplicationInstancesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReplicationSubnetGroup
-- @param CreateReplicationSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReplicationSubnetGroupAsync(CreateReplicationSubnetGroupMessage, cb)
	assert(CreateReplicationSubnetGroupMessage, "You must provide a CreateReplicationSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateReplicationSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReplicationSubnetGroupMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEvents",
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEventSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventSubscriptionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReplicationTask
-- @param CreateReplicationTaskMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReplicationTaskAsync(CreateReplicationTaskMessage, cb)
	assert(CreateReplicationTaskMessage, "You must provide a CreateReplicationTaskMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateReplicationTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReplicationTaskMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReplicationInstance
-- @param DeleteReplicationInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReplicationInstanceAsync(DeleteReplicationInstanceMessage, cb)
	assert(DeleteReplicationInstanceMessage, "You must provide a DeleteReplicationInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteReplicationInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReplicationInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyReplicationInstance
-- @param ModifyReplicationInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyReplicationInstanceAsync(ModifyReplicationInstanceMessage, cb)
	assert(ModifyReplicationInstanceMessage, "You must provide a ModifyReplicationInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyReplicationInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyReplicationInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTableStatistics
-- @param DescribeTableStatisticsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTableStatisticsAsync(DescribeTableStatisticsMessage, cb)
	assert(DescribeTableStatisticsMessage, "You must provide a DescribeTableStatisticsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeTableStatistics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTableStatisticsMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEventCategories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventCategoriesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartReplicationTask
-- @param StartReplicationTaskMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StartReplicationTaskAsync(StartReplicationTaskMessage, cb)
	assert(StartReplicationTaskMessage, "You must provide a StartReplicationTaskMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.StartReplicationTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartReplicationTaskMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReplicationSubnetGroup
-- @param DeleteReplicationSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReplicationSubnetGroupAsync(DeleteReplicationSubnetGroupMessage, cb)
	assert(DeleteReplicationSubnetGroupMessage, "You must provide a DeleteReplicationSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteReplicationSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReplicationSubnetGroupMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToResourceMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeAccountAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountAttributesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCertificate
-- @param DeleteCertificateMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCertificateAsync(DeleteCertificateMessage, cb)
	assert(DeleteCertificateMessage, "You must provide a DeleteCertificateMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCertificateMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestConnection
-- @param TestConnectionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.TestConnectionAsync(TestConnectionMessage, cb)
	assert(TestConnectionMessage, "You must provide a TestConnectionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.TestConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TestConnectionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEndpoints
-- @param DescribeEndpointsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEndpointsAsync(DescribeEndpointsMessage, cb)
	assert(DescribeEndpointsMessage, "You must provide a DescribeEndpointsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEndpoints",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEndpointsMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromResourceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateEndpoint
-- @param CreateEndpointMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEndpointAsync(CreateEndpointMessage, cb)
	assert(CreateEndpointMessage, "You must provide a CreateEndpointMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateEndpointMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReplicationTask
-- @param DeleteReplicationTaskMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReplicationTaskAsync(DeleteReplicationTaskMessage, cb)
	assert(DeleteReplicationTaskMessage, "You must provide a DeleteReplicationTaskMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteReplicationTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReplicationTaskMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRefreshSchemasStatus
-- @param DescribeRefreshSchemasStatusMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRefreshSchemasStatusAsync(DescribeRefreshSchemasStatusMessage, cb)
	assert(DescribeRefreshSchemasStatusMessage, "You must provide a DescribeRefreshSchemasStatusMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeRefreshSchemasStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRefreshSchemasStatusMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyEndpoint
-- @param ModifyEndpointMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyEndpointAsync(ModifyEndpointMessage, cb)
	assert(ModifyEndpointMessage, "You must provide a ModifyEndpointMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyEndpointMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReloadTables
-- @param ReloadTablesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ReloadTablesAsync(ReloadTablesMessage, cb)
	assert(ReloadTablesMessage, "You must provide a ReloadTablesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ReloadTables",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReloadTablesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyReplicationSubnetGroup
-- @param ModifyReplicationSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyReplicationSubnetGroupAsync(ModifyReplicationSubnetGroupMessage, cb)
	assert(ModifyReplicationSubnetGroupMessage, "You must provide a ModifyReplicationSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyReplicationSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyReplicationSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSchemas
-- @param DescribeSchemasMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSchemasAsync(DescribeSchemasMessage, cb)
	assert(DescribeSchemasMessage, "You must provide a DescribeSchemasMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeSchemas",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSchemasMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteEventSubscriptionMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyEventSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConnections
-- @param DescribeConnectionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConnectionsAsync(DescribeConnectionsMessage, cb)
	assert(DescribeConnectionsMessage, "You must provide a DescribeConnectionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeConnections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConnectionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReplicationInstance
-- @param CreateReplicationInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReplicationInstanceAsync(CreateReplicationInstanceMessage, cb)
	assert(CreateReplicationInstanceMessage, "You must provide a CreateReplicationInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateReplicationInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReplicationInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportCertificate
-- @param ImportCertificateMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ImportCertificateAsync(ImportCertificateMessage, cb)
	assert(ImportCertificateMessage, "You must provide a ImportCertificateMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ImportCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ImportCertificateMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReplicationSubnetGroups
-- @param DescribeReplicationSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReplicationSubnetGroupsAsync(DescribeReplicationSubnetGroupsMessage, cb)
	assert(DescribeReplicationSubnetGroupsMessage, "You must provide a DescribeReplicationSubnetGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReplicationSubnetGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopReplicationTask
-- @param StopReplicationTaskMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StopReplicationTaskAsync(StopReplicationTaskMessage, cb)
	assert(StopReplicationTaskMessage, "You must provide a StopReplicationTaskMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.StopReplicationTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopReplicationTaskMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEndpointTypes
-- @param DescribeEndpointTypesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEndpointTypesAsync(DescribeEndpointTypesMessage, cb)
	assert(DescribeEndpointTypesMessage, "You must provide a DescribeEndpointTypesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeEndpointTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEndpointTypesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReplicationTasks
-- @param DescribeReplicationTasksMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReplicationTasksAsync(DescribeReplicationTasksMessage, cb)
	assert(DescribeReplicationTasksMessage, "You must provide a DescribeReplicationTasksMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeReplicationTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReplicationTasksMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.CreateEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateEventSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEndpoint
-- @param DeleteEndpointMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEndpointAsync(DeleteEndpointMessage, cb)
	assert(DeleteEndpointMessage, "You must provide a DeleteEndpointMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DeleteEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteEndpointMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrderableReplicationInstances
-- @param DescribeOrderableReplicationInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrderableReplicationInstancesAsync(DescribeOrderableReplicationInstancesMessage, cb)
	assert(DescribeOrderableReplicationInstancesMessage, "You must provide a DescribeOrderableReplicationInstancesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.DescribeOrderableReplicationInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOrderableReplicationInstancesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyReplicationTask
-- @param ModifyReplicationTaskMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyReplicationTaskAsync(ModifyReplicationTaskMessage, cb)
	assert(ModifyReplicationTaskMessage, "You must provide a ModifyReplicationTaskMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ModifyReplicationTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyReplicationTaskMessage, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDMSv20160101.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
