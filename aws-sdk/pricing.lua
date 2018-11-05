--- GENERATED CODE - DO NOT MODIFY
-- AWS Price List Service (pricing-2017-10-15)

local M = {}

M.metadata = {
	api_version = "2017-10-15",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "api.pricing",
	service_abbreviation = "AWS Pricing",
	service_full_name = "AWS Price List Service",
	signature_version = "v4",
	target_prefix = "AWSPriceListService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "pricing-2017-10-15",
}

local keys = {}
local asserts = {}

keys.GetProductsResponse = { ["FormatVersion"] = true, ["NextToken"] = true, ["PriceList"] = true, nil }

function asserts.AssertGetProductsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProductsResponse to be of type 'table'")
	if struct["FormatVersion"] then asserts.AssertString(struct["FormatVersion"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["PriceList"] then asserts.AssertPriceList(struct["PriceList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetProductsResponse[k], "GetProductsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProductsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FormatVersion [String] <p>The format version of the response. For example, aws_v1.</p>
-- * NextToken [String] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * PriceList [PriceList] <p>The list of products that match your filters. The list contains both the product metadata and the price information.</p>
-- @return GetProductsResponse structure as a key-value pair table
function M.GetProductsResponse(args)
	assert(args, "You must provide an argument table when creating GetProductsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FormatVersion"] = args["FormatVersion"],
		["NextToken"] = args["NextToken"],
		["PriceList"] = args["PriceList"],
	}
	asserts.AssertGetProductsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Service = { ["ServiceCode"] = true, ["AttributeNames"] = true, nil }

function asserts.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["ServiceCode"] then asserts.AssertString(struct["ServiceCode"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.Service[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>The metadata for a service, such as the service code and available attribute names.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceCode [String] <p>The code for the AWS service.</p>
-- * AttributeNames [AttributeNameList] <p>The attributes that are available for this service.</p>
-- @return Service structure as a key-value pair table
function M.Service(args)
	assert(args, "You must provide an argument table when creating Service")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceCode"] = args["ServiceCode"],
		["AttributeNames"] = args["AttributeNames"],
	}
	asserts.AssertService(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalErrorException = { ["Message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>An error on the server occurred during the processing of your request. Try again later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provide an argument table when creating InternalErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServicesResponse = { ["Services"] = true, ["FormatVersion"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesResponse to be of type 'table'")
	if struct["Services"] then asserts.AssertServiceList(struct["Services"]) end
	if struct["FormatVersion"] then asserts.AssertString(struct["FormatVersion"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServicesResponse[k], "DescribeServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Services [ServiceList] <p>The service metadata for the service or services in the response.</p>
-- * FormatVersion [String] <p>The format version of the response. For example, <code>aws_v1</code>.</p>
-- * NextToken [String] <p>The pagination token for the next set of retreivable results.</p>
-- @return DescribeServicesResponse structure as a key-value pair table
function M.DescribeServicesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeServicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Services"] = args["Services"],
		["FormatVersion"] = args["FormatVersion"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeServicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNextTokenException = { ["Message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The pagination token is invalid. Try again without a pagination token.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExpiredNextTokenException = { ["Message"] = true, nil }

function asserts.AssertExpiredNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredNextTokenException[k], "ExpiredNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredNextTokenException
-- <p>The pagination token expired. Try again without a pagination token.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return ExpiredNextTokenException structure as a key-value pair table
function M.ExpiredNextTokenException(args)
	assert(args, "You must provide an argument table when creating ExpiredNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertExpiredNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAttributeValuesRequest = { ["NextToken"] = true, ["AttributeName"] = true, ["ServiceCode"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetAttributeValuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAttributeValuesRequest to be of type 'table'")
	assert(struct["ServiceCode"], "Expected key ServiceCode to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	if struct["ServiceCode"] then asserts.AssertString(struct["ServiceCode"]) end
	if struct["MaxResults"] then asserts.AssertBoxedInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAttributeValuesRequest[k], "GetAttributeValuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAttributeValuesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
-- * AttributeName [String] <p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>
-- * ServiceCode [String] <p>The service code for the service whose attributes you want to retrieve. For example, if you want the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>
-- * MaxResults [BoxedInteger] <p>The maximum number of results to return in response.</p>
-- Required key: ServiceCode
-- Required key: AttributeName
-- @return GetAttributeValuesRequest structure as a key-value pair table
function M.GetAttributeValuesRequest(args)
	assert(args, "You must provide an argument table when creating GetAttributeValuesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["AttributeName"] = args["AttributeName"],
		["ServiceCode"] = args["ServiceCode"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertGetAttributeValuesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterException = { ["Message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more parameters had an invalid value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["Message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The requested resource can't be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetProductsRequest = { ["MaxResults"] = true, ["FormatVersion"] = true, ["NextToken"] = true, ["ServiceCode"] = true, ["Filters"] = true, nil }

function asserts.AssertGetProductsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProductsRequest to be of type 'table'")
	if struct["MaxResults"] then asserts.AssertBoxedInteger(struct["MaxResults"]) end
	if struct["FormatVersion"] then asserts.AssertString(struct["FormatVersion"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ServiceCode"] then asserts.AssertString(struct["ServiceCode"]) end
	if struct["Filters"] then asserts.AssertFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetProductsRequest[k], "GetProductsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProductsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxResults [BoxedInteger] <p>The maximum number of results to return in the response.</p>
-- * FormatVersion [String] <p>The format version that you want the response to be in.</p> <p>Valid values are: <code>aws_v1</code> </p>
-- * NextToken [String] <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
-- * ServiceCode [String] <p>The code for the service whose products you want to retrieve. </p>
-- * Filters [Filters] <p>The list of filters that limit the returned products. only products that match all filters are returned.</p>
-- @return GetProductsRequest structure as a key-value pair table
function M.GetProductsRequest(args)
	assert(args, "You must provide an argument table when creating GetProductsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxResults"] = args["MaxResults"],
		["FormatVersion"] = args["FormatVersion"],
		["NextToken"] = args["NextToken"],
		["ServiceCode"] = args["ServiceCode"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertGetProductsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAttributeValuesResponse = { ["NextToken"] = true, ["AttributeValues"] = true, nil }

function asserts.AssertGetAttributeValuesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAttributeValuesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["AttributeValues"] then asserts.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAttributeValuesResponse[k], "GetAttributeValuesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAttributeValuesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * AttributeValues [AttributeValueList] <p>The list of values for an attribute. For example, <code>Throughput Optimized HDD</code> and <code>Provisioned IOPS</code> are two available values for the <code>AmazonEC2</code> <code>volumeType</code>.</p>
-- @return GetAttributeValuesResponse structure as a key-value pair table
function M.GetAttributeValuesResponse(args)
	assert(args, "You must provide an argument table when creating GetAttributeValuesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["AttributeValues"] = args["AttributeValues"],
	}
	asserts.AssertGetAttributeValuesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Filter = { ["Field"] = true, ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Field"], "Expected key Field to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Field"] then asserts.AssertString(struct["Field"]) end
	if struct["Type"] then asserts.AssertFilterType(struct["Type"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filter[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>The constraints that you want all returned products to match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Field [String] <p>The product metadata field that you want to filter on. You can filter by just the service code to see all products for a specific service, filter by just the attribute name to see a specific attribute for multiple services, or use both a service code and an attribute name to retrieve only products that match both fields.</p> <p>Valid values include: <code>ServiceCode</code>, and all attribute names</p> <p>For example, you can filter by the <code>AmazonEC2</code> service code and the <code>volumeType</code> attribute name to get the prices for only Amazon EC2 volumes.</p>
-- * Type [FilterType] <p>The type of filter that you want to use.</p> <p>Valid values are: <code>TERM_MATCH</code>. <code>TERM_MATCH</code> returns only products that match both the given filter field and the given value.</p>
-- * Value [String] <p>The service code or attribute value that you want to filter by. If you are filtering by service code this is the actual service code, such as <code>AmazonEC2</code>. If you are filtering by attribute name, this is the attribute value that you want the returned products to match, such as a <code>Provisioned IOPS</code> volume.</p>
-- Required key: Type
-- Required key: Field
-- Required key: Value
-- @return Filter structure as a key-value pair table
function M.Filter(args)
	assert(args, "You must provide an argument table when creating Filter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Field"] = args["Field"],
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServicesRequest = { ["FormatVersion"] = true, ["NextToken"] = true, ["ServiceCode"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesRequest to be of type 'table'")
	if struct["FormatVersion"] then asserts.AssertString(struct["FormatVersion"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ServiceCode"] then asserts.AssertString(struct["ServiceCode"]) end
	if struct["MaxResults"] then asserts.AssertBoxedInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServicesRequest[k], "DescribeServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FormatVersion [String] <p>The format version that you want the response to be in.</p> <p>Valid values are: <code>aws_v1</code> </p>
-- * NextToken [String] <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
-- * ServiceCode [String] <p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>. You can use the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call. To retrieve a list of all services, leave this blank.</p>
-- * MaxResults [BoxedInteger] <p>The maximum number of results that you want returned in the response.</p>
-- @return DescribeServicesRequest structure as a key-value pair table
function M.DescribeServicesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeServicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FormatVersion"] = args["FormatVersion"],
		["NextToken"] = args["NextToken"],
		["ServiceCode"] = args["ServiceCode"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeServicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeValue = { ["Value"] = true, nil }

function asserts.AssertAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeValue to be of type 'table'")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeValue[k], "AttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeValue
-- <p>The values of a given attribute, such as <code>Throughput Optimized HDD</code> or <code>Provisioned IOPS</code> for the <code>Amazon EC2</code> <code>volumeType</code> attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The specific value of an <code>attributeName</code>.</p>
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
		["Value"] = args["Value"],
	}
	asserts.AssertAttributeValue(all_args)
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

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterType to be of type 'string'")
end

--  
function M.FilterType(str)
	asserts.AssertFilterType(str)
	return str
end

function asserts.AssertPriceListItemJSON(str)
	assert(str)
	assert(type(str) == "string", "Expected PriceListItemJSON to be of type 'string'")
end

--  
function M.PriceListItemJSON(str)
	asserts.AssertPriceListItemJSON(str)
	return str
end

function asserts.AssertBoxedInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BoxedInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BoxedInteger(integer)
	asserts.AssertBoxedInteger(integer)
	return integer
end

function asserts.AssertPriceList(list)
	assert(list)
	assert(type(list) == "table", "Expected PriceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPriceListItemJSON(v)
	end
end

--  
-- List of PriceListItemJSON objects
function M.PriceList(list)
	asserts.AssertPriceList(list)
	return list
end

function asserts.AssertServiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertService(v)
	end
end

--  
-- List of Service objects
function M.ServiceList(list)
	asserts.AssertServiceList(list)
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

function asserts.AssertFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected Filters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.Filters(list)
	asserts.AssertFilters(list)
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
			return "api.pricing.amazonaws.com"
		end
	end
	local ss = { "api.pricing" }
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
--- Call GetProducts asynchronously, invoking a callback when done
-- @param GetProductsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetProductsAsync(GetProductsRequest, cb)
	assert(GetProductsRequest, "You must provide a GetProductsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPriceListService.GetProducts",
	}
	for header,value in pairs(GetProductsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetProductsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetProducts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetProductsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetProductsSync(GetProductsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetProductsAsync(GetProductsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServices asynchronously, invoking a callback when done
-- @param DescribeServicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeServicesAsync(DescribeServicesRequest, cb)
	assert(DescribeServicesRequest, "You must provide a DescribeServicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPriceListService.DescribeServices",
	}
	for header,value in pairs(DescribeServicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeServicesSync(DescribeServicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServicesAsync(DescribeServicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAttributeValues asynchronously, invoking a callback when done
-- @param GetAttributeValuesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAttributeValuesAsync(GetAttributeValuesRequest, cb)
	assert(GetAttributeValuesRequest, "You must provide a GetAttributeValuesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSPriceListService.GetAttributeValues",
	}
	for header,value in pairs(GetAttributeValuesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAttributeValuesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAttributeValues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAttributeValuesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAttributeValuesSync(GetAttributeValuesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAttributeValuesAsync(GetAttributeValuesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
