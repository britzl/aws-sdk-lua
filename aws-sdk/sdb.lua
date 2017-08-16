--- GENERATED CODE - DO NOT MODIFY
-- Amazon SimpleDB ()

local M = {}

M.metadata = {
	api_version = "2009-04-15",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "sdb",
	service_abbreviation = "",
	service_full_name = "Amazon SimpleDB",
	signature_version = "v2",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "",
}

local keys = {}
local asserts = {}

keys.NumberDomainAttributesExceeded = { ["BoxUsage"] = true, nil }

function asserts.AssertNumberDomainAttributesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberDomainAttributesExceeded to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberDomainAttributesExceeded[k], "NumberDomainAttributesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberDomainAttributesExceeded
-- <p>Too many attributes in this domain.</p>
-- @param _BoxUsage [Float] 
function M.NumberDomainAttributesExceeded(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberDomainAttributesExceeded")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNumberDomainAttributesExceeded(t)
	return t
end

keys.DeleteDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertDeleteDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainRequest[k], "DeleteDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainRequest
--  
-- @param _DomainName [String] The name of the domain to delete.
-- Required parameter: DomainName
function M.DeleteDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteDomainRequest(t)
	return t
end

keys.InvalidQueryExpression = { ["BoxUsage"] = true, nil }

function asserts.AssertInvalidQueryExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidQueryExpression to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidQueryExpression[k], "InvalidQueryExpression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidQueryExpression
-- <p>The specified query expression syntax is not valid.</p>
-- @param _BoxUsage [Float] 
function M.InvalidQueryExpression(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidQueryExpression")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertInvalidQueryExpression(t)
	return t
end

keys.RequestTimeout = { ["BoxUsage"] = true, nil }

function asserts.AssertRequestTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTimeout to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestTimeout[k], "RequestTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTimeout
-- <p>A timeout occurred when attempting to query the specified domain with specified query expression.</p>
-- @param _BoxUsage [Float] 
function M.RequestTimeout(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestTimeout")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertRequestTimeout(t)
	return t
end

keys.DeletableAttribute = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertDeletableAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletableAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletableAttribute[k], "DeletableAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletableAttribute
-- <p></p>
-- @param _Name [String] The name of the attribute.
-- @param _Value [String] The value of the attribute.
-- Required parameter: Name
function M.DeletableAttribute(_Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletableAttribute")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertDeletableAttribute(t)
	return t
end

keys.InvalidNumberValueTests = { ["BoxUsage"] = true, nil }

function asserts.AssertInvalidNumberValueTests(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNumberValueTests to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNumberValueTests[k], "InvalidNumberValueTests contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNumberValueTests
-- <p>Too many predicates exist in the query expression.</p>
-- @param _BoxUsage [Float] 
function M.InvalidNumberValueTests(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNumberValueTests")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertInvalidNumberValueTests(t)
	return t
end

keys.NumberDomainsExceeded = { ["BoxUsage"] = true, nil }

function asserts.AssertNumberDomainsExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberDomainsExceeded to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberDomainsExceeded[k], "NumberDomainsExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberDomainsExceeded
-- <p>Too many domains exist per this account.</p>
-- @param _BoxUsage [Float] 
function M.NumberDomainsExceeded(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberDomainsExceeded")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNumberDomainsExceeded(t)
	return t
end

keys.NumberItemAttributesExceeded = { ["BoxUsage"] = true, nil }

function asserts.AssertNumberItemAttributesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberItemAttributesExceeded to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberItemAttributesExceeded[k], "NumberItemAttributesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberItemAttributesExceeded
-- <p>Too many attributes in this item.</p>
-- @param _BoxUsage [Float] 
function M.NumberItemAttributesExceeded(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberItemAttributesExceeded")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNumberItemAttributesExceeded(t)
	return t
end

keys.SelectRequest = { ["ConsistentRead"] = true, ["NextToken"] = true, ["SelectExpression"] = true, nil }

function asserts.AssertSelectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectRequest to be of type 'table'")
	assert(struct["SelectExpression"], "Expected key SelectExpression to exist in table")
	if struct["ConsistentRead"] then asserts.AssertBoolean(struct["ConsistentRead"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["SelectExpression"] then asserts.AssertString(struct["SelectExpression"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectRequest[k], "SelectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectRequest
--  
-- @param _ConsistentRead [Boolean] Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
-- @param _NextToken [String] A string informing Amazon SimpleDB where to start the next list of <code>ItemNames</code>.
-- @param _SelectExpression [String] The expression used to query the domain.
-- Required parameter: SelectExpression
function M.SelectRequest(_ConsistentRead, _NextToken, _SelectExpression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SelectRequest")
	local t = { 
		["ConsistentRead"] = _ConsistentRead,
		["NextToken"] = _NextToken,
		["SelectExpression"] = _SelectExpression,
	}
	asserts.AssertSelectRequest(t)
	return t
end

keys.AttributeDoesNotExist = { ["BoxUsage"] = true, nil }

function asserts.AssertAttributeDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeDoesNotExist to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeDoesNotExist[k], "AttributeDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeDoesNotExist
-- <p>The specified attribute does not exist.</p>
-- @param _BoxUsage [Float] 
function M.AttributeDoesNotExist(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeDoesNotExist")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertAttributeDoesNotExist(t)
	return t
end

keys.DeletableItem = { ["Attributes"] = true, ["Name"] = true, nil }

function asserts.AssertDeletableItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletableItem to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Attributes"] then asserts.AssertDeletableAttributeList(struct["Attributes"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletableItem[k], "DeletableItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletableItem
--  
-- @param _Attributes [DeletableAttributeList] 
-- @param _Name [String] 
-- Required parameter: Name
function M.DeletableItem(_Attributes, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletableItem")
	local t = { 
		["Attributes"] = _Attributes,
		["Name"] = _Name,
	}
	asserts.AssertDeletableItem(t)
	return t
end

keys.CreateDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertCreateDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainRequest[k], "CreateDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainRequest
--  
-- @param _DomainName [String] The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
-- Required parameter: DomainName
function M.CreateDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertCreateDomainRequest(t)
	return t
end

keys.UpdateCondition = { ["Exists"] = true, ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertUpdateCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCondition to be of type 'table'")
	if struct["Exists"] then asserts.AssertBoolean(struct["Exists"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCondition[k], "UpdateCondition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCondition
-- <p> Specifies the conditions under which data should be updated. If an update condition is specified for a request, the data will only be updated if the condition is satisfied. For example, if an attribute with a specific name and value exists, or if a specific attribute doesn't exist. </p>
-- @param _Exists [Boolean] <p>A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify <code>true</code> if the attribute must exist for the update condition to be satisfied. Specify <code>false</code> if the attribute should not exist in order for the update condition to be satisfied.</p>
-- @param _Name [String] <p>The name of the attribute involved in the condition.</p>
-- @param _Value [String] <p>The value of an attribute. This value can only be specified when the <code>Exists</code> parameter is equal to <code>true</code>.</p>
function M.UpdateCondition(_Exists, _Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCondition")
	local t = { 
		["Exists"] = _Exists,
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertUpdateCondition(t)
	return t
end

keys.NumberSubmittedAttributesExceeded = { ["BoxUsage"] = true, nil }

function asserts.AssertNumberSubmittedAttributesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberSubmittedAttributesExceeded to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberSubmittedAttributesExceeded[k], "NumberSubmittedAttributesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberSubmittedAttributesExceeded
-- <p>Too many attributes exist in a single call.</p>
-- @param _BoxUsage [Float] 
function M.NumberSubmittedAttributesExceeded(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberSubmittedAttributesExceeded")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNumberSubmittedAttributesExceeded(t)
	return t
end

keys.InvalidNextToken = { ["BoxUsage"] = true, nil }

function asserts.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextToken[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The specified NextToken is not valid. </p>
-- @param _BoxUsage [Float] 
function M.InvalidNextToken(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextToken")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertInvalidNextToken(t)
	return t
end

keys.InvalidNumberPredicates = { ["BoxUsage"] = true, nil }

function asserts.AssertInvalidNumberPredicates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNumberPredicates to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNumberPredicates[k], "InvalidNumberPredicates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNumberPredicates
-- <p>Too many predicates exist in the query expression.</p>
-- @param _BoxUsage [Float] 
function M.InvalidNumberPredicates(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNumberPredicates")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertInvalidNumberPredicates(t)
	return t
end

keys.GetAttributesResult = { ["Attributes"] = true, nil }

function asserts.AssertGetAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAttributesResult to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAttributesResult[k], "GetAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAttributesResult
--  
-- @param _Attributes [AttributeList] The list of attributes returned by the operation.
function M.GetAttributesResult(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAttributesResult")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertGetAttributesResult(t)
	return t
end

keys.GetAttributesRequest = { ["ConsistentRead"] = true, ["ItemName"] = true, ["AttributeNames"] = true, ["DomainName"] = true, nil }

function asserts.AssertGetAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ItemName"], "Expected key ItemName to exist in table")
	if struct["ConsistentRead"] then asserts.AssertBoolean(struct["ConsistentRead"]) end
	if struct["ItemName"] then asserts.AssertString(struct["ItemName"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAttributesRequest[k], "GetAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAttributesRequest
--  
-- @param _ConsistentRead [Boolean] Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
-- @param _ItemName [String] The name of the item.
-- @param _AttributeNames [AttributeNameList] The names of the attributes.
-- @param _DomainName [String] The name of the domain in which to perform the operation.
-- Required parameter: DomainName
-- Required parameter: ItemName
function M.GetAttributesRequest(_ConsistentRead, _ItemName, _AttributeNames, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAttributesRequest")
	local t = { 
		["ConsistentRead"] = _ConsistentRead,
		["ItemName"] = _ItemName,
		["AttributeNames"] = _AttributeNames,
		["DomainName"] = _DomainName,
	}
	asserts.AssertGetAttributesRequest(t)
	return t
end

keys.ListDomainsResult = { ["NextToken"] = true, ["DomainNames"] = true, nil }

function asserts.AssertListDomainsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["DomainNames"] then asserts.AssertDomainNameList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainsResult[k], "ListDomainsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsResult
--  
-- @param _NextToken [String] An opaque token indicating that there are more domains than the specified <code>MaxNumberOfDomains</code> still available.
-- @param _DomainNames [DomainNameList] A list of domain names that match the expression.
function M.ListDomainsResult(_NextToken, _DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsResult")
	local t = { 
		["NextToken"] = _NextToken,
		["DomainNames"] = _DomainNames,
	}
	asserts.AssertListDomainsResult(t)
	return t
end

keys.NoSuchDomain = { ["BoxUsage"] = true, nil }

function asserts.AssertNoSuchDomain(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDomain to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchDomain[k], "NoSuchDomain contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDomain
-- <p>The specified domain does not exist.</p>
-- @param _BoxUsage [Float] 
function M.NoSuchDomain(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDomain")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNoSuchDomain(t)
	return t
end

keys.PutAttributesRequest = { ["Expected"] = true, ["Attributes"] = true, ["ItemName"] = true, ["DomainName"] = true, nil }

function asserts.AssertPutAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ItemName"], "Expected key ItemName to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Expected"] then asserts.AssertUpdateCondition(struct["Expected"]) end
	if struct["Attributes"] then asserts.AssertReplaceableAttributeList(struct["Attributes"]) end
	if struct["ItemName"] then asserts.AssertString(struct["ItemName"]) end
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAttributesRequest[k], "PutAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAttributesRequest
--  
-- @param _Expected [UpdateCondition] The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
-- @param _Attributes [ReplaceableAttributeList] The list of attributes.
-- @param _ItemName [String] The name of the item.
-- @param _DomainName [String] The name of the domain in which to perform the operation.
-- Required parameter: DomainName
-- Required parameter: ItemName
-- Required parameter: Attributes
function M.PutAttributesRequest(_Expected, _Attributes, _ItemName, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAttributesRequest")
	local t = { 
		["Expected"] = _Expected,
		["Attributes"] = _Attributes,
		["ItemName"] = _ItemName,
		["DomainName"] = _DomainName,
	}
	asserts.AssertPutAttributesRequest(t)
	return t
end

keys.DomainMetadataResult = { ["Timestamp"] = true, ["AttributeValueCount"] = true, ["AttributeValuesSizeBytes"] = true, ["ItemNamesSizeBytes"] = true, ["AttributeNameCount"] = true, ["ItemCount"] = true, ["AttributeNamesSizeBytes"] = true, nil }

function asserts.AssertDomainMetadataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMetadataResult to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertInteger(struct["Timestamp"]) end
	if struct["AttributeValueCount"] then asserts.AssertInteger(struct["AttributeValueCount"]) end
	if struct["AttributeValuesSizeBytes"] then asserts.AssertLong(struct["AttributeValuesSizeBytes"]) end
	if struct["ItemNamesSizeBytes"] then asserts.AssertLong(struct["ItemNamesSizeBytes"]) end
	if struct["AttributeNameCount"] then asserts.AssertInteger(struct["AttributeNameCount"]) end
	if struct["ItemCount"] then asserts.AssertInteger(struct["ItemCount"]) end
	if struct["AttributeNamesSizeBytes"] then asserts.AssertLong(struct["AttributeNamesSizeBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainMetadataResult[k], "DomainMetadataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMetadataResult
--  
-- @param _Timestamp [Integer] The data and time when metadata was calculated, in Epoch (UNIX) seconds.
-- @param _AttributeValueCount [Integer] The number of all attribute name/value pairs in the domain.
-- @param _AttributeValuesSizeBytes [Long] The total size of all attribute values in the domain, in bytes.
-- @param _ItemNamesSizeBytes [Long] The total size of all item names in the domain, in bytes.
-- @param _AttributeNameCount [Integer] The number of unique attribute names in the domain.
-- @param _ItemCount [Integer] The number of all items in the domain.
-- @param _AttributeNamesSizeBytes [Long] The total size of all unique attribute names in the domain, in bytes.
function M.DomainMetadataResult(_Timestamp, _AttributeValueCount, _AttributeValuesSizeBytes, _ItemNamesSizeBytes, _AttributeNameCount, _ItemCount, _AttributeNamesSizeBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainMetadataResult")
	local t = { 
		["Timestamp"] = _Timestamp,
		["AttributeValueCount"] = _AttributeValueCount,
		["AttributeValuesSizeBytes"] = _AttributeValuesSizeBytes,
		["ItemNamesSizeBytes"] = _ItemNamesSizeBytes,
		["AttributeNameCount"] = _AttributeNameCount,
		["ItemCount"] = _ItemCount,
		["AttributeNamesSizeBytes"] = _AttributeNamesSizeBytes,
	}
	asserts.AssertDomainMetadataResult(t)
	return t
end

keys.BatchPutAttributesRequest = { ["Items"] = true, ["DomainName"] = true, nil }

function asserts.AssertBatchPutAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertReplaceableItemList(struct["Items"]) end
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPutAttributesRequest[k], "BatchPutAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutAttributesRequest
--  
-- @param _Items [ReplaceableItemList] A list of items on which to perform the operation.
-- @param _DomainName [String] The name of the domain in which the attributes are being stored.
-- Required parameter: DomainName
-- Required parameter: Items
function M.BatchPutAttributesRequest(_Items, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchPutAttributesRequest")
	local t = { 
		["Items"] = _Items,
		["DomainName"] = _DomainName,
	}
	asserts.AssertBatchPutAttributesRequest(t)
	return t
end

keys.Item = { ["Attributes"] = true, ["Name"] = true, ["AlternateNameEncoding"] = true, nil }

function asserts.AssertItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Item to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then asserts.AssertAttributeList(struct["Attributes"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["AlternateNameEncoding"] then asserts.AssertString(struct["AlternateNameEncoding"]) end
	for k,_ in pairs(struct) do
		assert(keys.Item[k], "Item contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Item
-- <p></p>
-- @param _Attributes [AttributeList] A list of attributes.
-- @param _Name [String] The name of the item.
-- @param _AlternateNameEncoding [String] <p></p>
-- Required parameter: Name
-- Required parameter: Attributes
function M.Item(_Attributes, _Name, _AlternateNameEncoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Item")
	local t = { 
		["Attributes"] = _Attributes,
		["Name"] = _Name,
		["AlternateNameEncoding"] = _AlternateNameEncoding,
	}
	asserts.AssertItem(t)
	return t
end

keys.ReplaceableAttribute = { ["Name"] = true, ["Value"] = true, ["Replace"] = true, nil }

function asserts.AssertReplaceableAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceableAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Replace"] then asserts.AssertBoolean(struct["Replace"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplaceableAttribute[k], "ReplaceableAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceableAttribute
-- <p></p>
-- @param _Name [String] The name of the replaceable attribute.
-- @param _Value [String] The value of the replaceable attribute.
-- @param _Replace [Boolean] A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is <code>false</code>.
-- Required parameter: Name
-- Required parameter: Value
function M.ReplaceableAttribute(_Name, _Value, _Replace, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplaceableAttribute")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
		["Replace"] = _Replace,
	}
	asserts.AssertReplaceableAttribute(t)
	return t
end

keys.SelectResult = { ["Items"] = true, ["NextToken"] = true, nil }

function asserts.AssertSelectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectResult to be of type 'table'")
	if struct["Items"] then asserts.AssertItemList(struct["Items"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectResult[k], "SelectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectResult
--  
-- @param _Items [ItemList] A list of items that match the select expression.
-- @param _NextToken [String] An opaque token indicating that more items than <code>MaxNumberOfItems</code> were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
function M.SelectResult(_Items, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SelectResult")
	local t = { 
		["Items"] = _Items,
		["NextToken"] = _NextToken,
	}
	asserts.AssertSelectResult(t)
	return t
end

keys.DuplicateItemName = { ["BoxUsage"] = true, nil }

function asserts.AssertDuplicateItemName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateItemName to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateItemName[k], "DuplicateItemName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateItemName
-- <p>The item name was specified more than once. </p>
-- @param _BoxUsage [Float] 
function M.DuplicateItemName(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateItemName")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertDuplicateItemName(t)
	return t
end

keys.InvalidParameterValue = { ["BoxUsage"] = true, nil }

function asserts.AssertInvalidParameterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValue to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValue[k], "InvalidParameterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValue
-- <p>The value for a parameter is invalid.</p>
-- @param _BoxUsage [Float] 
function M.InvalidParameterValue(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValue")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertInvalidParameterValue(t)
	return t
end

keys.BatchDeleteAttributesRequest = { ["Items"] = true, ["DomainName"] = true, nil }

function asserts.AssertBatchDeleteAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertDeletableItemList(struct["Items"]) end
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteAttributesRequest[k], "BatchDeleteAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteAttributesRequest
--  
-- @param _Items [DeletableItemList] A list of items on which to perform the operation.
-- @param _DomainName [String] The name of the domain in which the attributes are being deleted.
-- Required parameter: DomainName
-- Required parameter: Items
function M.BatchDeleteAttributesRequest(_Items, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteAttributesRequest")
	local t = { 
		["Items"] = _Items,
		["DomainName"] = _DomainName,
	}
	asserts.AssertBatchDeleteAttributesRequest(t)
	return t
end

keys.DeleteAttributesRequest = { ["Expected"] = true, ["Attributes"] = true, ["ItemName"] = true, ["DomainName"] = true, nil }

function asserts.AssertDeleteAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ItemName"], "Expected key ItemName to exist in table")
	if struct["Expected"] then asserts.AssertUpdateCondition(struct["Expected"]) end
	if struct["Attributes"] then asserts.AssertDeletableAttributeList(struct["Attributes"]) end
	if struct["ItemName"] then asserts.AssertString(struct["ItemName"]) end
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAttributesRequest[k], "DeleteAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAttributesRequest
--  
-- @param _Expected [UpdateCondition] The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
-- @param _Attributes [DeletableAttributeList] A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
-- @param _ItemName [String] The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.
-- @param _DomainName [String] The name of the domain in which to perform the operation.
-- Required parameter: DomainName
-- Required parameter: ItemName
function M.DeleteAttributesRequest(_Expected, _Attributes, _ItemName, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAttributesRequest")
	local t = { 
		["Expected"] = _Expected,
		["Attributes"] = _Attributes,
		["ItemName"] = _ItemName,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteAttributesRequest(t)
	return t
end

keys.MissingParameter = { ["BoxUsage"] = true, nil }

function asserts.AssertMissingParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingParameter to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingParameter[k], "MissingParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingParameter
-- <p>The request must contain the specified missing parameter.</p>
-- @param _BoxUsage [Float] 
function M.MissingParameter(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingParameter")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertMissingParameter(t)
	return t
end

keys.TooManyRequestedAttributes = { ["BoxUsage"] = true, nil }

function asserts.AssertTooManyRequestedAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestedAttributes to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestedAttributes[k], "TooManyRequestedAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestedAttributes
-- <p>Too many attributes requested.</p>
-- @param _BoxUsage [Float] 
function M.TooManyRequestedAttributes(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestedAttributes")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertTooManyRequestedAttributes(t)
	return t
end

keys.ListDomainsRequest = { ["MaxNumberOfDomains"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsRequest to be of type 'table'")
	if struct["MaxNumberOfDomains"] then asserts.AssertInteger(struct["MaxNumberOfDomains"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainsRequest[k], "ListDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsRequest
--  
-- @param _MaxNumberOfDomains [Integer] The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
-- @param _NextToken [String] A string informing Amazon SimpleDB where to start the next list of domain names.
function M.ListDomainsRequest(_MaxNumberOfDomains, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsRequest")
	local t = { 
		["MaxNumberOfDomains"] = _MaxNumberOfDomains,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListDomainsRequest(t)
	return t
end

keys.Attribute = { ["AlternateValueEncoding"] = true, ["Name"] = true, ["Value"] = true, ["AlternateNameEncoding"] = true, nil }

function asserts.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["AlternateValueEncoding"] then asserts.AssertString(struct["AlternateValueEncoding"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["AlternateNameEncoding"] then asserts.AssertString(struct["AlternateNameEncoding"]) end
	for k,_ in pairs(struct) do
		assert(keys.Attribute[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p></p>
-- @param _AlternateValueEncoding [String] <p></p>
-- @param _Name [String] The name of the attribute.
-- @param _Value [String] The value of the attribute.
-- @param _AlternateNameEncoding [String] <p></p>
-- Required parameter: Name
-- Required parameter: Value
function M.Attribute(_AlternateValueEncoding, _Name, _Value, _AlternateNameEncoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["AlternateValueEncoding"] = _AlternateValueEncoding,
		["Name"] = _Name,
		["Value"] = _Value,
		["AlternateNameEncoding"] = _AlternateNameEncoding,
	}
	asserts.AssertAttribute(t)
	return t
end

keys.NumberDomainBytesExceeded = { ["BoxUsage"] = true, nil }

function asserts.AssertNumberDomainBytesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberDomainBytesExceeded to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberDomainBytesExceeded[k], "NumberDomainBytesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberDomainBytesExceeded
-- <p>Too many bytes in this domain.</p>
-- @param _BoxUsage [Float] 
function M.NumberDomainBytesExceeded(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberDomainBytesExceeded")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNumberDomainBytesExceeded(t)
	return t
end

keys.NumberSubmittedItemsExceeded = { ["BoxUsage"] = true, nil }

function asserts.AssertNumberSubmittedItemsExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberSubmittedItemsExceeded to be of type 'table'")
	if struct["BoxUsage"] then asserts.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberSubmittedItemsExceeded[k], "NumberSubmittedItemsExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberSubmittedItemsExceeded
-- <p>Too many items exist in a single call.</p>
-- @param _BoxUsage [Float] 
function M.NumberSubmittedItemsExceeded(_BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberSubmittedItemsExceeded")
	local t = { 
		["BoxUsage"] = _BoxUsage,
	}
	asserts.AssertNumberSubmittedItemsExceeded(t)
	return t
end

keys.ReplaceableItem = { ["Attributes"] = true, ["Name"] = true, nil }

function asserts.AssertReplaceableItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceableItem to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then asserts.AssertReplaceableAttributeList(struct["Attributes"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplaceableItem[k], "ReplaceableItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceableItem
-- <p></p>
-- @param _Attributes [ReplaceableAttributeList] The list of attributes for a replaceable item.
-- @param _Name [String] The name of the replaceable item.
-- Required parameter: Name
-- Required parameter: Attributes
function M.ReplaceableItem(_Attributes, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplaceableItem")
	local t = { 
		["Attributes"] = _Attributes,
		["Name"] = _Name,
	}
	asserts.AssertReplaceableItem(t)
	return t
end

keys.DomainMetadataRequest = { ["DomainName"] = true, nil }

function asserts.AssertDomainMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMetadataRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainMetadataRequest[k], "DomainMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMetadataRequest
--  
-- @param _DomainName [String] The name of the domain for which to display the metadata of.
-- Required parameter: DomainName
function M.DomainMetadataRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainMetadataRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDomainMetadataRequest(t)
	return t
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

function asserts.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	asserts.AssertFloat(float)
	return float
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

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertReplaceableAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplaceableAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplaceableAttribute(v)
	end
end

--  
-- List of ReplaceableAttribute objects
function M.ReplaceableAttributeList(list)
	asserts.AssertReplaceableAttributeList(list)
	return list
end

function asserts.AssertDeletableAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeletableAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeletableAttribute(v)
	end
end

--  
-- List of DeletableAttribute objects
function M.DeletableAttributeList(list)
	asserts.AssertDeletableAttributeList(list)
	return list
end

function asserts.AssertReplaceableItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplaceableItemList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplaceableItem(v)
	end
end

--  
-- List of ReplaceableItem objects
function M.ReplaceableItemList(list)
	asserts.AssertReplaceableItemList(list)
	return list
end

function asserts.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.DomainNameList(list)
	asserts.AssertDomainNameList(list)
	return list
end

function asserts.AssertItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertItem(v)
	end
end

--  
-- List of Item objects
function M.ItemList(list)
	asserts.AssertItemList(list)
	return list
end

function asserts.AssertDeletableItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeletableItemList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeletableItem(v)
	end
end

--  
-- List of DeletableItem objects
function M.DeletableItemList(list)
	asserts.AssertDeletableItemList(list)
	return list
end

function asserts.AssertAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.AttributeList(list)
	asserts.AssertAttributeList(list)
	return list
end

function asserts.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AttributeNameList(list)
	asserts.AssertAttributeNameList(list)
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
			return "sdb.amazonaws.com"
		end
	end
	local ss = { "sdb" }
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
--- Call DeleteAttributes asynchronously, invoking a callback when done
-- @param DeleteAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAttributesAsync(DeleteAttributesRequest, cb)
	assert(DeleteAttributesRequest, "You must provide a DeleteAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAttributesRequest
-- @return response
-- @return error_message
function M.DeleteAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchPutAttributes asynchronously, invoking a callback when done
-- @param BatchPutAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchPutAttributesAsync(BatchPutAttributesRequest, cb)
	assert(BatchPutAttributesRequest, "You must provide a BatchPutAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BatchPutAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchPutAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call BatchPutAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchPutAttributesRequest
-- @return response
-- @return error_message
function M.BatchPutAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchPutAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutAttributes asynchronously, invoking a callback when done
-- @param PutAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutAttributesAsync(PutAttributesRequest, cb)
	assert(PutAttributesRequest, "You must provide a PutAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PutAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutAttributesRequest
-- @return response
-- @return error_message
function M.PutAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDomains asynchronously, invoking a callback when done
-- @param ListDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDomainsAsync(ListDomainsRequest, cb)
	assert(ListDomainsRequest, "You must provide a ListDomainsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDomainsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDomainsRequest
-- @return response
-- @return error_message
function M.ListDomainsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDomainsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DomainMetadata asynchronously, invoking a callback when done
-- @param DomainMetadataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DomainMetadataAsync(DomainMetadataRequest, cb)
	assert(DomainMetadataRequest, "You must provide a DomainMetadataRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DomainMetadata",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DomainMetadataRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DomainMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DomainMetadataRequest
-- @return response
-- @return error_message
function M.DomainMetadataSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DomainMetadataAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteAttributes asynchronously, invoking a callback when done
-- @param BatchDeleteAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchDeleteAttributesAsync(BatchDeleteAttributesRequest, cb)
	assert(BatchDeleteAttributesRequest, "You must provide a BatchDeleteAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BatchDeleteAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchDeleteAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteAttributesRequest
-- @return response
-- @return error_message
function M.BatchDeleteAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAttributes asynchronously, invoking a callback when done
-- @param GetAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAttributesAsync(GetAttributesRequest, cb)
	assert(GetAttributesRequest, "You must provide a GetAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAttributesRequest
-- @return response
-- @return error_message
function M.GetAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomain asynchronously, invoking a callback when done
-- @param DeleteDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainAsync(DeleteDomainRequest, cb)
	assert(DeleteDomainRequest, "You must provide a DeleteDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDomainRequest
-- @return response
-- @return error_message
function M.DeleteDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomain asynchronously, invoking a callback when done
-- @param CreateDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainAsync(CreateDomainRequest, cb)
	assert(CreateDomainRequest, "You must provide a CreateDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDomainRequest
-- @return response
-- @return error_message
function M.CreateDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Select asynchronously, invoking a callback when done
-- @param SelectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SelectAsync(SelectRequest, cb)
	assert(SelectRequest, "You must provide a SelectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Select",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SelectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call Select synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SelectRequest
-- @return response
-- @return error_message
function M.SelectSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SelectAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
