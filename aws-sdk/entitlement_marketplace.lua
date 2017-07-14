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

local EntitlementValue_keys = { "StringValue" = true, "BooleanValue" = true, "IntegerValue" = true, "DoubleValue" = true, nil }

function M.AssertEntitlementValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntitlementValue to be of type 'table'")
	if struct["StringValue"] then M.AssertString(struct["StringValue"]) end
	if struct["BooleanValue"] then M.AssertBoolean(struct["BooleanValue"]) end
	if struct["IntegerValue"] then M.AssertInteger(struct["IntegerValue"]) end
	if struct["DoubleValue"] then M.AssertDouble(struct["DoubleValue"]) end
	for k,_ in pairs(struct) do
		assert(EntitlementValue_keys[k], "EntitlementValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntitlementValue
-- <p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>
-- @param StringValue [String] <p>The StringValue field will be populated with a string value when the entitlement is a string type. Otherwise, the field will not be set.</p>
-- @param BooleanValue [Boolean] <p>The BooleanValue field will be populated with a boolean value when the entitlement is a boolean type. Otherwise, the field will not be set.</p>
-- @param IntegerValue [Integer] <p>The IntegerValue field will be populated with an integer value when the entitlement is an integer type. Otherwise, the field will not be set.</p>
-- @param DoubleValue [Double] <p>The DoubleValue field will be populated with a double value when the entitlement is a double type. Otherwise, the field will not be set.</p>
function M.EntitlementValue(StringValue, BooleanValue, IntegerValue, DoubleValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntitlementValue")
	local t = { 
		["StringValue"] = StringValue,
		["BooleanValue"] = BooleanValue,
		["IntegerValue"] = IntegerValue,
		["DoubleValue"] = DoubleValue,
	}
	M.AssertEntitlementValue(t)
	return t
end

local GetEntitlementsRequest_keys = { "Filter" = true, "ProductCode" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertGetEntitlementsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEntitlementsRequest to be of type 'table'")
	assert(struct["ProductCode"], "Expected key ProductCode to exist in table")
	if struct["Filter"] then M.AssertGetEntitlementFilters(struct["Filter"]) end
	if struct["ProductCode"] then M.AssertProductCode(struct["ProductCode"]) end
	if struct["NextToken"] then M.AssertNonEmptyString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetEntitlementsRequest_keys[k], "GetEntitlementsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEntitlementsRequest
-- <p>The GetEntitlementsRequest contains parameters for the GetEntitlements operation.</p>
-- @param Filter [GetEntitlementFilters] <p>Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are <i>unioned</i> for each value in the value list, and then <i>intersected</i> for each filter key.</p>
-- @param ProductCode [ProductCode] <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.</p>
-- @param NextToken [NonEmptyString] <p>For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.</p>
-- @param MaxResults [Integer] <p>The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.</p>
-- Required parameter: ProductCode
function M.GetEntitlementsRequest(Filter, ProductCode, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEntitlementsRequest")
	local t = { 
		["Filter"] = Filter,
		["ProductCode"] = ProductCode,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertGetEntitlementsRequest(t)
	return t
end

local Entitlement_keys = { "ProductCode" = true, "CustomerIdentifier" = true, "Dimension" = true, "Value" = true, "ExpirationDate" = true, nil }

function M.AssertEntitlement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Entitlement to be of type 'table'")
	if struct["ProductCode"] then M.AssertProductCode(struct["ProductCode"]) end
	if struct["CustomerIdentifier"] then M.AssertNonEmptyString(struct["CustomerIdentifier"]) end
	if struct["Dimension"] then M.AssertNonEmptyString(struct["Dimension"]) end
	if struct["Value"] then M.AssertEntitlementValue(struct["Value"]) end
	if struct["ExpirationDate"] then M.AssertTimestamp(struct["ExpirationDate"]) end
	for k,_ in pairs(struct) do
		assert(Entitlement_keys[k], "Entitlement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Entitlement
-- <p>An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.</p>
-- @param ProductCode [ProductCode] <p>The product code for which the given entitlement applies. Product codes are provided by AWS Marketplace when the product listing is created.</p>
-- @param CustomerIdentifier [NonEmptyString] <p>The customer identifier is a handle to each unique customer in an application. Customer identifiers are obtained through the ResolveCustomer operation in AWS Marketplace Metering Service.</p>
-- @param Dimension [NonEmptyString] <p>The dimension for which the given entitlement applies. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace.</p>
-- @param Value [EntitlementValue] <p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>
-- @param ExpirationDate [Timestamp] <p>The expiration date represents the minimum date through which this entitlement is expected to remain valid. For contractual products listed on AWS Marketplace, the expiration date is the date at which the customer will renew or cancel their contract. Customers who are opting to renew their contract will still have entitlements with an expiration date.</p>
function M.Entitlement(ProductCode, CustomerIdentifier, Dimension, Value, ExpirationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Entitlement")
	local t = { 
		["ProductCode"] = ProductCode,
		["CustomerIdentifier"] = CustomerIdentifier,
		["Dimension"] = Dimension,
		["Value"] = Value,
		["ExpirationDate"] = ExpirationDate,
	}
	M.AssertEntitlement(t)
	return t
end

local GetEntitlementsResult_keys = { "Entitlements" = true, "NextToken" = true, nil }

function M.AssertGetEntitlementsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEntitlementsResult to be of type 'table'")
	if struct["Entitlements"] then M.AssertEntitlementList(struct["Entitlements"]) end
	if struct["NextToken"] then M.AssertNonEmptyString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetEntitlementsResult_keys[k], "GetEntitlementsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEntitlementsResult
-- <p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>
-- @param Entitlements [EntitlementList] <p>The set of entitlements found through the GetEntitlements operation. If the result contains an empty set of entitlements, NextToken might still be present and should be used.</p>
-- @param NextToken [NonEmptyString] <p>For paginated results, use NextToken in subsequent calls to GetEntitlements. If the result contains an empty set of entitlements, NextToken might still be present and should be used.</p>
function M.GetEntitlementsResult(Entitlements, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEntitlementsResult")
	local t = { 
		["Entitlements"] = Entitlements,
		["NextToken"] = NextToken,
	}
	M.AssertGetEntitlementsResult(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more parameters in your request was invalid.</p>
-- @param message [ErrorMessage] <p>One or more parameters in your request was invalid.</p>
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local InternalServiceErrorException_keys = { "message" = true, nil }

function M.AssertInternalServiceErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceErrorException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServiceErrorException_keys[k], "InternalServiceErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceErrorException
-- <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
-- @param message [ErrorMessage] <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
function M.InternalServiceErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalServiceErrorException(t)
	return t
end

local ThrottlingException_keys = { "message" = true, nil }

function M.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottlingException_keys[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The calls to the GetEntitlements API are throttled.</p>
-- @param message [ErrorMessage] <p>The calls to the GetEntitlements API are throttled.</p>
function M.ThrottlingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = message,
	}
	M.AssertThrottlingException(t)
	return t
end

function M.AssertProductCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductCode to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProductCode(str)
	M.AssertProductCode(str)
	return str
end

function M.AssertFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterValue to be of type 'string'")
end

--  
function M.FilterValue(str)
	M.AssertFilterValue(str)
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

function M.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(str:match("%S+"), "Expected string to match pattern '%S+'")
end

--  
function M.NonEmptyString(str)
	M.AssertNonEmptyString(str)
	return str
end

function M.AssertGetEntitlementFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected GetEntitlementFilterName to be of type 'string'")
end

--  
function M.GetEntitlementFilterName(str)
	M.AssertGetEntitlementFilterName(str)
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

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
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

function M.AssertGetEntitlementFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected GetEntitlementFilters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertGetEntitlementFilterName(k)
		M.AssertFilterValueList(v)
	end
end

function M.GetEntitlementFilters(map)
	M.AssertGetEntitlementFilters(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertEntitlementList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntitlementList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEntitlement(v)
	end
end

--  
-- List of Entitlement objects
function M.EntitlementList(list)
	M.AssertEntitlementList(list)
	return list
end

function M.AssertFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValueList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertFilterValue(v)
	end
end

--  
-- List of FilterValue objects
function M.FilterValueList(list)
	M.AssertFilterValueList(list)
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
--- GetEntitlements
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


return M
