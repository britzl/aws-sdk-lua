--- GENERATED CODE - DO NOT MODIFY
-- AWS Marketplace Entitlement Service (entitlement.marketplace-2017-01-11)

local M = {}

M.metadata = {
	api_version = "2017-01-11",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "entitlement.marketplace",
	service_abbreviation = "",
	service_full_name = "AWS Marketplace Entitlement Service",
	signature_version = "v4",
	target_prefix = "AWSMPEntitlementService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "entitlement.marketplace-2017-01-11",
}

local keys = {}
local asserts = {}

keys.EntitlementValue = { ["StringValue"] = true, ["BooleanValue"] = true, ["IntegerValue"] = true, ["DoubleValue"] = true, nil }

function asserts.AssertEntitlementValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntitlementValue to be of type 'table'")
	if struct["StringValue"] then asserts.AssertString(struct["StringValue"]) end
	if struct["BooleanValue"] then asserts.AssertBoolean(struct["BooleanValue"]) end
	if struct["IntegerValue"] then asserts.AssertInteger(struct["IntegerValue"]) end
	if struct["DoubleValue"] then asserts.AssertDouble(struct["DoubleValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntitlementValue[k], "EntitlementValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntitlementValue
-- <p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>
-- @param _StringValue [String] <p>The StringValue field will be populated with a string value when the entitlement is a string type. Otherwise, the field will not be set.</p>
-- @param _BooleanValue [Boolean] <p>The BooleanValue field will be populated with a boolean value when the entitlement is a boolean type. Otherwise, the field will not be set.</p>
-- @param _IntegerValue [Integer] <p>The IntegerValue field will be populated with an integer value when the entitlement is an integer type. Otherwise, the field will not be set.</p>
-- @param _DoubleValue [Double] <p>The DoubleValue field will be populated with a double value when the entitlement is a double type. Otherwise, the field will not be set.</p>
function M.EntitlementValue(_StringValue, _BooleanValue, _IntegerValue, _DoubleValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntitlementValue")
	local t = { 
		["StringValue"] = _StringValue,
		["BooleanValue"] = _BooleanValue,
		["IntegerValue"] = _IntegerValue,
		["DoubleValue"] = _DoubleValue,
	}
	asserts.AssertEntitlementValue(t)
	return t
end

keys.GetEntitlementsRequest = { ["Filter"] = true, ["ProductCode"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetEntitlementsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEntitlementsRequest to be of type 'table'")
	assert(struct["ProductCode"], "Expected key ProductCode to exist in table")
	if struct["Filter"] then asserts.AssertGetEntitlementFilters(struct["Filter"]) end
	if struct["ProductCode"] then asserts.AssertProductCode(struct["ProductCode"]) end
	if struct["NextToken"] then asserts.AssertNonEmptyString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEntitlementsRequest[k], "GetEntitlementsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEntitlementsRequest
-- <p>The GetEntitlementsRequest contains parameters for the GetEntitlements operation.</p>
-- @param _Filter [GetEntitlementFilters] <p>Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are <i>unioned</i> for each value in the value list, and then <i>intersected</i> for each filter key.</p>
-- @param _ProductCode [ProductCode] <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.</p>
-- @param _NextToken [NonEmptyString] <p>For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.</p>
-- @param _MaxResults [Integer] <p>The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.</p>
-- Required parameter: ProductCode
function M.GetEntitlementsRequest(_Filter, _ProductCode, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEntitlementsRequest")
	local t = { 
		["Filter"] = _Filter,
		["ProductCode"] = _ProductCode,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertGetEntitlementsRequest(t)
	return t
end

keys.Entitlement = { ["ProductCode"] = true, ["CustomerIdentifier"] = true, ["Dimension"] = true, ["Value"] = true, ["ExpirationDate"] = true, nil }

function asserts.AssertEntitlement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Entitlement to be of type 'table'")
	if struct["ProductCode"] then asserts.AssertProductCode(struct["ProductCode"]) end
	if struct["CustomerIdentifier"] then asserts.AssertNonEmptyString(struct["CustomerIdentifier"]) end
	if struct["Dimension"] then asserts.AssertNonEmptyString(struct["Dimension"]) end
	if struct["Value"] then asserts.AssertEntitlementValue(struct["Value"]) end
	if struct["ExpirationDate"] then asserts.AssertTimestamp(struct["ExpirationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Entitlement[k], "Entitlement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Entitlement
-- <p>An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.</p>
-- @param _ProductCode [ProductCode] <p>The product code for which the given entitlement applies. Product codes are provided by AWS Marketplace when the product listing is created.</p>
-- @param _CustomerIdentifier [NonEmptyString] <p>The customer identifier is a handle to each unique customer in an application. Customer identifiers are obtained through the ResolveCustomer operation in AWS Marketplace Metering Service.</p>
-- @param _Dimension [NonEmptyString] <p>The dimension for which the given entitlement applies. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace.</p>
-- @param _Value [EntitlementValue] <p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>
-- @param _ExpirationDate [Timestamp] <p>The expiration date represents the minimum date through which this entitlement is expected to remain valid. For contractual products listed on AWS Marketplace, the expiration date is the date at which the customer will renew or cancel their contract. Customers who are opting to renew their contract will still have entitlements with an expiration date.</p>
function M.Entitlement(_ProductCode, _CustomerIdentifier, _Dimension, _Value, _ExpirationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Entitlement")
	local t = { 
		["ProductCode"] = _ProductCode,
		["CustomerIdentifier"] = _CustomerIdentifier,
		["Dimension"] = _Dimension,
		["Value"] = _Value,
		["ExpirationDate"] = _ExpirationDate,
	}
	asserts.AssertEntitlement(t)
	return t
end

keys.GetEntitlementsResult = { ["Entitlements"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetEntitlementsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEntitlementsResult to be of type 'table'")
	if struct["Entitlements"] then asserts.AssertEntitlementList(struct["Entitlements"]) end
	if struct["NextToken"] then asserts.AssertNonEmptyString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEntitlementsResult[k], "GetEntitlementsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEntitlementsResult
-- <p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>
-- @param _Entitlements [EntitlementList] <p>The set of entitlements found through the GetEntitlements operation. If the result contains an empty set of entitlements, NextToken might still be present and should be used.</p>
-- @param _NextToken [NonEmptyString] <p>For paginated results, use NextToken in subsequent calls to GetEntitlements. If the result contains an empty set of entitlements, NextToken might still be present and should be used.</p>
function M.GetEntitlementsResult(_Entitlements, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEntitlementsResult")
	local t = { 
		["Entitlements"] = _Entitlements,
		["NextToken"] = _NextToken,
	}
	asserts.AssertGetEntitlementsResult(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more parameters in your request was invalid.</p>
-- @param _message [ErrorMessage] 
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.InternalServiceErrorException = { ["message"] = true, nil }

function asserts.AssertInternalServiceErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceErrorException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceErrorException[k], "InternalServiceErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceErrorException
-- <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
-- @param _message [ErrorMessage] 
function M.InternalServiceErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalServiceErrorException(t)
	return t
end

keys.ThrottlingException = { ["message"] = true, nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The calls to the GetEntitlements API are throttled.</p>
-- @param _message [ErrorMessage] 
function M.ThrottlingException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertThrottlingException(t)
	return t
end

function asserts.AssertProductCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductCode to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProductCode(str)
	asserts.AssertProductCode(str)
	return str
end

function asserts.AssertFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterValue to be of type 'string'")
end

--  
function M.FilterValue(str)
	asserts.AssertFilterValue(str)
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

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertGetEntitlementFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected GetEntitlementFilterName to be of type 'string'")
end

--  
function M.GetEntitlementFilterName(str)
	asserts.AssertGetEntitlementFilterName(str)
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

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
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

function asserts.AssertGetEntitlementFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected GetEntitlementFilters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertGetEntitlementFilterName(k)
		asserts.AssertFilterValueList(v)
	end
end

function M.GetEntitlementFilters(map)
	asserts.AssertGetEntitlementFilters(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertEntitlementList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntitlementList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEntitlement(v)
	end
end

--  
-- List of Entitlement objects
function M.EntitlementList(list)
	asserts.AssertEntitlementList(list)
	return list
end

function asserts.AssertFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValueList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertFilterValue(v)
	end
end

--  
-- List of FilterValue objects
function M.FilterValueList(list)
	asserts.AssertFilterValueList(list)
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
			return "entitlement.marketplace.amazonaws.com"
		end
	end
	local ss = { "entitlement.marketplace" }
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
--- Call GetEntitlements asynchronously, invoking a callback when done
-- @param GetEntitlementsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEntitlementsAsync(GetEntitlementsRequest, cb)
	assert(GetEntitlementsRequest, "You must provide a GetEntitlementsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSMPEntitlementService.GetEntitlements",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetEntitlementsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetEntitlements synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEntitlementsRequest
-- @return response
-- @return error_message
function M.GetEntitlementsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEntitlementsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
