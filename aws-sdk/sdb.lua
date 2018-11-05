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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NumberDomainAttributesExceeded structure as a key-value pair table
function M.NumberDomainAttributesExceeded(args)
	assert(args, "You must provide an argument table when creating NumberDomainAttributesExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNumberDomainAttributesExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [String] The name of the domain to delete.
-- Required key: DomainName
-- @return DeleteDomainRequest structure as a key-value pair table
function M.DeleteDomainRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return InvalidQueryExpression structure as a key-value pair table
function M.InvalidQueryExpression(args)
	assert(args, "You must provide an argument table when creating InvalidQueryExpression")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertInvalidQueryExpression(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return RequestTimeout structure as a key-value pair table
function M.RequestTimeout(args)
	assert(args, "You must provide an argument table when creating RequestTimeout")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertRequestTimeout(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] The name of the attribute.
-- * Value [String] The value of the attribute.
-- Required key: Name
-- @return DeletableAttribute structure as a key-value pair table
function M.DeletableAttribute(args)
	assert(args, "You must provide an argument table when creating DeletableAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertDeletableAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return InvalidNumberValueTests structure as a key-value pair table
function M.InvalidNumberValueTests(args)
	assert(args, "You must provide an argument table when creating InvalidNumberValueTests")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertInvalidNumberValueTests(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NumberDomainsExceeded structure as a key-value pair table
function M.NumberDomainsExceeded(args)
	assert(args, "You must provide an argument table when creating NumberDomainsExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNumberDomainsExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NumberItemAttributesExceeded structure as a key-value pair table
function M.NumberItemAttributesExceeded(args)
	assert(args, "You must provide an argument table when creating NumberItemAttributesExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNumberItemAttributesExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistentRead [Boolean] Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
-- * NextToken [String] A string informing Amazon SimpleDB where to start the next list of <code>ItemNames</code>.
-- * SelectExpression [String] The expression used to query the domain.
-- Required key: SelectExpression
-- @return SelectRequest structure as a key-value pair table
function M.SelectRequest(args)
	assert(args, "You must provide an argument table when creating SelectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsistentRead"] = args["ConsistentRead"],
		["NextToken"] = args["NextToken"],
		["SelectExpression"] = args["SelectExpression"],
	}
	asserts.AssertSelectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return AttributeDoesNotExist structure as a key-value pair table
function M.AttributeDoesNotExist(args)
	assert(args, "You must provide an argument table when creating AttributeDoesNotExist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertAttributeDoesNotExist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [DeletableAttributeList] 
-- * Name [String] 
-- Required key: Name
-- @return DeletableItem structure as a key-value pair table
function M.DeletableItem(args)
	assert(args, "You must provide an argument table when creating DeletableItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeletableItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [String] The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.
-- Required key: DomainName
-- @return CreateDomainRequest structure as a key-value pair table
function M.CreateDomainRequest(args)
	assert(args, "You must provide an argument table when creating CreateDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertCreateDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Exists [Boolean] <p>A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify <code>true</code> if the attribute must exist for the update condition to be satisfied. Specify <code>false</code> if the attribute should not exist in order for the update condition to be satisfied.</p>
-- * Name [String] <p>The name of the attribute involved in the condition.</p>
-- * Value [String] <p>The value of an attribute. This value can only be specified when the <code>Exists</code> parameter is equal to <code>true</code>.</p>
-- @return UpdateCondition structure as a key-value pair table
function M.UpdateCondition(args)
	assert(args, "You must provide an argument table when creating UpdateCondition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Exists"] = args["Exists"],
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertUpdateCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NumberSubmittedAttributesExceeded structure as a key-value pair table
function M.NumberSubmittedAttributesExceeded(args)
	assert(args, "You must provide an argument table when creating NumberSubmittedAttributesExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNumberSubmittedAttributesExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return InvalidNextToken structure as a key-value pair table
function M.InvalidNextToken(args)
	assert(args, "You must provide an argument table when creating InvalidNextToken")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertInvalidNextToken(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return InvalidNumberPredicates structure as a key-value pair table
function M.InvalidNumberPredicates(args)
	assert(args, "You must provide an argument table when creating InvalidNumberPredicates")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertInvalidNumberPredicates(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeList] The list of attributes returned by the operation.
-- @return GetAttributesResult structure as a key-value pair table
function M.GetAttributesResult(args)
	assert(args, "You must provide an argument table when creating GetAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistentRead [Boolean] Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
-- * ItemName [String] The name of the item.
-- * AttributeNames [AttributeNameList] The names of the attributes.
-- * DomainName [String] The name of the domain in which to perform the operation.
-- Required key: DomainName
-- Required key: ItemName
-- @return GetAttributesRequest structure as a key-value pair table
function M.GetAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConsistentRead"] = args["ConsistentRead"],
		["ItemName"] = args["ItemName"],
		["AttributeNames"] = args["AttributeNames"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertGetAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] An opaque token indicating that there are more domains than the specified <code>MaxNumberOfDomains</code> still available.
-- * DomainNames [DomainNameList] A list of domain names that match the expression.
-- @return ListDomainsResult structure as a key-value pair table
function M.ListDomainsResult(args)
	assert(args, "You must provide an argument table when creating ListDomainsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DomainNames"] = args["DomainNames"],
	}
	asserts.AssertListDomainsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NoSuchDomain structure as a key-value pair table
function M.NoSuchDomain(args)
	assert(args, "You must provide an argument table when creating NoSuchDomain")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNoSuchDomain(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expected [UpdateCondition] The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
-- * Attributes [ReplaceableAttributeList] The list of attributes.
-- * ItemName [String] The name of the item.
-- * DomainName [String] The name of the domain in which to perform the operation.
-- Required key: DomainName
-- Required key: ItemName
-- Required key: Attributes
-- @return PutAttributesRequest structure as a key-value pair table
function M.PutAttributesRequest(args)
	assert(args, "You must provide an argument table when creating PutAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expected"] = args["Expected"],
		["Attributes"] = args["Attributes"],
		["ItemName"] = args["ItemName"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertPutAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Integer] The data and time when metadata was calculated, in Epoch (UNIX) seconds.
-- * AttributeValueCount [Integer] The number of all attribute name/value pairs in the domain.
-- * AttributeValuesSizeBytes [Long] The total size of all attribute values in the domain, in bytes.
-- * ItemNamesSizeBytes [Long] The total size of all item names in the domain, in bytes.
-- * AttributeNameCount [Integer] The number of unique attribute names in the domain.
-- * ItemCount [Integer] The number of all items in the domain.
-- * AttributeNamesSizeBytes [Long] The total size of all unique attribute names in the domain, in bytes.
-- @return DomainMetadataResult structure as a key-value pair table
function M.DomainMetadataResult(args)
	assert(args, "You must provide an argument table when creating DomainMetadataResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["AttributeValueCount"] = args["AttributeValueCount"],
		["AttributeValuesSizeBytes"] = args["AttributeValuesSizeBytes"],
		["ItemNamesSizeBytes"] = args["ItemNamesSizeBytes"],
		["AttributeNameCount"] = args["AttributeNameCount"],
		["ItemCount"] = args["ItemCount"],
		["AttributeNamesSizeBytes"] = args["AttributeNamesSizeBytes"],
	}
	asserts.AssertDomainMetadataResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [ReplaceableItemList] A list of items on which to perform the operation.
-- * DomainName [String] The name of the domain in which the attributes are being stored.
-- Required key: DomainName
-- Required key: Items
-- @return BatchPutAttributesRequest structure as a key-value pair table
function M.BatchPutAttributesRequest(args)
	assert(args, "You must provide an argument table when creating BatchPutAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertBatchPutAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeList] A list of attributes.
-- * Name [String] The name of the item.
-- * AlternateNameEncoding [String] <p></p>
-- Required key: Name
-- Required key: Attributes
-- @return Item structure as a key-value pair table
function M.Item(args)
	assert(args, "You must provide an argument table when creating Item")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Name"] = args["Name"],
		["AlternateNameEncoding"] = args["AlternateNameEncoding"],
	}
	asserts.AssertItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] The name of the replaceable attribute.
-- * Value [String] The value of the replaceable attribute.
-- * Replace [Boolean] A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is <code>false</code>.
-- Required key: Name
-- Required key: Value
-- @return ReplaceableAttribute structure as a key-value pair table
function M.ReplaceableAttribute(args)
	assert(args, "You must provide an argument table when creating ReplaceableAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
		["Replace"] = args["Replace"],
	}
	asserts.AssertReplaceableAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [ItemList] A list of items that match the select expression.
-- * NextToken [String] An opaque token indicating that more items than <code>MaxNumberOfItems</code> were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds.
-- @return SelectResult structure as a key-value pair table
function M.SelectResult(args)
	assert(args, "You must provide an argument table when creating SelectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertSelectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return DuplicateItemName structure as a key-value pair table
function M.DuplicateItemName(args)
	assert(args, "You must provide an argument table when creating DuplicateItemName")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertDuplicateItemName(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return InvalidParameterValue structure as a key-value pair table
function M.InvalidParameterValue(args)
	assert(args, "You must provide an argument table when creating InvalidParameterValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertInvalidParameterValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [DeletableItemList] A list of items on which to perform the operation.
-- * DomainName [String] The name of the domain in which the attributes are being deleted.
-- Required key: DomainName
-- Required key: Items
-- @return BatchDeleteAttributesRequest structure as a key-value pair table
function M.BatchDeleteAttributesRequest(args)
	assert(args, "You must provide an argument table when creating BatchDeleteAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertBatchDeleteAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expected [UpdateCondition] The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
-- * Attributes [DeletableAttributeList] A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
-- * ItemName [String] The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.
-- * DomainName [String] The name of the domain in which to perform the operation.
-- Required key: DomainName
-- Required key: ItemName
-- @return DeleteAttributesRequest structure as a key-value pair table
function M.DeleteAttributesRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expected"] = args["Expected"],
		["Attributes"] = args["Attributes"],
		["ItemName"] = args["ItemName"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return MissingParameter structure as a key-value pair table
function M.MissingParameter(args)
	assert(args, "You must provide an argument table when creating MissingParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertMissingParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return TooManyRequestedAttributes structure as a key-value pair table
function M.TooManyRequestedAttributes(args)
	assert(args, "You must provide an argument table when creating TooManyRequestedAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertTooManyRequestedAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxNumberOfDomains [Integer] The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
-- * NextToken [String] A string informing Amazon SimpleDB where to start the next list of domain names.
-- @return ListDomainsRequest structure as a key-value pair table
function M.ListDomainsRequest(args)
	assert(args, "You must provide an argument table when creating ListDomainsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxNumberOfDomains"] = args["MaxNumberOfDomains"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDomainsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlternateValueEncoding [String] <p></p>
-- * Name [String] The name of the attribute.
-- * Value [String] The value of the attribute.
-- * AlternateNameEncoding [String] <p></p>
-- Required key: Name
-- Required key: Value
-- @return Attribute structure as a key-value pair table
function M.Attribute(args)
	assert(args, "You must provide an argument table when creating Attribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlternateValueEncoding"] = args["AlternateValueEncoding"],
		["Name"] = args["Name"],
		["Value"] = args["Value"],
		["AlternateNameEncoding"] = args["AlternateNameEncoding"],
	}
	asserts.AssertAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NumberDomainBytesExceeded structure as a key-value pair table
function M.NumberDomainBytesExceeded(args)
	assert(args, "You must provide an argument table when creating NumberDomainBytesExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNumberDomainBytesExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoxUsage [Float] 
-- @return NumberSubmittedItemsExceeded structure as a key-value pair table
function M.NumberSubmittedItemsExceeded(args)
	assert(args, "You must provide an argument table when creating NumberSubmittedItemsExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoxUsage"] = args["BoxUsage"],
	}
	asserts.AssertNumberSubmittedItemsExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [ReplaceableAttributeList] The list of attributes for a replaceable item.
-- * Name [String] The name of the replaceable item.
-- Required key: Name
-- Required key: Attributes
-- @return ReplaceableItem structure as a key-value pair table
function M.ReplaceableItem(args)
	assert(args, "You must provide an argument table when creating ReplaceableItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Name"] = args["Name"],
	}
	asserts.AssertReplaceableItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [String] The name of the domain for which to display the metadata of.
-- Required key: DomainName
-- @return DomainMetadataRequest structure as a key-value pair table
function M.DomainMetadataRequest(args)
	assert(args, "You must provide an argument table when creating DomainMetadataRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDomainMetadataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DeleteAttributes asynchronously, invoking a callback when done
-- @param DeleteAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAttributesAsync(DeleteAttributesRequest, cb)
	assert(DeleteAttributesRequest, "You must provide a DeleteAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAttributes",
	}
	for header,value in pairs(DeleteAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAttributesSync(DeleteAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAttributesAsync(DeleteAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchPutAttributes asynchronously, invoking a callback when done
-- @param BatchPutAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchPutAttributesAsync(BatchPutAttributesRequest, cb)
	assert(BatchPutAttributesRequest, "You must provide a BatchPutAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchPutAttributes",
	}
	for header,value in pairs(BatchPutAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchPutAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchPutAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchPutAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchPutAttributesSync(BatchPutAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchPutAttributesAsync(BatchPutAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutAttributes asynchronously, invoking a callback when done
-- @param PutAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutAttributesAsync(PutAttributesRequest, cb)
	assert(PutAttributesRequest, "You must provide a PutAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutAttributes",
	}
	for header,value in pairs(PutAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutAttributesSync(PutAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutAttributesAsync(PutAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDomains asynchronously, invoking a callback when done
-- @param ListDomainsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDomainsAsync(ListDomainsRequest, cb)
	assert(ListDomainsRequest, "You must provide a ListDomainsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDomains",
	}
	for header,value in pairs(ListDomainsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDomainsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDomainsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDomainsSync(ListDomainsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDomainsAsync(ListDomainsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DomainMetadata asynchronously, invoking a callback when done
-- @param DomainMetadataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DomainMetadataAsync(DomainMetadataRequest, cb)
	assert(DomainMetadataRequest, "You must provide a DomainMetadataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DomainMetadata",
	}
	for header,value in pairs(DomainMetadataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DomainMetadataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DomainMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DomainMetadataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DomainMetadataSync(DomainMetadataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DomainMetadataAsync(DomainMetadataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteAttributes asynchronously, invoking a callback when done
-- @param BatchDeleteAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteAttributesAsync(BatchDeleteAttributesRequest, cb)
	assert(BatchDeleteAttributesRequest, "You must provide a BatchDeleteAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchDeleteAttributes",
	}
	for header,value in pairs(BatchDeleteAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteAttributesSync(BatchDeleteAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteAttributesAsync(BatchDeleteAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAttributes asynchronously, invoking a callback when done
-- @param GetAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAttributesAsync(GetAttributesRequest, cb)
	assert(GetAttributesRequest, "You must provide a GetAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAttributes",
	}
	for header,value in pairs(GetAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAttributesSync(GetAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAttributesAsync(GetAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomain asynchronously, invoking a callback when done
-- @param DeleteDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDomainAsync(DeleteDomainRequest, cb)
	assert(DeleteDomainRequest, "You must provide a DeleteDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDomain",
	}
	for header,value in pairs(DeleteDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDomainSync(DeleteDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainAsync(DeleteDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomain asynchronously, invoking a callback when done
-- @param CreateDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDomainAsync(CreateDomainRequest, cb)
	assert(CreateDomainRequest, "You must provide a CreateDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDomain",
	}
	for header,value in pairs(CreateDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDomainSync(CreateDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainAsync(CreateDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Select asynchronously, invoking a callback when done
-- @param SelectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SelectAsync(SelectRequest, cb)
	assert(SelectRequest, "You must provide a SelectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Select",
	}
	for header,value in pairs(SelectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SelectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Select synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SelectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SelectSync(SelectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SelectAsync(SelectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
