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
-- @param _SourceType [String] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | migration-task</p>
-- @param _Filters [FilterList] <p>Filters applied to the action.</p>
function M.DescribeEventCategoriesMessage(_SourceType, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesMessage")
	local t = { 
		["SourceType"] = _SourceType,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeEventCategoriesMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Connections [ConnectionList] <p>A description of the connections.</p>
function M.DescribeConnectionsResponse(_Marker, _Connections, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsResponse")
	local t = { 
		["Marker"] = _Marker,
		["Connections"] = _Connections,
	}
	asserts.AssertDescribeConnectionsResponse(t)
	return t
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
function M.DeleteReplicationSubnetGroupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationSubnetGroupResponse")
	local t = { 
	}
	asserts.AssertDeleteReplicationSubnetGroupResponse(t)
	return t
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
-- @param _RefreshSchemasStatus [RefreshSchemasStatus] <p>The status of the schema.</p>
function M.DescribeRefreshSchemasStatusResponse(_RefreshSchemasStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRefreshSchemasStatusResponse")
	local t = { 
		["RefreshSchemasStatus"] = _RefreshSchemasStatus,
	}
	asserts.AssertDescribeRefreshSchemasStatusResponse(t)
	return t
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
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _TableStatistics [TableStatisticsList] <p>The table statistics.</p>
function M.DescribeTableStatisticsResponse(_ReplicationTaskArn, _Marker, _TableStatistics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableStatisticsResponse")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
		["Marker"] = _Marker,
		["TableStatistics"] = _TableStatistics,
	}
	asserts.AssertDescribeTableStatisticsResponse(t)
	return t
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
-- @param _CertificateArn [String] <p>The Amazon Resource Name (ARN) of the deleted certificate.</p>
-- Required parameter: CertificateArn
function M.DeleteCertificateMessage(_CertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateMessage")
	local t = { 
		["CertificateArn"] = _CertificateArn,
	}
	asserts.AssertDeleteCertificateMessage(t)
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
-- @param _EventCategories [EventCategoriesList] <p> A list of event categories for a source type that you want to subscribe to. Use the <code>DescribeEventCategories</code> action to see a list of event categories. </p>
-- @param _Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription. </p>
-- @param _SourceType [String] <p> The type of AWS DMS resource that generates the events you want to subscribe to. </p> <p>Valid values: replication-instance | migration-task</p>
-- @param _SubscriptionName [String] <p>The name of the AWS DMS event notification subscription to be modified.</p>
-- @param _SnsTopicArn [String] <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
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
-- @param _Max [Long] <p>The maximum allowed value for the quota.</p>
-- @param _AccountQuotaName [String] <p>The name of the AWS DMS quota for this AWS account.</p>
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

keys.InvalidCertificateFault = { ["message"] = true, nil }

function asserts.AssertInvalidCertificateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCertificateFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCertificateFault[k], "InvalidCertificateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCertificateFault
-- <p>The certificate was not valid.</p>
-- @param _message [ExceptionMessage] 
function M.InvalidCertificateFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCertificateFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidCertificateFault(t)
	return t
end

keys.MongoDbSettings = { ["Username"] = true, ["NestingLevel"] = true, ["AuthType"] = true, ["AuthSource"] = true, ["ServerName"] = true, ["AuthMechanism"] = true, ["DocsToInvestigate"] = true, ["DatabaseName"] = true, ["ExtractDocId"] = true, ["Password"] = true, ["Port"] = true, nil }

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
-- @param _Username [String] <p>The user name you use to access the MongoDB source endpoint. </p>
-- @param _NestingLevel [NestingLevelValue] <p> Specifies either document or table mode. </p> <p>Valid values: NONE, ONE</p> <p>Default value is NONE. Specify NONE to use document mode. Specify ONE to use table mode.</p>
-- @param _AuthType [AuthTypeValue] <p> The authentication type you use to access the MongoDB source endpoint.</p> <p>Valid values: NO, PASSWORD </p> <p>When NO is selected, user name and password parameters are not used and can be empty. </p>
-- @param _AuthSource [String] <p> The MongoDB database name. This attribute is not used when <code>authType=NO</code>. </p> <p>The default is admin.</p>
-- @param _ServerName [String] <p> The name of the server on the MongoDB source endpoint. </p>
-- @param _AuthMechanism [AuthMechanismValue] <p> The authentication mechanism you use to access the MongoDB source endpoint.</p> <p>Valid values: DEFAULT, MONGODB_CR, SCRAM_SHA_1 </p> <p>DEFAULT – For MongoDB version 2.x, use MONGODB_CR. For MongoDB version 3.x, use SCRAM_SHA_1. This attribute is not used when authType=No.</p>
-- @param _DocsToInvestigate [String] <p> Indicates the number of documents to preview to determine the document organization. Use this attribute when <code>NestingLevel</code> is set to ONE. </p> <p>Must be a positive value greater than 0. Default value is 1000.</p>
-- @param _DatabaseName [String] <p> The database name on the MongoDB source endpoint. </p>
-- @param _ExtractDocId [String] <p> Specifies the document ID. Use this attribute when <code>NestingLevel</code> is set to NONE. </p> <p>Default value is false. </p>
-- @param _Password [SecretString] <p> The password for the user account you use to access the MongoDB source endpoint. </p>
-- @param _Port [IntegerOptional] <p> The port value for the MongoDB source endpoint. </p>
function M.MongoDbSettings(_Username, _NestingLevel, _AuthType, _AuthSource, _ServerName, _AuthMechanism, _DocsToInvestigate, _DatabaseName, _ExtractDocId, _Password, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MongoDbSettings")
	local t = { 
		["Username"] = _Username,
		["NestingLevel"] = _NestingLevel,
		["AuthType"] = _AuthType,
		["AuthSource"] = _AuthSource,
		["ServerName"] = _ServerName,
		["AuthMechanism"] = _AuthMechanism,
		["DocsToInvestigate"] = _DocsToInvestigate,
		["DatabaseName"] = _DatabaseName,
		["ExtractDocId"] = _ExtractDocId,
		["Password"] = _Password,
		["Port"] = _Port,
	}
	asserts.AssertMongoDbSettings(t)
	return t
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
-- @param _EventSubscription [EventSubscription] <p>The modified event subscription.</p>
function M.ModifyEventSubscriptionResponse(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionResponse")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertModifyEventSubscriptionResponse(t)
	return t
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
-- @param _TablesLoading [Integer] <p>The number of tables currently loading for this task.</p>
-- @param _TablesQueued [Integer] <p>The number of tables queued for this task.</p>
-- @param _TablesErrored [Integer] <p>The number of errors that have occurred during this task.</p>
-- @param _FullLoadProgressPercent [Integer] <p>The percent complete for the full load migration task.</p>
-- @param _TablesLoaded [Integer] <p>The number of tables loaded for this task.</p>
-- @param _ElapsedTimeMillis [Long] <p>The elapsed time of the task, in milliseconds.</p>
function M.ReplicationTaskStats(_TablesLoading, _TablesQueued, _TablesErrored, _FullLoadProgressPercent, _TablesLoaded, _ElapsedTimeMillis, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationTaskStats")
	local t = { 
		["TablesLoading"] = _TablesLoading,
		["TablesQueued"] = _TablesQueued,
		["TablesErrored"] = _TablesErrored,
		["FullLoadProgressPercent"] = _FullLoadProgressPercent,
		["TablesLoaded"] = _TablesLoaded,
		["ElapsedTimeMillis"] = _ElapsedTimeMillis,
	}
	asserts.AssertReplicationTaskStats(t)
	return t
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
-- @param _ServiceAccessRoleArn [String] <p> The Amazon Resource Name (ARN) used by the service access IAM role. </p>
-- Required parameter: ServiceAccessRoleArn
function M.DynamoDbSettings(_ServiceAccessRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DynamoDbSettings")
	local t = { 
		["ServiceAccessRoleArn"] = _ServiceAccessRoleArn,
	}
	asserts.AssertDynamoDbSettings(t)
	return t
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
-- @param _Endpoint [Endpoint] <p>The endpoint that was deleted.</p>
function M.DeleteEndpointResponse(_Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEndpointResponse")
	local t = { 
		["Endpoint"] = _Endpoint,
	}
	asserts.AssertDeleteEndpointResponse(t)
	return t
end

keys.AccessDeniedFault = { ["message"] = true, nil }

function asserts.AssertAccessDeniedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedFault[k], "AccessDeniedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedFault
-- <p>AWS DMS was denied access to the endpoint.</p>
-- @param _message [ExceptionMessage] <p/>
function M.AccessDeniedFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAccessDeniedFault(t)
	return t
end

keys.DescribeTableStatisticsMessage = { ["ReplicationTaskArn"] = true, ["Marker"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeTableStatisticsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableStatisticsMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTableStatisticsMessage[k], "DescribeTableStatisticsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableStatisticsMessage
-- <p/>
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- Required parameter: ReplicationTaskArn
function M.DescribeTableStatisticsMessage(_ReplicationTaskArn, _Marker, _MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableStatisticsMessage")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
	}
	asserts.AssertDescribeTableStatisticsMessage(t)
	return t
end

keys.InsufficientResourceCapacityFault = { ["message"] = true, nil }

function asserts.AssertInsufficientResourceCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientResourceCapacityFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InsufficientResourceCapacityFault[k], "InsufficientResourceCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientResourceCapacityFault
-- <p>There are not enough resources allocated to the database migration.</p>
-- @param _message [ExceptionMessage] <p/>
function M.InsufficientResourceCapacityFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientResourceCapacityFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInsufficientResourceCapacityFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version</p>
function M.DescribeReplicationInstancesMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationInstancesMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeReplicationInstancesMessage(t)
	return t
end

keys.CreateReplicationTaskMessage = { ["SourceEndpointArn"] = true, ["ReplicationTaskIdentifier"] = true, ["ReplicationInstanceArn"] = true, ["Tags"] = true, ["TableMappings"] = true, ["MigrationType"] = true, ["TargetEndpointArn"] = true, ["ReplicationTaskSettings"] = true, ["CdcStartTime"] = true, nil }

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
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["TableMappings"] then asserts.AssertString(struct["TableMappings"]) end
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
-- @param _SourceEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationTaskIdentifier [String] <p>The replication task identifier.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @param _Tags [TagList] <p>Tags to be added to the replication instance.</p>
-- @param _TableMappings [String] <p>When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with "file://". When working with the DMS API, provide the JSON as the parameter value.</p> <p>For example, --table-mappings file://mappingfile.json</p>
-- @param _MigrationType [MigrationTypeValue] <p>The migration type.</p>
-- @param _TargetEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationTaskSettings [String] <p>Settings for the task, such as target metadata settings. For a complete list of task settings, see <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Task Settings for AWS Database Migration Service Tasks</a>.</p>
-- @param _CdcStartTime [TStamp] <p>The start time for the Change Data Capture (CDC) operation.</p>
-- Required parameter: ReplicationTaskIdentifier
-- Required parameter: SourceEndpointArn
-- Required parameter: TargetEndpointArn
-- Required parameter: ReplicationInstanceArn
-- Required parameter: MigrationType
-- Required parameter: TableMappings
function M.CreateReplicationTaskMessage(_SourceEndpointArn, _ReplicationTaskIdentifier, _ReplicationInstanceArn, _Tags, _TableMappings, _MigrationType, _TargetEndpointArn, _ReplicationTaskSettings, _CdcStartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationTaskMessage")
	local t = { 
		["SourceEndpointArn"] = _SourceEndpointArn,
		["ReplicationTaskIdentifier"] = _ReplicationTaskIdentifier,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
		["Tags"] = _Tags,
		["TableMappings"] = _TableMappings,
		["MigrationType"] = _MigrationType,
		["TargetEndpointArn"] = _TargetEndpointArn,
		["ReplicationTaskSettings"] = _ReplicationTaskSettings,
		["CdcStartTime"] = _CdcStartTime,
	}
	asserts.AssertCreateReplicationTaskMessage(t)
	return t
end

keys.InvalidResourceStateFault = { ["message"] = true, nil }

function asserts.AssertInvalidResourceStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceStateFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceStateFault[k], "InvalidResourceStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceStateFault
-- <p>The resource is in a state that prevents it from being used for database migration.</p>
-- @param _message [ExceptionMessage] <p/>
function M.InvalidResourceStateFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceStateFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidResourceStateFault(t)
	return t
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
-- @param _Connection [Connection] <p>The connection tested.</p>
function M.TestConnectionResponse(_Connection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestConnectionResponse")
	local t = { 
		["Connection"] = _Connection,
	}
	asserts.AssertTestConnectionResponse(t)
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
-- @param _EventCategories [EventCategoriesList] <p>A list of event categories for a source type that you want to subscribe to.</p>
-- @param _SourceType [SourceType] <p>The type of AWS DMS resource that generates events.</p> <p>Valid values: replication-instance | migration-task</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _StartTime [TStamp] <p>The start time for the events to be listed.</p>
-- @param _Duration [IntegerOptional] <p>The duration of the events to be listed.</p>
-- @param _Filters [FilterList] <p>Filters applied to the action.</p>
-- @param _SourceIdentifier [String] <p> The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It cannot end with a hyphen or contain two consecutive hyphens. </p>
-- @param _EndTime [TStamp] <p>The end time for the events to be listed.</p>
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
-- @param _ReplicationTask [ReplicationTask] <p>The replication task that was created.</p>
function M.CreateReplicationTaskResponse(_ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = _ReplicationTask,
	}
	asserts.AssertCreateReplicationTaskResponse(t)
	return t
end

keys.StorageQuotaExceededFault = { ["message"] = true, nil }

function asserts.AssertStorageQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageQuotaExceededFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageQuotaExceededFault[k], "StorageQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageQuotaExceededFault
-- <p>The storage quota has been exceeded.</p>
-- @param _message [ExceptionMessage] <p/>
function M.StorageQuotaExceededFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageQuotaExceededFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertStorageQuotaExceededFault(t)
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
-- <p/>
-- @param _Value [String] <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and cannot be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- @param _Key [String] <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and cannot be prefixed with "aws:" or "dms:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be added to. AWS DMS resources include a replication instance, endpoint, and a replication task.</p>
-- @param _Tags [TagList] <p>The tag to be assigned to the DMS resource.</p>
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.AddTagsToResourceMessage(_ResourceArn, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceMessage")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["Tags"] = _Tags,
	}
	asserts.AssertAddTagsToResourceMessage(t)
	return t
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
-- @param _Date [TStamp] <p>The date of the event.</p>
-- @param _Message [String] <p>The event message.</p>
-- @param _SourceIdentifier [String] <p> The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens. </p> <p>Constraints:replication instance, endpoint, migration task</p>
-- @param _EventCategories [EventCategoriesList] <p>The event categories available for the specified source type.</p>
-- @param _SourceType [SourceType] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | endpoint | migration-task</p>
function M.Event(_Date, _Message, _SourceIdentifier, _EventCategories, _SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["Date"] = _Date,
		["Message"] = _Message,
		["SourceIdentifier"] = _SourceIdentifier,
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
	}
	asserts.AssertEvent(t)
	return t
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
-- @param _ReplicationSubnetGroupIdentifier [String] <p>The subnet group name of the replication instance.</p>
-- Required parameter: ReplicationSubnetGroupIdentifier
function M.DeleteReplicationSubnetGroupMessage(_ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationSubnetGroupMessage")
	local t = { 
		["ReplicationSubnetGroupIdentifier"] = _ReplicationSubnetGroupIdentifier,
	}
	asserts.AssertDeleteReplicationSubnetGroupMessage(t)
	return t
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
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- Required parameter: EndpointArn
function M.DescribeRefreshSchemasStatusMessage(_EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRefreshSchemasStatusMessage")
	local t = { 
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertDescribeRefreshSchemasStatusMessage(t)
	return t
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
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- Required parameter: ReplicationInstanceArn
-- Required parameter: EndpointArn
function M.TestConnectionMessage(_EndpointArn, _ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestConnectionMessage")
	local t = { 
		["EndpointArn"] = _EndpointArn,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
	}
	asserts.AssertTestConnectionMessage(t)
	return t
end

keys.InvalidSubnet = { ["message"] = true, nil }

function asserts.AssertInvalidSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnet to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSubnet[k], "InvalidSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnet
-- <p>The subnet provided is invalid.</p>
-- @param _message [ExceptionMessage] <p/>
function M.InvalidSubnet(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidSubnet(t)
	return t
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
-- @param _SchemaName [String] <p>The schema name of the table to be reloaded.</p>
-- @param _TableName [String] <p>The table name of the table to be reloaded.</p>
function M.TableToReload(_SchemaName, _TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableToReload")
	local t = { 
		["SchemaName"] = _SchemaName,
		["TableName"] = _TableName,
	}
	asserts.AssertTableToReload(t)
	return t
end

keys.ReloadTablesMessage = { ["ReplicationTaskArn"] = true, ["TablesToReload"] = true, nil }

function asserts.AssertReloadTablesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReloadTablesMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	assert(struct["TablesToReload"], "Expected key TablesToReload to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["TablesToReload"] then asserts.AssertTableListToReload(struct["TablesToReload"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReloadTablesMessage[k], "ReloadTablesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReloadTablesMessage
--  
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication instance. </p>
-- @param _TablesToReload [TableListToReload] <p>The name and schema of the table to be reloaded. </p>
-- Required parameter: ReplicationTaskArn
-- Required parameter: TablesToReload
function M.ReloadTablesMessage(_ReplicationTaskArn, _TablesToReload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReloadTablesMessage")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
		["TablesToReload"] = _TablesToReload,
	}
	asserts.AssertReloadTablesMessage(t)
	return t
end

keys.ResourceNotFoundFault = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundFault[k], "ResourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundFault
-- <p>The resource could not be found.</p>
-- @param _message [ExceptionMessage] <p/>
function M.ResourceNotFoundFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundFault(t)
	return t
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
function M.RemoveTagsFromResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceResponse")
	local t = { 
	}
	asserts.AssertRemoveTagsFromResourceResponse(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _ReplicationSubnetGroups [ReplicationSubnetGroups] <p>A description of the replication subnet groups.</p>
function M.DescribeReplicationSubnetGroupsResponse(_Marker, _ReplicationSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationSubnetGroupsResponse")
	local t = { 
		["Marker"] = _Marker,
		["ReplicationSubnetGroups"] = _ReplicationSubnetGroups,
	}
	asserts.AssertDescribeReplicationSubnetGroupsResponse(t)
	return t
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
-- @param _EventSubscription [EventSubscription] <p>The event subscription that was created.</p>
function M.CreateEventSubscriptionResponse(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionResponse")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertCreateEventSubscriptionResponse(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _OrderableReplicationInstances [OrderableReplicationInstanceList] <p>The order-able replication instances available.</p>
function M.DescribeOrderableReplicationInstancesResponse(_Marker, _OrderableReplicationInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableReplicationInstancesResponse")
	local t = { 
		["Marker"] = _Marker,
		["OrderableReplicationInstances"] = _OrderableReplicationInstances,
	}
	asserts.AssertDescribeOrderableReplicationInstancesResponse(t)
	return t
end

keys.ModifyReplicationTaskMessage = { ["ReplicationTaskIdentifier"] = true, ["ReplicationTaskArn"] = true, ["MigrationType"] = true, ["TableMappings"] = true, ["ReplicationTaskSettings"] = true, ["CdcStartTime"] = true, nil }

function asserts.AssertModifyReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	if struct["ReplicationTaskIdentifier"] then asserts.AssertString(struct["ReplicationTaskIdentifier"]) end
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
-- @param _ReplicationTaskIdentifier [String] <p>The replication task identifier.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- @param _MigrationType [MigrationTypeValue] <p>The migration type.</p> <p>Valid values: full-load | cdc | full-load-and-cdc</p>
-- @param _TableMappings [String] <p>When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with "file://". When working with the DMS API, provide the JSON as the parameter value.</p> <p>For example, --table-mappings file://mappingfile.json</p>
-- @param _ReplicationTaskSettings [String] <p>JSON file that contains settings for the task, such as target metadata settings.</p>
-- @param _CdcStartTime [TStamp] <p>The start time for the Change Data Capture (CDC) operation.</p>
-- Required parameter: ReplicationTaskArn
function M.ModifyReplicationTaskMessage(_ReplicationTaskIdentifier, _ReplicationTaskArn, _MigrationType, _TableMappings, _ReplicationTaskSettings, _CdcStartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationTaskMessage")
	local t = { 
		["ReplicationTaskIdentifier"] = _ReplicationTaskIdentifier,
		["ReplicationTaskArn"] = _ReplicationTaskArn,
		["MigrationType"] = _MigrationType,
		["TableMappings"] = _TableMappings,
		["ReplicationTaskSettings"] = _ReplicationTaskSettings,
		["CdcStartTime"] = _CdcStartTime,
	}
	asserts.AssertModifyReplicationTaskMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>The filters applied to the connection.</p> <p>Valid filter names: endpoint-arn | replication-instance-arn</p>
function M.DescribeConnectionsMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeConnectionsMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _ReplicationInstances [ReplicationInstanceList] <p>The replication instances described.</p>
function M.DescribeReplicationInstancesResponse(_Marker, _ReplicationInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationInstancesResponse")
	local t = { 
		["Marker"] = _Marker,
		["ReplicationInstances"] = _ReplicationInstances,
	}
	asserts.AssertDescribeReplicationInstancesResponse(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Schemas [SchemaList] <p>The described schema.</p>
function M.DescribeSchemasResponse(_Marker, _Schemas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSchemasResponse")
	local t = { 
		["Marker"] = _Marker,
		["Schemas"] = _Schemas,
	}
	asserts.AssertDescribeSchemasResponse(t)
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
-- <p/>
-- @param _Status [String] <p>The status of the VPC security group.</p>
-- @param _VpcSecurityGroupId [String] <p>The VPC security group Id.</p>
function M.VpcSecurityGroupMembership(_Status, _VpcSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcSecurityGroupMembership")
	local t = { 
		["Status"] = _Status,
		["VpcSecurityGroupId"] = _VpcSecurityGroupId,
	}
	asserts.AssertVpcSecurityGroupMembership(t)
	return t
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
-- @param _CompressionType [CompressionTypeValue] <p> An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed. </p>
-- @param _BucketFolder [String] <p> An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path &lt;bucketFolder&gt;/&lt;schema_name&gt;/&lt;table_name&gt;/. If this parameter is not specified, then the path used is &lt;schema_name&gt;/&lt;table_name&gt;/. </p>
-- @param _CsvRowDelimiter [String] <p> The delimiter used to separate rows in the source files. The default is a carriage return (\n). </p>
-- @param _CsvDelimiter [String] <p> The delimiter used to separate columns in the source files. The default is a comma. </p>
-- @param _ServiceAccessRoleArn [String] <p> The Amazon Resource Name (ARN) used by the service access IAM role. </p>
-- @param _ExternalTableDefinition [String] <p> </p>
-- @param _BucketName [String] <p> The name of the S3 bucket. </p>
function M.S3Settings(_CompressionType, _BucketFolder, _CsvRowDelimiter, _CsvDelimiter, _ServiceAccessRoleArn, _ExternalTableDefinition, _BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Settings")
	local t = { 
		["CompressionType"] = _CompressionType,
		["BucketFolder"] = _BucketFolder,
		["CsvRowDelimiter"] = _CsvRowDelimiter,
		["CsvDelimiter"] = _CsvDelimiter,
		["ServiceAccessRoleArn"] = _ServiceAccessRoleArn,
		["ExternalTableDefinition"] = _ExternalTableDefinition,
		["BucketName"] = _BucketName,
	}
	asserts.AssertS3Settings(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Endpoints [EndpointList] <p>Endpoint description.</p>
function M.DescribeEndpointsResponse(_Marker, _Endpoints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointsResponse")
	local t = { 
		["Marker"] = _Marker,
		["Endpoints"] = _Endpoints,
	}
	asserts.AssertDescribeEndpointsResponse(t)
	return t
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
-- @param _Endpoint [Endpoint] <p>The endpoint that was created.</p>
function M.CreateEndpointResponse(_Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEndpointResponse")
	local t = { 
		["Endpoint"] = _Endpoint,
	}
	asserts.AssertCreateEndpointResponse(t)
	return t
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
-- @param _ReplicationSubnetGroupDescription [String] <p>The description for the subnet group.</p>
-- @param _SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the subnet group.</p>
-- @param _Tags [TagList] <p>The tag to be assigned to the subnet group.</p>
-- @param _ReplicationSubnetGroupIdentifier [String] <p>The name for the replication subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be "default".</p> <p>Example: <code>mySubnetgroup</code> </p>
-- Required parameter: ReplicationSubnetGroupIdentifier
-- Required parameter: ReplicationSubnetGroupDescription
-- Required parameter: SubnetIds
function M.CreateReplicationSubnetGroupMessage(_ReplicationSubnetGroupDescription, _SubnetIds, _Tags, _ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationSubnetGroupMessage")
	local t = { 
		["ReplicationSubnetGroupDescription"] = _ReplicationSubnetGroupDescription,
		["SubnetIds"] = _SubnetIds,
		["Tags"] = _Tags,
		["ReplicationSubnetGroupIdentifier"] = _ReplicationSubnetGroupIdentifier,
	}
	asserts.AssertCreateReplicationSubnetGroupMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Filters applied to the describe action.</p>
function M.DescribeReplicationSubnetGroupsMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationSubnetGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeReplicationSubnetGroupsMessage(t)
	return t
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
-- @param _ReplicationSubnetGroupDescription [String] <p>The description of the replication subnet group.</p>
-- @param _Subnets [SubnetList] <p>The subnets that are in the subnet group.</p>
-- @param _VpcId [String] <p>The ID of the VPC.</p>
-- @param _SubnetGroupStatus [String] <p>The status of the subnet group.</p>
-- @param _ReplicationSubnetGroupIdentifier [String] <p>The identifier of the replication instance subnet group.</p>
function M.ReplicationSubnetGroup(_ReplicationSubnetGroupDescription, _Subnets, _VpcId, _SubnetGroupStatus, _ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationSubnetGroup")
	local t = { 
		["ReplicationSubnetGroupDescription"] = _ReplicationSubnetGroupDescription,
		["Subnets"] = _Subnets,
		["VpcId"] = _VpcId,
		["SubnetGroupStatus"] = _SubnetGroupStatus,
		["ReplicationSubnetGroupIdentifier"] = _ReplicationSubnetGroupIdentifier,
	}
	asserts.AssertReplicationSubnetGroup(t)
	return t
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
-- @param _ReplicationInstance [ReplicationInstance] <p>The modified replication instance.</p>
function M.ModifyReplicationInstanceResponse(_ReplicationInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationInstanceResponse")
	local t = { 
		["ReplicationInstance"] = _ReplicationInstance,
	}
	asserts.AssertModifyReplicationInstanceResponse(t)
	return t
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
-- @param _RefreshSchemasStatus [RefreshSchemasStatus] <p>The status of the refreshed schema.</p>
function M.RefreshSchemasResponse(_RefreshSchemasStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshSchemasResponse")
	local t = { 
		["RefreshSchemasStatus"] = _RefreshSchemasStatus,
	}
	asserts.AssertRefreshSchemasResponse(t)
	return t
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
-- @param _Marker [String] <p>The pagination token.</p>
-- @param _Certificates [CertificateList] <p>The Secure Sockets Layer (SSL) certificates associated with the replication instance.</p>
function M.DescribeCertificatesResponse(_Marker, _Certificates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificatesResponse")
	local t = { 
		["Marker"] = _Marker,
		["Certificates"] = _Certificates,
	}
	asserts.AssertDescribeCertificatesResponse(t)
	return t
end

keys.StartReplicationTaskMessage = { ["ReplicationTaskArn"] = true, ["StartReplicationTaskType"] = true, ["CdcStartTime"] = true, nil }

function asserts.AssertStartReplicationTaskMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartReplicationTaskMessage to be of type 'table'")
	assert(struct["ReplicationTaskArn"], "Expected key ReplicationTaskArn to exist in table")
	assert(struct["StartReplicationTaskType"], "Expected key StartReplicationTaskType to exist in table")
	if struct["ReplicationTaskArn"] then asserts.AssertString(struct["ReplicationTaskArn"]) end
	if struct["StartReplicationTaskType"] then asserts.AssertStartReplicationTaskTypeValue(struct["StartReplicationTaskType"]) end
	if struct["CdcStartTime"] then asserts.AssertTStamp(struct["CdcStartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartReplicationTaskMessage[k], "StartReplicationTaskMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartReplicationTaskMessage
-- <p/>
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Number (ARN) of the replication task to be started.</p>
-- @param _StartReplicationTaskType [StartReplicationTaskTypeValue] <p>The type of replication task.</p>
-- @param _CdcStartTime [TStamp] <p>The start time for the Change Data Capture (CDC) operation.</p>
-- Required parameter: ReplicationTaskArn
-- Required parameter: StartReplicationTaskType
function M.StartReplicationTaskMessage(_ReplicationTaskArn, _StartReplicationTaskType, _CdcStartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartReplicationTaskMessage")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
		["StartReplicationTaskType"] = _StartReplicationTaskType,
		["CdcStartTime"] = _CdcStartTime,
	}
	asserts.AssertStartReplicationTaskMessage(t)
	return t
end

keys.ResourceQuotaExceededFault = { ["message"] = true, nil }

function asserts.AssertResourceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceQuotaExceededFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceQuotaExceededFault[k], "ResourceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceQuotaExceededFault
-- <p>The quota for this resource quota has been exceeded.</p>
-- @param _message [ExceptionMessage] <p/>
function M.ResourceQuotaExceededFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceQuotaExceededFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceQuotaExceededFault(t)
	return t
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
-- @param _ReplicationTask [ReplicationTask] <p>The replication task started.</p>
function M.StartReplicationTaskResponse(_ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = _ReplicationTask,
	}
	asserts.AssertStartReplicationTaskResponse(t)
	return t
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
-- @param _ReplicationSubnetGroupDescription [String] <p>The description of the replication instance subnet group.</p>
-- @param _SubnetIds [SubnetIdentifierList] <p>A list of subnet IDs.</p>
-- @param _ReplicationSubnetGroupIdentifier [String] <p>The name of the replication instance subnet group.</p>
-- Required parameter: ReplicationSubnetGroupIdentifier
-- Required parameter: SubnetIds
function M.ModifyReplicationSubnetGroupMessage(_ReplicationSubnetGroupDescription, _SubnetIds, _ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationSubnetGroupMessage")
	local t = { 
		["ReplicationSubnetGroupDescription"] = _ReplicationSubnetGroupDescription,
		["SubnetIds"] = _SubnetIds,
		["ReplicationSubnetGroupIdentifier"] = _ReplicationSubnetGroupIdentifier,
	}
	asserts.AssertModifyReplicationSubnetGroupMessage(t)
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
-- <p/>
-- @param _Name [String] <p>The name of the availability zone.</p>
function M.AvailabilityZone(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertAvailabilityZone(t)
	return t
end

keys.TableStatistics = { ["Inserts"] = true, ["LastUpdateTime"] = true, ["FullLoadErrorRows"] = true, ["FullLoadCondtnlChkFailedRows"] = true, ["Ddls"] = true, ["TableName"] = true, ["Updates"] = true, ["FullLoadRows"] = true, ["TableState"] = true, ["SchemaName"] = true, ["Deletes"] = true, nil }

function asserts.AssertTableStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableStatistics to be of type 'table'")
	if struct["Inserts"] then asserts.AssertLong(struct["Inserts"]) end
	if struct["LastUpdateTime"] then asserts.AssertTStamp(struct["LastUpdateTime"]) end
	if struct["FullLoadErrorRows"] then asserts.AssertLong(struct["FullLoadErrorRows"]) end
	if struct["FullLoadCondtnlChkFailedRows"] then asserts.AssertLong(struct["FullLoadCondtnlChkFailedRows"]) end
	if struct["Ddls"] then asserts.AssertLong(struct["Ddls"]) end
	if struct["TableName"] then asserts.AssertString(struct["TableName"]) end
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
-- @param _Inserts [Long] <p>The number of insert actions performed on a table.</p>
-- @param _LastUpdateTime [TStamp] <p>The last time the table was updated.</p>
-- @param _FullLoadErrorRows [Long] <p>The number of rows that failed to load during the Full Load operation (valid only for DynamoDB as a target migrations).</p>
-- @param _FullLoadCondtnlChkFailedRows [Long] <p>The number of rows that failed conditional checks during the Full Load operation (valid only for DynamoDB as a target migrations).</p>
-- @param _Ddls [Long] <p>The Data Definition Language (DDL) used to build and modify the structure of your tables.</p>
-- @param _TableName [String] <p>The name of the table.</p>
-- @param _Updates [Long] <p>The number of update actions performed on a table.</p>
-- @param _FullLoadRows [Long] <p>The number of rows added during the Full Load operation.</p>
-- @param _TableState [String] <p>The state of the table.</p>
-- @param _SchemaName [String] <p>The schema name.</p>
-- @param _Deletes [Long] <p>The number of delete actions performed on a table.</p>
function M.TableStatistics(_Inserts, _LastUpdateTime, _FullLoadErrorRows, _FullLoadCondtnlChkFailedRows, _Ddls, _TableName, _Updates, _FullLoadRows, _TableState, _SchemaName, _Deletes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableStatistics")
	local t = { 
		["Inserts"] = _Inserts,
		["LastUpdateTime"] = _LastUpdateTime,
		["FullLoadErrorRows"] = _FullLoadErrorRows,
		["FullLoadCondtnlChkFailedRows"] = _FullLoadCondtnlChkFailedRows,
		["Ddls"] = _Ddls,
		["TableName"] = _TableName,
		["Updates"] = _Updates,
		["FullLoadRows"] = _FullLoadRows,
		["TableState"] = _TableState,
		["SchemaName"] = _SchemaName,
		["Deletes"] = _Deletes,
	}
	asserts.AssertTableStatistics(t)
	return t
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
-- @param _MultiAZ [BooleanOptional] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- @param _AllowMajorVersionUpgrade [Boolean] <p>Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: This parameter must be set to true when specifying a value for the <code>EngineVersion</code> parameter that is a different major version than the replication instance's current version.</p>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @param _ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p> Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. </p>
-- @param _ApplyImmediately [Boolean] <p>Indicates whether the changes should be applied immediately or during the next maintenance window.</p>
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p> Indicates that minor version upgrades will be applied automatically to the replication instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and AWS DMS has enabled auto patching for that engine version. </p>
-- @param _AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be allocated for the replication instance.</p>
-- @param _EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- @param _ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>
-- Required parameter: ReplicationInstanceArn
function M.ModifyReplicationInstanceMessage(_MultiAZ, _AllowMajorVersionUpgrade, _ReplicationInstanceArn, _ReplicationInstanceClass, _VpcSecurityGroupIds, _ApplyImmediately, _AutoMinorVersionUpgrade, _AllocatedStorage, _EngineVersion, _ReplicationInstanceIdentifier, _PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationInstanceMessage")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["AllowMajorVersionUpgrade"] = _AllowMajorVersionUpgrade,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
		["ReplicationInstanceClass"] = _ReplicationInstanceClass,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["ApplyImmediately"] = _ApplyImmediately,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["AllocatedStorage"] = _AllocatedStorage,
		["EngineVersion"] = _EngineVersion,
		["ReplicationInstanceIdentifier"] = _ReplicationInstanceIdentifier,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
	}
	asserts.AssertModifyReplicationInstanceMessage(t)
	return t
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
-- @param _ReplicationTask [ReplicationTask] <p>The replication task that was modified.</p>
function M.ModifyReplicationTaskResponse(_ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = _ReplicationTask,
	}
	asserts.AssertModifyReplicationTaskResponse(t)
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
-- <p/>
-- @param _SubnetStatus [String] <p>The status of the subnet.</p>
-- @param _SubnetIdentifier [String] <p>The subnet identifier.</p>
-- @param _SubnetAvailabilityZone [AvailabilityZone] <p>The Availability Zone of the subnet.</p>
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
-- @param _ReplicationTask [ReplicationTask] <p>The deleted replication task.</p>
function M.DeleteReplicationTaskResponse(_ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = _ReplicationTask,
	}
	asserts.AssertDeleteReplicationTaskResponse(t)
	return t
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
-- @param _CertificateArn [String] <p>The Amazon Resource Name (ARN) for the certificate.</p>
-- @param _CertificateCreationDate [TStamp] <p>The date that the certificate was created.</p>
-- @param _CertificatePem [String] <p>The contents of the .pem X.509 certificate file for the certificate.</p>
-- @param _CertificateOwner [String] <p>The owner of the certificate.</p>
-- @param _CertificateWallet [CertificateWallet] <p>The location of the imported Oracle Wallet certificate for use with SSL.</p>
-- @param _ValidToDate [TStamp] <p>The final date that the certificate is valid.</p>
-- @param _KeyLength [IntegerOptional] <p>The key length of the cryptographic algorithm being used.</p>
-- @param _CertificateIdentifier [String] <p>The customer-assigned name of the certificate. Valid characters are A-z and 0-9.</p>
-- @param _SigningAlgorithm [String] <p>The signing algorithm for the certificate.</p>
-- @param _ValidFromDate [TStamp] <p>The beginning date that the certificate is valid.</p>
function M.Certificate(_CertificateArn, _CertificateCreationDate, _CertificatePem, _CertificateOwner, _CertificateWallet, _ValidToDate, _KeyLength, _CertificateIdentifier, _SigningAlgorithm, _ValidFromDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["CertificateArn"] = _CertificateArn,
		["CertificateCreationDate"] = _CertificateCreationDate,
		["CertificatePem"] = _CertificatePem,
		["CertificateOwner"] = _CertificateOwner,
		["CertificateWallet"] = _CertificateWallet,
		["ValidToDate"] = _ValidToDate,
		["KeyLength"] = _KeyLength,
		["CertificateIdentifier"] = _CertificateIdentifier,
		["SigningAlgorithm"] = _SigningAlgorithm,
		["ValidFromDate"] = _ValidFromDate,
	}
	asserts.AssertCertificate(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
function M.DescribeOrderableReplicationInstancesMessage(_Marker, _MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableReplicationInstancesMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
	}
	asserts.AssertDescribeOrderableReplicationInstancesMessage(t)
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Filters applied to the action.</p>
-- @param _SubscriptionName [String] <p>The name of the AWS DMS event subscription to be described.</p>
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Events [EventList] <p>The events described.</p>
function M.DescribeEventsResponse(_Marker, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["Marker"] = _Marker,
		["Events"] = _Events,
	}
	asserts.AssertDescribeEventsResponse(t)
	return t
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
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>
-- Required parameter: ReplicationInstanceArn
function M.DeleteReplicationInstanceMessage(_ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationInstanceMessage")
	local t = { 
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
	}
	asserts.AssertDeleteReplicationInstanceMessage(t)
	return t
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
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- Required parameter: EndpointArn
function M.DeleteEndpointMessage(_EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEndpointMessage")
	local t = { 
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertDeleteEndpointMessage(t)
	return t
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
-- @param _EventCategories [EventCategoriesList] <p> A list of event categories for a <code>SourceType</code> that you want to subscribe to. </p>
-- @param _SourceType [String] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-server | security-group | migration-task</p>
function M.EventCategoryGroup(_EventCategories, _SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoryGroup")
	local t = { 
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
	}
	asserts.AssertEventCategoryGroup(t)
	return t
end

keys.SupportedEndpointType = { ["EngineName"] = true, ["SupportsCDC"] = true, ["EndpointType"] = true, nil }

function asserts.AssertSupportedEndpointType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SupportedEndpointType to be of type 'table'")
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["SupportsCDC"] then asserts.AssertBoolean(struct["SupportsCDC"]) end
	if struct["EndpointType"] then asserts.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SupportedEndpointType[k], "SupportedEndpointType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SupportedEndpointType
-- <p/>
-- @param _EngineName [String] <p>The database engine name. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, SYBASE, DYNAMODB, MONGODB, and SQLSERVER.</p>
-- @param _SupportsCDC [Boolean] <p>Indicates if Change Data Capture (CDC) is supported.</p>
-- @param _EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
function M.SupportedEndpointType(_EngineName, _SupportsCDC, _EndpointType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SupportedEndpointType")
	local t = { 
		["EngineName"] = _EngineName,
		["SupportsCDC"] = _SupportsCDC,
		["EndpointType"] = _EndpointType,
	}
	asserts.AssertSupportedEndpointType(t)
	return t
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
-- @param _Certificate [Certificate] <p>The Secure Sockets Layer (SSL) certificate.</p>
function M.DeleteCertificateResponse(_Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateResponse")
	local t = { 
		["Certificate"] = _Certificate,
	}
	asserts.AssertDeleteCertificateResponse(t)
	return t
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
-- @param _EventCategoryGroupList [EventCategoryGroupList] <p>A list of event categories.</p>
function M.DescribeEventCategoriesResponse(_EventCategoryGroupList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesResponse")
	local t = { 
		["EventCategoryGroupList"] = _EventCategoryGroupList,
	}
	asserts.AssertDescribeEventCategoriesResponse(t)
	return t
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
-- @param _ReplicationInstance [ReplicationInstance] <p>The replication instance that was deleted.</p>
function M.DeleteReplicationInstanceResponse(_ReplicationInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationInstanceResponse")
	local t = { 
		["ReplicationInstance"] = _ReplicationInstance,
	}
	asserts.AssertDeleteReplicationInstanceResponse(t)
	return t
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
-- @param _ResourceArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource.</p>
-- Required parameter: ResourceArn
function M.ListTagsForResourceMessage(_ResourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceMessage")
	local t = { 
		["ResourceArn"] = _ResourceArn,
	}
	asserts.AssertListTagsForResourceMessage(t)
	return t
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
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>
-- Required parameter: ReplicationTaskArn
function M.DeleteReplicationTaskMessage(_ReplicationTaskArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationTaskMessage")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
	}
	asserts.AssertDeleteReplicationTaskMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>
function M.DescribeEndpointsMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeEndpointsMessage(t)
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
-- <p/>
-- @param _Values [FilterValueList] <p>The filter value.</p>
-- @param _Name [String] <p>The name of the filter.</p>
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
-- @param _Status [String] <p>The connection status.</p>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @param _LastFailureMessage [String] <p>The error message when the connection last failed.</p>
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p>
-- @param _EndpointIdentifier [String] <p>The identifier of the endpoint. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
function M.Connection(_Status, _ReplicationInstanceArn, _LastFailureMessage, _EndpointArn, _ReplicationInstanceIdentifier, _EndpointIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connection")
	local t = { 
		["Status"] = _Status,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
		["LastFailureMessage"] = _LastFailureMessage,
		["EndpointArn"] = _EndpointArn,
		["ReplicationInstanceIdentifier"] = _ReplicationInstanceIdentifier,
		["EndpointIdentifier"] = _EndpointIdentifier,
	}
	asserts.AssertConnection(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _SupportedEndpointTypes [SupportedEndpointTypeList] <p>The type of endpoints that are supported.</p>
function M.DescribeEndpointTypesResponse(_Marker, _SupportedEndpointTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointTypesResponse")
	local t = { 
		["Marker"] = _Marker,
		["SupportedEndpointTypes"] = _SupportedEndpointTypes,
	}
	asserts.AssertDescribeEndpointTypesResponse(t)
	return t
end

keys.UpgradeDependencyFailureFault = { ["message"] = true, nil }

function asserts.AssertUpgradeDependencyFailureFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeDependencyFailureFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeDependencyFailureFault[k], "UpgradeDependencyFailureFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeDependencyFailureFault
-- <p>An upgrade dependency is preventing the database migration.</p>
-- @param _message [ExceptionMessage] <p/>
function M.UpgradeDependencyFailureFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpgradeDependencyFailureFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUpgradeDependencyFailureFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 10</p>
-- @param _Filters [FilterList] <p>Filters applied to the certificate described in the form of key-value pairs.</p>
function M.DescribeCertificatesMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificatesMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeCertificatesMessage(t)
	return t
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
-- @param _ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- @param _EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- @param _AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- @param _MultiAZ [BooleanOptional] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
function M.ReplicationPendingModifiedValues(_ReplicationInstanceClass, _EngineVersion, _AllocatedStorage, _MultiAZ, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationPendingModifiedValues")
	local t = { 
		["ReplicationInstanceClass"] = _ReplicationInstanceClass,
		["EngineVersion"] = _EngineVersion,
		["AllocatedStorage"] = _AllocatedStorage,
		["MultiAZ"] = _MultiAZ,
	}
	asserts.AssertReplicationPendingModifiedValues(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn</p>
function M.DescribeReplicationTasksMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationTasksMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeReplicationTasksMessage(t)
	return t
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
-- @param _MultiAZ [BooleanOptional] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- @param _AvailabilityZone [String] <p>The EC2 Availability Zone that the replication instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p>
-- @param _PubliclyAccessible [BooleanOptional] <p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>
-- @param _Tags [TagList] <p>Tags to be associated with the replication instance.</p>
-- @param _ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance as specified by the replication instance class.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p> Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. </p>
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.</p> <p>Default: <code>true</code> </p>
-- @param _KmsKeyId [String] <p>The KMS key identifier that will be used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param _AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be initially allocated for the replication instance.</p>
-- @param _EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- @param _ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.</p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _ReplicationSubnetGroupIdentifier [String] <p>A subnet group to associate with the replication instance.</p>
-- Required parameter: ReplicationInstanceIdentifier
-- Required parameter: ReplicationInstanceClass
function M.CreateReplicationInstanceMessage(_MultiAZ, _AvailabilityZone, _PubliclyAccessible, _Tags, _ReplicationInstanceClass, _VpcSecurityGroupIds, _AutoMinorVersionUpgrade, _KmsKeyId, _AllocatedStorage, _EngineVersion, _ReplicationInstanceIdentifier, _PreferredMaintenanceWindow, _ReplicationSubnetGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationInstanceMessage")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["AvailabilityZone"] = _AvailabilityZone,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["Tags"] = _Tags,
		["ReplicationInstanceClass"] = _ReplicationInstanceClass,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["KmsKeyId"] = _KmsKeyId,
		["AllocatedStorage"] = _AllocatedStorage,
		["EngineVersion"] = _EngineVersion,
		["ReplicationInstanceIdentifier"] = _ReplicationInstanceIdentifier,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["ReplicationSubnetGroupIdentifier"] = _ReplicationSubnetGroupIdentifier,
	}
	asserts.AssertCreateReplicationInstanceMessage(t)
	return t
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
-- @param _Endpoint [Endpoint] <p>The modified endpoint.</p>
function M.ModifyEndpointResponse(_Endpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEndpointResponse")
	local t = { 
		["Endpoint"] = _Endpoint,
	}
	asserts.AssertModifyEndpointResponse(t)
	return t
end

keys.ModifyEndpointMessage = { ["Username"] = true, ["CertificateArn"] = true, ["MongoDbSettings"] = true, ["S3Settings"] = true, ["ServerName"] = true, ["EndpointType"] = true, ["EndpointArn"] = true, ["ExtraConnectionAttributes"] = true, ["DatabaseName"] = true, ["DynamoDbSettings"] = true, ["SslMode"] = true, ["EngineName"] = true, ["Password"] = true, ["EndpointIdentifier"] = true, ["Port"] = true, nil }

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
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ExtraConnectionAttributes"] then asserts.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then asserts.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then asserts.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["Password"] then asserts.AssertSecretString(struct["Password"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEndpointMessage[k], "ModifyEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEndpointMessage
-- <p/>
-- @param _Username [String] <p>The user name to be used to login to the endpoint database.</p>
-- @param _CertificateArn [String] <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
-- @param _MongoDbSettings [MongoDbSettings] <p>Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the <b>Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- @param _S3Settings [S3Settings] <p>Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the <b>Extra Connection Attributes</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- @param _ServerName [String] <p>The name of the server where the endpoint database resides.</p>
-- @param _EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ExtraConnectionAttributes [String] <p>Additional attributes associated with the connection.</p>
-- @param _DatabaseName [String] <p>The name of the endpoint database.</p>
-- @param _DynamoDbSettings [DynamoDbSettings] <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the <b>Using Object Mapping to Migrate Data to DynamoDB</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html"> Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service</a>. </p>
-- @param _SslMode [DmsSslModeValue] <p>The SSL mode to be used.</p> <p>SSL mode can be one of four values: none, require, verify-ca, verify-full. </p> <p>The default value is none.</p>
-- @param _EngineName [String] <p>The type of engine for the endpoint. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, DYNAMODB, MONGODB, SYBASE, and SQLSERVER.</p>
-- @param _Password [SecretString] <p>The password to be used to login to the endpoint database.</p>
-- @param _EndpointIdentifier [String] <p>The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- @param _Port [IntegerOptional] <p>The port used by the endpoint database.</p>
-- Required parameter: EndpointArn
function M.ModifyEndpointMessage(_Username, _CertificateArn, _MongoDbSettings, _S3Settings, _ServerName, _EndpointType, _EndpointArn, _ExtraConnectionAttributes, _DatabaseName, _DynamoDbSettings, _SslMode, _EngineName, _Password, _EndpointIdentifier, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEndpointMessage")
	local t = { 
		["Username"] = _Username,
		["CertificateArn"] = _CertificateArn,
		["MongoDbSettings"] = _MongoDbSettings,
		["S3Settings"] = _S3Settings,
		["ServerName"] = _ServerName,
		["EndpointType"] = _EndpointType,
		["EndpointArn"] = _EndpointArn,
		["ExtraConnectionAttributes"] = _ExtraConnectionAttributes,
		["DatabaseName"] = _DatabaseName,
		["DynamoDbSettings"] = _DynamoDbSettings,
		["SslMode"] = _SslMode,
		["EngineName"] = _EngineName,
		["Password"] = _Password,
		["EndpointIdentifier"] = _EndpointIdentifier,
		["Port"] = _Port,
	}
	asserts.AssertModifyEndpointMessage(t)
	return t
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
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- Required parameter: EndpointArn
-- Required parameter: ReplicationInstanceArn
function M.RefreshSchemasMessage(_EndpointArn, _ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshSchemasMessage")
	local t = { 
		["EndpointArn"] = _EndpointArn,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
	}
	asserts.AssertRefreshSchemasMessage(t)
	return t
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
-- @param _ReplicationTask [ReplicationTask] <p>The replication task stopped.</p>
function M.StopReplicationTaskResponse(_ReplicationTask, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopReplicationTaskResponse")
	local t = { 
		["ReplicationTask"] = _ReplicationTask,
	}
	asserts.AssertStopReplicationTaskResponse(t)
	return t
end

keys.KMSKeyNotAccessibleFault = { ["message"] = true, nil }

function asserts.AssertKMSKeyNotAccessibleFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSKeyNotAccessibleFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSKeyNotAccessibleFault[k], "KMSKeyNotAccessibleFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSKeyNotAccessibleFault
-- <p>AWS DMS cannot access the KMS key.</p>
-- @param _message [ExceptionMessage] <p/>
function M.KMSKeyNotAccessibleFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSKeyNotAccessibleFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertKMSKeyNotAccessibleFault(t)
	return t
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
-- @param _AccountQuotas [AccountQuotaList] <p>Account quota information.</p>
function M.DescribeAccountAttributesResponse(_AccountQuotas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesResponse")
	local t = { 
		["AccountQuotas"] = _AccountQuotas,
	}
	asserts.AssertDescribeAccountAttributesResponse(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- Required parameter: EndpointArn
function M.DescribeSchemasMessage(_Marker, _MaxRecords, _EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSchemasMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertDescribeSchemasMessage(t)
	return t
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
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task. </p>
function M.ReloadTablesResponse(_ReplicationTaskArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReloadTablesResponse")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
	}
	asserts.AssertReloadTablesResponse(t)
	return t
end

keys.SNSNoAuthorizationFault = { ["message"] = true, nil }

function asserts.AssertSNSNoAuthorizationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSNoAuthorizationFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SNSNoAuthorizationFault[k], "SNSNoAuthorizationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSNoAuthorizationFault
-- <p>You are not authorized for the SNS subscription.</p>
-- @param _message [ExceptionMessage] <p/>
function M.SNSNoAuthorizationFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSNoAuthorizationFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSNSNoAuthorizationFault(t)
	return t
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
-- @param _ReplicationInstance [ReplicationInstance] <p>The replication instance that was created.</p>
function M.CreateReplicationInstanceResponse(_ReplicationInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationInstanceResponse")
	local t = { 
		["ReplicationInstance"] = _ReplicationInstance,
	}
	asserts.AssertCreateReplicationInstanceResponse(t)
	return t
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
-- @param _TagList [TagList] <p>A list of tags for the resource.</p>
function M.ListTagsForResourceResponse(_TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["TagList"] = _TagList,
	}
	asserts.AssertListTagsForResourceResponse(t)
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
-- @param _SubscriptionName [String] <p>The name of the DMS event notification subscription to be deleted.</p>
-- Required parameter: SubscriptionName
function M.DeleteEventSubscriptionMessage(_SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionMessage")
	local t = { 
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertDeleteEventSubscriptionMessage(t)
	return t
end

keys.SNSInvalidTopicFault = { ["message"] = true, nil }

function asserts.AssertSNSInvalidTopicFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSInvalidTopicFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SNSInvalidTopicFault[k], "SNSInvalidTopicFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSInvalidTopicFault
-- <p>The SNS topic is invalid.</p>
-- @param _message [ExceptionMessage] <p/>
function M.SNSInvalidTopicFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSInvalidTopicFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSNSInvalidTopicFault(t)
	return t
end

keys.ReplicationTask = { ["SourceEndpointArn"] = true, ["ReplicationTaskIdentifier"] = true, ["ReplicationInstanceArn"] = true, ["TableMappings"] = true, ["ReplicationTaskStartDate"] = true, ["ReplicationTaskStats"] = true, ["Status"] = true, ["ReplicationTaskArn"] = true, ["LastFailureMessage"] = true, ["StopReason"] = true, ["ReplicationTaskCreationDate"] = true, ["MigrationType"] = true, ["TargetEndpointArn"] = true, ["ReplicationTaskSettings"] = true, nil }

function asserts.AssertReplicationTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationTask to be of type 'table'")
	if struct["SourceEndpointArn"] then asserts.AssertString(struct["SourceEndpointArn"]) end
	if struct["ReplicationTaskIdentifier"] then asserts.AssertString(struct["ReplicationTaskIdentifier"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
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
-- @param _SourceEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationTaskIdentifier [String] <p>The replication task identifier.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @param _TableMappings [String] <p>Table mappings specified in the task.</p>
-- @param _ReplicationTaskStartDate [TStamp] <p>The date the replication task is scheduled to start.</p>
-- @param _ReplicationTaskStats [ReplicationTaskStats] <p>The statistics for the task, including elapsed time, tables loaded, and table errors.</p>
-- @param _Status [String] <p>The status of the replication task.</p>
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Name (ARN) of the replication task.</p>
-- @param _LastFailureMessage [String] <p>The last error (failure) message generated for the replication instance.</p>
-- @param _StopReason [String] <p>The reason the replication task was stopped.</p>
-- @param _ReplicationTaskCreationDate [TStamp] <p>The date the replication task was created.</p>
-- @param _MigrationType [MigrationTypeValue] <p>The type of migration.</p>
-- @param _TargetEndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationTaskSettings [String] <p>The settings for the replication task.</p>
function M.ReplicationTask(_SourceEndpointArn, _ReplicationTaskIdentifier, _ReplicationInstanceArn, _TableMappings, _ReplicationTaskStartDate, _ReplicationTaskStats, _Status, _ReplicationTaskArn, _LastFailureMessage, _StopReason, _ReplicationTaskCreationDate, _MigrationType, _TargetEndpointArn, _ReplicationTaskSettings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationTask")
	local t = { 
		["SourceEndpointArn"] = _SourceEndpointArn,
		["ReplicationTaskIdentifier"] = _ReplicationTaskIdentifier,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
		["TableMappings"] = _TableMappings,
		["ReplicationTaskStartDate"] = _ReplicationTaskStartDate,
		["ReplicationTaskStats"] = _ReplicationTaskStats,
		["Status"] = _Status,
		["ReplicationTaskArn"] = _ReplicationTaskArn,
		["LastFailureMessage"] = _LastFailureMessage,
		["StopReason"] = _StopReason,
		["ReplicationTaskCreationDate"] = _ReplicationTaskCreationDate,
		["MigrationType"] = _MigrationType,
		["TargetEndpointArn"] = _TargetEndpointArn,
		["ReplicationTaskSettings"] = _ReplicationTaskSettings,
	}
	asserts.AssertReplicationTask(t)
	return t
end

keys.Endpoint = { ["Username"] = true, ["Status"] = true, ["MongoDbSettings"] = true, ["S3Settings"] = true, ["EndpointArn"] = true, ["ServerName"] = true, ["CertificateArn"] = true, ["EndpointType"] = true, ["ExternalId"] = true, ["KmsKeyId"] = true, ["ExtraConnectionAttributes"] = true, ["DatabaseName"] = true, ["DynamoDbSettings"] = true, ["SslMode"] = true, ["EngineName"] = true, ["EndpointIdentifier"] = true, ["Port"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["MongoDbSettings"] then asserts.AssertMongoDbSettings(struct["MongoDbSettings"]) end
	if struct["S3Settings"] then asserts.AssertS3Settings(struct["S3Settings"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["EndpointType"] then asserts.AssertReplicationEndpointTypeValue(struct["EndpointType"]) end
	if struct["ExternalId"] then asserts.AssertString(struct["ExternalId"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ExtraConnectionAttributes"] then asserts.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then asserts.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then asserts.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p/>
-- @param _Username [String] <p>The user name used to connect to the endpoint.</p>
-- @param _Status [String] <p>The status of the endpoint.</p>
-- @param _MongoDbSettings [MongoDbSettings] <p>The settings for the MongoDB source endpoint. For more information, see the <code>MongoDbSettings</code> structure.</p>
-- @param _S3Settings [S3Settings] <p>The settings for the S3 target endpoint. For more information, see the <code>S3Settings</code> structure.</p>
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ServerName [String] <p>The name of the server at the endpoint.</p>
-- @param _CertificateArn [String] <p>The Amazon Resource Name (ARN) used for SSL connection to the endpoint.</p>
-- @param _EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- @param _ExternalId [String] <p> Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account. </p>
-- @param _KmsKeyId [String] <p>The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param _ExtraConnectionAttributes [String] <p>Additional connection attributes used to connect to the endpoint.</p>
-- @param _DatabaseName [String] <p>The name of the database at the endpoint.</p>
-- @param _DynamoDbSettings [DynamoDbSettings] <p>The settings for the target DynamoDB database. For more information, see the <code>DynamoDBSettings</code> structure.</p>
-- @param _SslMode [DmsSslModeValue] <p>The SSL mode used to connect to the endpoint.</p> <p>SSL mode can be one of four values: none, require, verify-ca, verify-full. </p> <p>The default value is none.</p>
-- @param _EngineName [String] <p>The database engine name. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, SYBASE, DYNAMODB, MONGODB, and SQLSERVER.</p>
-- @param _EndpointIdentifier [String] <p>The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- @param _Port [IntegerOptional] <p>The port value used to access the endpoint.</p>
function M.Endpoint(_Username, _Status, _MongoDbSettings, _S3Settings, _EndpointArn, _ServerName, _CertificateArn, _EndpointType, _ExternalId, _KmsKeyId, _ExtraConnectionAttributes, _DatabaseName, _DynamoDbSettings, _SslMode, _EngineName, _EndpointIdentifier, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Username"] = _Username,
		["Status"] = _Status,
		["MongoDbSettings"] = _MongoDbSettings,
		["S3Settings"] = _S3Settings,
		["EndpointArn"] = _EndpointArn,
		["ServerName"] = _ServerName,
		["CertificateArn"] = _CertificateArn,
		["EndpointType"] = _EndpointType,
		["ExternalId"] = _ExternalId,
		["KmsKeyId"] = _KmsKeyId,
		["ExtraConnectionAttributes"] = _ExtraConnectionAttributes,
		["DatabaseName"] = _DatabaseName,
		["DynamoDbSettings"] = _DynamoDbSettings,
		["SslMode"] = _SslMode,
		["EngineName"] = _EngineName,
		["EndpointIdentifier"] = _EndpointIdentifier,
		["Port"] = _Port,
	}
	asserts.AssertEndpoint(t)
	return t
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
-- @param _Certificate [Certificate] <p>The certificate to be uploaded.</p>
function M.ImportCertificateResponse(_Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportCertificateResponse")
	local t = { 
		["Certificate"] = _Certificate,
	}
	asserts.AssertImportCertificateResponse(t)
	return t
end

keys.CreateEndpointMessage = { ["Username"] = true, ["CertificateArn"] = true, ["MongoDbSettings"] = true, ["S3Settings"] = true, ["Tags"] = true, ["ServerName"] = true, ["EndpointType"] = true, ["KmsKeyId"] = true, ["ExtraConnectionAttributes"] = true, ["DatabaseName"] = true, ["DynamoDbSettings"] = true, ["SslMode"] = true, ["EngineName"] = true, ["Password"] = true, ["EndpointIdentifier"] = true, ["Port"] = true, nil }

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
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ExtraConnectionAttributes"] then asserts.AssertString(struct["ExtraConnectionAttributes"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DynamoDbSettings"] then asserts.AssertDynamoDbSettings(struct["DynamoDbSettings"]) end
	if struct["SslMode"] then asserts.AssertDmsSslModeValue(struct["SslMode"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["Password"] then asserts.AssertSecretString(struct["Password"]) end
	if struct["EndpointIdentifier"] then asserts.AssertString(struct["EndpointIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointMessage[k], "CreateEndpointMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointMessage
-- <p/>
-- @param _Username [String] <p>The user name to be used to login to the endpoint database.</p>
-- @param _CertificateArn [String] <p>The Amazon Resource Number (ARN) for the certificate.</p>
-- @param _MongoDbSettings [MongoDbSettings] <p>Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the <b>Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- @param _S3Settings [S3Settings] <p>Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the <b>Extra Connection Attributes</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html"> Using Amazon S3 as a Target for AWS Database Migration Service</a>. </p>
-- @param _Tags [TagList] <p>Tags to be added to the endpoint.</p>
-- @param _ServerName [String] <p>The name of the server where the endpoint database resides.</p>
-- @param _EndpointType [ReplicationEndpointTypeValue] <p>The type of endpoint.</p>
-- @param _KmsKeyId [String] <p>The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param _ExtraConnectionAttributes [String] <p>Additional attributes associated with the connection.</p>
-- @param _DatabaseName [String] <p>The name of the endpoint database.</p>
-- @param _DynamoDbSettings [DynamoDbSettings] <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the <b>Using Object Mapping to Migrate Data to DynamoDB</b> section at <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html"> Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service</a>. </p>
-- @param _SslMode [DmsSslModeValue] <p>The SSL mode to use for the SSL connection.</p> <p>SSL mode can be one of four values: none, require, verify-ca, verify-full. </p> <p>The default value is none.</p>
-- @param _EngineName [String] <p>The type of engine for the endpoint. Valid values, depending on the EndPointType, include MYSQL, ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, S3, SYBASE, DYNAMODB, MONGODB, and SQLSERVER.</p>
-- @param _Password [SecretString] <p>The password to be used to login to the endpoint database.</p>
-- @param _EndpointIdentifier [String] <p>The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.</p>
-- @param _Port [IntegerOptional] <p>The port used by the endpoint database.</p>
-- Required parameter: EndpointIdentifier
-- Required parameter: EndpointType
-- Required parameter: EngineName
function M.CreateEndpointMessage(_Username, _CertificateArn, _MongoDbSettings, _S3Settings, _Tags, _ServerName, _EndpointType, _KmsKeyId, _ExtraConnectionAttributes, _DatabaseName, _DynamoDbSettings, _SslMode, _EngineName, _Password, _EndpointIdentifier, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEndpointMessage")
	local t = { 
		["Username"] = _Username,
		["CertificateArn"] = _CertificateArn,
		["MongoDbSettings"] = _MongoDbSettings,
		["S3Settings"] = _S3Settings,
		["Tags"] = _Tags,
		["ServerName"] = _ServerName,
		["EndpointType"] = _EndpointType,
		["KmsKeyId"] = _KmsKeyId,
		["ExtraConnectionAttributes"] = _ExtraConnectionAttributes,
		["DatabaseName"] = _DatabaseName,
		["DynamoDbSettings"] = _DynamoDbSettings,
		["SslMode"] = _SslMode,
		["EngineName"] = _EngineName,
		["Password"] = _Password,
		["EndpointIdentifier"] = _EndpointIdentifier,
		["Port"] = _Port,
	}
	asserts.AssertCreateEndpointMessage(t)
	return t
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
-- @param _ResourceArn [String] <p>&gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be removed from.</p>
-- @param _TagKeys [KeyList] <p>The tag key (name) of the tag to be removed.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceMessage(_ResourceArn, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceMessage")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertRemoveTagsFromResourceMessage(t)
	return t
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
-- @param _StorageType [String] <p>The type of storage used by the replication instance.</p>
-- @param _ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- @param _EngineVersion [String] <p>The version of the replication engine.</p>
-- @param _IncludedAllocatedStorage [Integer] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- @param _DefaultAllocatedStorage [Integer] <p>The default amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- @param _MinAllocatedStorage [Integer] <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.</p>
-- @param _MaxAllocatedStorage [Integer] <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.</p>
function M.OrderableReplicationInstance(_StorageType, _ReplicationInstanceClass, _EngineVersion, _IncludedAllocatedStorage, _DefaultAllocatedStorage, _MinAllocatedStorage, _MaxAllocatedStorage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableReplicationInstance")
	local t = { 
		["StorageType"] = _StorageType,
		["ReplicationInstanceClass"] = _ReplicationInstanceClass,
		["EngineVersion"] = _EngineVersion,
		["IncludedAllocatedStorage"] = _IncludedAllocatedStorage,
		["DefaultAllocatedStorage"] = _DefaultAllocatedStorage,
		["MinAllocatedStorage"] = _MinAllocatedStorage,
		["MaxAllocatedStorage"] = _MaxAllocatedStorage,
	}
	asserts.AssertOrderableReplicationInstance(t)
	return t
end

keys.ReplicationInstance = { ["MultiAZ"] = true, ["AvailabilityZone"] = true, ["ReplicationInstancePrivateIpAddress"] = true, ["ReplicationInstanceArn"] = true, ["ReplicationInstancePrivateIpAddresses"] = true, ["ReplicationInstanceClass"] = true, ["ReplicationSubnetGroup"] = true, ["AutoMinorVersionUpgrade"] = true, ["ReplicationInstanceStatus"] = true, ["VpcSecurityGroups"] = true, ["KmsKeyId"] = true, ["InstanceCreateTime"] = true, ["ReplicationInstancePublicIpAddress"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["ReplicationInstancePublicIpAddresses"] = true, ["SecondaryAvailabilityZone"] = true, ["ReplicationInstanceIdentifier"] = true, ["PubliclyAccessible"] = true, ["PreferredMaintenanceWindow"] = true, ["PendingModifiedValues"] = true, nil }

function asserts.AssertReplicationInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationInstance to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["ReplicationInstancePrivateIpAddress"] then asserts.AssertString(struct["ReplicationInstancePrivateIpAddress"]) end
	if struct["ReplicationInstanceArn"] then asserts.AssertString(struct["ReplicationInstanceArn"]) end
	if struct["ReplicationInstancePrivateIpAddresses"] then asserts.AssertReplicationInstancePrivateIpAddressList(struct["ReplicationInstancePrivateIpAddresses"]) end
	if struct["ReplicationInstanceClass"] then asserts.AssertString(struct["ReplicationInstanceClass"]) end
	if struct["ReplicationSubnetGroup"] then asserts.AssertReplicationSubnetGroup(struct["ReplicationSubnetGroup"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["ReplicationInstanceStatus"] then asserts.AssertString(struct["ReplicationInstanceStatus"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["InstanceCreateTime"] then asserts.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["ReplicationInstancePublicIpAddress"] then asserts.AssertString(struct["ReplicationInstancePublicIpAddress"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationInstancePublicIpAddresses"] then asserts.AssertReplicationInstancePublicIpAddressList(struct["ReplicationInstancePublicIpAddresses"]) end
	if struct["SecondaryAvailabilityZone"] then asserts.AssertString(struct["SecondaryAvailabilityZone"]) end
	if struct["ReplicationInstanceIdentifier"] then asserts.AssertString(struct["ReplicationInstanceIdentifier"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["PendingModifiedValues"] then asserts.AssertReplicationPendingModifiedValues(struct["PendingModifiedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationInstance[k], "ReplicationInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationInstance
-- <p/>
-- @param _MultiAZ [Boolean] <p> Specifies if the replication instance is a Multi-AZ deployment. You cannot set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
-- @param _AvailabilityZone [String] <p>The Availability Zone for the instance.</p>
-- @param _ReplicationInstancePrivateIpAddress [String] <p>The private IP address of the replication instance.</p>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
-- @param _ReplicationInstancePrivateIpAddresses [ReplicationInstancePrivateIpAddressList] <p>The private IP address of the replication instance.</p>
-- @param _ReplicationInstanceClass [String] <p>The compute and memory capacity of the replication instance.</p> <p> Valid Values: <code>dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge </code> </p>
-- @param _ReplicationSubnetGroup [ReplicationSubnetGroup] <p>The subnet group for the replication instance.</p>
-- @param _AutoMinorVersionUpgrade [Boolean] <p>Boolean value indicating if minor version upgrades will be automatically applied to the instance.</p>
-- @param _ReplicationInstanceStatus [String] <p>The status of the replication instance.</p>
-- @param _VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>The VPC security group for the instance.</p>
-- @param _KmsKeyId [String] <p>The KMS key identifier that is used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param _InstanceCreateTime [TStamp] <p>The time the replication instance was created.</p>
-- @param _ReplicationInstancePublicIpAddress [String] <p>The public IP address of the replication instance.</p>
-- @param _AllocatedStorage [Integer] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
-- @param _EngineVersion [String] <p>The engine version number of the replication instance.</p>
-- @param _ReplicationInstancePublicIpAddresses [ReplicationInstancePublicIpAddressList] <p>The public IP address of the replication instance.</p>
-- @param _SecondaryAvailabilityZone [String] <p>The availability zone of the standby replication instance in a Multi-AZ deployment.</p>
-- @param _ReplicationInstanceIdentifier [String] <p>The replication instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>
-- @param _PubliclyAccessible [Boolean] <p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>
-- @param _PreferredMaintenanceWindow [String] <p>The maintenance window times for the replication instance.</p>
-- @param _PendingModifiedValues [ReplicationPendingModifiedValues] <p>The pending modification values.</p>
function M.ReplicationInstance(_MultiAZ, _AvailabilityZone, _ReplicationInstancePrivateIpAddress, _ReplicationInstanceArn, _ReplicationInstancePrivateIpAddresses, _ReplicationInstanceClass, _ReplicationSubnetGroup, _AutoMinorVersionUpgrade, _ReplicationInstanceStatus, _VpcSecurityGroups, _KmsKeyId, _InstanceCreateTime, _ReplicationInstancePublicIpAddress, _AllocatedStorage, _EngineVersion, _ReplicationInstancePublicIpAddresses, _SecondaryAvailabilityZone, _ReplicationInstanceIdentifier, _PubliclyAccessible, _PreferredMaintenanceWindow, _PendingModifiedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationInstance")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["AvailabilityZone"] = _AvailabilityZone,
		["ReplicationInstancePrivateIpAddress"] = _ReplicationInstancePrivateIpAddress,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
		["ReplicationInstancePrivateIpAddresses"] = _ReplicationInstancePrivateIpAddresses,
		["ReplicationInstanceClass"] = _ReplicationInstanceClass,
		["ReplicationSubnetGroup"] = _ReplicationSubnetGroup,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["ReplicationInstanceStatus"] = _ReplicationInstanceStatus,
		["VpcSecurityGroups"] = _VpcSecurityGroups,
		["KmsKeyId"] = _KmsKeyId,
		["InstanceCreateTime"] = _InstanceCreateTime,
		["ReplicationInstancePublicIpAddress"] = _ReplicationInstancePublicIpAddress,
		["AllocatedStorage"] = _AllocatedStorage,
		["EngineVersion"] = _EngineVersion,
		["ReplicationInstancePublicIpAddresses"] = _ReplicationInstancePublicIpAddresses,
		["SecondaryAvailabilityZone"] = _SecondaryAvailabilityZone,
		["ReplicationInstanceIdentifier"] = _ReplicationInstanceIdentifier,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["PendingModifiedValues"] = _PendingModifiedValues,
	}
	asserts.AssertReplicationInstance(t)
	return t
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
function M.AddTagsToResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceResponse")
	local t = { 
	}
	asserts.AssertAddTagsToResourceResponse(t)
	return t
end

keys.ResourceAlreadyExistsFault = { ["message"] = true, nil }

function asserts.AssertResourceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsFault to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsFault[k], "ResourceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsFault
-- <p>The resource you are attempting to create already exists.</p>
-- @param _message [ExceptionMessage] <p/>
function M.ResourceAlreadyExistsFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceAlreadyExistsFault(t)
	return t
end

keys.ReplicationSubnetGroupDoesNotCoverEnoughAZs = { ["message"] = true, nil }

function asserts.AssertReplicationSubnetGroupDoesNotCoverEnoughAZs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationSubnetGroupDoesNotCoverEnoughAZs to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationSubnetGroupDoesNotCoverEnoughAZs[k], "ReplicationSubnetGroupDoesNotCoverEnoughAZs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationSubnetGroupDoesNotCoverEnoughAZs
-- <p>The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.</p>
-- @param _message [ExceptionMessage] <p/>
function M.ReplicationSubnetGroupDoesNotCoverEnoughAZs(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationSubnetGroupDoesNotCoverEnoughAZs")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertReplicationSubnetGroupDoesNotCoverEnoughAZs(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _ReplicationTasks [ReplicationTaskList] <p>A description of the replication tasks.</p>
function M.DescribeReplicationTasksResponse(_Marker, _ReplicationTasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationTasksResponse")
	local t = { 
		["Marker"] = _Marker,
		["ReplicationTasks"] = _ReplicationTasks,
	}
	asserts.AssertDescribeReplicationTasksResponse(t)
	return t
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
-- @param _CertificateIdentifier [String] <p>The customer-assigned name of the certificate. Valid characters are A-z and 0-9.</p>
-- @param _Tags [TagList] <p>The tags associated with the certificate.</p>
-- @param _CertificatePem [String] <p>The contents of the .pem X.509 certificate file for the certificate.</p>
-- @param _CertificateWallet [CertificateWallet] <p>The location of the imported Oracle Wallet certificate for use with SSL.</p>
-- Required parameter: CertificateIdentifier
function M.ImportCertificateMessage(_CertificateIdentifier, _Tags, _CertificatePem, _CertificateWallet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportCertificateMessage")
	local t = { 
		["CertificateIdentifier"] = _CertificateIdentifier,
		["Tags"] = _Tags,
		["CertificatePem"] = _CertificatePem,
		["CertificateWallet"] = _CertificateWallet,
	}
	asserts.AssertImportCertificateMessage(t)
	return t
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
-- @param _ReplicationSubnetGroup [ReplicationSubnetGroup] <p>The replication subnet group that was created.</p>
function M.CreateReplicationSubnetGroupResponse(_ReplicationSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationSubnetGroupResponse")
	local t = { 
		["ReplicationSubnetGroup"] = _ReplicationSubnetGroup,
	}
	asserts.AssertCreateReplicationSubnetGroupResponse(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Filters applied to the describe action.</p> <p>Valid filter names: engine-name | endpoint-type</p>
function M.DescribeEndpointTypesMessage(_Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointTypesMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeEndpointTypesMessage(t)
	return t
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
-- @param _ReplicationSubnetGroup [ReplicationSubnetGroup] <p>The modified replication subnet group.</p>
function M.ModifyReplicationSubnetGroupResponse(_ReplicationSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationSubnetGroupResponse")
	local t = { 
		["ReplicationSubnetGroup"] = _ReplicationSubnetGroup,
	}
	asserts.AssertModifyReplicationSubnetGroupResponse(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _EventSubscriptionsList [EventSubscriptionsList] <p>A list of event subscriptions.</p>
function M.DescribeEventSubscriptionsResponse(_Marker, _EventSubscriptionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventSubscriptionsResponse")
	local t = { 
		["Marker"] = _Marker,
		["EventSubscriptionsList"] = _EventSubscriptionsList,
	}
	asserts.AssertDescribeEventSubscriptionsResponse(t)
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
-- @param _EventCategories [EventCategoriesList] <p> A list of event categories for a source type that you want to subscribe to. You can see a list of the categories for a given source type by calling the <b>DescribeEventCategories</b> action or in the topic <a href="http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html"> Working with Events and Notifications</a> in the AWS Database Migration Service User Guide. </p>
-- @param _SourceType [String] <p> The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to <code>replication-instance</code>. If this value is not specified, all events are returned. </p> <p>Valid values: replication-instance | migration-task</p>
-- @param _Tags [TagList] <p>A tag to be attached to the event subscription.</p>
-- @param _Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription, or set to <b>false</b> to create the subscription but not activate it. </p>
-- @param _SnsTopicArn [String] <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>
-- @param _SubscriptionName [String] <p>The name of the DMS event notification subscription. </p> <p>Constraints: The name must be less than 255 characters. </p>
-- @param _SourceIds [SourceIdsList] <p> The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens. </p>
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
-- @param _EventSubscription [EventSubscription] <p>The event subscription that was deleted.</p>
function M.DeleteEventSubscriptionResponse(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionResponse")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertDeleteEventSubscriptionResponse(t)
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
-- @param _Status [RefreshSchemasStatusTypeValue] <p>The status of the schema.</p>
-- @param _LastFailureMessage [String] <p>The last failure message for the schema.</p>
-- @param _LastRefreshDate [TStamp] <p>The date the schema was last refreshed.</p>
-- @param _EndpointArn [String] <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
-- @param _ReplicationInstanceArn [String] <p>The Amazon Resource Name (ARN) of the replication instance.</p>
function M.RefreshSchemasStatus(_Status, _LastFailureMessage, _LastRefreshDate, _EndpointArn, _ReplicationInstanceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshSchemasStatus")
	local t = { 
		["Status"] = _Status,
		["LastFailureMessage"] = _LastFailureMessage,
		["LastRefreshDate"] = _LastRefreshDate,
		["EndpointArn"] = _EndpointArn,
		["ReplicationInstanceArn"] = _ReplicationInstanceArn,
	}
	asserts.AssertRefreshSchemasStatus(t)
	return t
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
-- @param _Status [String] <p>The status of the AWS DMS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status "no-permission" indicates that AWS DMS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
-- @param _SubscriptionCreationTime [String] <p>The time the RDS event notification subscription was created.</p>
-- @param _SourceType [String] <p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-server | security-group | migration-task</p>
-- @param _EventCategoriesList [EventCategoriesList] <p>A lists of event categories.</p>
-- @param _SourceIdsList [SourceIdsList] <p>A list of source Ids for the event subscription.</p>
-- @param _CustSubscriptionId [String] <p>The AWS DMS event notification subscription Id.</p>
-- @param _Enabled [Boolean] <p>Boolean value that indicates if the event subscription is enabled.</p>
-- @param _SnsTopicArn [String] <p>The topic ARN of the AWS DMS event notification subscription.</p>
-- @param _CustomerAwsId [String] <p>The AWS customer account associated with the AWS DMS event notification subscription.</p>
function M.EventSubscription(_Status, _SubscriptionCreationTime, _SourceType, _EventCategoriesList, _SourceIdsList, _CustSubscriptionId, _Enabled, _SnsTopicArn, _CustomerAwsId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["Status"] = _Status,
		["SubscriptionCreationTime"] = _SubscriptionCreationTime,
		["SourceType"] = _SourceType,
		["EventCategoriesList"] = _EventCategoriesList,
		["SourceIdsList"] = _SourceIdsList,
		["CustSubscriptionId"] = _CustSubscriptionId,
		["Enabled"] = _Enabled,
		["SnsTopicArn"] = _SnsTopicArn,
		["CustomerAwsId"] = _CustomerAwsId,
	}
	asserts.AssertEventSubscription(t)
	return t
end

keys.SubnetAlreadyInUse = { ["message"] = true, nil }

function asserts.AssertSubnetAlreadyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetAlreadyInUse to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubnetAlreadyInUse[k], "SubnetAlreadyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetAlreadyInUse
-- <p>The specified subnet is already in use.</p>
-- @param _message [ExceptionMessage] <p/>
function M.SubnetAlreadyInUse(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetAlreadyInUse")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSubnetAlreadyInUse(t)
	return t
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
-- @param _ReplicationTaskArn [String] <p>The Amazon Resource Number(ARN) of the replication task to be stopped.</p>
-- Required parameter: ReplicationTaskArn
function M.StopReplicationTaskMessage(_ReplicationTaskArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopReplicationTaskMessage")
	local t = { 
		["ReplicationTaskArn"] = _ReplicationTaskArn,
	}
	asserts.AssertStopReplicationTaskMessage(t)
	return t
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

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
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
	assert(type(string) == "string", "Expected CertificateWallet to be of type 'string'")
end

function M.CertificateWallet(blob)
	asserts.AssertCertificateWallet(blob)
	return blob
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
--- Call RefreshSchemas asynchronously, invoking a callback when done
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

--- Call RefreshSchemas synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RefreshSchemasMessage
-- @return response
-- @return error_message
function M.RefreshSchemasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RefreshSchemasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCertificates asynchronously, invoking a callback when done
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

--- Call DescribeReplicationInstances asynchronously, invoking a callback when done
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

--- Call DescribeReplicationInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationInstancesMessage
-- @return response
-- @return error_message
function M.DescribeReplicationInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReplicationSubnetGroup asynchronously, invoking a callback when done
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

--- Call CreateReplicationSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationSubnetGroupMessage
-- @return response
-- @return error_message
function M.CreateReplicationSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationSubnetGroupAsync(..., function(response, error_message)
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

--- Call CreateReplicationTask asynchronously, invoking a callback when done
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

--- Call CreateReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationTaskMessage
-- @return response
-- @return error_message
function M.CreateReplicationTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationInstance asynchronously, invoking a callback when done
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

--- Call DeleteReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationInstanceMessage
-- @return response
-- @return error_message
function M.DeleteReplicationInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationInstance asynchronously, invoking a callback when done
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

--- Call ModifyReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationInstanceMessage
-- @return response
-- @return error_message
function M.ModifyReplicationInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTableStatistics asynchronously, invoking a callback when done
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

--- Call DescribeTableStatistics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTableStatisticsMessage
-- @return response
-- @return error_message
function M.DescribeTableStatisticsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTableStatisticsAsync(..., function(response, error_message)
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

--- Call StartReplicationTask asynchronously, invoking a callback when done
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

--- Call StartReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartReplicationTaskMessage
-- @return response
-- @return error_message
function M.StartReplicationTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartReplicationTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationSubnetGroup asynchronously, invoking a callback when done
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

--- Call DeleteReplicationSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationSubnetGroupMessage
-- @return response
-- @return error_message
function M.DeleteReplicationSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationSubnetGroupAsync(..., function(response, error_message)
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

--- Call DescribeAccountAttributes asynchronously, invoking a callback when done
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

--- Call DeleteCertificate asynchronously, invoking a callback when done
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

--- Call DeleteCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCertificateMessage
-- @return response
-- @return error_message
function M.DeleteCertificateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCertificateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TestConnection asynchronously, invoking a callback when done
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

--- Call TestConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestConnectionMessage
-- @return response
-- @return error_message
function M.TestConnectionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestConnectionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpoints asynchronously, invoking a callback when done
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

--- Call DescribeEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointsMessage
-- @return response
-- @return error_message
function M.DescribeEndpointsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointsAsync(..., function(response, error_message)
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

--- Call CreateEndpoint asynchronously, invoking a callback when done
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

--- Call CreateEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEndpointMessage
-- @return response
-- @return error_message
function M.CreateEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationTask asynchronously, invoking a callback when done
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

--- Call DeleteReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationTaskMessage
-- @return response
-- @return error_message
function M.DeleteReplicationTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRefreshSchemasStatus asynchronously, invoking a callback when done
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

--- Call DescribeRefreshSchemasStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRefreshSchemasStatusMessage
-- @return response
-- @return error_message
function M.DescribeRefreshSchemasStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRefreshSchemasStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyEndpoint asynchronously, invoking a callback when done
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

--- Call ModifyEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyEndpointMessage
-- @return response
-- @return error_message
function M.ModifyEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReloadTables asynchronously, invoking a callback when done
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

--- Call ReloadTables synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReloadTablesMessage
-- @return response
-- @return error_message
function M.ReloadTablesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReloadTablesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationSubnetGroup asynchronously, invoking a callback when done
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

--- Call ModifyReplicationSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationSubnetGroupMessage
-- @return response
-- @return error_message
function M.ModifyReplicationSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSchemas asynchronously, invoking a callback when done
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

--- Call DescribeSchemas synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSchemasMessage
-- @return response
-- @return error_message
function M.DescribeSchemasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSchemasAsync(..., function(response, error_message)
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

--- Call ModifyEventSubscription asynchronously, invoking a callback when done
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

--- Call DescribeConnections asynchronously, invoking a callback when done
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

--- Call DescribeConnections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConnectionsMessage
-- @return response
-- @return error_message
function M.DescribeConnectionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConnectionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReplicationInstance asynchronously, invoking a callback when done
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

--- Call CreateReplicationInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationInstanceMessage
-- @return response
-- @return error_message
function M.CreateReplicationInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportCertificate asynchronously, invoking a callback when done
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

--- Call ImportCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportCertificateMessage
-- @return response
-- @return error_message
function M.ImportCertificateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportCertificateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationSubnetGroups asynchronously, invoking a callback when done
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

--- Call DescribeReplicationSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationSubnetGroupsMessage
-- @return response
-- @return error_message
function M.DescribeReplicationSubnetGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationSubnetGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopReplicationTask asynchronously, invoking a callback when done
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

--- Call StopReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopReplicationTaskMessage
-- @return response
-- @return error_message
function M.StopReplicationTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopReplicationTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpointTypes asynchronously, invoking a callback when done
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

--- Call DescribeEndpointTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointTypesMessage
-- @return response
-- @return error_message
function M.DescribeEndpointTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationTasks asynchronously, invoking a callback when done
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

--- Call DescribeReplicationTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationTasksMessage
-- @return response
-- @return error_message
function M.DescribeReplicationTasksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationTasksAsync(..., function(response, error_message)
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

--- Call DeleteEndpoint asynchronously, invoking a callback when done
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

--- Call DeleteEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEndpointMessage
-- @return response
-- @return error_message
function M.DeleteEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableReplicationInstances asynchronously, invoking a callback when done
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

--- Call DescribeOrderableReplicationInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrderableReplicationInstancesMessage
-- @return response
-- @return error_message
function M.DescribeOrderableReplicationInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableReplicationInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationTask asynchronously, invoking a callback when done
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

--- Call ModifyReplicationTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationTaskMessage
-- @return response
-- @return error_message
function M.ModifyReplicationTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationTaskAsync(..., function(response, error_message)
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


return M
