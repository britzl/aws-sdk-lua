--- GENERATED CODE - DO NOT MODIFY
-- Amazon DynamoDB (dynamodb-2012-08-10)

local M = {}

M.metadata = {
	api_version = "2012-08-10",
	json_version = "1.0",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "dynamodb",
	service_abbreviation = "DynamoDB",
	service_full_name = "Amazon DynamoDB",
	signature_version = "v4",
	target_prefix = "DynamoDB_20120810",
	timestamp_format = "",
	global_endpoint = "",
	uid = "dynamodb-2012-08-10",
}

local keys = {}
local asserts = {}

keys.ReplicaDescription = { ["RegionName"] = true, nil }

function asserts.AssertReplicaDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicaDescription to be of type 'table'")
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicaDescription[k], "ReplicaDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicaDescription
-- <p>Contains the details of the replica.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegionName [RegionName] <p>The name of the region.</p>
-- @return ReplicaDescription structure as a key-value pair table
function M.ReplicaDescription(args)
	assert(args, "You must provide an argument table when creating ReplicaDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertReplicaDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BackupDescription = { ["SourceTableFeatureDetails"] = true, ["BackupDetails"] = true, ["SourceTableDetails"] = true, nil }

function asserts.AssertBackupDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BackupDescription to be of type 'table'")
	if struct["SourceTableFeatureDetails"] then asserts.AssertSourceTableFeatureDetails(struct["SourceTableFeatureDetails"]) end
	if struct["BackupDetails"] then asserts.AssertBackupDetails(struct["BackupDetails"]) end
	if struct["SourceTableDetails"] then asserts.AssertSourceTableDetails(struct["SourceTableDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.BackupDescription[k], "BackupDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BackupDescription
-- <p>Contains the description of the backup created for the table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceTableFeatureDetails [SourceTableFeatureDetails] <p>Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.</p>
-- * BackupDetails [BackupDetails] <p>Contains the details of the backup created for the table. </p>
-- * SourceTableDetails [SourceTableDetails] <p>Contains the details of the table when the backup was created. </p>
-- @return BackupDescription structure as a key-value pair table
function M.BackupDescription(args)
	assert(args, "You must provide an argument table when creating BackupDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceTableFeatureDetails"] = args["SourceTableFeatureDetails"],
		["BackupDetails"] = args["BackupDetails"],
		["SourceTableDetails"] = args["SourceTableDetails"],
	}
	asserts.AssertBackupDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutItemOutput = { ["Attributes"] = true, ["ItemCollectionMetrics"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertPutItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeMap(struct["Attributes"]) end
	if struct["ItemCollectionMetrics"] then asserts.AssertItemCollectionMetrics(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutItemOutput[k], "PutItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemOutput
-- <p>Represents the output of a <code>PutItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeMap] <p>The attribute values as they appeared before the <code>PutItem</code> operation, but only if <code>ReturnValues</code> is specified as <code>ALL_OLD</code> in the request. Each element consists of an attribute name and an attribute value.</p>
-- * ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>PutItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- * ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>PutItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return PutItemOutput structure as a key-value pair table
function M.PutItemOutput(args)
	assert(args, "You must provide an argument table when creating PutItemOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["ItemCollectionMetrics"] = args["ItemCollectionMetrics"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertPutItemOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContinuousBackupsOutput = { ["ContinuousBackupsDescription"] = true, nil }

function asserts.AssertDescribeContinuousBackupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContinuousBackupsOutput to be of type 'table'")
	if struct["ContinuousBackupsDescription"] then asserts.AssertContinuousBackupsDescription(struct["ContinuousBackupsDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContinuousBackupsOutput[k], "DescribeContinuousBackupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContinuousBackupsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContinuousBackupsDescription [ContinuousBackupsDescription] <p>Represents the continuous backups and point in time recovery settings on the table.</p>
-- @return DescribeContinuousBackupsOutput structure as a key-value pair table
function M.DescribeContinuousBackupsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeContinuousBackupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContinuousBackupsDescription"] = args["ContinuousBackupsDescription"],
	}
	asserts.AssertDescribeContinuousBackupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutItemInput = { ["ConditionalOperator"] = true, ["ExpressionAttributeNames"] = true, ["ReturnValues"] = true, ["ConditionExpression"] = true, ["TableName"] = true, ["ReturnItemCollectionMetrics"] = true, ["ReturnConsumedCapacity"] = true, ["Item"] = true, ["ExpressionAttributeValues"] = true, ["Expected"] = true, nil }

function asserts.AssertPutItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Item"], "Expected key Item to exist in table")
	if struct["ConditionalOperator"] then asserts.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["ReturnValues"] then asserts.AssertReturnValue(struct["ReturnValues"]) end
	if struct["ConditionExpression"] then asserts.AssertConditionExpression(struct["ConditionExpression"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ReturnItemCollectionMetrics"] then asserts.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["Item"] then asserts.AssertPutItemInputAttributeMap(struct["Item"]) end
	if struct["ExpressionAttributeValues"] then asserts.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["Expected"] then asserts.AssertExpectedAttributeMap(struct["Expected"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutItemInput[k], "PutItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemInput
-- <p>Represents the input of a <code>PutItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared before they were updated with the <code>PutItem</code> request. For <code>PutItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value pair, then the content of the old item is returned.</p> </li> </ul> <note> <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations; however, <code>PutItem</code> does not recognize any values other than <code>NONE</code> or <code>ALL_OLD</code>.</p> </note>
-- * ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional <code>PutItem</code> operation to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table to contain the item.</p>
-- * ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * Item [PutItemInputAttributeMap] <p>A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.</p> <p>You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> <p>For more information about primary keys, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code> object.</p>
-- * ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: TableName
-- Required key: Item
-- @return PutItemInput structure as a key-value pair table
function M.PutItemInput(args)
	assert(args, "You must provide an argument table when creating PutItemInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConditionalOperator"] = args["ConditionalOperator"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
		["ReturnValues"] = args["ReturnValues"],
		["ConditionExpression"] = args["ConditionExpression"],
		["TableName"] = args["TableName"],
		["ReturnItemCollectionMetrics"] = args["ReturnItemCollectionMetrics"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["Item"] = args["Item"],
		["ExpressionAttributeValues"] = args["ExpressionAttributeValues"],
		["Expected"] = args["Expected"],
	}
	asserts.AssertPutItemInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGlobalTableOutput = { ["GlobalTableDescription"] = true, nil }

function asserts.AssertCreateGlobalTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGlobalTableOutput to be of type 'table'")
	if struct["GlobalTableDescription"] then asserts.AssertGlobalTableDescription(struct["GlobalTableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGlobalTableOutput[k], "CreateGlobalTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGlobalTableOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableDescription [GlobalTableDescription] <p>Contains the details of the global table.</p>
-- @return CreateGlobalTableOutput structure as a key-value pair table
function M.CreateGlobalTableOutput(args)
	assert(args, "You must provide an argument table when creating CreateGlobalTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableDescription"] = args["GlobalTableDescription"],
	}
	asserts.AssertCreateGlobalTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceTableFeatureDetails = { ["GlobalSecondaryIndexes"] = true, ["SSEDescription"] = true, ["TimeToLiveDescription"] = true, ["LocalSecondaryIndexes"] = true, ["StreamDescription"] = true, nil }

function asserts.AssertSourceTableFeatureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceTableFeatureDetails to be of type 'table'")
	if struct["GlobalSecondaryIndexes"] then asserts.AssertGlobalSecondaryIndexes(struct["GlobalSecondaryIndexes"]) end
	if struct["SSEDescription"] then asserts.AssertSSEDescription(struct["SSEDescription"]) end
	if struct["TimeToLiveDescription"] then asserts.AssertTimeToLiveDescription(struct["TimeToLiveDescription"]) end
	if struct["LocalSecondaryIndexes"] then asserts.AssertLocalSecondaryIndexes(struct["LocalSecondaryIndexes"]) end
	if struct["StreamDescription"] then asserts.AssertStreamSpecification(struct["StreamDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceTableFeatureDetails[k], "SourceTableFeatureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceTableFeatureDetails
-- <p>Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalSecondaryIndexes [GlobalSecondaryIndexes] <p>Represents the GSI properties for the table when the backup was created. It includes the IndexName, KeySchema, Projection and ProvisionedThroughput for the GSIs on the table at the time of backup. </p>
-- * SSEDescription [SSEDescription] <p>The description of the server-side encryption status on the table when the backup was created.</p>
-- * TimeToLiveDescription [TimeToLiveDescription] <p>Time to Live settings on the table when the backup was created.</p>
-- * LocalSecondaryIndexes [LocalSecondaryIndexes] <p>Represents the LSI properties for the table when the backup was created. It includes the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup. </p>
-- * StreamDescription [StreamSpecification] <p>Stream settings on the table when the backup was created.</p>
-- @return SourceTableFeatureDetails structure as a key-value pair table
function M.SourceTableFeatureDetails(args)
	assert(args, "You must provide an argument table when creating SourceTableFeatureDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalSecondaryIndexes"] = args["GlobalSecondaryIndexes"],
		["SSEDescription"] = args["SSEDescription"],
		["TimeToLiveDescription"] = args["TimeToLiveDescription"],
		["LocalSecondaryIndexes"] = args["LocalSecondaryIndexes"],
		["StreamDescription"] = args["StreamDescription"],
	}
	asserts.AssertSourceTableFeatureDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSEDescription = { ["Status"] = true, ["KMSMasterKeyArn"] = true, ["SSEType"] = true, nil }

function asserts.AssertSSEDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSEDescription to be of type 'table'")
	if struct["Status"] then asserts.AssertSSEStatus(struct["Status"]) end
	if struct["KMSMasterKeyArn"] then asserts.AssertKMSMasterKeyArn(struct["KMSMasterKeyArn"]) end
	if struct["SSEType"] then asserts.AssertSSEType(struct["SSEType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSEDescription[k], "SSEDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSEDescription
-- <p>The description of the server-side encryption status on the specified table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [SSEStatus] <p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> <li> <p> <code>UPDATING</code> - Server-side encryption is being updated.</p> </li> </ul>
-- * KMSMasterKeyArn [KMSMasterKeyArn] <p>The KMS master key ARN used for the KMS encryption.</p>
-- * SSEType [SSEType] <p>Server-side encryption type:</p> <ul> <li> <p> <code>AES256</code> - Server-side encryption which uses the AES256 algorithm.</p> </li> <li> <p> <code>KMS</code> - Server-side encryption which uses AWS Key Management Service.</p> </li> </ul>
-- @return SSEDescription structure as a key-value pair table
function M.SSEDescription(args)
	assert(args, "You must provide an argument table when creating SSEDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["KMSMasterKeyArn"] = args["KMSMasterKeyArn"],
		["SSEType"] = args["SSEType"],
	}
	asserts.AssertSSEDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreTableToPointInTimeInput = { ["RestoreDateTime"] = true, ["SourceTableName"] = true, ["UseLatestRestorableTime"] = true, ["TargetTableName"] = true, nil }

function asserts.AssertRestoreTableToPointInTimeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableToPointInTimeInput to be of type 'table'")
	assert(struct["SourceTableName"], "Expected key SourceTableName to exist in table")
	assert(struct["TargetTableName"], "Expected key TargetTableName to exist in table")
	if struct["RestoreDateTime"] then asserts.AssertDate(struct["RestoreDateTime"]) end
	if struct["SourceTableName"] then asserts.AssertTableName(struct["SourceTableName"]) end
	if struct["UseLatestRestorableTime"] then asserts.AssertBooleanObject(struct["UseLatestRestorableTime"]) end
	if struct["TargetTableName"] then asserts.AssertTableName(struct["TargetTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreTableToPointInTimeInput[k], "RestoreTableToPointInTimeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableToPointInTimeInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RestoreDateTime [Date] <p>Time in the past to restore the table to.</p>
-- * SourceTableName [TableName] <p>Name of the source table that is being restored.</p>
-- * UseLatestRestorableTime [BooleanObject] <p>Restore the table to the latest possible time. <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. </p>
-- * TargetTableName [TableName] <p>The name of the new table to which it must be restored to.</p>
-- Required key: SourceTableName
-- Required key: TargetTableName
-- @return RestoreTableToPointInTimeInput structure as a key-value pair table
function M.RestoreTableToPointInTimeInput(args)
	assert(args, "You must provide an argument table when creating RestoreTableToPointInTimeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RestoreDateTime"] = args["RestoreDateTime"],
		["SourceTableName"] = args["SourceTableName"],
		["UseLatestRestorableTime"] = args["UseLatestRestorableTime"],
		["TargetTableName"] = args["TargetTableName"],
	}
	asserts.AssertRestoreTableToPointInTimeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceInput = { ["ResourceArn"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArnString(struct["ResourceArn"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceInput[k], "UntagResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArnString] <p>The Amazon DyanamoDB resource the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
-- * TagKeys [TagKeyList] <p>A list of tag keys. Existing tags of the resource whose keys are members of this list will be removed from the Amazon DynamoDB resource.</p>
-- Required key: ResourceArn
-- Required key: TagKeys
-- @return UntagResourceInput structure as a key-value pair table
function M.UntagResourceInput(args)
	assert(args, "You must provide an argument table when creating UntagResourceInput")
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
	asserts.AssertUntagResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalTableGlobalSecondaryIndexSettingsUpdate = { ["ProvisionedWriteCapacityAutoScalingSettingsUpdate"] = true, ["ProvisionedWriteCapacityUnits"] = true, ["IndexName"] = true, nil }

function asserts.AssertGlobalTableGlobalSecondaryIndexSettingsUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalTableGlobalSecondaryIndexSettingsUpdate to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	if struct["ProvisionedWriteCapacityAutoScalingSettingsUpdate"] then asserts.AssertAutoScalingSettingsUpdate(struct["ProvisionedWriteCapacityAutoScalingSettingsUpdate"]) end
	if struct["ProvisionedWriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ProvisionedWriteCapacityUnits"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalTableGlobalSecondaryIndexSettingsUpdate[k], "GlobalTableGlobalSecondaryIndexSettingsUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalTableGlobalSecondaryIndexSettingsUpdate
-- <p>Represents the settings of a global secondary index for a global table that will be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedWriteCapacityAutoScalingSettingsUpdate [AutoScalingSettingsUpdate] <p>AutoScaling settings for managing a global secondary index's write capacity units.</p>
-- * ProvisionedWriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException.</code> </p>
-- * IndexName [IndexName] <p>The name of the global secondary index. The name must be unique among all other indexes on this table.</p>
-- Required key: IndexName
-- @return GlobalTableGlobalSecondaryIndexSettingsUpdate structure as a key-value pair table
function M.GlobalTableGlobalSecondaryIndexSettingsUpdate(args)
	assert(args, "You must provide an argument table when creating GlobalTableGlobalSecondaryIndexSettingsUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisionedWriteCapacityAutoScalingSettingsUpdate"] = args["ProvisionedWriteCapacityAutoScalingSettingsUpdate"],
		["ProvisionedWriteCapacityUnits"] = args["ProvisionedWriteCapacityUnits"],
		["IndexName"] = args["IndexName"],
	}
	asserts.AssertGlobalTableGlobalSecondaryIndexSettingsUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreSummary = { ["SourceTableArn"] = true, ["SourceBackupArn"] = true, ["RestoreDateTime"] = true, ["RestoreInProgress"] = true, nil }

function asserts.AssertRestoreSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreSummary to be of type 'table'")
	assert(struct["RestoreDateTime"], "Expected key RestoreDateTime to exist in table")
	assert(struct["RestoreInProgress"], "Expected key RestoreInProgress to exist in table")
	if struct["SourceTableArn"] then asserts.AssertTableArn(struct["SourceTableArn"]) end
	if struct["SourceBackupArn"] then asserts.AssertBackupArn(struct["SourceBackupArn"]) end
	if struct["RestoreDateTime"] then asserts.AssertDate(struct["RestoreDateTime"]) end
	if struct["RestoreInProgress"] then asserts.AssertRestoreInProgress(struct["RestoreInProgress"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreSummary[k], "RestoreSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreSummary
-- <p>Contains details for the restore.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceTableArn [TableArn] <p>ARN of the source table of the backup that is being restored.</p>
-- * SourceBackupArn [BackupArn] <p>ARN of the backup from which the table was restored.</p>
-- * RestoreDateTime [Date] <p>Point in time or source backup time.</p>
-- * RestoreInProgress [RestoreInProgress] <p>Indicates if a restore is in progress or not.</p>
-- Required key: RestoreDateTime
-- Required key: RestoreInProgress
-- @return RestoreSummary structure as a key-value pair table
function M.RestoreSummary(args)
	assert(args, "You must provide an argument table when creating RestoreSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceTableArn"] = args["SourceTableArn"],
		["SourceBackupArn"] = args["SourceBackupArn"],
		["RestoreDateTime"] = args["RestoreDateTime"],
		["RestoreInProgress"] = args["RestoreInProgress"],
	}
	asserts.AssertRestoreSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingPolicyUpdate = { ["PolicyName"] = true, ["TargetTrackingScalingPolicyConfiguration"] = true, nil }

function asserts.AssertAutoScalingPolicyUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyUpdate to be of type 'table'")
	assert(struct["TargetTrackingScalingPolicyConfiguration"], "Expected key TargetTrackingScalingPolicyConfiguration to exist in table")
	if struct["PolicyName"] then asserts.AssertAutoScalingPolicyName(struct["PolicyName"]) end
	if struct["TargetTrackingScalingPolicyConfiguration"] then asserts.AssertAutoScalingTargetTrackingScalingPolicyConfigurationUpdate(struct["TargetTrackingScalingPolicyConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingPolicyUpdate[k], "AutoScalingPolicyUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyUpdate
-- <p>Represents the autoscaling policy to be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [AutoScalingPolicyName] <p>The name of the scaling policy.</p>
-- * TargetTrackingScalingPolicyConfiguration [AutoScalingTargetTrackingScalingPolicyConfigurationUpdate] <p>Represents a target tracking scaling policy configuration.</p>
-- Required key: TargetTrackingScalingPolicyConfiguration
-- @return AutoScalingPolicyUpdate structure as a key-value pair table
function M.AutoScalingPolicyUpdate(args)
	assert(args, "You must provide an argument table when creating AutoScalingPolicyUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["TargetTrackingScalingPolicyConfiguration"] = args["TargetTrackingScalingPolicyConfiguration"],
	}
	asserts.AssertAutoScalingPolicyUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeySchemaElement = { ["KeyType"] = true, ["AttributeName"] = true, nil }

function asserts.AssertKeySchemaElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeySchemaElement to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["KeyType"], "Expected key KeyType to exist in table")
	if struct["KeyType"] then asserts.AssertKeyType(struct["KeyType"]) end
	if struct["AttributeName"] then asserts.AssertKeySchemaAttributeName(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeySchemaElement[k], "KeySchemaElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeySchemaElement
-- <p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key would be represented by one <code>KeySchemaElement</code> (for the partition key). A composite primary key would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested attribute). The data type must be one of String, Number, or Binary. The attribute cannot be nested within a List or a Map.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyType [KeyType] <p>The role that this key attribute will assume:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * AttributeName [KeySchemaAttributeName] <p>The name of a key attribute.</p>
-- Required key: AttributeName
-- Required key: KeyType
-- @return KeySchemaElement structure as a key-value pair table
function M.KeySchemaElement(args)
	assert(args, "You must provide an argument table when creating KeySchemaElement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyType"] = args["KeyType"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertKeySchemaElement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchWriteItemOutput = { ["UnprocessedItems"] = true, ["ItemCollectionMetrics"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertBatchWriteItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteItemOutput to be of type 'table'")
	if struct["UnprocessedItems"] then asserts.AssertBatchWriteItemRequestMap(struct["UnprocessedItems"]) end
	if struct["ItemCollectionMetrics"] then asserts.AssertItemCollectionMetricsPerTable(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacityMultiple(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteItemOutput[k], "BatchWriteItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteItemOutput
-- <p>Represents the output of a <code>BatchWriteItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedItems [BatchWriteItemRequestMap] <p>A map of tables and requests against those tables that were not processed. The <code>UnprocessedItems</code> value is in the same form as <code>RequestItems</code>, so you can provide this value directly to a subsequent <code>BatchGetItem</code> operation. For more information, see <code>RequestItems</code> in the Request Parameters section.</p> <p>Each <code>UnprocessedItems</code> entry consists of a table name and, for that table, a list of operations to perform (<code>DeleteRequest</code> or <code>PutRequest</code>).</p> <ul> <li> <p> <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the specified item. The item to be deleted is identified by a <code>Key</code> subelement:</p> <ul> <li> <p> <code>Key</code> - A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value.</p> </li> </ul> </li> <li> <p> <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the specified item. The item to be put is identified by an <code>Item</code> subelement:</p> <ul> <li> <p> <code>Item</code> - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a <code>ValidationException</code> exception.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> </li> </ul> </li> </ul> <p>If there are no unprocessed items remaining, the response contains an empty <code>UnprocessedItems</code> map.</p>
-- * ItemCollectionMetrics [ItemCollectionMetricsPerTable] <p>A list of tables that were processed by <code>BatchWriteItem</code> and, for each table, information about any item collections that were affected by individual <code>DeleteItem</code> or <code>PutItem</code> operations.</p> <p>Each entry consists of the following subelements:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item.</p> </li> <li> <p> <code>SizeEstimateRangeGB</code> - An estimate of item collection size, expressed in GB. This is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on the table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- * ConsumedCapacity [ConsumedCapacityMultiple] <p>The capacity units consumed by the entire <code>BatchWriteItem</code> operation.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>TableName</code> - The table that consumed the provisioned throughput.</p> </li> <li> <p> <code>CapacityUnits</code> - The total number of capacity units consumed.</p> </li> </ul>
-- @return BatchWriteItemOutput structure as a key-value pair table
function M.BatchWriteItemOutput(args)
	assert(args, "You must provide an argument table when creating BatchWriteItemOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedItems"] = args["UnprocessedItems"],
		["ItemCollectionMetrics"] = args["ItemCollectionMetrics"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertBatchWriteItemOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGlobalTableOutput = { ["GlobalTableDescription"] = true, nil }

function asserts.AssertDescribeGlobalTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGlobalTableOutput to be of type 'table'")
	if struct["GlobalTableDescription"] then asserts.AssertGlobalTableDescription(struct["GlobalTableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGlobalTableOutput[k], "DescribeGlobalTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGlobalTableOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableDescription [GlobalTableDescription] <p>Contains the details of the global table.</p>
-- @return DescribeGlobalTableOutput structure as a key-value pair table
function M.DescribeGlobalTableOutput(args)
	assert(args, "You must provide an argument table when creating DescribeGlobalTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableDescription"] = args["GlobalTableDescription"],
	}
	asserts.AssertDescribeGlobalTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGlobalSecondaryIndexAction = { ["ProvisionedThroughput"] = true, ["IndexName"] = true, nil }

function asserts.AssertUpdateGlobalSecondaryIndexAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGlobalSecondaryIndexAction to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGlobalSecondaryIndexAction[k], "UpdateGlobalSecondaryIndexAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGlobalSecondaryIndexAction
-- <p>Represents the new provisioned throughput settings to be applied to a global secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * IndexName [IndexName] <p>The name of the global secondary index to be updated.</p>
-- Required key: IndexName
-- Required key: ProvisionedThroughput
-- @return UpdateGlobalSecondaryIndexAction structure as a key-value pair table
function M.UpdateGlobalSecondaryIndexAction(args)
	assert(args, "You must provide an argument table when creating UpdateGlobalSecondaryIndexAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
		["IndexName"] = args["IndexName"],
	}
	asserts.AssertUpdateGlobalSecondaryIndexAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LocalSecondaryIndexInfo = { ["KeySchema"] = true, ["IndexName"] = true, ["Projection"] = true, nil }

function asserts.AssertLocalSecondaryIndexInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LocalSecondaryIndexInfo to be of type 'table'")
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	for k,_ in pairs(struct) do
		assert(keys.LocalSecondaryIndexInfo[k], "LocalSecondaryIndexInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LocalSecondaryIndexInfo
-- <p>Represents the properties of a local secondary index for the table when the backup was created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeySchema [KeySchema] <p>The complete key schema for a local secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * IndexName [IndexName] <p>Represents the name of the local secondary index.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @return LocalSecondaryIndexInfo structure as a key-value pair table
function M.LocalSecondaryIndexInfo(args)
	assert(args, "You must provide an argument table when creating LocalSecondaryIndexInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeySchema"] = args["KeySchema"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
	}
	asserts.AssertLocalSecondaryIndexInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetItemInput = { ["RequestItems"] = true, ["ReturnConsumedCapacity"] = true, nil }

function asserts.AssertBatchGetItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetItemInput to be of type 'table'")
	assert(struct["RequestItems"], "Expected key RequestItems to exist in table")
	if struct["RequestItems"] then asserts.AssertBatchGetRequestMap(struct["RequestItems"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetItemInput[k], "BatchGetItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetItemInput
-- <p>Represents the input of a <code>BatchGetItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestItems [BatchGetRequestMap] <p>A map of one or more table names and, for each table, a map that describes one or more items to retrieve from that table. Each table name can be used only once per <code>BatchGetItem</code> request.</p> <p>Each element in the map of items to retrieve consists of the following:</p> <ul> <li> <p> <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read is used; if <code>false</code> (the default), an eventually consistent read is used.</p> </li> <li> <p> <code>ExpressionAttributeNames</code> - One or more substitution tokens for attribute names in the <code>ProjectionExpression</code> parameter. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p> <code>Keys</code> - An array of primary key attribute values that define specific items in the table. For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide the partition key value. For a composite key, you must provide <i>both</i> the partition key value and the sort key value.</p> </li> <li> <p> <code>ProjectionExpression</code> - A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p> <code>AttributesToGet</code> - This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p> </li> </ul>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- Required key: RequestItems
-- @return BatchGetItemInput structure as a key-value pair table
function M.BatchGetItemInput(args)
	assert(args, "You must provide an argument table when creating BatchGetItemInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequestItems"] = args["RequestItems"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
	}
	asserts.AssertBatchGetItemInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContinuousBackupsInput = { ["TableName"] = true, nil }

function asserts.AssertDescribeContinuousBackupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContinuousBackupsInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContinuousBackupsInput[k], "DescribeContinuousBackupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContinuousBackupsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [TableName] <p>Name of the table for which the customer wants to check the continuous backups and point in time recovery settings.</p>
-- Required key: TableName
-- @return DescribeContinuousBackupsInput structure as a key-value pair table
function M.DescribeContinuousBackupsInput(args)
	assert(args, "You must provide an argument table when creating DescribeContinuousBackupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
	}
	asserts.AssertDescribeContinuousBackupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetItemInput = { ["ConsistentRead"] = true, ["ProjectionExpression"] = true, ["ExpressionAttributeNames"] = true, ["TableName"] = true, ["ReturnConsumedCapacity"] = true, ["AttributesToGet"] = true, ["Key"] = true, nil }

function asserts.AssertGetItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ConsistentRead"] then asserts.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["ProjectionExpression"] then asserts.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["AttributesToGet"] then asserts.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetItemInput[k], "GetItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetItemInput
-- <p>Represents the input of a <code>GetItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistentRead [ConsistentRead] <p>Determines the read consistency model: If set to <code>true</code>, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.</p>
-- * ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table containing the requested item.</p>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Key [Key] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the primary key of the item to retrieve.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- Required key: TableName
-- Required key: Key
-- @return GetItemInput structure as a key-value pair table
function M.GetItemInput(args)
	assert(args, "You must provide an argument table when creating GetItemInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsistentRead"] = args["ConsistentRead"],
		["ProjectionExpression"] = args["ProjectionExpression"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
		["TableName"] = args["TableName"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["AttributesToGet"] = args["AttributesToGet"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetItemInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicaAction = { ["RegionName"] = true, nil }

function asserts.AssertDeleteReplicaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicaAction to be of type 'table'")
	assert(struct["RegionName"], "Expected key RegionName to exist in table")
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicaAction[k], "DeleteReplicaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicaAction
-- <p>Represents a replica to be removed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegionName [RegionName] <p>The region of the replica to be removed.</p>
-- Required key: RegionName
-- @return DeleteReplicaAction structure as a key-value pair table
function M.DeleteReplicaAction(args)
	assert(args, "You must provide an argument table when creating DeleteReplicaAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertDeleteReplicaAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BackupSummary = { ["TableArn"] = true, ["BackupExpiryDateTime"] = true, ["BackupName"] = true, ["BackupType"] = true, ["BackupStatus"] = true, ["TableName"] = true, ["BackupCreationDateTime"] = true, ["BackupSizeBytes"] = true, ["TableId"] = true, ["BackupArn"] = true, nil }

function asserts.AssertBackupSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BackupSummary to be of type 'table'")
	if struct["TableArn"] then asserts.AssertTableArn(struct["TableArn"]) end
	if struct["BackupExpiryDateTime"] then asserts.AssertDate(struct["BackupExpiryDateTime"]) end
	if struct["BackupName"] then asserts.AssertBackupName(struct["BackupName"]) end
	if struct["BackupType"] then asserts.AssertBackupType(struct["BackupType"]) end
	if struct["BackupStatus"] then asserts.AssertBackupStatus(struct["BackupStatus"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["BackupCreationDateTime"] then asserts.AssertBackupCreationDateTime(struct["BackupCreationDateTime"]) end
	if struct["BackupSizeBytes"] then asserts.AssertBackupSizeBytes(struct["BackupSizeBytes"]) end
	if struct["TableId"] then asserts.AssertTableId(struct["TableId"]) end
	if struct["BackupArn"] then asserts.AssertBackupArn(struct["BackupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.BackupSummary[k], "BackupSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BackupSummary
-- <p>Contains details for the backup.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableArn [TableArn] <p>ARN associated with the table.</p>
-- * BackupExpiryDateTime [Date] <p>Time at which the automatic on-demand backup created by DynamoDB will expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after its creation.</p>
-- * BackupName [BackupName] <p>Name of the specified backup.</p>
-- * BackupType [BackupType] <p>BackupType:</p> <ul> <li> <p> <code>USER</code> - On-demand backup created by you.</p> </li> <li> <p> <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p> </li> </ul>
-- * BackupStatus [BackupStatus] <p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED.</p>
-- * TableName [TableName] <p>Name of the table.</p>
-- * BackupCreationDateTime [BackupCreationDateTime] <p>Time at which the backup was created.</p>
-- * BackupSizeBytes [BackupSizeBytes] <p>Size of the backup in bytes.</p>
-- * TableId [TableId] <p>Unique identifier for the table.</p>
-- * BackupArn [BackupArn] <p>ARN associated with the backup.</p>
-- @return BackupSummary structure as a key-value pair table
function M.BackupSummary(args)
	assert(args, "You must provide an argument table when creating BackupSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableArn"] = args["TableArn"],
		["BackupExpiryDateTime"] = args["BackupExpiryDateTime"],
		["BackupName"] = args["BackupName"],
		["BackupType"] = args["BackupType"],
		["BackupStatus"] = args["BackupStatus"],
		["TableName"] = args["TableName"],
		["BackupCreationDateTime"] = args["BackupCreationDateTime"],
		["BackupSizeBytes"] = args["BackupSizeBytes"],
		["TableId"] = args["TableId"],
		["BackupArn"] = args["BackupArn"],
	}
	asserts.AssertBackupSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTablesOutput = { ["LastEvaluatedTableName"] = true, ["TableNames"] = true, nil }

function asserts.AssertListTablesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTablesOutput to be of type 'table'")
	if struct["LastEvaluatedTableName"] then asserts.AssertTableName(struct["LastEvaluatedTableName"]) end
	if struct["TableNames"] then asserts.AssertTableNameList(struct["TableNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTablesOutput[k], "ListTablesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTablesOutput
-- <p>Represents the output of a <code>ListTables</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastEvaluatedTableName [TableName] <p>The name of the last table in the current page of results. Use this value as the <code>ExclusiveStartTableName</code> in a new request to obtain the next page of results, until all the table names are returned.</p> <p>If you do not receive a <code>LastEvaluatedTableName</code> value in the response, this means that there are no more table names to be retrieved.</p>
-- * TableNames [TableNameList] <p>The names of the tables associated with the current account at the current endpoint. The maximum size of this array is 100.</p> <p>If <code>LastEvaluatedTableName</code> also appears in the output, you can use this value as the <code>ExclusiveStartTableName</code> parameter in a subsequent <code>ListTables</code> request and obtain the next page of results.</p>
-- @return ListTablesOutput structure as a key-value pair table
function M.ListTablesOutput(args)
	assert(args, "You must provide an argument table when creating ListTablesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastEvaluatedTableName"] = args["LastEvaluatedTableName"],
		["TableNames"] = args["TableNames"],
	}
	asserts.AssertListTablesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicaAction = { ["RegionName"] = true, nil }

function asserts.AssertCreateReplicaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicaAction to be of type 'table'")
	assert(struct["RegionName"], "Expected key RegionName to exist in table")
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicaAction[k], "CreateReplicaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicaAction
-- <p>Represents a replica to be added.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegionName [RegionName] <p>The region of the replica to be added.</p>
-- Required key: RegionName
-- @return CreateReplicaAction structure as a key-value pair table
function M.CreateReplicaAction(args)
	assert(args, "You must provide an argument table when creating CreateReplicaAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertCreateReplicaAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingTargetTrackingScalingPolicyConfigurationDescription = { ["ScaleOutCooldown"] = true, ["TargetValue"] = true, ["DisableScaleIn"] = true, ["ScaleInCooldown"] = true, nil }

function asserts.AssertAutoScalingTargetTrackingScalingPolicyConfigurationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingTargetTrackingScalingPolicyConfigurationDescription to be of type 'table'")
	assert(struct["TargetValue"], "Expected key TargetValue to exist in table")
	if struct["ScaleOutCooldown"] then asserts.AssertIntegerObject(struct["ScaleOutCooldown"]) end
	if struct["TargetValue"] then asserts.AssertDouble(struct["TargetValue"]) end
	if struct["DisableScaleIn"] then asserts.AssertBooleanObject(struct["DisableScaleIn"]) end
	if struct["ScaleInCooldown"] then asserts.AssertIntegerObject(struct["ScaleInCooldown"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingTargetTrackingScalingPolicyConfigurationDescription[k], "AutoScalingTargetTrackingScalingPolicyConfigurationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingTargetTrackingScalingPolicyConfigurationDescription
-- <p>Represents the properties of a target tracking scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScaleOutCooldown [IntegerObject] <p>The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. You should continuously (but not excessively) scale out.</p>
-- * TargetValue [Double] <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).</p>
-- * DisableScaleIn [BooleanObject] <p>Indicates whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.</p>
-- * ScaleInCooldown [IntegerObject] <p>The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. The cooldown period is used to block subsequent scale in requests until it has expired. You should scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, application autoscaling scales out your scalable target immediately. </p>
-- Required key: TargetValue
-- @return AutoScalingTargetTrackingScalingPolicyConfigurationDescription structure as a key-value pair table
function M.AutoScalingTargetTrackingScalingPolicyConfigurationDescription(args)
	assert(args, "You must provide an argument table when creating AutoScalingTargetTrackingScalingPolicyConfigurationDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScaleOutCooldown"] = args["ScaleOutCooldown"],
		["TargetValue"] = args["TargetValue"],
		["DisableScaleIn"] = args["DisableScaleIn"],
		["ScaleInCooldown"] = args["ScaleInCooldown"],
	}
	asserts.AssertAutoScalingTargetTrackingScalingPolicyConfigurationDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGlobalTableSettingsOutput = { ["GlobalTableName"] = true, ["ReplicaSettings"] = true, nil }

function asserts.AssertDescribeGlobalTableSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGlobalTableSettingsOutput to be of type 'table'")
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	if struct["ReplicaSettings"] then asserts.AssertReplicaSettingsDescriptionList(struct["ReplicaSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGlobalTableSettingsOutput[k], "DescribeGlobalTableSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGlobalTableSettingsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableName [TableName] <p>The name of the global table.</p>
-- * ReplicaSettings [ReplicaSettingsDescriptionList] <p>The region specific settings for the global table.</p>
-- @return DescribeGlobalTableSettingsOutput structure as a key-value pair table
function M.DescribeGlobalTableSettingsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeGlobalTableSettingsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableName"] = args["GlobalTableName"],
		["ReplicaSettings"] = args["ReplicaSettings"],
	}
	asserts.AssertDescribeGlobalTableSettingsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeysAndAttributes = { ["Keys"] = true, ["ConsistentRead"] = true, ["AttributesToGet"] = true, ["ProjectionExpression"] = true, ["ExpressionAttributeNames"] = true, nil }

function asserts.AssertKeysAndAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeysAndAttributes to be of type 'table'")
	assert(struct["Keys"], "Expected key Keys to exist in table")
	if struct["Keys"] then asserts.AssertKeyList(struct["Keys"]) end
	if struct["ConsistentRead"] then asserts.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["AttributesToGet"] then asserts.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["ProjectionExpression"] then asserts.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeysAndAttributes[k], "KeysAndAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeysAndAttributes
-- <p>Represents a set of primary keys and, for each key, the attributes to retrieve from the table.</p> <p>For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide the partition key. For a composite primary key, you must provide <i>both</i> the partition key and the sort key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Keys [KeyList] <p>The primary key attribute values that define the items and the attributes associated with the items.</p>
-- * ConsistentRead [ConsistentRead] <p>The consistency of a read operation. If set to <code>true</code>, then a strongly consistent read is used; otherwise, an eventually consistent read is used.</p>
-- * AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy Conditional Parameters</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the <code>ProjectionExpression</code> must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: Keys
-- @return KeysAndAttributes structure as a key-value pair table
function M.KeysAndAttributes(args)
	assert(args, "You must provide an argument table when creating KeysAndAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Keys"] = args["Keys"],
		["ConsistentRead"] = args["ConsistentRead"],
		["AttributesToGet"] = args["AttributesToGet"],
		["ProjectionExpression"] = args["ProjectionExpression"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
	}
	asserts.AssertKeysAndAttributes(all_args)
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
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValueString(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKeyString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single DynamoDB table. </p> <p> AWS-assigned tag names and values are automatically assigned the aws: prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix user: in the Cost Allocation Report. You cannot backdate the application of a tag. </p> <p>For an overview on tagging DynamoDB resources, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValueString] <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
-- * Key [TagKeyString] <p>The key of the tag.Tag keys are case sensitive. Each DynamoDB table can only have up to one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value. </p>
-- Required key: Key
-- Required key: Value
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

keys.CreateTableInput = { ["GlobalSecondaryIndexes"] = true, ["AttributeDefinitions"] = true, ["LocalSecondaryIndexes"] = true, ["ProvisionedThroughput"] = true, ["TableName"] = true, ["StreamSpecification"] = true, ["KeySchema"] = true, ["SSESpecification"] = true, nil }

function asserts.AssertCreateTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTableInput to be of type 'table'")
	assert(struct["AttributeDefinitions"], "Expected key AttributeDefinitions to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["GlobalSecondaryIndexes"] then asserts.AssertGlobalSecondaryIndexList(struct["GlobalSecondaryIndexes"]) end
	if struct["AttributeDefinitions"] then asserts.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	if struct["LocalSecondaryIndexes"] then asserts.AssertLocalSecondaryIndexList(struct["LocalSecondaryIndexes"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["StreamSpecification"] then asserts.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["SSESpecification"] then asserts.AssertSSESpecification(struct["SSESpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTableInput[k], "CreateTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableInput
-- <p>Represents the input of a <code>CreateTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalSecondaryIndexes [GlobalSecondaryIndexList] <p>One or more global secondary indexes (the maximum is five) to be created on the table. Each global secondary index in the array includes the following:</p> <ul> <li> <p> <code>IndexName</code> - The name of the global secondary index. Must be unique only for this table.</p> <p/> </li> <li> <p> <code>KeySchema</code> - Specifies the key schema for the global secondary index.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>ProvisionedThroughput</code> - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units.</p> </li> </ul>
-- * AttributeDefinitions [AttributeDefinitions] <p>An array of attributes that describe the key schema for the table and indexes.</p>
-- * LocalSecondaryIndexes [LocalSecondaryIndexList] <p>One or more local secondary indexes (the maximum is five) to be created on the table. Each index is scoped to a given partition key value. There is a 10 GB size limit per partition key value; otherwise, the size of a local secondary index is unconstrained.</p> <p>Each local secondary index in the array includes the following:</p> <ul> <li> <p> <code>IndexName</code> - The name of the local secondary index. Must be unique only for this table.</p> <p/> </li> <li> <p> <code>KeySchema</code> - Specifies the key schema for the local secondary index. The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> </ul>
-- * ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the <code>UpdateTable</code> operation.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table to create.</p>
-- * StreamSpecification [StreamSpecification] <p>The settings for DynamoDB Streams on the table. These settings consist of:</p> <ul> <li> <p> <code>StreamEnabled</code> - Indicates whether Streams is to be enabled (true) or disabled (false).</p> </li> <li> <p> <code>StreamViewType</code> - When an item in the table is modified, <code>StreamViewType</code> determines what information is written to the table's stream. Valid values for <code>StreamViewType</code> are:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the key attributes of the modified item are written to the stream.</p> </li> <li> <p> <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified, is written to the stream.</p> </li> <li> <p> <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified, is written to the stream.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the item are written to the stream.</p> </li> </ul> </li> </ul>
-- * KeySchema [KeySchema] <p>Specifies the attributes that make up the primary key for a table or an index. The attributes in <code>KeySchema</code> must also be defined in the <code>AttributeDefinitions</code> array. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Each <code>KeySchemaElement</code> in the array is composed of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of this key attribute.</p> </li> <li> <p> <code>KeyType</code> - The role that the key attribute will assume:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note> <p>For a simple primary key (partition key), you must provide exactly one element with a <code>KeyType</code> of <code>HASH</code>.</p> <p>For a composite primary key (partition key and sort key), you must provide exactly two elements, in this order: The first element must have a <code>KeyType</code> of <code>HASH</code>, and the second element must have a <code>KeyType</code> of <code>RANGE</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Specifying the Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * SSESpecification [SSESpecification] <p>Represents the settings used to enable server-side encryption.</p>
-- Required key: AttributeDefinitions
-- Required key: TableName
-- Required key: KeySchema
-- Required key: ProvisionedThroughput
-- @return CreateTableInput structure as a key-value pair table
function M.CreateTableInput(args)
	assert(args, "You must provide an argument table when creating CreateTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalSecondaryIndexes"] = args["GlobalSecondaryIndexes"],
		["AttributeDefinitions"] = args["AttributeDefinitions"],
		["LocalSecondaryIndexes"] = args["LocalSecondaryIndexes"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
		["TableName"] = args["TableName"],
		["StreamSpecification"] = args["StreamSpecification"],
		["KeySchema"] = args["KeySchema"],
		["SSESpecification"] = args["SSESpecification"],
	}
	asserts.AssertCreateTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSESpecification = { ["SSEType"] = true, ["KMSMasterKeyId"] = true, ["Enabled"] = true, nil }

function asserts.AssertSSESpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSESpecification to be of type 'table'")
	if struct["SSEType"] then asserts.AssertSSEType(struct["SSEType"]) end
	if struct["KMSMasterKeyId"] then asserts.AssertKMSMasterKeyId(struct["KMSMasterKeyId"]) end
	if struct["Enabled"] then asserts.AssertSSEEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSESpecification[k], "SSESpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSESpecification
-- <p>Represents the settings used to enable server-side encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSEType [SSEType] <p>Server-side encryption type:</p> <ul> <li> <p> <code>AES256</code> - Server-side encryption which uses the AES256 algorithm.</p> </li> <li> <p> <code>KMS</code> - Server-side encryption which uses AWS Key Management Service. (default)</p> </li> </ul>
-- * KMSMasterKeyId [KMSMasterKeyId] <p>The KMS Master Key (CMK) which should be used for the KMS encryption. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB KMS Master Key alias/aws/dynamodb.</p>
-- * Enabled [SSEEnabled] <p>Indicates whether server-side encryption is enabled (true) or disabled (false) on the table.</p>
-- @return SSESpecification structure as a key-value pair table
function M.SSESpecification(args)
	assert(args, "You must provide an argument table when creating SSESpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SSEType"] = args["SSEType"],
		["KMSMasterKeyId"] = args["KMSMasterKeyId"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertSSESpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsOfResourceOutput = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsOfResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsOfResourceOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextTokenString(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsOfResourceOutput[k], "ListTagsOfResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsOfResourceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextTokenString] <p>If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.</p>
-- * Tags [TagList] <p>The tags currently associated with the Amazon DynamoDB resource.</p>
-- @return ListTagsOfResourceOutput structure as a key-value pair table
function M.ListTagsOfResourceOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsOfResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsOfResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBackupOutput = { ["BackupDescription"] = true, nil }

function asserts.AssertDeleteBackupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupOutput to be of type 'table'")
	if struct["BackupDescription"] then asserts.AssertBackupDescription(struct["BackupDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBackupOutput[k], "DeleteBackupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupDescription [BackupDescription] <p>Contains the description of the backup created for the table.</p>
-- @return DeleteBackupOutput structure as a key-value pair table
function M.DeleteBackupOutput(args)
	assert(args, "You must provide an argument table when creating DeleteBackupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupDescription"] = args["BackupDescription"],
	}
	asserts.AssertDeleteBackupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTimeToLiveInput = { ["TableName"] = true, nil }

function asserts.AssertDescribeTimeToLiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeToLiveInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTimeToLiveInput[k], "DescribeTimeToLiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeToLiveInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [TableName] <p>The name of the table to be described.</p>
-- Required key: TableName
-- @return DescribeTimeToLiveInput structure as a key-value pair table
function M.DescribeTimeToLiveInput(args)
	assert(args, "You must provide an argument table when creating DescribeTimeToLiveInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
	}
	asserts.AssertDescribeTimeToLiveInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeValue = { ["B"] = true, ["NULL"] = true, ["SS"] = true, ["M"] = true, ["L"] = true, ["N"] = true, ["S"] = true, ["BOOL"] = true, ["BS"] = true, ["NS"] = true, nil }

function asserts.AssertAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValue to be of type 'table'")
	if struct["B"] then asserts.AssertBinaryAttributeValue(struct["B"]) end
	if struct["NULL"] then asserts.AssertNullAttributeValue(struct["NULL"]) end
	if struct["SS"] then asserts.AssertStringSetAttributeValue(struct["SS"]) end
	if struct["M"] then asserts.AssertMapAttributeValue(struct["M"]) end
	if struct["L"] then asserts.AssertListAttributeValue(struct["L"]) end
	if struct["N"] then asserts.AssertNumberAttributeValue(struct["N"]) end
	if struct["S"] then asserts.AssertStringAttributeValue(struct["S"]) end
	if struct["BOOL"] then asserts.AssertBooleanAttributeValue(struct["BOOL"]) end
	if struct["BS"] then asserts.AssertBinarySetAttributeValue(struct["BS"]) end
	if struct["NS"] then asserts.AssertNumberSetAttributeValue(struct["NS"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeValue[k], "AttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValue
-- <p>Represents the data for an attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * B [BinaryAttributeValue] <p>An attribute of type Binary. For example:</p> <p> <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code> </p>
-- * NULL [NullAttributeValue] <p>An attribute of type Null. For example:</p> <p> <code>"NULL": true</code> </p>
-- * SS [StringSetAttributeValue] <p>An attribute of type String Set. For example:</p> <p> <code>"SS": ["Giraffe", "Hippo" ,"Zebra"]</code> </p>
-- * M [MapAttributeValue] <p>An attribute of type Map. For example:</p> <p> <code>"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}</code> </p>
-- * L [ListAttributeValue] <p>An attribute of type List. For example:</p> <p> <code>"L": ["Cookies", "Coffee", 3.14159]</code> </p>
-- * N [NumberAttributeValue] <p>An attribute of type Number. For example:</p> <p> <code>"N": "123.45"</code> </p> <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
-- * S [StringAttributeValue] <p>An attribute of type String. For example:</p> <p> <code>"S": "Hello"</code> </p>
-- * BOOL [BooleanAttributeValue] <p>An attribute of type Boolean. For example:</p> <p> <code>"BOOL": true</code> </p>
-- * BS [BinarySetAttributeValue] <p>An attribute of type Binary Set. For example:</p> <p> <code>"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]</code> </p>
-- * NS [NumberSetAttributeValue] <p>An attribute of type Number Set. For example:</p> <p> <code>"NS": ["42.2", "-19", "7.5", "3.14"]</code> </p> <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
-- @return AttributeValue structure as a key-value pair table
function M.AttributeValue(args)
	assert(args, "You must provide an argument table when creating AttributeValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["B"] = args["B"],
		["NULL"] = args["NULL"],
		["SS"] = args["SS"],
		["M"] = args["M"],
		["L"] = args["L"],
		["N"] = args["N"],
		["S"] = args["S"],
		["BOOL"] = args["BOOL"],
		["BS"] = args["BS"],
		["NS"] = args["NS"],
	}
	asserts.AssertAttributeValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalTableDescription = { ["GlobalTableStatus"] = true, ["GlobalTableName"] = true, ["ReplicationGroup"] = true, ["CreationDateTime"] = true, ["GlobalTableArn"] = true, nil }

function asserts.AssertGlobalTableDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalTableDescription to be of type 'table'")
	if struct["GlobalTableStatus"] then asserts.AssertGlobalTableStatus(struct["GlobalTableStatus"]) end
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	if struct["ReplicationGroup"] then asserts.AssertReplicaDescriptionList(struct["ReplicationGroup"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["GlobalTableArn"] then asserts.AssertGlobalTableArnString(struct["GlobalTableArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalTableDescription[k], "GlobalTableDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalTableDescription
-- <p>Contains details about the global table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableStatus [GlobalTableStatus] <p>The current state of the global table:</p> <ul> <li> <p> <code>CREATING</code> - The global table is being created.</p> </li> <li> <p> <code>UPDATING</code> - The global table is being updated.</p> </li> <li> <p> <code>DELETING</code> - The global table is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The global table is ready for use.</p> </li> </ul>
-- * GlobalTableName [TableName] <p>The global table name.</p>
-- * ReplicationGroup [ReplicaDescriptionList] <p>The regions where the global table has replicas.</p>
-- * CreationDateTime [Date] <p>The creation time of the global table.</p>
-- * GlobalTableArn [GlobalTableArnString] <p>The unique identifier of the global table.</p>
-- @return GlobalTableDescription structure as a key-value pair table
function M.GlobalTableDescription(args)
	assert(args, "You must provide an argument table when creating GlobalTableDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableStatus"] = args["GlobalTableStatus"],
		["GlobalTableName"] = args["GlobalTableName"],
		["ReplicationGroup"] = args["ReplicationGroup"],
		["CreationDateTime"] = args["CreationDateTime"],
		["GlobalTableArn"] = args["GlobalTableArn"],
	}
	asserts.AssertGlobalTableDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingSettingsUpdate = { ["ScalingPolicyUpdate"] = true, ["AutoScalingDisabled"] = true, ["AutoScalingRoleArn"] = true, ["MinimumUnits"] = true, ["MaximumUnits"] = true, nil }

function asserts.AssertAutoScalingSettingsUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingSettingsUpdate to be of type 'table'")
	if struct["ScalingPolicyUpdate"] then asserts.AssertAutoScalingPolicyUpdate(struct["ScalingPolicyUpdate"]) end
	if struct["AutoScalingDisabled"] then asserts.AssertBooleanObject(struct["AutoScalingDisabled"]) end
	if struct["AutoScalingRoleArn"] then asserts.AssertAutoScalingRoleArn(struct["AutoScalingRoleArn"]) end
	if struct["MinimumUnits"] then asserts.AssertPositiveLongObject(struct["MinimumUnits"]) end
	if struct["MaximumUnits"] then asserts.AssertPositiveLongObject(struct["MaximumUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingSettingsUpdate[k], "AutoScalingSettingsUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingSettingsUpdate
-- <p>Represents the autoscaling settings to be modified for a global table or global secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPolicyUpdate [AutoScalingPolicyUpdate] <p>The scaling policy to apply for scaling target global table or global secondary index capacity units.</p>
-- * AutoScalingDisabled [BooleanObject] <p>Disabled autoscaling for this global table or global secondary index.</p>
-- * AutoScalingRoleArn [AutoScalingRoleArn] <p>Role ARN used for configuring autoscaling policy.</p>
-- * MinimumUnits [PositiveLongObject] <p>The minimum capacity units that a global table or global secondary index should be scaled down to.</p>
-- * MaximumUnits [PositiveLongObject] <p>The maximum capacity units that a global table or global secondary index should be scaled up to.</p>
-- @return AutoScalingSettingsUpdate structure as a key-value pair table
function M.AutoScalingSettingsUpdate(args)
	assert(args, "You must provide an argument table when creating AutoScalingSettingsUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPolicyUpdate"] = args["ScalingPolicyUpdate"],
		["AutoScalingDisabled"] = args["AutoScalingDisabled"],
		["AutoScalingRoleArn"] = args["AutoScalingRoleArn"],
		["MinimumUnits"] = args["MinimumUnits"],
		["MaximumUnits"] = args["MaximumUnits"],
	}
	asserts.AssertAutoScalingSettingsUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBackupsInput = { ["BackupType"] = true, ["TableName"] = true, ["ExclusiveStartBackupArn"] = true, ["Limit"] = true, ["TimeRangeLowerBound"] = true, ["TimeRangeUpperBound"] = true, nil }

function asserts.AssertListBackupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBackupsInput to be of type 'table'")
	if struct["BackupType"] then asserts.AssertBackupTypeFilter(struct["BackupType"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ExclusiveStartBackupArn"] then asserts.AssertBackupArn(struct["ExclusiveStartBackupArn"]) end
	if struct["Limit"] then asserts.AssertBackupsInputLimit(struct["Limit"]) end
	if struct["TimeRangeLowerBound"] then asserts.AssertTimeRangeLowerBound(struct["TimeRangeLowerBound"]) end
	if struct["TimeRangeUpperBound"] then asserts.AssertTimeRangeUpperBound(struct["TimeRangeUpperBound"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBackupsInput[k], "ListBackupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBackupsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupType [BackupTypeFilter] <p>The backups from the table specified by <code>BackupType</code> are listed.</p> <p>Where <code>BackupType</code> can be:</p> <ul> <li> <p> <code>USER</code> - On-demand backup created by you.</p> </li> <li> <p> <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p> </li> <li> <p> <code>ALL</code> - All types of on-demand backups (USER and SYSTEM).</p> </li> </ul>
-- * TableName [TableName] <p>The backups from the table specified by <code>TableName</code> are listed. </p>
-- * ExclusiveStartBackupArn [BackupArn] <p> <code>LastEvaluatedBackupArn</code> is the ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a new <code>ListBackups</code> operation in order to fetch the next page of results. </p>
-- * Limit [BackupsInputLimit] <p>Maximum number of backups to return at once.</p>
-- * TimeRangeLowerBound [TimeRangeLowerBound] <p>Only backups created after this time are listed. <code>TimeRangeLowerBound</code> is inclusive.</p>
-- * TimeRangeUpperBound [TimeRangeUpperBound] <p>Only backups created before this time are listed. <code>TimeRangeUpperBound</code> is exclusive. </p>
-- @return ListBackupsInput structure as a key-value pair table
function M.ListBackupsInput(args)
	assert(args, "You must provide an argument table when creating ListBackupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupType"] = args["BackupType"],
		["TableName"] = args["TableName"],
		["ExclusiveStartBackupArn"] = args["ExclusiveStartBackupArn"],
		["Limit"] = args["Limit"],
		["TimeRangeLowerBound"] = args["TimeRangeLowerBound"],
		["TimeRangeUpperBound"] = args["TimeRangeUpperBound"],
	}
	asserts.AssertListBackupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsOfResourceInput = { ["ResourceArn"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTagsOfResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsOfResourceInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArnString(struct["ResourceArn"]) end
	if struct["NextToken"] then asserts.AssertNextTokenString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsOfResourceInput[k], "ListTagsOfResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsOfResourceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArnString] <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).</p>
-- * NextToken [NextTokenString] <p>An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.</p>
-- Required key: ResourceArn
-- @return ListTagsOfResourceInput structure as a key-value pair table
function M.ListTagsOfResourceInput(args)
	assert(args, "You must provide an argument table when creating ListTagsOfResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTagsOfResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBackupsOutput = { ["LastEvaluatedBackupArn"] = true, ["BackupSummaries"] = true, nil }

function asserts.AssertListBackupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBackupsOutput to be of type 'table'")
	if struct["LastEvaluatedBackupArn"] then asserts.AssertBackupArn(struct["LastEvaluatedBackupArn"]) end
	if struct["BackupSummaries"] then asserts.AssertBackupSummaries(struct["BackupSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBackupsOutput[k], "ListBackupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBackupsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastEvaluatedBackupArn [BackupArn] <p> The ARN of the backup last evaluated when the current page of results was returned, inclusive of the current page of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a new <code>ListBackups</code> operation in order to fetch the next page of results. </p> <p> If <code>LastEvaluatedBackupArn</code> is empty, then the last page of results has been processed and there are no more results to be retrieved. </p> <p> If <code>LastEvaluatedBackupArn</code> is not empty, this may or may not indicate there is more data to be returned. All results are guaranteed to have been returned if and only if no value for <code>LastEvaluatedBackupArn</code> is returned. </p>
-- * BackupSummaries [BackupSummaries] <p>List of <code>BackupSummary</code> objects.</p>
-- @return ListBackupsOutput structure as a key-value pair table
function M.ListBackupsOutput(args)
	assert(args, "You must provide an argument table when creating ListBackupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastEvaluatedBackupArn"] = args["LastEvaluatedBackupArn"],
		["BackupSummaries"] = args["BackupSummaries"],
	}
	asserts.AssertListBackupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingPolicyDescription = { ["PolicyName"] = true, ["TargetTrackingScalingPolicyConfiguration"] = true, nil }

function asserts.AssertAutoScalingPolicyDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingPolicyDescription to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertAutoScalingPolicyName(struct["PolicyName"]) end
	if struct["TargetTrackingScalingPolicyConfiguration"] then asserts.AssertAutoScalingTargetTrackingScalingPolicyConfigurationDescription(struct["TargetTrackingScalingPolicyConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingPolicyDescription[k], "AutoScalingPolicyDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingPolicyDescription
-- <p>Represents the properties of the scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [AutoScalingPolicyName] <p>The name of the scaling policy.</p>
-- * TargetTrackingScalingPolicyConfiguration [AutoScalingTargetTrackingScalingPolicyConfigurationDescription] <p>Represents a target tracking scaling policy configuration.</p>
-- @return AutoScalingPolicyDescription structure as a key-value pair table
function M.AutoScalingPolicyDescription(args)
	assert(args, "You must provide an argument table when creating AutoScalingPolicyDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["TargetTrackingScalingPolicyConfiguration"] = args["TargetTrackingScalingPolicyConfiguration"],
	}
	asserts.AssertAutoScalingPolicyDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalSecondaryIndexDescription = { ["IndexSizeBytes"] = true, ["IndexName"] = true, ["Projection"] = true, ["ProvisionedThroughput"] = true, ["IndexStatus"] = true, ["Backfilling"] = true, ["KeySchema"] = true, ["IndexArn"] = true, ["ItemCount"] = true, nil }

function asserts.AssertGlobalSecondaryIndexDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndexDescription to be of type 'table'")
	if struct["IndexSizeBytes"] then asserts.AssertLong(struct["IndexSizeBytes"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughputDescription(struct["ProvisionedThroughput"]) end
	if struct["IndexStatus"] then asserts.AssertIndexStatus(struct["IndexStatus"]) end
	if struct["Backfilling"] then asserts.AssertBackfilling(struct["Backfilling"]) end
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexArn"] then asserts.AssertString(struct["IndexArn"]) end
	if struct["ItemCount"] then asserts.AssertLong(struct["ItemCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalSecondaryIndexDescription[k], "GlobalSecondaryIndexDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndexDescription
-- <p>Represents the properties of a global secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexSizeBytes [Long] <p>The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- * IndexName [IndexName] <p>The name of the global secondary index.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- * ProvisionedThroughput [ProvisionedThroughputDescription] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * IndexStatus [IndexStatus] <p>The current state of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The index is ready for use.</p> </li> </ul>
-- * Backfilling [Backfilling] <p>Indicates whether the index is currently backfilling. <i>Backfilling</i> is the process of reading items from the table and determining whether they can be added to the index. (Not all items will qualify: For example, a partition key cannot have any duplicate values.) If an item can be added to the index, DynamoDB will do so. After all items have been processed, the backfilling operation is complete and <code>Backfilling</code> is false.</p> <note> <p>For indexes that were created during a <code>CreateTable</code> operation, the <code>Backfilling</code> attribute does not appear in the <code>DescribeTable</code> output.</p> </note>
-- * KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * IndexArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
-- * ItemCount [Long] <p>The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @return GlobalSecondaryIndexDescription structure as a key-value pair table
function M.GlobalSecondaryIndexDescription(args)
	assert(args, "You must provide an argument table when creating GlobalSecondaryIndexDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexSizeBytes"] = args["IndexSizeBytes"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
		["IndexStatus"] = args["IndexStatus"],
		["Backfilling"] = args["Backfilling"],
		["KeySchema"] = args["KeySchema"],
		["IndexArn"] = args["IndexArn"],
		["ItemCount"] = args["ItemCount"],
	}
	asserts.AssertGlobalSecondaryIndexDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTableOutput = { ["TableDescription"] = true, nil }

function asserts.AssertCreateTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTableOutput to be of type 'table'")
	if struct["TableDescription"] then asserts.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTableOutput[k], "CreateTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableOutput
-- <p>Represents the output of a <code>CreateTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableDescription [TableDescription] <p>Represents the properties of the table.</p>
-- @return CreateTableOutput structure as a key-value pair table
function M.CreateTableOutput(args)
	assert(args, "You must provide an argument table when creating CreateTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableDescription"] = args["TableDescription"],
	}
	asserts.AssertCreateTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalSecondaryIndex = { ["KeySchema"] = true, ["IndexName"] = true, ["Projection"] = true, ["ProvisionedThroughput"] = true, nil }

function asserts.AssertGlobalSecondaryIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndex to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["Projection"], "Expected key Projection to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalSecondaryIndex[k], "GlobalSecondaryIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndex
-- <p>Represents the properties of a global secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * IndexName [IndexName] <p>The name of the global secondary index. The name must be unique among all other indexes on this table.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- * ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: IndexName
-- Required key: KeySchema
-- Required key: Projection
-- Required key: ProvisionedThroughput
-- @return GlobalSecondaryIndex structure as a key-value pair table
function M.GlobalSecondaryIndex(args)
	assert(args, "You must provide an argument table when creating GlobalSecondaryIndex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeySchema"] = args["KeySchema"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
	}
	asserts.AssertGlobalSecondaryIndex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTimeToLiveOutput = { ["TimeToLiveSpecification"] = true, nil }

function asserts.AssertUpdateTimeToLiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTimeToLiveOutput to be of type 'table'")
	if struct["TimeToLiveSpecification"] then asserts.AssertTimeToLiveSpecification(struct["TimeToLiveSpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTimeToLiveOutput[k], "UpdateTimeToLiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTimeToLiveOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeToLiveSpecification [TimeToLiveSpecification] <p>Represents the output of an <code>UpdateTimeToLive</code> operation.</p>
-- @return UpdateTimeToLiveOutput structure as a key-value pair table
function M.UpdateTimeToLiveOutput(args)
	assert(args, "You must provide an argument table when creating UpdateTimeToLiveOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeToLiveSpecification"] = args["TimeToLiveSpecification"],
	}
	asserts.AssertUpdateTimeToLiveOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicaSettingsDescription = { ["ReplicaProvisionedReadCapacityUnits"] = true, ["ReplicaProvisionedWriteCapacityAutoScalingSettings"] = true, ["ReplicaProvisionedReadCapacityAutoScalingSettings"] = true, ["ReplicaGlobalSecondaryIndexSettings"] = true, ["RegionName"] = true, ["ReplicaProvisionedWriteCapacityUnits"] = true, ["ReplicaStatus"] = true, nil }

function asserts.AssertReplicaSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicaSettingsDescription to be of type 'table'")
	assert(struct["RegionName"], "Expected key RegionName to exist in table")
	if struct["ReplicaProvisionedReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ReplicaProvisionedReadCapacityUnits"]) end
	if struct["ReplicaProvisionedWriteCapacityAutoScalingSettings"] then asserts.AssertAutoScalingSettingsDescription(struct["ReplicaProvisionedWriteCapacityAutoScalingSettings"]) end
	if struct["ReplicaProvisionedReadCapacityAutoScalingSettings"] then asserts.AssertAutoScalingSettingsDescription(struct["ReplicaProvisionedReadCapacityAutoScalingSettings"]) end
	if struct["ReplicaGlobalSecondaryIndexSettings"] then asserts.AssertReplicaGlobalSecondaryIndexSettingsDescriptionList(struct["ReplicaGlobalSecondaryIndexSettings"]) end
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	if struct["ReplicaProvisionedWriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ReplicaProvisionedWriteCapacityUnits"]) end
	if struct["ReplicaStatus"] then asserts.AssertReplicaStatus(struct["ReplicaStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicaSettingsDescription[k], "ReplicaSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicaSettingsDescription
-- <p>Represents the properties of a replica.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicaProvisionedReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
-- * ReplicaProvisionedWriteCapacityAutoScalingSettings [AutoScalingSettingsDescription] <p>AutoScaling settings for a global table replica's write capacity units.</p>
-- * ReplicaProvisionedReadCapacityAutoScalingSettings [AutoScalingSettingsDescription] <p>Autoscaling settings for a global table replica's read capacity units.</p>
-- * ReplicaGlobalSecondaryIndexSettings [ReplicaGlobalSecondaryIndexSettingsDescriptionList] <p>Replica global secondary index settings for the global table.</p>
-- * RegionName [RegionName] <p>The region name of the replica.</p>
-- * ReplicaProvisionedWriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ReplicaStatus [ReplicaStatus] <p>The current state of the region:</p> <ul> <li> <p> <code>CREATING</code> - The region is being created.</p> </li> <li> <p> <code>UPDATING</code> - The region is being updated.</p> </li> <li> <p> <code>DELETING</code> - The region is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The region is ready for use.</p> </li> </ul>
-- Required key: RegionName
-- @return ReplicaSettingsDescription structure as a key-value pair table
function M.ReplicaSettingsDescription(args)
	assert(args, "You must provide an argument table when creating ReplicaSettingsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicaProvisionedReadCapacityUnits"] = args["ReplicaProvisionedReadCapacityUnits"],
		["ReplicaProvisionedWriteCapacityAutoScalingSettings"] = args["ReplicaProvisionedWriteCapacityAutoScalingSettings"],
		["ReplicaProvisionedReadCapacityAutoScalingSettings"] = args["ReplicaProvisionedReadCapacityAutoScalingSettings"],
		["ReplicaGlobalSecondaryIndexSettings"] = args["ReplicaGlobalSecondaryIndexSettings"],
		["RegionName"] = args["RegionName"],
		["ReplicaProvisionedWriteCapacityUnits"] = args["ReplicaProvisionedWriteCapacityUnits"],
		["ReplicaStatus"] = args["ReplicaStatus"],
	}
	asserts.AssertReplicaSettingsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointsRequest = { nil }

function asserts.AssertDescribeEndpointsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointsRequest[k], "DescribeEndpointsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeEndpointsRequest structure as a key-value pair table
function M.DescribeEndpointsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeEndpointsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Replica = { ["RegionName"] = true, nil }

function asserts.AssertReplica(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Replica to be of type 'table'")
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Replica[k], "Replica contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Replica
-- <p>Represents the properties of a replica.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegionName [RegionName] <p>The region where the replica needs to be created.</p>
-- @return Replica structure as a key-value pair table
function M.Replica(args)
	assert(args, "You must provide an argument table when creating Replica")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertReplica(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBackupInput = { ["BackupArn"] = true, nil }

function asserts.AssertDeleteBackupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupInput to be of type 'table'")
	assert(struct["BackupArn"], "Expected key BackupArn to exist in table")
	if struct["BackupArn"] then asserts.AssertBackupArn(struct["BackupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBackupInput[k], "DeleteBackupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupArn [BackupArn] <p>The ARN associated with the backup.</p>
-- Required key: BackupArn
-- @return DeleteBackupInput structure as a key-value pair table
function M.DeleteBackupInput(args)
	assert(args, "You must provide an argument table when creating DeleteBackupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupArn"] = args["BackupArn"],
	}
	asserts.AssertDeleteBackupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateItemInput = { ["AttributeUpdates"] = true, ["ConditionalOperator"] = true, ["ExpressionAttributeNames"] = true, ["ReturnValues"] = true, ["ConditionExpression"] = true, ["TableName"] = true, ["ReturnItemCollectionMetrics"] = true, ["ReturnConsumedCapacity"] = true, ["UpdateExpression"] = true, ["ExpressionAttributeValues"] = true, ["Key"] = true, ["Expected"] = true, nil }

function asserts.AssertUpdateItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertAttributeUpdates(struct["AttributeUpdates"]) end
	if struct["ConditionalOperator"] then asserts.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["ReturnValues"] then asserts.AssertReturnValue(struct["ReturnValues"]) end
	if struct["ConditionExpression"] then asserts.AssertConditionExpression(struct["ConditionExpression"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ReturnItemCollectionMetrics"] then asserts.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["UpdateExpression"] then asserts.AssertUpdateExpression(struct["UpdateExpression"]) end
	if struct["ExpressionAttributeValues"] then asserts.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	if struct["Expected"] then asserts.AssertExpectedAttributeMap(struct["Expected"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateItemInput[k], "UpdateItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateItemInput
-- <p>Represents the input of an <code>UpdateItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [AttributeUpdates] <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appear before or after they are updated. For <code>UpdateItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - Returns all of the attributes of the item, as they appeared before the UpdateItem operation.</p> </li> <li> <p> <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared before the UpdateItem operation.</p> </li> <li> <p> <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear after the UpdateItem operation.</p> </li> <li> <p> <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear after the UpdateItem operation.</p> </li> </ul> <p>There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.</p> <p>The values returned are strongly consistent.</p>
-- * ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional update to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table containing the item to update.</p>
-- * ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * UpdateExpression [UpdateExpression] <p>An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.</p> <p>The following action values are available for <code>UpdateExpression</code>.</p> <ul> <li> <p> <code>SET</code> - Adds one or more attributes and values to an item. If any of these attribute already exist, they are replaced by the new values. You can also use <code>SET</code> to add or subtract from an attribute that is of type Number. For example: <code>SET myNum = myNum + :val</code> </p> <p> <code>SET</code> supports the following functions:</p> <ul> <li> <p> <code>if_not_exists (path, operand)</code> - if the item does not contain an attribute at the specified path, then <code>if_not_exists</code> evaluates to operand; otherwise, it evaluates to path. You can use this function to avoid overwriting an attribute that may already be present in the item.</p> </li> <li> <p> <code>list_append (operand, operand)</code> - evaluates to a list with a new element added to it. You can append the new element to the start or the end of the list by reversing the order of the operands.</p> </li> </ul> <p>These function names are case-sensitive.</p> </li> <li> <p> <code>REMOVE</code> - Removes one or more attributes from an item.</p> </li> <li> <p> <code>ADD</code> - Adds the specified value to the item, if the attribute does not already exist. If the attribute does exist, then the behavior of <code>ADD</code> depends on the data type of the attribute:</p> <ul> <li> <p>If the existing attribute is a number, and if <code>Value</code> is also a number, then <code>Value</code> is mathematically added to the existing attribute. If <code>Value</code> is a negative number, then it is subtracted from the existing attribute.</p> <note> <p>If you use <code>ADD</code> to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses <code>0</code> as the initial value.</p> <p>Similarly, if you use <code>ADD</code> for an existing item to increment or decrement an attribute value that doesn't exist before the update, DynamoDB uses <code>0</code> as the initial value. For example, suppose that the item you want to update doesn't have an attribute named <i>itemcount</i>, but you decide to <code>ADD</code> the number <code>3</code> to this attribute anyway. DynamoDB will create the <i>itemcount</i> attribute, set its initial value to <code>0</code>, and finally add <code>3</code> to it. The result will be a new <i>itemcount</i> attribute in the item, with a value of <code>3</code>.</p> </note> </li> <li> <p>If the existing data type is a set and if <code>Value</code> is also a set, then <code>Value</code> is added to the existing set. For example, if the attribute value is the set <code>[1,2]</code>, and the <code>ADD</code> action specified <code>[3]</code>, then the final attribute value is <code>[1,2,3]</code>. An error occurs if an <code>ADD</code> action is specified for a set attribute and the attribute type specified does not match the existing set type. </p> <p>Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the <code>Value</code> must also be a set of strings.</p> </li> </ul> <important> <p>The <code>ADD</code> action only supports Number and set data types. In addition, <code>ADD</code> can only be used on top-level attributes, not nested attributes.</p> </important> </li> <li> <p> <code>DELETE</code> - Deletes an element from a set.</p> <p>If a set of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set <code>[a,b,c]</code> and the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final attribute value is <code>[b]</code>. Specifying an empty set is an error.</p> <important> <p>The <code>DELETE</code> action only supports set data types. In addition, <code>DELETE</code> can only be used on top-level attributes, not nested attributes.</p> </important> </li> </ul> <p>You can have many actions in a single expression, such as the following: <code>SET a=:value1, b=:value2 DELETE :value3, :value4, :value5</code> </p> <p>For more information on update expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying Items and Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Key [Key] <p>The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- * Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: TableName
-- Required key: Key
-- @return UpdateItemInput structure as a key-value pair table
function M.UpdateItemInput(args)
	assert(args, "You must provide an argument table when creating UpdateItemInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["ConditionalOperator"] = args["ConditionalOperator"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
		["ReturnValues"] = args["ReturnValues"],
		["ConditionExpression"] = args["ConditionExpression"],
		["TableName"] = args["TableName"],
		["ReturnItemCollectionMetrics"] = args["ReturnItemCollectionMetrics"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["UpdateExpression"] = args["UpdateExpression"],
		["ExpressionAttributeValues"] = args["ExpressionAttributeValues"],
		["Key"] = args["Key"],
		["Expected"] = args["Expected"],
	}
	asserts.AssertUpdateItemInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicaGlobalSecondaryIndexSettingsUpdate = { ["ProvisionedReadCapacityAutoScalingSettingsUpdate"] = true, ["ProvisionedReadCapacityUnits"] = true, ["IndexName"] = true, nil }

function asserts.AssertReplicaGlobalSecondaryIndexSettingsUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicaGlobalSecondaryIndexSettingsUpdate to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	if struct["ProvisionedReadCapacityAutoScalingSettingsUpdate"] then asserts.AssertAutoScalingSettingsUpdate(struct["ProvisionedReadCapacityAutoScalingSettingsUpdate"]) end
	if struct["ProvisionedReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ProvisionedReadCapacityUnits"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicaGlobalSecondaryIndexSettingsUpdate[k], "ReplicaGlobalSecondaryIndexSettingsUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicaGlobalSecondaryIndexSettingsUpdate
-- <p>Represents the settings of a global secondary index for a global table that will be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedReadCapacityAutoScalingSettingsUpdate [AutoScalingSettingsUpdate] <p>Autoscaling settings for managing a global secondary index replica's read capacity units.</p>
-- * ProvisionedReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>.</p>
-- * IndexName [IndexName] <p>The name of the global secondary index. The name must be unique among all other indexes on this table.</p>
-- Required key: IndexName
-- @return ReplicaGlobalSecondaryIndexSettingsUpdate structure as a key-value pair table
function M.ReplicaGlobalSecondaryIndexSettingsUpdate(args)
	assert(args, "You must provide an argument table when creating ReplicaGlobalSecondaryIndexSettingsUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisionedReadCapacityAutoScalingSettingsUpdate"] = args["ProvisionedReadCapacityAutoScalingSettingsUpdate"],
		["ProvisionedReadCapacityUnits"] = args["ProvisionedReadCapacityUnits"],
		["IndexName"] = args["IndexName"],
	}
	asserts.AssertReplicaGlobalSecondaryIndexSettingsUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = { ["ScaleOutCooldown"] = true, ["TargetValue"] = true, ["DisableScaleIn"] = true, ["ScaleInCooldown"] = true, nil }

function asserts.AssertAutoScalingTargetTrackingScalingPolicyConfigurationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingTargetTrackingScalingPolicyConfigurationUpdate to be of type 'table'")
	assert(struct["TargetValue"], "Expected key TargetValue to exist in table")
	if struct["ScaleOutCooldown"] then asserts.AssertIntegerObject(struct["ScaleOutCooldown"]) end
	if struct["TargetValue"] then asserts.AssertDouble(struct["TargetValue"]) end
	if struct["DisableScaleIn"] then asserts.AssertBooleanObject(struct["DisableScaleIn"]) end
	if struct["ScaleInCooldown"] then asserts.AssertIntegerObject(struct["ScaleInCooldown"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate[k], "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
-- <p>Represents the settings of a target tracking scaling policy that will be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScaleOutCooldown [IntegerObject] <p>The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. You should continuously (but not excessively) scale out.</p>
-- * TargetValue [Double] <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).</p>
-- * DisableScaleIn [BooleanObject] <p>Indicates whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.</p>
-- * ScaleInCooldown [IntegerObject] <p>The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. The cooldown period is used to block subsequent scale in requests until it has expired. You should scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, application autoscaling scales out your scalable target immediately. </p>
-- Required key: TargetValue
-- @return AutoScalingTargetTrackingScalingPolicyConfigurationUpdate structure as a key-value pair table
function M.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate(args)
	assert(args, "You must provide an argument table when creating AutoScalingTargetTrackingScalingPolicyConfigurationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScaleOutCooldown"] = args["ScaleOutCooldown"],
		["TargetValue"] = args["TargetValue"],
		["DisableScaleIn"] = args["DisableScaleIn"],
		["ScaleInCooldown"] = args["ScaleInCooldown"],
	}
	asserts.AssertAutoScalingTargetTrackingScalingPolicyConfigurationUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamSpecification = { ["StreamViewType"] = true, ["StreamEnabled"] = true, nil }

function asserts.AssertStreamSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamSpecification to be of type 'table'")
	if struct["StreamViewType"] then asserts.AssertStreamViewType(struct["StreamViewType"]) end
	if struct["StreamEnabled"] then asserts.AssertStreamEnabled(struct["StreamEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamSpecification[k], "StreamSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamSpecification
-- <p>Represents the DynamoDB Streams configuration for a table in DynamoDB.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamViewType [StreamViewType] <p> When an item in the table is modified, <code>StreamViewType</code> determines what information is written to the stream for this table. Valid values for <code>StreamViewType</code> are:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the key attributes of the modified item are written to the stream.</p> </li> <li> <p> <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified, is written to the stream.</p> </li> <li> <p> <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified, is written to the stream.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the item are written to the stream.</p> </li> </ul>
-- * StreamEnabled [StreamEnabled] <p>Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the table.</p>
-- @return StreamSpecification structure as a key-value pair table
function M.StreamSpecification(args)
	assert(args, "You must provide an argument table when creating StreamSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamViewType"] = args["StreamViewType"],
		["StreamEnabled"] = args["StreamEnabled"],
	}
	asserts.AssertStreamSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTableInput = { ["TableName"] = true, nil }

function asserts.AssertDescribeTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTableInput[k], "DescribeTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableInput
-- <p>Represents the input of a <code>DescribeTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [TableName] <p>The name of the table to describe.</p>
-- Required key: TableName
-- @return DescribeTableInput structure as a key-value pair table
function M.DescribeTableInput(args)
	assert(args, "You must provide an argument table when creating DescribeTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
	}
	asserts.AssertDescribeTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AutoScalingSettingsDescription = { ["ScalingPolicies"] = true, ["AutoScalingDisabled"] = true, ["AutoScalingRoleArn"] = true, ["MinimumUnits"] = true, ["MaximumUnits"] = true, nil }

function asserts.AssertAutoScalingSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutoScalingSettingsDescription to be of type 'table'")
	if struct["ScalingPolicies"] then asserts.AssertAutoScalingPolicyDescriptionList(struct["ScalingPolicies"]) end
	if struct["AutoScalingDisabled"] then asserts.AssertBooleanObject(struct["AutoScalingDisabled"]) end
	if struct["AutoScalingRoleArn"] then asserts.AssertString(struct["AutoScalingRoleArn"]) end
	if struct["MinimumUnits"] then asserts.AssertPositiveLongObject(struct["MinimumUnits"]) end
	if struct["MaximumUnits"] then asserts.AssertPositiveLongObject(struct["MaximumUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutoScalingSettingsDescription[k], "AutoScalingSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutoScalingSettingsDescription
-- <p>Represents the autoscaling settings for a global table or global secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPolicies [AutoScalingPolicyDescriptionList] <p>Information about the scaling policies.</p>
-- * AutoScalingDisabled [BooleanObject] <p>Disabled autoscaling for this global table or global secondary index.</p>
-- * AutoScalingRoleArn [String] <p>Role ARN used for configuring autoScaling policy.</p>
-- * MinimumUnits [PositiveLongObject] <p>The minimum capacity units that a global table or global secondary index should be scaled down to.</p>
-- * MaximumUnits [PositiveLongObject] <p>The maximum capacity units that a global table or global secondary index should be scaled up to.</p>
-- @return AutoScalingSettingsDescription structure as a key-value pair table
function M.AutoScalingSettingsDescription(args)
	assert(args, "You must provide an argument table when creating AutoScalingSettingsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPolicies"] = args["ScalingPolicies"],
		["AutoScalingDisabled"] = args["AutoScalingDisabled"],
		["AutoScalingRoleArn"] = args["AutoScalingRoleArn"],
		["MinimumUnits"] = args["MinimumUnits"],
		["MaximumUnits"] = args["MaximumUnits"],
	}
	asserts.AssertAutoScalingSettingsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedThroughputDescription = { ["NumberOfDecreasesToday"] = true, ["WriteCapacityUnits"] = true, ["LastIncreaseDateTime"] = true, ["ReadCapacityUnits"] = true, ["LastDecreaseDateTime"] = true, nil }

function asserts.AssertProvisionedThroughputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputDescription to be of type 'table'")
	if struct["NumberOfDecreasesToday"] then asserts.AssertPositiveLongObject(struct["NumberOfDecreasesToday"]) end
	if struct["WriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["WriteCapacityUnits"]) end
	if struct["LastIncreaseDateTime"] then asserts.AssertDate(struct["LastIncreaseDateTime"]) end
	if struct["ReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ReadCapacityUnits"]) end
	if struct["LastDecreaseDateTime"] then asserts.AssertDate(struct["LastDecreaseDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedThroughputDescription[k], "ProvisionedThroughputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputDescription
-- <p>Represents the provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfDecreasesToday [PositiveLongObject] <p>The number of provisioned throughput decreases for this table during this UTC calendar day. For current maximums on provisioned throughput decreases, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * WriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>.</p>
-- * LastIncreaseDateTime [Date] <p>The date and time of the last provisioned throughput increase for this table.</p>
-- * ReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. Eventually consistent reads require less effort than strongly consistent reads, so a setting of 50 <code>ReadCapacityUnits</code> per second provides 100 eventually consistent <code>ReadCapacityUnits</code> per second.</p>
-- * LastDecreaseDateTime [Date] <p>The date and time of the last provisioned throughput decrease for this table.</p>
-- @return ProvisionedThroughputDescription structure as a key-value pair table
function M.ProvisionedThroughputDescription(args)
	assert(args, "You must provide an argument table when creating ProvisionedThroughputDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfDecreasesToday"] = args["NumberOfDecreasesToday"],
		["WriteCapacityUnits"] = args["WriteCapacityUnits"],
		["LastIncreaseDateTime"] = args["LastIncreaseDateTime"],
		["ReadCapacityUnits"] = args["ReadCapacityUnits"],
		["LastDecreaseDateTime"] = args["LastDecreaseDateTime"],
	}
	asserts.AssertProvisionedThroughputDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchWriteItemInput = { ["RequestItems"] = true, ["ReturnConsumedCapacity"] = true, ["ReturnItemCollectionMetrics"] = true, nil }

function asserts.AssertBatchWriteItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteItemInput to be of type 'table'")
	assert(struct["RequestItems"], "Expected key RequestItems to exist in table")
	if struct["RequestItems"] then asserts.AssertBatchWriteItemRequestMap(struct["RequestItems"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ReturnItemCollectionMetrics"] then asserts.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteItemInput[k], "BatchWriteItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteItemInput
-- <p>Represents the input of a <code>BatchWriteItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestItems [BatchWriteItemRequestMap] <p>A map of one or more table names and, for each table, a list of operations to be performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each element in the map consists of the following:</p> <ul> <li> <p> <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the specified item. The item to be deleted is identified by a <code>Key</code> subelement:</p> <ul> <li> <p> <code>Key</code> - A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value. For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for <i>both</i> the partition key and the sort key.</p> </li> </ul> </li> <li> <p> <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the specified item. The item to be put is identified by an <code>Item</code> subelement:</p> <ul> <li> <p> <code>Item</code> - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a <code>ValidationException</code> exception.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> </li> </ul> </li> </ul>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- Required key: RequestItems
-- @return BatchWriteItemInput structure as a key-value pair table
function M.BatchWriteItemInput(args)
	assert(args, "You must provide an argument table when creating BatchWriteItemInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequestItems"] = args["RequestItems"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["ReturnItemCollectionMetrics"] = args["ReturnItemCollectionMetrics"],
	}
	asserts.AssertBatchWriteItemInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTableInput = { ["GlobalSecondaryIndexUpdates"] = true, ["AttributeDefinitions"] = true, ["ProvisionedThroughput"] = true, ["TableName"] = true, ["StreamSpecification"] = true, ["SSESpecification"] = true, nil }

function asserts.AssertUpdateTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["GlobalSecondaryIndexUpdates"] then asserts.AssertGlobalSecondaryIndexUpdateList(struct["GlobalSecondaryIndexUpdates"]) end
	if struct["AttributeDefinitions"] then asserts.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["StreamSpecification"] then asserts.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["SSESpecification"] then asserts.AssertSSESpecification(struct["SSESpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTableInput[k], "UpdateTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableInput
-- <p>Represents the input of an <code>UpdateTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalSecondaryIndexUpdates [GlobalSecondaryIndexUpdateList] <p>An array of one or more global secondary indexes for the table. For each index in the array, you can request one action:</p> <ul> <li> <p> <code>Create</code> - add a new global secondary index to the table.</p> </li> <li> <p> <code>Update</code> - modify the provisioned throughput settings of an existing global secondary index.</p> </li> <li> <p> <code>Delete</code> - remove a global secondary index from the table.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global Secondary Indexes</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
-- * AttributeDefinitions [AttributeDefinitions] <p>An array of attributes that describe the key schema for the table and indexes. If you are adding a new global secondary index to the table, <code>AttributeDefinitions</code> must include the key element(s) of the new index.</p>
-- * ProvisionedThroughput [ProvisionedThroughput] <p>The new provisioned throughput settings for the specified table or index.</p>
-- * TableName [TableName] <p>The name of the table to be updated.</p>
-- * StreamSpecification [StreamSpecification] <p>Represents the DynamoDB Streams configuration for the table.</p> <note> <p>You will receive a <code>ResourceInUseException</code> if you attempt to enable a stream on a table that already has a stream, or if you attempt to disable a stream on a table which does not have a stream.</p> </note>
-- * SSESpecification [SSESpecification] <p>The new server-side encryption settings for the specified table.</p>
-- Required key: TableName
-- @return UpdateTableInput structure as a key-value pair table
function M.UpdateTableInput(args)
	assert(args, "You must provide an argument table when creating UpdateTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalSecondaryIndexUpdates"] = args["GlobalSecondaryIndexUpdates"],
		["AttributeDefinitions"] = args["AttributeDefinitions"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
		["TableName"] = args["TableName"],
		["StreamSpecification"] = args["StreamSpecification"],
		["SSESpecification"] = args["SSESpecification"],
	}
	asserts.AssertUpdateTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ItemCollectionMetrics = { ["ItemCollectionKey"] = true, ["SizeEstimateRangeGB"] = true, nil }

function asserts.AssertItemCollectionMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemCollectionMetrics to be of type 'table'")
	if struct["ItemCollectionKey"] then asserts.AssertItemCollectionKeyAttributeMap(struct["ItemCollectionKey"]) end
	if struct["SizeEstimateRangeGB"] then asserts.AssertItemCollectionSizeEstimateRange(struct["SizeEstimateRangeGB"]) end
	for k,_ in pairs(struct) do
		assert(keys.ItemCollectionMetrics[k], "ItemCollectionMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemCollectionMetrics
-- <p>Information about item collections, if any, that were affected by the operation. <code>ItemCollectionMetrics</code> is only returned if the request asked for it. If the table does not have any local secondary indexes, this information is not returned in the response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ItemCollectionKey [ItemCollectionKeyAttributeMap] <p>The partition key value of the item collection. This value is the same as the partition key value of the item.</p>
-- * SizeEstimateRangeGB [ItemCollectionSizeEstimateRange] <p>An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p>
-- @return ItemCollectionMetrics structure as a key-value pair table
function M.ItemCollectionMetrics(args)
	assert(args, "You must provide an argument table when creating ItemCollectionMetrics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ItemCollectionKey"] = args["ItemCollectionKey"],
		["SizeEstimateRangeGB"] = args["SizeEstimateRangeGB"],
	}
	asserts.AssertItemCollectionMetrics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGlobalTableInput = { ["GlobalTableName"] = true, nil }

function asserts.AssertDescribeGlobalTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGlobalTableInput to be of type 'table'")
	assert(struct["GlobalTableName"], "Expected key GlobalTableName to exist in table")
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGlobalTableInput[k], "DescribeGlobalTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGlobalTableInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableName [TableName] <p>The name of the global table.</p>
-- Required key: GlobalTableName
-- @return DescribeGlobalTableInput structure as a key-value pair table
function M.DescribeGlobalTableInput(args)
	assert(args, "You must provide an argument table when creating DescribeGlobalTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableName"] = args["GlobalTableName"],
	}
	asserts.AssertDescribeGlobalTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeDefinition = { ["AttributeName"] = true, ["AttributeType"] = true, nil }

function asserts.AssertAttributeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeDefinition to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["AttributeType"], "Expected key AttributeType to exist in table")
	if struct["AttributeName"] then asserts.AssertKeySchemaAttributeName(struct["AttributeName"]) end
	if struct["AttributeType"] then asserts.AssertScalarAttributeType(struct["AttributeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeDefinition[k], "AttributeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeDefinition
-- <p>Represents an attribute for describing the key schema for the table and indexes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [KeySchemaAttributeName] <p>A name for the attribute.</p>
-- * AttributeType [ScalarAttributeType] <p>The data type for the attribute, where:</p> <ul> <li> <p> <code>S</code> - the attribute is of type String</p> </li> <li> <p> <code>N</code> - the attribute is of type Number</p> </li> <li> <p> <code>B</code> - the attribute is of type Binary</p> </li> </ul>
-- Required key: AttributeName
-- Required key: AttributeType
-- @return AttributeDefinition structure as a key-value pair table
function M.AttributeDefinition(args)
	assert(args, "You must provide an argument table when creating AttributeDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeType"] = args["AttributeType"],
	}
	asserts.AssertAttributeDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGlobalTableSettingsInput = { ["GlobalTableName"] = true, nil }

function asserts.AssertDescribeGlobalTableSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGlobalTableSettingsInput to be of type 'table'")
	assert(struct["GlobalTableName"], "Expected key GlobalTableName to exist in table")
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGlobalTableSettingsInput[k], "DescribeGlobalTableSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGlobalTableSettingsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableName [TableName] <p>The name of the global table to describe.</p>
-- Required key: GlobalTableName
-- @return DescribeGlobalTableSettingsInput structure as a key-value pair table
function M.DescribeGlobalTableSettingsInput(args)
	assert(args, "You must provide an argument table when creating DescribeGlobalTableSettingsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableName"] = args["GlobalTableName"],
	}
	asserts.AssertDescribeGlobalTableSettingsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Capacity = { ["CapacityUnits"] = true, nil }

function asserts.AssertCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Capacity to be of type 'table'")
	if struct["CapacityUnits"] then asserts.AssertConsumedCapacityUnits(struct["CapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.Capacity[k], "Capacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Capacity
-- <p>Represents the amount of provisioned throughput capacity consumed on a table or an index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CapacityUnits [ConsumedCapacityUnits] <p>The total number of capacity units consumed on a table or an index.</p>
-- @return Capacity structure as a key-value pair table
function M.Capacity(args)
	assert(args, "You must provide an argument table when creating Capacity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CapacityUnits"] = args["CapacityUnits"],
	}
	asserts.AssertCapacity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGlobalTableSettingsInput = { ["GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"] = true, ["GlobalTableName"] = true, ["ReplicaSettingsUpdate"] = true, ["GlobalTableProvisionedWriteCapacityUnits"] = true, ["GlobalTableGlobalSecondaryIndexSettingsUpdate"] = true, nil }

function asserts.AssertUpdateGlobalTableSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGlobalTableSettingsInput to be of type 'table'")
	assert(struct["GlobalTableName"], "Expected key GlobalTableName to exist in table")
	if struct["GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"] then asserts.AssertAutoScalingSettingsUpdate(struct["GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"]) end
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	if struct["ReplicaSettingsUpdate"] then asserts.AssertReplicaSettingsUpdateList(struct["ReplicaSettingsUpdate"]) end
	if struct["GlobalTableProvisionedWriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["GlobalTableProvisionedWriteCapacityUnits"]) end
	if struct["GlobalTableGlobalSecondaryIndexSettingsUpdate"] then asserts.AssertGlobalTableGlobalSecondaryIndexSettingsUpdateList(struct["GlobalTableGlobalSecondaryIndexSettingsUpdate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGlobalTableSettingsInput[k], "UpdateGlobalTableSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGlobalTableSettingsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate [AutoScalingSettingsUpdate] <p>AutoScaling settings for managing provisioned write capacity for the global table.</p>
-- * GlobalTableName [TableName] <p>The name of the global table</p>
-- * ReplicaSettingsUpdate [ReplicaSettingsUpdateList] <p>Represents the settings for a global table in a region that will be modified.</p>
-- * GlobalTableProvisionedWriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException.</code> </p>
-- * GlobalTableGlobalSecondaryIndexSettingsUpdate [GlobalTableGlobalSecondaryIndexSettingsUpdateList] <p>Represents the settings of a global secondary index for a global table that will be modified.</p>
-- Required key: GlobalTableName
-- @return UpdateGlobalTableSettingsInput structure as a key-value pair table
function M.UpdateGlobalTableSettingsInput(args)
	assert(args, "You must provide an argument table when creating UpdateGlobalTableSettingsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"] = args["GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"],
		["GlobalTableName"] = args["GlobalTableName"],
		["ReplicaSettingsUpdate"] = args["ReplicaSettingsUpdate"],
		["GlobalTableProvisionedWriteCapacityUnits"] = args["GlobalTableProvisionedWriteCapacityUnits"],
		["GlobalTableGlobalSecondaryIndexSettingsUpdate"] = args["GlobalTableGlobalSecondaryIndexSettingsUpdate"],
	}
	asserts.AssertUpdateGlobalTableSettingsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryOutput = { ["Count"] = true, ["Items"] = true, ["LastEvaluatedKey"] = true, ["ScannedCount"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryOutput to be of type 'table'")
	if struct["Count"] then asserts.AssertInteger(struct["Count"]) end
	if struct["Items"] then asserts.AssertItemList(struct["Items"]) end
	if struct["LastEvaluatedKey"] then asserts.AssertKey(struct["LastEvaluatedKey"]) end
	if struct["ScannedCount"] then asserts.AssertInteger(struct["ScannedCount"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryOutput[k], "QueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryOutput
-- <p>Represents the output of a <code>Query</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [Integer] <p>The number of items in the response.</p> <p>If you used a <code>QueryFilter</code> in the request, then <code>Count</code> is the number of items returned after the filter was applied, and <code>ScannedCount</code> is the number of matching items before the filter was applied.</p> <p>If you did not use a filter in the request, then <code>Count</code> and <code>ScannedCount</code> are the same.</p>
-- * Items [ItemList] <p>An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.</p>
-- * LastEvaluatedKey [Key] <p>The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedKey</code> is empty.</p>
-- * ScannedCount [Integer] <p>The number of items evaluated, before any <code>QueryFilter</code> is applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Query</code> operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same as <code>Count</code>.</p>
-- * ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>Query</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return QueryOutput structure as a key-value pair table
function M.QueryOutput(args)
	assert(args, "You must provide an argument table when creating QueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["Items"] = args["Items"],
		["LastEvaluatedKey"] = args["LastEvaluatedKey"],
		["ScannedCount"] = args["ScannedCount"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTablesInput = { ["Limit"] = true, ["ExclusiveStartTableName"] = true, nil }

function asserts.AssertListTablesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTablesInput to be of type 'table'")
	if struct["Limit"] then asserts.AssertListTablesInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartTableName"] then asserts.AssertTableName(struct["ExclusiveStartTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTablesInput[k], "ListTablesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTablesInput
-- <p>Represents the input of a <code>ListTables</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [ListTablesInputLimit] <p>A maximum number of table names to return. If this parameter is not specified, the limit is 100.</p>
-- * ExclusiveStartTableName [TableName] <p>The first table name that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you can obtain the next page of results.</p>
-- @return ListTablesInput structure as a key-value pair table
function M.ListTablesInput(args)
	assert(args, "You must provide an argument table when creating ListTablesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["ExclusiveStartTableName"] = args["ExclusiveStartTableName"],
	}
	asserts.AssertListTablesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTableOutput = { ["TableDescription"] = true, nil }

function asserts.AssertUpdateTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableOutput to be of type 'table'")
	if struct["TableDescription"] then asserts.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTableOutput[k], "UpdateTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableOutput
-- <p>Represents the output of an <code>UpdateTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableDescription [TableDescription] <p>Represents the properties of the table.</p>
-- @return UpdateTableOutput structure as a key-value pair table
function M.UpdateTableOutput(args)
	assert(args, "You must provide an argument table when creating UpdateTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableDescription"] = args["TableDescription"],
	}
	asserts.AssertUpdateTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointsResponse = { ["Endpoints"] = true, nil }

function asserts.AssertDescribeEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsResponse to be of type 'table'")
	assert(struct["Endpoints"], "Expected key Endpoints to exist in table")
	if struct["Endpoints"] then asserts.AssertEndpoints(struct["Endpoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointsResponse[k], "DescribeEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoints [Endpoints] 
-- Required key: Endpoints
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

keys.GlobalSecondaryIndexUpdate = { ["Create"] = true, ["Update"] = true, ["Delete"] = true, nil }

function asserts.AssertGlobalSecondaryIndexUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndexUpdate to be of type 'table'")
	if struct["Create"] then asserts.AssertCreateGlobalSecondaryIndexAction(struct["Create"]) end
	if struct["Update"] then asserts.AssertUpdateGlobalSecondaryIndexAction(struct["Update"]) end
	if struct["Delete"] then asserts.AssertDeleteGlobalSecondaryIndexAction(struct["Delete"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalSecondaryIndexUpdate[k], "GlobalSecondaryIndexUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndexUpdate
-- <p>Represents one of the following:</p> <ul> <li> <p>A new global secondary index to be added to an existing table.</p> </li> <li> <p>New provisioned throughput parameters for an existing global secondary index.</p> </li> <li> <p>An existing global secondary index to be removed from an existing table.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Create [CreateGlobalSecondaryIndexAction] <p>The parameters required for creating a global secondary index on an existing table:</p> <ul> <li> <p> <code>IndexName </code> </p> </li> <li> <p> <code>KeySchema </code> </p> </li> <li> <p> <code>AttributeDefinitions </code> </p> </li> <li> <p> <code>Projection </code> </p> </li> <li> <p> <code>ProvisionedThroughput </code> </p> </li> </ul>
-- * Update [UpdateGlobalSecondaryIndexAction] <p>The name of an existing global secondary index, along with new provisioned throughput settings to be applied to that index.</p>
-- * Delete [DeleteGlobalSecondaryIndexAction] <p>The name of an existing global secondary index to be removed.</p>
-- @return GlobalSecondaryIndexUpdate structure as a key-value pair table
function M.GlobalSecondaryIndexUpdate(args)
	assert(args, "You must provide an argument table when creating GlobalSecondaryIndexUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Create"] = args["Create"],
		["Update"] = args["Update"],
		["Delete"] = args["Delete"],
	}
	asserts.AssertGlobalSecondaryIndexUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBackupOutput = { ["BackupDescription"] = true, nil }

function asserts.AssertDescribeBackupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupOutput to be of type 'table'")
	if struct["BackupDescription"] then asserts.AssertBackupDescription(struct["BackupDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBackupOutput[k], "DescribeBackupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupDescription [BackupDescription] <p>Contains the description of the backup created for the table.</p>
-- @return DescribeBackupOutput structure as a key-value pair table
function M.DescribeBackupOutput(args)
	assert(args, "You must provide an argument table when creating DescribeBackupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupDescription"] = args["BackupDescription"],
	}
	asserts.AssertDescribeBackupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryInput = { ["FilterExpression"] = true, ["ConsistentRead"] = true, ["ConditionalOperator"] = true, ["IndexName"] = true, ["ProjectionExpression"] = true, ["ExpressionAttributeNames"] = true, ["QueryFilter"] = true, ["TableName"] = true, ["ReturnConsumedCapacity"] = true, ["ExclusiveStartKey"] = true, ["AttributesToGet"] = true, ["Limit"] = true, ["ExpressionAttributeValues"] = true, ["KeyConditions"] = true, ["KeyConditionExpression"] = true, ["ScanIndexForward"] = true, ["Select"] = true, nil }

function asserts.AssertQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["FilterExpression"] then asserts.AssertConditionExpression(struct["FilterExpression"]) end
	if struct["ConsistentRead"] then asserts.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["ConditionalOperator"] then asserts.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["ProjectionExpression"] then asserts.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["QueryFilter"] then asserts.AssertFilterConditionMap(struct["QueryFilter"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ExclusiveStartKey"] then asserts.AssertKey(struct["ExclusiveStartKey"]) end
	if struct["AttributesToGet"] then asserts.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["Limit"] then asserts.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["ExpressionAttributeValues"] then asserts.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["KeyConditions"] then asserts.AssertKeyConditions(struct["KeyConditions"]) end
	if struct["KeyConditionExpression"] then asserts.AssertKeyExpression(struct["KeyConditionExpression"]) end
	if struct["ScanIndexForward"] then asserts.AssertBooleanObject(struct["ScanIndexForward"]) end
	if struct["Select"] then asserts.AssertSelect(struct["Select"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryInput[k], "QueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryInput
-- <p>Represents the input of a <code>Query</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterExpression [ConditionExpression] <p>A string that contains conditions that DynamoDB applies after the <code>Query</code> operation, but before the data is returned to you. Items that do not satisfy the <code>FilterExpression</code> criteria are not returned.</p> <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key.</p> <note> <p>A <code>FilterExpression</code> is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter Expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ConsistentRead [ConsistentRead] <p>Determines the read consistency model: If set to <code>true</code>, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.</p> <p>Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you will receive a <code>ValidationException</code>.</p>
-- * ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * IndexName [IndexName] <p>The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the <code>IndexName</code> parameter, you must also provide <code>TableName.</code> </p>
-- * ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * QueryFilter [FilterConditionMap] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table containing the requested items.</p>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * ExclusiveStartKey [Key] <p>The primary key of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p> <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No set data types are allowed.</p>
-- * AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Limit [PositiveIntegerObject] <p>The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * KeyConditions [KeyConditions] <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * KeyConditionExpression [KeyExpression] <p>The condition that specifies the key value(s) for items to be retrieved by the <code>Query</code> action.</p> <p>The condition must perform an equality test on a single partition key value.</p> <p>The condition can optionally perform one of several comparison tests on a single sort key value. This allows <code>Query</code> to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values.</p> <p>The partition key equality test is required, and must be specified in the following format:</p> <p> <code>partitionKeyName</code> <i>=</i> <code>:partitionkeyval</code> </p> <p>If you also want to provide a condition for the sort key, it must be combined using <code>AND</code> with the condition for the sort key. Following is an example, using the <b>=</b> comparison operator for the sort key:</p> <p> <code>partitionKeyName</code> <code>=</code> <code>:partitionkeyval</code> <code>AND</code> <code>sortKeyName</code> <code>=</code> <code>:sortkeyval</code> </p> <p>Valid comparisons for the sort key condition are as follows:</p> <ul> <li> <p> <code>sortKeyName</code> <code>=</code> <code>:sortkeyval</code> - true if the sort key value is equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&lt;</code> <code>:sortkeyval</code> - true if the sort key value is less than <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&lt;=</code> <code>:sortkeyval</code> - true if the sort key value is less than or equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&gt;</code> <code>:sortkeyval</code> - true if the sort key value is greater than <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&gt;= </code> <code>:sortkeyval</code> - true if the sort key value is greater than or equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>BETWEEN</code> <code>:sortkeyval1</code> <code>AND</code> <code>:sortkeyval2</code> - true if the sort key value is greater than or equal to <code>:sortkeyval1</code>, and less than or equal to <code>:sortkeyval2</code>.</p> </li> <li> <p> <code>begins_with (</code> <code>sortKeyName</code>, <code>:sortkeyval</code> <code>)</code> - true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name <code>begins_with</code> is case-sensitive.</p> </li> </ul> <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as <code>:partitionval</code> and <code>:sortval</code> with actual values at runtime.</p> <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following <code>KeyConditionExpression</code> parameter causes an error because <i>Size</i> is a reserved word:</p> <ul> <li> <p> <code>Size = :myval</code> </p> </li> </ul> <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as follows:</p> <ul> <li> <p> <code>#S = :myval</code> </p> </li> </ul> <p>For a list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>For more information on <code>ExpressionAttributeNames</code> and <code>ExpressionAttributeValues</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ScanIndexForward [BooleanObject] <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal is performed in ascending order; if <code>false</code>, the traversal is performed in descending order. </p> <p>Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary data as unsigned.</p> <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.</p>
-- * Select [Select] <p>The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.</p> <ul> <li> <p> <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.</p> </li> <li> <p> <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying <code>ALL_ATTRIBUTES</code>.</p> </li> <li> <p> <code>COUNT</code> - Returns the number of matching items, rather than the matching items themselves.</p> </li> <li> <p> <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in <code>AttributesToGet</code>. This return value is equivalent to specifying <code>AttributesToGet</code> without specifying any value for <code>Select</code>.</p> <p>If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.</p> <p>If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.</p> </li> </ul> <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both <code>Select</code> and <code>AttributesToGet</code> together in a single request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This usage is equivalent to specifying <code>AttributesToGet</code> without any value for <code>Select</code>.)</p> <note> <p>If you use the <code>ProjectionExpression</code> parameter, then the value for <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other value for <code>Select</code> will return an error.</p> </note>
-- Required key: TableName
-- @return QueryInput structure as a key-value pair table
function M.QueryInput(args)
	assert(args, "You must provide an argument table when creating QueryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterExpression"] = args["FilterExpression"],
		["ConsistentRead"] = args["ConsistentRead"],
		["ConditionalOperator"] = args["ConditionalOperator"],
		["IndexName"] = args["IndexName"],
		["ProjectionExpression"] = args["ProjectionExpression"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
		["QueryFilter"] = args["QueryFilter"],
		["TableName"] = args["TableName"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["ExclusiveStartKey"] = args["ExclusiveStartKey"],
		["AttributesToGet"] = args["AttributesToGet"],
		["Limit"] = args["Limit"],
		["ExpressionAttributeValues"] = args["ExpressionAttributeValues"],
		["KeyConditions"] = args["KeyConditions"],
		["KeyConditionExpression"] = args["KeyConditionExpression"],
		["ScanIndexForward"] = args["ScanIndexForward"],
		["Select"] = args["Select"],
	}
	asserts.AssertQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BackupDetails = { ["BackupCreationDateTime"] = true, ["BackupExpiryDateTime"] = true, ["BackupName"] = true, ["BackupStatus"] = true, ["BackupType"] = true, ["BackupSizeBytes"] = true, ["BackupArn"] = true, nil }

function asserts.AssertBackupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BackupDetails to be of type 'table'")
	assert(struct["BackupArn"], "Expected key BackupArn to exist in table")
	assert(struct["BackupName"], "Expected key BackupName to exist in table")
	assert(struct["BackupStatus"], "Expected key BackupStatus to exist in table")
	assert(struct["BackupType"], "Expected key BackupType to exist in table")
	assert(struct["BackupCreationDateTime"], "Expected key BackupCreationDateTime to exist in table")
	if struct["BackupCreationDateTime"] then asserts.AssertBackupCreationDateTime(struct["BackupCreationDateTime"]) end
	if struct["BackupExpiryDateTime"] then asserts.AssertDate(struct["BackupExpiryDateTime"]) end
	if struct["BackupName"] then asserts.AssertBackupName(struct["BackupName"]) end
	if struct["BackupStatus"] then asserts.AssertBackupStatus(struct["BackupStatus"]) end
	if struct["BackupType"] then asserts.AssertBackupType(struct["BackupType"]) end
	if struct["BackupSizeBytes"] then asserts.AssertBackupSizeBytes(struct["BackupSizeBytes"]) end
	if struct["BackupArn"] then asserts.AssertBackupArn(struct["BackupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.BackupDetails[k], "BackupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BackupDetails
-- <p>Contains the details of the backup created for the table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupCreationDateTime [BackupCreationDateTime] <p>Time at which the backup was created. This is the request time of the backup. </p>
-- * BackupExpiryDateTime [Date] <p>Time at which the automatic on-demand backup created by DynamoDB will expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after its creation.</p>
-- * BackupName [BackupName] <p>Name of the requested backup.</p>
-- * BackupStatus [BackupStatus] <p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED. </p>
-- * BackupType [BackupType] <p>BackupType:</p> <ul> <li> <p> <code>USER</code> - On-demand backup created by you.</p> </li> <li> <p> <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p> </li> </ul>
-- * BackupSizeBytes [BackupSizeBytes] <p>Size of the backup in bytes.</p>
-- * BackupArn [BackupArn] <p>ARN associated with the backup.</p>
-- Required key: BackupArn
-- Required key: BackupName
-- Required key: BackupStatus
-- Required key: BackupType
-- Required key: BackupCreationDateTime
-- @return BackupDetails structure as a key-value pair table
function M.BackupDetails(args)
	assert(args, "You must provide an argument table when creating BackupDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupCreationDateTime"] = args["BackupCreationDateTime"],
		["BackupExpiryDateTime"] = args["BackupExpiryDateTime"],
		["BackupName"] = args["BackupName"],
		["BackupStatus"] = args["BackupStatus"],
		["BackupType"] = args["BackupType"],
		["BackupSizeBytes"] = args["BackupSizeBytes"],
		["BackupArn"] = args["BackupArn"],
	}
	asserts.AssertBackupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeValueUpdate = { ["Action"] = true, ["Value"] = true, nil }

function asserts.AssertAttributeValueUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValueUpdate to be of type 'table'")
	if struct["Action"] then asserts.AssertAttributeAction(struct["Action"]) end
	if struct["Value"] then asserts.AssertAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeValueUpdate[k], "AttributeValueUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValueUpdate
-- <p>For the <code>UpdateItem</code> operation, represents the attributes to be modified, the action to perform on each, and the new value for each.</p> <note> <p>You cannot use <code>UpdateItem</code> to update any primary key attributes. Instead, you will need to delete the item, and then use <code>PutItem</code> to create a new item with new attributes.</p> </note> <p>Attribute values cannot be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests with empty values will be rejected with a <code>ValidationException</code> exception.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [AttributeAction] <p>Specifies how to perform the update. Valid values are <code>PUT</code> (default), <code>DELETE</code>, and <code>ADD</code>. The behavior depends on whether the specified primary key already exists in the table.</p> <p> <b>If an item with the specified <i>Key</i> is found in the table:</b> </p> <ul> <li> <p> <code>PUT</code> - Adds the specified attribute to the item. If the attribute already exists, it is replaced by the new value. </p> </li> <li> <p> <code>DELETE</code> - If no value is specified, the attribute and its value are removed from the item. The data type of the specified value must match the existing value's data type.</p> <p>If a <i>set</i> of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set <code>[a,b,c]</code> and the <code>DELETE</code> action specified <code>[a,c]</code>, then the final attribute value would be <code>[b]</code>. Specifying an empty set is an error.</p> </li> <li> <p> <code>ADD</code> - If the attribute does not already exist, then the attribute and its values are added to the item. If the attribute does exist, then the behavior of <code>ADD</code> depends on the data type of the attribute:</p> <ul> <li> <p>If the existing attribute is a number, and if <code>Value</code> is also a number, then the <code>Value</code> is mathematically added to the existing attribute. If <code>Value</code> is a negative number, then it is subtracted from the existing attribute.</p> <note> <p> If you use <code>ADD</code> to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses 0 as the initial value.</p> <p>In addition, if you use <code>ADD</code> to update an existing item, and intend to increment or decrement an attribute value which does not yet exist, DynamoDB uses <code>0</code> as the initial value. For example, suppose that the item you want to update does not yet have an attribute named <i>itemcount</i>, but you decide to <code>ADD</code> the number <code>3</code> to this attribute anyway, even though it currently does not exist. DynamoDB will create the <i>itemcount</i> attribute, set its initial value to <code>0</code>, and finally add <code>3</code> to it. The result will be a new <i>itemcount</i> attribute in the item, with a value of <code>3</code>.</p> </note> </li> <li> <p>If the existing data type is a set, and if the <code>Value</code> is also a set, then the <code>Value</code> is added to the existing set. (This is a <i>set</i> operation, not mathematical addition.) For example, if the attribute value was the set <code>[1,2]</code>, and the <code>ADD</code> action specified <code>[3]</code>, then the final attribute value would be <code>[1,2,3]</code>. An error occurs if an Add action is specified for a set attribute and the attribute type specified does not match the existing set type. </p> <p>Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the <code>Value</code> must also be a set of strings. The same holds true for number sets and binary sets.</p> </li> </ul> <p>This action is only valid for an existing attribute whose data type is number or is a set. Do not use <code>ADD</code> for any other data types.</p> </li> </ul> <p> <b>If no item with the specified <i>Key</i> is found:</b> </p> <ul> <li> <p> <code>PUT</code> - DynamoDB creates a new item with the specified primary key, and then adds the attribute. </p> </li> <li> <p> <code>DELETE</code> - Nothing happens; there is no attribute to delete.</p> </li> <li> <p> <code>ADD</code> - DynamoDB creates an item with the supplied primary key and number (or set of numbers) for the attribute value. The only data types allowed are number and number set; no other data types can be specified.</p> </li> </ul>
-- * Value [AttributeValue] <p>Represents the data for an attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
-- @return AttributeValueUpdate structure as a key-value pair table
function M.AttributeValueUpdate(args)
	assert(args, "You must provide an argument table when creating AttributeValueUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Value"] = args["Value"],
	}
	asserts.AssertAttributeValueUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeToLiveSpecification = { ["AttributeName"] = true, ["Enabled"] = true, nil }

function asserts.AssertTimeToLiveSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeToLiveSpecification to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then asserts.AssertTimeToLiveAttributeName(struct["AttributeName"]) end
	if struct["Enabled"] then asserts.AssertTimeToLiveEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeToLiveSpecification[k], "TimeToLiveSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeToLiveSpecification
-- <p>Represents the settings used to enable or disable Time to Live for the specified table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [TimeToLiveAttributeName] <p>The name of the Time to Live attribute used to store the expiration time for items in the table.</p>
-- * Enabled [TimeToLiveEnabled] <p>Indicates whether Time To Live is to be enabled (true) or disabled (false) on the table.</p>
-- Required key: Enabled
-- Required key: AttributeName
-- @return TimeToLiveSpecification structure as a key-value pair table
function M.TimeToLiveSpecification(args)
	assert(args, "You must provide an argument table when creating TimeToLiveSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertTimeToLiveSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteItemOutput = { ["Attributes"] = true, ["ItemCollectionMetrics"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertDeleteItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteItemOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeMap(struct["Attributes"]) end
	if struct["ItemCollectionMetrics"] then asserts.AssertItemCollectionMetrics(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteItemOutput[k], "DeleteItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteItemOutput
-- <p>Represents the output of a <code>DeleteItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeMap] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the item as it appeared before the <code>DeleteItem</code> operation. This map appears in the response only if <code>ReturnValues</code> was specified as <code>ALL_OLD</code> in the request.</p>
-- * ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>DeleteItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- * ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>DeleteItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return DeleteItemOutput structure as a key-value pair table
function M.DeleteItemOutput(args)
	assert(args, "You must provide an argument table when creating DeleteItemOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["ItemCollectionMetrics"] = args["ItemCollectionMetrics"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertDeleteItemOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Condition = { ["ComparisonOperator"] = true, ["AttributeValueList"] = true, nil }

function asserts.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["AttributeValueList"] then asserts.AssertAttributeValueList(struct["AttributeValueList"]) end
	for k,_ in pairs(struct) do
		assert(keys.Condition[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
-- <p>Represents the selection criteria for a <code>Query</code> or <code>Scan</code> operation:</p> <ul> <li> <p>For a <code>Query</code> operation, <code>Condition</code> is used for specifying the <code>KeyConditions</code> to use when querying a table or an index. For <code>KeyConditions</code>, only the following comparison operators are supported:</p> <p> <code>EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN</code> </p> <p> <code>Condition</code> is also used in a <code>QueryFilter</code>, which evaluates the query results and returns only the desired values.</p> </li> <li> <p>For a <code>Scan</code> operation, <code>Condition</code> is used in a <code>ScanFilter</code>, which evaluates the scan results and returns only the desired values.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComparisonOperator [ComparisonOperator] <p>A comparator for evaluating attributes. For example, equals, greater than, less than, etc.</p> <p>The following comparison operators are available:</p> <p> <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN</code> </p> <p>The following are descriptions of each comparison operator.</p> <ul> <li> <p> <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NE</code> : Not equal. <code>NE</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LE</code> : Less than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LT</code> : Less than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GE</code> : Greater than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GT</code> : Greater than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the existence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This result is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NOT_NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NULL</code>, the result is a Boolean <code>false</code>. This is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it finds an exact match with any member of the set.</p> <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it <i>does not</i> find an exact match with any member of the set.</p> <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>BEGINS_WITH</code> : Checks for a prefix. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).</p> <p/> </li> <li> <p> <code>IN</code> : Checks for matching elements in a list.</p> <p> <code>AttributeValueList</code> can contain one or more <code>AttributeValue</code> elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.</p> </li> <li> <p> <code>BETWEEN</code> : Greater than or equal to the first value, and less than or equal to the second value. </p> <p> <code>AttributeValueList</code> must contain two <code>AttributeValue</code> elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code> </p> </li> </ul> <p>For usage examples of <code>AttributeValueList</code> and <code>ComparisonOperator</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy Conditional Parameters</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * AttributeValueList [AttributeValueList] <p>One or more values to evaluate against the supplied attribute. The number of values in the list depends on the <code>ComparisonOperator</code> being used.</p> <p>For type Number, value comparisons are numeric.</p> <p>String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, <code>a</code> is greater than <code>A</code>, and <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p> <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.</p>
-- Required key: ComparisonOperator
-- @return Condition structure as a key-value pair table
function M.Condition(args)
	assert(args, "You must provide an argument table when creating Condition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComparisonOperator"] = args["ComparisonOperator"],
		["AttributeValueList"] = args["AttributeValueList"],
	}
	asserts.AssertCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScanInput = { ["FilterExpression"] = true, ["ConsistentRead"] = true, ["ConditionalOperator"] = true, ["IndexName"] = true, ["ProjectionExpression"] = true, ["ExpressionAttributeNames"] = true, ["TableName"] = true, ["ReturnConsumedCapacity"] = true, ["ExclusiveStartKey"] = true, ["AttributesToGet"] = true, ["Limit"] = true, ["TotalSegments"] = true, ["Segment"] = true, ["ScanFilter"] = true, ["Select"] = true, ["ExpressionAttributeValues"] = true, nil }

function asserts.AssertScanInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["FilterExpression"] then asserts.AssertConditionExpression(struct["FilterExpression"]) end
	if struct["ConsistentRead"] then asserts.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["ConditionalOperator"] then asserts.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["ProjectionExpression"] then asserts.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ExclusiveStartKey"] then asserts.AssertKey(struct["ExclusiveStartKey"]) end
	if struct["AttributesToGet"] then asserts.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["Limit"] then asserts.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["TotalSegments"] then asserts.AssertScanTotalSegments(struct["TotalSegments"]) end
	if struct["Segment"] then asserts.AssertScanSegment(struct["Segment"]) end
	if struct["ScanFilter"] then asserts.AssertFilterConditionMap(struct["ScanFilter"]) end
	if struct["Select"] then asserts.AssertSelect(struct["Select"]) end
	if struct["ExpressionAttributeValues"] then asserts.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScanInput[k], "ScanInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanInput
-- <p>Represents the input of a <code>Scan</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterExpression [ConditionExpression] <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code> operation, but before the data is returned to you. Items that do not satisfy the <code>FilterExpression</code> criteria are not returned.</p> <note> <p>A <code>FilterExpression</code> is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter Expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ConsistentRead [ConsistentRead] <p>A Boolean value that determines the read consistency model during the scan:</p> <ul> <li> <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned from <code>Scan</code> might not contain the results from other recently completed write operations (PutItem, UpdateItem or DeleteItem).</p> </li> <li> <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write operations that completed before the <code>Scan</code> began are guaranteed to be contained in the <code>Scan</code> response.</p> </li> </ul> <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p> <p>The <code>ConsistentRead</code> parameter is not supported on global secondary indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to true, you will receive a <code>ValidationException</code>.</p>
-- * ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * IndexName [IndexName] <p>The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the <code>IndexName</code> parameter, you must also provide <code>TableName</code>.</p>
-- * ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table containing the requested items; or, if you provide <code>IndexName</code>, the name of the table to which that index belongs.</p>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * ExclusiveStartKey [Key] <p>The primary key of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p> <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No set data types are allowed.</p> <p>In a parallel scan, a <code>Scan</code> request that includes <code>ExclusiveStartKey</code> must specify the same segment whose previous <code>Scan</code> returned the corresponding value of <code>LastEvaluatedKey</code>.</p>
-- * AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Limit [PositiveIntegerObject] <p>The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TotalSegments [ScanTotalSegments] <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the total number of segments into which the <code>Scan</code> operation will be divided. The value of <code>TotalSegments</code> corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a <code>TotalSegments</code> value of 4.</p> <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the <code>Scan</code> operation will be sequential rather than parallel.</p> <p>If you specify <code>TotalSegments</code>, you must also specify <code>Segment</code>.</p>
-- * Segment [ScanSegment] <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an individual segment to be scanned by an application worker.</p> <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so on.</p> <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code> request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a subsequent <code>Scan</code> operation.</p> <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than the value provided for <code>TotalSegments</code>.</p> <p>If you provide <code>Segment</code>, you must also provide <code>TotalSegments</code>.</p>
-- * ScanFilter [FilterConditionMap] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Select [Select] <p>The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.</p> <ul> <li> <p> <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.</p> </li> <li> <p> <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying <code>ALL_ATTRIBUTES</code>.</p> </li> <li> <p> <code>COUNT</code> - Returns the number of matching items, rather than the matching items themselves.</p> </li> <li> <p> <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in <code>AttributesToGet</code>. This return value is equivalent to specifying <code>AttributesToGet</code> without specifying any value for <code>Select</code>.</p> <p>If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.</p> <p>If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.</p> </li> </ul> <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both <code>Select</code> and <code>AttributesToGet</code> together in a single request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This usage is equivalent to specifying <code>AttributesToGet</code> without any value for <code>Select</code>.)</p> <note> <p>If you use the <code>ProjectionExpression</code> parameter, then the value for <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other value for <code>Select</code> will return an error.</p> </note>
-- * ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: TableName
-- @return ScanInput structure as a key-value pair table
function M.ScanInput(args)
	assert(args, "You must provide an argument table when creating ScanInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterExpression"] = args["FilterExpression"],
		["ConsistentRead"] = args["ConsistentRead"],
		["ConditionalOperator"] = args["ConditionalOperator"],
		["IndexName"] = args["IndexName"],
		["ProjectionExpression"] = args["ProjectionExpression"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
		["TableName"] = args["TableName"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["ExclusiveStartKey"] = args["ExclusiveStartKey"],
		["AttributesToGet"] = args["AttributesToGet"],
		["Limit"] = args["Limit"],
		["TotalSegments"] = args["TotalSegments"],
		["Segment"] = args["Segment"],
		["ScanFilter"] = args["ScanFilter"],
		["Select"] = args["Select"],
		["ExpressionAttributeValues"] = args["ExpressionAttributeValues"],
	}
	asserts.AssertScanInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGlobalTableSettingsOutput = { ["GlobalTableName"] = true, ["ReplicaSettings"] = true, nil }

function asserts.AssertUpdateGlobalTableSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGlobalTableSettingsOutput to be of type 'table'")
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	if struct["ReplicaSettings"] then asserts.AssertReplicaSettingsDescriptionList(struct["ReplicaSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGlobalTableSettingsOutput[k], "UpdateGlobalTableSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGlobalTableSettingsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableName [TableName] <p>The name of the global table.</p>
-- * ReplicaSettings [ReplicaSettingsDescriptionList] <p>The region specific settings for the global table.</p>
-- @return UpdateGlobalTableSettingsOutput structure as a key-value pair table
function M.UpdateGlobalTableSettingsOutput(args)
	assert(args, "You must provide an argument table when creating UpdateGlobalTableSettingsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableName"] = args["GlobalTableName"],
		["ReplicaSettings"] = args["ReplicaSettings"],
	}
	asserts.AssertUpdateGlobalTableSettingsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreTableToPointInTimeOutput = { ["TableDescription"] = true, nil }

function asserts.AssertRestoreTableToPointInTimeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableToPointInTimeOutput to be of type 'table'")
	if struct["TableDescription"] then asserts.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreTableToPointInTimeOutput[k], "RestoreTableToPointInTimeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableToPointInTimeOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableDescription [TableDescription] <p>Represents the properties of a table.</p>
-- @return RestoreTableToPointInTimeOutput structure as a key-value pair table
function M.RestoreTableToPointInTimeOutput(args)
	assert(args, "You must provide an argument table when creating RestoreTableToPointInTimeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableDescription"] = args["TableDescription"],
	}
	asserts.AssertRestoreTableToPointInTimeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicaUpdate = { ["Create"] = true, ["Delete"] = true, nil }

function asserts.AssertReplicaUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicaUpdate to be of type 'table'")
	if struct["Create"] then asserts.AssertCreateReplicaAction(struct["Create"]) end
	if struct["Delete"] then asserts.AssertDeleteReplicaAction(struct["Delete"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicaUpdate[k], "ReplicaUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicaUpdate
-- <p>Represents one of the following:</p> <ul> <li> <p>A new replica to be added to an existing global table.</p> </li> <li> <p>New parameters for an existing replica.</p> </li> <li> <p>An existing replica to be removed from an existing global table.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Create [CreateReplicaAction] <p>The parameters required for creating a replica on an existing global table.</p>
-- * Delete [DeleteReplicaAction] <p>The name of the existing replica to be removed.</p>
-- @return ReplicaUpdate structure as a key-value pair table
function M.ReplicaUpdate(args)
	assert(args, "You must provide an argument table when creating ReplicaUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Create"] = args["Create"],
		["Delete"] = args["Delete"],
	}
	asserts.AssertReplicaUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicaGlobalSecondaryIndexSettingsDescription = { ["ProvisionedReadCapacityUnits"] = true, ["IndexName"] = true, ["IndexStatus"] = true, ["ProvisionedReadCapacityAutoScalingSettings"] = true, ["ProvisionedWriteCapacityAutoScalingSettings"] = true, ["ProvisionedWriteCapacityUnits"] = true, nil }

function asserts.AssertReplicaGlobalSecondaryIndexSettingsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicaGlobalSecondaryIndexSettingsDescription to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	if struct["ProvisionedReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ProvisionedReadCapacityUnits"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["IndexStatus"] then asserts.AssertIndexStatus(struct["IndexStatus"]) end
	if struct["ProvisionedReadCapacityAutoScalingSettings"] then asserts.AssertAutoScalingSettingsDescription(struct["ProvisionedReadCapacityAutoScalingSettings"]) end
	if struct["ProvisionedWriteCapacityAutoScalingSettings"] then asserts.AssertAutoScalingSettingsDescription(struct["ProvisionedWriteCapacityAutoScalingSettings"]) end
	if struct["ProvisionedWriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ProvisionedWriteCapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicaGlobalSecondaryIndexSettingsDescription[k], "ReplicaGlobalSecondaryIndexSettingsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicaGlobalSecondaryIndexSettingsDescription
-- <p>Represents the properties of a global secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>.</p>
-- * IndexName [IndexName] <p>The name of the global secondary index. The name must be unique among all other indexes on this table.</p>
-- * IndexStatus [IndexStatus] <p> The current status of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The global secondary index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The global secondary index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The global secondary index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The global secondary index is ready for use.</p> </li> </ul>
-- * ProvisionedReadCapacityAutoScalingSettings [AutoScalingSettingsDescription] <p>Autoscaling settings for a global secondary index replica's read capacity units.</p>
-- * ProvisionedWriteCapacityAutoScalingSettings [AutoScalingSettingsDescription] <p>AutoScaling settings for a global secondary index replica's write capacity units.</p>
-- * ProvisionedWriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>.</p>
-- Required key: IndexName
-- @return ReplicaGlobalSecondaryIndexSettingsDescription structure as a key-value pair table
function M.ReplicaGlobalSecondaryIndexSettingsDescription(args)
	assert(args, "You must provide an argument table when creating ReplicaGlobalSecondaryIndexSettingsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisionedReadCapacityUnits"] = args["ProvisionedReadCapacityUnits"],
		["IndexName"] = args["IndexName"],
		["IndexStatus"] = args["IndexStatus"],
		["ProvisionedReadCapacityAutoScalingSettings"] = args["ProvisionedReadCapacityAutoScalingSettings"],
		["ProvisionedWriteCapacityAutoScalingSettings"] = args["ProvisionedWriteCapacityAutoScalingSettings"],
		["ProvisionedWriteCapacityUnits"] = args["ProvisionedWriteCapacityUnits"],
	}
	asserts.AssertReplicaGlobalSecondaryIndexSettingsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceTableDetails = { ["TableArn"] = true, ["ProvisionedThroughput"] = true, ["TableSizeBytes"] = true, ["TableName"] = true, ["TableId"] = true, ["KeySchema"] = true, ["ItemCount"] = true, ["TableCreationDateTime"] = true, nil }

function asserts.AssertSourceTableDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceTableDetails to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["TableId"], "Expected key TableId to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["TableCreationDateTime"], "Expected key TableCreationDateTime to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["TableArn"] then asserts.AssertTableArn(struct["TableArn"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["TableSizeBytes"] then asserts.AssertLong(struct["TableSizeBytes"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["TableId"] then asserts.AssertTableId(struct["TableId"]) end
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["ItemCount"] then asserts.AssertItemCount(struct["ItemCount"]) end
	if struct["TableCreationDateTime"] then asserts.AssertTableCreationDateTime(struct["TableCreationDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceTableDetails[k], "SourceTableDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceTableDetails
-- <p>Contains the details of the table when the backup was created. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableArn [TableArn] <p>ARN of the table for which backup was created. </p>
-- * ProvisionedThroughput [ProvisionedThroughput] <p>Read IOPs and Write IOPS on the table when the backup was created.</p>
-- * TableSizeBytes [Long] <p>Size of the table in bytes. Please note this is an approximate value.</p>
-- * TableName [TableName] <p>The name of the table for which the backup was created. </p>
-- * TableId [TableId] <p>Unique identifier for the table for which the backup was created. </p>
-- * KeySchema [KeySchema] <p>Schema of the table. </p>
-- * ItemCount [ItemCount] <p>Number of items in the table. Please note this is an approximate value. </p>
-- * TableCreationDateTime [TableCreationDateTime] <p>Time when the source table was created. </p>
-- Required key: TableName
-- Required key: TableId
-- Required key: KeySchema
-- Required key: TableCreationDateTime
-- Required key: ProvisionedThroughput
-- @return SourceTableDetails structure as a key-value pair table
function M.SourceTableDetails(args)
	assert(args, "You must provide an argument table when creating SourceTableDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableArn"] = args["TableArn"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
		["TableSizeBytes"] = args["TableSizeBytes"],
		["TableName"] = args["TableName"],
		["TableId"] = args["TableId"],
		["KeySchema"] = args["KeySchema"],
		["ItemCount"] = args["ItemCount"],
		["TableCreationDateTime"] = args["TableCreationDateTime"],
	}
	asserts.AssertSourceTableDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetItemOutput = { ["UnprocessedKeys"] = true, ["Responses"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertBatchGetItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetItemOutput to be of type 'table'")
	if struct["UnprocessedKeys"] then asserts.AssertBatchGetRequestMap(struct["UnprocessedKeys"]) end
	if struct["Responses"] then asserts.AssertBatchGetResponseMap(struct["Responses"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacityMultiple(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetItemOutput[k], "BatchGetItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetItemOutput
-- <p>Represents the output of a <code>BatchGetItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedKeys [BatchGetRequestMap] <p>A map of tables and their respective keys that were not processed with the current response. The <code>UnprocessedKeys</code> value is in the same form as <code>RequestItems</code>, so the value can be provided directly to a subsequent <code>BatchGetItem</code> operation. For more information, see <code>RequestItems</code> in the Request Parameters section.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>Keys</code> - An array of primary key attribute values that define specific items in the table.</p> </li> <li> <p> <code>ProjectionExpression</code> - One or more attributes to be retrieved from the table or index. By default, all attributes are returned. If a requested attribute is not found, it does not appear in the result.</p> </li> <li> <p> <code>ConsistentRead</code> - The consistency of a read operation. If set to <code>true</code>, then a strongly consistent read is used; otherwise, an eventually consistent read is used.</p> </li> </ul> <p>If there are no unprocessed keys remaining, the response contains an empty <code>UnprocessedKeys</code> map.</p>
-- * Responses [BatchGetResponseMap] <p>A map of table name to a list of items. Each object in <code>Responses</code> consists of a table name, along with a map of attribute data consisting of the data type and attribute value.</p>
-- * ConsumedCapacity [ConsumedCapacityMultiple] <p>The read capacity units consumed by the entire <code>BatchGetItem</code> operation.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>TableName</code> - The table that consumed the provisioned throughput.</p> </li> <li> <p> <code>CapacityUnits</code> - The total number of capacity units consumed.</p> </li> </ul>
-- @return BatchGetItemOutput structure as a key-value pair table
function M.BatchGetItemOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetItemOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedKeys"] = args["UnprocessedKeys"],
		["Responses"] = args["Responses"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertBatchGetItemOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PointInTimeRecoverySpecification = { ["PointInTimeRecoveryEnabled"] = true, nil }

function asserts.AssertPointInTimeRecoverySpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PointInTimeRecoverySpecification to be of type 'table'")
	assert(struct["PointInTimeRecoveryEnabled"], "Expected key PointInTimeRecoveryEnabled to exist in table")
	if struct["PointInTimeRecoveryEnabled"] then asserts.AssertBooleanObject(struct["PointInTimeRecoveryEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.PointInTimeRecoverySpecification[k], "PointInTimeRecoverySpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PointInTimeRecoverySpecification
-- <p>Represents the settings used to enable point in time recovery.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PointInTimeRecoveryEnabled [BooleanObject] <p>Indicates whether point in time recovery is enabled (true) or disabled (false) on the table.</p>
-- Required key: PointInTimeRecoveryEnabled
-- @return PointInTimeRecoverySpecification structure as a key-value pair table
function M.PointInTimeRecoverySpecification(args)
	assert(args, "You must provide an argument table when creating PointInTimeRecoverySpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PointInTimeRecoveryEnabled"] = args["PointInTimeRecoveryEnabled"],
	}
	asserts.AssertPointInTimeRecoverySpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Projection = { ["ProjectionType"] = true, ["NonKeyAttributes"] = true, nil }

function asserts.AssertProjection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Projection to be of type 'table'")
	if struct["ProjectionType"] then asserts.AssertProjectionType(struct["ProjectionType"]) end
	if struct["NonKeyAttributes"] then asserts.AssertNonKeyAttributeNameList(struct["NonKeyAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Projection[k], "Projection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Projection
-- <p>Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProjectionType [ProjectionType] <p>The set of attributes that are projected into the index:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul>
-- * NonKeyAttributes [NonKeyAttributeNameList] <p>Represents the non-key attribute names which will be projected into the index.</p> <p>For local secondary indexes, the total count of <code>NonKeyAttributes</code> summed across all of the local secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p>
-- @return Projection structure as a key-value pair table
function M.Projection(args)
	assert(args, "You must provide an argument table when creating Projection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProjectionType"] = args["ProjectionType"],
		["NonKeyAttributes"] = args["NonKeyAttributes"],
	}
	asserts.AssertProjection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTableOutput = { ["Table"] = true, nil }

function asserts.AssertDescribeTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableOutput to be of type 'table'")
	if struct["Table"] then asserts.AssertTableDescription(struct["Table"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTableOutput[k], "DescribeTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableOutput
-- <p>Represents the output of a <code>DescribeTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Table [TableDescription] <p>The properties of the table.</p>
-- @return DescribeTableOutput structure as a key-value pair table
function M.DescribeTableOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Table"] = args["Table"],
	}
	asserts.AssertDescribeTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicaSettingsUpdate = { ["ReplicaProvisionedReadCapacityUnits"] = true, ["ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"] = true, ["ReplicaGlobalSecondaryIndexSettingsUpdate"] = true, ["RegionName"] = true, nil }

function asserts.AssertReplicaSettingsUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicaSettingsUpdate to be of type 'table'")
	assert(struct["RegionName"], "Expected key RegionName to exist in table")
	if struct["ReplicaProvisionedReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ReplicaProvisionedReadCapacityUnits"]) end
	if struct["ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"] then asserts.AssertAutoScalingSettingsUpdate(struct["ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"]) end
	if struct["ReplicaGlobalSecondaryIndexSettingsUpdate"] then asserts.AssertReplicaGlobalSecondaryIndexSettingsUpdateList(struct["ReplicaGlobalSecondaryIndexSettingsUpdate"]) end
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicaSettingsUpdate[k], "ReplicaSettingsUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicaSettingsUpdate
-- <p>Represents the settings for a global table in a region that will be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicaProvisionedReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
-- * ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate [AutoScalingSettingsUpdate] <p>Autoscaling settings for managing a global table replica's read capacity units.</p>
-- * ReplicaGlobalSecondaryIndexSettingsUpdate [ReplicaGlobalSecondaryIndexSettingsUpdateList] <p>Represents the settings of a global secondary index for a global table that will be modified.</p>
-- * RegionName [RegionName] <p>The region of the replica to be added.</p>
-- Required key: RegionName
-- @return ReplicaSettingsUpdate structure as a key-value pair table
function M.ReplicaSettingsUpdate(args)
	assert(args, "You must provide an argument table when creating ReplicaSettingsUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicaProvisionedReadCapacityUnits"] = args["ReplicaProvisionedReadCapacityUnits"],
		["ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"] = args["ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"],
		["ReplicaGlobalSecondaryIndexSettingsUpdate"] = args["ReplicaGlobalSecondaryIndexSettingsUpdate"],
		["RegionName"] = args["RegionName"],
	}
	asserts.AssertReplicaSettingsUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTimeToLiveInput = { ["TableName"] = true, ["TimeToLiveSpecification"] = true, nil }

function asserts.AssertUpdateTimeToLiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTimeToLiveInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["TimeToLiveSpecification"], "Expected key TimeToLiveSpecification to exist in table")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["TimeToLiveSpecification"] then asserts.AssertTimeToLiveSpecification(struct["TimeToLiveSpecification"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTimeToLiveInput[k], "UpdateTimeToLiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTimeToLiveInput
-- <p>Represents the input of an <code>UpdateTimeToLive</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [TableName] <p>The name of the table to be configured.</p>
-- * TimeToLiveSpecification [TimeToLiveSpecification] <p>Represents the settings used to enable or disable Time to Live for the specified table.</p>
-- Required key: TableName
-- Required key: TimeToLiveSpecification
-- @return UpdateTimeToLiveInput structure as a key-value pair table
function M.UpdateTimeToLiveInput(args)
	assert(args, "You must provide an argument table when creating UpdateTimeToLiveInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
		["TimeToLiveSpecification"] = args["TimeToLiveSpecification"],
	}
	asserts.AssertUpdateTimeToLiveInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalSecondaryIndexInfo = { ["KeySchema"] = true, ["IndexName"] = true, ["Projection"] = true, ["ProvisionedThroughput"] = true, nil }

function asserts.AssertGlobalSecondaryIndexInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndexInfo to be of type 'table'")
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalSecondaryIndexInfo[k], "GlobalSecondaryIndexInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndexInfo
-- <p>Represents the properties of a global secondary index for the table when the backup was created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * IndexName [IndexName] <p>The name of the global secondary index.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- * ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index. </p>
-- @return GlobalSecondaryIndexInfo structure as a key-value pair table
function M.GlobalSecondaryIndexInfo(args)
	assert(args, "You must provide an argument table when creating GlobalSecondaryIndexInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeySchema"] = args["KeySchema"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
	}
	asserts.AssertGlobalSecondaryIndexInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PointInTimeRecoveryDescription = { ["PointInTimeRecoveryStatus"] = true, ["EarliestRestorableDateTime"] = true, ["LatestRestorableDateTime"] = true, nil }

function asserts.AssertPointInTimeRecoveryDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PointInTimeRecoveryDescription to be of type 'table'")
	if struct["PointInTimeRecoveryStatus"] then asserts.AssertPointInTimeRecoveryStatus(struct["PointInTimeRecoveryStatus"]) end
	if struct["EarliestRestorableDateTime"] then asserts.AssertDate(struct["EarliestRestorableDateTime"]) end
	if struct["LatestRestorableDateTime"] then asserts.AssertDate(struct["LatestRestorableDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.PointInTimeRecoveryDescription[k], "PointInTimeRecoveryDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PointInTimeRecoveryDescription
-- <p>The description of the point in time settings applied to the table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PointInTimeRecoveryStatus [PointInTimeRecoveryStatus] <p>The current state of point in time recovery:</p> <ul> <li> <p> <code>ENABLING</code> - Point in time recovery is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Point in time recovery is enabled.</p> </li> <li> <p> <code>DISABLED</code> - Point in time recovery is disabled.</p> </li> </ul>
-- * EarliestRestorableDateTime [Date] <p>Specifies the earliest point in time you can restore your table to. It You can restore your table to any point in time during the last 35 days. </p>
-- * LatestRestorableDateTime [Date] <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. </p>
-- @return PointInTimeRecoveryDescription structure as a key-value pair table
function M.PointInTimeRecoveryDescription(args)
	assert(args, "You must provide an argument table when creating PointInTimeRecoveryDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PointInTimeRecoveryStatus"] = args["PointInTimeRecoveryStatus"],
		["EarliestRestorableDateTime"] = args["EarliestRestorableDateTime"],
		["LatestRestorableDateTime"] = args["LatestRestorableDateTime"],
	}
	asserts.AssertPointInTimeRecoveryDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGlobalTableOutput = { ["GlobalTableDescription"] = true, nil }

function asserts.AssertUpdateGlobalTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGlobalTableOutput to be of type 'table'")
	if struct["GlobalTableDescription"] then asserts.AssertGlobalTableDescription(struct["GlobalTableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGlobalTableOutput[k], "UpdateGlobalTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGlobalTableOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableDescription [GlobalTableDescription] <p>Contains the details of the global table.</p>
-- @return UpdateGlobalTableOutput structure as a key-value pair table
function M.UpdateGlobalTableOutput(args)
	assert(args, "You must provide an argument table when creating UpdateGlobalTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableDescription"] = args["GlobalTableDescription"],
	}
	asserts.AssertUpdateGlobalTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTableInput = { ["TableName"] = true, nil }

function asserts.AssertDeleteTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTableInput[k], "DeleteTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableInput
-- <p>Represents the input of a <code>DeleteTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [TableName] <p>The name of the table to delete.</p>
-- Required key: TableName
-- @return DeleteTableInput structure as a key-value pair table
function M.DeleteTableInput(args)
	assert(args, "You must provide an argument table when creating DeleteTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
	}
	asserts.AssertDeleteTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimeToLiveDescription = { ["AttributeName"] = true, ["TimeToLiveStatus"] = true, nil }

function asserts.AssertTimeToLiveDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeToLiveDescription to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertTimeToLiveAttributeName(struct["AttributeName"]) end
	if struct["TimeToLiveStatus"] then asserts.AssertTimeToLiveStatus(struct["TimeToLiveStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeToLiveDescription[k], "TimeToLiveDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeToLiveDescription
-- <p>The description of the Time to Live (TTL) status on the specified table. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [TimeToLiveAttributeName] <p> The name of the Time to Live attribute for items in the table.</p>
-- * TimeToLiveStatus [TimeToLiveStatus] <p> The Time to Live status for the table.</p>
-- @return TimeToLiveDescription structure as a key-value pair table
function M.TimeToLiveDescription(args)
	assert(args, "You must provide an argument table when creating TimeToLiveDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["TimeToLiveStatus"] = args["TimeToLiveStatus"],
	}
	asserts.AssertTimeToLiveDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedThroughput = { ["WriteCapacityUnits"] = true, ["ReadCapacityUnits"] = true, nil }

function asserts.AssertProvisionedThroughput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughput to be of type 'table'")
	assert(struct["ReadCapacityUnits"], "Expected key ReadCapacityUnits to exist in table")
	assert(struct["WriteCapacityUnits"], "Expected key WriteCapacityUnits to exist in table")
	if struct["WriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["WriteCapacityUnits"]) end
	if struct["ReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["ReadCapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedThroughput[k], "ProvisionedThroughput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughput
-- <p>Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the <code>UpdateTable</code> operation.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: ReadCapacityUnits
-- Required key: WriteCapacityUnits
-- @return ProvisionedThroughput structure as a key-value pair table
function M.ProvisionedThroughput(args)
	assert(args, "You must provide an argument table when creating ProvisionedThroughput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WriteCapacityUnits"] = args["WriteCapacityUnits"],
		["ReadCapacityUnits"] = args["ReadCapacityUnits"],
	}
	asserts.AssertProvisionedThroughput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExpectedAttributeValue = { ["ComparisonOperator"] = true, ["Exists"] = true, ["Value"] = true, ["AttributeValueList"] = true, nil }

function asserts.AssertExpectedAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpectedAttributeValue to be of type 'table'")
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["Exists"] then asserts.AssertBooleanObject(struct["Exists"]) end
	if struct["Value"] then asserts.AssertAttributeValue(struct["Value"]) end
	if struct["AttributeValueList"] then asserts.AssertAttributeValueList(struct["AttributeValueList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpectedAttributeValue[k], "ExpectedAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpectedAttributeValue
-- <p>Represents a condition to be compared with an attribute value. This condition can be used with <code>DeleteItem</code>, <code>PutItem</code> or <code>UpdateItem</code> operations; if the comparison evaluates to true, the operation succeeds; if not, the operation fails. You can use <code>ExpectedAttributeValue</code> in one of two different ways:</p> <ul> <li> <p>Use <code>AttributeValueList</code> to specify one or more values to compare against an attribute. Use <code>ComparisonOperator</code> to specify how you want to perform the comparison. If the comparison evaluates to true, then the conditional operation succeeds.</p> </li> <li> <p>Use <code>Value</code> to specify a value that DynamoDB will compare against an attribute. If the values match, then <code>ExpectedAttributeValue</code> evaluates to true and the conditional operation succeeds. Optionally, you can also set <code>Exists</code> to false, indicating that you <i>do not</i> expect to find the attribute value in the table. In this case, the conditional operation succeeds only if the comparison evaluates to false.</p> </li> </ul> <p> <code>Value</code> and <code>Exists</code> are incompatible with <code>AttributeValueList</code> and <code>ComparisonOperator</code>. Note that if you use both sets of parameters at once, DynamoDB will return a <code>ValidationException</code> exception.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComparisonOperator [ComparisonOperator] <p>A comparator for evaluating attributes in the <code>AttributeValueList</code>. For example, equals, greater than, less than, etc.</p> <p>The following comparison operators are available:</p> <p> <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN</code> </p> <p>The following are descriptions of each comparison operator.</p> <ul> <li> <p> <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NE</code> : Not equal. <code>NE</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LE</code> : Less than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LT</code> : Less than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GE</code> : Greater than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GT</code> : Greater than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the existence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This result is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NOT_NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NULL</code>, the result is a Boolean <code>false</code>. This is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it finds an exact match with any member of the set.</p> <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it <i>does not</i> find an exact match with any member of the set.</p> <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>BEGINS_WITH</code> : Checks for a prefix. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).</p> <p/> </li> <li> <p> <code>IN</code> : Checks for matching elements in a list.</p> <p> <code>AttributeValueList</code> can contain one or more <code>AttributeValue</code> elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.</p> </li> <li> <p> <code>BETWEEN</code> : Greater than or equal to the first value, and less than or equal to the second value. </p> <p> <code>AttributeValueList</code> must contain two <code>AttributeValue</code> elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code> </p> </li> </ul>
-- * Exists [BooleanObject] <p>Causes DynamoDB to evaluate the value before attempting a conditional operation:</p> <ul> <li> <p>If <code>Exists</code> is <code>true</code>, DynamoDB will check to see if that attribute value already exists in the table. If it is found, then the operation succeeds. If it is not found, the operation fails with a <code>ConditionalCheckFailedException</code>.</p> </li> <li> <p>If <code>Exists</code> is <code>false</code>, DynamoDB assumes that the attribute value does not exist in the table. If in fact the value does not exist, then the assumption is valid and the operation succeeds. If the value is found, despite the assumption that it does not exist, the operation fails with a <code>ConditionalCheckFailedException</code>.</p> </li> </ul> <p>The default setting for <code>Exists</code> is <code>true</code>. If you supply a <code>Value</code> all by itself, DynamoDB assumes the attribute exists: You don't have to set <code>Exists</code> to <code>true</code>, because it is implied.</p> <p>DynamoDB returns a <code>ValidationException</code> if:</p> <ul> <li> <p> <code>Exists</code> is <code>true</code> but there is no <code>Value</code> to check. (You expect a value to exist, but don't specify what that value is.)</p> </li> <li> <p> <code>Exists</code> is <code>false</code> but you also provide a <code>Value</code>. (You cannot expect an attribute to have a value, while also expecting it not to exist.)</p> </li> </ul>
-- * Value [AttributeValue] <p>Represents the data for the expected attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * AttributeValueList [AttributeValueList] <p>One or more values to evaluate against the supplied attribute. The number of values in the list depends on the <code>ComparisonOperator</code> being used.</p> <p>For type Number, value comparisons are numeric.</p> <p>String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, <code>a</code> is greater than <code>A</code>, and <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p> <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.</p> <p>For information on specifying data types in JSON, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html">JSON Data Format</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return ExpectedAttributeValue structure as a key-value pair table
function M.ExpectedAttributeValue(args)
	assert(args, "You must provide an argument table when creating ExpectedAttributeValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComparisonOperator"] = args["ComparisonOperator"],
		["Exists"] = args["Exists"],
		["Value"] = args["Value"],
		["AttributeValueList"] = args["AttributeValueList"],
	}
	asserts.AssertExpectedAttributeValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteItemInput = { ["ConditionalOperator"] = true, ["ExpressionAttributeNames"] = true, ["ReturnValues"] = true, ["ConditionExpression"] = true, ["TableName"] = true, ["ReturnItemCollectionMetrics"] = true, ["ReturnConsumedCapacity"] = true, ["ExpressionAttributeValues"] = true, ["Key"] = true, ["Expected"] = true, nil }

function asserts.AssertDeleteItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ConditionalOperator"] then asserts.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["ExpressionAttributeNames"] then asserts.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["ReturnValues"] then asserts.AssertReturnValue(struct["ReturnValues"]) end
	if struct["ConditionExpression"] then asserts.AssertConditionExpression(struct["ConditionExpression"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["ReturnItemCollectionMetrics"] then asserts.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	if struct["ReturnConsumedCapacity"] then asserts.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ExpressionAttributeValues"] then asserts.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	if struct["Expected"] then asserts.AssertExpectedAttributeMap(struct["Expected"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteItemInput[k], "DeleteItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteItemInput
-- <p>Represents the input of a <code>DeleteItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared before they were deleted. For <code>DeleteItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - The content of the old item is returned.</p> </li> </ul> <note> <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations; however, <code>DeleteItem</code> does not recognize any values other than <code>NONE</code> or <code>ALL_OLD</code>.</p> </note>
-- * ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code> to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * TableName [TableName] <p>The name of the table from which to delete the item.</p>
-- * ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- * ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- * ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * Key [Key] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the primary key of the item to delete.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- * Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: TableName
-- Required key: Key
-- @return DeleteItemInput structure as a key-value pair table
function M.DeleteItemInput(args)
	assert(args, "You must provide an argument table when creating DeleteItemInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConditionalOperator"] = args["ConditionalOperator"],
		["ExpressionAttributeNames"] = args["ExpressionAttributeNames"],
		["ReturnValues"] = args["ReturnValues"],
		["ConditionExpression"] = args["ConditionExpression"],
		["TableName"] = args["TableName"],
		["ReturnItemCollectionMetrics"] = args["ReturnItemCollectionMetrics"],
		["ReturnConsumedCapacity"] = args["ReturnConsumedCapacity"],
		["ExpressionAttributeValues"] = args["ExpressionAttributeValues"],
		["Key"] = args["Key"],
		["Expected"] = args["Expected"],
	}
	asserts.AssertDeleteItemInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalTable = { ["GlobalTableName"] = true, ["ReplicationGroup"] = true, nil }

function asserts.AssertGlobalTable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalTable to be of type 'table'")
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	if struct["ReplicationGroup"] then asserts.AssertReplicaList(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalTable[k], "GlobalTable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalTable
-- <p>Represents the properties of a global table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableName [TableName] <p>The global table name.</p>
-- * ReplicationGroup [ReplicaList] <p>The regions where the global table has replicas.</p>
-- @return GlobalTable structure as a key-value pair table
function M.GlobalTable(args)
	assert(args, "You must provide an argument table when creating GlobalTable")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableName"] = args["GlobalTableName"],
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertGlobalTable(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGlobalSecondaryIndexAction = { ["KeySchema"] = true, ["IndexName"] = true, ["Projection"] = true, ["ProvisionedThroughput"] = true, nil }

function asserts.AssertCreateGlobalSecondaryIndexAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGlobalSecondaryIndexAction to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["Projection"], "Expected key Projection to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGlobalSecondaryIndexAction[k], "CreateGlobalSecondaryIndexAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGlobalSecondaryIndexAction
-- <p>Represents a new global secondary index to be added to an existing table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeySchema [KeySchema] <p>The key schema for the global secondary index.</p>
-- * IndexName [IndexName] <p>The name of the global secondary index to be created.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.</p>
-- * ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required key: IndexName
-- Required key: KeySchema
-- Required key: Projection
-- Required key: ProvisionedThroughput
-- @return CreateGlobalSecondaryIndexAction structure as a key-value pair table
function M.CreateGlobalSecondaryIndexAction(args)
	assert(args, "You must provide an argument table when creating CreateGlobalSecondaryIndexAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeySchema"] = args["KeySchema"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
	}
	asserts.AssertCreateGlobalSecondaryIndexAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScanOutput = { ["Count"] = true, ["Items"] = true, ["LastEvaluatedKey"] = true, ["ScannedCount"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertScanOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanOutput to be of type 'table'")
	if struct["Count"] then asserts.AssertInteger(struct["Count"]) end
	if struct["Items"] then asserts.AssertItemList(struct["Items"]) end
	if struct["LastEvaluatedKey"] then asserts.AssertKey(struct["LastEvaluatedKey"]) end
	if struct["ScannedCount"] then asserts.AssertInteger(struct["ScannedCount"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScanOutput[k], "ScanOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanOutput
-- <p>Represents the output of a <code>Scan</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [Integer] <p>The number of items in the response.</p> <p>If you set <code>ScanFilter</code> in the request, then <code>Count</code> is the number of items returned after the filter was applied, and <code>ScannedCount</code> is the number of matching items before the filter was applied.</p> <p>If you did not use a filter in the request, then <code>Count</code> is the same as <code>ScannedCount</code>.</p>
-- * Items [ItemList] <p>An array of item attributes that match the scan criteria. Each element in this array consists of an attribute name and the value for that attribute.</p>
-- * LastEvaluatedKey [Key] <p>The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedKey</code> is empty.</p>
-- * ScannedCount [Integer] <p>The number of items evaluated, before any <code>ScanFilter</code> is applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Scan</code> operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same as <code>Count</code>.</p>
-- * ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>Scan</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return ScanOutput structure as a key-value pair table
function M.ScanOutput(args)
	assert(args, "You must provide an argument table when creating ScanOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["Items"] = args["Items"],
		["LastEvaluatedKey"] = args["LastEvaluatedKey"],
		["ScannedCount"] = args["ScannedCount"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertScanOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreTableFromBackupOutput = { ["TableDescription"] = true, nil }

function asserts.AssertRestoreTableFromBackupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableFromBackupOutput to be of type 'table'")
	if struct["TableDescription"] then asserts.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreTableFromBackupOutput[k], "RestoreTableFromBackupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableFromBackupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableDescription [TableDescription] <p>The description of the table created from an existing backup.</p>
-- @return RestoreTableFromBackupOutput structure as a key-value pair table
function M.RestoreTableFromBackupOutput(args)
	assert(args, "You must provide an argument table when creating RestoreTableFromBackupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableDescription"] = args["TableDescription"],
	}
	asserts.AssertRestoreTableFromBackupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLimitsOutput = { ["TableMaxWriteCapacityUnits"] = true, ["TableMaxReadCapacityUnits"] = true, ["AccountMaxReadCapacityUnits"] = true, ["AccountMaxWriteCapacityUnits"] = true, nil }

function asserts.AssertDescribeLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsOutput to be of type 'table'")
	if struct["TableMaxWriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["TableMaxWriteCapacityUnits"]) end
	if struct["TableMaxReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["TableMaxReadCapacityUnits"]) end
	if struct["AccountMaxReadCapacityUnits"] then asserts.AssertPositiveLongObject(struct["AccountMaxReadCapacityUnits"]) end
	if struct["AccountMaxWriteCapacityUnits"] then asserts.AssertPositiveLongObject(struct["AccountMaxWriteCapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLimitsOutput[k], "DescribeLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsOutput
-- <p>Represents the output of a <code>DescribeLimits</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableMaxWriteCapacityUnits [PositiveLongObject] <p>The maximum write capacity units that your account allows you to provision for a new table that you are creating in this region, including the write capacity units provisioned for its global secondary indexes (GSIs).</p>
-- * TableMaxReadCapacityUnits [PositiveLongObject] <p>The maximum read capacity units that your account allows you to provision for a new table that you are creating in this region, including the read capacity units provisioned for its global secondary indexes (GSIs).</p>
-- * AccountMaxReadCapacityUnits [PositiveLongObject] <p>The maximum total read capacity units that your account allows you to provision across all of your tables in this region.</p>
-- * AccountMaxWriteCapacityUnits [PositiveLongObject] <p>The maximum total write capacity units that your account allows you to provision across all of your tables in this region.</p>
-- @return DescribeLimitsOutput structure as a key-value pair table
function M.DescribeLimitsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeLimitsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableMaxWriteCapacityUnits"] = args["TableMaxWriteCapacityUnits"],
		["TableMaxReadCapacityUnits"] = args["TableMaxReadCapacityUnits"],
		["AccountMaxReadCapacityUnits"] = args["AccountMaxReadCapacityUnits"],
		["AccountMaxWriteCapacityUnits"] = args["AccountMaxWriteCapacityUnits"],
	}
	asserts.AssertDescribeLimitsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LocalSecondaryIndex = { ["KeySchema"] = true, ["IndexName"] = true, ["Projection"] = true, nil }

function asserts.AssertLocalSecondaryIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LocalSecondaryIndex to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["Projection"], "Expected key Projection to exist in table")
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	for k,_ in pairs(struct) do
		assert(keys.LocalSecondaryIndex[k], "LocalSecondaryIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LocalSecondaryIndex
-- <p>Represents the properties of a local secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeySchema [KeySchema] <p>The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * IndexName [IndexName] <p>The name of the local secondary index. The name must be unique among all other indexes on this table.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- Required key: IndexName
-- Required key: KeySchema
-- Required key: Projection
-- @return LocalSecondaryIndex structure as a key-value pair table
function M.LocalSecondaryIndex(args)
	assert(args, "You must provide an argument table when creating LocalSecondaryIndex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeySchema"] = args["KeySchema"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
	}
	asserts.AssertLocalSecondaryIndex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateItemOutput = { ["Attributes"] = true, ["ItemCollectionMetrics"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertUpdateItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateItemOutput to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeMap(struct["Attributes"]) end
	if struct["ItemCollectionMetrics"] then asserts.AssertItemCollectionMetrics(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateItemOutput[k], "UpdateItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateItemOutput
-- <p>Represents the output of an <code>UpdateItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeMap] <p>A map of attribute values as they appear before or after the <code>UpdateItem</code> operation, as determined by the <code>ReturnValues</code> parameter.</p> <p>The <code>Attributes</code> map is only present if <code>ReturnValues</code> was specified as something other than <code>NONE</code> in the request. Each element represents one attribute.</p>
-- * ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>UpdateItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- * ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>UpdateItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return UpdateItemOutput structure as a key-value pair table
function M.UpdateItemOutput(args)
	assert(args, "You must provide an argument table when creating UpdateItemOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["ItemCollectionMetrics"] = args["ItemCollectionMetrics"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertUpdateItemOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetItemOutput = { ["Item"] = true, ["ConsumedCapacity"] = true, nil }

function asserts.AssertGetItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetItemOutput to be of type 'table'")
	if struct["Item"] then asserts.AssertAttributeMap(struct["Item"]) end
	if struct["ConsumedCapacity"] then asserts.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetItemOutput[k], "GetItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetItemOutput
-- <p>Represents the output of a <code>GetItem</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [AttributeMap] <p>A map of attribute names to <code>AttributeValue</code> objects, as specified by <code>ProjectionExpression</code>.</p>
-- * ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>GetItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @return GetItemOutput structure as a key-value pair table
function M.GetItemOutput(args)
	assert(args, "You must provide an argument table when creating GetItemOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["ConsumedCapacity"] = args["ConsumedCapacity"],
	}
	asserts.AssertGetItemOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LocalSecondaryIndexDescription = { ["IndexSizeBytes"] = true, ["IndexName"] = true, ["Projection"] = true, ["IndexArn"] = true, ["KeySchema"] = true, ["ItemCount"] = true, nil }

function asserts.AssertLocalSecondaryIndexDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LocalSecondaryIndexDescription to be of type 'table'")
	if struct["IndexSizeBytes"] then asserts.AssertLong(struct["IndexSizeBytes"]) end
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then asserts.AssertProjection(struct["Projection"]) end
	if struct["IndexArn"] then asserts.AssertString(struct["IndexArn"]) end
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["ItemCount"] then asserts.AssertLong(struct["ItemCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.LocalSecondaryIndexDescription[k], "LocalSecondaryIndexDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LocalSecondaryIndexDescription
-- <p>Represents the properties of a local secondary index.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexSizeBytes [Long] <p>The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- * IndexName [IndexName] <p>Represents the name of the local secondary index.</p>
-- * Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- * IndexArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
-- * KeySchema [KeySchema] <p>The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- * ItemCount [Long] <p>The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @return LocalSecondaryIndexDescription structure as a key-value pair table
function M.LocalSecondaryIndexDescription(args)
	assert(args, "You must provide an argument table when creating LocalSecondaryIndexDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexSizeBytes"] = args["IndexSizeBytes"],
		["IndexName"] = args["IndexName"],
		["Projection"] = args["Projection"],
		["IndexArn"] = args["IndexArn"],
		["KeySchema"] = args["KeySchema"],
		["ItemCount"] = args["ItemCount"],
	}
	asserts.AssertLocalSecondaryIndexDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGlobalTableInput = { ["ReplicaUpdates"] = true, ["GlobalTableName"] = true, nil }

function asserts.AssertUpdateGlobalTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGlobalTableInput to be of type 'table'")
	assert(struct["GlobalTableName"], "Expected key GlobalTableName to exist in table")
	assert(struct["ReplicaUpdates"], "Expected key ReplicaUpdates to exist in table")
	if struct["ReplicaUpdates"] then asserts.AssertReplicaUpdateList(struct["ReplicaUpdates"]) end
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGlobalTableInput[k], "UpdateGlobalTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGlobalTableInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicaUpdates [ReplicaUpdateList] <p>A list of regions that should be added or removed from the global table.</p>
-- * GlobalTableName [TableName] <p>The global table name.</p>
-- Required key: GlobalTableName
-- Required key: ReplicaUpdates
-- @return UpdateGlobalTableInput structure as a key-value pair table
function M.UpdateGlobalTableInput(args)
	assert(args, "You must provide an argument table when creating UpdateGlobalTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicaUpdates"] = args["ReplicaUpdates"],
		["GlobalTableName"] = args["GlobalTableName"],
	}
	asserts.AssertUpdateGlobalTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRequest = { ["Item"] = true, nil }

function asserts.AssertPutRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRequest to be of type 'table'")
	assert(struct["Item"], "Expected key Item to exist in table")
	if struct["Item"] then asserts.AssertPutItemInputAttributeMap(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRequest[k], "PutRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRequest
-- <p>Represents a request to perform a <code>PutItem</code> operation on an item.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [PutItemInputAttributeMap] <p>A map of attribute name to attribute values, representing the primary key of an item to be processed by <code>PutItem</code>. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema. If any attributes are present in the item which are part of an index key schema for the table, their types must match the index key schema.</p>
-- Required key: Item
-- @return PutRequest structure as a key-value pair table
function M.PutRequest(args)
	assert(args, "You must provide an argument table when creating PutRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
	}
	asserts.AssertPutRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGlobalSecondaryIndexAction = { ["IndexName"] = true, nil }

function asserts.AssertDeleteGlobalSecondaryIndexAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGlobalSecondaryIndexAction to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	if struct["IndexName"] then asserts.AssertIndexName(struct["IndexName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGlobalSecondaryIndexAction[k], "DeleteGlobalSecondaryIndexAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGlobalSecondaryIndexAction
-- <p>Represents a global secondary index to be deleted from an existing table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexName [IndexName] <p>The name of the global secondary index to be deleted.</p>
-- Required key: IndexName
-- @return DeleteGlobalSecondaryIndexAction structure as a key-value pair table
function M.DeleteGlobalSecondaryIndexAction(args)
	assert(args, "You must provide an argument table when creating DeleteGlobalSecondaryIndexAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexName"] = args["IndexName"],
	}
	asserts.AssertDeleteGlobalSecondaryIndexAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTimeToLiveOutput = { ["TimeToLiveDescription"] = true, nil }

function asserts.AssertDescribeTimeToLiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeToLiveOutput to be of type 'table'")
	if struct["TimeToLiveDescription"] then asserts.AssertTimeToLiveDescription(struct["TimeToLiveDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTimeToLiveOutput[k], "DescribeTimeToLiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeToLiveOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeToLiveDescription [TimeToLiveDescription] <p/>
-- @return DescribeTimeToLiveOutput structure as a key-value pair table
function M.DescribeTimeToLiveOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTimeToLiveOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeToLiveDescription"] = args["TimeToLiveDescription"],
	}
	asserts.AssertDescribeTimeToLiveOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBackupInput = { ["TableName"] = true, ["BackupName"] = true, nil }

function asserts.AssertCreateBackupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBackupInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["BackupName"], "Expected key BackupName to exist in table")
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["BackupName"] then asserts.AssertBackupName(struct["BackupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBackupInput[k], "CreateBackupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBackupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [TableName] <p>The name of the table.</p>
-- * BackupName [BackupName] <p>Specified name for the backup.</p>
-- Required key: TableName
-- Required key: BackupName
-- @return CreateBackupInput structure as a key-value pair table
function M.CreateBackupInput(args)
	assert(args, "You must provide an argument table when creating CreateBackupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
		["BackupName"] = args["BackupName"],
	}
	asserts.AssertCreateBackupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Endpoint = { ["CachePeriodInMinutes"] = true, ["Address"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	assert(struct["Address"], "Expected key Address to exist in table")
	assert(struct["CachePeriodInMinutes"], "Expected key CachePeriodInMinutes to exist in table")
	if struct["CachePeriodInMinutes"] then asserts.AssertLong(struct["CachePeriodInMinutes"]) end
	if struct["Address"] then asserts.AssertString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CachePeriodInMinutes [Long] 
-- * Address [String] 
-- Required key: Address
-- Required key: CachePeriodInMinutes
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
		["CachePeriodInMinutes"] = args["CachePeriodInMinutes"],
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

keys.CreateGlobalTableInput = { ["GlobalTableName"] = true, ["ReplicationGroup"] = true, nil }

function asserts.AssertCreateGlobalTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGlobalTableInput to be of type 'table'")
	assert(struct["GlobalTableName"], "Expected key GlobalTableName to exist in table")
	assert(struct["ReplicationGroup"], "Expected key ReplicationGroup to exist in table")
	if struct["GlobalTableName"] then asserts.AssertTableName(struct["GlobalTableName"]) end
	if struct["ReplicationGroup"] then asserts.AssertReplicaList(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGlobalTableInput[k], "CreateGlobalTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGlobalTableInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTableName [TableName] <p>The global table name.</p>
-- * ReplicationGroup [ReplicaList] <p>The regions where the global table needs to be created.</p>
-- Required key: GlobalTableName
-- Required key: ReplicationGroup
-- @return CreateGlobalTableInput structure as a key-value pair table
function M.CreateGlobalTableInput(args)
	assert(args, "You must provide an argument table when creating CreateGlobalTableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTableName"] = args["GlobalTableName"],
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertCreateGlobalTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTableOutput = { ["TableDescription"] = true, nil }

function asserts.AssertDeleteTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableOutput to be of type 'table'")
	if struct["TableDescription"] then asserts.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTableOutput[k], "DeleteTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableOutput
-- <p>Represents the output of a <code>DeleteTable</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableDescription [TableDescription] <p>Represents the properties of a table.</p>
-- @return DeleteTableOutput structure as a key-value pair table
function M.DeleteTableOutput(args)
	assert(args, "You must provide an argument table when creating DeleteTableOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableDescription"] = args["TableDescription"],
	}
	asserts.AssertDeleteTableOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBackupOutput = { ["BackupDetails"] = true, nil }

function asserts.AssertCreateBackupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBackupOutput to be of type 'table'")
	if struct["BackupDetails"] then asserts.AssertBackupDetails(struct["BackupDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBackupOutput[k], "CreateBackupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBackupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupDetails [BackupDetails] <p>Contains the details of the backup created for the table.</p>
-- @return CreateBackupOutput structure as a key-value pair table
function M.CreateBackupOutput(args)
	assert(args, "You must provide an argument table when creating CreateBackupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupDetails"] = args["BackupDetails"],
	}
	asserts.AssertCreateBackupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConsumedCapacity = { ["CapacityUnits"] = true, ["GlobalSecondaryIndexes"] = true, ["TableName"] = true, ["LocalSecondaryIndexes"] = true, ["Table"] = true, nil }

function asserts.AssertConsumedCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConsumedCapacity to be of type 'table'")
	if struct["CapacityUnits"] then asserts.AssertConsumedCapacityUnits(struct["CapacityUnits"]) end
	if struct["GlobalSecondaryIndexes"] then asserts.AssertSecondaryIndexesCapacityMap(struct["GlobalSecondaryIndexes"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["LocalSecondaryIndexes"] then asserts.AssertSecondaryIndexesCapacityMap(struct["LocalSecondaryIndexes"]) end
	if struct["Table"] then asserts.AssertCapacity(struct["Table"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConsumedCapacity[k], "ConsumedCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConsumedCapacity
-- <p>The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the request asked for it. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CapacityUnits [ConsumedCapacityUnits] <p>The total number of capacity units consumed by the operation.</p>
-- * GlobalSecondaryIndexes [SecondaryIndexesCapacityMap] <p>The amount of throughput consumed on each global index affected by the operation.</p>
-- * TableName [TableName] <p>The name of the table that was affected by the operation.</p>
-- * LocalSecondaryIndexes [SecondaryIndexesCapacityMap] <p>The amount of throughput consumed on each local index affected by the operation.</p>
-- * Table [Capacity] <p>The amount of throughput consumed on the table affected by the operation.</p>
-- @return ConsumedCapacity structure as a key-value pair table
function M.ConsumedCapacity(args)
	assert(args, "You must provide an argument table when creating ConsumedCapacity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CapacityUnits"] = args["CapacityUnits"],
		["GlobalSecondaryIndexes"] = args["GlobalSecondaryIndexes"],
		["TableName"] = args["TableName"],
		["LocalSecondaryIndexes"] = args["LocalSecondaryIndexes"],
		["Table"] = args["Table"],
	}
	asserts.AssertConsumedCapacity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContinuousBackupsInput = { ["PointInTimeRecoverySpecification"] = true, ["TableName"] = true, nil }

function asserts.AssertUpdateContinuousBackupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContinuousBackupsInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PointInTimeRecoverySpecification"], "Expected key PointInTimeRecoverySpecification to exist in table")
	if struct["PointInTimeRecoverySpecification"] then asserts.AssertPointInTimeRecoverySpecification(struct["PointInTimeRecoverySpecification"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContinuousBackupsInput[k], "UpdateContinuousBackupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContinuousBackupsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PointInTimeRecoverySpecification [PointInTimeRecoverySpecification] <p>Represents the settings used to enable point in time recovery.</p>
-- * TableName [TableName] <p>The name of the table.</p>
-- Required key: TableName
-- Required key: PointInTimeRecoverySpecification
-- @return UpdateContinuousBackupsInput structure as a key-value pair table
function M.UpdateContinuousBackupsInput(args)
	assert(args, "You must provide an argument table when creating UpdateContinuousBackupsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PointInTimeRecoverySpecification"] = args["PointInTimeRecoverySpecification"],
		["TableName"] = args["TableName"],
	}
	asserts.AssertUpdateContinuousBackupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRequest = { ["Key"] = true, nil }

function asserts.AssertDeleteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRequest to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Key"] then asserts.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRequest[k], "DeleteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRequest
-- <p>Represents a request to perform a <code>DeleteItem</code> operation on an item.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Key [Key] <p>A map of attribute name to attribute values, representing the primary key of the item to delete. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema.</p>
-- Required key: Key
-- @return DeleteRequest structure as a key-value pair table
function M.DeleteRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Key"] = args["Key"],
	}
	asserts.AssertDeleteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceInput = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArnString(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceInput[k], "TagResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArnString] <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is an Amazon Resource Name (ARN).</p>
-- * Tags [TagList] <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
-- Required key: ResourceArn
-- Required key: Tags
-- @return TagResourceInput structure as a key-value pair table
function M.TagResourceInput(args)
	assert(args, "You must provide an argument table when creating TagResourceInput")
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
	asserts.AssertTagResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGlobalTablesInput = { ["RegionName"] = true, ["Limit"] = true, ["ExclusiveStartGlobalTableName"] = true, nil }

function asserts.AssertListGlobalTablesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGlobalTablesInput to be of type 'table'")
	if struct["RegionName"] then asserts.AssertRegionName(struct["RegionName"]) end
	if struct["Limit"] then asserts.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["ExclusiveStartGlobalTableName"] then asserts.AssertTableName(struct["ExclusiveStartGlobalTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGlobalTablesInput[k], "ListGlobalTablesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGlobalTablesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegionName [RegionName] <p>Lists the global tables in a specific region.</p>
-- * Limit [PositiveIntegerObject] <p>The maximum number of table names to return.</p>
-- * ExclusiveStartGlobalTableName [TableName] <p>The first global table name that this operation will evaluate.</p>
-- @return ListGlobalTablesInput structure as a key-value pair table
function M.ListGlobalTablesInput(args)
	assert(args, "You must provide an argument table when creating ListGlobalTablesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegionName"] = args["RegionName"],
		["Limit"] = args["Limit"],
		["ExclusiveStartGlobalTableName"] = args["ExclusiveStartGlobalTableName"],
	}
	asserts.AssertListGlobalTablesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLimitsInput = { nil }

function asserts.AssertDescribeLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeLimitsInput[k], "DescribeLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsInput
-- <p>Represents the input of a <code>DescribeLimits</code> operation. Has no content.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeLimitsInput structure as a key-value pair table
function M.DescribeLimitsInput(args)
	assert(args, "You must provide an argument table when creating DescribeLimitsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeLimitsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBackupInput = { ["BackupArn"] = true, nil }

function asserts.AssertDescribeBackupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupInput to be of type 'table'")
	assert(struct["BackupArn"], "Expected key BackupArn to exist in table")
	if struct["BackupArn"] then asserts.AssertBackupArn(struct["BackupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBackupInput[k], "DescribeBackupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupArn [BackupArn] <p>The ARN associated with the backup.</p>
-- Required key: BackupArn
-- @return DescribeBackupInput structure as a key-value pair table
function M.DescribeBackupInput(args)
	assert(args, "You must provide an argument table when creating DescribeBackupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupArn"] = args["BackupArn"],
	}
	asserts.AssertDescribeBackupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreTableFromBackupInput = { ["BackupArn"] = true, ["TargetTableName"] = true, nil }

function asserts.AssertRestoreTableFromBackupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableFromBackupInput to be of type 'table'")
	assert(struct["TargetTableName"], "Expected key TargetTableName to exist in table")
	assert(struct["BackupArn"], "Expected key BackupArn to exist in table")
	if struct["BackupArn"] then asserts.AssertBackupArn(struct["BackupArn"]) end
	if struct["TargetTableName"] then asserts.AssertTableName(struct["TargetTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreTableFromBackupInput[k], "RestoreTableFromBackupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableFromBackupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupArn [BackupArn] <p>The ARN associated with the backup.</p>
-- * TargetTableName [TableName] <p>The name of the new table to which the backup must be restored.</p>
-- Required key: TargetTableName
-- Required key: BackupArn
-- @return RestoreTableFromBackupInput structure as a key-value pair table
function M.RestoreTableFromBackupInput(args)
	assert(args, "You must provide an argument table when creating RestoreTableFromBackupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupArn"] = args["BackupArn"],
		["TargetTableName"] = args["TargetTableName"],
	}
	asserts.AssertRestoreTableFromBackupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGlobalTablesOutput = { ["GlobalTables"] = true, ["LastEvaluatedGlobalTableName"] = true, nil }

function asserts.AssertListGlobalTablesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGlobalTablesOutput to be of type 'table'")
	if struct["GlobalTables"] then asserts.AssertGlobalTableList(struct["GlobalTables"]) end
	if struct["LastEvaluatedGlobalTableName"] then asserts.AssertTableName(struct["LastEvaluatedGlobalTableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGlobalTablesOutput[k], "ListGlobalTablesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGlobalTablesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlobalTables [GlobalTableList] <p>List of global table names.</p>
-- * LastEvaluatedGlobalTableName [TableName] <p>Last evaluated global table name.</p>
-- @return ListGlobalTablesOutput structure as a key-value pair table
function M.ListGlobalTablesOutput(args)
	assert(args, "You must provide an argument table when creating ListGlobalTablesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlobalTables"] = args["GlobalTables"],
		["LastEvaluatedGlobalTableName"] = args["LastEvaluatedGlobalTableName"],
	}
	asserts.AssertListGlobalTablesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContinuousBackupsDescription = { ["PointInTimeRecoveryDescription"] = true, ["ContinuousBackupsStatus"] = true, nil }

function asserts.AssertContinuousBackupsDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinuousBackupsDescription to be of type 'table'")
	assert(struct["ContinuousBackupsStatus"], "Expected key ContinuousBackupsStatus to exist in table")
	if struct["PointInTimeRecoveryDescription"] then asserts.AssertPointInTimeRecoveryDescription(struct["PointInTimeRecoveryDescription"]) end
	if struct["ContinuousBackupsStatus"] then asserts.AssertContinuousBackupsStatus(struct["ContinuousBackupsStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinuousBackupsDescription[k], "ContinuousBackupsDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinuousBackupsDescription
-- <p>Represents the continuous backups and point in time recovery settings on the table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PointInTimeRecoveryDescription [PointInTimeRecoveryDescription] <p>The description of the point in time recovery settings applied to the table.</p>
-- * ContinuousBackupsStatus [ContinuousBackupsStatus] <p> <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED, DISABLED</p>
-- Required key: ContinuousBackupsStatus
-- @return ContinuousBackupsDescription structure as a key-value pair table
function M.ContinuousBackupsDescription(args)
	assert(args, "You must provide an argument table when creating ContinuousBackupsDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PointInTimeRecoveryDescription"] = args["PointInTimeRecoveryDescription"],
		["ContinuousBackupsStatus"] = args["ContinuousBackupsStatus"],
	}
	asserts.AssertContinuousBackupsDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TableDescription = { ["TableArn"] = true, ["RestoreSummary"] = true, ["LocalSecondaryIndexes"] = true, ["AttributeDefinitions"] = true, ["GlobalSecondaryIndexes"] = true, ["ProvisionedThroughput"] = true, ["TableSizeBytes"] = true, ["TableName"] = true, ["TableStatus"] = true, ["StreamSpecification"] = true, ["TableId"] = true, ["SSEDescription"] = true, ["LatestStreamLabel"] = true, ["KeySchema"] = true, ["ItemCount"] = true, ["CreationDateTime"] = true, ["LatestStreamArn"] = true, nil }

function asserts.AssertTableDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableDescription to be of type 'table'")
	if struct["TableArn"] then asserts.AssertString(struct["TableArn"]) end
	if struct["RestoreSummary"] then asserts.AssertRestoreSummary(struct["RestoreSummary"]) end
	if struct["LocalSecondaryIndexes"] then asserts.AssertLocalSecondaryIndexDescriptionList(struct["LocalSecondaryIndexes"]) end
	if struct["AttributeDefinitions"] then asserts.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	if struct["GlobalSecondaryIndexes"] then asserts.AssertGlobalSecondaryIndexDescriptionList(struct["GlobalSecondaryIndexes"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughputDescription(struct["ProvisionedThroughput"]) end
	if struct["TableSizeBytes"] then asserts.AssertLong(struct["TableSizeBytes"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["TableStatus"] then asserts.AssertTableStatus(struct["TableStatus"]) end
	if struct["StreamSpecification"] then asserts.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["TableId"] then asserts.AssertTableId(struct["TableId"]) end
	if struct["SSEDescription"] then asserts.AssertSSEDescription(struct["SSEDescription"]) end
	if struct["LatestStreamLabel"] then asserts.AssertString(struct["LatestStreamLabel"]) end
	if struct["KeySchema"] then asserts.AssertKeySchema(struct["KeySchema"]) end
	if struct["ItemCount"] then asserts.AssertLong(struct["ItemCount"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["LatestStreamArn"] then asserts.AssertStreamArn(struct["LatestStreamArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableDescription[k], "TableDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableDescription
-- <p>Represents the properties of a table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the table.</p>
-- * RestoreSummary [RestoreSummary] <p>Contains details for the restore.</p>
-- * LocalSecondaryIndexes [LocalSecondaryIndexDescriptionList] <p>Represents one or more local secondary indexes on the table. Each index is scoped to a given partition key value. Tables with one or more local secondary indexes are subject to an item collection size limit, where the amount of data within a given item collection cannot exceed 10 GB. Each element is composed of:</p> <ul> <li> <p> <code>IndexName</code> - The name of the local secondary index.</p> </li> <li> <p> <code>KeySchema</code> - Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>IndexSizeBytes</code> - Represents the total size of the index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p> </li> <li> <p> <code>ItemCount</code> - Represents the number of items in the index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p> </li> </ul> <p>If the table is in the <code>DELETING</code> state, no information about indexes will be returned.</p>
-- * AttributeDefinitions [AttributeDefinitions] <p>An array of <code>AttributeDefinition</code> objects. Each of these objects describes one attribute in the table and index key schema.</p> <p>Each <code>AttributeDefinition</code> object in this array is composed of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of the attribute.</p> </li> <li> <p> <code>AttributeType</code> - The data type for the attribute.</p> </li> </ul>
-- * GlobalSecondaryIndexes [GlobalSecondaryIndexDescriptionList] <p>The global secondary indexes, if any, on the table. Each index is scoped to a given partition key value. Each element is composed of:</p> <ul> <li> <p> <code>Backfilling</code> - If true, then the index is currently in the backfilling phase. Backfilling occurs only when a new global secondary index is added to the table; it is the process by which DynamoDB populates the new index with data from the table. (This attribute does not appear for indexes that were created during a <code>CreateTable</code> operation.)</p> </li> <li> <p> <code>IndexName</code> - The name of the global secondary index.</p> </li> <li> <p> <code>IndexSizeBytes</code> - The total size of the global secondary index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value. </p> </li> <li> <p> <code>IndexStatus</code> - The current status of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The index is ready for use.</p> </li> </ul> </li> <li> <p> <code>ItemCount</code> - The number of items in the global secondary index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value. </p> </li> <li> <p> <code>KeySchema</code> - Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>ProvisionedThroughput</code> - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units, along with data about increases and decreases. </p> </li> </ul> <p>If the table is in the <code>DELETING</code> state, no information about indexes will be returned.</p>
-- * ProvisionedThroughput [ProvisionedThroughputDescription] <p>The provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.</p>
-- * TableSizeBytes [Long] <p>The total size of the specified table, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- * TableName [TableName] <p>The name of the table.</p>
-- * TableStatus [TableStatus] <p>The current state of the table:</p> <ul> <li> <p> <code>CREATING</code> - The table is being created.</p> </li> <li> <p> <code>UPDATING</code> - The table is being updated.</p> </li> <li> <p> <code>DELETING</code> - The table is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The table is ready for use.</p> </li> </ul>
-- * StreamSpecification [StreamSpecification] <p>The current DynamoDB Streams configuration for the table.</p>
-- * TableId [TableId] <p>Unique identifier for the table for which the backup was created. </p>
-- * SSEDescription [SSEDescription] <p>The description of the server-side encryption status on the specified table.</p>
-- * LatestStreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name.</p> </li> <li> <p>the <code>StreamLabel</code>.</p> </li> </ul>
-- * KeySchema [KeySchema] <p>The primary key structure for the table. Each <code>KeySchemaElement</code> consists of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of the attribute.</p> </li> <li> <p> <code>KeyType</code> - The role of the attribute:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note> </li> </ul> <p>For more information about primary keys, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- * ItemCount [Long] <p>The number of items in the specified table. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- * CreationDateTime [Date] <p>The date and time when the table was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
-- * LatestStreamArn [StreamArn] <p>The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this table.</p>
-- @return TableDescription structure as a key-value pair table
function M.TableDescription(args)
	assert(args, "You must provide an argument table when creating TableDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableArn"] = args["TableArn"],
		["RestoreSummary"] = args["RestoreSummary"],
		["LocalSecondaryIndexes"] = args["LocalSecondaryIndexes"],
		["AttributeDefinitions"] = args["AttributeDefinitions"],
		["GlobalSecondaryIndexes"] = args["GlobalSecondaryIndexes"],
		["ProvisionedThroughput"] = args["ProvisionedThroughput"],
		["TableSizeBytes"] = args["TableSizeBytes"],
		["TableName"] = args["TableName"],
		["TableStatus"] = args["TableStatus"],
		["StreamSpecification"] = args["StreamSpecification"],
		["TableId"] = args["TableId"],
		["SSEDescription"] = args["SSEDescription"],
		["LatestStreamLabel"] = args["LatestStreamLabel"],
		["KeySchema"] = args["KeySchema"],
		["ItemCount"] = args["ItemCount"],
		["CreationDateTime"] = args["CreationDateTime"],
		["LatestStreamArn"] = args["LatestStreamArn"],
	}
	asserts.AssertTableDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WriteRequest = { ["PutRequest"] = true, ["DeleteRequest"] = true, nil }

function asserts.AssertWriteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteRequest to be of type 'table'")
	if struct["PutRequest"] then asserts.AssertPutRequest(struct["PutRequest"]) end
	if struct["DeleteRequest"] then asserts.AssertDeleteRequest(struct["DeleteRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteRequest[k], "WriteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteRequest
-- <p>Represents an operation to perform - either <code>DeleteItem</code> or <code>PutItem</code>. You can only request one of these operations, not both, in a single <code>WriteRequest</code>. If you do need to perform both of these operations, you will need to provide two separate <code>WriteRequest</code> objects.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PutRequest [PutRequest] <p>A request to perform a <code>PutItem</code> operation.</p>
-- * DeleteRequest [DeleteRequest] <p>A request to perform a <code>DeleteItem</code> operation.</p>
-- @return WriteRequest structure as a key-value pair table
function M.WriteRequest(args)
	assert(args, "You must provide an argument table when creating WriteRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PutRequest"] = args["PutRequest"],
		["DeleteRequest"] = args["DeleteRequest"],
	}
	asserts.AssertWriteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContinuousBackupsOutput = { ["ContinuousBackupsDescription"] = true, nil }

function asserts.AssertUpdateContinuousBackupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContinuousBackupsOutput to be of type 'table'")
	if struct["ContinuousBackupsDescription"] then asserts.AssertContinuousBackupsDescription(struct["ContinuousBackupsDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContinuousBackupsOutput[k], "UpdateContinuousBackupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContinuousBackupsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContinuousBackupsDescription [ContinuousBackupsDescription] <p>Represents the continuous backups and point in time recovery settings on the table.</p>
-- @return UpdateContinuousBackupsOutput structure as a key-value pair table
function M.UpdateContinuousBackupsOutput(args)
	assert(args, "You must provide an argument table when creating UpdateContinuousBackupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContinuousBackupsDescription"] = args["ContinuousBackupsDescription"],
	}
	asserts.AssertUpdateContinuousBackupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertRegionName(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionName to be of type 'string'")
end

--  
function M.RegionName(str)
	asserts.AssertRegionName(str)
	return str
end

function asserts.AssertSSEStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SSEStatus to be of type 'string'")
end

--  
function M.SSEStatus(str)
	asserts.AssertSSEStatus(str)
	return str
end

function asserts.AssertKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyType to be of type 'string'")
end

--  
function M.KeyType(str)
	asserts.AssertKeyType(str)
	return str
end

function asserts.AssertScalarAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalarAttributeType to be of type 'string'")
end

--  
function M.ScalarAttributeType(str)
	asserts.AssertScalarAttributeType(str)
	return str
end

function asserts.AssertBackupType(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupType to be of type 'string'")
end

--  
function M.BackupType(str)
	asserts.AssertBackupType(str)
	return str
end

function asserts.AssertAutoScalingPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingPolicyName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutoScalingPolicyName(str)
	asserts.AssertAutoScalingPolicyName(str)
	return str
end

function asserts.AssertReturnValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnValue to be of type 'string'")
end

--  
function M.ReturnValue(str)
	asserts.AssertReturnValue(str)
	return str
end

function asserts.AssertAttributeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeAction to be of type 'string'")
end

--  
function M.AttributeAction(str)
	asserts.AssertAttributeAction(str)
	return str
end

function asserts.AssertPointInTimeRecoveryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PointInTimeRecoveryStatus to be of type 'string'")
end

--  
function M.PointInTimeRecoveryStatus(str)
	asserts.AssertPointInTimeRecoveryStatus(str)
	return str
end

function asserts.AssertSSEType(str)
	assert(str)
	assert(type(str) == "string", "Expected SSEType to be of type 'string'")
end

--  
function M.SSEType(str)
	asserts.AssertSSEType(str)
	return str
end

function asserts.AssertTableId(str)
	assert(str)
	assert(type(str) == "string", "Expected TableId to be of type 'string'")
end

--  
function M.TableId(str)
	asserts.AssertTableId(str)
	return str
end

function asserts.AssertKMSMasterKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSMasterKeyArn to be of type 'string'")
end

--  
function M.KMSMasterKeyArn(str)
	asserts.AssertKMSMasterKeyArn(str)
	return str
end

function asserts.AssertStreamViewType(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamViewType to be of type 'string'")
end

--  
function M.StreamViewType(str)
	asserts.AssertStreamViewType(str)
	return str
end

function asserts.AssertConditionalOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ConditionalOperator to be of type 'string'")
end

--  
function M.ConditionalOperator(str)
	asserts.AssertConditionalOperator(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 65535, "Expected string to be max 65535 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertUpdateExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdateExpression to be of type 'string'")
end

--  
function M.UpdateExpression(str)
	asserts.AssertUpdateExpression(str)
	return str
end

function asserts.AssertTagKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKeyString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKeyString(str)
	asserts.AssertTagKeyString(str)
	return str
end

function asserts.AssertAutoScalingRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingRoleArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutoScalingRoleArn(str)
	asserts.AssertAutoScalingRoleArn(str)
	return str
end

function asserts.AssertExpressionAttributeValueVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionAttributeValueVariable to be of type 'string'")
end

--  
function M.ExpressionAttributeValueVariable(str)
	asserts.AssertExpressionAttributeValueVariable(str)
	return str
end

function asserts.AssertStringAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringAttributeValue to be of type 'string'")
end

--  
function M.StringAttributeValue(str)
	asserts.AssertStringAttributeValue(str)
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

function asserts.AssertTableArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TableArn to be of type 'string'")
end

--  
function M.TableArn(str)
	asserts.AssertTableArn(str)
	return str
end

function asserts.AssertNumberAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumberAttributeValue to be of type 'string'")
end

--  
function M.NumberAttributeValue(str)
	asserts.AssertNumberAttributeValue(str)
	return str
end

function asserts.AssertReturnItemCollectionMetrics(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnItemCollectionMetrics to be of type 'string'")
end

--  
function M.ReturnItemCollectionMetrics(str)
	asserts.AssertReturnItemCollectionMetrics(str)
	return str
end

function asserts.AssertBackupArn(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 37, "Expected string to be min 37 characters")
end

--  
function M.BackupArn(str)
	asserts.AssertBackupArn(str)
	return str
end

function asserts.AssertReplicaStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicaStatus to be of type 'string'")
end

--  
function M.ReplicaStatus(str)
	asserts.AssertReplicaStatus(str)
	return str
end

function asserts.AssertKeySchemaAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected KeySchemaAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeySchemaAttributeName(str)
	asserts.AssertKeySchemaAttributeName(str)
	return str
end

function asserts.AssertTagValueString(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValueString to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValueString(str)
	asserts.AssertTagValueString(str)
	return str
end

function asserts.AssertNextTokenString(str)
	assert(str)
	assert(type(str) == "string", "Expected NextTokenString to be of type 'string'")
end

--  
function M.NextTokenString(str)
	asserts.AssertNextTokenString(str)
	return str
end

function asserts.AssertBackupTypeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupTypeFilter to be of type 'string'")
end

--  
function M.BackupTypeFilter(str)
	asserts.AssertBackupTypeFilter(str)
	return str
end

function asserts.AssertExpressionAttributeNameVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionAttributeNameVariable to be of type 'string'")
end

--  
function M.ExpressionAttributeNameVariable(str)
	asserts.AssertExpressionAttributeNameVariable(str)
	return str
end

function asserts.AssertIndexStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected IndexStatus to be of type 'string'")
end

--  
function M.IndexStatus(str)
	asserts.AssertIndexStatus(str)
	return str
end

function asserts.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.TableName(str)
	asserts.AssertTableName(str)
	return str
end

function asserts.AssertContinuousBackupsStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinuousBackupsStatus to be of type 'string'")
end

--  
function M.ContinuousBackupsStatus(str)
	asserts.AssertContinuousBackupsStatus(str)
	return str
end

function asserts.AssertSelect(str)
	assert(str)
	assert(type(str) == "string", "Expected Select to be of type 'string'")
end

--  
function M.Select(str)
	asserts.AssertSelect(str)
	return str
end

function asserts.AssertTimeToLiveStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeToLiveStatus to be of type 'string'")
end

--  
function M.TimeToLiveStatus(str)
	asserts.AssertTimeToLiveStatus(str)
	return str
end

function asserts.AssertNonKeyAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected NonKeyAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonKeyAttributeName(str)
	asserts.AssertNonKeyAttributeName(str)
	return str
end

function asserts.AssertProjectionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectionType to be of type 'string'")
end

--  
function M.ProjectionType(str)
	asserts.AssertProjectionType(str)
	return str
end

function asserts.AssertKeyExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyExpression to be of type 'string'")
end

--  
function M.KeyExpression(str)
	asserts.AssertKeyExpression(str)
	return str
end

function asserts.AssertReturnConsumedCapacity(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnConsumedCapacity to be of type 'string'")
end

-- <p>Determines the level of detail about provisioned throughput consumption that is returned in the response:</p> <ul> <li> <p> <code>INDEXES</code> - The response includes the aggregate <code>ConsumedCapacity</code> for the operation, together with <code>ConsumedCapacity</code> for each table and secondary index that was accessed.</p> <p>Note that some operations, such as <code>GetItem</code> and <code>BatchGetItem</code>, do not access any indexes at all. In these cases, specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code> information for table(s).</p> </li> <li> <p> <code>TOTAL</code> - The response includes only the aggregate <code>ConsumedCapacity</code> for the operation.</p> </li> <li> <p> <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the response.</p> </li> </ul>
function M.ReturnConsumedCapacity(str)
	asserts.AssertReturnConsumedCapacity(str)
	return str
end

function asserts.AssertIndexName(str)
	assert(str)
	assert(type(str) == "string", "Expected IndexName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.IndexName(str)
	asserts.AssertIndexName(str)
	return str
end

function asserts.AssertBackupStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupStatus to be of type 'string'")
end

--  
function M.BackupStatus(str)
	asserts.AssertBackupStatus(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
	return str
end

function asserts.AssertKMSMasterKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSMasterKeyId to be of type 'string'")
end

--  
function M.KMSMasterKeyId(str)
	asserts.AssertKMSMasterKeyId(str)
	return str
end

function asserts.AssertBackupName(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.BackupName(str)
	asserts.AssertBackupName(str)
	return str
end

function asserts.AssertConditionExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ConditionExpression to be of type 'string'")
end

--  
function M.ConditionExpression(str)
	asserts.AssertConditionExpression(str)
	return str
end

function asserts.AssertResourceArnString(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArnString to be of type 'string'")
	assert(#str <= 1283, "Expected string to be max 1283 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArnString(str)
	asserts.AssertResourceArnString(str)
	return str
end

function asserts.AssertStreamArn(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 37, "Expected string to be min 37 characters")
end

--  
function M.StreamArn(str)
	asserts.AssertStreamArn(str)
	return str
end

function asserts.AssertGlobalTableStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected GlobalTableStatus to be of type 'string'")
end

--  
function M.GlobalTableStatus(str)
	asserts.AssertGlobalTableStatus(str)
	return str
end

function asserts.AssertTableStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TableStatus to be of type 'string'")
end

--  
function M.TableStatus(str)
	asserts.AssertTableStatus(str)
	return str
end

function asserts.AssertGlobalTableArnString(str)
	assert(str)
	assert(type(str) == "string", "Expected GlobalTableArnString to be of type 'string'")
end

--  
function M.GlobalTableArnString(str)
	asserts.AssertGlobalTableArnString(str)
	return str
end

function asserts.AssertTimeToLiveAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeToLiveAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TimeToLiveAttributeName(str)
	asserts.AssertTimeToLiveAttributeName(str)
	return str
end

function asserts.AssertProjectionExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectionExpression to be of type 'string'")
end

--  
function M.ProjectionExpression(str)
	asserts.AssertProjectionExpression(str)
	return str
end

function asserts.AssertConsumedCapacityUnits(double)
	assert(double)
	assert(type(double) == "number", "Expected ConsumedCapacityUnits to be of type 'number'")
end

function M.ConsumedCapacityUnits(double)
	asserts.AssertConsumedCapacityUnits(double)
	return double
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
end

function asserts.AssertItemCollectionSizeEstimateBound(double)
	assert(double)
	assert(type(double) == "number", "Expected ItemCollectionSizeEstimateBound to be of type 'number'")
end

function M.ItemCollectionSizeEstimateBound(double)
	asserts.AssertItemCollectionSizeEstimateBound(double)
	return double
end

function asserts.AssertPositiveLongObject(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLongObject to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLongObject(long)
	asserts.AssertPositiveLongObject(long)
	return long
end

function asserts.AssertItemCount(long)
	assert(long)
	assert(type(long) == "number", "Expected ItemCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ItemCount(long)
	asserts.AssertItemCount(long)
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

function asserts.AssertBackupSizeBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected BackupSizeBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BackupSizeBytes(long)
	asserts.AssertBackupSizeBytes(long)
	return long
end

function asserts.AssertScanTotalSegments(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ScanTotalSegments to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ScanTotalSegments(integer)
	asserts.AssertScanTotalSegments(integer)
	return integer
end

function asserts.AssertListTablesInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTablesInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListTablesInputLimit(integer)
	asserts.AssertListTablesInputLimit(integer)
	return integer
end

function asserts.AssertBackupsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BackupsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BackupsInputLimit(integer)
	asserts.AssertBackupsInputLimit(integer)
	return integer
end

function asserts.AssertIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerObject(integer)
	asserts.AssertIntegerObject(integer)
	return integer
end

function asserts.AssertScanSegment(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ScanSegment to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 999999, "Expected integer to be max 999999")
end

function M.ScanSegment(integer)
	asserts.AssertScanSegment(integer)
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

function asserts.AssertPositiveIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerObject(integer)
	asserts.AssertPositiveIntegerObject(integer)
	return integer
end

function asserts.AssertBackfilling(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Backfilling to be of type 'boolean'")
end

function M.Backfilling(boolean)
	asserts.AssertBackfilling(boolean)
	return boolean
end

function asserts.AssertStreamEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected StreamEnabled to be of type 'boolean'")
end

function M.StreamEnabled(boolean)
	asserts.AssertStreamEnabled(boolean)
	return boolean
end

function asserts.AssertRestoreInProgress(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RestoreInProgress to be of type 'boolean'")
end

function M.RestoreInProgress(boolean)
	asserts.AssertRestoreInProgress(boolean)
	return boolean
end

function asserts.AssertSSEEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SSEEnabled to be of type 'boolean'")
end

function M.SSEEnabled(boolean)
	asserts.AssertSSEEnabled(boolean)
	return boolean
end

function asserts.AssertTimeToLiveEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected TimeToLiveEnabled to be of type 'boolean'")
end

function M.TimeToLiveEnabled(boolean)
	asserts.AssertTimeToLiveEnabled(boolean)
	return boolean
end

function asserts.AssertNullAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullAttributeValue to be of type 'boolean'")
end

function M.NullAttributeValue(boolean)
	asserts.AssertNullAttributeValue(boolean)
	return boolean
end

function asserts.AssertConsistentRead(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ConsistentRead to be of type 'boolean'")
end

function M.ConsistentRead(boolean)
	asserts.AssertConsistentRead(boolean)
	return boolean
end

function asserts.AssertBooleanAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanAttributeValue to be of type 'boolean'")
end

function M.BooleanAttributeValue(boolean)
	asserts.AssertBooleanAttributeValue(boolean)
	return boolean
end

function asserts.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	asserts.AssertBooleanObject(boolean)
	return boolean
end

function asserts.AssertAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.AttributeMap(map)
	asserts.AssertAttributeMap(map)
	return map
end

function asserts.AssertFilterConditionMap(map)
	assert(map)
	assert(type(map) == "table", "Expected FilterConditionMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertCondition(v)
	end
end

function M.FilterConditionMap(map)
	asserts.AssertFilterConditionMap(map)
	return map
end

function asserts.AssertKey(map)
	assert(map)
	assert(type(map) == "table", "Expected Key to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.Key(map)
	asserts.AssertKey(map)
	return map
end

function asserts.AssertBatchGetRequestMap(map)
	assert(map)
	assert(type(map) == "table", "Expected BatchGetRequestMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTableName(k)
		asserts.AssertKeysAndAttributes(v)
	end
end

function M.BatchGetRequestMap(map)
	asserts.AssertBatchGetRequestMap(map)
	return map
end

function asserts.AssertAttributeUpdates(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeUpdates to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValueUpdate(v)
	end
end

function M.AttributeUpdates(map)
	asserts.AssertAttributeUpdates(map)
	return map
end

function asserts.AssertBatchGetResponseMap(map)
	assert(map)
	assert(type(map) == "table", "Expected BatchGetResponseMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTableName(k)
		asserts.AssertItemList(v)
	end
end

function M.BatchGetResponseMap(map)
	asserts.AssertBatchGetResponseMap(map)
	return map
end

function asserts.AssertExpressionAttributeNameMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExpressionAttributeNameMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertExpressionAttributeNameVariable(k)
		asserts.AssertAttributeName(v)
	end
end

function M.ExpressionAttributeNameMap(map)
	asserts.AssertExpressionAttributeNameMap(map)
	return map
end

function asserts.AssertExpressionAttributeValueMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExpressionAttributeValueMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertExpressionAttributeValueVariable(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.ExpressionAttributeValueMap(map)
	asserts.AssertExpressionAttributeValueMap(map)
	return map
end

function asserts.AssertItemCollectionKeyAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ItemCollectionKeyAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.ItemCollectionKeyAttributeMap(map)
	asserts.AssertItemCollectionKeyAttributeMap(map)
	return map
end

function asserts.AssertBatchWriteItemRequestMap(map)
	assert(map)
	assert(type(map) == "table", "Expected BatchWriteItemRequestMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTableName(k)
		asserts.AssertWriteRequests(v)
	end
end

function M.BatchWriteItemRequestMap(map)
	asserts.AssertBatchWriteItemRequestMap(map)
	return map
end

function asserts.AssertMapAttributeValue(map)
	assert(map)
	assert(type(map) == "table", "Expected MapAttributeValue to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.MapAttributeValue(map)
	asserts.AssertMapAttributeValue(map)
	return map
end

function asserts.AssertItemCollectionMetricsPerTable(map)
	assert(map)
	assert(type(map) == "table", "Expected ItemCollectionMetricsPerTable to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTableName(k)
		asserts.AssertItemCollectionMetricsMultiple(v)
	end
end

function M.ItemCollectionMetricsPerTable(map)
	asserts.AssertItemCollectionMetricsPerTable(map)
	return map
end

function asserts.AssertSecondaryIndexesCapacityMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SecondaryIndexesCapacityMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIndexName(k)
		asserts.AssertCapacity(v)
	end
end

function M.SecondaryIndexesCapacityMap(map)
	asserts.AssertSecondaryIndexesCapacityMap(map)
	return map
end

function asserts.AssertKeyConditions(map)
	assert(map)
	assert(type(map) == "table", "Expected KeyConditions to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertCondition(v)
	end
end

function M.KeyConditions(map)
	asserts.AssertKeyConditions(map)
	return map
end

function asserts.AssertExpectedAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExpectedAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertExpectedAttributeValue(v)
	end
end

function M.ExpectedAttributeMap(map)
	asserts.AssertExpectedAttributeMap(map)
	return map
end

function asserts.AssertPutItemInputAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PutItemInputAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.PutItemInputAttributeMap(map)
	asserts.AssertPutItemInputAttributeMap(map)
	return map
end

function asserts.AssertTableCreationDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TableCreationDateTime to be of type 'string'")
end

function M.TableCreationDateTime(timestamp)
	asserts.AssertTableCreationDateTime(timestamp)
	return timestamp
end

function asserts.AssertTimeRangeLowerBound(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeRangeLowerBound to be of type 'string'")
end

function M.TimeRangeLowerBound(timestamp)
	asserts.AssertTimeRangeLowerBound(timestamp)
	return timestamp
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertTimeRangeUpperBound(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeRangeUpperBound to be of type 'string'")
end

function M.TimeRangeUpperBound(timestamp)
	asserts.AssertTimeRangeUpperBound(timestamp)
	return timestamp
end

function asserts.AssertBackupCreationDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected BackupCreationDateTime to be of type 'string'")
end

function M.BackupCreationDateTime(timestamp)
	asserts.AssertBackupCreationDateTime(timestamp)
	return timestamp
end

function asserts.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	asserts.AssertBinaryAttributeValue(blob)
	return blob
end

function asserts.AssertReplicaGlobalSecondaryIndexSettingsUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaGlobalSecondaryIndexSettingsUpdateList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertReplicaGlobalSecondaryIndexSettingsUpdate(v)
	end
end

--  
-- List of ReplicaGlobalSecondaryIndexSettingsUpdate objects
function M.ReplicaGlobalSecondaryIndexSettingsUpdateList(list)
	asserts.AssertReplicaGlobalSecondaryIndexSettingsUpdateList(list)
	return list
end

function asserts.AssertGlobalSecondaryIndexDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlobalSecondaryIndexDescription(v)
	end
end

--  
-- List of GlobalSecondaryIndexDescription objects
function M.GlobalSecondaryIndexDescriptionList(list)
	asserts.AssertGlobalSecondaryIndexDescriptionList(list)
	return list
end

function asserts.AssertAutoScalingPolicyDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingPolicyDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAutoScalingPolicyDescription(v)
	end
end

--  
-- List of AutoScalingPolicyDescription objects
function M.AutoScalingPolicyDescriptionList(list)
	asserts.AssertAutoScalingPolicyDescriptionList(list)
	return list
end

function asserts.AssertItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeMap(v)
	end
end

--  
-- List of AttributeMap objects
function M.ItemList(list)
	asserts.AssertItemList(list)
	return list
end

function asserts.AssertGlobalTableGlobalSecondaryIndexSettingsUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalTableGlobalSecondaryIndexSettingsUpdateList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertGlobalTableGlobalSecondaryIndexSettingsUpdate(v)
	end
end

--  
-- List of GlobalTableGlobalSecondaryIndexSettingsUpdate objects
function M.GlobalTableGlobalSecondaryIndexSettingsUpdateList(list)
	asserts.AssertGlobalTableGlobalSecondaryIndexSettingsUpdateList(list)
	return list
end

function asserts.AssertReplicaSettingsDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaSettingsDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicaSettingsDescription(v)
	end
end

--  
-- List of ReplicaSettingsDescription objects
function M.ReplicaSettingsDescriptionList(list)
	asserts.AssertReplicaSettingsDescriptionList(list)
	return list
end

function asserts.AssertEndpoints(list)
	assert(list)
	assert(type(list) == "table", "Expected Endpoints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpoint(v)
	end
end

--  
-- List of Endpoint objects
function M.Endpoints(list)
	asserts.AssertEndpoints(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKeyString(v)
	end
end

--  
-- List of TagKeyString objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertKeySchema(list)
	assert(list)
	assert(type(list) == "table", "Expected KeySchema to be of type ''table")
	assert(#list <= 2, "Expected list to be contain 2 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertKeySchemaElement(v)
	end
end

--  
-- List of KeySchemaElement objects
function M.KeySchema(list)
	asserts.AssertKeySchema(list)
	return list
end

function asserts.AssertLocalSecondaryIndexDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocalSecondaryIndexDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLocalSecondaryIndexDescription(v)
	end
end

--  
-- List of LocalSecondaryIndexDescription objects
function M.LocalSecondaryIndexDescriptionList(list)
	asserts.AssertLocalSecondaryIndexDescriptionList(list)
	return list
end

function asserts.AssertBackupSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected BackupSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBackupSummary(v)
	end
end

--  
-- List of BackupSummary objects
function M.BackupSummaries(list)
	asserts.AssertBackupSummaries(list)
	return list
end

function asserts.AssertNumberSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected NumberSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNumberAttributeValue(v)
	end
end

--  
-- List of NumberAttributeValue objects
function M.NumberSetAttributeValue(list)
	asserts.AssertNumberSetAttributeValue(list)
	return list
end

function asserts.AssertGlobalSecondaryIndexUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlobalSecondaryIndexUpdate(v)
	end
end

--  
-- List of GlobalSecondaryIndexUpdate objects
function M.GlobalSecondaryIndexUpdateList(list)
	asserts.AssertGlobalSecondaryIndexUpdateList(list)
	return list
end

function asserts.AssertNonKeyAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected NonKeyAttributeNameList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertNonKeyAttributeName(v)
	end
end

--  
-- List of NonKeyAttributeName objects
function M.NonKeyAttributeNameList(list)
	asserts.AssertNonKeyAttributeNameList(list)
	return list
end

function asserts.AssertItemCollectionMetricsMultiple(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemCollectionMetricsMultiple to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertItemCollectionMetrics(v)
	end
end

--  
-- List of ItemCollectionMetrics objects
function M.ItemCollectionMetricsMultiple(list)
	asserts.AssertItemCollectionMetricsMultiple(list)
	return list
end

function asserts.AssertAttributeValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeValue(v)
	end
end

--  
-- List of AttributeValue objects
function M.AttributeValueList(list)
	asserts.AssertAttributeValueList(list)
	return list
end

function asserts.AssertStringSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected StringSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStringAttributeValue(v)
	end
end

--  
-- List of StringAttributeValue objects
function M.StringSetAttributeValue(list)
	asserts.AssertStringSetAttributeValue(list)
	return list
end

function asserts.AssertReplicaList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplica(v)
	end
end

--  
-- List of Replica objects
function M.ReplicaList(list)
	asserts.AssertReplicaList(list)
	return list
end

function asserts.AssertReplicaDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicaDescription(v)
	end
end

--  
-- List of ReplicaDescription objects
function M.ReplicaDescriptionList(list)
	asserts.AssertReplicaDescriptionList(list)
	return list
end

function asserts.AssertListAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected ListAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeValue(v)
	end
end

--  
-- List of AttributeValue objects
function M.ListAttributeValue(list)
	asserts.AssertListAttributeValue(list)
	return list
end

function asserts.AssertItemCollectionSizeEstimateRange(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemCollectionSizeEstimateRange to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertItemCollectionSizeEstimateBound(v)
	end
end

--  
-- List of ItemCollectionSizeEstimateBound objects
function M.ItemCollectionSizeEstimateRange(list)
	asserts.AssertItemCollectionSizeEstimateRange(list)
	return list
end

function asserts.AssertBinarySetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected BinarySetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBinaryAttributeValue(v)
	end
end

--  
-- List of BinaryAttributeValue objects
function M.BinarySetAttributeValue(list)
	asserts.AssertBinarySetAttributeValue(list)
	return list
end

function asserts.AssertTableNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableName(v)
	end
end

--  
-- List of TableName objects
function M.TableNameList(list)
	asserts.AssertTableNameList(list)
	return list
end

function asserts.AssertLocalSecondaryIndexes(list)
	assert(list)
	assert(type(list) == "table", "Expected LocalSecondaryIndexes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLocalSecondaryIndexInfo(v)
	end
end

--  
-- List of LocalSecondaryIndexInfo objects
function M.LocalSecondaryIndexes(list)
	asserts.AssertLocalSecondaryIndexes(list)
	return list
end

function asserts.AssertGlobalSecondaryIndexes(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlobalSecondaryIndexInfo(v)
	end
end

--  
-- List of GlobalSecondaryIndexInfo objects
function M.GlobalSecondaryIndexes(list)
	asserts.AssertGlobalSecondaryIndexes(list)
	return list
end

function asserts.AssertLocalSecondaryIndexList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocalSecondaryIndexList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLocalSecondaryIndex(v)
	end
end

--  
-- List of LocalSecondaryIndex objects
function M.LocalSecondaryIndexList(list)
	asserts.AssertLocalSecondaryIndexList(list)
	return list
end

function asserts.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.AttributeNameList(list)
	asserts.AssertAttributeNameList(list)
	return list
end

function asserts.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertKey(v)
	end
end

--  
-- List of Key objects
function M.KeyList(list)
	asserts.AssertKeyList(list)
	return list
end

function asserts.AssertReplicaSettingsUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaSettingsUpdateList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertReplicaSettingsUpdate(v)
	end
end

--  
-- List of ReplicaSettingsUpdate objects
function M.ReplicaSettingsUpdateList(list)
	asserts.AssertReplicaSettingsUpdateList(list)
	return list
end

function asserts.AssertWriteRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected WriteRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertWriteRequest(v)
	end
end

--  
-- List of WriteRequest objects
function M.WriteRequests(list)
	asserts.AssertWriteRequests(list)
	return list
end

function asserts.AssertGlobalSecondaryIndexList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlobalSecondaryIndex(v)
	end
end

--  
-- List of GlobalSecondaryIndex objects
function M.GlobalSecondaryIndexList(list)
	asserts.AssertGlobalSecondaryIndexList(list)
	return list
end

function asserts.AssertReplicaUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicaUpdate(v)
	end
end

--  
-- List of ReplicaUpdate objects
function M.ReplicaUpdateList(list)
	asserts.AssertReplicaUpdateList(list)
	return list
end

function asserts.AssertGlobalTableList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalTableList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlobalTable(v)
	end
end

--  
-- List of GlobalTable objects
function M.GlobalTableList(list)
	asserts.AssertGlobalTableList(list)
	return list
end

function asserts.AssertConsumedCapacityMultiple(list)
	assert(list)
	assert(type(list) == "table", "Expected ConsumedCapacityMultiple to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConsumedCapacity(v)
	end
end

--  
-- List of ConsumedCapacity objects
function M.ConsumedCapacityMultiple(list)
	asserts.AssertConsumedCapacityMultiple(list)
	return list
end

function asserts.AssertReplicaGlobalSecondaryIndexSettingsDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaGlobalSecondaryIndexSettingsDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicaGlobalSecondaryIndexSettingsDescription(v)
	end
end

--  
-- List of ReplicaGlobalSecondaryIndexSettingsDescription objects
function M.ReplicaGlobalSecondaryIndexSettingsDescriptionList(list)
	asserts.AssertReplicaGlobalSecondaryIndexSettingsDescriptionList(list)
	return list
end

function asserts.AssertAttributeDefinitions(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeDefinitions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeDefinition(v)
	end
end

--  
-- List of AttributeDefinition objects
function M.AttributeDefinitions(list)
	asserts.AssertAttributeDefinitions(list)
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
			return "dynamodb.amazonaws.com"
		end
	end
	local ss = { "dynamodb" }
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
--- Call DescribeContinuousBackups asynchronously, invoking a callback when done
-- @param DescribeContinuousBackupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeContinuousBackupsAsync(DescribeContinuousBackupsInput, cb)
	assert(DescribeContinuousBackupsInput, "You must provide a DescribeContinuousBackupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeContinuousBackups",
	}
	for header,value in pairs(DescribeContinuousBackupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeContinuousBackupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeContinuousBackups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeContinuousBackupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeContinuousBackupsSync(DescribeContinuousBackupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeContinuousBackupsAsync(DescribeContinuousBackupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateContinuousBackups asynchronously, invoking a callback when done
-- @param UpdateContinuousBackupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateContinuousBackupsAsync(UpdateContinuousBackupsInput, cb)
	assert(UpdateContinuousBackupsInput, "You must provide a UpdateContinuousBackupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateContinuousBackups",
	}
	for header,value in pairs(UpdateContinuousBackupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateContinuousBackupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateContinuousBackups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateContinuousBackupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateContinuousBackupsSync(UpdateContinuousBackupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateContinuousBackupsAsync(UpdateContinuousBackupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBackup asynchronously, invoking a callback when done
-- @param DescribeBackupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBackupAsync(DescribeBackupInput, cb)
	assert(DescribeBackupInput, "You must provide a DescribeBackupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeBackup",
	}
	for header,value in pairs(DescribeBackupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBackupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBackupInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBackupSync(DescribeBackupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBackupAsync(DescribeBackupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTimeToLive asynchronously, invoking a callback when done
-- @param DescribeTimeToLiveInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTimeToLiveAsync(DescribeTimeToLiveInput, cb)
	assert(DescribeTimeToLiveInput, "You must provide a DescribeTimeToLiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeTimeToLive",
	}
	for header,value in pairs(DescribeTimeToLiveInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTimeToLiveInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTimeToLive synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTimeToLiveInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTimeToLiveSync(DescribeTimeToLiveInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTimeToLiveAsync(DescribeTimeToLiveInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBackup asynchronously, invoking a callback when done
-- @param DeleteBackupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBackupAsync(DeleteBackupInput, cb)
	assert(DeleteBackupInput, "You must provide a DeleteBackupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteBackup",
	}
	for header,value in pairs(DeleteBackupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBackupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBackupInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBackupSync(DeleteBackupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBackupAsync(DeleteBackupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGlobalTable asynchronously, invoking a callback when done
-- @param DescribeGlobalTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeGlobalTableAsync(DescribeGlobalTableInput, cb)
	assert(DescribeGlobalTableInput, "You must provide a DescribeGlobalTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeGlobalTable",
	}
	for header,value in pairs(DescribeGlobalTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGlobalTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGlobalTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGlobalTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeGlobalTableSync(DescribeGlobalTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGlobalTableAsync(DescribeGlobalTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTable asynchronously, invoking a callback when done
-- @param CreateTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTableAsync(CreateTableInput, cb)
	assert(CreateTableInput, "You must provide a CreateTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.CreateTable",
	}
	for header,value in pairs(CreateTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTableSync(CreateTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTableAsync(CreateTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreTableFromBackup asynchronously, invoking a callback when done
-- @param RestoreTableFromBackupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreTableFromBackupAsync(RestoreTableFromBackupInput, cb)
	assert(RestoreTableFromBackupInput, "You must provide a RestoreTableFromBackupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.RestoreTableFromBackup",
	}
	for header,value in pairs(RestoreTableFromBackupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreTableFromBackupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreTableFromBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreTableFromBackupInput
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreTableFromBackupSync(RestoreTableFromBackupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreTableFromBackupAsync(RestoreTableFromBackupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTimeToLive asynchronously, invoking a callback when done
-- @param UpdateTimeToLiveInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTimeToLiveAsync(UpdateTimeToLiveInput, cb)
	assert(UpdateTimeToLiveInput, "You must provide a UpdateTimeToLiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateTimeToLive",
	}
	for header,value in pairs(UpdateTimeToLiveInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTimeToLiveInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTimeToLive synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTimeToLiveInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTimeToLiveSync(UpdateTimeToLiveInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTimeToLiveAsync(UpdateTimeToLiveInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTable asynchronously, invoking a callback when done
-- @param UpdateTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTableAsync(UpdateTableInput, cb)
	assert(UpdateTableInput, "You must provide a UpdateTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateTable",
	}
	for header,value in pairs(UpdateTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTableSync(UpdateTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTableAsync(UpdateTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLimits asynchronously, invoking a callback when done
-- @param DescribeLimitsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLimitsAsync(DescribeLimitsInput, cb)
	assert(DescribeLimitsInput, "You must provide a DescribeLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeLimits",
	}
	for header,value in pairs(DescribeLimitsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLimitsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLimitsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLimitsSync(DescribeLimitsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLimitsAsync(DescribeLimitsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBackup asynchronously, invoking a callback when done
-- @param CreateBackupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBackupAsync(CreateBackupInput, cb)
	assert(CreateBackupInput, "You must provide a CreateBackupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.CreateBackup",
	}
	for header,value in pairs(CreateBackupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBackupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBackupInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBackupSync(CreateBackupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBackupAsync(CreateBackupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchWriteItem asynchronously, invoking a callback when done
-- @param BatchWriteItemInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchWriteItemAsync(BatchWriteItemInput, cb)
	assert(BatchWriteItemInput, "You must provide a BatchWriteItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.BatchWriteItem",
	}
	for header,value in pairs(BatchWriteItemInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchWriteItemInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchWriteItem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchWriteItemInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchWriteItemSync(BatchWriteItemInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchWriteItemAsync(BatchWriteItemInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpoints asynchronously, invoking a callback when done
-- @param DescribeEndpointsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEndpointsAsync(DescribeEndpointsRequest, cb)
	assert(DescribeEndpointsRequest, "You must provide a DescribeEndpointsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeEndpoints",
	}
	for header,value in pairs(DescribeEndpointsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEndpointsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEndpointsSync(DescribeEndpointsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointsAsync(DescribeEndpointsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceInput, cb)
	assert(TagResourceInput, "You must provide a TagResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.TagResource",
	}
	for header,value in pairs(TagResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreTableToPointInTime asynchronously, invoking a callback when done
-- @param RestoreTableToPointInTimeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreTableToPointInTimeAsync(RestoreTableToPointInTimeInput, cb)
	assert(RestoreTableToPointInTimeInput, "You must provide a RestoreTableToPointInTimeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.RestoreTableToPointInTime",
	}
	for header,value in pairs(RestoreTableToPointInTimeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreTableToPointInTimeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreTableToPointInTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreTableToPointInTimeInput
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreTableToPointInTimeSync(RestoreTableToPointInTimeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreTableToPointInTimeAsync(RestoreTableToPointInTimeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsOfResource asynchronously, invoking a callback when done
-- @param ListTagsOfResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsOfResourceAsync(ListTagsOfResourceInput, cb)
	assert(ListTagsOfResourceInput, "You must provide a ListTagsOfResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListTagsOfResource",
	}
	for header,value in pairs(ListTagsOfResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsOfResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsOfResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsOfResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsOfResourceSync(ListTagsOfResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsOfResourceAsync(ListTagsOfResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteItem asynchronously, invoking a callback when done
-- @param DeleteItemInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteItemAsync(DeleteItemInput, cb)
	assert(DeleteItemInput, "You must provide a DeleteItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteItem",
	}
	for header,value in pairs(DeleteItemInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteItemInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteItem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteItemInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteItemSync(DeleteItemInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteItemAsync(DeleteItemInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGlobalTables asynchronously, invoking a callback when done
-- @param ListGlobalTablesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGlobalTablesAsync(ListGlobalTablesInput, cb)
	assert(ListGlobalTablesInput, "You must provide a ListGlobalTablesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListGlobalTables",
	}
	for header,value in pairs(ListGlobalTablesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGlobalTablesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGlobalTables synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGlobalTablesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListGlobalTablesSync(ListGlobalTablesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGlobalTablesAsync(ListGlobalTablesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateItem asynchronously, invoking a callback when done
-- @param UpdateItemInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateItemAsync(UpdateItemInput, cb)
	assert(UpdateItemInput, "You must provide a UpdateItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateItem",
	}
	for header,value in pairs(UpdateItemInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateItemInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateItem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateItemInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateItemSync(UpdateItemInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateItemAsync(UpdateItemInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetItem asynchronously, invoking a callback when done
-- @param BatchGetItemInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetItemAsync(BatchGetItemInput, cb)
	assert(BatchGetItemInput, "You must provide a BatchGetItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.BatchGetItem",
	}
	for header,value in pairs(BatchGetItemInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetItemInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetItem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetItemInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetItemSync(BatchGetItemInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetItemAsync(BatchGetItemInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGlobalTableSettings asynchronously, invoking a callback when done
-- @param DescribeGlobalTableSettingsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeGlobalTableSettingsAsync(DescribeGlobalTableSettingsInput, cb)
	assert(DescribeGlobalTableSettingsInput, "You must provide a DescribeGlobalTableSettingsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeGlobalTableSettings",
	}
	for header,value in pairs(DescribeGlobalTableSettingsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGlobalTableSettingsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGlobalTableSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGlobalTableSettingsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeGlobalTableSettingsSync(DescribeGlobalTableSettingsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGlobalTableSettingsAsync(DescribeGlobalTableSettingsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTable asynchronously, invoking a callback when done
-- @param DescribeTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTableAsync(DescribeTableInput, cb)
	assert(DescribeTableInput, "You must provide a DescribeTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeTable",
	}
	for header,value in pairs(DescribeTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTableSync(DescribeTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTableAsync(DescribeTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTables asynchronously, invoking a callback when done
-- @param ListTablesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTablesAsync(ListTablesInput, cb)
	assert(ListTablesInput, "You must provide a ListTablesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListTables",
	}
	for header,value in pairs(ListTablesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTablesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTables synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTablesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTablesSync(ListTablesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTablesAsync(ListTablesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Query asynchronously, invoking a callback when done
-- @param QueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.QueryAsync(QueryInput, cb)
	assert(QueryInput, "You must provide a QueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.Query",
	}
	for header,value in pairs(QueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", QueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Query synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param QueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.QuerySync(QueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.QueryAsync(QueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTable asynchronously, invoking a callback when done
-- @param DeleteTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTableAsync(DeleteTableInput, cb)
	assert(DeleteTableInput, "You must provide a DeleteTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteTable",
	}
	for header,value in pairs(DeleteTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTableSync(DeleteTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTableAsync(DeleteTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceInput, cb)
	assert(UntagResourceInput, "You must provide a UntagResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UntagResource",
	}
	for header,value in pairs(UntagResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Scan asynchronously, invoking a callback when done
-- @param ScanInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ScanAsync(ScanInput, cb)
	assert(ScanInput, "You must provide a ScanInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.Scan",
	}
	for header,value in pairs(ScanInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ScanInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Scan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ScanInput
-- @return response
-- @return error_type
-- @return error_message
function M.ScanSync(ScanInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ScanAsync(ScanInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGlobalTable asynchronously, invoking a callback when done
-- @param UpdateGlobalTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGlobalTableAsync(UpdateGlobalTableInput, cb)
	assert(UpdateGlobalTableInput, "You must provide a UpdateGlobalTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateGlobalTable",
	}
	for header,value in pairs(UpdateGlobalTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGlobalTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGlobalTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGlobalTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGlobalTableSync(UpdateGlobalTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGlobalTableAsync(UpdateGlobalTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBackups asynchronously, invoking a callback when done
-- @param ListBackupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBackupsAsync(ListBackupsInput, cb)
	assert(ListBackupsInput, "You must provide a ListBackupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListBackups",
	}
	for header,value in pairs(ListBackupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListBackupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBackups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBackupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListBackupsSync(ListBackupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBackupsAsync(ListBackupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGlobalTableSettings asynchronously, invoking a callback when done
-- @param UpdateGlobalTableSettingsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGlobalTableSettingsAsync(UpdateGlobalTableSettingsInput, cb)
	assert(UpdateGlobalTableSettingsInput, "You must provide a UpdateGlobalTableSettingsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateGlobalTableSettings",
	}
	for header,value in pairs(UpdateGlobalTableSettingsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGlobalTableSettingsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGlobalTableSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGlobalTableSettingsInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGlobalTableSettingsSync(UpdateGlobalTableSettingsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGlobalTableSettingsAsync(UpdateGlobalTableSettingsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGlobalTable asynchronously, invoking a callback when done
-- @param CreateGlobalTableInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateGlobalTableAsync(CreateGlobalTableInput, cb)
	assert(CreateGlobalTableInput, "You must provide a CreateGlobalTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.CreateGlobalTable",
	}
	for header,value in pairs(CreateGlobalTableInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateGlobalTableInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGlobalTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGlobalTableInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateGlobalTableSync(CreateGlobalTableInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGlobalTableAsync(CreateGlobalTableInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetItem asynchronously, invoking a callback when done
-- @param GetItemInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetItemAsync(GetItemInput, cb)
	assert(GetItemInput, "You must provide a GetItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.GetItem",
	}
	for header,value in pairs(GetItemInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetItemInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetItem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetItemInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetItemSync(GetItemInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetItemAsync(GetItemInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutItem asynchronously, invoking a callback when done
-- @param PutItemInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutItemAsync(PutItemInput, cb)
	assert(PutItemInput, "You must provide a PutItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.PutItem",
	}
	for header,value in pairs(PutItemInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutItemInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutItem synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutItemInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutItemSync(PutItemInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutItemAsync(PutItemInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
