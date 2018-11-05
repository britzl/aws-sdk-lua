--- GENERATED CODE - DO NOT MODIFY
-- AWS Marketplace Commerce Analytics (marketplacecommerceanalytics-2015-07-01)

local M = {}

M.metadata = {
	api_version = "2015-07-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "marketplacecommerceanalytics",
	service_abbreviation = "",
	service_full_name = "AWS Marketplace Commerce Analytics",
	signature_version = "v4",
	target_prefix = "MarketplaceCommerceAnalytics20150701",
	timestamp_format = "",
	global_endpoint = "",
	uid = "marketplacecommerceanalytics-2015-07-01",
}

local keys = {}
local asserts = {}

keys.MarketplaceCommerceAnalyticsException = { ["message"] = true, nil }

function asserts.AssertMarketplaceCommerceAnalyticsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MarketplaceCommerceAnalyticsException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MarketplaceCommerceAnalyticsException[k], "MarketplaceCommerceAnalyticsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MarketplaceCommerceAnalyticsException
-- This exception is thrown when an internal service error occurs.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] This message describes details of the error.
-- @return MarketplaceCommerceAnalyticsException structure as a key-value pair table
function M.MarketplaceCommerceAnalyticsException(args)
	assert(args, "You must provide an argument table when creating MarketplaceCommerceAnalyticsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMarketplaceCommerceAnalyticsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSupportDataExportResult = { ["dataSetRequestId"] = true, nil }

function asserts.AssertStartSupportDataExportResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSupportDataExportResult to be of type 'table'")
	if struct["dataSetRequestId"] then asserts.AssertDataSetRequestId(struct["dataSetRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSupportDataExportResult[k], "StartSupportDataExportResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSupportDataExportResult
-- Container for the result of the StartSupportDataExport operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSetRequestId [DataSetRequestId] A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be used to correlate a request with notifications from the SNS topic.
-- @return StartSupportDataExportResult structure as a key-value pair table
function M.StartSupportDataExportResult(args)
	assert(args, "You must provide an argument table when creating StartSupportDataExportResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSetRequestId"] = args["dataSetRequestId"],
	}
	asserts.AssertStartSupportDataExportResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateDataSetResult = { ["dataSetRequestId"] = true, nil }

function asserts.AssertGenerateDataSetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataSetResult to be of type 'table'")
	if struct["dataSetRequestId"] then asserts.AssertDataSetRequestId(struct["dataSetRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataSetResult[k], "GenerateDataSetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataSetResult
-- Container for the result of the GenerateDataSet operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSetRequestId [DataSetRequestId] A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
-- @return GenerateDataSetResult structure as a key-value pair table
function M.GenerateDataSetResult(args)
	assert(args, "You must provide an argument table when creating GenerateDataSetResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSetRequestId"] = args["dataSetRequestId"],
	}
	asserts.AssertGenerateDataSetResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSupportDataExportRequest = { ["roleNameArn"] = true, ["destinationS3BucketName"] = true, ["snsTopicArn"] = true, ["fromDate"] = true, ["destinationS3Prefix"] = true, ["dataSetType"] = true, ["customerDefinedValues"] = true, nil }

function asserts.AssertStartSupportDataExportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSupportDataExportRequest to be of type 'table'")
	assert(struct["dataSetType"], "Expected key dataSetType to exist in table")
	assert(struct["fromDate"], "Expected key fromDate to exist in table")
	assert(struct["roleNameArn"], "Expected key roleNameArn to exist in table")
	assert(struct["destinationS3BucketName"], "Expected key destinationS3BucketName to exist in table")
	assert(struct["snsTopicArn"], "Expected key snsTopicArn to exist in table")
	if struct["roleNameArn"] then asserts.AssertRoleNameArn(struct["roleNameArn"]) end
	if struct["destinationS3BucketName"] then asserts.AssertDestinationS3BucketName(struct["destinationS3BucketName"]) end
	if struct["snsTopicArn"] then asserts.AssertSnsTopicArn(struct["snsTopicArn"]) end
	if struct["fromDate"] then asserts.AssertFromDate(struct["fromDate"]) end
	if struct["destinationS3Prefix"] then asserts.AssertDestinationS3Prefix(struct["destinationS3Prefix"]) end
	if struct["dataSetType"] then asserts.AssertSupportDataSetType(struct["dataSetType"]) end
	if struct["customerDefinedValues"] then asserts.AssertCustomerDefinedValues(struct["customerDefinedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSupportDataExportRequest[k], "StartSupportDataExportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSupportDataExportRequest
-- Container for the parameters to the StartSupportDataExport operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleNameArn [RoleNameArn] The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
-- * destinationS3BucketName [DestinationS3BucketName] The name (friendly name, not ARN) of the destination S3 bucket.
-- * snsTopicArn [SnsTopicArn] Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
-- * fromDate [FromDate] The start date from which to retrieve the data set in UTC. This parameter only affects the customer_support_contacts_data data set type.
-- * destinationS3Prefix [DestinationS3Prefix] (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
-- * dataSetType [SupportDataSetType] <p> Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time. </p> <p> <ul> <li><i>customer_support_contacts_data</i> Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.</li> <li><i>test_customer_support_contacts_data</i> An example data set containing static test data in the same format as customer_support_contacts_data</li> </ul> </p>
-- * customerDefinedValues [CustomerDefinedValues] (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
-- Required key: dataSetType
-- Required key: fromDate
-- Required key: roleNameArn
-- Required key: destinationS3BucketName
-- Required key: snsTopicArn
-- @return StartSupportDataExportRequest structure as a key-value pair table
function M.StartSupportDataExportRequest(args)
	assert(args, "You must provide an argument table when creating StartSupportDataExportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleNameArn"] = args["roleNameArn"],
		["destinationS3BucketName"] = args["destinationS3BucketName"],
		["snsTopicArn"] = args["snsTopicArn"],
		["fromDate"] = args["fromDate"],
		["destinationS3Prefix"] = args["destinationS3Prefix"],
		["dataSetType"] = args["dataSetType"],
		["customerDefinedValues"] = args["customerDefinedValues"],
	}
	asserts.AssertStartSupportDataExportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateDataSetRequest = { ["roleNameArn"] = true, ["destinationS3BucketName"] = true, ["snsTopicArn"] = true, ["dataSetPublicationDate"] = true, ["destinationS3Prefix"] = true, ["dataSetType"] = true, ["customerDefinedValues"] = true, nil }

function asserts.AssertGenerateDataSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataSetRequest to be of type 'table'")
	assert(struct["dataSetType"], "Expected key dataSetType to exist in table")
	assert(struct["dataSetPublicationDate"], "Expected key dataSetPublicationDate to exist in table")
	assert(struct["roleNameArn"], "Expected key roleNameArn to exist in table")
	assert(struct["destinationS3BucketName"], "Expected key destinationS3BucketName to exist in table")
	assert(struct["snsTopicArn"], "Expected key snsTopicArn to exist in table")
	if struct["roleNameArn"] then asserts.AssertRoleNameArn(struct["roleNameArn"]) end
	if struct["destinationS3BucketName"] then asserts.AssertDestinationS3BucketName(struct["destinationS3BucketName"]) end
	if struct["snsTopicArn"] then asserts.AssertSnsTopicArn(struct["snsTopicArn"]) end
	if struct["dataSetPublicationDate"] then asserts.AssertDataSetPublicationDate(struct["dataSetPublicationDate"]) end
	if struct["destinationS3Prefix"] then asserts.AssertDestinationS3Prefix(struct["destinationS3Prefix"]) end
	if struct["dataSetType"] then asserts.AssertDataSetType(struct["dataSetType"]) end
	if struct["customerDefinedValues"] then asserts.AssertCustomerDefinedValues(struct["customerDefinedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataSetRequest[k], "GenerateDataSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataSetRequest
-- Container for the parameters to the GenerateDataSet operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleNameArn [RoleNameArn] The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
-- * destinationS3BucketName [DestinationS3BucketName] The name (friendly name, not ARN) of the destination S3 bucket.
-- * snsTopicArn [SnsTopicArn] Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
-- * dataSetPublicationDate [DataSetPublicationDate] The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For weekly data sets, provide a date with day-level granularity within the desired week (the day value will be ignored). For monthly data sets, provide a date with month-level granularity for the desired month (the day value will be ignored).
-- * destinationS3Prefix [DestinationS3Prefix] (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
-- * dataSetType [DataSetType] <p>The desired data set type.</p> <p> <ul> <li> <strong>customer_subscriber_hourly_monthly_subscriptions</strong> <p>From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>customer_subscriber_annual_subscriptions</strong> <p>From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>daily_business_usage_by_instance_type</strong> <p>From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>daily_business_fees</strong> <p>From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>daily_business_free_trial_conversions</strong> <p>From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>daily_business_new_instances</strong> <p>From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>daily_business_new_product_subscribers</strong> <p>From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>daily_business_canceled_product_subscribers</strong> <p>From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.</p> </li> <li> <strong>monthly_revenue_billing_and_revenue_data</strong> <p>From 2015-02 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from two months prior.</p> <p>From 2017-07 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from one month prior.</p> </li> <li> <strong>monthly_revenue_annual_subscriptions</strong> <p>From 2015-02 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes up-front software charges (e.g. annual) from one month prior.</p> <p>From 2017-07 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes up-front software charges (e.g. annual) from one month prior.</p> </li> <li> <strong>disbursed_amount_by_product</strong> <p>From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.</p> </li> <li> <strong>disbursed_amount_by_product_with_uncollected_funds</strong> <p>From 2012-04-19 to 2015-01-25: Available every 30 days by 5:00 PM Pacific Time.</p> <p>From 2015-01-26 to present: This data set was split into three data sets: disbursed_amount_by_product, disbursed_amount_by_age_of_uncollected_funds, and disbursed_amount_by_age_of_disbursed_funds.</p> </li> <li> <strong>disbursed_amount_by_instance_hours</strong> <p>From 2012-09-04 to present: Available every 30 days by 5:00 PM Pacific Time.</p> </li> <li> <strong>disbursed_amount_by_customer_geo</strong> <p>From 2012-04-19 to present: Available every 30 days by 5:00 PM Pacific Time.</p> </li> <li> <strong>disbursed_amount_by_age_of_uncollected_funds</strong> <p>From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.</p> </li> <li> <strong>disbursed_amount_by_age_of_disbursed_funds</strong> <p>From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.</p> </li> <li> <strong>customer_profile_by_industry</strong> <p>From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.</p> <p>From 2017-06-30 to present: This data set is no longer available.</p> </li> <li> <strong>customer_profile_by_revenue</strong> <p>From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.</p> <p>From 2017-06-30 to present: This data set is no longer available.</p> </li> <li> <strong>customer_profile_by_geography</strong> <p>From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time.</p> <p>From 2017-06-30 to present: This data set is no longer available.</p> </li> <li> <strong>sales_compensation_billed_revenue</strong> <p>From 2016-12 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from two months prior, and up-front software charges (e.g. annual) from one month prior.</p> <p>From 2017-06 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.</p> </li> <li> <strong>us_sales_and_use_tax_records</strong> <p>From 2017-02-15 to present: Available monthly on the 15th day of the month by 5:00 PM Pacific Time.</p> </li> </ul> </p>
-- * customerDefinedValues [CustomerDefinedValues] (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
-- Required key: dataSetType
-- Required key: dataSetPublicationDate
-- Required key: roleNameArn
-- Required key: destinationS3BucketName
-- Required key: snsTopicArn
-- @return GenerateDataSetRequest structure as a key-value pair table
function M.GenerateDataSetRequest(args)
	assert(args, "You must provide an argument table when creating GenerateDataSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleNameArn"] = args["roleNameArn"],
		["destinationS3BucketName"] = args["destinationS3BucketName"],
		["snsTopicArn"] = args["snsTopicArn"],
		["dataSetPublicationDate"] = args["dataSetPublicationDate"],
		["destinationS3Prefix"] = args["destinationS3Prefix"],
		["dataSetType"] = args["dataSetType"],
		["customerDefinedValues"] = args["customerDefinedValues"],
	}
	asserts.AssertGenerateDataSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertRoleNameArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleNameArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleNameArn(str)
	asserts.AssertRoleNameArn(str)
	return str
end

function asserts.AssertDestinationS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationS3BucketName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationS3BucketName(str)
	asserts.AssertDestinationS3BucketName(str)
	return str
end

function asserts.AssertSnsTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopicArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SnsTopicArn(str)
	asserts.AssertSnsTopicArn(str)
	return str
end

function asserts.AssertOptionalKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionalKey to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OptionalKey(str)
	asserts.AssertOptionalKey(str)
	return str
end

function asserts.AssertDestinationS3Prefix(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationS3Prefix to be of type 'string'")
end

--  
function M.DestinationS3Prefix(str)
	asserts.AssertDestinationS3Prefix(str)
	return str
end

function asserts.AssertSupportDataSetType(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportDataSetType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SupportDataSetType(str)
	asserts.AssertSupportDataSetType(str)
	return str
end

function asserts.AssertDataSetRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSetRequestId to be of type 'string'")
end

--  
function M.DataSetRequestId(str)
	asserts.AssertDataSetRequestId(str)
	return str
end

function asserts.AssertDataSetType(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSetType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DataSetType(str)
	asserts.AssertDataSetType(str)
	return str
end

function asserts.AssertOptionalValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionalValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OptionalValue(str)
	asserts.AssertOptionalValue(str)
	return str
end

function asserts.AssertCustomerDefinedValues(map)
	assert(map)
	assert(type(map) == "table", "Expected CustomerDefinedValues to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertOptionalKey(k)
		asserts.AssertOptionalValue(v)
	end
end

function M.CustomerDefinedValues(map)
	asserts.AssertCustomerDefinedValues(map)
	return map
end

function asserts.AssertDataSetPublicationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DataSetPublicationDate to be of type 'string'")
end

function M.DataSetPublicationDate(timestamp)
	asserts.AssertDataSetPublicationDate(timestamp)
	return timestamp
end

function asserts.AssertFromDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected FromDate to be of type 'string'")
end

function M.FromDate(timestamp)
	asserts.AssertFromDate(timestamp)
	return timestamp
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "marketplacecommerceanalytics.amazonaws.com"
		end
	end
	local ss = { "marketplacecommerceanalytics" }
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
--- Call GenerateDataSet asynchronously, invoking a callback when done
-- @param GenerateDataSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GenerateDataSetAsync(GenerateDataSetRequest, cb)
	assert(GenerateDataSetRequest, "You must provide a GenerateDataSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MarketplaceCommerceAnalytics20150701.GenerateDataSet",
	}
	for header,value in pairs(GenerateDataSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GenerateDataSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GenerateDataSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GenerateDataSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GenerateDataSetSync(GenerateDataSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateDataSetAsync(GenerateDataSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSupportDataExport asynchronously, invoking a callback when done
-- @param StartSupportDataExportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSupportDataExportAsync(StartSupportDataExportRequest, cb)
	assert(StartSupportDataExportRequest, "You must provide a StartSupportDataExportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MarketplaceCommerceAnalytics20150701.StartSupportDataExport",
	}
	for header,value in pairs(StartSupportDataExportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartSupportDataExportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSupportDataExport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSupportDataExportRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartSupportDataExportSync(StartSupportDataExportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSupportDataExportAsync(StartSupportDataExportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
