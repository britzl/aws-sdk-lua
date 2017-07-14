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

local PutItemOutput_keys = { "Attributes" = true, "ItemCollectionMetrics" = true, "ConsumedCapacity" = true, nil }

function M.AssertPutItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertAttributeMap(struct["Attributes"]) end
	if struct["ItemCollectionMetrics"] then M.AssertItemCollectionMetrics(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(PutItemOutput_keys[k], "PutItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemOutput
-- <p>Represents the output of a <code>PutItem</code> operation.</p>
-- @param Attributes [AttributeMap] <p>The attribute values as they appeared before the <code>PutItem</code> operation, but only if <code>ReturnValues</code> is specified as <code>ALL_OLD</code> in the request. Each element consists of an attribute name and an attribute value.</p>
-- @param ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>PutItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>PutItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.PutItemOutput(Attributes, ItemCollectionMetrics, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutItemOutput")
	local t = { 
		["Attributes"] = Attributes,
		["ItemCollectionMetrics"] = ItemCollectionMetrics,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertPutItemOutput(t)
	return t
end

local PutItemInput_keys = { "ConditionalOperator" = true, "ExpressionAttributeNames" = true, "ReturnValues" = true, "ConditionExpression" = true, "TableName" = true, "ReturnItemCollectionMetrics" = true, "ReturnConsumedCapacity" = true, "Item" = true, "ExpressionAttributeValues" = true, "Expected" = true, nil }

function M.AssertPutItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Item"], "Expected key Item to exist in table")
	if struct["ConditionalOperator"] then M.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["ReturnValues"] then M.AssertReturnValue(struct["ReturnValues"]) end
	if struct["ConditionExpression"] then M.AssertConditionExpression(struct["ConditionExpression"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ReturnItemCollectionMetrics"] then M.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["Item"] then M.AssertPutItemInputAttributeMap(struct["Item"]) end
	if struct["ExpressionAttributeValues"] then M.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["Expected"] then M.AssertExpectedAttributeMap(struct["Expected"]) end
	for k,_ in pairs(struct) do
		assert(PutItemInput_keys[k], "PutItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemInput
-- <p>Represents the input of a <code>PutItem</code> operation.</p>
-- @param ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared before they were updated with the <code>PutItem</code> request. For <code>PutItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value pair, then the content of the old item is returned.</p> </li> </ul> <note> <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations; however, <code>PutItem</code> does not recognize any values other than <code>NONE</code> or <code>ALL_OLD</code>.</p> </note>
-- @param ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional <code>PutItem</code> operation to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table to contain the item.</p>
-- @param ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>PutItem</code> operation.</p>
-- @param Item [PutItemInputAttributeMap] <p>A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.</p> <p>You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> <p>For more information about primary keys, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code> object.</p>
-- @param ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpresssion</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
-- Required parameter: Item
function M.PutItemInput(ConditionalOperator, ExpressionAttributeNames, ReturnValues, ConditionExpression, TableName, ReturnItemCollectionMetrics, ReturnConsumedCapacity, Item, ExpressionAttributeValues, Expected, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutItemInput")
	local t = { 
		["ConditionalOperator"] = ConditionalOperator,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
		["ReturnValues"] = ReturnValues,
		["ConditionExpression"] = ConditionExpression,
		["TableName"] = TableName,
		["ReturnItemCollectionMetrics"] = ReturnItemCollectionMetrics,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["Item"] = Item,
		["ExpressionAttributeValues"] = ExpressionAttributeValues,
		["Expected"] = Expected,
	}
	M.AssertPutItemInput(t)
	return t
end

local ListTagsOfResourceInput_keys = { "ResourceArn" = true, "NextToken" = true, nil }

function M.AssertListTagsOfResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsOfResourceInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArnString(struct["ResourceArn"]) end
	if struct["NextToken"] then M.AssertNextTokenString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsOfResourceInput_keys[k], "ListTagsOfResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsOfResourceInput
--  
-- @param ResourceArn [ResourceArnString] <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).</p>
-- @param NextToken [NextTokenString] <p>An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.</p>
-- Required parameter: ResourceArn
function M.ListTagsOfResourceInput(ResourceArn, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsOfResourceInput")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["NextToken"] = NextToken,
	}
	M.AssertListTagsOfResourceInput(t)
	return t
end

local UntagResourceInput_keys = { "ResourceArn" = true, "TagKeys" = true, nil }

function M.AssertUntagResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArnString(struct["ResourceArn"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceInput_keys[k], "UntagResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceInput
--  
-- @param ResourceArn [ResourceArnString] <p>The Amazon DyanamoDB resource the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
-- @param TagKeys [TagKeyList] <p>A list of tag keys. Existing tags of the resource whose keys are members of this list will be removed from the Amazon DynamoDB resource.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.UntagResourceInput(ResourceArn, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceInput")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["TagKeys"] = TagKeys,
	}
	M.AssertUntagResourceInput(t)
	return t
end

local KeySchemaElement_keys = { "KeyType" = true, "AttributeName" = true, nil }

function M.AssertKeySchemaElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeySchemaElement to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["KeyType"], "Expected key KeyType to exist in table")
	if struct["KeyType"] then M.AssertKeyType(struct["KeyType"]) end
	if struct["AttributeName"] then M.AssertKeySchemaAttributeName(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(KeySchemaElement_keys[k], "KeySchemaElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeySchemaElement
-- <p>Represents <i>a single element</i> of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.</p> <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For example, a simple primary key would be represented by one <code>KeySchemaElement</code> (for the partition key). A composite primary key would require one <code>KeySchemaElement</code> for the partition key, and another <code>KeySchemaElement</code> for the sort key.</p> <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested attribute). The data type must be one of String, Number, or Binary. The attribute cannot be nested within a List or a Map.</p>
-- @param KeyType [KeyType] <p>The role that this key attribute will assume:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param AttributeName [KeySchemaAttributeName] <p>The name of a key attribute.</p>
-- Required parameter: AttributeName
-- Required parameter: KeyType
function M.KeySchemaElement(KeyType, AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeySchemaElement")
	local t = { 
		["KeyType"] = KeyType,
		["AttributeName"] = AttributeName,
	}
	M.AssertKeySchemaElement(t)
	return t
end

local BatchWriteItemOutput_keys = { "UnprocessedItems" = true, "ItemCollectionMetrics" = true, "ConsumedCapacity" = true, nil }

function M.AssertBatchWriteItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteItemOutput to be of type 'table'")
	if struct["UnprocessedItems"] then M.AssertBatchWriteItemRequestMap(struct["UnprocessedItems"]) end
	if struct["ItemCollectionMetrics"] then M.AssertItemCollectionMetricsPerTable(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacityMultiple(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteItemOutput_keys[k], "BatchWriteItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteItemOutput
-- <p>Represents the output of a <code>BatchWriteItem</code> operation.</p>
-- @param UnprocessedItems [BatchWriteItemRequestMap] <p>A map of tables and requests against those tables that were not processed. The <code>UnprocessedItems</code> value is in the same form as <code>RequestItems</code>, so you can provide this value directly to a subsequent <code>BatchGetItem</code> operation. For more information, see <code>RequestItems</code> in the Request Parameters section.</p> <p>Each <code>UnprocessedItems</code> entry consists of a table name and, for that table, a list of operations to perform (<code>DeleteRequest</code> or <code>PutRequest</code>).</p> <ul> <li> <p> <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the specified item. The item to be deleted is identified by a <code>Key</code> subelement:</p> <ul> <li> <p> <code>Key</code> - A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value.</p> </li> </ul> </li> <li> <p> <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the specified item. The item to be put is identified by an <code>Item</code> subelement:</p> <ul> <li> <p> <code>Item</code> - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a <code>ValidationException</code> exception.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> </li> </ul> </li> </ul> <p>If there are no unprocessed items remaining, the response contains an empty <code>UnprocessedItems</code> map.</p>
-- @param ItemCollectionMetrics [ItemCollectionMetricsPerTable] <p>A list of tables that were processed by <code>BatchWriteItem</code> and, for each table, information about any item collections that were affected by individual <code>DeleteItem</code> or <code>PutItem</code> operations.</p> <p>Each entry consists of the following subelements:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, expressed in GB. This is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on the table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param ConsumedCapacity [ConsumedCapacityMultiple] <p>The capacity units consumed by the entire <code>BatchWriteItem</code> operation.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>TableName</code> - The table that consumed the provisioned throughput.</p> </li> <li> <p> <code>CapacityUnits</code> - The total number of capacity units consumed.</p> </li> </ul>
function M.BatchWriteItemOutput(UnprocessedItems, ItemCollectionMetrics, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteItemOutput")
	local t = { 
		["UnprocessedItems"] = UnprocessedItems,
		["ItemCollectionMetrics"] = ItemCollectionMetrics,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertBatchWriteItemOutput(t)
	return t
end

local UpdateGlobalSecondaryIndexAction_keys = { "ProvisionedThroughput" = true, "IndexName" = true, nil }

function M.AssertUpdateGlobalSecondaryIndexAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGlobalSecondaryIndexAction to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGlobalSecondaryIndexAction_keys[k], "UpdateGlobalSecondaryIndexAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGlobalSecondaryIndexAction
-- <p>Represents the new provisioned throughput settings to be applied to a global secondary index.</p>
-- @param ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param IndexName [IndexName] <p>The name of the global secondary index to be updated.</p>
-- Required parameter: IndexName
-- Required parameter: ProvisionedThroughput
function M.UpdateGlobalSecondaryIndexAction(ProvisionedThroughput, IndexName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGlobalSecondaryIndexAction")
	local t = { 
		["ProvisionedThroughput"] = ProvisionedThroughput,
		["IndexName"] = IndexName,
	}
	M.AssertUpdateGlobalSecondaryIndexAction(t)
	return t
end

local BatchGetItemInput_keys = { "RequestItems" = true, "ReturnConsumedCapacity" = true, nil }

function M.AssertBatchGetItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetItemInput to be of type 'table'")
	assert(struct["RequestItems"], "Expected key RequestItems to exist in table")
	if struct["RequestItems"] then M.AssertBatchGetRequestMap(struct["RequestItems"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetItemInput_keys[k], "BatchGetItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetItemInput
-- <p>Represents the input of a <code>BatchGetItem</code> operation.</p>
-- @param RequestItems [BatchGetRequestMap] <p>A map of one or more table names and, for each table, a map that describes one or more items to retrieve from that table. Each table name can be used only once per <code>BatchGetItem</code> request.</p> <p>Each element in the map of items to retrieve consists of the following:</p> <ul> <li> <p> <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read is used; if <code>false</code> (the default), an eventually consistent read is used.</p> </li> <li> <p> <code>ExpressionAttributeNames</code> - One or more substitution tokens for attribute names in the <code>ProjectionExpression</code> parameter. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p> <code>Keys</code> - An array of primary key attribute values that define specific items in the table. For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide the partition key value. For a composite key, you must provide <i>both</i> the partition key value and the sort key value.</p> </li> <li> <p> <code>ProjectionExpression</code> - A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p> <code>AttributesToGet</code> - This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p> </li> </ul>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>BatchGetItem</code> operation.</p>
-- Required parameter: RequestItems
function M.BatchGetItemInput(RequestItems, ReturnConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetItemInput")
	local t = { 
		["RequestItems"] = RequestItems,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
	}
	M.AssertBatchGetItemInput(t)
	return t
end

local GetItemInput_keys = { "ConsistentRead" = true, "ProjectionExpression" = true, "ExpressionAttributeNames" = true, "TableName" = true, "ReturnConsumedCapacity" = true, "AttributesToGet" = true, "Key" = true, nil }

function M.AssertGetItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ConsistentRead"] then M.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["ProjectionExpression"] then M.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["AttributesToGet"] then M.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(GetItemInput_keys[k], "GetItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetItemInput
-- <p>Represents the input of a <code>GetItem</code> operation.</p>
-- @param ConsistentRead [ConsistentRead] <p>Determines the read consistency model: If set to <code>true</code>, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.</p>
-- @param ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table containing the requested item.</p>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>GetItem</code> operation.</p>
-- @param AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Key [Key] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the primary key of the item to retrieve.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- Required parameter: TableName
-- Required parameter: Key
function M.GetItemInput(ConsistentRead, ProjectionExpression, ExpressionAttributeNames, TableName, ReturnConsumedCapacity, AttributesToGet, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetItemInput")
	local t = { 
		["ConsistentRead"] = ConsistentRead,
		["ProjectionExpression"] = ProjectionExpression,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
		["TableName"] = TableName,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["AttributesToGet"] = AttributesToGet,
		["Key"] = Key,
	}
	M.AssertGetItemInput(t)
	return t
end

local ProvisionedThroughputExceededException_keys = { "message" = true, nil }

function M.AssertProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionedThroughputExceededException_keys[k], "ProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputExceededException
-- <p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param message [ErrorMessage] <p>You exceeded your maximum allowed provisioned throughput.</p>
function M.ProvisionedThroughputExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertProvisionedThroughputExceededException(t)
	return t
end

local ListTablesOutput_keys = { "LastEvaluatedTableName" = true, "TableNames" = true, nil }

function M.AssertListTablesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTablesOutput to be of type 'table'")
	if struct["LastEvaluatedTableName"] then M.AssertTableName(struct["LastEvaluatedTableName"]) end
	if struct["TableNames"] then M.AssertTableNameList(struct["TableNames"]) end
	for k,_ in pairs(struct) do
		assert(ListTablesOutput_keys[k], "ListTablesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTablesOutput
-- <p>Represents the output of a <code>ListTables</code> operation.</p>
-- @param LastEvaluatedTableName [TableName] <p>The name of the last table in the current page of results. Use this value as the <code>ExclusiveStartTableName</code> in a new request to obtain the next page of results, until all the table names are returned.</p> <p>If you do not receive a <code>LastEvaluatedTableName</code> value in the response, this means that there are no more table names to be retrieved.</p>
-- @param TableNames [TableNameList] <p>The names of the tables associated with the current account at the current endpoint. The maximum size of this array is 100.</p> <p>If <code>LastEvaluatedTableName</code> also appears in the output, you can use this value as the <code>ExclusiveStartTableName</code> parameter in a subsequent <code>ListTables</code> request and obtain the next page of results.</p>
function M.ListTablesOutput(LastEvaluatedTableName, TableNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTablesOutput")
	local t = { 
		["LastEvaluatedTableName"] = LastEvaluatedTableName,
		["TableNames"] = TableNames,
	}
	M.AssertListTablesOutput(t)
	return t
end

local GetItemOutput_keys = { "Item" = true, "ConsumedCapacity" = true, nil }

function M.AssertGetItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetItemOutput to be of type 'table'")
	if struct["Item"] then M.AssertAttributeMap(struct["Item"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(GetItemOutput_keys[k], "GetItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetItemOutput
-- <p>Represents the output of a <code>GetItem</code> operation.</p>
-- @param Item [AttributeMap] <p>A map of attribute names to <code>AttributeValue</code> objects, as specified by <code>ProjectionExpression</code>.</p>
-- @param ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>GetItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.GetItemOutput(Item, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetItemOutput")
	local t = { 
		["Item"] = Item,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertGetItemOutput(t)
	return t
end

local KeysAndAttributes_keys = { "Keys" = true, "ConsistentRead" = true, "AttributesToGet" = true, "ProjectionExpression" = true, "ExpressionAttributeNames" = true, nil }

function M.AssertKeysAndAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeysAndAttributes to be of type 'table'")
	assert(struct["Keys"], "Expected key Keys to exist in table")
	if struct["Keys"] then M.AssertKeyList(struct["Keys"]) end
	if struct["ConsistentRead"] then M.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["AttributesToGet"] then M.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["ProjectionExpression"] then M.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(KeysAndAttributes_keys[k], "KeysAndAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeysAndAttributes
-- <p>Represents a set of primary keys and, for each key, the attributes to retrieve from the table.</p> <p>For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide the partition key. For a composite primary key, you must provide <i>both</i> the partition key and the sort key.</p>
-- @param Keys [KeyList] <p>The primary key attribute values that define the items and the attributes associated with the items.</p>
-- @param ConsistentRead [ConsistentRead] <p>The consistency of a read operation. If set to <code>true</code>, then a strongly consistent read is used; otherwise, an eventually consistent read is used.</p>
-- @param AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy Conditional Parameters</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the <code>ProjectionExpression</code> must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: Keys
function M.KeysAndAttributes(Keys, ConsistentRead, AttributesToGet, ProjectionExpression, ExpressionAttributeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeysAndAttributes")
	local t = { 
		["Keys"] = Keys,
		["ConsistentRead"] = ConsistentRead,
		["AttributesToGet"] = AttributesToGet,
		["ProjectionExpression"] = ProjectionExpression,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
	}
	M.AssertKeysAndAttributes(t)
	return t
end

local InternalServerError_keys = { "message" = true, nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An error occurred on the server side.</p>
-- @param message [ErrorMessage] <p>The server encountered an internal error trying to fulfill the request.</p>
function M.InternalServerError(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalServerError(t)
	return t
end

local CreateTableInput_keys = { "GlobalSecondaryIndexes" = true, "AttributeDefinitions" = true, "LocalSecondaryIndexes" = true, "ProvisionedThroughput" = true, "TableName" = true, "StreamSpecification" = true, "KeySchema" = true, nil }

function M.AssertCreateTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTableInput to be of type 'table'")
	assert(struct["AttributeDefinitions"], "Expected key AttributeDefinitions to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["GlobalSecondaryIndexes"] then M.AssertGlobalSecondaryIndexList(struct["GlobalSecondaryIndexes"]) end
	if struct["AttributeDefinitions"] then M.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	if struct["LocalSecondaryIndexes"] then M.AssertLocalSecondaryIndexList(struct["LocalSecondaryIndexes"]) end
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["StreamSpecification"] then M.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	for k,_ in pairs(struct) do
		assert(CreateTableInput_keys[k], "CreateTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableInput
-- <p>Represents the input of a <code>CreateTable</code> operation.</p>
-- @param GlobalSecondaryIndexes [GlobalSecondaryIndexList] <p>One or more global secondary indexes (the maximum is five) to be created on the table. Each global secondary index in the array includes the following:</p> <ul> <li> <p> <code>IndexName</code> - The name of the global secondary index. Must be unique only for this table.</p> <p/> </li> <li> <p> <code>KeySchema</code> - Specifies the key schema for the global secondary index.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>ProvisionedThroughput</code> - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units.</p> </li> </ul>
-- @param AttributeDefinitions [AttributeDefinitions] <p>An array of attributes that describe the key schema for the table and indexes.</p>
-- @param LocalSecondaryIndexes [LocalSecondaryIndexList] <p>One or more local secondary indexes (the maximum is five) to be created on the table. Each index is scoped to a given partition key value. There is a 10 GB size limit per partition key value; otherwise, the size of a local secondary index is unconstrained.</p> <p>Each local secondary index in the array includes the following:</p> <ul> <li> <p> <code>IndexName</code> - The name of the local secondary index. Must be unique only for this table.</p> <p/> </li> <li> <p> <code>KeySchema</code> - Specifies the key schema for the local secondary index. The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> </ul>
-- @param ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the <code>UpdateTable</code> operation.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table to create.</p>
-- @param StreamSpecification [StreamSpecification] <p>The settings for DynamoDB Streams on the table. These settings consist of:</p> <ul> <li> <p> <code>StreamEnabled</code> - Indicates whether Streams is to be enabled (true) or disabled (false).</p> </li> <li> <p> <code>StreamViewType</code> - When an item in the table is modified, <code>StreamViewType</code> determines what information is written to the table's stream. Valid values for <code>StreamViewType</code> are:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the key attributes of the modified item are written to the stream.</p> </li> <li> <p> <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified, is written to the stream.</p> </li> <li> <p> <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified, is written to the stream.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the item are written to the stream.</p> </li> </ul> </li> </ul>
-- @param KeySchema [KeySchema] <p>Specifies the attributes that make up the primary key for a table or an index. The attributes in <code>KeySchema</code> must also be defined in the <code>AttributeDefinitions</code> array. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Each <code>KeySchemaElement</code> in the array is composed of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of this key attribute.</p> </li> <li> <p> <code>KeyType</code> - The role that the key attribute will assume:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note> <p>For a simple primary key (partition key), you must provide exactly one element with a <code>KeyType</code> of <code>HASH</code>.</p> <p>For a composite primary key (partition key and sort key), you must provide exactly two elements, in this order: The first element must have a <code>KeyType</code> of <code>HASH</code>, and the second element must have a <code>KeyType</code> of <code>RANGE</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Specifying the Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: AttributeDefinitions
-- Required parameter: TableName
-- Required parameter: KeySchema
-- Required parameter: ProvisionedThroughput
function M.CreateTableInput(GlobalSecondaryIndexes, AttributeDefinitions, LocalSecondaryIndexes, ProvisionedThroughput, TableName, StreamSpecification, KeySchema, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTableInput")
	local t = { 
		["GlobalSecondaryIndexes"] = GlobalSecondaryIndexes,
		["AttributeDefinitions"] = AttributeDefinitions,
		["LocalSecondaryIndexes"] = LocalSecondaryIndexes,
		["ProvisionedThroughput"] = ProvisionedThroughput,
		["TableName"] = TableName,
		["StreamSpecification"] = StreamSpecification,
		["KeySchema"] = KeySchema,
	}
	M.AssertCreateTableInput(t)
	return t
end

local ListTagsOfResourceOutput_keys = { "NextToken" = true, "Tags" = true, nil }

function M.AssertListTagsOfResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsOfResourceOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextTokenString(struct["NextToken"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsOfResourceOutput_keys[k], "ListTagsOfResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsOfResourceOutput
--  
-- @param NextToken [NextTokenString] <p>If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.</p>
-- @param Tags [TagList] <p>The tags currently associated with the Amazon DynamoDB resource.</p>
function M.ListTagsOfResourceOutput(NextToken, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsOfResourceOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Tags"] = Tags,
	}
	M.AssertListTagsOfResourceOutput(t)
	return t
end

local DescribeTimeToLiveInput_keys = { "TableName" = true, nil }

function M.AssertDescribeTimeToLiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeToLiveInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTimeToLiveInput_keys[k], "DescribeTimeToLiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeToLiveInput
--  
-- @param TableName [TableName] <p>The name of the table to be described.</p>
-- Required parameter: TableName
function M.DescribeTimeToLiveInput(TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeToLiveInput")
	local t = { 
		["TableName"] = TableName,
	}
	M.AssertDescribeTimeToLiveInput(t)
	return t
end

local AttributeValue_keys = { "B" = true, "NULL" = true, "SS" = true, "M" = true, "L" = true, "N" = true, "S" = true, "BOOL" = true, "BS" = true, "NS" = true, nil }

function M.AssertAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValue to be of type 'table'")
	if struct["B"] then M.AssertBinaryAttributeValue(struct["B"]) end
	if struct["NULL"] then M.AssertNullAttributeValue(struct["NULL"]) end
	if struct["SS"] then M.AssertStringSetAttributeValue(struct["SS"]) end
	if struct["M"] then M.AssertMapAttributeValue(struct["M"]) end
	if struct["L"] then M.AssertListAttributeValue(struct["L"]) end
	if struct["N"] then M.AssertNumberAttributeValue(struct["N"]) end
	if struct["S"] then M.AssertStringAttributeValue(struct["S"]) end
	if struct["BOOL"] then M.AssertBooleanAttributeValue(struct["BOOL"]) end
	if struct["BS"] then M.AssertBinarySetAttributeValue(struct["BS"]) end
	if struct["NS"] then M.AssertNumberSetAttributeValue(struct["NS"]) end
	for k,_ in pairs(struct) do
		assert(AttributeValue_keys[k], "AttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValue
-- <p>Represents the data for an attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param B [BinaryAttributeValue] <p>An attribute of type Binary. For example:</p> <p> <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code> </p>
-- @param NULL [NullAttributeValue] <p>An attribute of type Null. For example:</p> <p> <code>"NULL": true</code> </p>
-- @param SS [StringSetAttributeValue] <p>An attribute of type String Set. For example:</p> <p> <code>"SS": ["Giraffe", "Hippo" ,"Zebra"]</code> </p>
-- @param M [MapAttributeValue] <p>An attribute of type Map. For example:</p> <p> <code>"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}</code> </p>
-- @param L [ListAttributeValue] <p>An attribute of type List. For example:</p> <p> <code>"L": ["Cookies", "Coffee", 3.14159]</code> </p>
-- @param N [NumberAttributeValue] <p>An attribute of type Number. For example:</p> <p> <code>"N": "123.45"</code> </p> <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
-- @param S [StringAttributeValue] <p>An attribute of type String. For example:</p> <p> <code>"S": "Hello"</code> </p>
-- @param BOOL [BooleanAttributeValue] <p>An attribute of type Boolean. For example:</p> <p> <code>"BOOL": true</code> </p>
-- @param BS [BinarySetAttributeValue] <p>An attribute of type Binary Set. For example:</p> <p> <code>"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]</code> </p>
-- @param NS [NumberSetAttributeValue] <p>An attribute of type Number Set. For example:</p> <p> <code>"NS": ["42.2", "-19", "7.5", "3.14"]</code> </p> <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
function M.AttributeValue(B, NULL, SS, M, L, N, S, BOOL, BS, NS, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeValue")
	local t = { 
		["B"] = B,
		["NULL"] = NULL,
		["SS"] = SS,
		["M"] = M,
		["L"] = L,
		["N"] = N,
		["S"] = S,
		["BOOL"] = BOOL,
		["BS"] = BS,
		["NS"] = NS,
	}
	M.AssertAttributeValue(t)
	return t
end

local LocalSecondaryIndex_keys = { "KeySchema" = true, "IndexName" = true, "Projection" = true, nil }

function M.AssertLocalSecondaryIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LocalSecondaryIndex to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["Projection"], "Expected key Projection to exist in table")
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then M.AssertProjection(struct["Projection"]) end
	for k,_ in pairs(struct) do
		assert(LocalSecondaryIndex_keys[k], "LocalSecondaryIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LocalSecondaryIndex
-- <p>Represents the properties of a local secondary index.</p>
-- @param KeySchema [KeySchema] <p>The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param IndexName [IndexName] <p>The name of the local secondary index. The name must be unique among all other indexes on this table.</p>
-- @param Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- Required parameter: IndexName
-- Required parameter: KeySchema
-- Required parameter: Projection
function M.LocalSecondaryIndex(KeySchema, IndexName, Projection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LocalSecondaryIndex")
	local t = { 
		["KeySchema"] = KeySchema,
		["IndexName"] = IndexName,
		["Projection"] = Projection,
	}
	M.AssertLocalSecondaryIndex(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValueString(struct["Value"]) end
	if struct["Key"] then M.AssertTagKeyString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single DynamoDB table. </p> <p> AWS-assigned tag names and values are automatically assigned the aws: prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix user: in the Cost Allocation Report. You cannot backdate the application of a tag. </p> <p>For an overview on tagging DynamoDB resources, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Value [TagValueString] <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
-- @param Key [TagKeyString] <p>The key of the tag.Tag keys are case sensitive. Each DynamoDB table can only have up to one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value. </p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local GlobalSecondaryIndexDescription_keys = { "IndexSizeBytes" = true, "IndexName" = true, "Projection" = true, "ProvisionedThroughput" = true, "IndexStatus" = true, "Backfilling" = true, "KeySchema" = true, "IndexArn" = true, "ItemCount" = true, nil }

function M.AssertGlobalSecondaryIndexDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndexDescription to be of type 'table'")
	if struct["IndexSizeBytes"] then M.AssertLong(struct["IndexSizeBytes"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then M.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughputDescription(struct["ProvisionedThroughput"]) end
	if struct["IndexStatus"] then M.AssertIndexStatus(struct["IndexStatus"]) end
	if struct["Backfilling"] then M.AssertBackfilling(struct["Backfilling"]) end
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexArn"] then M.AssertString(struct["IndexArn"]) end
	if struct["ItemCount"] then M.AssertLong(struct["ItemCount"]) end
	for k,_ in pairs(struct) do
		assert(GlobalSecondaryIndexDescription_keys[k], "GlobalSecondaryIndexDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndexDescription
-- <p>Represents the properties of a global secondary index.</p>
-- @param IndexSizeBytes [Long] <p>The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param IndexName [IndexName] <p>The name of the global secondary index.</p>
-- @param Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @param ProvisionedThroughput [ProvisionedThroughputDescription] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param IndexStatus [IndexStatus] <p>The current state of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The index is ready for use.</p> </li> </ul>
-- @param Backfilling [Backfilling] <p>Indicates whether the index is currently backfilling. <i>Backfilling</i> is the process of reading items from the table and determining whether they can be added to the index. (Not all items will qualify: For example, a partition key cannot have any duplicate values.) If an item can be added to the index, DynamoDB will do so. After all items have been processed, the backfilling operation is complete and <code>Backfilling</code> is false.</p> <note> <p>For indexes that were created during a <code>CreateTable</code> operation, the <code>Backfilling</code> attribute does not appear in the <code>DescribeTable</code> output.</p> </note>
-- @param KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param IndexArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
-- @param ItemCount [Long] <p>The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
function M.GlobalSecondaryIndexDescription(IndexSizeBytes, IndexName, Projection, ProvisionedThroughput, IndexStatus, Backfilling, KeySchema, IndexArn, ItemCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSecondaryIndexDescription")
	local t = { 
		["IndexSizeBytes"] = IndexSizeBytes,
		["IndexName"] = IndexName,
		["Projection"] = Projection,
		["ProvisionedThroughput"] = ProvisionedThroughput,
		["IndexStatus"] = IndexStatus,
		["Backfilling"] = Backfilling,
		["KeySchema"] = KeySchema,
		["IndexArn"] = IndexArn,
		["ItemCount"] = ItemCount,
	}
	M.AssertGlobalSecondaryIndexDescription(t)
	return t
end

local CreateTableOutput_keys = { "TableDescription" = true, nil }

function M.AssertCreateTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTableOutput to be of type 'table'")
	if struct["TableDescription"] then M.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(CreateTableOutput_keys[k], "CreateTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableOutput
-- <p>Represents the output of a <code>CreateTable</code> operation.</p>
-- @param TableDescription [TableDescription] <p>Represents the properties of the table.</p>
function M.CreateTableOutput(TableDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTableOutput")
	local t = { 
		["TableDescription"] = TableDescription,
	}
	M.AssertCreateTableOutput(t)
	return t
end

local GlobalSecondaryIndex_keys = { "KeySchema" = true, "IndexName" = true, "Projection" = true, "ProvisionedThroughput" = true, nil }

function M.AssertGlobalSecondaryIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndex to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["Projection"], "Expected key Projection to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then M.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	for k,_ in pairs(struct) do
		assert(GlobalSecondaryIndex_keys[k], "GlobalSecondaryIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndex
-- <p>Represents the properties of a global secondary index.</p>
-- @param KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param IndexName [IndexName] <p>The name of the global secondary index. The name must be unique among all other indexes on this table.</p>
-- @param Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @param ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: IndexName
-- Required parameter: KeySchema
-- Required parameter: Projection
-- Required parameter: ProvisionedThroughput
function M.GlobalSecondaryIndex(KeySchema, IndexName, Projection, ProvisionedThroughput, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSecondaryIndex")
	local t = { 
		["KeySchema"] = KeySchema,
		["IndexName"] = IndexName,
		["Projection"] = Projection,
		["ProvisionedThroughput"] = ProvisionedThroughput,
	}
	M.AssertGlobalSecondaryIndex(t)
	return t
end

local UpdateTimeToLiveOutput_keys = { "TimeToLiveSpecification" = true, nil }

function M.AssertUpdateTimeToLiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTimeToLiveOutput to be of type 'table'")
	if struct["TimeToLiveSpecification"] then M.AssertTimeToLiveSpecification(struct["TimeToLiveSpecification"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTimeToLiveOutput_keys[k], "UpdateTimeToLiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTimeToLiveOutput
--  
-- @param TimeToLiveSpecification [TimeToLiveSpecification] <p>Represents the output of an <code>UpdateTimeToLive</code> operation.</p>
function M.UpdateTimeToLiveOutput(TimeToLiveSpecification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTimeToLiveOutput")
	local t = { 
		["TimeToLiveSpecification"] = TimeToLiveSpecification,
	}
	M.AssertUpdateTimeToLiveOutput(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The operation tried to access a nonexistent table or index. The resource might not be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
-- @param message [ErrorMessage] <p>The resource which is being requested does not exist.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local StreamSpecification_keys = { "StreamViewType" = true, "StreamEnabled" = true, nil }

function M.AssertStreamSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamSpecification to be of type 'table'")
	if struct["StreamViewType"] then M.AssertStreamViewType(struct["StreamViewType"]) end
	if struct["StreamEnabled"] then M.AssertStreamEnabled(struct["StreamEnabled"]) end
	for k,_ in pairs(struct) do
		assert(StreamSpecification_keys[k], "StreamSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamSpecification
-- <p>Represents the DynamoDB Streams configuration for a table in DynamoDB.</p>
-- @param StreamViewType [StreamViewType] <p> When an item in the table is modified, <code>StreamViewType</code> determines what information is written to the stream for this table. Valid values for <code>StreamViewType</code> are:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the key attributes of the modified item are written to the stream.</p> </li> <li> <p> <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified, is written to the stream.</p> </li> <li> <p> <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified, is written to the stream.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the item are written to the stream.</p> </li> </ul>
-- @param StreamEnabled [StreamEnabled] <p>Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the table.</p>
function M.StreamSpecification(StreamViewType, StreamEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamSpecification")
	local t = { 
		["StreamViewType"] = StreamViewType,
		["StreamEnabled"] = StreamEnabled,
	}
	M.AssertStreamSpecification(t)
	return t
end

local UpdateItemInput_keys = { "AttributeUpdates" = true, "ConditionalOperator" = true, "ExpressionAttributeNames" = true, "ReturnValues" = true, "ConditionExpression" = true, "TableName" = true, "ReturnItemCollectionMetrics" = true, "ReturnConsumedCapacity" = true, "UpdateExpression" = true, "ExpressionAttributeValues" = true, "Key" = true, "Expected" = true, nil }

function M.AssertUpdateItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["AttributeUpdates"] then M.AssertAttributeUpdates(struct["AttributeUpdates"]) end
	if struct["ConditionalOperator"] then M.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["ReturnValues"] then M.AssertReturnValue(struct["ReturnValues"]) end
	if struct["ConditionExpression"] then M.AssertConditionExpression(struct["ConditionExpression"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ReturnItemCollectionMetrics"] then M.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["UpdateExpression"] then M.AssertUpdateExpression(struct["UpdateExpression"]) end
	if struct["ExpressionAttributeValues"] then M.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	if struct["Expected"] then M.AssertExpectedAttributeMap(struct["Expected"]) end
	for k,_ in pairs(struct) do
		assert(UpdateItemInput_keys[k], "UpdateItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateItemInput
-- <p>Represents the input of an <code>UpdateItem</code> operation.</p>
-- @param AttributeUpdates [AttributeUpdates] <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared either before or after they were updated. For <code>UpdateItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - Returns all of the attributes of the item, as they appeared before the UpdateItem operation.</p> </li> <li> <p> <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared before the UpdateItem operation.</p> </li> <li> <p> <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear after the UpdateItem operation.</p> </li> <li> <p> <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear after the UpdateItem operation.</p> </li> </ul> <p>There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No Read Capacity Units are consumed.</p> <p>Values returned are strongly consistent</p>
-- @param ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional update to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table containing the item to update.</p>
-- @param ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of an <code>UpdateItem</code> operation.</p>
-- @param UpdateExpression [UpdateExpression] <p>An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.</p> <p>The following action values are available for <code>UpdateExpression</code>.</p> <ul> <li> <p> <code>SET</code> - Adds one or more attributes and values to an item. If any of these attribute already exist, they are replaced by the new values. You can also use <code>SET</code> to add or subtract from an attribute that is of type Number. For example: <code>SET myNum = myNum + :val</code> </p> <p> <code>SET</code> supports the following functions:</p> <ul> <li> <p> <code>if_not_exists (path, operand)</code> - if the item does not contain an attribute at the specified path, then <code>if_not_exists</code> evaluates to operand; otherwise, it evaluates to path. You can use this function to avoid overwriting an attribute that may already be present in the item.</p> </li> <li> <p> <code>list_append (operand, operand)</code> - evaluates to a list with a new element added to it. You can append the new element to the start or the end of the list by reversing the order of the operands.</p> </li> </ul> <p>These function names are case-sensitive.</p> </li> <li> <p> <code>REMOVE</code> - Removes one or more attributes from an item.</p> </li> <li> <p> <code>ADD</code> - Adds the specified value to the item, if the attribute does not already exist. If the attribute does exist, then the behavior of <code>ADD</code> depends on the data type of the attribute:</p> <ul> <li> <p>If the existing attribute is a number, and if <code>Value</code> is also a number, then <code>Value</code> is mathematically added to the existing attribute. If <code>Value</code> is a negative number, then it is subtracted from the existing attribute.</p> <note> <p>If you use <code>ADD</code> to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses <code>0</code> as the initial value.</p> <p>Similarly, if you use <code>ADD</code> for an existing item to increment or decrement an attribute value that doesn't exist before the update, DynamoDB uses <code>0</code> as the initial value. For example, suppose that the item you want to update doesn't have an attribute named <i>itemcount</i>, but you decide to <code>ADD</code> the number <code>3</code> to this attribute anyway. DynamoDB will create the <i>itemcount</i> attribute, set its initial value to <code>0</code>, and finally add <code>3</code> to it. The result will be a new <i>itemcount</i> attribute in the item, with a value of <code>3</code>.</p> </note> </li> <li> <p>If the existing data type is a set and if <code>Value</code> is also a set, then <code>Value</code> is added to the existing set. For example, if the attribute value is the set <code>[1,2]</code>, and the <code>ADD</code> action specified <code>[3]</code>, then the final attribute value is <code>[1,2,3]</code>. An error occurs if an <code>ADD</code> action is specified for a set attribute and the attribute type specified does not match the existing set type. </p> <p>Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the <code>Value</code> must also be a set of strings.</p> </li> </ul> <important> <p>The <code>ADD</code> action only supports Number and set data types. In addition, <code>ADD</code> can only be used on top-level attributes, not nested attributes.</p> </important> </li> <li> <p> <code>DELETE</code> - Deletes an element from a set.</p> <p>If a set of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set <code>[a,b,c]</code> and the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final attribute value is <code>[b]</code>. Specifying an empty set is an error.</p> <important> <p>The <code>DELETE</code> action only supports set data types. In addition, <code>DELETE</code> can only be used on top-level attributes, not nested attributes.</p> </important> </li> </ul> <p>You can have many actions in a single expression, such as the following: <code>SET a=:value1, b=:value2 DELETE :value3, :value4, :value5</code> </p> <p>For more information on update expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying Items and Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Key [Key] <p>The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- @param Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpresssion</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
-- Required parameter: Key
function M.UpdateItemInput(AttributeUpdates, ConditionalOperator, ExpressionAttributeNames, ReturnValues, ConditionExpression, TableName, ReturnItemCollectionMetrics, ReturnConsumedCapacity, UpdateExpression, ExpressionAttributeValues, Key, Expected, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateItemInput")
	local t = { 
		["AttributeUpdates"] = AttributeUpdates,
		["ConditionalOperator"] = ConditionalOperator,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
		["ReturnValues"] = ReturnValues,
		["ConditionExpression"] = ConditionExpression,
		["TableName"] = TableName,
		["ReturnItemCollectionMetrics"] = ReturnItemCollectionMetrics,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["UpdateExpression"] = UpdateExpression,
		["ExpressionAttributeValues"] = ExpressionAttributeValues,
		["Key"] = Key,
		["Expected"] = Expected,
	}
	M.AssertUpdateItemInput(t)
	return t
end

local ConditionalCheckFailedException_keys = { "message" = true, nil }

function M.AssertConditionalCheckFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConditionalCheckFailedException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConditionalCheckFailedException_keys[k], "ConditionalCheckFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConditionalCheckFailedException
-- <p>A condition specified in the operation could not be evaluated.</p>
-- @param message [ErrorMessage] <p>The conditional request failed.</p>
function M.ConditionalCheckFailedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConditionalCheckFailedException")
	local t = { 
		["message"] = message,
	}
	M.AssertConditionalCheckFailedException(t)
	return t
end

local UpdateTableInput_keys = { "GlobalSecondaryIndexUpdates" = true, "ProvisionedThroughput" = true, "StreamSpecification" = true, "TableName" = true, "AttributeDefinitions" = true, nil }

function M.AssertUpdateTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["GlobalSecondaryIndexUpdates"] then M.AssertGlobalSecondaryIndexUpdateList(struct["GlobalSecondaryIndexUpdates"]) end
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["StreamSpecification"] then M.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["AttributeDefinitions"] then M.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTableInput_keys[k], "UpdateTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableInput
-- <p>Represents the input of an <code>UpdateTable</code> operation.</p>
-- @param GlobalSecondaryIndexUpdates [GlobalSecondaryIndexUpdateList] <p>An array of one or more global secondary indexes for the table. For each index in the array, you can request one action:</p> <ul> <li> <p> <code>Create</code> - add a new global secondary index to the table.</p> </li> <li> <p> <code>Update</code> - modify the provisioned throughput settings of an existing global secondary index.</p> </li> <li> <p> <code>Delete</code> - remove a global secondary index from the table.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global Secondary Indexes</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
-- @param ProvisionedThroughput [ProvisionedThroughput] <p>The new provisioned throughput settings for the specified table or index.</p>
-- @param StreamSpecification [StreamSpecification] <p>Represents the DynamoDB Streams configuration for the table.</p> <note> <p>You will receive a <code>ResourceInUseException</code> if you attempt to enable a stream on a table that already has a stream, or if you attempt to disable a stream on a table which does not have a stream.</p> </note>
-- @param TableName [TableName] <p>The name of the table to be updated.</p>
-- @param AttributeDefinitions [AttributeDefinitions] <p>An array of attributes that describe the key schema for the table and indexes. If you are adding a new global secondary index to the table, <code>AttributeDefinitions</code> must include the key element(s) of the new index.</p>
-- Required parameter: TableName
function M.UpdateTableInput(GlobalSecondaryIndexUpdates, ProvisionedThroughput, StreamSpecification, TableName, AttributeDefinitions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTableInput")
	local t = { 
		["GlobalSecondaryIndexUpdates"] = GlobalSecondaryIndexUpdates,
		["ProvisionedThroughput"] = ProvisionedThroughput,
		["StreamSpecification"] = StreamSpecification,
		["TableName"] = TableName,
		["AttributeDefinitions"] = AttributeDefinitions,
	}
	M.AssertUpdateTableInput(t)
	return t
end

local DescribeTableInput_keys = { "TableName" = true, nil }

function M.AssertDescribeTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTableInput_keys[k], "DescribeTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableInput
-- <p>Represents the input of a <code>DescribeTable</code> operation.</p>
-- @param TableName [TableName] <p>The name of the table to describe.</p>
-- Required parameter: TableName
function M.DescribeTableInput(TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableInput")
	local t = { 
		["TableName"] = TableName,
	}
	M.AssertDescribeTableInput(t)
	return t
end

local ProvisionedThroughputDescription_keys = { "NumberOfDecreasesToday" = true, "WriteCapacityUnits" = true, "LastIncreaseDateTime" = true, "ReadCapacityUnits" = true, "LastDecreaseDateTime" = true, nil }

function M.AssertProvisionedThroughputDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputDescription to be of type 'table'")
	if struct["NumberOfDecreasesToday"] then M.AssertPositiveLongObject(struct["NumberOfDecreasesToday"]) end
	if struct["WriteCapacityUnits"] then M.AssertPositiveLongObject(struct["WriteCapacityUnits"]) end
	if struct["LastIncreaseDateTime"] then M.AssertDate(struct["LastIncreaseDateTime"]) end
	if struct["ReadCapacityUnits"] then M.AssertPositiveLongObject(struct["ReadCapacityUnits"]) end
	if struct["LastDecreaseDateTime"] then M.AssertDate(struct["LastDecreaseDateTime"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionedThroughputDescription_keys[k], "ProvisionedThroughputDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputDescription
-- <p>Represents the provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.</p>
-- @param NumberOfDecreasesToday [PositiveLongObject] <p>The number of provisioned throughput decreases for this table during this UTC calendar day. For current maximums on provisioned throughput decreases, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param WriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>.</p>
-- @param LastIncreaseDateTime [Date] <p>The date and time of the last provisioned throughput increase for this table.</p>
-- @param ReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. Eventually consistent reads require less effort than strongly consistent reads, so a setting of 50 <code>ReadCapacityUnits</code> per second provides 100 eventually consistent <code>ReadCapacityUnits</code> per second.</p>
-- @param LastDecreaseDateTime [Date] <p>The date and time of the last provisioned throughput decrease for this table.</p>
function M.ProvisionedThroughputDescription(NumberOfDecreasesToday, WriteCapacityUnits, LastIncreaseDateTime, ReadCapacityUnits, LastDecreaseDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputDescription")
	local t = { 
		["NumberOfDecreasesToday"] = NumberOfDecreasesToday,
		["WriteCapacityUnits"] = WriteCapacityUnits,
		["LastIncreaseDateTime"] = LastIncreaseDateTime,
		["ReadCapacityUnits"] = ReadCapacityUnits,
		["LastDecreaseDateTime"] = LastDecreaseDateTime,
	}
	M.AssertProvisionedThroughputDescription(t)
	return t
end

local BatchWriteItemInput_keys = { "RequestItems" = true, "ReturnConsumedCapacity" = true, "ReturnItemCollectionMetrics" = true, nil }

function M.AssertBatchWriteItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteItemInput to be of type 'table'")
	assert(struct["RequestItems"], "Expected key RequestItems to exist in table")
	if struct["RequestItems"] then M.AssertBatchWriteItemRequestMap(struct["RequestItems"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ReturnItemCollectionMetrics"] then M.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteItemInput_keys[k], "BatchWriteItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteItemInput
-- <p>Represents the input of a <code>BatchWriteItem</code> operation.</p>
-- @param RequestItems [BatchWriteItemRequestMap] <p>A map of one or more table names and, for each table, a list of operations to be performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each element in the map consists of the following:</p> <ul> <li> <p> <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the specified item. The item to be deleted is identified by a <code>Key</code> subelement:</p> <ul> <li> <p> <code>Key</code> - A map of primary key attribute values that uniquely identify the ! item. Each entry in this map consists of an attribute name and an attribute value. For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for <i>both</i> the partition key and the sort key.</p> </li> </ul> </li> <li> <p> <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the specified item. The item to be put is identified by an <code>Item</code> subelement:</p> <ul> <li> <p> <code>Item</code> - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a <code>ValidationException</code> exception.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> </li> </ul> </li> </ul>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>BatchWriteItem</code> operation.</p>
-- @param ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- Required parameter: RequestItems
function M.BatchWriteItemInput(RequestItems, ReturnConsumedCapacity, ReturnItemCollectionMetrics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteItemInput")
	local t = { 
		["RequestItems"] = RequestItems,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["ReturnItemCollectionMetrics"] = ReturnItemCollectionMetrics,
	}
	M.AssertBatchWriteItemInput(t)
	return t
end

local ItemCollectionMetrics_keys = { "ItemCollectionKey" = true, "SizeEstimateRangeGB" = true, nil }

function M.AssertItemCollectionMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemCollectionMetrics to be of type 'table'")
	if struct["ItemCollectionKey"] then M.AssertItemCollectionKeyAttributeMap(struct["ItemCollectionKey"]) end
	if struct["SizeEstimateRangeGB"] then M.AssertItemCollectionSizeEstimateRange(struct["SizeEstimateRangeGB"]) end
	for k,_ in pairs(struct) do
		assert(ItemCollectionMetrics_keys[k], "ItemCollectionMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemCollectionMetrics
-- <p>Information about item collections, if any, that were affected by the operation. <code>ItemCollectionMetrics</code> is only returned if the request asked for it. If the table does not have any local secondary indexes, this information is not returned in the response.</p>
-- @param ItemCollectionKey [ItemCollectionKeyAttributeMap] <p>The partition key value of the item collection. This value is the same as the partition key value of the item.</p>
-- @param SizeEstimateRangeGB [ItemCollectionSizeEstimateRange] <p>An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p>
function M.ItemCollectionMetrics(ItemCollectionKey, SizeEstimateRangeGB, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ItemCollectionMetrics")
	local t = { 
		["ItemCollectionKey"] = ItemCollectionKey,
		["SizeEstimateRangeGB"] = SizeEstimateRangeGB,
	}
	M.AssertItemCollectionMetrics(t)
	return t
end

local AttributeDefinition_keys = { "AttributeName" = true, "AttributeType" = true, nil }

function M.AssertAttributeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeDefinition to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["AttributeType"], "Expected key AttributeType to exist in table")
	if struct["AttributeName"] then M.AssertKeySchemaAttributeName(struct["AttributeName"]) end
	if struct["AttributeType"] then M.AssertScalarAttributeType(struct["AttributeType"]) end
	for k,_ in pairs(struct) do
		assert(AttributeDefinition_keys[k], "AttributeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeDefinition
-- <p>Represents an attribute for describing the key schema for the table and indexes.</p>
-- @param AttributeName [KeySchemaAttributeName] <p>A name for the attribute.</p>
-- @param AttributeType [ScalarAttributeType] <p>The data type for the attribute, where:</p> <ul> <li> <p> <code>S</code> - the attribute is of type String</p> </li> <li> <p> <code>N</code> - the attribute is of type Number</p> </li> <li> <p> <code>B</code> - the attribute is of type Binary</p> </li> </ul>
-- Required parameter: AttributeName
-- Required parameter: AttributeType
function M.AttributeDefinition(AttributeName, AttributeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeDefinition")
	local t = { 
		["AttributeName"] = AttributeName,
		["AttributeType"] = AttributeType,
	}
	M.AssertAttributeDefinition(t)
	return t
end

local DeleteTableOutput_keys = { "TableDescription" = true, nil }

function M.AssertDeleteTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableOutput to be of type 'table'")
	if struct["TableDescription"] then M.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTableOutput_keys[k], "DeleteTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableOutput
-- <p>Represents the output of a <code>DeleteTable</code> operation.</p>
-- @param TableDescription [TableDescription] <p>Represents the properties of a table.</p>
function M.DeleteTableOutput(TableDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTableOutput")
	local t = { 
		["TableDescription"] = TableDescription,
	}
	M.AssertDeleteTableOutput(t)
	return t
end

local Capacity_keys = { "CapacityUnits" = true, nil }

function M.AssertCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Capacity to be of type 'table'")
	if struct["CapacityUnits"] then M.AssertConsumedCapacityUnits(struct["CapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(Capacity_keys[k], "Capacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Capacity
-- <p>Represents the amount of provisioned throughput capacity consumed on a table or an index.</p>
-- @param CapacityUnits [ConsumedCapacityUnits] <p>The total number of capacity units consumed on a table or an index.</p>
function M.Capacity(CapacityUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Capacity")
	local t = { 
		["CapacityUnits"] = CapacityUnits,
	}
	M.AssertCapacity(t)
	return t
end

local QueryOutput_keys = { "Count" = true, "Items" = true, "LastEvaluatedKey" = true, "ScannedCount" = true, "ConsumedCapacity" = true, nil }

function M.AssertQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryOutput to be of type 'table'")
	if struct["Count"] then M.AssertInteger(struct["Count"]) end
	if struct["Items"] then M.AssertItemList(struct["Items"]) end
	if struct["LastEvaluatedKey"] then M.AssertKey(struct["LastEvaluatedKey"]) end
	if struct["ScannedCount"] then M.AssertInteger(struct["ScannedCount"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(QueryOutput_keys[k], "QueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryOutput
-- <p>Represents the output of a <code>Query</code> operation.</p>
-- @param Count [Integer] <p>The number of items in the response.</p> <p>If you used a <code>QueryFilter</code> in the request, then <code>Count</code> is the number of items returned after the filter was applied, and <code>ScannedCount</code> is the number of matching items before the filter was applied.</p> <p>If you did not use a filter in the request, then <code>Count</code> and <code>ScannedCount</code> are the same.</p>
-- @param Items [ItemList] <p>An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.</p>
-- @param LastEvaluatedKey [Key] <p>The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedKey</code> is empty.</p>
-- @param ScannedCount [Integer] <p>The number of items evaluated, before any <code>QueryFilter</code> is applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Query</code> operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same as <code>Count</code>.</p>
-- @param ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>Query</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.QueryOutput(Count, Items, LastEvaluatedKey, ScannedCount, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryOutput")
	local t = { 
		["Count"] = Count,
		["Items"] = Items,
		["LastEvaluatedKey"] = LastEvaluatedKey,
		["ScannedCount"] = ScannedCount,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertQueryOutput(t)
	return t
end

local ListTablesInput_keys = { "Limit" = true, "ExclusiveStartTableName" = true, nil }

function M.AssertListTablesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTablesInput to be of type 'table'")
	if struct["Limit"] then M.AssertListTablesInputLimit(struct["Limit"]) end
	if struct["ExclusiveStartTableName"] then M.AssertTableName(struct["ExclusiveStartTableName"]) end
	for k,_ in pairs(struct) do
		assert(ListTablesInput_keys[k], "ListTablesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTablesInput
-- <p>Represents the input of a <code>ListTables</code> operation.</p>
-- @param Limit [ListTablesInputLimit] <p>A maximum number of table names to return. If this parameter is not specified, the limit is 100.</p>
-- @param ExclusiveStartTableName [TableName] <p>The first table name that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you can obtain the next page of results.</p>
function M.ListTablesInput(Limit, ExclusiveStartTableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTablesInput")
	local t = { 
		["Limit"] = Limit,
		["ExclusiveStartTableName"] = ExclusiveStartTableName,
	}
	M.AssertListTablesInput(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of concurrent table requests (cumulative number of tables in the <code>CREATING</code>, <code>DELETING</code> or <code>UPDATING</code> state) exceeds the maximum allowed of 10.</p> <p>Also, for tables with secondary indexes, only one of those tables can be in the <code>CREATING</code> state at any point in time. Do not attempt to create more than one such table simultaneously.</p> <p>The total limit of tables in the <code>ACTIVE</code> state is 250.</p>
-- @param message [ErrorMessage] <p>Too many operations for a given subscriber.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local GlobalSecondaryIndexUpdate_keys = { "Create" = true, "Update" = true, "Delete" = true, nil }

function M.AssertGlobalSecondaryIndexUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSecondaryIndexUpdate to be of type 'table'")
	if struct["Create"] then M.AssertCreateGlobalSecondaryIndexAction(struct["Create"]) end
	if struct["Update"] then M.AssertUpdateGlobalSecondaryIndexAction(struct["Update"]) end
	if struct["Delete"] then M.AssertDeleteGlobalSecondaryIndexAction(struct["Delete"]) end
	for k,_ in pairs(struct) do
		assert(GlobalSecondaryIndexUpdate_keys[k], "GlobalSecondaryIndexUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSecondaryIndexUpdate
-- <p>Represents one of the following:</p> <ul> <li> <p>A new global secondary index to be added to an existing table.</p> </li> <li> <p>New provisioned throughput parameters for an existing global secondary index.</p> </li> <li> <p>An existing global secondary index to be removed from an existing table.</p> </li> </ul>
-- @param Create [CreateGlobalSecondaryIndexAction] <p>The parameters required for creating a global secondary index on an existing table:</p> <ul> <li> <p> <code>IndexName </code> </p> </li> <li> <p> <code>KeySchema </code> </p> </li> <li> <p> <code>AttributeDefinitions </code> </p> </li> <li> <p> <code>Projection </code> </p> </li> <li> <p> <code>ProvisionedThroughput </code> </p> </li> </ul>
-- @param Update [UpdateGlobalSecondaryIndexAction] <p>The name of an existing global secondary index, along with new provisioned throughput settings to be applied to that index.</p>
-- @param Delete [DeleteGlobalSecondaryIndexAction] <p>The name of an existing global secondary index to be removed.</p>
function M.GlobalSecondaryIndexUpdate(Create, Update, Delete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSecondaryIndexUpdate")
	local t = { 
		["Create"] = Create,
		["Update"] = Update,
		["Delete"] = Delete,
	}
	M.AssertGlobalSecondaryIndexUpdate(t)
	return t
end

local ResourceInUseException_keys = { "message" = true, nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The operation conflicts with the resource's availability. For example, you attempted to recreate an existing table, or tried to delete a table currently in the <code>CREATING</code> state.</p>
-- @param message [ErrorMessage] <p>The resource which is being attempted to be changed is in use.</p>
function M.ResourceInUseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceInUseException(t)
	return t
end

local QueryInput_keys = { "FilterExpression" = true, "ConsistentRead" = true, "ConditionalOperator" = true, "IndexName" = true, "ProjectionExpression" = true, "ExpressionAttributeNames" = true, "QueryFilter" = true, "TableName" = true, "ReturnConsumedCapacity" = true, "ExclusiveStartKey" = true, "AttributesToGet" = true, "Limit" = true, "ExpressionAttributeValues" = true, "KeyConditions" = true, "KeyConditionExpression" = true, "ScanIndexForward" = true, "Select" = true, nil }

function M.AssertQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["FilterExpression"] then M.AssertConditionExpression(struct["FilterExpression"]) end
	if struct["ConsistentRead"] then M.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["ConditionalOperator"] then M.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["ProjectionExpression"] then M.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["QueryFilter"] then M.AssertFilterConditionMap(struct["QueryFilter"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ExclusiveStartKey"] then M.AssertKey(struct["ExclusiveStartKey"]) end
	if struct["AttributesToGet"] then M.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["Limit"] then M.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["ExpressionAttributeValues"] then M.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["KeyConditions"] then M.AssertKeyConditions(struct["KeyConditions"]) end
	if struct["KeyConditionExpression"] then M.AssertKeyExpression(struct["KeyConditionExpression"]) end
	if struct["ScanIndexForward"] then M.AssertBooleanObject(struct["ScanIndexForward"]) end
	if struct["Select"] then M.AssertSelect(struct["Select"]) end
	for k,_ in pairs(struct) do
		assert(QueryInput_keys[k], "QueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryInput
-- <p>Represents the input of a <code>Query</code> operation.</p>
-- @param FilterExpression [ConditionExpression] <p>A string that contains conditions that DynamoDB applies after the <code>Query</code> operation, but before the data is returned to you. Items that do not satisfy the <code>FilterExpression</code> criteria are not returned.</p> <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key.</p> <note> <p>A <code>FilterExpression</code> is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter Expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ConsistentRead [ConsistentRead] <p>Determines the read consistency model: If set to <code>true</code>, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.</p> <p>Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you will receive a <code>ValidationException</code>.</p>
-- @param ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param IndexName [IndexName] <p>The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the <code>IndexName</code> parameter, you must also provide <code>TableName.</code> </p>
-- @param ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param QueryFilter [FilterConditionMap] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table containing the requested items.</p>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>Query</code> operation.</p>
-- @param ExclusiveStartKey [Key] <p>The primary key of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p> <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No set data types are allowed.</p>
-- @param AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Limit [PositiveIntegerObject] <p>The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param KeyConditions [KeyConditions] <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param KeyConditionExpression [KeyExpression] <p>The condition that specifies the key value(s) for items to be retrieved by the <code>Query</code> action.</p> <p>The condition must perform an equality test on a single partition key value. The condition can also perform one of several comparison tests on a single sort key value. <code>Query</code> can use <code>KeyConditionExpression</code> to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values.</p> <p>The partition key equality test is required, and must be specified in the following format:</p> <p> <code>partitionKeyName</code> <i>=</i> <code>:partitionkeyval</code> </p> <p>If you also want to provide a condition for the sort key, it must be combined using <code>AND</code> with the condition for the sort key. Following is an example, using the <b>=</b> comparison operator for the sort key:</p> <p> <code>partitionKeyName</code> <code>=</code> <code>:partitionkeyval</code> <code>AND</code> <code>sortKeyName</code> <code>=</code> <code>:sortkeyval</code> </p> <p>Valid comparisons for the sort key condition are as follows:</p> <ul> <li> <p> <code>sortKeyName</code> <code>=</code> <code>:sortkeyval</code> - true if the sort key value is equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&lt;</code> <code>:sortkeyval</code> - true if the sort key value is less than <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&lt;=</code> <code>:sortkeyval</code> - true if the sort key value is less than or equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&gt;</code> <code>:sortkeyval</code> - true if the sort key value is greater than <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&gt;= </code> <code>:sortkeyval</code> - true if the sort key value is greater than or equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>BETWEEN</code> <code>:sortkeyval1</code> <code>AND</code> <code>:sortkeyval2</code> - true if the sort key value is greater than or equal to <code>:sortkeyval1</code>, and less than or equal to <code>:sortkeyval2</code>.</p> </li> <li> <p> <code>begins_with (</code> <code>sortKeyName</code>, <code>:sortkeyval</code> <code>)</code> - true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name <code>begins_with</code> is case-sensitive.</p> </li> </ul> <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as <code>:partitionval</code> and <code>:sortval</code> with actual values at runtime.</p> <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following <code>KeyConditionExpression</code> parameter causes an error because <i>Size</i> is a reserved word:</p> <ul> <li> <p> <code>Size = :myval</code> </p> </li> </ul> <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as follows:</p> <ul> <li> <p> <code>#S = :myval</code> </p> </li> </ul> <p>For a list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>For more information on <code>ExpressionAttributeNames</code> and <code>ExpressionAttributeValues</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ScanIndexForward [BooleanObject] <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal is performed in ascending order; if <code>false</code>, the traversal is performed in descending order. </p> <p>Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of ASCII character code values. For type Binary, DynamoDB treats each byte of the binary data as unsigned.</p> <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.</p>
-- @param Select [Select] <p>The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.</p> <ul> <li> <p> <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.</p> </li> <li> <p> <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying <code>ALL_ATTRIBUTES</code>.</p> </li> <li> <p> <code>COUNT</code> - Returns the number of matching items, rather than the matching items themselves.</p> </li> <li> <p> <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in <code>AttributesToGet</code>. This return value is equivalent to specifying <code>AttributesToGet</code> without specifying any value for <code>Select</code>.</p> <p>If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.</p> <p>If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.</p> </li> </ul> <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both <code>Select</code> and <code>AttributesToGet</code> together in a single request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This usage is equivalent to specifying <code>AttributesToGet</code> without any value for <code>Select</code>.)</p> <note> <p>If you use the <code>ProjectionExpression</code> parameter, then the value for <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other value for <code>Select</code> will return an error.</p> </note>
-- Required parameter: TableName
function M.QueryInput(FilterExpression, ConsistentRead, ConditionalOperator, IndexName, ProjectionExpression, ExpressionAttributeNames, QueryFilter, TableName, ReturnConsumedCapacity, ExclusiveStartKey, AttributesToGet, Limit, ExpressionAttributeValues, KeyConditions, KeyConditionExpression, ScanIndexForward, Select, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryInput")
	local t = { 
		["FilterExpression"] = FilterExpression,
		["ConsistentRead"] = ConsistentRead,
		["ConditionalOperator"] = ConditionalOperator,
		["IndexName"] = IndexName,
		["ProjectionExpression"] = ProjectionExpression,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
		["QueryFilter"] = QueryFilter,
		["TableName"] = TableName,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["ExclusiveStartKey"] = ExclusiveStartKey,
		["AttributesToGet"] = AttributesToGet,
		["Limit"] = Limit,
		["ExpressionAttributeValues"] = ExpressionAttributeValues,
		["KeyConditions"] = KeyConditions,
		["KeyConditionExpression"] = KeyConditionExpression,
		["ScanIndexForward"] = ScanIndexForward,
		["Select"] = Select,
	}
	M.AssertQueryInput(t)
	return t
end

local AttributeValueUpdate_keys = { "Action" = true, "Value" = true, nil }

function M.AssertAttributeValueUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValueUpdate to be of type 'table'")
	if struct["Action"] then M.AssertAttributeAction(struct["Action"]) end
	if struct["Value"] then M.AssertAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(AttributeValueUpdate_keys[k], "AttributeValueUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValueUpdate
-- <p>For the <code>UpdateItem</code> operation, represents the attributes to be modified, the action to perform on each, and the new value for each.</p> <note> <p>You cannot use <code>UpdateItem</code> to update any primary key attributes. Instead, you will need to delete the item, and then use <code>PutItem</code> to create a new item with new attributes.</p> </note> <p>Attribute values cannot be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests with empty values will be rejected with a <code>ValidationException</code> exception.</p>
-- @param Action [AttributeAction] <p>Specifies how to perform the update. Valid values are <code>PUT</code> (default), <code>DELETE</code>, and <code>ADD</code>. The behavior depends on whether the specified primary key already exists in the table.</p> <p> <b>If an item with the specified <i>Key</i> is found in the table:</b> </p> <ul> <li> <p> <code>PUT</code> - Adds the specified attribute to the item. If the attribute already exists, it is replaced by the new value. </p> </li> <li> <p> <code>DELETE</code> - If no value is specified, the attribute and its value are removed from the item. The data type of the specified value must match the existing value's data type.</p> <p>If a <i>set</i> of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set <code>[a,b,c]</code> and the <code>DELETE</code> action specified <code>[a,c]</code>, then the final attribute value would be <code>[b]</code>. Specifying an empty set is an error.</p> </li> <li> <p> <code>ADD</code> - If the attribute does not already exist, then the attribute and its values are added to the item. If the attribute does exist, then the behavior of <code>ADD</code> depends on the data type of the attribute:</p> <ul> <li> <p>If the existing attribute is a number, and if <code>Value</code> is also a number, then the <code>Value</code> is mathematically added to the existing attribute. If <code>Value</code> is a negative number, then it is subtracted from the existing attribute.</p> <note> <p> If you use <code>ADD</code> to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses 0 as the initial value.</p> <p>In addition, if you use <code>ADD</code> to update an existing item, and intend to increment or decrement an attribute value which does not yet exist, DynamoDB uses <code>0</code> as the initial value. For example, suppose that the item you want to update does not yet have an attribute named <i>itemcount</i>, but you decide to <code>ADD</code> the number <code>3</code> to this attribute anyway, even though it currently does not exist. DynamoDB will create the <i>itemcount</i> attribute, set its initial value to <code>0</code>, and finally add <code>3</code> to it. The result will be a new <i>itemcount</i> attribute in the item, with a value of <code>3</code>.</p> </note> </li> <li> <p>If the existing data type is a set, and if the <code>Value</code> is also a set, then the <code>Value</code> is added to the existing set. (This is a <i>set</i> operation, not mathematical addition.) For example, if the attribute value was the set <code>[1,2]</code>, and the <code>ADD</code> action specified <code>[3]</code>, then the final attribute value would be <code>[1,2,3]</code>. An error occurs if an Add action is specified for a set attribute and the attribute type specified does not match the existing set type. </p> <p>Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the <code>Value</code> must also be a set of strings. The same holds true for number sets and binary sets.</p> </li> </ul> <p>This action is only valid for an existing attribute whose data type is number or is a set. Do not use <code>ADD</code> for any other data types.</p> </li> </ul> <p> <b>If no item with the specified <i>Key</i> is found:</b> </p> <ul> <li> <p> <code>PUT</code> - DynamoDB creates a new item with the specified primary key, and then adds the attribute. </p> </li> <li> <p> <code>DELETE</code> - Nothing happens; there is no attribute to delete.</p> </li> <li> <p> <code>ADD</code> - DynamoDB creates an item with the supplied primary key and number (or set of numbers) for the attribute value. The only data types allowed are number and number set; no other data types can be specified.</p> </li> </ul>
-- @param Value [AttributeValue] <p>Represents the data for an attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data TYpes</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
function M.AttributeValueUpdate(Action, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeValueUpdate")
	local t = { 
		["Action"] = Action,
		["Value"] = Value,
	}
	M.AssertAttributeValueUpdate(t)
	return t
end

local TimeToLiveSpecification_keys = { "AttributeName" = true, "Enabled" = true, nil }

function M.AssertTimeToLiveSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeToLiveSpecification to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then M.AssertTimeToLiveAttributeName(struct["AttributeName"]) end
	if struct["Enabled"] then M.AssertTimeToLiveEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(TimeToLiveSpecification_keys[k], "TimeToLiveSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeToLiveSpecification
-- <p>Represents the settings used to enable or disable Time to Live for the specified table.</p>
-- @param AttributeName [TimeToLiveAttributeName] <p>The name of the Time to Live attribute used to store the expiration time for items in the table.</p>
-- @param Enabled [TimeToLiveEnabled] <p>Indicates whether Time To Live is to be enabled (true) or disabled (false) on the table.</p>
-- Required parameter: Enabled
-- Required parameter: AttributeName
function M.TimeToLiveSpecification(AttributeName, Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeToLiveSpecification")
	local t = { 
		["AttributeName"] = AttributeName,
		["Enabled"] = Enabled,
	}
	M.AssertTimeToLiveSpecification(t)
	return t
end

local DeleteItemOutput_keys = { "Attributes" = true, "ItemCollectionMetrics" = true, "ConsumedCapacity" = true, nil }

function M.AssertDeleteItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteItemOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertAttributeMap(struct["Attributes"]) end
	if struct["ItemCollectionMetrics"] then M.AssertItemCollectionMetrics(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(DeleteItemOutput_keys[k], "DeleteItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteItemOutput
-- <p>Represents the output of a <code>DeleteItem</code> operation.</p>
-- @param Attributes [AttributeMap] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the item as it appeared before the <code>DeleteItem</code> operation. This map appears in the response only if <code>ReturnValues</code> was specified as <code>ALL_OLD</code> in the request.</p>
-- @param ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>DeleteItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>DeleteItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.DeleteItemOutput(Attributes, ItemCollectionMetrics, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteItemOutput")
	local t = { 
		["Attributes"] = Attributes,
		["ItemCollectionMetrics"] = ItemCollectionMetrics,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertDeleteItemOutput(t)
	return t
end

local Condition_keys = { "ComparisonOperator" = true, "AttributeValueList" = true, nil }

function M.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["AttributeValueList"] then M.AssertAttributeValueList(struct["AttributeValueList"]) end
	for k,_ in pairs(struct) do
		assert(Condition_keys[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
-- <p>Represents the selection criteria for a <code>Query</code> or <code>Scan</code> operation:</p> <ul> <li> <p>For a <code>Query</code> operation, <code>Condition</code> is used for specifying the <code>KeyConditions</code> to use when querying a table or an index. For <code>KeyConditions</code>, only the following comparison operators are supported:</p> <p> <code>EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN</code> </p> <p> <code>Condition</code> is also used in a <code>QueryFilter</code>, which evaluates the query results and returns only the desired values.</p> </li> <li> <p>For a <code>Scan</code> operation, <code>Condition</code> is used in a <code>ScanFilter</code>, which evaluates the scan results and returns only the desired values.</p> </li> </ul>
-- @param ComparisonOperator [ComparisonOperator] <p>A comparator for evaluating attributes. For example, equals, greater than, less than, etc.</p> <p>The following comparison operators are available:</p> <p> <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN</code> </p> <p>The following are descriptions of each comparison operator.</p> <ul> <li> <p> <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NE</code> : Not equal. <code>NE</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LE</code> : Less than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LT</code> : Less than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GE</code> : Greater than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GT</code> : Greater than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the existence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This result is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NOT_NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NULL</code>, the result is a Boolean <code>false</code>. This is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it finds an exact match with any member of the set.</p> <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it <i>does not</i> find an exact match with any member of the set.</p> <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>BEGINS_WITH</code> : Checks for a prefix. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).</p> <p/> </li> <li> <p> <code>IN</code> : Checks for matching elements in a list.</p> <p> <code>AttributeValueList</code> can contain one or more <code>AttributeValue</code> elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.</p> </li> <li> <p> <code>BETWEEN</code> : Greater than or equal to the first value, and less than or equal to the second value. </p> <p> <code>AttributeValueList</code> must contain two <code>AttributeValue</code> elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code> </p> </li> </ul> <p>For usage examples of <code>AttributeValueList</code> and <code>ComparisonOperator</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy Conditional Parameters</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param AttributeValueList [AttributeValueList] <p>One or more values to evaluate against the supplied attribute. The number of values in the list depends on the <code>ComparisonOperator</code> being used.</p> <p>For type Number, value comparisons are numeric.</p> <p>String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, <code>a</code> is greater than <code>A</code>, and <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p> <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.</p>
-- Required parameter: ComparisonOperator
function M.Condition(ComparisonOperator, AttributeValueList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Condition")
	local t = { 
		["ComparisonOperator"] = ComparisonOperator,
		["AttributeValueList"] = AttributeValueList,
	}
	M.AssertCondition(t)
	return t
end

local ScanInput_keys = { "FilterExpression" = true, "ConsistentRead" = true, "ConditionalOperator" = true, "IndexName" = true, "ProjectionExpression" = true, "ExpressionAttributeNames" = true, "TableName" = true, "ReturnConsumedCapacity" = true, "ExclusiveStartKey" = true, "AttributesToGet" = true, "Limit" = true, "TotalSegments" = true, "Segment" = true, "ScanFilter" = true, "Select" = true, "ExpressionAttributeValues" = true, nil }

function M.AssertScanInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["FilterExpression"] then M.AssertConditionExpression(struct["FilterExpression"]) end
	if struct["ConsistentRead"] then M.AssertConsistentRead(struct["ConsistentRead"]) end
	if struct["ConditionalOperator"] then M.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["ProjectionExpression"] then M.AssertProjectionExpression(struct["ProjectionExpression"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ExclusiveStartKey"] then M.AssertKey(struct["ExclusiveStartKey"]) end
	if struct["AttributesToGet"] then M.AssertAttributeNameList(struct["AttributesToGet"]) end
	if struct["Limit"] then M.AssertPositiveIntegerObject(struct["Limit"]) end
	if struct["TotalSegments"] then M.AssertScanTotalSegments(struct["TotalSegments"]) end
	if struct["Segment"] then M.AssertScanSegment(struct["Segment"]) end
	if struct["ScanFilter"] then M.AssertFilterConditionMap(struct["ScanFilter"]) end
	if struct["Select"] then M.AssertSelect(struct["Select"]) end
	if struct["ExpressionAttributeValues"] then M.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(ScanInput_keys[k], "ScanInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanInput
-- <p>Represents the input of a <code>Scan</code> operation.</p>
-- @param FilterExpression [ConditionExpression] <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code> operation, but before the data is returned to you. Items that do not satisfy the <code>FilterExpression</code> criteria are not returned.</p> <note> <p>A <code>FilterExpression</code> is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter Expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ConsistentRead [ConsistentRead] <p>A Boolean value that determines the read consistency model during the scan:</p> <ul> <li> <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned from <code>Scan</code> might not contain the results from other recently completed write operations (PutItem, UpdateItem or DeleteItem).</p> </li> <li> <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write operations that completed before the <code>Scan</code> began are guaranteed to be contained in the <code>Scan</code> response.</p> </li> </ul> <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p> <p>The <code>ConsistentRead</code> parameter is not supported on global secondary indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to true, you will receive a <code>ValidationException</code>.</p>
-- @param ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param IndexName [IndexName] <p>The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the <code>IndexName</code> parameter, you must also provide <code>TableName</code>.</p>
-- @param ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table containing the requested items; or, if you provide <code>IndexName</code>, the name of the table to which that index belongs.</p>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>Scan</code> operation.</p>
-- @param ExclusiveStartKey [Key] <p>The primary key of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p> <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No set data types are allowed.</p> <p>In a parallel scan, a <code>Scan</code> request that includes <code>ExclusiveStartKey</code> must specify the same segment whose previous <code>Scan</code> returned the corresponding value of <code>LastEvaluatedKey</code>.</p>
-- @param AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Limit [PositiveIntegerObject] <p>The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TotalSegments [ScanTotalSegments] <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the total number of segments into which the <code>Scan</code> operation will be divided. The value of <code>TotalSegments</code> corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a <code>TotalSegments</code> value of 4.</p> <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the <code>Scan</code> operation will be sequential rather than parallel.</p> <p>If you specify <code>TotalSegments</code>, you must also specify <code>Segment</code>.</p>
-- @param Segment [ScanSegment] <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an individual segment to be scanned by an application worker.</p> <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so on.</p> <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code> request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a subsequent <code>Scan</code> operation.</p> <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than the value provided for <code>TotalSegments</code>.</p> <p>If you provide <code>Segment</code>, you must also provide <code>TotalSegments</code>.</p>
-- @param ScanFilter [FilterConditionMap] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Select [Select] <p>The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.</p> <ul> <li> <p> <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.</p> </li> <li> <p> <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying <code>ALL_ATTRIBUTES</code>.</p> </li> <li> <p> <code>COUNT</code> - Returns the number of matching items, rather than the matching items themselves.</p> </li> <li> <p> <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in <code>AttributesToGet</code>. This return value is equivalent to specifying <code>AttributesToGet</code> without specifying any value for <code>Select</code>.</p> <p>If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.</p> <p>If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.</p> </li> </ul> <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both <code>Select</code> and <code>AttributesToGet</code> together in a single request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This usage is equivalent to specifying <code>AttributesToGet</code> without any value for <code>Select</code>.)</p> <note> <p>If you use the <code>ProjectionExpression</code> parameter, then the value for <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other value for <code>Select</code> will return an error.</p> </note>
-- @param ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
function M.ScanInput(FilterExpression, ConsistentRead, ConditionalOperator, IndexName, ProjectionExpression, ExpressionAttributeNames, TableName, ReturnConsumedCapacity, ExclusiveStartKey, AttributesToGet, Limit, TotalSegments, Segment, ScanFilter, Select, ExpressionAttributeValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanInput")
	local t = { 
		["FilterExpression"] = FilterExpression,
		["ConsistentRead"] = ConsistentRead,
		["ConditionalOperator"] = ConditionalOperator,
		["IndexName"] = IndexName,
		["ProjectionExpression"] = ProjectionExpression,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
		["TableName"] = TableName,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["ExclusiveStartKey"] = ExclusiveStartKey,
		["AttributesToGet"] = AttributesToGet,
		["Limit"] = Limit,
		["TotalSegments"] = TotalSegments,
		["Segment"] = Segment,
		["ScanFilter"] = ScanFilter,
		["Select"] = Select,
		["ExpressionAttributeValues"] = ExpressionAttributeValues,
	}
	M.AssertScanInput(t)
	return t
end

local BatchGetItemOutput_keys = { "UnprocessedKeys" = true, "Responses" = true, "ConsumedCapacity" = true, nil }

function M.AssertBatchGetItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetItemOutput to be of type 'table'")
	if struct["UnprocessedKeys"] then M.AssertBatchGetRequestMap(struct["UnprocessedKeys"]) end
	if struct["Responses"] then M.AssertBatchGetResponseMap(struct["Responses"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacityMultiple(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetItemOutput_keys[k], "BatchGetItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetItemOutput
-- <p>Represents the output of a <code>BatchGetItem</code> operation.</p>
-- @param UnprocessedKeys [BatchGetRequestMap] <p>A map of tables and their respective keys that were not processed with the current response. The <code>UnprocessedKeys</code> value is in the same form as <code>RequestItems</code>, so the value can be provided directly to a subsequent <code>BatchGetItem</code> operation. For more information, see <code>RequestItems</code> in the Request Parameters section.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>Keys</code> - An array of primary key attribute values that define specific items in the table.</p> </li> <li> <p> <code>ProjectionExpression</code> - One or more attributes to be retrieved from the table or index. By default, all attributes are returned. If a requested attribute is not found, it does not appear in the result.</p> </li> <li> <p> <code>ConsistentRead</code> - The consistency of a read operation. If set to <code>true</code>, then a strongly consistent read is used; otherwise, an eventually consistent read is used.</p> </li> </ul> <p>If there are no unprocessed keys remaining, the response contains an empty <code>UnprocessedKeys</code> map.</p>
-- @param Responses [BatchGetResponseMap] <p>A map of table name to a list of items. Each object in <code>Responses</code> consists of a table name, along with a map of attribute data consisting of the data type and attribute value.</p>
-- @param ConsumedCapacity [ConsumedCapacityMultiple] <p>The read capacity units consumed by the entire <code>BatchGetItem</code> operation.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>TableName</code> - The table that consumed the provisioned throughput.</p> </li> <li> <p> <code>CapacityUnits</code> - The total number of capacity units consumed.</p> </li> </ul>
function M.BatchGetItemOutput(UnprocessedKeys, Responses, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetItemOutput")
	local t = { 
		["UnprocessedKeys"] = UnprocessedKeys,
		["Responses"] = Responses,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertBatchGetItemOutput(t)
	return t
end

local Projection_keys = { "ProjectionType" = true, "NonKeyAttributes" = true, nil }

function M.AssertProjection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Projection to be of type 'table'")
	if struct["ProjectionType"] then M.AssertProjectionType(struct["ProjectionType"]) end
	if struct["NonKeyAttributes"] then M.AssertNonKeyAttributeNameList(struct["NonKeyAttributes"]) end
	for k,_ in pairs(struct) do
		assert(Projection_keys[k], "Projection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Projection
-- <p>Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.</p>
-- @param ProjectionType [ProjectionType] <p>The set of attributes that are projected into the index:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul>
-- @param NonKeyAttributes [NonKeyAttributeNameList] <p>Represents the non-key attribute names which will be projected into the index.</p> <p>For local secondary indexes, the total count of <code>NonKeyAttributes</code> summed across all of the local secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p>
function M.Projection(ProjectionType, NonKeyAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Projection")
	local t = { 
		["ProjectionType"] = ProjectionType,
		["NonKeyAttributes"] = NonKeyAttributes,
	}
	M.AssertProjection(t)
	return t
end

local DescribeTableOutput_keys = { "Table" = true, nil }

function M.AssertDescribeTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableOutput to be of type 'table'")
	if struct["Table"] then M.AssertTableDescription(struct["Table"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTableOutput_keys[k], "DescribeTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableOutput
-- <p>Represents the output of a <code>DescribeTable</code> operation.</p>
-- @param Table [TableDescription] <p>The properties of the table.</p>
function M.DescribeTableOutput(Table, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableOutput")
	local t = { 
		["Table"] = Table,
	}
	M.AssertDescribeTableOutput(t)
	return t
end

local UpdateTimeToLiveInput_keys = { "TableName" = true, "TimeToLiveSpecification" = true, nil }

function M.AssertUpdateTimeToLiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTimeToLiveInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["TimeToLiveSpecification"], "Expected key TimeToLiveSpecification to exist in table")
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["TimeToLiveSpecification"] then M.AssertTimeToLiveSpecification(struct["TimeToLiveSpecification"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTimeToLiveInput_keys[k], "UpdateTimeToLiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTimeToLiveInput
-- <p>Represents the input of an <code>UpdateTimeToLive</code> operation.</p>
-- @param TableName [TableName] <p>The name of the table to be configured.</p>
-- @param TimeToLiveSpecification [TimeToLiveSpecification] <p>Represents the settings used to enable or disable Time to Live for the specified table.</p>
-- Required parameter: TableName
-- Required parameter: TimeToLiveSpecification
function M.UpdateTimeToLiveInput(TableName, TimeToLiveSpecification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTimeToLiveInput")
	local t = { 
		["TableName"] = TableName,
		["TimeToLiveSpecification"] = TimeToLiveSpecification,
	}
	M.AssertUpdateTimeToLiveInput(t)
	return t
end

local DeleteTableInput_keys = { "TableName" = true, nil }

function M.AssertDeleteTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTableInput_keys[k], "DeleteTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableInput
-- <p>Represents the input of a <code>DeleteTable</code> operation.</p>
-- @param TableName [TableName] <p>The name of the table to delete.</p>
-- Required parameter: TableName
function M.DeleteTableInput(TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTableInput")
	local t = { 
		["TableName"] = TableName,
	}
	M.AssertDeleteTableInput(t)
	return t
end

local TimeToLiveDescription_keys = { "AttributeName" = true, "TimeToLiveStatus" = true, nil }

function M.AssertTimeToLiveDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeToLiveDescription to be of type 'table'")
	if struct["AttributeName"] then M.AssertTimeToLiveAttributeName(struct["AttributeName"]) end
	if struct["TimeToLiveStatus"] then M.AssertTimeToLiveStatus(struct["TimeToLiveStatus"]) end
	for k,_ in pairs(struct) do
		assert(TimeToLiveDescription_keys[k], "TimeToLiveDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeToLiveDescription
-- <p>The description of the Time to Live (TTL) status on the specified table. </p>
-- @param AttributeName [TimeToLiveAttributeName] <p> The name of the Time to Live attribute for items in the table.</p>
-- @param TimeToLiveStatus [TimeToLiveStatus] <p> The Time to Live status for the table.</p>
function M.TimeToLiveDescription(AttributeName, TimeToLiveStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeToLiveDescription")
	local t = { 
		["AttributeName"] = AttributeName,
		["TimeToLiveStatus"] = TimeToLiveStatus,
	}
	M.AssertTimeToLiveDescription(t)
	return t
end

local ProvisionedThroughput_keys = { "WriteCapacityUnits" = true, "ReadCapacityUnits" = true, nil }

function M.AssertProvisionedThroughput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughput to be of type 'table'")
	assert(struct["ReadCapacityUnits"], "Expected key ReadCapacityUnits to exist in table")
	assert(struct["WriteCapacityUnits"], "Expected key WriteCapacityUnits to exist in table")
	if struct["WriteCapacityUnits"] then M.AssertPositiveLongObject(struct["WriteCapacityUnits"]) end
	if struct["ReadCapacityUnits"] then M.AssertPositiveLongObject(struct["ReadCapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionedThroughput_keys[k], "ProvisionedThroughput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughput
-- <p>Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the <code>UpdateTable</code> operation.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param WriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: ReadCapacityUnits
-- Required parameter: WriteCapacityUnits
function M.ProvisionedThroughput(WriteCapacityUnits, ReadCapacityUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughput")
	local t = { 
		["WriteCapacityUnits"] = WriteCapacityUnits,
		["ReadCapacityUnits"] = ReadCapacityUnits,
	}
	M.AssertProvisionedThroughput(t)
	return t
end

local ExpectedAttributeValue_keys = { "ComparisonOperator" = true, "Exists" = true, "Value" = true, "AttributeValueList" = true, nil }

function M.AssertExpectedAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpectedAttributeValue to be of type 'table'")
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["Exists"] then M.AssertBooleanObject(struct["Exists"]) end
	if struct["Value"] then M.AssertAttributeValue(struct["Value"]) end
	if struct["AttributeValueList"] then M.AssertAttributeValueList(struct["AttributeValueList"]) end
	for k,_ in pairs(struct) do
		assert(ExpectedAttributeValue_keys[k], "ExpectedAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpectedAttributeValue
-- <p>Represents a condition to be compared with an attribute value. This condition can be used with <code>DeleteItem</code>, <code>PutItem</code> or <code>UpdateItem</code> operations; if the comparison evaluates to true, the operation succeeds; if not, the operation fails. You can use <code>ExpectedAttributeValue</code> in one of two different ways:</p> <ul> <li> <p>Use <code>AttributeValueList</code> to specify one or more values to compare against an attribute. Use <code>ComparisonOperator</code> to specify how you want to perform the comparison. If the comparison evaluates to true, then the conditional operation succeeds.</p> </li> <li> <p>Use <code>Value</code> to specify a value that DynamoDB will compare against an attribute. If the values match, then <code>ExpectedAttributeValue</code> evaluates to true and the conditional operation succeeds. Optionally, you can also set <code>Exists</code> to false, indicating that you <i>do not</i> expect to find the attribute value in the table. In this case, the conditional operation succeeds only if the comparison evaluates to false.</p> </li> </ul> <p> <code>Value</code> and <code>Exists</code> are incompatible with <code>AttributeValueList</code> and <code>ComparisonOperator</code>. Note that if you use both sets of parameters at once, DynamoDB will return a <code>ValidationException</code> exception.</p>
-- @param ComparisonOperator [ComparisonOperator] <p>A comparator for evaluating attributes in the <code>AttributeValueList</code>. For example, equals, greater than, less than, etc.</p> <p>The following comparison operators are available:</p> <p> <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN</code> </p> <p>The following are descriptions of each comparison operator.</p> <ul> <li> <p> <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NE</code> : Not equal. <code>NE</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LE</code> : Less than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LT</code> : Less than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GE</code> : Greater than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GT</code> : Greater than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the existence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This result is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NOT_NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NULL</code>, the result is a Boolean <code>false</code>. This is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it finds an exact match with any member of the set.</p> <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it <i>does not</i> find an exact match with any member of the set.</p> <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>BEGINS_WITH</code> : Checks for a prefix. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).</p> <p/> </li> <li> <p> <code>IN</code> : Checks for matching elements in a list.</p> <p> <code>AttributeValueList</code> can contain one or more <code>AttributeValue</code> elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.</p> </li> <li> <p> <code>BETWEEN</code> : Greater than or equal to the first value, and less than or equal to the second value. </p> <p> <code>AttributeValueList</code> must contain two <code>AttributeValue</code> elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code> </p> </li> </ul>
-- @param Exists [BooleanObject] <p>Causes DynamoDB to evaluate the value before attempting a conditional operation:</p> <ul> <li> <p>If <code>Exists</code> is <code>true</code>, DynamoDB will check to see if that attribute value already exists in the table. If it is found, then the operation succeeds. If it is not found, the operation fails with a <code>ConditionalCheckFailedException</code>.</p> </li> <li> <p>If <code>Exists</code> is <code>false</code>, DynamoDB assumes that the attribute value does not exist in the table. If in fact the value does not exist, then the assumption is valid and the operation succeeds. If the value is found, despite the assumption that it does not exist, the operation fails with a <code>ConditionalCheckFailedException</code>.</p> </li> </ul> <p>The default setting for <code>Exists</code> is <code>true</code>. If you supply a <code>Value</code> all by itself, DynamoDB assumes the attribute exists: You don't have to set <code>Exists</code> to <code>true</code>, because it is implied.</p> <p>DynamoDB returns a <code>ValidationException</code> if:</p> <ul> <li> <p> <code>Exists</code> is <code>true</code> but there is no <code>Value</code> to check. (You expect a value to exist, but don't specify what that value is.)</p> </li> <li> <p> <code>Exists</code> is <code>false</code> but you also provide a <code>Value</code>. (You cannot expect an attribute to have a value, while also expecting it not to exist.)</p> </li> </ul>
-- @param Value [AttributeValue] <p>Represents the data for the expected attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param AttributeValueList [AttributeValueList] <p>One or more values to evaluate against the supplied attribute. The number of values in the list depends on the <code>ComparisonOperator</code> being used.</p> <p>For type Number, value comparisons are numeric.</p> <p>String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, <code>a</code> is greater than <code>A</code>, and <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p> <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.</p> <p>For information on specifying data types in JSON, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html">JSON Data Format</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.ExpectedAttributeValue(ComparisonOperator, Exists, Value, AttributeValueList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpectedAttributeValue")
	local t = { 
		["ComparisonOperator"] = ComparisonOperator,
		["Exists"] = Exists,
		["Value"] = Value,
		["AttributeValueList"] = AttributeValueList,
	}
	M.AssertExpectedAttributeValue(t)
	return t
end

local DeleteItemInput_keys = { "ConditionalOperator" = true, "ExpressionAttributeNames" = true, "ReturnValues" = true, "ConditionExpression" = true, "TableName" = true, "ReturnItemCollectionMetrics" = true, "ReturnConsumedCapacity" = true, "ExpressionAttributeValues" = true, "Key" = true, "Expected" = true, nil }

function M.AssertDeleteItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteItemInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ConditionalOperator"] then M.AssertConditionalOperator(struct["ConditionalOperator"]) end
	if struct["ExpressionAttributeNames"] then M.AssertExpressionAttributeNameMap(struct["ExpressionAttributeNames"]) end
	if struct["ReturnValues"] then M.AssertReturnValue(struct["ReturnValues"]) end
	if struct["ConditionExpression"] then M.AssertConditionExpression(struct["ConditionExpression"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["ReturnItemCollectionMetrics"] then M.AssertReturnItemCollectionMetrics(struct["ReturnItemCollectionMetrics"]) end
	if struct["ReturnConsumedCapacity"] then M.AssertReturnConsumedCapacity(struct["ReturnConsumedCapacity"]) end
	if struct["ExpressionAttributeValues"] then M.AssertExpressionAttributeValueMap(struct["ExpressionAttributeValues"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	if struct["Expected"] then M.AssertExpectedAttributeMap(struct["Expected"]) end
	for k,_ in pairs(struct) do
		assert(DeleteItemInput_keys[k], "DeleteItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteItemInput
-- <p>Represents the input of a <code>DeleteItem</code> operation.</p>
-- @param ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared before they were deleted. For <code>DeleteItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - The content of the old item is returned.</p> </li> </ul> <note> <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations; however, <code>DeleteItem</code> does not recognize any values other than <code>NONE</code> or <code>ALL_OLD</code>.</p> </note>
-- @param ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code> to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param TableName [TableName] <p>The name of the table from which to delete the item.</p>
-- @param ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- @param ReturnConsumedCapacity [ReturnConsumedCapacity] <p>Represents the input of a <code>DeleteItem</code> operation.</p>
-- @param ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param Key [Key] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the primary key of the item to delete.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- @param Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpresssion</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
-- Required parameter: Key
function M.DeleteItemInput(ConditionalOperator, ExpressionAttributeNames, ReturnValues, ConditionExpression, TableName, ReturnItemCollectionMetrics, ReturnConsumedCapacity, ExpressionAttributeValues, Key, Expected, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteItemInput")
	local t = { 
		["ConditionalOperator"] = ConditionalOperator,
		["ExpressionAttributeNames"] = ExpressionAttributeNames,
		["ReturnValues"] = ReturnValues,
		["ConditionExpression"] = ConditionExpression,
		["TableName"] = TableName,
		["ReturnItemCollectionMetrics"] = ReturnItemCollectionMetrics,
		["ReturnConsumedCapacity"] = ReturnConsumedCapacity,
		["ExpressionAttributeValues"] = ExpressionAttributeValues,
		["Key"] = Key,
		["Expected"] = Expected,
	}
	M.AssertDeleteItemInput(t)
	return t
end

local CreateGlobalSecondaryIndexAction_keys = { "KeySchema" = true, "IndexName" = true, "Projection" = true, "ProvisionedThroughput" = true, nil }

function M.AssertCreateGlobalSecondaryIndexAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGlobalSecondaryIndexAction to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	assert(struct["KeySchema"], "Expected key KeySchema to exist in table")
	assert(struct["Projection"], "Expected key Projection to exist in table")
	assert(struct["ProvisionedThroughput"], "Expected key ProvisionedThroughput to exist in table")
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then M.AssertProjection(struct["Projection"]) end
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	for k,_ in pairs(struct) do
		assert(CreateGlobalSecondaryIndexAction_keys[k], "CreateGlobalSecondaryIndexAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGlobalSecondaryIndexAction
-- <p>Represents a new global secondary index to be added to an existing table.</p>
-- @param KeySchema [KeySchema] <p>The key schema for the global secondary index.</p>
-- @param IndexName [IndexName] <p>The name of the global secondary index to be created.</p>
-- @param Projection [Projection] <p>Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.</p>
-- @param ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: IndexName
-- Required parameter: KeySchema
-- Required parameter: Projection
-- Required parameter: ProvisionedThroughput
function M.CreateGlobalSecondaryIndexAction(KeySchema, IndexName, Projection, ProvisionedThroughput, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGlobalSecondaryIndexAction")
	local t = { 
		["KeySchema"] = KeySchema,
		["IndexName"] = IndexName,
		["Projection"] = Projection,
		["ProvisionedThroughput"] = ProvisionedThroughput,
	}
	M.AssertCreateGlobalSecondaryIndexAction(t)
	return t
end

local ScanOutput_keys = { "Count" = true, "Items" = true, "LastEvaluatedKey" = true, "ScannedCount" = true, "ConsumedCapacity" = true, nil }

function M.AssertScanOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScanOutput to be of type 'table'")
	if struct["Count"] then M.AssertInteger(struct["Count"]) end
	if struct["Items"] then M.AssertItemList(struct["Items"]) end
	if struct["LastEvaluatedKey"] then M.AssertKey(struct["LastEvaluatedKey"]) end
	if struct["ScannedCount"] then M.AssertInteger(struct["ScannedCount"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(ScanOutput_keys[k], "ScanOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScanOutput
-- <p>Represents the output of a <code>Scan</code> operation.</p>
-- @param Count [Integer] <p>The number of items in the response.</p> <p>If you set <code>ScanFilter</code> in the request, then <code>Count</code> is the number of items returned after the filter was applied, and <code>ScannedCount</code> is the number of matching items before the filter was applied.</p> <p>If you did not use a filter in the request, then <code>Count</code> is the same as <code>ScannedCount</code>.</p>
-- @param Items [ItemList] <p>An array of item attributes that match the scan criteria. Each element in this array consists of an attribute name and the value for that attribute.</p>
-- @param LastEvaluatedKey [Key] <p>The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedKey</code> is empty.</p>
-- @param ScannedCount [Integer] <p>The number of items evaluated, before any <code>ScanFilter</code> is applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Scan</code> operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same as <code>Count</code>.</p>
-- @param ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>Scan</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.ScanOutput(Count, Items, LastEvaluatedKey, ScannedCount, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanOutput")
	local t = { 
		["Count"] = Count,
		["Items"] = Items,
		["LastEvaluatedKey"] = LastEvaluatedKey,
		["ScannedCount"] = ScannedCount,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertScanOutput(t)
	return t
end

local DescribeLimitsOutput_keys = { "TableMaxWriteCapacityUnits" = true, "TableMaxReadCapacityUnits" = true, "AccountMaxReadCapacityUnits" = true, "AccountMaxWriteCapacityUnits" = true, nil }

function M.AssertDescribeLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsOutput to be of type 'table'")
	if struct["TableMaxWriteCapacityUnits"] then M.AssertPositiveLongObject(struct["TableMaxWriteCapacityUnits"]) end
	if struct["TableMaxReadCapacityUnits"] then M.AssertPositiveLongObject(struct["TableMaxReadCapacityUnits"]) end
	if struct["AccountMaxReadCapacityUnits"] then M.AssertPositiveLongObject(struct["AccountMaxReadCapacityUnits"]) end
	if struct["AccountMaxWriteCapacityUnits"] then M.AssertPositiveLongObject(struct["AccountMaxWriteCapacityUnits"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLimitsOutput_keys[k], "DescribeLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsOutput
-- <p>Represents the output of a <code>DescribeLimits</code> operation.</p>
-- @param TableMaxWriteCapacityUnits [PositiveLongObject] <p>The maximum write capacity units that your account allows you to provision for a new table that you are creating in this region, including the write capacity units provisioned for its global secondary indexes (GSIs).</p>
-- @param TableMaxReadCapacityUnits [PositiveLongObject] <p>The maximum read capacity units that your account allows you to provision for a new table that you are creating in this region, including the read capacity units provisioned for its global secondary indexes (GSIs).</p>
-- @param AccountMaxReadCapacityUnits [PositiveLongObject] <p>The maximum total read capacity units that your account allows you to provision across all of your tables in this region.</p>
-- @param AccountMaxWriteCapacityUnits [PositiveLongObject] <p>The maximum total write capacity units that your account allows you to provision across all of your tables in this region.</p>
function M.DescribeLimitsOutput(TableMaxWriteCapacityUnits, TableMaxReadCapacityUnits, AccountMaxReadCapacityUnits, AccountMaxWriteCapacityUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsOutput")
	local t = { 
		["TableMaxWriteCapacityUnits"] = TableMaxWriteCapacityUnits,
		["TableMaxReadCapacityUnits"] = TableMaxReadCapacityUnits,
		["AccountMaxReadCapacityUnits"] = AccountMaxReadCapacityUnits,
		["AccountMaxWriteCapacityUnits"] = AccountMaxWriteCapacityUnits,
	}
	M.AssertDescribeLimitsOutput(t)
	return t
end

local UpdateTableOutput_keys = { "TableDescription" = true, nil }

function M.AssertUpdateTableOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableOutput to be of type 'table'")
	if struct["TableDescription"] then M.AssertTableDescription(struct["TableDescription"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTableOutput_keys[k], "UpdateTableOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableOutput
-- <p>Represents the output of an <code>UpdateTable</code> operation.</p>
-- @param TableDescription [TableDescription] <p>Represents the properties of the table.</p>
function M.UpdateTableOutput(TableDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTableOutput")
	local t = { 
		["TableDescription"] = TableDescription,
	}
	M.AssertUpdateTableOutput(t)
	return t
end

local UpdateItemOutput_keys = { "Attributes" = true, "ItemCollectionMetrics" = true, "ConsumedCapacity" = true, nil }

function M.AssertUpdateItemOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateItemOutput to be of type 'table'")
	if struct["Attributes"] then M.AssertAttributeMap(struct["Attributes"]) end
	if struct["ItemCollectionMetrics"] then M.AssertItemCollectionMetrics(struct["ItemCollectionMetrics"]) end
	if struct["ConsumedCapacity"] then M.AssertConsumedCapacity(struct["ConsumedCapacity"]) end
	for k,_ in pairs(struct) do
		assert(UpdateItemOutput_keys[k], "UpdateItemOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateItemOutput
-- <p>Represents the output of an <code>UpdateItem</code> operation.</p>
-- @param Attributes [AttributeMap] <p>A map of attribute values as they appeared before the <code>UpdateItem</code> operation. This map only appears if <code>ReturnValues</code> was specified as something other than <code>NONE</code> in the request. Each element represents one attribute.</p>
-- @param ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>UpdateItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>UpdateItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.UpdateItemOutput(Attributes, ItemCollectionMetrics, ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateItemOutput")
	local t = { 
		["Attributes"] = Attributes,
		["ItemCollectionMetrics"] = ItemCollectionMetrics,
		["ConsumedCapacity"] = ConsumedCapacity,
	}
	M.AssertUpdateItemOutput(t)
	return t
end

local LocalSecondaryIndexDescription_keys = { "IndexSizeBytes" = true, "IndexName" = true, "Projection" = true, "IndexArn" = true, "KeySchema" = true, "ItemCount" = true, nil }

function M.AssertLocalSecondaryIndexDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LocalSecondaryIndexDescription to be of type 'table'")
	if struct["IndexSizeBytes"] then M.AssertLong(struct["IndexSizeBytes"]) end
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	if struct["Projection"] then M.AssertProjection(struct["Projection"]) end
	if struct["IndexArn"] then M.AssertString(struct["IndexArn"]) end
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["ItemCount"] then M.AssertLong(struct["ItemCount"]) end
	for k,_ in pairs(struct) do
		assert(LocalSecondaryIndexDescription_keys[k], "LocalSecondaryIndexDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LocalSecondaryIndexDescription
-- <p>Represents the properties of a local secondary index.</p>
-- @param IndexSizeBytes [Long] <p>The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param IndexName [IndexName] <p>Represents the name of the local secondary index.</p>
-- @param Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @param IndexArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
-- @param KeySchema [KeySchema] <p>The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param ItemCount [Long] <p>The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
function M.LocalSecondaryIndexDescription(IndexSizeBytes, IndexName, Projection, IndexArn, KeySchema, ItemCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LocalSecondaryIndexDescription")
	local t = { 
		["IndexSizeBytes"] = IndexSizeBytes,
		["IndexName"] = IndexName,
		["Projection"] = Projection,
		["IndexArn"] = IndexArn,
		["KeySchema"] = KeySchema,
		["ItemCount"] = ItemCount,
	}
	M.AssertLocalSecondaryIndexDescription(t)
	return t
end

local PutRequest_keys = { "Item" = true, nil }

function M.AssertPutRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRequest to be of type 'table'")
	assert(struct["Item"], "Expected key Item to exist in table")
	if struct["Item"] then M.AssertPutItemInputAttributeMap(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(PutRequest_keys[k], "PutRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRequest
-- <p>Represents a request to perform a <code>PutItem</code> operation on an item.</p>
-- @param Item [PutItemInputAttributeMap] <p>A map of attribute name to attribute values, representing the primary key of an item to be processed by <code>PutItem</code>. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema. If any attributes are present in the item which are part of an index key schema for the table, their types must match the index key schema.</p>
-- Required parameter: Item
function M.PutRequest(Item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRequest")
	local t = { 
		["Item"] = Item,
	}
	M.AssertPutRequest(t)
	return t
end

local DescribeTimeToLiveOutput_keys = { "TimeToLiveDescription" = true, nil }

function M.AssertDescribeTimeToLiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTimeToLiveOutput to be of type 'table'")
	if struct["TimeToLiveDescription"] then M.AssertTimeToLiveDescription(struct["TimeToLiveDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTimeToLiveOutput_keys[k], "DescribeTimeToLiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTimeToLiveOutput
--  
-- @param TimeToLiveDescription [TimeToLiveDescription] <p/>
function M.DescribeTimeToLiveOutput(TimeToLiveDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeToLiveOutput")
	local t = { 
		["TimeToLiveDescription"] = TimeToLiveDescription,
	}
	M.AssertDescribeTimeToLiveOutput(t)
	return t
end

local ConsumedCapacity_keys = { "CapacityUnits" = true, "GlobalSecondaryIndexes" = true, "TableName" = true, "LocalSecondaryIndexes" = true, "Table" = true, nil }

function M.AssertConsumedCapacity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConsumedCapacity to be of type 'table'")
	if struct["CapacityUnits"] then M.AssertConsumedCapacityUnits(struct["CapacityUnits"]) end
	if struct["GlobalSecondaryIndexes"] then M.AssertSecondaryIndexesCapacityMap(struct["GlobalSecondaryIndexes"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["LocalSecondaryIndexes"] then M.AssertSecondaryIndexesCapacityMap(struct["LocalSecondaryIndexes"]) end
	if struct["Table"] then M.AssertCapacity(struct["Table"]) end
	for k,_ in pairs(struct) do
		assert(ConsumedCapacity_keys[k], "ConsumedCapacity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConsumedCapacity
-- <p>The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the request asked for it. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param CapacityUnits [ConsumedCapacityUnits] <p>The total number of capacity units consumed by the operation.</p>
-- @param GlobalSecondaryIndexes [SecondaryIndexesCapacityMap] <p>The amount of throughput consumed on each global index affected by the operation.</p>
-- @param TableName [TableName] <p>The name of the table that was affected by the operation.</p>
-- @param LocalSecondaryIndexes [SecondaryIndexesCapacityMap] <p>The amount of throughput consumed on each local index affected by the operation.</p>
-- @param Table [Capacity] <p>The amount of throughput consumed on the table affected by the operation.</p>
function M.ConsumedCapacity(CapacityUnits, GlobalSecondaryIndexes, TableName, LocalSecondaryIndexes, Table, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConsumedCapacity")
	local t = { 
		["CapacityUnits"] = CapacityUnits,
		["GlobalSecondaryIndexes"] = GlobalSecondaryIndexes,
		["TableName"] = TableName,
		["LocalSecondaryIndexes"] = LocalSecondaryIndexes,
		["Table"] = Table,
	}
	M.AssertConsumedCapacity(t)
	return t
end

local ItemCollectionSizeLimitExceededException_keys = { "message" = true, nil }

function M.AssertItemCollectionSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemCollectionSizeLimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ItemCollectionSizeLimitExceededException_keys[k], "ItemCollectionSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemCollectionSizeLimitExceededException
-- <p>An item collection is too large. This exception is only returned for tables that have one or more local secondary indexes.</p>
-- @param message [ErrorMessage] <p>The total size of an item collection has exceeded the maximum limit of 10 gigabytes.</p>
function M.ItemCollectionSizeLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ItemCollectionSizeLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertItemCollectionSizeLimitExceededException(t)
	return t
end

local DeleteRequest_keys = { "Key" = true, nil }

function M.AssertDeleteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRequest to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRequest_keys[k], "DeleteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRequest
-- <p>Represents a request to perform a <code>DeleteItem</code> operation on an item.</p>
-- @param Key [Key] <p>A map of attribute name to attribute values, representing the primary key of the item to delete. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema.</p>
-- Required parameter: Key
function M.DeleteRequest(Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRequest")
	local t = { 
		["Key"] = Key,
	}
	M.AssertDeleteRequest(t)
	return t
end

local TagResourceInput_keys = { "ResourceArn" = true, "Tags" = true, nil }

function M.AssertTagResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceInput to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then M.AssertResourceArnString(struct["ResourceArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceInput_keys[k], "TagResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceInput
--  
-- @param ResourceArn [ResourceArnString] <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is an Amazon Resource Name (ARN).</p>
-- @param Tags [TagList] <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.TagResourceInput(ResourceArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceInput")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Tags"] = Tags,
	}
	M.AssertTagResourceInput(t)
	return t
end

local DescribeLimitsInput_keys = { nil }

function M.AssertDescribeLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLimitsInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeLimitsInput_keys[k], "DescribeLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLimitsInput
-- <p>Represents the input of a <code>DescribeLimits</code> operation. Has no content.</p>
function M.DescribeLimitsInput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsInput")
	local t = { 
	}
	M.AssertDescribeLimitsInput(t)
	return t
end

local DeleteGlobalSecondaryIndexAction_keys = { "IndexName" = true, nil }

function M.AssertDeleteGlobalSecondaryIndexAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGlobalSecondaryIndexAction to be of type 'table'")
	assert(struct["IndexName"], "Expected key IndexName to exist in table")
	if struct["IndexName"] then M.AssertIndexName(struct["IndexName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGlobalSecondaryIndexAction_keys[k], "DeleteGlobalSecondaryIndexAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGlobalSecondaryIndexAction
-- <p>Represents a global secondary index to be deleted from an existing table.</p>
-- @param IndexName [IndexName] <p>The name of the global secondary index to be deleted.</p>
-- Required parameter: IndexName
function M.DeleteGlobalSecondaryIndexAction(IndexName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGlobalSecondaryIndexAction")
	local t = { 
		["IndexName"] = IndexName,
	}
	M.AssertDeleteGlobalSecondaryIndexAction(t)
	return t
end

local TableDescription_keys = { "TableArn" = true, "LocalSecondaryIndexes" = true, "AttributeDefinitions" = true, "GlobalSecondaryIndexes" = true, "ProvisionedThroughput" = true, "TableSizeBytes" = true, "TableName" = true, "TableStatus" = true, "StreamSpecification" = true, "LatestStreamLabel" = true, "KeySchema" = true, "ItemCount" = true, "CreationDateTime" = true, "LatestStreamArn" = true, nil }

function M.AssertTableDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableDescription to be of type 'table'")
	if struct["TableArn"] then M.AssertString(struct["TableArn"]) end
	if struct["LocalSecondaryIndexes"] then M.AssertLocalSecondaryIndexDescriptionList(struct["LocalSecondaryIndexes"]) end
	if struct["AttributeDefinitions"] then M.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	if struct["GlobalSecondaryIndexes"] then M.AssertGlobalSecondaryIndexDescriptionList(struct["GlobalSecondaryIndexes"]) end
	if struct["ProvisionedThroughput"] then M.AssertProvisionedThroughputDescription(struct["ProvisionedThroughput"]) end
	if struct["TableSizeBytes"] then M.AssertLong(struct["TableSizeBytes"]) end
	if struct["TableName"] then M.AssertTableName(struct["TableName"]) end
	if struct["TableStatus"] then M.AssertTableStatus(struct["TableStatus"]) end
	if struct["StreamSpecification"] then M.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["LatestStreamLabel"] then M.AssertString(struct["LatestStreamLabel"]) end
	if struct["KeySchema"] then M.AssertKeySchema(struct["KeySchema"]) end
	if struct["ItemCount"] then M.AssertLong(struct["ItemCount"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["LatestStreamArn"] then M.AssertStreamArn(struct["LatestStreamArn"]) end
	for k,_ in pairs(struct) do
		assert(TableDescription_keys[k], "TableDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableDescription
-- <p>Represents the properties of a table.</p>
-- @param TableArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the table.</p>
-- @param LocalSecondaryIndexes [LocalSecondaryIndexDescriptionList] <p>Represents one or more local secondary indexes on the table. Each index is scoped to a given partition key value. Tables with one or more local secondary indexes are subject to an item collection size limit, where the amount of data within a given item collection cannot exceed 10 GB. Each element is composed of:</p> <ul> <li> <p> <code>IndexName</code> - The name of the local secondary index.</p> </li> <li> <p> <code>KeySchema</code> - Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>IndexSizeBytes</code> - Represents the total size of the index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p> </li> <li> <p> <code>ItemCount</code> - Represents the number of items in the index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p> </li> </ul> <p>If the table is in the <code>DELETING</code> state, no information about indexes will be returned.</p>
-- @param AttributeDefinitions [AttributeDefinitions] <p>An array of <code>AttributeDefinition</code> objects. Each of these objects describes one attribute in the table and index key schema.</p> <p>Each <code>AttributeDefinition</code> object in this array is composed of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of the attribute.</p> </li> <li> <p> <code>AttributeType</code> - The data type for the attribute.</p> </li> </ul>
-- @param GlobalSecondaryIndexes [GlobalSecondaryIndexDescriptionList] <p>The global secondary indexes, if any, on the table. Each index is scoped to a given partition key value. Each element is composed of:</p> <ul> <li> <p> <code>Backfilling</code> - If true, then the index is currently in the backfilling phase. Backfilling occurs only when a new global secondary index is added to the table; it is the process by which DynamoDB populates the new index with data from the table. (This attribute does not appear for indexes that were created during a <code>CreateTable</code> operation.)</p> </li> <li> <p> <code>IndexName</code> - The name of the global secondary index.</p> </li> <li> <p> <code>IndexSizeBytes</code> - The total size of the global secondary index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value. </p> </li> <li> <p> <code>IndexStatus</code> - The current status of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The index is ready for use.</p> </li> </ul> </li> <li> <p> <code>ItemCount</code> - The number of items in the global secondary index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value. </p> </li> <li> <p> <code>KeySchema</code> - Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>ProvisionedThroughput</code> - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units, along with data about increases and decreases. </p> </li> </ul> <p>If the table is in the <code>DELETING</code> state, no information about indexes will be returned.</p>
-- @param ProvisionedThroughput [ProvisionedThroughputDescription] <p>The provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.</p>
-- @param TableSizeBytes [Long] <p>The total size of the specified table, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param TableName [TableName] <p>The name of the table.</p>
-- @param TableStatus [TableStatus] <p>The current state of the table:</p> <ul> <li> <p> <code>CREATING</code> - The table is being created.</p> </li> <li> <p> <code>UPDATING</code> - The table is being updated.</p> </li> <li> <p> <code>DELETING</code> - The table is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The table is ready for use.</p> </li> </ul>
-- @param StreamSpecification [StreamSpecification] <p>The current DynamoDB Streams configuration for the table.</p>
-- @param LatestStreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name.</p> </li> <li> <p>the <code>StreamLabel</code>.</p> </li> </ul>
-- @param KeySchema [KeySchema] <p>The primary key structure for the table. Each <code>KeySchemaElement</code> consists of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of the attribute.</p> </li> <li> <p> <code>KeyType</code> - The role of the attribute:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note> </li> </ul> <p>For more information about primary keys, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param ItemCount [Long] <p>The number of items in the specified table. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param CreationDateTime [Date] <p>The date and time when the table was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
-- @param LatestStreamArn [StreamArn] <p>The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this table.</p>
function M.TableDescription(TableArn, LocalSecondaryIndexes, AttributeDefinitions, GlobalSecondaryIndexes, ProvisionedThroughput, TableSizeBytes, TableName, TableStatus, StreamSpecification, LatestStreamLabel, KeySchema, ItemCount, CreationDateTime, LatestStreamArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableDescription")
	local t = { 
		["TableArn"] = TableArn,
		["LocalSecondaryIndexes"] = LocalSecondaryIndexes,
		["AttributeDefinitions"] = AttributeDefinitions,
		["GlobalSecondaryIndexes"] = GlobalSecondaryIndexes,
		["ProvisionedThroughput"] = ProvisionedThroughput,
		["TableSizeBytes"] = TableSizeBytes,
		["TableName"] = TableName,
		["TableStatus"] = TableStatus,
		["StreamSpecification"] = StreamSpecification,
		["LatestStreamLabel"] = LatestStreamLabel,
		["KeySchema"] = KeySchema,
		["ItemCount"] = ItemCount,
		["CreationDateTime"] = CreationDateTime,
		["LatestStreamArn"] = LatestStreamArn,
	}
	M.AssertTableDescription(t)
	return t
end

local WriteRequest_keys = { "PutRequest" = true, "DeleteRequest" = true, nil }

function M.AssertWriteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteRequest to be of type 'table'")
	if struct["PutRequest"] then M.AssertPutRequest(struct["PutRequest"]) end
	if struct["DeleteRequest"] then M.AssertDeleteRequest(struct["DeleteRequest"]) end
	for k,_ in pairs(struct) do
		assert(WriteRequest_keys[k], "WriteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteRequest
-- <p>Represents an operation to perform - either <code>DeleteItem</code> or <code>PutItem</code>. You can only request one of these operations, not both, in a single <code>WriteRequest</code>. If you do need to perform both of these operations, you will need to provide two separate <code>WriteRequest</code> objects.</p>
-- @param PutRequest [PutRequest] <p>A request to perform a <code>PutItem</code> operation.</p>
-- @param DeleteRequest [DeleteRequest] <p>A request to perform a <code>DeleteItem</code> operation.</p>
function M.WriteRequest(PutRequest, DeleteRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteRequest")
	local t = { 
		["PutRequest"] = PutRequest,
		["DeleteRequest"] = DeleteRequest,
	}
	M.AssertWriteRequest(t)
	return t
end

function M.AssertKeyExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyExpression to be of type 'string'")
end

--  
function M.KeyExpression(str)
	M.AssertKeyExpression(str)
	return str
end

function M.AssertReturnValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnValue to be of type 'string'")
end

--  
function M.ReturnValue(str)
	M.AssertReturnValue(str)
	return str
end

function M.AssertKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyType to be of type 'string'")
end

--  
function M.KeyType(str)
	M.AssertKeyType(str)
	return str
end

function M.AssertScalarAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalarAttributeType to be of type 'string'")
end

--  
function M.ScalarAttributeType(str)
	M.AssertScalarAttributeType(str)
	return str
end

function M.AssertAttributeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeAction to be of type 'string'")
end

--  
function M.AttributeAction(str)
	M.AssertAttributeAction(str)
	return str
end

function M.AssertStreamViewType(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamViewType to be of type 'string'")
end

--  
function M.StreamViewType(str)
	M.AssertStreamViewType(str)
	return str
end

function M.AssertConditionalOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ConditionalOperator to be of type 'string'")
end

--  
function M.ConditionalOperator(str)
	M.AssertConditionalOperator(str)
	return str
end

function M.AssertUpdateExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdateExpression to be of type 'string'")
end

--  
function M.UpdateExpression(str)
	M.AssertUpdateExpression(str)
	return str
end

function M.AssertTagKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKeyString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKeyString(str)
	M.AssertTagKeyString(str)
	return str
end

function M.AssertExpressionAttributeValueVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionAttributeValueVariable to be of type 'string'")
end

--  
function M.ExpressionAttributeValueVariable(str)
	M.AssertExpressionAttributeValueVariable(str)
	return str
end

function M.AssertStringAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringAttributeValue to be of type 'string'")
end

--  
function M.StringAttributeValue(str)
	M.AssertStringAttributeValue(str)
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

function M.AssertNumberAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumberAttributeValue to be of type 'string'")
end

--  
function M.NumberAttributeValue(str)
	M.AssertNumberAttributeValue(str)
	return str
end

function M.AssertReturnItemCollectionMetrics(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnItemCollectionMetrics to be of type 'string'")
end

--  
function M.ReturnItemCollectionMetrics(str)
	M.AssertReturnItemCollectionMetrics(str)
	return str
end

function M.AssertKeySchemaAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected KeySchemaAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeySchemaAttributeName(str)
	M.AssertKeySchemaAttributeName(str)
	return str
end

function M.AssertTagValueString(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValueString to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValueString(str)
	M.AssertTagValueString(str)
	return str
end

function M.AssertNextTokenString(str)
	assert(str)
	assert(type(str) == "string", "Expected NextTokenString to be of type 'string'")
end

--  
function M.NextTokenString(str)
	M.AssertNextTokenString(str)
	return str
end

function M.AssertExpressionAttributeNameVariable(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionAttributeNameVariable to be of type 'string'")
end

--  
function M.ExpressionAttributeNameVariable(str)
	M.AssertExpressionAttributeNameVariable(str)
	return str
end

function M.AssertIndexStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected IndexStatus to be of type 'string'")
end

--  
function M.IndexStatus(str)
	M.AssertIndexStatus(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertSelect(str)
	assert(str)
	assert(type(str) == "string", "Expected Select to be of type 'string'")
end

--  
function M.Select(str)
	M.AssertSelect(str)
	return str
end

function M.AssertTimeToLiveStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeToLiveStatus to be of type 'string'")
end

--  
function M.TimeToLiveStatus(str)
	M.AssertTimeToLiveStatus(str)
	return str
end

function M.AssertNonKeyAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected NonKeyAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonKeyAttributeName(str)
	M.AssertNonKeyAttributeName(str)
	return str
end

function M.AssertProjectionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectionType to be of type 'string'")
end

--  
function M.ProjectionType(str)
	M.AssertProjectionType(str)
	return str
end

function M.AssertReturnConsumedCapacity(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnConsumedCapacity to be of type 'string'")
end

-- <p>Determines the level of detail about provisioned throughput consumption that is returned in the response:</p> <ul> <li> <p> <code>INDEXES</code> - The response includes the aggregate <code>ConsumedCapacity</code> for the operation, together with <code>ConsumedCapacity</code> for each table and secondary index that was accessed.</p> <p>Note that some operations, such as <code>GetItem</code> and <code>BatchGetItem</code>, do not access any indexes at all. In these cases, specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code> information for table(s).</p> </li> <li> <p> <code>TOTAL</code> - The response includes only the aggregate <code>ConsumedCapacity</code> for the operation.</p> </li> <li> <p> <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the response.</p> </li> </ul>
function M.ReturnConsumedCapacity(str)
	M.AssertReturnConsumedCapacity(str)
	return str
end

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 65535, "Expected string to be max 65535 characters")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	M.AssertComparisonOperator(str)
	return str
end

function M.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.TableName(str)
	M.AssertTableName(str)
	return str
end

function M.AssertConditionExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ConditionExpression to be of type 'string'")
end

--  
function M.ConditionExpression(str)
	M.AssertConditionExpression(str)
	return str
end

function M.AssertResourceArnString(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArnString to be of type 'string'")
	assert(#str <= 1283, "Expected string to be max 1283 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArnString(str)
	M.AssertResourceArnString(str)
	return str
end

function M.AssertStreamArn(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamArn to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 37, "Expected string to be min 37 characters")
end

--  
function M.StreamArn(str)
	M.AssertStreamArn(str)
	return str
end

function M.AssertTableStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TableStatus to be of type 'string'")
end

--  
function M.TableStatus(str)
	M.AssertTableStatus(str)
	return str
end

function M.AssertTimeToLiveAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeToLiveAttributeName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TimeToLiveAttributeName(str)
	M.AssertTimeToLiveAttributeName(str)
	return str
end

function M.AssertIndexName(str)
	assert(str)
	assert(type(str) == "string", "Expected IndexName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("[a-zA-Z0-9_.-]+"), "Expected string to match pattern '[a-zA-Z0-9_.-]+'")
end

--  
function M.IndexName(str)
	M.AssertIndexName(str)
	return str
end

function M.AssertProjectionExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectionExpression to be of type 'string'")
end

--  
function M.ProjectionExpression(str)
	M.AssertProjectionExpression(str)
	return str
end

function M.AssertConsumedCapacityUnits(double)
	assert(double)
	assert(type(double) == "number", "Expected ConsumedCapacityUnits to be of type 'number'")
end

function M.ConsumedCapacityUnits(double)
	M.AssertConsumedCapacityUnits(double)
	return double
end

function M.AssertItemCollectionSizeEstimateBound(double)
	assert(double)
	assert(type(double) == "number", "Expected ItemCollectionSizeEstimateBound to be of type 'number'")
end

function M.ItemCollectionSizeEstimateBound(double)
	M.AssertItemCollectionSizeEstimateBound(double)
	return double
end

function M.AssertPositiveLongObject(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveLongObject to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveLongObject(long)
	M.AssertPositiveLongObject(long)
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

function M.AssertListTablesInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListTablesInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListTablesInputLimit(integer)
	M.AssertListTablesInputLimit(integer)
	return integer
end

function M.AssertScanTotalSegments(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ScanTotalSegments to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ScanTotalSegments(integer)
	M.AssertScanTotalSegments(integer)
	return integer
end

function M.AssertScanSegment(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ScanSegment to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 999999, "Expected integer to be max 999999")
end

function M.ScanSegment(integer)
	M.AssertScanSegment(integer)
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

function M.AssertPositiveIntegerObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerObject(integer)
	M.AssertPositiveIntegerObject(integer)
	return integer
end

function M.AssertStreamEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected StreamEnabled to be of type 'boolean'")
end

function M.StreamEnabled(boolean)
	M.AssertStreamEnabled(boolean)
	return boolean
end

function M.AssertTimeToLiveEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected TimeToLiveEnabled to be of type 'boolean'")
end

function M.TimeToLiveEnabled(boolean)
	M.AssertTimeToLiveEnabled(boolean)
	return boolean
end

function M.AssertNullAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullAttributeValue to be of type 'boolean'")
end

function M.NullAttributeValue(boolean)
	M.AssertNullAttributeValue(boolean)
	return boolean
end

function M.AssertBackfilling(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Backfilling to be of type 'boolean'")
end

function M.Backfilling(boolean)
	M.AssertBackfilling(boolean)
	return boolean
end

function M.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	M.AssertBooleanObject(boolean)
	return boolean
end

function M.AssertConsistentRead(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ConsistentRead to be of type 'boolean'")
end

function M.ConsistentRead(boolean)
	M.AssertConsistentRead(boolean)
	return boolean
end

function M.AssertBooleanAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanAttributeValue to be of type 'boolean'")
end

function M.BooleanAttributeValue(boolean)
	M.AssertBooleanAttributeValue(boolean)
	return boolean
end

function M.AssertItemCollectionKeyAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ItemCollectionKeyAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.ItemCollectionKeyAttributeMap(map)
	M.AssertItemCollectionKeyAttributeMap(map)
	return map
end

function M.AssertAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.AttributeMap(map)
	M.AssertAttributeMap(map)
	return map
end

function M.AssertFilterConditionMap(map)
	assert(map)
	assert(type(map) == "table", "Expected FilterConditionMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertCondition(v)
	end
end

function M.FilterConditionMap(map)
	M.AssertFilterConditionMap(map)
	return map
end

function M.AssertKey(map)
	assert(map)
	assert(type(map) == "table", "Expected Key to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.Key(map)
	M.AssertKey(map)
	return map
end

function M.AssertBatchGetRequestMap(map)
	assert(map)
	assert(type(map) == "table", "Expected BatchGetRequestMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTableName(k)
		M.AssertKeysAndAttributes(v)
	end
end

function M.BatchGetRequestMap(map)
	M.AssertBatchGetRequestMap(map)
	return map
end

function M.AssertAttributeUpdates(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeUpdates to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValueUpdate(v)
	end
end

function M.AttributeUpdates(map)
	M.AssertAttributeUpdates(map)
	return map
end

function M.AssertBatchGetResponseMap(map)
	assert(map)
	assert(type(map) == "table", "Expected BatchGetResponseMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTableName(k)
		M.AssertItemList(v)
	end
end

function M.BatchGetResponseMap(map)
	M.AssertBatchGetResponseMap(map)
	return map
end

function M.AssertExpressionAttributeNameMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExpressionAttributeNameMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertExpressionAttributeNameVariable(k)
		M.AssertAttributeName(v)
	end
end

function M.ExpressionAttributeNameMap(map)
	M.AssertExpressionAttributeNameMap(map)
	return map
end

function M.AssertExpressionAttributeValueMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExpressionAttributeValueMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertExpressionAttributeValueVariable(k)
		M.AssertAttributeValue(v)
	end
end

function M.ExpressionAttributeValueMap(map)
	M.AssertExpressionAttributeValueMap(map)
	return map
end

function M.AssertBatchWriteItemRequestMap(map)
	assert(map)
	assert(type(map) == "table", "Expected BatchWriteItemRequestMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTableName(k)
		M.AssertWriteRequests(v)
	end
end

function M.BatchWriteItemRequestMap(map)
	M.AssertBatchWriteItemRequestMap(map)
	return map
end

function M.AssertMapAttributeValue(map)
	assert(map)
	assert(type(map) == "table", "Expected MapAttributeValue to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.MapAttributeValue(map)
	M.AssertMapAttributeValue(map)
	return map
end

function M.AssertItemCollectionMetricsPerTable(map)
	assert(map)
	assert(type(map) == "table", "Expected ItemCollectionMetricsPerTable to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTableName(k)
		M.AssertItemCollectionMetricsMultiple(v)
	end
end

function M.ItemCollectionMetricsPerTable(map)
	M.AssertItemCollectionMetricsPerTable(map)
	return map
end

function M.AssertSecondaryIndexesCapacityMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SecondaryIndexesCapacityMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIndexName(k)
		M.AssertCapacity(v)
	end
end

function M.SecondaryIndexesCapacityMap(map)
	M.AssertSecondaryIndexesCapacityMap(map)
	return map
end

function M.AssertKeyConditions(map)
	assert(map)
	assert(type(map) == "table", "Expected KeyConditions to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertCondition(v)
	end
end

function M.KeyConditions(map)
	M.AssertKeyConditions(map)
	return map
end

function M.AssertExpectedAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExpectedAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertExpectedAttributeValue(v)
	end
end

function M.ExpectedAttributeMap(map)
	M.AssertExpectedAttributeMap(map)
	return map
end

function M.AssertPutItemInputAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PutItemInputAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.PutItemInputAttributeMap(map)
	M.AssertPutItemInputAttributeMap(map)
	return map
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	M.AssertBinaryAttributeValue(blob)
	return blob
end

function M.AssertGlobalSecondaryIndexDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGlobalSecondaryIndexDescription(v)
	end
end

--  
-- List of GlobalSecondaryIndexDescription objects
function M.GlobalSecondaryIndexDescriptionList(list)
	M.AssertGlobalSecondaryIndexDescriptionList(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKeyString(v)
	end
end

--  
-- List of TagKeyString objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertKeySchema(list)
	assert(list)
	assert(type(list) == "table", "Expected KeySchema to be of type ''table")
	assert(#list <= 2, "Expected list to be contain 2 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertKeySchemaElement(v)
	end
end

--  
-- List of KeySchemaElement objects
function M.KeySchema(list)
	M.AssertKeySchema(list)
	return list
end

function M.AssertLocalSecondaryIndexDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocalSecondaryIndexDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLocalSecondaryIndexDescription(v)
	end
end

--  
-- List of LocalSecondaryIndexDescription objects
function M.LocalSecondaryIndexDescriptionList(list)
	M.AssertLocalSecondaryIndexDescriptionList(list)
	return list
end

function M.AssertLocalSecondaryIndexList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocalSecondaryIndexList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLocalSecondaryIndex(v)
	end
end

--  
-- List of LocalSecondaryIndex objects
function M.LocalSecondaryIndexList(list)
	M.AssertLocalSecondaryIndexList(list)
	return list
end

function M.AssertNumberSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected NumberSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNumberAttributeValue(v)
	end
end

--  
-- List of NumberAttributeValue objects
function M.NumberSetAttributeValue(list)
	M.AssertNumberSetAttributeValue(list)
	return list
end

function M.AssertGlobalSecondaryIndexUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGlobalSecondaryIndexUpdate(v)
	end
end

--  
-- List of GlobalSecondaryIndexUpdate objects
function M.GlobalSecondaryIndexUpdateList(list)
	M.AssertGlobalSecondaryIndexUpdateList(list)
	return list
end

function M.AssertItemCollectionMetricsMultiple(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemCollectionMetricsMultiple to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertItemCollectionMetrics(v)
	end
end

--  
-- List of ItemCollectionMetrics objects
function M.ItemCollectionMetricsMultiple(list)
	M.AssertItemCollectionMetricsMultiple(list)
	return list
end

function M.AssertNonKeyAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected NonKeyAttributeNameList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertNonKeyAttributeName(v)
	end
end

--  
-- List of NonKeyAttributeName objects
function M.NonKeyAttributeNameList(list)
	M.AssertNonKeyAttributeNameList(list)
	return list
end

function M.AssertAttributeValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeValue(v)
	end
end

--  
-- List of AttributeValue objects
function M.AttributeValueList(list)
	M.AssertAttributeValueList(list)
	return list
end

function M.AssertStringSetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected StringSetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStringAttributeValue(v)
	end
end

--  
-- List of StringAttributeValue objects
function M.StringSetAttributeValue(list)
	M.AssertStringSetAttributeValue(list)
	return list
end

function M.AssertItemCollectionSizeEstimateRange(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemCollectionSizeEstimateRange to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertItemCollectionSizeEstimateBound(v)
	end
end

--  
-- List of ItemCollectionSizeEstimateBound objects
function M.ItemCollectionSizeEstimateRange(list)
	M.AssertItemCollectionSizeEstimateRange(list)
	return list
end

function M.AssertBinarySetAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected BinarySetAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBinaryAttributeValue(v)
	end
end

--  
-- List of BinaryAttributeValue objects
function M.BinarySetAttributeValue(list)
	M.AssertBinarySetAttributeValue(list)
	return list
end

function M.AssertTableNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTableName(v)
	end
end

--  
-- List of TableName objects
function M.TableNameList(list)
	M.AssertTableNameList(list)
	return list
end

function M.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.AttributeNameList(list)
	M.AssertAttributeNameList(list)
	return list
end

function M.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertKey(v)
	end
end

--  
-- List of Key objects
function M.KeyList(list)
	M.AssertKeyList(list)
	return list
end

function M.AssertWriteRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected WriteRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertWriteRequest(v)
	end
end

--  
-- List of WriteRequest objects
function M.WriteRequests(list)
	M.AssertWriteRequests(list)
	return list
end

function M.AssertGlobalSecondaryIndexList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlobalSecondaryIndexList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGlobalSecondaryIndex(v)
	end
end

--  
-- List of GlobalSecondaryIndex objects
function M.GlobalSecondaryIndexList(list)
	M.AssertGlobalSecondaryIndexList(list)
	return list
end

function M.AssertListAttributeValue(list)
	assert(list)
	assert(type(list) == "table", "Expected ListAttributeValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeValue(v)
	end
end

--  
-- List of AttributeValue objects
function M.ListAttributeValue(list)
	M.AssertListAttributeValue(list)
	return list
end

function M.AssertConsumedCapacityMultiple(list)
	assert(list)
	assert(type(list) == "table", "Expected ConsumedCapacityMultiple to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConsumedCapacity(v)
	end
end

--  
-- List of ConsumedCapacity objects
function M.ConsumedCapacityMultiple(list)
	M.AssertConsumedCapacityMultiple(list)
	return list
end

function M.AssertItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeMap(v)
	end
end

--  
-- List of AttributeMap objects
function M.ItemList(list)
	M.AssertItemList(list)
	return list
end

function M.AssertAttributeDefinitions(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeDefinitions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeDefinition(v)
	end
end

--  
-- List of AttributeDefinition objects
function M.AttributeDefinitions(list)
	M.AssertAttributeDefinitions(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- UpdateTimeToLive
-- @param UpdateTimeToLiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTimeToLiveAsync(UpdateTimeToLiveInput, cb)
	assert(UpdateTimeToLiveInput, "You must provide a UpdateTimeToLiveInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateTimeToLive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateTimeToLiveInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTable
-- @param UpdateTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTableAsync(UpdateTableInput, cb)
	assert(UpdateTableInput, "You must provide a UpdateTableInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateTableInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTable
-- @param DeleteTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTableAsync(DeleteTableInput, cb)
	assert(DeleteTableInput, "You must provide a DeleteTableInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTableInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLimits
-- @param DescribeLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLimitsAsync(DescribeLimitsInput, cb)
	assert(DescribeLimitsInput, "You must provide a DescribeLimitsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLimitsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource
-- @param UntagResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceInput, cb)
	assert(UntagResourceInput, "You must provide a UntagResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Scan
-- @param ScanInput
-- @param cb Callback function accepting two args: response, error_message
function M.ScanAsync(ScanInput, cb)
	assert(ScanInput, "You must provide a ScanInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.Scan",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScanInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsOfResource
-- @param ListTagsOfResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsOfResourceAsync(ListTagsOfResourceInput, cb)
	assert(ListTagsOfResourceInput, "You must provide a ListTagsOfResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListTagsOfResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsOfResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTimeToLive
-- @param DescribeTimeToLiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTimeToLiveAsync(DescribeTimeToLiveInput, cb)
	assert(DescribeTimeToLiveInput, "You must provide a DescribeTimeToLiveInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeTimeToLive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTimeToLiveInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTable
-- @param DescribeTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTableAsync(DescribeTableInput, cb)
	assert(DescribeTableInput, "You must provide a DescribeTableInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTableInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchWriteItem
-- @param BatchWriteItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchWriteItemAsync(BatchWriteItemInput, cb)
	assert(BatchWriteItemInput, "You must provide a BatchWriteItemInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.BatchWriteItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchWriteItemInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTable
-- @param CreateTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTableAsync(CreateTableInput, cb)
	assert(CreateTableInput, "You must provide a CreateTableInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.CreateTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTableInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTables
-- @param ListTablesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTablesAsync(ListTablesInput, cb)
	assert(ListTablesInput, "You must provide a ListTablesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListTables",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTablesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetItem
-- @param GetItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetItemAsync(GetItemInput, cb)
	assert(GetItemInput, "You must provide a GetItemInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.GetItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetItemInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Query
-- @param QueryInput
-- @param cb Callback function accepting two args: response, error_message
function M.QueryAsync(QueryInput, cb)
	assert(QueryInput, "You must provide a QueryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.Query",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", QueryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutItem
-- @param PutItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutItemAsync(PutItemInput, cb)
	assert(PutItemInput, "You must provide a PutItemInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.PutItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutItemInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateItem
-- @param UpdateItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateItemAsync(UpdateItemInput, cb)
	assert(UpdateItemInput, "You must provide a UpdateItemInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateItemInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource
-- @param TagResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceInput, cb)
	assert(TagResourceInput, "You must provide a TagResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteItem
-- @param DeleteItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteItemAsync(DeleteItemInput, cb)
	assert(DeleteItemInput, "You must provide a DeleteItemInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteItemInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetItem
-- @param BatchGetItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetItemAsync(BatchGetItemInput, cb)
	assert(BatchGetItemInput, "You must provide a BatchGetItemInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.BatchGetItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetItemInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
