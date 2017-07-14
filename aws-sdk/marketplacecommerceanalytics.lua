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

local MarketplaceCommerceAnalyticsException_keys = { "message" = true, nil }

function M.AssertMarketplaceCommerceAnalyticsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MarketplaceCommerceAnalyticsException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MarketplaceCommerceAnalyticsException_keys[k], "MarketplaceCommerceAnalyticsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MarketplaceCommerceAnalyticsException
-- This exception is thrown when an internal service error occurs.
-- @param message [ExceptionMessage] This message describes details of the error.
function M.MarketplaceCommerceAnalyticsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MarketplaceCommerceAnalyticsException")
	local t = { 
		["message"] = message,
	}
	M.AssertMarketplaceCommerceAnalyticsException(t)
	return t
end

local StartSupportDataExportResult_keys = { "dataSetRequestId" = true, nil }

function M.AssertStartSupportDataExportResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSupportDataExportResult to be of type 'table'")
	if struct["dataSetRequestId"] then M.AssertDataSetRequestId(struct["dataSetRequestId"]) end
	for k,_ in pairs(struct) do
		assert(StartSupportDataExportResult_keys[k], "StartSupportDataExportResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSupportDataExportResult
-- Container for the result of the StartSupportDataExport operation.
-- @param dataSetRequestId [DataSetRequestId] A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be used to correlate a request with notifications from the SNS topic.
function M.StartSupportDataExportResult(dataSetRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartSupportDataExportResult")
	local t = { 
		["dataSetRequestId"] = dataSetRequestId,
	}
	M.AssertStartSupportDataExportResult(t)
	return t
end

local GenerateDataSetResult_keys = { "dataSetRequestId" = true, nil }

function M.AssertGenerateDataSetResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataSetResult to be of type 'table'")
	if struct["dataSetRequestId"] then M.AssertDataSetRequestId(struct["dataSetRequestId"]) end
	for k,_ in pairs(struct) do
		assert(GenerateDataSetResult_keys[k], "GenerateDataSetResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataSetResult
-- Container for the result of the GenerateDataSet operation.
-- @param dataSetRequestId [DataSetRequestId] A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
function M.GenerateDataSetResult(dataSetRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataSetResult")
	local t = { 
		["dataSetRequestId"] = dataSetRequestId,
	}
	M.AssertGenerateDataSetResult(t)
	return t
end

local StartSupportDataExportRequest_keys = { "roleNameArn" = true, "destinationS3BucketName" = true, "snsTopicArn" = true, "fromDate" = true, "destinationS3Prefix" = true, "dataSetType" = true, "customerDefinedValues" = true, nil }

function M.AssertStartSupportDataExportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSupportDataExportRequest to be of type 'table'")
	assert(struct["dataSetType"], "Expected key dataSetType to exist in table")
	assert(struct["fromDate"], "Expected key fromDate to exist in table")
	assert(struct["roleNameArn"], "Expected key roleNameArn to exist in table")
	assert(struct["destinationS3BucketName"], "Expected key destinationS3BucketName to exist in table")
	assert(struct["snsTopicArn"], "Expected key snsTopicArn to exist in table")
	if struct["roleNameArn"] then M.AssertRoleNameArn(struct["roleNameArn"]) end
	if struct["destinationS3BucketName"] then M.AssertDestinationS3BucketName(struct["destinationS3BucketName"]) end
	if struct["snsTopicArn"] then M.AssertSnsTopicArn(struct["snsTopicArn"]) end
	if struct["fromDate"] then M.AssertFromDate(struct["fromDate"]) end
	if struct["destinationS3Prefix"] then M.AssertDestinationS3Prefix(struct["destinationS3Prefix"]) end
	if struct["dataSetType"] then M.AssertSupportDataSetType(struct["dataSetType"]) end
	if struct["customerDefinedValues"] then M.AssertCustomerDefinedValues(struct["customerDefinedValues"]) end
	for k,_ in pairs(struct) do
		assert(StartSupportDataExportRequest_keys[k], "StartSupportDataExportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSupportDataExportRequest
-- Container for the parameters to the StartSupportDataExport operation.
-- @param roleNameArn [RoleNameArn] The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
-- @param destinationS3BucketName [DestinationS3BucketName] The name (friendly name, not ARN) of the destination S3 bucket.
-- @param snsTopicArn [SnsTopicArn] Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
-- @param fromDate [FromDate] The start date from which to retrieve the data set in UTC. This parameter only affects the customer_support_contacts_data data set type.
-- @param destinationS3Prefix [DestinationS3Prefix] (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name &quot;mybucket&quot; and the prefix &quot;myprefix/mydatasets&quot;, the output file &quot;outputfile&quot; would be published to &quot;s3://mybucket/myprefix/mydatasets/outputfile&quot;. If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
-- @param dataSetType [SupportDataSetType] &lt;p&gt; Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time. &lt;/p&gt; &lt;p&gt; &lt;ul&gt; &lt;li&gt;&lt;i&gt;customer_support_contacts_data&lt;/i&gt; Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.&lt;/li&gt; &lt;li&gt;&lt;i&gt;test_customer_support_contacts_data&lt;/i&gt; An example data set containing static test data in the same format as customer_support_contacts_data&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt;
-- @param customerDefinedValues [CustomerDefinedValues] (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
-- Required parameter: dataSetType
-- Required parameter: fromDate
-- Required parameter: roleNameArn
-- Required parameter: destinationS3BucketName
-- Required parameter: snsTopicArn
function M.StartSupportDataExportRequest(roleNameArn, destinationS3BucketName, snsTopicArn, fromDate, destinationS3Prefix, dataSetType, customerDefinedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartSupportDataExportRequest")
	local t = { 
		["roleNameArn"] = roleNameArn,
		["destinationS3BucketName"] = destinationS3BucketName,
		["snsTopicArn"] = snsTopicArn,
		["fromDate"] = fromDate,
		["destinationS3Prefix"] = destinationS3Prefix,
		["dataSetType"] = dataSetType,
		["customerDefinedValues"] = customerDefinedValues,
	}
	M.AssertStartSupportDataExportRequest(t)
	return t
end

local GenerateDataSetRequest_keys = { "roleNameArn" = true, "destinationS3BucketName" = true, "snsTopicArn" = true, "dataSetPublicationDate" = true, "destinationS3Prefix" = true, "dataSetType" = true, "customerDefinedValues" = true, nil }

function M.AssertGenerateDataSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataSetRequest to be of type 'table'")
	assert(struct["dataSetType"], "Expected key dataSetType to exist in table")
	assert(struct["dataSetPublicationDate"], "Expected key dataSetPublicationDate to exist in table")
	assert(struct["roleNameArn"], "Expected key roleNameArn to exist in table")
	assert(struct["destinationS3BucketName"], "Expected key destinationS3BucketName to exist in table")
	assert(struct["snsTopicArn"], "Expected key snsTopicArn to exist in table")
	if struct["roleNameArn"] then M.AssertRoleNameArn(struct["roleNameArn"]) end
	if struct["destinationS3BucketName"] then M.AssertDestinationS3BucketName(struct["destinationS3BucketName"]) end
	if struct["snsTopicArn"] then M.AssertSnsTopicArn(struct["snsTopicArn"]) end
	if struct["dataSetPublicationDate"] then M.AssertDataSetPublicationDate(struct["dataSetPublicationDate"]) end
	if struct["destinationS3Prefix"] then M.AssertDestinationS3Prefix(struct["destinationS3Prefix"]) end
	if struct["dataSetType"] then M.AssertDataSetType(struct["dataSetType"]) end
	if struct["customerDefinedValues"] then M.AssertCustomerDefinedValues(struct["customerDefinedValues"]) end
	for k,_ in pairs(struct) do
		assert(GenerateDataSetRequest_keys[k], "GenerateDataSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataSetRequest
-- Container for the parameters to the GenerateDataSet operation.
-- @param roleNameArn [RoleNameArn] The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
-- @param destinationS3BucketName [DestinationS3BucketName] The name (friendly name, not ARN) of the destination S3 bucket.
-- @param snsTopicArn [SnsTopicArn] Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
-- @param dataSetPublicationDate [DataSetPublicationDate] The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For weekly data sets, provide a date with day-level granularity within the desired week (the day value will be ignored). For monthly data sets, provide a date with month-level granularity for the desired month (the day value will be ignored).
-- @param destinationS3Prefix [DestinationS3Prefix] (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name &quot;mybucket&quot; and the prefix &quot;myprefix/mydatasets&quot;, the output file &quot;outputfile&quot; would be published to &quot;s3://mybucket/myprefix/mydatasets/outputfile&quot;. If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
-- @param dataSetType [DataSetType] &lt;p&gt;The desired data set type.&lt;/p&gt; &lt;p&gt; &lt;ul&gt; &lt;li&gt;&lt;i&gt;customer_subscriber_hourly_monthly_subscriptions&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2014-07-21.&lt;/li&gt; &lt;li&gt;&lt;i&gt;customer_subscriber_annual_subscriptions&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2014-07-21.&lt;/li&gt; &lt;li&gt;&lt;i&gt;daily_business_usage_by_instance_type&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;daily_business_fees&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;daily_business_free_trial_conversions&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;daily_business_new_instances&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;daily_business_new_product_subscribers&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;daily_business_canceled_product_subscribers&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;monthly_revenue_billing_and_revenue_data&lt;/i&gt; - Available monthly on the 4th day of the month by 5:00 PM Pacific Time since 2015-02.&lt;/li&gt; &lt;li&gt;&lt;i&gt;monthly_revenue_annual_subscriptions&lt;/i&gt; - Available monthly on the 4th day of the month by 5:00 PM Pacific Time since 2015-02.&lt;/li&gt; &lt;li&gt;&lt;i&gt;disbursed_amount_by_product&lt;/i&gt; - Available every 30 days by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;disbursed_amount_by_product_with_uncollected_funds&lt;/i&gt; -This data set is only available from 2012-04-19 until 2015-01-25. After 2015-01-25, this data set was split into three data sets: disbursed_amount_by_product, disbursed_amount_by_age_of_uncollected_funds, and disbursed_amount_by_age_of_disbursed_funds. &lt;/li&gt; &lt;li&gt;&lt;i&gt;disbursed_amount_by_instance_hours&lt;/i&gt; - Available every 30 days by 5:00 PM Pacific Time since 2012-09-04.&lt;/li&gt; &lt;li&gt;&lt;i&gt;disbursed_amount_by_customer_geo&lt;/i&gt; - Available every 30 days by 5:00 PM Pacific Time since 2012-04-19.&lt;/li&gt; &lt;li&gt;&lt;i&gt;disbursed_amount_by_age_of_uncollected_funds&lt;/i&gt; - Available every 30 days by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;disbursed_amount_by_age_of_disbursed_funds&lt;/i&gt; - Available every 30 days by 5:00 PM Pacific Time since 2015-01-26.&lt;/li&gt; &lt;li&gt;&lt;i&gt;customer_profile_by_industry&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-10-01.&lt;/li&gt; &lt;li&gt;&lt;i&gt;customer_profile_by_revenue&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-10-01.&lt;/li&gt; &lt;li&gt;&lt;i&gt;customer_profile_by_geography&lt;/i&gt; - Available daily by 5:00 PM Pacific Time since 2015-10-01.&lt;/li&gt; &lt;li&gt;&lt;i&gt;sales_compensation_billed_revenue&lt;/i&gt; - Available monthly on the 4th day of the month by 5:00 PM Pacific Time since 2016-12.&lt;/li&gt; &lt;li&gt;&lt;i&gt;us_sales_and_use_tax_records&lt;/i&gt; - Available monthly on the 15th day of the month by 5:00 PM Pacific Time since 2017-02-15.&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt;
-- @param customerDefinedValues [CustomerDefinedValues] (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
-- Required parameter: dataSetType
-- Required parameter: dataSetPublicationDate
-- Required parameter: roleNameArn
-- Required parameter: destinationS3BucketName
-- Required parameter: snsTopicArn
function M.GenerateDataSetRequest(roleNameArn, destinationS3BucketName, snsTopicArn, dataSetPublicationDate, destinationS3Prefix, dataSetType, customerDefinedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataSetRequest")
	local t = { 
		["roleNameArn"] = roleNameArn,
		["destinationS3BucketName"] = destinationS3BucketName,
		["snsTopicArn"] = snsTopicArn,
		["dataSetPublicationDate"] = dataSetPublicationDate,
		["destinationS3Prefix"] = destinationS3Prefix,
		["dataSetType"] = dataSetType,
		["customerDefinedValues"] = customerDefinedValues,
	}
	M.AssertGenerateDataSetRequest(t)
	return t
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertRoleNameArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleNameArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleNameArn(str)
	M.AssertRoleNameArn(str)
	return str
end

function M.AssertDestinationS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationS3BucketName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationS3BucketName(str)
	M.AssertDestinationS3BucketName(str)
	return str
end

function M.AssertSnsTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopicArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SnsTopicArn(str)
	M.AssertSnsTopicArn(str)
	return str
end

function M.AssertOptionalKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionalKey to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OptionalKey(str)
	M.AssertOptionalKey(str)
	return str
end

function M.AssertDestinationS3Prefix(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationS3Prefix to be of type 'string'")
end

--  
function M.DestinationS3Prefix(str)
	M.AssertDestinationS3Prefix(str)
	return str
end

function M.AssertSupportDataSetType(str)
	assert(str)
	assert(type(str) == "string", "Expected SupportDataSetType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SupportDataSetType(str)
	M.AssertSupportDataSetType(str)
	return str
end

function M.AssertDataSetRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSetRequestId to be of type 'string'")
end

--  
function M.DataSetRequestId(str)
	M.AssertDataSetRequestId(str)
	return str
end

function M.AssertDataSetType(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSetType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DataSetType(str)
	M.AssertDataSetType(str)
	return str
end

function M.AssertOptionalValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OptionalValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OptionalValue(str)
	M.AssertOptionalValue(str)
	return str
end

function M.AssertCustomerDefinedValues(map)
	assert(map)
	assert(type(map) == "table", "Expected CustomerDefinedValues to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertOptionalKey(k)
		M.AssertOptionalValue(v)
	end
end

function M.CustomerDefinedValues(map)
	M.AssertCustomerDefinedValues(map)
	return map
end

function M.AssertDataSetPublicationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DataSetPublicationDate to be of type 'string'")
end

function M.DataSetPublicationDate(timestamp)
	M.AssertDataSetPublicationDate(timestamp)
	return timestamp
end

function M.AssertFromDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected FromDate to be of type 'string'")
end

function M.FromDate(timestamp)
	M.AssertFromDate(timestamp)
	return timestamp
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- GenerateDataSet
-- @param GenerateDataSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateDataSetAsync(GenerateDataSetRequest, cb)
	assert(GenerateDataSetRequest, "You must provide a GenerateDataSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MarketplaceCommerceAnalytics20150701.GenerateDataSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateDataSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartSupportDataExport
-- @param StartSupportDataExportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartSupportDataExportAsync(StartSupportDataExportRequest, cb)
	assert(StartSupportDataExportRequest, "You must provide a StartSupportDataExportRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "MarketplaceCommerceAnalytics20150701.StartSupportDataExport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartSupportDataExportRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
