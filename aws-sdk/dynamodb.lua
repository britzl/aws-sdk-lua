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
-- @param _Attributes [AttributeMap] <p>The attribute values as they appeared before the <code>PutItem</code> operation, but only if <code>ReturnValues</code> is specified as <code>ALL_OLD</code> in the request. Each element consists of an attribute name and an attribute value.</p>
-- @param _ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>PutItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param _ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>PutItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.PutItemOutput(_Attributes, _ItemCollectionMetrics, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutItemOutput")
	local t = { 
		["Attributes"] = _Attributes,
		["ItemCollectionMetrics"] = _ItemCollectionMetrics,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertPutItemOutput(t)
	return t
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
-- @param _ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared before they were updated with the <code>PutItem</code> request. For <code>PutItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value pair, then the content of the old item is returned.</p> </li> </ul> <note> <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations; however, <code>PutItem</code> does not recognize any values other than <code>NONE</code> or <code>ALL_OLD</code>.</p> </note>
-- @param _ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional <code>PutItem</code> operation to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table to contain the item.</p>
-- @param _ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _Item [PutItemInputAttributeMap] <p>A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.</p> <p>You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> <p>For more information about primary keys, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code> object.</p>
-- @param _ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpresssion</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
-- Required parameter: Item
function M.PutItemInput(_ConditionalOperator, _ExpressionAttributeNames, _ReturnValues, _ConditionExpression, _TableName, _ReturnItemCollectionMetrics, _ReturnConsumedCapacity, _Item, _ExpressionAttributeValues, _Expected, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutItemInput")
	local t = { 
		["ConditionalOperator"] = _ConditionalOperator,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
		["ReturnValues"] = _ReturnValues,
		["ConditionExpression"] = _ConditionExpression,
		["TableName"] = _TableName,
		["ReturnItemCollectionMetrics"] = _ReturnItemCollectionMetrics,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["Item"] = _Item,
		["ExpressionAttributeValues"] = _ExpressionAttributeValues,
		["Expected"] = _Expected,
	}
	asserts.AssertPutItemInput(t)
	return t
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
-- @param _ResourceArn [ResourceArnString] <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).</p>
-- @param _NextToken [NextTokenString] <p>An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.</p>
-- Required parameter: ResourceArn
function M.ListTagsOfResourceInput(_ResourceArn, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsOfResourceInput")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTagsOfResourceInput(t)
	return t
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
-- @param _ResourceArn [ResourceArnString] <p>The Amazon DyanamoDB resource the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
-- @param _TagKeys [TagKeyList] <p>A list of tag keys. Existing tags of the resource whose keys are members of this list will be removed from the Amazon DynamoDB resource.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.UntagResourceInput(_ResourceArn, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceInput")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertUntagResourceInput(t)
	return t
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
-- @param _KeyType [KeyType] <p>The role that this key attribute will assume:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param _AttributeName [KeySchemaAttributeName] <p>The name of a key attribute.</p>
-- Required parameter: AttributeName
-- Required parameter: KeyType
function M.KeySchemaElement(_KeyType, _AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeySchemaElement")
	local t = { 
		["KeyType"] = _KeyType,
		["AttributeName"] = _AttributeName,
	}
	asserts.AssertKeySchemaElement(t)
	return t
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
-- @param _UnprocessedItems [BatchWriteItemRequestMap] <p>A map of tables and requests against those tables that were not processed. The <code>UnprocessedItems</code> value is in the same form as <code>RequestItems</code>, so you can provide this value directly to a subsequent <code>BatchGetItem</code> operation. For more information, see <code>RequestItems</code> in the Request Parameters section.</p> <p>Each <code>UnprocessedItems</code> entry consists of a table name and, for that table, a list of operations to perform (<code>DeleteRequest</code> or <code>PutRequest</code>).</p> <ul> <li> <p> <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the specified item. The item to be deleted is identified by a <code>Key</code> subelement:</p> <ul> <li> <p> <code>Key</code> - A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value.</p> </li> </ul> </li> <li> <p> <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the specified item. The item to be put is identified by an <code>Item</code> subelement:</p> <ul> <li> <p> <code>Item</code> - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a <code>ValidationException</code> exception.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> </li> </ul> </li> </ul> <p>If there are no unprocessed items remaining, the response contains an empty <code>UnprocessedItems</code> map.</p>
-- @param _ItemCollectionMetrics [ItemCollectionMetricsPerTable] <p>A list of tables that were processed by <code>BatchWriteItem</code> and, for each table, information about any item collections that were affected by individual <code>DeleteItem</code> or <code>PutItem</code> operations.</p> <p>Each entry consists of the following subelements:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, expressed in GB. This is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on the table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param _ConsumedCapacity [ConsumedCapacityMultiple] <p>The capacity units consumed by the entire <code>BatchWriteItem</code> operation.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>TableName</code> - The table that consumed the provisioned throughput.</p> </li> <li> <p> <code>CapacityUnits</code> - The total number of capacity units consumed.</p> </li> </ul>
function M.BatchWriteItemOutput(_UnprocessedItems, _ItemCollectionMetrics, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteItemOutput")
	local t = { 
		["UnprocessedItems"] = _UnprocessedItems,
		["ItemCollectionMetrics"] = _ItemCollectionMetrics,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertBatchWriteItemOutput(t)
	return t
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
-- @param _ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _IndexName [IndexName] <p>The name of the global secondary index to be updated.</p>
-- Required parameter: IndexName
-- Required parameter: ProvisionedThroughput
function M.UpdateGlobalSecondaryIndexAction(_ProvisionedThroughput, _IndexName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGlobalSecondaryIndexAction")
	local t = { 
		["ProvisionedThroughput"] = _ProvisionedThroughput,
		["IndexName"] = _IndexName,
	}
	asserts.AssertUpdateGlobalSecondaryIndexAction(t)
	return t
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
-- @param _RequestItems [BatchGetRequestMap] <p>A map of one or more table names and, for each table, a map that describes one or more items to retrieve from that table. Each table name can be used only once per <code>BatchGetItem</code> request.</p> <p>Each element in the map of items to retrieve consists of the following:</p> <ul> <li> <p> <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read is used; if <code>false</code> (the default), an eventually consistent read is used.</p> </li> <li> <p> <code>ExpressionAttributeNames</code> - One or more substitution tokens for attribute names in the <code>ProjectionExpression</code> parameter. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p> <code>Keys</code> - An array of primary key attribute values that define specific items in the table. For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide the partition key value. For a composite key, you must provide <i>both</i> the partition key value and the sort key value.</p> </li> <li> <p> <code>ProjectionExpression</code> - A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> </li> <li> <p> <code>AttributesToGet</code> - This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p> </li> </ul>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- Required parameter: RequestItems
function M.BatchGetItemInput(_RequestItems, _ReturnConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetItemInput")
	local t = { 
		["RequestItems"] = _RequestItems,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
	}
	asserts.AssertBatchGetItemInput(t)
	return t
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
-- @param _ConsistentRead [ConsistentRead] <p>Determines the read consistency model: If set to <code>true</code>, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.</p>
-- @param _ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table containing the requested item.</p>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Key [Key] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the primary key of the item to retrieve.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- Required parameter: TableName
-- Required parameter: Key
function M.GetItemInput(_ConsistentRead, _ProjectionExpression, _ExpressionAttributeNames, _TableName, _ReturnConsumedCapacity, _AttributesToGet, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetItemInput")
	local t = { 
		["ConsistentRead"] = _ConsistentRead,
		["ProjectionExpression"] = _ProjectionExpression,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
		["TableName"] = _TableName,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["AttributesToGet"] = _AttributesToGet,
		["Key"] = _Key,
	}
	asserts.AssertGetItemInput(t)
	return t
end

keys.ProvisionedThroughputExceededException = { ["message"] = true, nil }

function asserts.AssertProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedThroughputExceededException[k], "ProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputExceededException
-- <p>Your request rate is too high. The AWS SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _message [ErrorMessage] <p>You exceeded your maximum allowed provisioned throughput.</p>
function M.ProvisionedThroughputExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertProvisionedThroughputExceededException(t)
	return t
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
-- @param _LastEvaluatedTableName [TableName] <p>The name of the last table in the current page of results. Use this value as the <code>ExclusiveStartTableName</code> in a new request to obtain the next page of results, until all the table names are returned.</p> <p>If you do not receive a <code>LastEvaluatedTableName</code> value in the response, this means that there are no more table names to be retrieved.</p>
-- @param _TableNames [TableNameList] <p>The names of the tables associated with the current account at the current endpoint. The maximum size of this array is 100.</p> <p>If <code>LastEvaluatedTableName</code> also appears in the output, you can use this value as the <code>ExclusiveStartTableName</code> parameter in a subsequent <code>ListTables</code> request and obtain the next page of results.</p>
function M.ListTablesOutput(_LastEvaluatedTableName, _TableNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTablesOutput")
	local t = { 
		["LastEvaluatedTableName"] = _LastEvaluatedTableName,
		["TableNames"] = _TableNames,
	}
	asserts.AssertListTablesOutput(t)
	return t
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
-- @param _Item [AttributeMap] <p>A map of attribute names to <code>AttributeValue</code> objects, as specified by <code>ProjectionExpression</code>.</p>
-- @param _ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>GetItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.GetItemOutput(_Item, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetItemOutput")
	local t = { 
		["Item"] = _Item,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertGetItemOutput(t)
	return t
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
-- @param _Keys [KeyList] <p>The primary key attribute values that define the items and the attributes associated with the items.</p>
-- @param _ConsistentRead [ConsistentRead] <p>The consistency of a read operation. If set to <code>true</code>, then a strongly consistent read is used; otherwise, an eventually consistent read is used.</p>
-- @param _AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy Conditional Parameters</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the <code>ProjectionExpression</code> must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: Keys
function M.KeysAndAttributes(_Keys, _ConsistentRead, _AttributesToGet, _ProjectionExpression, _ExpressionAttributeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeysAndAttributes")
	local t = { 
		["Keys"] = _Keys,
		["ConsistentRead"] = _ConsistentRead,
		["AttributesToGet"] = _AttributesToGet,
		["ProjectionExpression"] = _ProjectionExpression,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
	}
	asserts.AssertKeysAndAttributes(t)
	return t
end

keys.InternalServerError = { ["message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An error occurred on the server side.</p>
-- @param _message [ErrorMessage] <p>The server encountered an internal error trying to fulfill the request.</p>
function M.InternalServerError(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalServerError(t)
	return t
end

keys.CreateTableInput = { ["GlobalSecondaryIndexes"] = true, ["AttributeDefinitions"] = true, ["LocalSecondaryIndexes"] = true, ["ProvisionedThroughput"] = true, ["TableName"] = true, ["StreamSpecification"] = true, ["KeySchema"] = true, nil }

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
	for k,_ in pairs(struct) do
		assert(keys.CreateTableInput[k], "CreateTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableInput
-- <p>Represents the input of a <code>CreateTable</code> operation.</p>
-- @param _GlobalSecondaryIndexes [GlobalSecondaryIndexList] <p>One or more global secondary indexes (the maximum is five) to be created on the table. Each global secondary index in the array includes the following:</p> <ul> <li> <p> <code>IndexName</code> - The name of the global secondary index. Must be unique only for this table.</p> <p/> </li> <li> <p> <code>KeySchema</code> - Specifies the key schema for the global secondary index.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>ProvisionedThroughput</code> - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units.</p> </li> </ul>
-- @param _AttributeDefinitions [AttributeDefinitions] <p>An array of attributes that describe the key schema for the table and indexes.</p>
-- @param _LocalSecondaryIndexes [LocalSecondaryIndexList] <p>One or more local secondary indexes (the maximum is five) to be created on the table. Each index is scoped to a given partition key value. There is a 10 GB size limit per partition key value; otherwise, the size of a local secondary index is unconstrained.</p> <p>Each local secondary index in the array includes the following:</p> <ul> <li> <p> <code>IndexName</code> - The name of the local secondary index. Must be unique only for this table.</p> <p/> </li> <li> <p> <code>KeySchema</code> - Specifies the key schema for the local secondary index. The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> </ul>
-- @param _ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the <code>UpdateTable</code> operation.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table to create.</p>
-- @param _StreamSpecification [StreamSpecification] <p>The settings for DynamoDB Streams on the table. These settings consist of:</p> <ul> <li> <p> <code>StreamEnabled</code> - Indicates whether Streams is to be enabled (true) or disabled (false).</p> </li> <li> <p> <code>StreamViewType</code> - When an item in the table is modified, <code>StreamViewType</code> determines what information is written to the table's stream. Valid values for <code>StreamViewType</code> are:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the key attributes of the modified item are written to the stream.</p> </li> <li> <p> <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified, is written to the stream.</p> </li> <li> <p> <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified, is written to the stream.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the item are written to the stream.</p> </li> </ul> </li> </ul>
-- @param _KeySchema [KeySchema] <p>Specifies the attributes that make up the primary key for a table or an index. The attributes in <code>KeySchema</code> must also be defined in the <code>AttributeDefinitions</code> array. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>Each <code>KeySchemaElement</code> in the array is composed of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of this key attribute.</p> </li> <li> <p> <code>KeyType</code> - The role that the key attribute will assume:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note> <p>For a simple primary key (partition key), you must provide exactly one element with a <code>KeyType</code> of <code>HASH</code>.</p> <p>For a composite primary key (partition key and sort key), you must provide exactly two elements, in this order: The first element must have a <code>KeyType</code> of <code>HASH</code>, and the second element must have a <code>KeyType</code> of <code>RANGE</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Specifying the Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: AttributeDefinitions
-- Required parameter: TableName
-- Required parameter: KeySchema
-- Required parameter: ProvisionedThroughput
function M.CreateTableInput(_GlobalSecondaryIndexes, _AttributeDefinitions, _LocalSecondaryIndexes, _ProvisionedThroughput, _TableName, _StreamSpecification, _KeySchema, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTableInput")
	local t = { 
		["GlobalSecondaryIndexes"] = _GlobalSecondaryIndexes,
		["AttributeDefinitions"] = _AttributeDefinitions,
		["LocalSecondaryIndexes"] = _LocalSecondaryIndexes,
		["ProvisionedThroughput"] = _ProvisionedThroughput,
		["TableName"] = _TableName,
		["StreamSpecification"] = _StreamSpecification,
		["KeySchema"] = _KeySchema,
	}
	asserts.AssertCreateTableInput(t)
	return t
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
-- @param _NextToken [NextTokenString] <p>If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.</p>
-- @param _Tags [TagList] <p>The tags currently associated with the Amazon DynamoDB resource.</p>
function M.ListTagsOfResourceOutput(_NextToken, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsOfResourceOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsOfResourceOutput(t)
	return t
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
-- @param _TableName [TableName] <p>The name of the table to be described.</p>
-- Required parameter: TableName
function M.DescribeTimeToLiveInput(_TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeToLiveInput")
	local t = { 
		["TableName"] = _TableName,
	}
	asserts.AssertDescribeTimeToLiveInput(t)
	return t
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
-- @param _B [BinaryAttributeValue] <p>An attribute of type Binary. For example:</p> <p> <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code> </p>
-- @param _NULL [NullAttributeValue] <p>An attribute of type Null. For example:</p> <p> <code>"NULL": true</code> </p>
-- @param _SS [StringSetAttributeValue] <p>An attribute of type String Set. For example:</p> <p> <code>"SS": ["Giraffe", "Hippo" ,"Zebra"]</code> </p>
-- @param _M [MapAttributeValue] <p>An attribute of type Map. For example:</p> <p> <code>"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}</code> </p>
-- @param _L [ListAttributeValue] <p>An attribute of type List. For example:</p> <p> <code>"L": ["Cookies", "Coffee", 3.14159]</code> </p>
-- @param _N [NumberAttributeValue] <p>An attribute of type Number. For example:</p> <p> <code>"N": "123.45"</code> </p> <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
-- @param _S [StringAttributeValue] <p>An attribute of type String. For example:</p> <p> <code>"S": "Hello"</code> </p>
-- @param _BOOL [BooleanAttributeValue] <p>An attribute of type Boolean. For example:</p> <p> <code>"BOOL": true</code> </p>
-- @param _BS [BinarySetAttributeValue] <p>An attribute of type Binary Set. For example:</p> <p> <code>"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]</code> </p>
-- @param _NS [NumberSetAttributeValue] <p>An attribute of type Number Set. For example:</p> <p> <code>"NS": ["42.2", "-19", "7.5", "3.14"]</code> </p> <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
function M.AttributeValue(_B, _NULL, _SS, _M, _L, _N, _S, _BOOL, _BS, _NS, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeValue")
	local t = { 
		["B"] = _B,
		["NULL"] = _NULL,
		["SS"] = _SS,
		["M"] = _M,
		["L"] = _L,
		["N"] = _N,
		["S"] = _S,
		["BOOL"] = _BOOL,
		["BS"] = _BS,
		["NS"] = _NS,
	}
	asserts.AssertAttributeValue(t)
	return t
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
-- @param _KeySchema [KeySchema] <p>The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param _IndexName [IndexName] <p>The name of the local secondary index. The name must be unique among all other indexes on this table.</p>
-- @param _Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- Required parameter: IndexName
-- Required parameter: KeySchema
-- Required parameter: Projection
function M.LocalSecondaryIndex(_KeySchema, _IndexName, _Projection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LocalSecondaryIndex")
	local t = { 
		["KeySchema"] = _KeySchema,
		["IndexName"] = _IndexName,
		["Projection"] = _Projection,
	}
	asserts.AssertLocalSecondaryIndex(t)
	return t
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
-- @param _Value [TagValueString] <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
-- @param _Key [TagKeyString] <p>The key of the tag.Tag keys are case sensitive. Each DynamoDB table can only have up to one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value. </p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _IndexSizeBytes [Long] <p>The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param _IndexName [IndexName] <p>The name of the global secondary index.</p>
-- @param _Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @param _ProvisionedThroughput [ProvisionedThroughputDescription] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _IndexStatus [IndexStatus] <p>The current state of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The index is ready for use.</p> </li> </ul>
-- @param _Backfilling [Backfilling] <p>Indicates whether the index is currently backfilling. <i>Backfilling</i> is the process of reading items from the table and determining whether they can be added to the index. (Not all items will qualify: For example, a partition key cannot have any duplicate values.) If an item can be added to the index, DynamoDB will do so. After all items have been processed, the backfilling operation is complete and <code>Backfilling</code> is false.</p> <note> <p>For indexes that were created during a <code>CreateTable</code> operation, the <code>Backfilling</code> attribute does not appear in the <code>DescribeTable</code> output.</p> </note>
-- @param _KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param _IndexArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
-- @param _ItemCount [Long] <p>The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
function M.GlobalSecondaryIndexDescription(_IndexSizeBytes, _IndexName, _Projection, _ProvisionedThroughput, _IndexStatus, _Backfilling, _KeySchema, _IndexArn, _ItemCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSecondaryIndexDescription")
	local t = { 
		["IndexSizeBytes"] = _IndexSizeBytes,
		["IndexName"] = _IndexName,
		["Projection"] = _Projection,
		["ProvisionedThroughput"] = _ProvisionedThroughput,
		["IndexStatus"] = _IndexStatus,
		["Backfilling"] = _Backfilling,
		["KeySchema"] = _KeySchema,
		["IndexArn"] = _IndexArn,
		["ItemCount"] = _ItemCount,
	}
	asserts.AssertGlobalSecondaryIndexDescription(t)
	return t
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
-- @param _TableDescription [TableDescription] <p>Represents the properties of the table.</p>
function M.CreateTableOutput(_TableDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTableOutput")
	local t = { 
		["TableDescription"] = _TableDescription,
	}
	asserts.AssertCreateTableOutput(t)
	return t
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
-- @param _KeySchema [KeySchema] <p>The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param _IndexName [IndexName] <p>The name of the global secondary index. The name must be unique among all other indexes on this table.</p>
-- @param _Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @param _ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: IndexName
-- Required parameter: KeySchema
-- Required parameter: Projection
-- Required parameter: ProvisionedThroughput
function M.GlobalSecondaryIndex(_KeySchema, _IndexName, _Projection, _ProvisionedThroughput, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSecondaryIndex")
	local t = { 
		["KeySchema"] = _KeySchema,
		["IndexName"] = _IndexName,
		["Projection"] = _Projection,
		["ProvisionedThroughput"] = _ProvisionedThroughput,
	}
	asserts.AssertGlobalSecondaryIndex(t)
	return t
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
-- @param _TimeToLiveSpecification [TimeToLiveSpecification] <p>Represents the output of an <code>UpdateTimeToLive</code> operation.</p>
function M.UpdateTimeToLiveOutput(_TimeToLiveSpecification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTimeToLiveOutput")
	local t = { 
		["TimeToLiveSpecification"] = _TimeToLiveSpecification,
	}
	asserts.AssertUpdateTimeToLiveOutput(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The operation tried to access a nonexistent table or index. The resource might not be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
-- @param _message [ErrorMessage] <p>The resource which is being requested does not exist.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
-- @param _StreamViewType [StreamViewType] <p> When an item in the table is modified, <code>StreamViewType</code> determines what information is written to the stream for this table. Valid values for <code>StreamViewType</code> are:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the key attributes of the modified item are written to the stream.</p> </li> <li> <p> <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified, is written to the stream.</p> </li> <li> <p> <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified, is written to the stream.</p> </li> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the item are written to the stream.</p> </li> </ul>
-- @param _StreamEnabled [StreamEnabled] <p>Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the table.</p>
function M.StreamSpecification(_StreamViewType, _StreamEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamSpecification")
	local t = { 
		["StreamViewType"] = _StreamViewType,
		["StreamEnabled"] = _StreamEnabled,
	}
	asserts.AssertStreamSpecification(t)
	return t
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
-- @param _AttributeUpdates [AttributeUpdates] <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared either before or after they were updated. For <code>UpdateItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - Returns all of the attributes of the item, as they appeared before the UpdateItem operation.</p> </li> <li> <p> <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared before the UpdateItem operation.</p> </li> <li> <p> <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear after the UpdateItem operation.</p> </li> <li> <p> <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear after the UpdateItem operation.</p> </li> </ul> <p>There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No Read Capacity Units are consumed.</p> <p>Values returned are strongly consistent</p>
-- @param _ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional update to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table containing the item to update.</p>
-- @param _ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _UpdateExpression [UpdateExpression] <p>An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.</p> <p>The following action values are available for <code>UpdateExpression</code>.</p> <ul> <li> <p> <code>SET</code> - Adds one or more attributes and values to an item. If any of these attribute already exist, they are replaced by the new values. You can also use <code>SET</code> to add or subtract from an attribute that is of type Number. For example: <code>SET myNum = myNum + :val</code> </p> <p> <code>SET</code> supports the following functions:</p> <ul> <li> <p> <code>if_not_exists (path, operand)</code> - if the item does not contain an attribute at the specified path, then <code>if_not_exists</code> evaluates to operand; otherwise, it evaluates to path. You can use this function to avoid overwriting an attribute that may already be present in the item.</p> </li> <li> <p> <code>list_append (operand, operand)</code> - evaluates to a list with a new element added to it. You can append the new element to the start or the end of the list by reversing the order of the operands.</p> </li> </ul> <p>These function names are case-sensitive.</p> </li> <li> <p> <code>REMOVE</code> - Removes one or more attributes from an item.</p> </li> <li> <p> <code>ADD</code> - Adds the specified value to the item, if the attribute does not already exist. If the attribute does exist, then the behavior of <code>ADD</code> depends on the data type of the attribute:</p> <ul> <li> <p>If the existing attribute is a number, and if <code>Value</code> is also a number, then <code>Value</code> is mathematically added to the existing attribute. If <code>Value</code> is a negative number, then it is subtracted from the existing attribute.</p> <note> <p>If you use <code>ADD</code> to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses <code>0</code> as the initial value.</p> <p>Similarly, if you use <code>ADD</code> for an existing item to increment or decrement an attribute value that doesn't exist before the update, DynamoDB uses <code>0</code> as the initial value. For example, suppose that the item you want to update doesn't have an attribute named <i>itemcount</i>, but you decide to <code>ADD</code> the number <code>3</code> to this attribute anyway. DynamoDB will create the <i>itemcount</i> attribute, set its initial value to <code>0</code>, and finally add <code>3</code> to it. The result will be a new <i>itemcount</i> attribute in the item, with a value of <code>3</code>.</p> </note> </li> <li> <p>If the existing data type is a set and if <code>Value</code> is also a set, then <code>Value</code> is added to the existing set. For example, if the attribute value is the set <code>[1,2]</code>, and the <code>ADD</code> action specified <code>[3]</code>, then the final attribute value is <code>[1,2,3]</code>. An error occurs if an <code>ADD</code> action is specified for a set attribute and the attribute type specified does not match the existing set type. </p> <p>Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the <code>Value</code> must also be a set of strings.</p> </li> </ul> <important> <p>The <code>ADD</code> action only supports Number and set data types. In addition, <code>ADD</code> can only be used on top-level attributes, not nested attributes.</p> </important> </li> <li> <p> <code>DELETE</code> - Deletes an element from a set.</p> <p>If a set of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set <code>[a,b,c]</code> and the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final attribute value is <code>[b]</code>. Specifying an empty set is an error.</p> <important> <p>The <code>DELETE</code> action only supports set data types. In addition, <code>DELETE</code> can only be used on top-level attributes, not nested attributes.</p> </important> </li> </ul> <p>You can have many actions in a single expression, such as the following: <code>SET a=:value1, b=:value2 DELETE :value3, :value4, :value5</code> </p> <p>For more information on update expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying Items and Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Key [Key] <p>The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- @param _Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpresssion</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
-- Required parameter: Key
function M.UpdateItemInput(_AttributeUpdates, _ConditionalOperator, _ExpressionAttributeNames, _ReturnValues, _ConditionExpression, _TableName, _ReturnItemCollectionMetrics, _ReturnConsumedCapacity, _UpdateExpression, _ExpressionAttributeValues, _Key, _Expected, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateItemInput")
	local t = { 
		["AttributeUpdates"] = _AttributeUpdates,
		["ConditionalOperator"] = _ConditionalOperator,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
		["ReturnValues"] = _ReturnValues,
		["ConditionExpression"] = _ConditionExpression,
		["TableName"] = _TableName,
		["ReturnItemCollectionMetrics"] = _ReturnItemCollectionMetrics,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["UpdateExpression"] = _UpdateExpression,
		["ExpressionAttributeValues"] = _ExpressionAttributeValues,
		["Key"] = _Key,
		["Expected"] = _Expected,
	}
	asserts.AssertUpdateItemInput(t)
	return t
end

keys.ConditionalCheckFailedException = { ["message"] = true, nil }

function asserts.AssertConditionalCheckFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConditionalCheckFailedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConditionalCheckFailedException[k], "ConditionalCheckFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConditionalCheckFailedException
-- <p>A condition specified in the operation could not be evaluated.</p>
-- @param _message [ErrorMessage] <p>The conditional request failed.</p>
function M.ConditionalCheckFailedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConditionalCheckFailedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertConditionalCheckFailedException(t)
	return t
end

keys.UpdateTableInput = { ["GlobalSecondaryIndexUpdates"] = true, ["ProvisionedThroughput"] = true, ["StreamSpecification"] = true, ["TableName"] = true, ["AttributeDefinitions"] = true, nil }

function asserts.AssertUpdateTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableInput to be of type 'table'")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["GlobalSecondaryIndexUpdates"] then asserts.AssertGlobalSecondaryIndexUpdateList(struct["GlobalSecondaryIndexUpdates"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughput(struct["ProvisionedThroughput"]) end
	if struct["StreamSpecification"] then asserts.AssertStreamSpecification(struct["StreamSpecification"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["AttributeDefinitions"] then asserts.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTableInput[k], "UpdateTableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableInput
-- <p>Represents the input of an <code>UpdateTable</code> operation.</p>
-- @param _GlobalSecondaryIndexUpdates [GlobalSecondaryIndexUpdateList] <p>An array of one or more global secondary indexes for the table. For each index in the array, you can request one action:</p> <ul> <li> <p> <code>Create</code> - add a new global secondary index to the table.</p> </li> <li> <p> <code>Update</code> - modify the provisioned throughput settings of an existing global secondary index.</p> </li> <li> <p> <code>Delete</code> - remove a global secondary index from the table.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global Secondary Indexes</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
-- @param _ProvisionedThroughput [ProvisionedThroughput] <p>The new provisioned throughput settings for the specified table or index.</p>
-- @param _StreamSpecification [StreamSpecification] <p>Represents the DynamoDB Streams configuration for the table.</p> <note> <p>You will receive a <code>ResourceInUseException</code> if you attempt to enable a stream on a table that already has a stream, or if you attempt to disable a stream on a table which does not have a stream.</p> </note>
-- @param _TableName [TableName] <p>The name of the table to be updated.</p>
-- @param _AttributeDefinitions [AttributeDefinitions] <p>An array of attributes that describe the key schema for the table and indexes. If you are adding a new global secondary index to the table, <code>AttributeDefinitions</code> must include the key element(s) of the new index.</p>
-- Required parameter: TableName
function M.UpdateTableInput(_GlobalSecondaryIndexUpdates, _ProvisionedThroughput, _StreamSpecification, _TableName, _AttributeDefinitions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTableInput")
	local t = { 
		["GlobalSecondaryIndexUpdates"] = _GlobalSecondaryIndexUpdates,
		["ProvisionedThroughput"] = _ProvisionedThroughput,
		["StreamSpecification"] = _StreamSpecification,
		["TableName"] = _TableName,
		["AttributeDefinitions"] = _AttributeDefinitions,
	}
	asserts.AssertUpdateTableInput(t)
	return t
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
-- @param _TableName [TableName] <p>The name of the table to describe.</p>
-- Required parameter: TableName
function M.DescribeTableInput(_TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableInput")
	local t = { 
		["TableName"] = _TableName,
	}
	asserts.AssertDescribeTableInput(t)
	return t
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
-- @param _NumberOfDecreasesToday [PositiveLongObject] <p>The number of provisioned throughput decreases for this table during this UTC calendar day. For current maximums on provisioned throughput decreases, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _WriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>.</p>
-- @param _LastIncreaseDateTime [Date] <p>The date and time of the last provisioned throughput increase for this table.</p>
-- @param _ReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. Eventually consistent reads require less effort than strongly consistent reads, so a setting of 50 <code>ReadCapacityUnits</code> per second provides 100 eventually consistent <code>ReadCapacityUnits</code> per second.</p>
-- @param _LastDecreaseDateTime [Date] <p>The date and time of the last provisioned throughput decrease for this table.</p>
function M.ProvisionedThroughputDescription(_NumberOfDecreasesToday, _WriteCapacityUnits, _LastIncreaseDateTime, _ReadCapacityUnits, _LastDecreaseDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughputDescription")
	local t = { 
		["NumberOfDecreasesToday"] = _NumberOfDecreasesToday,
		["WriteCapacityUnits"] = _WriteCapacityUnits,
		["LastIncreaseDateTime"] = _LastIncreaseDateTime,
		["ReadCapacityUnits"] = _ReadCapacityUnits,
		["LastDecreaseDateTime"] = _LastDecreaseDateTime,
	}
	asserts.AssertProvisionedThroughputDescription(t)
	return t
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
-- @param _RequestItems [BatchWriteItemRequestMap] <p>A map of one or more table names and, for each table, a list of operations to be performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each element in the map consists of the following:</p> <ul> <li> <p> <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the specified item. The item to be deleted is identified by a <code>Key</code> subelement:</p> <ul> <li> <p> <code>Key</code> - A map of primary key attribute values that uniquely identify the ! item. Each entry in this map consists of an attribute name and an attribute value. For each primary key, you must provide <i>all</i> of the key attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for <i>both</i> the partition key and the sort key.</p> </li> </ul> </li> <li> <p> <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the specified item. The item to be put is identified by an <code>Item</code> subelement:</p> <ul> <li> <p> <code>Item</code> - A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a <code>ValidationException</code> exception.</p> <p>If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.</p> </li> </ul> </li> </ul>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- Required parameter: RequestItems
function M.BatchWriteItemInput(_RequestItems, _ReturnConsumedCapacity, _ReturnItemCollectionMetrics, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteItemInput")
	local t = { 
		["RequestItems"] = _RequestItems,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["ReturnItemCollectionMetrics"] = _ReturnItemCollectionMetrics,
	}
	asserts.AssertBatchWriteItemInput(t)
	return t
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
-- @param _ItemCollectionKey [ItemCollectionKeyAttributeMap] <p>The partition key value of the item collection. This value is the same as the partition key value of the item.</p>
-- @param _SizeEstimateRangeGB [ItemCollectionSizeEstimateRange] <p>An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p>
function M.ItemCollectionMetrics(_ItemCollectionKey, _SizeEstimateRangeGB, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ItemCollectionMetrics")
	local t = { 
		["ItemCollectionKey"] = _ItemCollectionKey,
		["SizeEstimateRangeGB"] = _SizeEstimateRangeGB,
	}
	asserts.AssertItemCollectionMetrics(t)
	return t
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
-- @param _AttributeName [KeySchemaAttributeName] <p>A name for the attribute.</p>
-- @param _AttributeType [ScalarAttributeType] <p>The data type for the attribute, where:</p> <ul> <li> <p> <code>S</code> - the attribute is of type String</p> </li> <li> <p> <code>N</code> - the attribute is of type Number</p> </li> <li> <p> <code>B</code> - the attribute is of type Binary</p> </li> </ul>
-- Required parameter: AttributeName
-- Required parameter: AttributeType
function M.AttributeDefinition(_AttributeName, _AttributeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeDefinition")
	local t = { 
		["AttributeName"] = _AttributeName,
		["AttributeType"] = _AttributeType,
	}
	asserts.AssertAttributeDefinition(t)
	return t
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
-- @param _TableDescription [TableDescription] <p>Represents the properties of a table.</p>
function M.DeleteTableOutput(_TableDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTableOutput")
	local t = { 
		["TableDescription"] = _TableDescription,
	}
	asserts.AssertDeleteTableOutput(t)
	return t
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
-- @param _CapacityUnits [ConsumedCapacityUnits] <p>The total number of capacity units consumed on a table or an index.</p>
function M.Capacity(_CapacityUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Capacity")
	local t = { 
		["CapacityUnits"] = _CapacityUnits,
	}
	asserts.AssertCapacity(t)
	return t
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
-- @param _Count [Integer] <p>The number of items in the response.</p> <p>If you used a <code>QueryFilter</code> in the request, then <code>Count</code> is the number of items returned after the filter was applied, and <code>ScannedCount</code> is the number of matching items before the filter was applied.</p> <p>If you did not use a filter in the request, then <code>Count</code> and <code>ScannedCount</code> are the same.</p>
-- @param _Items [ItemList] <p>An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.</p>
-- @param _LastEvaluatedKey [Key] <p>The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedKey</code> is empty.</p>
-- @param _ScannedCount [Integer] <p>The number of items evaluated, before any <code>QueryFilter</code> is applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Query</code> operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same as <code>Count</code>.</p>
-- @param _ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>Query</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.QueryOutput(_Count, _Items, _LastEvaluatedKey, _ScannedCount, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryOutput")
	local t = { 
		["Count"] = _Count,
		["Items"] = _Items,
		["LastEvaluatedKey"] = _LastEvaluatedKey,
		["ScannedCount"] = _ScannedCount,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertQueryOutput(t)
	return t
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
-- @param _Limit [ListTablesInputLimit] <p>A maximum number of table names to return. If this parameter is not specified, the limit is 100.</p>
-- @param _ExclusiveStartTableName [TableName] <p>The first table name that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you can obtain the next page of results.</p>
function M.ListTablesInput(_Limit, _ExclusiveStartTableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTablesInput")
	local t = { 
		["Limit"] = _Limit,
		["ExclusiveStartTableName"] = _ExclusiveStartTableName,
	}
	asserts.AssertListTablesInput(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of concurrent table requests (cumulative number of tables in the <code>CREATING</code>, <code>DELETING</code> or <code>UPDATING</code> state) exceeds the maximum allowed of 10.</p> <p>Also, for tables with secondary indexes, only one of those tables can be in the <code>CREATING</code> state at any point in time. Do not attempt to create more than one such table simultaneously.</p> <p>The total limit of tables in the <code>ACTIVE</code> state is 250.</p>
-- @param _message [ErrorMessage] <p>Too many operations for a given subscriber.</p>
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
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
-- @param _Create [CreateGlobalSecondaryIndexAction] <p>The parameters required for creating a global secondary index on an existing table:</p> <ul> <li> <p> <code>IndexName </code> </p> </li> <li> <p> <code>KeySchema </code> </p> </li> <li> <p> <code>AttributeDefinitions </code> </p> </li> <li> <p> <code>Projection </code> </p> </li> <li> <p> <code>ProvisionedThroughput </code> </p> </li> </ul>
-- @param _Update [UpdateGlobalSecondaryIndexAction] <p>The name of an existing global secondary index, along with new provisioned throughput settings to be applied to that index.</p>
-- @param _Delete [DeleteGlobalSecondaryIndexAction] <p>The name of an existing global secondary index to be removed.</p>
function M.GlobalSecondaryIndexUpdate(_Create, _Update, _Delete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSecondaryIndexUpdate")
	local t = { 
		["Create"] = _Create,
		["Update"] = _Update,
		["Delete"] = _Delete,
	}
	asserts.AssertGlobalSecondaryIndexUpdate(t)
	return t
end

keys.ResourceInUseException = { ["message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The operation conflicts with the resource's availability. For example, you attempted to recreate an existing table, or tried to delete a table currently in the <code>CREATING</code> state.</p>
-- @param _message [ErrorMessage] <p>The resource which is being attempted to be changed is in use.</p>
function M.ResourceInUseException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceInUseException(t)
	return t
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
-- @param _FilterExpression [ConditionExpression] <p>A string that contains conditions that DynamoDB applies after the <code>Query</code> operation, but before the data is returned to you. Items that do not satisfy the <code>FilterExpression</code> criteria are not returned.</p> <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key.</p> <note> <p>A <code>FilterExpression</code> is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter Expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ConsistentRead [ConsistentRead] <p>Determines the read consistency model: If set to <code>true</code>, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.</p> <p>Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you will receive a <code>ValidationException</code>.</p>
-- @param _ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _IndexName [IndexName] <p>The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the <code>IndexName</code> parameter, you must also provide <code>TableName.</code> </p>
-- @param _ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _QueryFilter [FilterConditionMap] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table containing the requested items.</p>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _ExclusiveStartKey [Key] <p>The primary key of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p> <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No set data types are allowed.</p>
-- @param _AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Limit [PositiveIntegerObject] <p>The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _KeyConditions [KeyConditions] <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _KeyConditionExpression [KeyExpression] <p>The condition that specifies the key value(s) for items to be retrieved by the <code>Query</code> action.</p> <p>The condition must perform an equality test on a single partition key value. The condition can also perform one of several comparison tests on a single sort key value. <code>Query</code> can use <code>KeyConditionExpression</code> to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values.</p> <p>The partition key equality test is required, and must be specified in the following format:</p> <p> <code>partitionKeyName</code> <i>=</i> <code>:partitionkeyval</code> </p> <p>If you also want to provide a condition for the sort key, it must be combined using <code>AND</code> with the condition for the sort key. Following is an example, using the <b>=</b> comparison operator for the sort key:</p> <p> <code>partitionKeyName</code> <code>=</code> <code>:partitionkeyval</code> <code>AND</code> <code>sortKeyName</code> <code>=</code> <code>:sortkeyval</code> </p> <p>Valid comparisons for the sort key condition are as follows:</p> <ul> <li> <p> <code>sortKeyName</code> <code>=</code> <code>:sortkeyval</code> - true if the sort key value is equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&lt;</code> <code>:sortkeyval</code> - true if the sort key value is less than <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&lt;=</code> <code>:sortkeyval</code> - true if the sort key value is less than or equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&gt;</code> <code>:sortkeyval</code> - true if the sort key value is greater than <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>&gt;= </code> <code>:sortkeyval</code> - true if the sort key value is greater than or equal to <code>:sortkeyval</code>.</p> </li> <li> <p> <code>sortKeyName</code> <code>BETWEEN</code> <code>:sortkeyval1</code> <code>AND</code> <code>:sortkeyval2</code> - true if the sort key value is greater than or equal to <code>:sortkeyval1</code>, and less than or equal to <code>:sortkeyval2</code>.</p> </li> <li> <p> <code>begins_with (</code> <code>sortKeyName</code>, <code>:sortkeyval</code> <code>)</code> - true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name <code>begins_with</code> is case-sensitive.</p> </li> </ul> <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as <code>:partitionval</code> and <code>:sortval</code> with actual values at runtime.</p> <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following <code>KeyConditionExpression</code> parameter causes an error because <i>Size</i> is a reserved word:</p> <ul> <li> <p> <code>Size = :myval</code> </p> </li> </ul> <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as follows:</p> <ul> <li> <p> <code>#S = :myval</code> </p> </li> </ul> <p>For a list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>For more information on <code>ExpressionAttributeNames</code> and <code>ExpressionAttributeValues</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ScanIndexForward [BooleanObject] <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal is performed in ascending order; if <code>false</code>, the traversal is performed in descending order. </p> <p>Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of ASCII character code values. For type Binary, DynamoDB treats each byte of the binary data as unsigned.</p> <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.</p>
-- @param _Select [Select] <p>The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.</p> <ul> <li> <p> <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.</p> </li> <li> <p> <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying <code>ALL_ATTRIBUTES</code>.</p> </li> <li> <p> <code>COUNT</code> - Returns the number of matching items, rather than the matching items themselves.</p> </li> <li> <p> <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in <code>AttributesToGet</code>. This return value is equivalent to specifying <code>AttributesToGet</code> without specifying any value for <code>Select</code>.</p> <p>If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.</p> <p>If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.</p> </li> </ul> <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both <code>Select</code> and <code>AttributesToGet</code> together in a single request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This usage is equivalent to specifying <code>AttributesToGet</code> without any value for <code>Select</code>.)</p> <note> <p>If you use the <code>ProjectionExpression</code> parameter, then the value for <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other value for <code>Select</code> will return an error.</p> </note>
-- Required parameter: TableName
function M.QueryInput(_FilterExpression, _ConsistentRead, _ConditionalOperator, _IndexName, _ProjectionExpression, _ExpressionAttributeNames, _QueryFilter, _TableName, _ReturnConsumedCapacity, _ExclusiveStartKey, _AttributesToGet, _Limit, _ExpressionAttributeValues, _KeyConditions, _KeyConditionExpression, _ScanIndexForward, _Select, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryInput")
	local t = { 
		["FilterExpression"] = _FilterExpression,
		["ConsistentRead"] = _ConsistentRead,
		["ConditionalOperator"] = _ConditionalOperator,
		["IndexName"] = _IndexName,
		["ProjectionExpression"] = _ProjectionExpression,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
		["QueryFilter"] = _QueryFilter,
		["TableName"] = _TableName,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["ExclusiveStartKey"] = _ExclusiveStartKey,
		["AttributesToGet"] = _AttributesToGet,
		["Limit"] = _Limit,
		["ExpressionAttributeValues"] = _ExpressionAttributeValues,
		["KeyConditions"] = _KeyConditions,
		["KeyConditionExpression"] = _KeyConditionExpression,
		["ScanIndexForward"] = _ScanIndexForward,
		["Select"] = _Select,
	}
	asserts.AssertQueryInput(t)
	return t
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
-- @param _Action [AttributeAction] <p>Specifies how to perform the update. Valid values are <code>PUT</code> (default), <code>DELETE</code>, and <code>ADD</code>. The behavior depends on whether the specified primary key already exists in the table.</p> <p> <b>If an item with the specified <i>Key</i> is found in the table:</b> </p> <ul> <li> <p> <code>PUT</code> - Adds the specified attribute to the item. If the attribute already exists, it is replaced by the new value. </p> </li> <li> <p> <code>DELETE</code> - If no value is specified, the attribute and its value are removed from the item. The data type of the specified value must match the existing value's data type.</p> <p>If a <i>set</i> of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set <code>[a,b,c]</code> and the <code>DELETE</code> action specified <code>[a,c]</code>, then the final attribute value would be <code>[b]</code>. Specifying an empty set is an error.</p> </li> <li> <p> <code>ADD</code> - If the attribute does not already exist, then the attribute and its values are added to the item. If the attribute does exist, then the behavior of <code>ADD</code> depends on the data type of the attribute:</p> <ul> <li> <p>If the existing attribute is a number, and if <code>Value</code> is also a number, then the <code>Value</code> is mathematically added to the existing attribute. If <code>Value</code> is a negative number, then it is subtracted from the existing attribute.</p> <note> <p> If you use <code>ADD</code> to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses 0 as the initial value.</p> <p>In addition, if you use <code>ADD</code> to update an existing item, and intend to increment or decrement an attribute value which does not yet exist, DynamoDB uses <code>0</code> as the initial value. For example, suppose that the item you want to update does not yet have an attribute named <i>itemcount</i>, but you decide to <code>ADD</code> the number <code>3</code> to this attribute anyway, even though it currently does not exist. DynamoDB will create the <i>itemcount</i> attribute, set its initial value to <code>0</code>, and finally add <code>3</code> to it. The result will be a new <i>itemcount</i> attribute in the item, with a value of <code>3</code>.</p> </note> </li> <li> <p>If the existing data type is a set, and if the <code>Value</code> is also a set, then the <code>Value</code> is added to the existing set. (This is a <i>set</i> operation, not mathematical addition.) For example, if the attribute value was the set <code>[1,2]</code>, and the <code>ADD</code> action specified <code>[3]</code>, then the final attribute value would be <code>[1,2,3]</code>. An error occurs if an Add action is specified for a set attribute and the attribute type specified does not match the existing set type. </p> <p>Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the <code>Value</code> must also be a set of strings. The same holds true for number sets and binary sets.</p> </li> </ul> <p>This action is only valid for an existing attribute whose data type is number or is a set. Do not use <code>ADD</code> for any other data types.</p> </li> </ul> <p> <b>If no item with the specified <i>Key</i> is found:</b> </p> <ul> <li> <p> <code>PUT</code> - DynamoDB creates a new item with the specified primary key, and then adds the attribute. </p> </li> <li> <p> <code>DELETE</code> - Nothing happens; there is no attribute to delete.</p> </li> <li> <p> <code>ADD</code> - DynamoDB creates an item with the supplied primary key and number (or set of numbers) for the attribute value. The only data types allowed are number and number set; no other data types can be specified.</p> </li> </ul>
-- @param _Value [AttributeValue] <p>Represents the data for an attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data TYpes</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
function M.AttributeValueUpdate(_Action, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeValueUpdate")
	local t = { 
		["Action"] = _Action,
		["Value"] = _Value,
	}
	asserts.AssertAttributeValueUpdate(t)
	return t
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
-- @param _AttributeName [TimeToLiveAttributeName] <p>The name of the Time to Live attribute used to store the expiration time for items in the table.</p>
-- @param _Enabled [TimeToLiveEnabled] <p>Indicates whether Time To Live is to be enabled (true) or disabled (false) on the table.</p>
-- Required parameter: Enabled
-- Required parameter: AttributeName
function M.TimeToLiveSpecification(_AttributeName, _Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeToLiveSpecification")
	local t = { 
		["AttributeName"] = _AttributeName,
		["Enabled"] = _Enabled,
	}
	asserts.AssertTimeToLiveSpecification(t)
	return t
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
-- @param _Attributes [AttributeMap] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the item as it appeared before the <code>DeleteItem</code> operation. This map appears in the response only if <code>ReturnValues</code> was specified as <code>ALL_OLD</code> in the request.</p>
-- @param _ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>DeleteItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param _ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>DeleteItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.DeleteItemOutput(_Attributes, _ItemCollectionMetrics, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteItemOutput")
	local t = { 
		["Attributes"] = _Attributes,
		["ItemCollectionMetrics"] = _ItemCollectionMetrics,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertDeleteItemOutput(t)
	return t
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
-- @param _ComparisonOperator [ComparisonOperator] <p>A comparator for evaluating attributes. For example, equals, greater than, less than, etc.</p> <p>The following comparison operators are available:</p> <p> <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN</code> </p> <p>The following are descriptions of each comparison operator.</p> <ul> <li> <p> <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NE</code> : Not equal. <code>NE</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LE</code> : Less than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LT</code> : Less than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GE</code> : Greater than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GT</code> : Greater than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the existence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This result is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NOT_NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NULL</code>, the result is a Boolean <code>false</code>. This is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it finds an exact match with any member of the set.</p> <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it <i>does not</i> find an exact match with any member of the set.</p> <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>BEGINS_WITH</code> : Checks for a prefix. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).</p> <p/> </li> <li> <p> <code>IN</code> : Checks for matching elements in a list.</p> <p> <code>AttributeValueList</code> can contain one or more <code>AttributeValue</code> elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.</p> </li> <li> <p> <code>BETWEEN</code> : Greater than or equal to the first value, and less than or equal to the second value. </p> <p> <code>AttributeValueList</code> must contain two <code>AttributeValue</code> elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code> </p> </li> </ul> <p>For usage examples of <code>AttributeValueList</code> and <code>ComparisonOperator</code>, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy Conditional Parameters</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _AttributeValueList [AttributeValueList] <p>One or more values to evaluate against the supplied attribute. The number of values in the list depends on the <code>ComparisonOperator</code> being used.</p> <p>For type Number, value comparisons are numeric.</p> <p>String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, <code>a</code> is greater than <code>A</code>, and <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p> <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.</p>
-- Required parameter: ComparisonOperator
function M.Condition(_ComparisonOperator, _AttributeValueList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Condition")
	local t = { 
		["ComparisonOperator"] = _ComparisonOperator,
		["AttributeValueList"] = _AttributeValueList,
	}
	asserts.AssertCondition(t)
	return t
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
-- @param _FilterExpression [ConditionExpression] <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code> operation, but before the data is returned to you. Items that do not satisfy the <code>FilterExpression</code> criteria are not returned.</p> <note> <p>A <code>FilterExpression</code> is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter Expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ConsistentRead [ConsistentRead] <p>A Boolean value that determines the read consistency model during the scan:</p> <ul> <li> <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned from <code>Scan</code> might not contain the results from other recently completed write operations (PutItem, UpdateItem or DeleteItem).</p> </li> <li> <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write operations that completed before the <code>Scan</code> began are guaranteed to be contained in the <code>Scan</code> response.</p> </li> </ul> <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p> <p>The <code>ConsistentRead</code> parameter is not supported on global secondary indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to true, you will receive a <code>ValidationException</code>.</p>
-- @param _ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _IndexName [IndexName] <p>The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the <code>IndexName</code> parameter, you must also provide <code>TableName</code>.</p>
-- @param _ProjectionExpression [ProjectionExpression] <p>A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.</p> <p>If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table containing the requested items; or, if you provide <code>IndexName</code>, the name of the table to which that index belongs.</p>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _ExclusiveStartKey [Key] <p>The primary key of the first item that this operation will evaluate. Use the value that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p> <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No set data types are allowed.</p> <p>In a parallel scan, a <code>Scan</code> request that includes <code>ExclusiveStartKey</code> must specify the same segment whose previous <code>Scan</code> returned the corresponding value of <code>LastEvaluatedKey</code>.</p>
-- @param _AttributesToGet [AttributeNameList] <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Limit [PositiveIntegerObject] <p>The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TotalSegments [ScanTotalSegments] <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the total number of segments into which the <code>Scan</code> operation will be divided. The value of <code>TotalSegments</code> corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a <code>TotalSegments</code> value of 4.</p> <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the <code>Scan</code> operation will be sequential rather than parallel.</p> <p>If you specify <code>TotalSegments</code>, you must also specify <code>Segment</code>.</p>
-- @param _Segment [ScanSegment] <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an individual segment to be scanned by an application worker.</p> <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so on.</p> <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code> request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a subsequent <code>Scan</code> operation.</p> <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than the value provided for <code>TotalSegments</code>.</p> <p>If you provide <code>Segment</code>, you must also provide <code>TotalSegments</code>.</p>
-- @param _ScanFilter [FilterConditionMap] <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Select [Select] <p>The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.</p> <ul> <li> <p> <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.</p> </li> <li> <p> <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying <code>ALL_ATTRIBUTES</code>.</p> </li> <li> <p> <code>COUNT</code> - Returns the number of matching items, rather than the matching items themselves.</p> </li> <li> <p> <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in <code>AttributesToGet</code>. This return value is equivalent to specifying <code>AttributesToGet</code> without specifying any value for <code>Select</code>.</p> <p>If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.</p> <p>If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.</p> </li> </ul> <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified, DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both <code>Select</code> and <code>AttributesToGet</code> together in a single request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This usage is equivalent to specifying <code>AttributesToGet</code> without any value for <code>Select</code>.)</p> <note> <p>If you use the <code>ProjectionExpression</code> parameter, then the value for <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other value for <code>Select</code> will return an error.</p> </note>
-- @param _ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
function M.ScanInput(_FilterExpression, _ConsistentRead, _ConditionalOperator, _IndexName, _ProjectionExpression, _ExpressionAttributeNames, _TableName, _ReturnConsumedCapacity, _ExclusiveStartKey, _AttributesToGet, _Limit, _TotalSegments, _Segment, _ScanFilter, _Select, _ExpressionAttributeValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanInput")
	local t = { 
		["FilterExpression"] = _FilterExpression,
		["ConsistentRead"] = _ConsistentRead,
		["ConditionalOperator"] = _ConditionalOperator,
		["IndexName"] = _IndexName,
		["ProjectionExpression"] = _ProjectionExpression,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
		["TableName"] = _TableName,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["ExclusiveStartKey"] = _ExclusiveStartKey,
		["AttributesToGet"] = _AttributesToGet,
		["Limit"] = _Limit,
		["TotalSegments"] = _TotalSegments,
		["Segment"] = _Segment,
		["ScanFilter"] = _ScanFilter,
		["Select"] = _Select,
		["ExpressionAttributeValues"] = _ExpressionAttributeValues,
	}
	asserts.AssertScanInput(t)
	return t
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
-- @param _UnprocessedKeys [BatchGetRequestMap] <p>A map of tables and their respective keys that were not processed with the current response. The <code>UnprocessedKeys</code> value is in the same form as <code>RequestItems</code>, so the value can be provided directly to a subsequent <code>BatchGetItem</code> operation. For more information, see <code>RequestItems</code> in the Request Parameters section.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>Keys</code> - An array of primary key attribute values that define specific items in the table.</p> </li> <li> <p> <code>ProjectionExpression</code> - One or more attributes to be retrieved from the table or index. By default, all attributes are returned. If a requested attribute is not found, it does not appear in the result.</p> </li> <li> <p> <code>ConsistentRead</code> - The consistency of a read operation. If set to <code>true</code>, then a strongly consistent read is used; otherwise, an eventually consistent read is used.</p> </li> </ul> <p>If there are no unprocessed keys remaining, the response contains an empty <code>UnprocessedKeys</code> map.</p>
-- @param _Responses [BatchGetResponseMap] <p>A map of table name to a list of items. Each object in <code>Responses</code> consists of a table name, along with a map of attribute data consisting of the data type and attribute value.</p>
-- @param _ConsumedCapacity [ConsumedCapacityMultiple] <p>The read capacity units consumed by the entire <code>BatchGetItem</code> operation.</p> <p>Each element consists of:</p> <ul> <li> <p> <code>TableName</code> - The table that consumed the provisioned throughput.</p> </li> <li> <p> <code>CapacityUnits</code> - The total number of capacity units consumed.</p> </li> </ul>
function M.BatchGetItemOutput(_UnprocessedKeys, _Responses, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetItemOutput")
	local t = { 
		["UnprocessedKeys"] = _UnprocessedKeys,
		["Responses"] = _Responses,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertBatchGetItemOutput(t)
	return t
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
-- @param _ProjectionType [ProjectionType] <p>The set of attributes that are projected into the index:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul>
-- @param _NonKeyAttributes [NonKeyAttributeNameList] <p>Represents the non-key attribute names which will be projected into the index.</p> <p>For local secondary indexes, the total count of <code>NonKeyAttributes</code> summed across all of the local secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p>
function M.Projection(_ProjectionType, _NonKeyAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Projection")
	local t = { 
		["ProjectionType"] = _ProjectionType,
		["NonKeyAttributes"] = _NonKeyAttributes,
	}
	asserts.AssertProjection(t)
	return t
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
-- @param _Table [TableDescription] <p>The properties of the table.</p>
function M.DescribeTableOutput(_Table, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableOutput")
	local t = { 
		["Table"] = _Table,
	}
	asserts.AssertDescribeTableOutput(t)
	return t
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
-- @param _TableName [TableName] <p>The name of the table to be configured.</p>
-- @param _TimeToLiveSpecification [TimeToLiveSpecification] <p>Represents the settings used to enable or disable Time to Live for the specified table.</p>
-- Required parameter: TableName
-- Required parameter: TimeToLiveSpecification
function M.UpdateTimeToLiveInput(_TableName, _TimeToLiveSpecification, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTimeToLiveInput")
	local t = { 
		["TableName"] = _TableName,
		["TimeToLiveSpecification"] = _TimeToLiveSpecification,
	}
	asserts.AssertUpdateTimeToLiveInput(t)
	return t
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
-- @param _TableName [TableName] <p>The name of the table to delete.</p>
-- Required parameter: TableName
function M.DeleteTableInput(_TableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTableInput")
	local t = { 
		["TableName"] = _TableName,
	}
	asserts.AssertDeleteTableInput(t)
	return t
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
-- @param _AttributeName [TimeToLiveAttributeName] <p> The name of the Time to Live attribute for items in the table.</p>
-- @param _TimeToLiveStatus [TimeToLiveStatus] <p> The Time to Live status for the table.</p>
function M.TimeToLiveDescription(_AttributeName, _TimeToLiveStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeToLiveDescription")
	local t = { 
		["AttributeName"] = _AttributeName,
		["TimeToLiveStatus"] = _TimeToLiveStatus,
	}
	asserts.AssertTimeToLiveDescription(t)
	return t
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
-- @param _WriteCapacityUnits [PositiveLongObject] <p>The maximum number of writes consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ReadCapacityUnits [PositiveLongObject] <p>The maximum number of strongly consistent reads consumed per second before DynamoDB returns a <code>ThrottlingException</code>. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: ReadCapacityUnits
-- Required parameter: WriteCapacityUnits
function M.ProvisionedThroughput(_WriteCapacityUnits, _ReadCapacityUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedThroughput")
	local t = { 
		["WriteCapacityUnits"] = _WriteCapacityUnits,
		["ReadCapacityUnits"] = _ReadCapacityUnits,
	}
	asserts.AssertProvisionedThroughput(t)
	return t
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
-- @param _ComparisonOperator [ComparisonOperator] <p>A comparator for evaluating attributes in the <code>AttributeValueList</code>. For example, equals, greater than, less than, etc.</p> <p>The following comparison operators are available:</p> <p> <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN</code> </p> <p>The following are descriptions of each comparison operator.</p> <ul> <li> <p> <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NE</code> : Not equal. <code>NE</code> is supported for all data types, including lists and maps.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an <code>AttributeValue</code> of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LE</code> : Less than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>LT</code> : Less than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GE</code> : Greater than or equal. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>GT</code> : Greater than. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code>.</p> <p/> </li> <li> <p> <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the existence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This result is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NOT_NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported for all data types, including lists and maps.</p> <note> <p>This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "<code>a</code>" is null, and you evaluate it using <code>NULL</code>, the result is a Boolean <code>false</code>. This is because the attribute "<code>a</code>" exists; its data type is not relevant to the <code>NULL</code> comparison operator.</p> </note> </li> <li> <p> <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it finds an exact match with any member of the set.</p> <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a value in a set.</p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to true if it <i>does not</i> find an exact match with any member of the set.</p> <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a map, or a list.</p> </li> <li> <p> <code>BEGINS_WITH</code> : Checks for a prefix. </p> <p> <code>AttributeValueList</code> can contain only one <code>AttributeValue</code> of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).</p> <p/> </li> <li> <p> <code>IN</code> : Checks for matching elements in a list.</p> <p> <code>AttributeValueList</code> can contain one or more <code>AttributeValue</code> elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.</p> </li> <li> <p> <code>BETWEEN</code> : Greater than or equal to the first value, and less than or equal to the second value. </p> <p> <code>AttributeValueList</code> must contain two <code>AttributeValue</code> elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an <code>AttributeValue</code> element of a different type than the one provided in the request, the value does not match. For example, <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2", "1"]}</code> </p> </li> </ul>
-- @param _Exists [BooleanObject] <p>Causes DynamoDB to evaluate the value before attempting a conditional operation:</p> <ul> <li> <p>If <code>Exists</code> is <code>true</code>, DynamoDB will check to see if that attribute value already exists in the table. If it is found, then the operation succeeds. If it is not found, the operation fails with a <code>ConditionalCheckFailedException</code>.</p> </li> <li> <p>If <code>Exists</code> is <code>false</code>, DynamoDB assumes that the attribute value does not exist in the table. If in fact the value does not exist, then the assumption is valid and the operation succeeds. If the value is found, despite the assumption that it does not exist, the operation fails with a <code>ConditionalCheckFailedException</code>.</p> </li> </ul> <p>The default setting for <code>Exists</code> is <code>true</code>. If you supply a <code>Value</code> all by itself, DynamoDB assumes the attribute exists: You don't have to set <code>Exists</code> to <code>true</code>, because it is implied.</p> <p>DynamoDB returns a <code>ValidationException</code> if:</p> <ul> <li> <p> <code>Exists</code> is <code>true</code> but there is no <code>Value</code> to check. (You expect a value to exist, but don't specify what that value is.)</p> </li> <li> <p> <code>Exists</code> is <code>false</code> but you also provide a <code>Value</code>. (You cannot expect an attribute to have a value, while also expecting it not to exist.)</p> </li> </ul>
-- @param _Value [AttributeValue] <p>Represents the data for the expected attribute.</p> <p>Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _AttributeValueList [AttributeValueList] <p>One or more values to evaluate against the supplied attribute. The number of values in the list depends on the <code>ComparisonOperator</code> being used.</p> <p>For type Number, value comparisons are numeric.</p> <p>String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, <code>a</code> is greater than <code>A</code>, and <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p> <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.</p> <p>For information on specifying data types in JSON, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html">JSON Data Format</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.ExpectedAttributeValue(_ComparisonOperator, _Exists, _Value, _AttributeValueList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpectedAttributeValue")
	local t = { 
		["ComparisonOperator"] = _ComparisonOperator,
		["Exists"] = _Exists,
		["Value"] = _Value,
		["AttributeValueList"] = _AttributeValueList,
	}
	asserts.AssertExpectedAttributeValue(t)
	return t
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
-- @param _ConditionalOperator [ConditionalOperator] <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ExpressionAttributeNames [ExpressionAttributeNameMap] <p>One or more substitution tokens for attribute names in an expression. The following are some use cases for using <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p>To access an attribute whose name conflicts with a DynamoDB reserved word.</p> </li> <li> <p>To create a placeholder for repeating occurrences of an attribute name in an expression.</p> </li> <li> <p>To prevent special characters in an attribute name from being misinterpreted in an expression.</p> </li> </ul> <p>Use the <b>#</b> character in an expression to dereference an attribute name. For example, consider the following attribute name:</p> <ul> <li> <p> <code>Percentile</code> </p> </li> </ul> <p>The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer Guide</i>). To work around this, you could specify the following for <code>ExpressionAttributeNames</code>:</p> <ul> <li> <p> <code>{"#P":"Percentile"}</code> </p> </li> </ul> <p>You could then use this substitution in an expression, as in this example:</p> <ul> <li> <p> <code>#P = :val</code> </p> </li> </ul> <note> <p>Tokens that begin with the <b>:</b> character are <i>expression attribute values</i>, which are placeholders for the actual value at runtime.</p> </note> <p>For more information on expression attribute names, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ReturnValues [ReturnValue] <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared before they were deleted. For <code>DeleteItem</code>, the valid values are:</p> <ul> <li> <p> <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its value is <code>NONE</code>, then nothing is returned. (This setting is the default for <code>ReturnValues</code>.)</p> </li> <li> <p> <code>ALL_OLD</code> - The content of the old item is returned.</p> </li> </ul> <note> <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations; however, <code>DeleteItem</code> does not recognize any values other than <code>NONE</code> or <code>ALL_OLD</code>.</p> </note>
-- @param _ConditionExpression [ConditionExpression] <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code> to succeed.</p> <p>An expression can contain any of the following:</p> <ul> <li> <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size</code> </p> <p>These function names are case-sensitive.</p> </li> <li> <p>Comparison operators: <code>= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN </code> </p> </li> <li> <p> Logical operators: <code>AND | OR | NOT</code> </p> </li> </ul> <p>For more information on condition expressions, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _TableName [TableName] <p>The name of the table from which to delete the item.</p>
-- @param _ReturnItemCollectionMetrics [ReturnItemCollectionMetrics] <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to <code>NONE</code> (the default), no statistics are returned.</p>
-- @param _ReturnConsumedCapacity [ReturnConsumedCapacity] 
-- @param _ExpressionAttributeValues [ExpressionAttributeValueMap] <p>One or more values that can be substituted in an expression.</p> <p>Use the <b>:</b> (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the <i>ProductStatus</i> attribute was one of the following: </p> <p> <code>Available | Backordered | Discontinued</code> </p> <p>You would first need to specify <code>ExpressionAttributeValues</code> as follows:</p> <p> <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }</code> </p> <p>You could then use these values in an expression, such as this:</p> <p> <code>ProductStatus IN (:avail, :back, :disc)</code> </p> <p>For more information on expression attribute values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _Key [Key] <p>A map of attribute names to <code>AttributeValue</code> objects, representing the primary key of the item to delete.</p> <p>For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.</p>
-- @param _Expected [ExpectedAttributeMap] <p>This is a legacy parameter. Use <code>ConditionExpresssion</code> instead. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: TableName
-- Required parameter: Key
function M.DeleteItemInput(_ConditionalOperator, _ExpressionAttributeNames, _ReturnValues, _ConditionExpression, _TableName, _ReturnItemCollectionMetrics, _ReturnConsumedCapacity, _ExpressionAttributeValues, _Key, _Expected, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteItemInput")
	local t = { 
		["ConditionalOperator"] = _ConditionalOperator,
		["ExpressionAttributeNames"] = _ExpressionAttributeNames,
		["ReturnValues"] = _ReturnValues,
		["ConditionExpression"] = _ConditionExpression,
		["TableName"] = _TableName,
		["ReturnItemCollectionMetrics"] = _ReturnItemCollectionMetrics,
		["ReturnConsumedCapacity"] = _ReturnConsumedCapacity,
		["ExpressionAttributeValues"] = _ExpressionAttributeValues,
		["Key"] = _Key,
		["Expected"] = _Expected,
	}
	asserts.AssertDeleteItemInput(t)
	return t
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
-- @param _KeySchema [KeySchema] <p>The key schema for the global secondary index.</p>
-- @param _IndexName [IndexName] <p>The name of the global secondary index to be created.</p>
-- @param _Projection [Projection] <p>Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.</p>
-- @param _ProvisionedThroughput [ProvisionedThroughput] <p>Represents the provisioned throughput settings for the specified global secondary index.</p> <p>For current minimum and maximum provisioned throughput values, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Limits</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- Required parameter: IndexName
-- Required parameter: KeySchema
-- Required parameter: Projection
-- Required parameter: ProvisionedThroughput
function M.CreateGlobalSecondaryIndexAction(_KeySchema, _IndexName, _Projection, _ProvisionedThroughput, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGlobalSecondaryIndexAction")
	local t = { 
		["KeySchema"] = _KeySchema,
		["IndexName"] = _IndexName,
		["Projection"] = _Projection,
		["ProvisionedThroughput"] = _ProvisionedThroughput,
	}
	asserts.AssertCreateGlobalSecondaryIndexAction(t)
	return t
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
-- @param _Count [Integer] <p>The number of items in the response.</p> <p>If you set <code>ScanFilter</code> in the request, then <code>Count</code> is the number of items returned after the filter was applied, and <code>ScannedCount</code> is the number of matching items before the filter was applied.</p> <p>If you did not use a filter in the request, then <code>Count</code> is the same as <code>ScannedCount</code>.</p>
-- @param _Items [ItemList] <p>An array of item attributes that match the scan criteria. Each element in this array consists of an attribute name and the value for that attribute.</p>
-- @param _LastEvaluatedKey [Key] <p>The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p> <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been processed and there is no more data to be retrieved.</p> <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when <code>LastEvaluatedKey</code> is empty.</p>
-- @param _ScannedCount [Integer] <p>The number of items evaluated, before any <code>ScanFilter</code> is applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Scan</code> operation. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p> <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same as <code>Count</code>.</p>
-- @param _ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>Scan</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.ScanOutput(_Count, _Items, _LastEvaluatedKey, _ScannedCount, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScanOutput")
	local t = { 
		["Count"] = _Count,
		["Items"] = _Items,
		["LastEvaluatedKey"] = _LastEvaluatedKey,
		["ScannedCount"] = _ScannedCount,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertScanOutput(t)
	return t
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
-- @param _TableMaxWriteCapacityUnits [PositiveLongObject] <p>The maximum write capacity units that your account allows you to provision for a new table that you are creating in this region, including the write capacity units provisioned for its global secondary indexes (GSIs).</p>
-- @param _TableMaxReadCapacityUnits [PositiveLongObject] <p>The maximum read capacity units that your account allows you to provision for a new table that you are creating in this region, including the read capacity units provisioned for its global secondary indexes (GSIs).</p>
-- @param _AccountMaxReadCapacityUnits [PositiveLongObject] <p>The maximum total read capacity units that your account allows you to provision across all of your tables in this region.</p>
-- @param _AccountMaxWriteCapacityUnits [PositiveLongObject] <p>The maximum total write capacity units that your account allows you to provision across all of your tables in this region.</p>
function M.DescribeLimitsOutput(_TableMaxWriteCapacityUnits, _TableMaxReadCapacityUnits, _AccountMaxReadCapacityUnits, _AccountMaxWriteCapacityUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsOutput")
	local t = { 
		["TableMaxWriteCapacityUnits"] = _TableMaxWriteCapacityUnits,
		["TableMaxReadCapacityUnits"] = _TableMaxReadCapacityUnits,
		["AccountMaxReadCapacityUnits"] = _AccountMaxReadCapacityUnits,
		["AccountMaxWriteCapacityUnits"] = _AccountMaxWriteCapacityUnits,
	}
	asserts.AssertDescribeLimitsOutput(t)
	return t
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
-- @param _TableDescription [TableDescription] <p>Represents the properties of the table.</p>
function M.UpdateTableOutput(_TableDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTableOutput")
	local t = { 
		["TableDescription"] = _TableDescription,
	}
	asserts.AssertUpdateTableOutput(t)
	return t
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
-- @param _Attributes [AttributeMap] <p>A map of attribute values as they appeared before the <code>UpdateItem</code> operation. This map only appears if <code>ReturnValues</code> was specified as something other than <code>NONE</code> in the request. Each element represents one attribute.</p>
-- @param _ItemCollectionMetrics [ItemCollectionMetrics] <p>Information about item collections, if any, that were affected by the <code>UpdateItem</code> operation. <code>ItemCollectionMetrics</code> is only returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.</p> <p>Each <code>ItemCollectionMetrics</code> element consists of:</p> <ul> <li> <p> <code>ItemCollectionKey</code> - The partition key value of the item collection. This is the same as the partition key value of the item itself.</p> </li> <li> <p> <code>SizeEstimateRange</code> - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.</p> <p>The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.</p> </li> </ul>
-- @param _ConsumedCapacity [ConsumedCapacity] <p>The capacity units consumed by the <code>UpdateItem</code> operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more information, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
function M.UpdateItemOutput(_Attributes, _ItemCollectionMetrics, _ConsumedCapacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateItemOutput")
	local t = { 
		["Attributes"] = _Attributes,
		["ItemCollectionMetrics"] = _ItemCollectionMetrics,
		["ConsumedCapacity"] = _ConsumedCapacity,
	}
	asserts.AssertUpdateItemOutput(t)
	return t
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
-- @param _IndexSizeBytes [Long] <p>The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param _IndexName [IndexName] <p>Represents the name of the local secondary index.</p>
-- @param _Projection [Projection] <p>Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. </p>
-- @param _IndexArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
-- @param _KeySchema [KeySchema] <p>The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note>
-- @param _ItemCount [Long] <p>The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
function M.LocalSecondaryIndexDescription(_IndexSizeBytes, _IndexName, _Projection, _IndexArn, _KeySchema, _ItemCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LocalSecondaryIndexDescription")
	local t = { 
		["IndexSizeBytes"] = _IndexSizeBytes,
		["IndexName"] = _IndexName,
		["Projection"] = _Projection,
		["IndexArn"] = _IndexArn,
		["KeySchema"] = _KeySchema,
		["ItemCount"] = _ItemCount,
	}
	asserts.AssertLocalSecondaryIndexDescription(t)
	return t
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
-- @param _Item [PutItemInputAttributeMap] <p>A map of attribute name to attribute values, representing the primary key of an item to be processed by <code>PutItem</code>. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema. If any attributes are present in the item which are part of an index key schema for the table, their types must match the index key schema.</p>
-- Required parameter: Item
function M.PutRequest(_Item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRequest")
	local t = { 
		["Item"] = _Item,
	}
	asserts.AssertPutRequest(t)
	return t
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
-- @param _TimeToLiveDescription [TimeToLiveDescription] <p/>
function M.DescribeTimeToLiveOutput(_TimeToLiveDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTimeToLiveOutput")
	local t = { 
		["TimeToLiveDescription"] = _TimeToLiveDescription,
	}
	asserts.AssertDescribeTimeToLiveOutput(t)
	return t
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
-- @param _CapacityUnits [ConsumedCapacityUnits] <p>The total number of capacity units consumed by the operation.</p>
-- @param _GlobalSecondaryIndexes [SecondaryIndexesCapacityMap] <p>The amount of throughput consumed on each global index affected by the operation.</p>
-- @param _TableName [TableName] <p>The name of the table that was affected by the operation.</p>
-- @param _LocalSecondaryIndexes [SecondaryIndexesCapacityMap] <p>The amount of throughput consumed on each local index affected by the operation.</p>
-- @param _Table [Capacity] <p>The amount of throughput consumed on the table affected by the operation.</p>
function M.ConsumedCapacity(_CapacityUnits, _GlobalSecondaryIndexes, _TableName, _LocalSecondaryIndexes, _Table, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConsumedCapacity")
	local t = { 
		["CapacityUnits"] = _CapacityUnits,
		["GlobalSecondaryIndexes"] = _GlobalSecondaryIndexes,
		["TableName"] = _TableName,
		["LocalSecondaryIndexes"] = _LocalSecondaryIndexes,
		["Table"] = _Table,
	}
	asserts.AssertConsumedCapacity(t)
	return t
end

keys.ItemCollectionSizeLimitExceededException = { ["message"] = true, nil }

function asserts.AssertItemCollectionSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemCollectionSizeLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ItemCollectionSizeLimitExceededException[k], "ItemCollectionSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemCollectionSizeLimitExceededException
-- <p>An item collection is too large. This exception is only returned for tables that have one or more local secondary indexes.</p>
-- @param _message [ErrorMessage] <p>The total size of an item collection has exceeded the maximum limit of 10 gigabytes.</p>
function M.ItemCollectionSizeLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ItemCollectionSizeLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertItemCollectionSizeLimitExceededException(t)
	return t
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
-- @param _Key [Key] <p>A map of attribute name to attribute values, representing the primary key of the item to delete. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema.</p>
-- Required parameter: Key
function M.DeleteRequest(_Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRequest")
	local t = { 
		["Key"] = _Key,
	}
	asserts.AssertDeleteRequest(t)
	return t
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
-- @param _ResourceArn [ResourceArnString] <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is an Amazon Resource Name (ARN).</p>
-- @param _Tags [TagList] <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.TagResourceInput(_ResourceArn, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceInput")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceInput(t)
	return t
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
function M.DescribeLimitsInput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLimitsInput")
	local t = { 
	}
	asserts.AssertDescribeLimitsInput(t)
	return t
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
-- @param _IndexName [IndexName] <p>The name of the global secondary index to be deleted.</p>
-- Required parameter: IndexName
function M.DeleteGlobalSecondaryIndexAction(_IndexName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGlobalSecondaryIndexAction")
	local t = { 
		["IndexName"] = _IndexName,
	}
	asserts.AssertDeleteGlobalSecondaryIndexAction(t)
	return t
end

keys.TableDescription = { ["TableArn"] = true, ["LocalSecondaryIndexes"] = true, ["AttributeDefinitions"] = true, ["GlobalSecondaryIndexes"] = true, ["ProvisionedThroughput"] = true, ["TableSizeBytes"] = true, ["TableName"] = true, ["TableStatus"] = true, ["StreamSpecification"] = true, ["LatestStreamLabel"] = true, ["KeySchema"] = true, ["ItemCount"] = true, ["CreationDateTime"] = true, ["LatestStreamArn"] = true, nil }

function asserts.AssertTableDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableDescription to be of type 'table'")
	if struct["TableArn"] then asserts.AssertString(struct["TableArn"]) end
	if struct["LocalSecondaryIndexes"] then asserts.AssertLocalSecondaryIndexDescriptionList(struct["LocalSecondaryIndexes"]) end
	if struct["AttributeDefinitions"] then asserts.AssertAttributeDefinitions(struct["AttributeDefinitions"]) end
	if struct["GlobalSecondaryIndexes"] then asserts.AssertGlobalSecondaryIndexDescriptionList(struct["GlobalSecondaryIndexes"]) end
	if struct["ProvisionedThroughput"] then asserts.AssertProvisionedThroughputDescription(struct["ProvisionedThroughput"]) end
	if struct["TableSizeBytes"] then asserts.AssertLong(struct["TableSizeBytes"]) end
	if struct["TableName"] then asserts.AssertTableName(struct["TableName"]) end
	if struct["TableStatus"] then asserts.AssertTableStatus(struct["TableStatus"]) end
	if struct["StreamSpecification"] then asserts.AssertStreamSpecification(struct["StreamSpecification"]) end
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
-- @param _TableArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the table.</p>
-- @param _LocalSecondaryIndexes [LocalSecondaryIndexDescriptionList] <p>Represents one or more local secondary indexes on the table. Each index is scoped to a given partition key value. Tables with one or more local secondary indexes are subject to an item collection size limit, where the amount of data within a given item collection cannot exceed 10 GB. Each element is composed of:</p> <ul> <li> <p> <code>IndexName</code> - The name of the local secondary index.</p> </li> <li> <p> <code>KeySchema</code> - Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>IndexSizeBytes</code> - Represents the total size of the index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p> </li> <li> <p> <code>ItemCount</code> - Represents the number of items in the index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p> </li> </ul> <p>If the table is in the <code>DELETING</code> state, no information about indexes will be returned.</p>
-- @param _AttributeDefinitions [AttributeDefinitions] <p>An array of <code>AttributeDefinition</code> objects. Each of these objects describes one attribute in the table and index key schema.</p> <p>Each <code>AttributeDefinition</code> object in this array is composed of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of the attribute.</p> </li> <li> <p> <code>AttributeType</code> - The data type for the attribute.</p> </li> </ul>
-- @param _GlobalSecondaryIndexes [GlobalSecondaryIndexDescriptionList] <p>The global secondary indexes, if any, on the table. Each index is scoped to a given partition key value. Each element is composed of:</p> <ul> <li> <p> <code>Backfilling</code> - If true, then the index is currently in the backfilling phase. Backfilling occurs only when a new global secondary index is added to the table; it is the process by which DynamoDB populates the new index with data from the table. (This attribute does not appear for indexes that were created during a <code>CreateTable</code> operation.)</p> </li> <li> <p> <code>IndexName</code> - The name of the global secondary index.</p> </li> <li> <p> <code>IndexSizeBytes</code> - The total size of the global secondary index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value. </p> </li> <li> <p> <code>IndexStatus</code> - The current status of the global secondary index:</p> <ul> <li> <p> <code>CREATING</code> - The index is being created.</p> </li> <li> <p> <code>UPDATING</code> - The index is being updated.</p> </li> <li> <p> <code>DELETING</code> - The index is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The index is ready for use.</p> </li> </ul> </li> <li> <p> <code>ItemCount</code> - The number of items in the global secondary index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value. </p> </li> <li> <p> <code>KeySchema</code> - Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.</p> </li> <li> <p> <code>Projection</code> - Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:</p> <ul> <li> <p> <code>ProjectionType</code> - One of the following:</p> <ul> <li> <p> <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the index.</p> </li> <li> <p> <code>INCLUDE</code> - Only the specified table attributes are projected into the index. The list of projected attributes are in <code>NonKeyAttributes</code>.</p> </li> <li> <p> <code>ALL</code> - All of the table attributes are projected into the index.</p> </li> </ul> </li> <li> <p> <code>NonKeyAttributes</code> - A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in <code>NonKeyAttributes</code>, summed across all of the secondary indexes, must not exceed 20. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.</p> </li> </ul> </li> <li> <p> <code>ProvisionedThroughput</code> - The provisioned throughput settings for the global secondary index, consisting of read and write capacity units, along with data about increases and decreases. </p> </li> </ul> <p>If the table is in the <code>DELETING</code> state, no information about indexes will be returned.</p>
-- @param _ProvisionedThroughput [ProvisionedThroughputDescription] <p>The provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.</p>
-- @param _TableSizeBytes [Long] <p>The total size of the specified table, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param _TableName [TableName] <p>The name of the table.</p>
-- @param _TableStatus [TableStatus] <p>The current state of the table:</p> <ul> <li> <p> <code>CREATING</code> - The table is being created.</p> </li> <li> <p> <code>UPDATING</code> - The table is being updated.</p> </li> <li> <p> <code>DELETING</code> - The table is being deleted.</p> </li> <li> <p> <code>ACTIVE</code> - The table is ready for use.</p> </li> </ul>
-- @param _StreamSpecification [StreamSpecification] <p>The current DynamoDB Streams configuration for the table.</p>
-- @param _LatestStreamLabel [String] <p>A timestamp, in ISO 8601 format, for this stream.</p> <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:</p> <ul> <li> <p>the AWS customer ID.</p> </li> <li> <p>the table name.</p> </li> <li> <p>the <code>StreamLabel</code>.</p> </li> </ul>
-- @param _KeySchema [KeySchema] <p>The primary key structure for the table. Each <code>KeySchemaElement</code> consists of:</p> <ul> <li> <p> <code>AttributeName</code> - The name of the attribute.</p> </li> <li> <p> <code>KeyType</code> - The role of the attribute:</p> <ul> <li> <p> <code>HASH</code> - partition key</p> </li> <li> <p> <code>RANGE</code> - sort key</p> </li> </ul> <note> <p>The partition key of an item is also known as its <i>hash attribute</i>. The term "hash attribute" derives from DynamoDB' usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.</p> <p>The sort key of an item is also known as its <i>range attribute</i>. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.</p> </note> </li> </ul> <p>For more information about primary keys, see <a href="http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
-- @param _ItemCount [Long] <p>The number of items in the specified table. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.</p>
-- @param _CreationDateTime [Date] <p>The date and time when the table was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
-- @param _LatestStreamArn [StreamArn] <p>The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this table.</p>
function M.TableDescription(_TableArn, _LocalSecondaryIndexes, _AttributeDefinitions, _GlobalSecondaryIndexes, _ProvisionedThroughput, _TableSizeBytes, _TableName, _TableStatus, _StreamSpecification, _LatestStreamLabel, _KeySchema, _ItemCount, _CreationDateTime, _LatestStreamArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableDescription")
	local t = { 
		["TableArn"] = _TableArn,
		["LocalSecondaryIndexes"] = _LocalSecondaryIndexes,
		["AttributeDefinitions"] = _AttributeDefinitions,
		["GlobalSecondaryIndexes"] = _GlobalSecondaryIndexes,
		["ProvisionedThroughput"] = _ProvisionedThroughput,
		["TableSizeBytes"] = _TableSizeBytes,
		["TableName"] = _TableName,
		["TableStatus"] = _TableStatus,
		["StreamSpecification"] = _StreamSpecification,
		["LatestStreamLabel"] = _LatestStreamLabel,
		["KeySchema"] = _KeySchema,
		["ItemCount"] = _ItemCount,
		["CreationDateTime"] = _CreationDateTime,
		["LatestStreamArn"] = _LatestStreamArn,
	}
	asserts.AssertTableDescription(t)
	return t
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
-- @param _PutRequest [PutRequest] <p>A request to perform a <code>PutItem</code> operation.</p>
-- @param _DeleteRequest [DeleteRequest] <p>A request to perform a <code>DeleteItem</code> operation.</p>
function M.WriteRequest(_PutRequest, _DeleteRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteRequest")
	local t = { 
		["PutRequest"] = _PutRequest,
		["DeleteRequest"] = _DeleteRequest,
	}
	asserts.AssertWriteRequest(t)
	return t
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

function asserts.AssertReturnValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnValue to be of type 'string'")
end

--  
function M.ReturnValue(str)
	asserts.AssertReturnValue(str)
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

function asserts.AssertAttributeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeAction to be of type 'string'")
end

--  
function M.AttributeAction(str)
	asserts.AssertAttributeAction(str)
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

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
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

function asserts.AssertReturnConsumedCapacity(str)
	assert(str)
	assert(type(str) == "string", "Expected ReturnConsumedCapacity to be of type 'string'")
end

-- <p>Determines the level of detail about provisioned throughput consumption that is returned in the response:</p> <ul> <li> <p> <code>INDEXES</code> - The response includes the aggregate <code>ConsumedCapacity</code> for the operation, together with <code>ConsumedCapacity</code> for each table and secondary index that was accessed.</p> <p>Note that some operations, such as <code>GetItem</code> and <code>BatchGetItem</code>, do not access any indexes at all. In these cases, specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code> information for table(s).</p> </li> <li> <p> <code>TOTAL</code> - The response includes only the aggregate <code>ConsumedCapacity</code> for the operation.</p> </li> <li> <p> <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the response.</p> </li> </ul>
function M.ReturnConsumedCapacity(str)
	asserts.AssertReturnConsumedCapacity(str)
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

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
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

function asserts.AssertTableStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TableStatus to be of type 'string'")
end

--  
function M.TableStatus(str)
	asserts.AssertTableStatus(str)
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

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
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

function asserts.AssertStreamEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected StreamEnabled to be of type 'boolean'")
end

function M.StreamEnabled(boolean)
	asserts.AssertStreamEnabled(boolean)
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

function asserts.AssertBackfilling(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Backfilling to be of type 'boolean'")
end

function M.Backfilling(boolean)
	asserts.AssertBackfilling(boolean)
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

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	asserts.AssertBinaryAttributeValue(blob)
	return blob
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
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call UpdateTimeToLive asynchronously, invoking a callback when done
-- @param UpdateTimeToLiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTimeToLiveAsync(UpdateTimeToLiveInput, cb)
	assert(UpdateTimeToLiveInput, "You must provide a UpdateTimeToLiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateTimeToLive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateTimeToLiveSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTimeToLiveAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTable asynchronously, invoking a callback when done
-- @param UpdateTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTableAsync(UpdateTableInput, cb)
	assert(UpdateTableInput, "You must provide a UpdateTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateTableSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTableAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTable asynchronously, invoking a callback when done
-- @param DeleteTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTableAsync(DeleteTableInput, cb)
	assert(DeleteTableInput, "You must provide a DeleteTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteTableSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTableAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLimits asynchronously, invoking a callback when done
-- @param DescribeLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLimitsAsync(DescribeLimitsInput, cb)
	assert(DescribeLimitsInput, "You must provide a DescribeLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeLimitsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLimitsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceInput, cb)
	assert(UntagResourceInput, "You must provide a UntagResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UntagResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Scan asynchronously, invoking a callback when done
-- @param ScanInput
-- @param cb Callback function accepting two args: response, error_message
function M.ScanAsync(ScanInput, cb)
	assert(ScanInput, "You must provide a ScanInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.Scan",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ScanSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ScanAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsOfResource asynchronously, invoking a callback when done
-- @param ListTagsOfResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsOfResourceAsync(ListTagsOfResourceInput, cb)
	assert(ListTagsOfResourceInput, "You must provide a ListTagsOfResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListTagsOfResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListTagsOfResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsOfResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTimeToLive asynchronously, invoking a callback when done
-- @param DescribeTimeToLiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTimeToLiveAsync(DescribeTimeToLiveInput, cb)
	assert(DescribeTimeToLiveInput, "You must provide a DescribeTimeToLiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeTimeToLive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeTimeToLiveSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTimeToLiveAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTable asynchronously, invoking a callback when done
-- @param DescribeTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTableAsync(DescribeTableInput, cb)
	assert(DescribeTableInput, "You must provide a DescribeTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DescribeTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeTableSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTableAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchWriteItem asynchronously, invoking a callback when done
-- @param BatchWriteItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchWriteItemAsync(BatchWriteItemInput, cb)
	assert(BatchWriteItemInput, "You must provide a BatchWriteItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.BatchWriteItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.BatchWriteItemSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchWriteItemAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTable asynchronously, invoking a callback when done
-- @param CreateTableInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTableAsync(CreateTableInput, cb)
	assert(CreateTableInput, "You must provide a CreateTableInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.CreateTable",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateTableSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTableAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTables asynchronously, invoking a callback when done
-- @param ListTablesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTablesAsync(ListTablesInput, cb)
	assert(ListTablesInput, "You must provide a ListTablesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.ListTables",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListTablesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTablesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetItem asynchronously, invoking a callback when done
-- @param GetItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetItemAsync(GetItemInput, cb)
	assert(GetItemInput, "You must provide a GetItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.GetItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetItemSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetItemAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Query asynchronously, invoking a callback when done
-- @param QueryInput
-- @param cb Callback function accepting two args: response, error_message
function M.QueryAsync(QueryInput, cb)
	assert(QueryInput, "You must provide a QueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.Query",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.QuerySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.QueryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutItem asynchronously, invoking a callback when done
-- @param PutItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutItemAsync(PutItemInput, cb)
	assert(PutItemInput, "You must provide a PutItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.PutItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutItemSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutItemAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateItem asynchronously, invoking a callback when done
-- @param UpdateItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateItemAsync(UpdateItemInput, cb)
	assert(UpdateItemInput, "You must provide a UpdateItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.UpdateItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateItemSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateItemAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceInput, cb)
	assert(TagResourceInput, "You must provide a TagResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.TagResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteItem asynchronously, invoking a callback when done
-- @param DeleteItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteItemAsync(DeleteItemInput, cb)
	assert(DeleteItemInput, "You must provide a DeleteItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.DeleteItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteItemSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteItemAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetItem asynchronously, invoking a callback when done
-- @param BatchGetItemInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetItemAsync(BatchGetItemInput, cb)
	assert(BatchGetItemInput, "You must provide a BatchGetItemInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "DynamoDB_20120810.BatchGetItem",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.BatchGetItemSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetItemAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
