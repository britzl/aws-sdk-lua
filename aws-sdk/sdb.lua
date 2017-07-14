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

local NumberDomainAttributesExceeded_keys = { "BoxUsage" = true, nil }

function M.AssertNumberDomainAttributesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberDomainAttributesExceeded to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NumberDomainAttributesExceeded_keys[k], "NumberDomainAttributesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberDomainAttributesExceeded
-- <p>Too many attributes in this domain.</p>
-- @param BoxUsage [Float] <p>Too many attributes in this domain.</p>
function M.NumberDomainAttributesExceeded(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberDomainAttributesExceeded")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNumberDomainAttributesExceeded(t)
	return t
end

local DeleteDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertDeleteDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainRequest_keys[k], "DeleteDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainRequest
--  
-- @param DomainName [String] The name of the domain to delete.
-- Required parameter: DomainName
function M.DeleteDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDeleteDomainRequest(t)
	return t
end

local InvalidQueryExpression_keys = { "BoxUsage" = true, nil }

function M.AssertInvalidQueryExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidQueryExpression to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(InvalidQueryExpression_keys[k], "InvalidQueryExpression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidQueryExpression
-- <p>The specified query expression syntax is not valid.</p>
-- @param BoxUsage [Float] <p>The specified query expression syntax is not valid.</p>
function M.InvalidQueryExpression(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidQueryExpression")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertInvalidQueryExpression(t)
	return t
end

local RequestTimeout_keys = { "BoxUsage" = true, nil }

function M.AssertRequestTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTimeout to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(RequestTimeout_keys[k], "RequestTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTimeout
-- <p>A timeout occurred when attempting to query the specified domain with specified query expression.</p>
-- @param BoxUsage [Float] <p>A timeout occurred when attempting to query the specified domain with specified query expression.</p>
function M.RequestTimeout(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestTimeout")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertRequestTimeout(t)
	return t
end

local DeletableAttribute_keys = { "Name" = true, "Value" = true, nil }

function M.AssertDeletableAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletableAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(DeletableAttribute_keys[k], "DeletableAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletableAttribute
-- <p></p>
-- @param Name [String] The name of the attribute.
-- @param Value [String] The value of the attribute.
-- Required parameter: Name
function M.DeletableAttribute(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletableAttribute")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertDeletableAttribute(t)
	return t
end

local InvalidNumberValueTests_keys = { "BoxUsage" = true, nil }

function M.AssertInvalidNumberValueTests(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNumberValueTests to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNumberValueTests_keys[k], "InvalidNumberValueTests contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNumberValueTests
-- <p>Too many predicates exist in the query expression.</p>
-- @param BoxUsage [Float] <p>Too many predicates exist in the query expression.</p>
function M.InvalidNumberValueTests(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNumberValueTests")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertInvalidNumberValueTests(t)
	return t
end

local NumberDomainsExceeded_keys = { "BoxUsage" = true, nil }

function M.AssertNumberDomainsExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberDomainsExceeded to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NumberDomainsExceeded_keys[k], "NumberDomainsExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberDomainsExceeded
-- <p>Too many domains exist per this account.</p>
-- @param BoxUsage [Float] <p>Too many domains exist per this account.</p>
function M.NumberDomainsExceeded(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberDomainsExceeded")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNumberDomainsExceeded(t)
	return t
end

local NumberItemAttributesExceeded_keys = { "BoxUsage" = true, nil }

function M.AssertNumberItemAttributesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberItemAttributesExceeded to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NumberItemAttributesExceeded_keys[k], "NumberItemAttributesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberItemAttributesExceeded
-- <p>Too many attributes in this item.</p>
-- @param BoxUsage [Float] <p>Too many attributes in this item.</p>
function M.NumberItemAttributesExceeded(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberItemAttributesExceeded")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNumberItemAttributesExceeded(t)
	return t
end

local SelectRequest_keys = { "ConsistentRead" = true, "NextToken" = true, "SelectExpression" = true, nil }

function M.AssertSelectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectRequest to be of type 'table'")
	assert(struct["SelectExpression"], "Expected key SelectExpression to exist in table")
	if struct["ConsistentRead"] then M.AssertBoolean(struct["ConsistentRead"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["SelectExpression"] then M.AssertString(struct["SelectExpression"]) end
	for k,_ in pairs(struct) do
		assert(SelectRequest_keys[k], "SelectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectRequest
--  
-- @param ConsistentRead [Boolean] Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
-- @param NextToken [String] A string informing Amazon SimpleDB where to start the next list of <code>ItemNames</code>.
-- @param SelectExpression [String] The expression used to query the domain.
-- Required parameter: SelectExpression
function M.SelectRequest(ConsistentRead, NextToken, SelectExpression, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SelectRequest")
	local t = { 
		["ConsistentRead"] = ConsistentRead,
		["NextToken"] = NextToken,
		["SelectExpression"] = SelectExpression,
	}
	M.AssertSelectRequest(t)
	return t
end

local AttributeDoesNotExist_keys = { "BoxUsage" = true, nil }

function M.AssertAttributeDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeDoesNotExist to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(AttributeDoesNotExist_keys[k], "AttributeDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeDoesNotExist
-- <p>The specified attribute does not exist.</p>
-- @param BoxUsage [Float] <p>The specified attribute does not exist.</p>
function M.AttributeDoesNotExist(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeDoesNotExist")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertAttributeDoesNotExist(t)
	return t
end

local DeletableItem_keys = { "Attributes" = true, "Name" = true, nil }

function M.AssertDeletableItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletableItem to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Attributes"] then M.AssertDeletableAttributeList(struct["Attributes"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeletableItem_keys[k], "DeletableItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletableItem
--  
-- @param Attributes [DeletableAttributeList]  
-- @param Name [String]  
-- Required parameter: Name
function M.DeletableItem(Attributes, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletableItem")
	local t = { 
		["Attributes"] = Attributes,
		["Name"] = Name,
	}
	M.AssertDeletableItem(t)
	return t
end

local CreateDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertCreateDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainRequest_keys[k], "CreateDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainRequest
--  
-- @param DomainName [String] The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
-- Required parameter: DomainName
function M.CreateDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertCreateDomainRequest(t)
	return t
end

local UpdateCondition_keys = { "Exists" = true, "Name" = true, "Value" = true, nil }

function M.AssertUpdateCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCondition to be of type 'table'")
	if struct["Exists"] then M.AssertBoolean(struct["Exists"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCondition_keys[k], "UpdateCondition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCondition
-- <p> Specifies the conditions under which data should be updated. If an update condition is specified for a request, the data will only be updated if the condition is satisfied. For example, if an attribute with a specific name and value exists, or if a specific attribute doesn't exist. </p>
-- @param Exists [Boolean] <p>A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify <code>true</code> if the attribute must exist for the update condition to be satisfied. Specify <code>false</code> if the attribute should not exist in order for the update condition to be satisfied.</p>
-- @param Name [String] <p>The name of the attribute involved in the condition.</p>
-- @param Value [String] <p>The value of an attribute. This value can only be specified when the <code>Exists</code> parameter is equal to <code>true</code>.</p>
function M.UpdateCondition(Exists, Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCondition")
	local t = { 
		["Exists"] = Exists,
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertUpdateCondition(t)
	return t
end

local NumberSubmittedAttributesExceeded_keys = { "BoxUsage" = true, nil }

function M.AssertNumberSubmittedAttributesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberSubmittedAttributesExceeded to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NumberSubmittedAttributesExceeded_keys[k], "NumberSubmittedAttributesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberSubmittedAttributesExceeded
-- <p>Too many attributes exist in a single call.</p>
-- @param BoxUsage [Float] <p>Too many attributes exist in a single call.</p>
function M.NumberSubmittedAttributesExceeded(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberSubmittedAttributesExceeded")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNumberSubmittedAttributesExceeded(t)
	return t
end

local InvalidNextToken_keys = { "BoxUsage" = true, nil }

function M.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextToken_keys[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The specified NextToken is not valid. </p>
-- @param BoxUsage [Float] <p>The specified NextToken is not valid. </p>
function M.InvalidNextToken(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextToken")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertInvalidNextToken(t)
	return t
end

local InvalidNumberPredicates_keys = { "BoxUsage" = true, nil }

function M.AssertInvalidNumberPredicates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNumberPredicates to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNumberPredicates_keys[k], "InvalidNumberPredicates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNumberPredicates
-- <p>Too many predicates exist in the query expression.</p>
-- @param BoxUsage [Float] <p>Too many predicates exist in the query expression.</p>
function M.InvalidNumberPredicates(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNumberPredicates")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertInvalidNumberPredicates(t)
	return t
end

local GetAttributesResult_keys = { "Attributes" = true, nil }

function M.AssertGetAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAttributesResult to be of type 'table'")
	if struct["Attributes"] then M.AssertAttributeList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetAttributesResult_keys[k], "GetAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAttributesResult
--  
-- @param Attributes [AttributeList] The list of attributes returned by the operation.
function M.GetAttributesResult(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAttributesResult")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertGetAttributesResult(t)
	return t
end

local GetAttributesRequest_keys = { "ConsistentRead" = true, "ItemName" = true, "AttributeNames" = true, "DomainName" = true, nil }

function M.AssertGetAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ItemName"], "Expected key ItemName to exist in table")
	if struct["ConsistentRead"] then M.AssertBoolean(struct["ConsistentRead"]) end
	if struct["ItemName"] then M.AssertString(struct["ItemName"]) end
	if struct["AttributeNames"] then M.AssertAttributeNameList(struct["AttributeNames"]) end
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(GetAttributesRequest_keys[k], "GetAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAttributesRequest
--  
-- @param ConsistentRead [Boolean] Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
-- @param ItemName [String] The name of the item.
-- @param AttributeNames [AttributeNameList] The names of the attributes.
-- @param DomainName [String] The name of the domain in which to perform the operation.
-- Required parameter: DomainName
-- Required parameter: ItemName
function M.GetAttributesRequest(ConsistentRead, ItemName, AttributeNames, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAttributesRequest")
	local t = { 
		["ConsistentRead"] = ConsistentRead,
		["ItemName"] = ItemName,
		["AttributeNames"] = AttributeNames,
		["DomainName"] = DomainName,
	}
	M.AssertGetAttributesRequest(t)
	return t
end

local ListDomainsResult_keys = { "NextToken" = true, "DomainNames" = true, nil }

function M.AssertListDomainsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["DomainNames"] then M.AssertDomainNameList(struct["DomainNames"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainsResult_keys[k], "ListDomainsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsResult
--  
-- @param NextToken [String] An opaque token indicating that there are more domains than the specified <code>MaxNumberOfDomains</code> still available.
-- @param DomainNames [DomainNameList] A list of domain names that match the expression.
function M.ListDomainsResult(NextToken, DomainNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsResult")
	local t = { 
		["NextToken"] = NextToken,
		["DomainNames"] = DomainNames,
	}
	M.AssertListDomainsResult(t)
	return t
end

local NoSuchDomain_keys = { "BoxUsage" = true, nil }

function M.AssertNoSuchDomain(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDomain to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchDomain_keys[k], "NoSuchDomain contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDomain
-- <p>The specified domain does not exist.</p>
-- @param BoxUsage [Float] <p>The specified domain does not exist.</p>
function M.NoSuchDomain(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDomain")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNoSuchDomain(t)
	return t
end

local PutAttributesRequest_keys = { "Expected" = true, "Attributes" = true, "ItemName" = true, "DomainName" = true, nil }

function M.AssertPutAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ItemName"], "Expected key ItemName to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Expected"] then M.AssertUpdateCondition(struct["Expected"]) end
	if struct["Attributes"] then M.AssertReplaceableAttributeList(struct["Attributes"]) end
	if struct["ItemName"] then M.AssertString(struct["ItemName"]) end
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(PutAttributesRequest_keys[k], "PutAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAttributesRequest
--  
-- @param Expected [UpdateCondition] The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
-- @param Attributes [ReplaceableAttributeList] The list of attributes.
-- @param ItemName [String] The name of the item.
-- @param DomainName [String] The name of the domain in which to perform the operation.
-- Required parameter: DomainName
-- Required parameter: ItemName
-- Required parameter: Attributes
function M.PutAttributesRequest(Expected, Attributes, ItemName, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAttributesRequest")
	local t = { 
		["Expected"] = Expected,
		["Attributes"] = Attributes,
		["ItemName"] = ItemName,
		["DomainName"] = DomainName,
	}
	M.AssertPutAttributesRequest(t)
	return t
end

local DomainMetadataResult_keys = { "Timestamp" = true, "AttributeValueCount" = true, "AttributeValuesSizeBytes" = true, "ItemNamesSizeBytes" = true, "AttributeNameCount" = true, "ItemCount" = true, "AttributeNamesSizeBytes" = true, nil }

function M.AssertDomainMetadataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMetadataResult to be of type 'table'")
	if struct["Timestamp"] then M.AssertInteger(struct["Timestamp"]) end
	if struct["AttributeValueCount"] then M.AssertInteger(struct["AttributeValueCount"]) end
	if struct["AttributeValuesSizeBytes"] then M.AssertLong(struct["AttributeValuesSizeBytes"]) end
	if struct["ItemNamesSizeBytes"] then M.AssertLong(struct["ItemNamesSizeBytes"]) end
	if struct["AttributeNameCount"] then M.AssertInteger(struct["AttributeNameCount"]) end
	if struct["ItemCount"] then M.AssertInteger(struct["ItemCount"]) end
	if struct["AttributeNamesSizeBytes"] then M.AssertLong(struct["AttributeNamesSizeBytes"]) end
	for k,_ in pairs(struct) do
		assert(DomainMetadataResult_keys[k], "DomainMetadataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMetadataResult
--  
-- @param Timestamp [Integer] The data and time when metadata was calculated, in Epoch (UNIX) seconds.
-- @param AttributeValueCount [Integer] The number of all attribute name/value pairs in the domain.
-- @param AttributeValuesSizeBytes [Long] The total size of all attribute values in the domain, in bytes.
-- @param ItemNamesSizeBytes [Long] The total size of all item names in the domain, in bytes.
-- @param AttributeNameCount [Integer] The number of unique attribute names in the domain.
-- @param ItemCount [Integer] The number of all items in the domain.
-- @param AttributeNamesSizeBytes [Long] The total size of all unique attribute names in the domain, in bytes.
function M.DomainMetadataResult(Timestamp, AttributeValueCount, AttributeValuesSizeBytes, ItemNamesSizeBytes, AttributeNameCount, ItemCount, AttributeNamesSizeBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainMetadataResult")
	local t = { 
		["Timestamp"] = Timestamp,
		["AttributeValueCount"] = AttributeValueCount,
		["AttributeValuesSizeBytes"] = AttributeValuesSizeBytes,
		["ItemNamesSizeBytes"] = ItemNamesSizeBytes,
		["AttributeNameCount"] = AttributeNameCount,
		["ItemCount"] = ItemCount,
		["AttributeNamesSizeBytes"] = AttributeNamesSizeBytes,
	}
	M.AssertDomainMetadataResult(t)
	return t
end

local BatchPutAttributesRequest_keys = { "Items" = true, "DomainName" = true, nil }

function M.AssertBatchPutAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then M.AssertReplaceableItemList(struct["Items"]) end
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(BatchPutAttributesRequest_keys[k], "BatchPutAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutAttributesRequest
--  
-- @param Items [ReplaceableItemList] A list of items on which to perform the operation.
-- @param DomainName [String] The name of the domain in which the attributes are being stored.
-- Required parameter: DomainName
-- Required parameter: Items
function M.BatchPutAttributesRequest(Items, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchPutAttributesRequest")
	local t = { 
		["Items"] = Items,
		["DomainName"] = DomainName,
	}
	M.AssertBatchPutAttributesRequest(t)
	return t
end

local Item_keys = { "Attributes" = true, "Name" = true, "AlternateNameEncoding" = true, nil }

function M.AssertItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Item to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then M.AssertAttributeList(struct["Attributes"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["AlternateNameEncoding"] then M.AssertString(struct["AlternateNameEncoding"]) end
	for k,_ in pairs(struct) do
		assert(Item_keys[k], "Item contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Item
-- <p></p>
-- @param Attributes [AttributeList] A list of attributes.
-- @param Name [String] The name of the item.
-- @param AlternateNameEncoding [String] <p></p>
-- Required parameter: Name
-- Required parameter: Attributes
function M.Item(Attributes, Name, AlternateNameEncoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Item")
	local t = { 
		["Attributes"] = Attributes,
		["Name"] = Name,
		["AlternateNameEncoding"] = AlternateNameEncoding,
	}
	M.AssertItem(t)
	return t
end

local ReplaceableAttribute_keys = { "Name" = true, "Value" = true, "Replace" = true, nil }

function M.AssertReplaceableAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceableAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["Replace"] then M.AssertBoolean(struct["Replace"]) end
	for k,_ in pairs(struct) do
		assert(ReplaceableAttribute_keys[k], "ReplaceableAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceableAttribute
-- <p></p>
-- @param Name [String] The name of the replaceable attribute.
-- @param Value [String] The value of the replaceable attribute.
-- @param Replace [Boolean] A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is <code>false</code>.
-- Required parameter: Name
-- Required parameter: Value
function M.ReplaceableAttribute(Name, Value, Replace, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplaceableAttribute")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
		["Replace"] = Replace,
	}
	M.AssertReplaceableAttribute(t)
	return t
end

local SelectResult_keys = { "Items" = true, "NextToken" = true, nil }

function M.AssertSelectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectResult to be of type 'table'")
	if struct["Items"] then M.AssertItemList(struct["Items"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(SelectResult_keys[k], "SelectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectResult
--  
-- @param Items [ItemList] A list of items that match the select expression.
-- @param NextToken [String] An opaque token indicating that more items than <code>MaxNumberOfItems</code> were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
function M.SelectResult(Items, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SelectResult")
	local t = { 
		["Items"] = Items,
		["NextToken"] = NextToken,
	}
	M.AssertSelectResult(t)
	return t
end

local DuplicateItemName_keys = { "BoxUsage" = true, nil }

function M.AssertDuplicateItemName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateItemName to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateItemName_keys[k], "DuplicateItemName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateItemName
-- <p>The item name was specified more than once. </p>
-- @param BoxUsage [Float] <p>The item name was specified more than once. </p>
function M.DuplicateItemName(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateItemName")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertDuplicateItemName(t)
	return t
end

local InvalidParameterValue_keys = { "BoxUsage" = true, nil }

function M.AssertInvalidParameterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValue to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValue_keys[k], "InvalidParameterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValue
-- <p>The value for a parameter is invalid.</p>
-- @param BoxUsage [Float] <p>The value for a parameter is invalid.</p>
function M.InvalidParameterValue(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValue")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertInvalidParameterValue(t)
	return t
end

local BatchDeleteAttributesRequest_keys = { "Items" = true, "DomainName" = true, nil }

function M.AssertBatchDeleteAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then M.AssertDeletableItemList(struct["Items"]) end
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(BatchDeleteAttributesRequest_keys[k], "BatchDeleteAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteAttributesRequest
--  
-- @param Items [DeletableItemList] A list of items on which to perform the operation.
-- @param DomainName [String] The name of the domain in which the attributes are being deleted.
-- Required parameter: DomainName
-- Required parameter: Items
function M.BatchDeleteAttributesRequest(Items, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteAttributesRequest")
	local t = { 
		["Items"] = Items,
		["DomainName"] = DomainName,
	}
	M.AssertBatchDeleteAttributesRequest(t)
	return t
end

local DeleteAttributesRequest_keys = { "Expected" = true, "Attributes" = true, "ItemName" = true, "DomainName" = true, nil }

function M.AssertDeleteAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAttributesRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ItemName"], "Expected key ItemName to exist in table")
	if struct["Expected"] then M.AssertUpdateCondition(struct["Expected"]) end
	if struct["Attributes"] then M.AssertDeletableAttributeList(struct["Attributes"]) end
	if struct["ItemName"] then M.AssertString(struct["ItemName"]) end
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAttributesRequest_keys[k], "DeleteAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAttributesRequest
--  
-- @param Expected [UpdateCondition] The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
-- @param Attributes [DeletableAttributeList] A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
-- @param ItemName [String] The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.
-- @param DomainName [String] The name of the domain in which to perform the operation.
-- Required parameter: DomainName
-- Required parameter: ItemName
function M.DeleteAttributesRequest(Expected, Attributes, ItemName, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAttributesRequest")
	local t = { 
		["Expected"] = Expected,
		["Attributes"] = Attributes,
		["ItemName"] = ItemName,
		["DomainName"] = DomainName,
	}
	M.AssertDeleteAttributesRequest(t)
	return t
end

local MissingParameter_keys = { "BoxUsage" = true, nil }

function M.AssertMissingParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingParameter to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(MissingParameter_keys[k], "MissingParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingParameter
-- <p>The request must contain the specified missing parameter.</p>
-- @param BoxUsage [Float] <p>The request must contain the specified missing parameter.</p>
function M.MissingParameter(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingParameter")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertMissingParameter(t)
	return t
end

local TooManyRequestedAttributes_keys = { "BoxUsage" = true, nil }

function M.AssertTooManyRequestedAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestedAttributes to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestedAttributes_keys[k], "TooManyRequestedAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestedAttributes
-- <p>Too many attributes requested.</p>
-- @param BoxUsage [Float] <p>Too many attributes requested.</p>
function M.TooManyRequestedAttributes(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestedAttributes")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertTooManyRequestedAttributes(t)
	return t
end

local ListDomainsRequest_keys = { "MaxNumberOfDomains" = true, "NextToken" = true, nil }

function M.AssertListDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsRequest to be of type 'table'")
	if struct["MaxNumberOfDomains"] then M.AssertInteger(struct["MaxNumberOfDomains"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainsRequest_keys[k], "ListDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsRequest
--  
-- @param MaxNumberOfDomains [Integer] The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
-- @param NextToken [String] A string informing Amazon SimpleDB where to start the next list of domain names.
function M.ListDomainsRequest(MaxNumberOfDomains, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsRequest")
	local t = { 
		["MaxNumberOfDomains"] = MaxNumberOfDomains,
		["NextToken"] = NextToken,
	}
	M.AssertListDomainsRequest(t)
	return t
end

local Attribute_keys = { "AlternateValueEncoding" = true, "Name" = true, "Value" = true, "AlternateNameEncoding" = true, nil }

function M.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["AlternateValueEncoding"] then M.AssertString(struct["AlternateValueEncoding"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["AlternateNameEncoding"] then M.AssertString(struct["AlternateNameEncoding"]) end
	for k,_ in pairs(struct) do
		assert(Attribute_keys[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p></p>
-- @param AlternateValueEncoding [String] <p></p>
-- @param Name [String] The name of the attribute.
-- @param Value [String] The value of the attribute.
-- @param AlternateNameEncoding [String] <p></p>
-- Required parameter: Name
-- Required parameter: Value
function M.Attribute(AlternateValueEncoding, Name, Value, AlternateNameEncoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["AlternateValueEncoding"] = AlternateValueEncoding,
		["Name"] = Name,
		["Value"] = Value,
		["AlternateNameEncoding"] = AlternateNameEncoding,
	}
	M.AssertAttribute(t)
	return t
end

local NumberDomainBytesExceeded_keys = { "BoxUsage" = true, nil }

function M.AssertNumberDomainBytesExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberDomainBytesExceeded to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NumberDomainBytesExceeded_keys[k], "NumberDomainBytesExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberDomainBytesExceeded
-- <p>Too many bytes in this domain.</p>
-- @param BoxUsage [Float] <p>Too many bytes in this domain.</p>
function M.NumberDomainBytesExceeded(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberDomainBytesExceeded")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNumberDomainBytesExceeded(t)
	return t
end

local NumberSubmittedItemsExceeded_keys = { "BoxUsage" = true, nil }

function M.AssertNumberSubmittedItemsExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberSubmittedItemsExceeded to be of type 'table'")
	if struct["BoxUsage"] then M.AssertFloat(struct["BoxUsage"]) end
	for k,_ in pairs(struct) do
		assert(NumberSubmittedItemsExceeded_keys[k], "NumberSubmittedItemsExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberSubmittedItemsExceeded
-- <p>Too many items exist in a single call.</p>
-- @param BoxUsage [Float] <p>Too many items exist in a single call.</p>
function M.NumberSubmittedItemsExceeded(BoxUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberSubmittedItemsExceeded")
	local t = { 
		["BoxUsage"] = BoxUsage,
	}
	M.AssertNumberSubmittedItemsExceeded(t)
	return t
end

local ReplaceableItem_keys = { "Attributes" = true, "Name" = true, nil }

function M.AssertReplaceableItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceableItem to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then M.AssertReplaceableAttributeList(struct["Attributes"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ReplaceableItem_keys[k], "ReplaceableItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceableItem
-- <p></p>
-- @param Attributes [ReplaceableAttributeList] The list of attributes for a replaceable item.
-- @param Name [String] The name of the replaceable item.
-- Required parameter: Name
-- Required parameter: Attributes
function M.ReplaceableItem(Attributes, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplaceableItem")
	local t = { 
		["Attributes"] = Attributes,
		["Name"] = Name,
	}
	M.AssertReplaceableItem(t)
	return t
end

local DomainMetadataRequest_keys = { "DomainName" = true, nil }

function M.AssertDomainMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMetadataRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertString(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainMetadataRequest_keys[k], "DomainMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMetadataRequest
--  
-- @param DomainName [String] The name of the domain for which to display the metadata of.
-- Required parameter: DomainName
function M.DomainMetadataRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainMetadataRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDomainMetadataRequest(t)
	return t
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

function M.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	M.AssertFloat(float)
	return float
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

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertReplaceableAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplaceableAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplaceableAttribute(v)
	end
end

--  
-- List of ReplaceableAttribute objects
function M.ReplaceableAttributeList(list)
	M.AssertReplaceableAttributeList(list)
	return list
end

function M.AssertDeletableAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeletableAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeletableAttribute(v)
	end
end

--  
-- List of DeletableAttribute objects
function M.DeletableAttributeList(list)
	M.AssertDeletableAttributeList(list)
	return list
end

function M.AssertReplaceableItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplaceableItemList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplaceableItem(v)
	end
end

--  
-- List of ReplaceableItem objects
function M.ReplaceableItemList(list)
	M.AssertReplaceableItemList(list)
	return list
end

function M.AssertDomainNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.DomainNameList(list)
	M.AssertDomainNameList(list)
	return list
end

function M.AssertItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertItem(v)
	end
end

--  
-- List of Item objects
function M.ItemList(list)
	M.AssertItemList(list)
	return list
end

function M.AssertDeletableItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeletableItemList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeletableItem(v)
	end
end

--  
-- List of DeletableItem objects
function M.DeletableItemList(list)
	M.AssertDeletableItemList(list)
	return list
end

function M.AssertAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.AttributeList(list)
	M.AssertAttributeList(list)
	return list
end

function M.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AttributeNameList(list)
	M.AssertAttributeNameList(list)
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
--- DeleteAttributes
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

--- BatchPutAttributes
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

--- PutAttributes
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

--- ListDomains
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

--- DomainMetadata
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

--- BatchDeleteAttributes
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

--- GetAttributes
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

--- DeleteDomain
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

--- CreateDomain
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

--- Select
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


return M
