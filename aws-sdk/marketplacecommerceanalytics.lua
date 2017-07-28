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
-- @param _message [ExceptionMessage] This message describes details of the error.
function M.MarketplaceCommerceAnalyticsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MarketplaceCommerceAnalyticsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMarketplaceCommerceAnalyticsException(t)
	return t
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
-- @param _dataSetRequestId [DataSetRequestId] A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be used to correlate a request with notifications from the SNS topic.
function M.StartSupportDataExportResult(_dataSetRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartSupportDataExportResult")
	local t = { 
		["dataSetRequestId"] = _dataSetRequestId,
	}
	asserts.AssertStartSupportDataExportResult(t)
	return t
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
-- @param _dataSetRequestId [DataSetRequestId] A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
function M.GenerateDataSetResult(_dataSetRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataSetResult")
	local t = { 
		["dataSetRequestId"] = _dataSetRequestId,
	}
	asserts.AssertGenerateDataSetResult(t)
	return t
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
-- @param _roleNameArn [RoleNameArn] The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
-- @param _destinationS3BucketName [DestinationS3BucketName] The name (friendly name, not ARN) of the destination S3 bucket.
-- @param _snsTopicArn [SnsTopicArn] Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
-- @param _fromDate [FromDate] The start date from which to retrieve the data set in UTC. This parameter only affects the customer_support_contacts_data data set type.
-- @param _destinationS3Prefix [DestinationS3Prefix] (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
-- @param _dataSetType [SupportDataSetType] <p> Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time. </p> <p> <ul> <li><i>customer_support_contacts_data</i> Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.</li> <li><i>test_customer_support_contacts_data</i> An example data set containing static test data in the same format as customer_support_contacts_data</li> </ul> </p>
-- @param _customerDefinedValues [CustomerDefinedValues] (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
-- Required parameter: dataSetType
-- Required parameter: fromDate
-- Required parameter: roleNameArn
-- Required parameter: destinationS3BucketName
-- Required parameter: snsTopicArn
function M.StartSupportDataExportRequest(_roleNameArn, _destinationS3BucketName, _snsTopicArn, _fromDate, _destinationS3Prefix, _dataSetType, _customerDefinedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartSupportDataExportRequest")
	local t = { 
		["roleNameArn"] = _roleNameArn,
		["destinationS3BucketName"] = _destinationS3BucketName,
		["snsTopicArn"] = _snsTopicArn,
		["fromDate"] = _fromDate,
		["destinationS3Prefix"] = _destinationS3Prefix,
		["dataSetType"] = _dataSetType,
		["customerDefinedValues"] = _customerDefinedValues,
	}
	asserts.AssertStartSupportDataExportRequest(t)
	return t
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
-- @param _roleNameArn [RoleNameArn] The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
-- @param _destinationS3BucketName [DestinationS3BucketName] The name (friendly name, not ARN) of the destination S3 bucket.
-- @param _snsTopicArn [SnsTopicArn] Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
-- @param _dataSetPublicationDate [DataSetPublicationDate] The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For weekly data sets, provide a date with day-level granularity within the desired week (the day value will be ignored). For monthly data sets, provide a date with month-level granularity for the desired month (the day value will be ignored).
-- @param _destinationS3Prefix [DestinationS3Prefix] (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
-- @param _dataSetType [DataSetType] <p>The desired data set type.</p> <p> <ul> <li><i>customer_subscriber_hourly_monthly_subscriptions</i> - Available daily by 5:00 PM Pacific Time since 2014-07-21.</li> <li><i>customer_subscriber_annual_subscriptions</i> - Available daily by 5:00 PM Pacific Time since 2014-07-21.</li> <li><i>daily_business_usage_by_instance_type</i> - Available daily by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>daily_business_fees</i> - Available daily by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>daily_business_free_trial_conversions</i> - Available daily by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>daily_business_new_instances</i> - Available daily by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>daily_business_new_product_subscribers</i> - Available daily by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>daily_business_canceled_product_subscribers</i> - Available daily by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>monthly_revenue_billing_and_revenue_data</i> - Available monthly on the 4th day of the month by 5:00 PM Pacific Time since 2015-02.</li> <li><i>monthly_revenue_annual_subscriptions</i> - Available monthly on the 4th day of the month by 5:00 PM Pacific Time since 2015-02.</li> <li><i>disbursed_amount_by_product</i> - Available every 30 days by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>disbursed_amount_by_product_with_uncollected_funds</i> -This data set is only available from 2012-04-19 until 2015-01-25. After 2015-01-25, this data set was split into three data sets: disbursed_amount_by_product, disbursed_amount_by_age_of_uncollected_funds, and disbursed_amount_by_age_of_disbursed_funds. </li> <li><i>disbursed_amount_by_instance_hours</i> - Available every 30 days by 5:00 PM Pacific Time since 2012-09-04.</li> <li><i>disbursed_amount_by_customer_geo</i> - Available every 30 days by 5:00 PM Pacific Time since 2012-04-19.</li> <li><i>disbursed_amount_by_age_of_uncollected_funds</i> - Available every 30 days by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>disbursed_amount_by_age_of_disbursed_funds</i> - Available every 30 days by 5:00 PM Pacific Time since 2015-01-26.</li> <li><i>customer_profile_by_industry</i> - Available daily by 5:00 PM Pacific Time since 2015-10-01.</li> <li><i>customer_profile_by_revenue</i> - Available daily by 5:00 PM Pacific Time since 2015-10-01.</li> <li><i>customer_profile_by_geography</i> - Available daily by 5:00 PM Pacific Time since 2015-10-01.</li> <li><i>sales_compensation_billed_revenue</i> - Available monthly on the 4th day of the month by 5:00 PM Pacific Time since 2016-12.</li> <li><i>us_sales_and_use_tax_records</i> - Available monthly on the 15th day of the month by 5:00 PM Pacific Time since 2017-02-15.</li> </ul> </p>
-- @param _customerDefinedValues [CustomerDefinedValues] (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
-- Required parameter: dataSetType
-- Required parameter: dataSetPublicationDate
-- Required parameter: roleNameArn
-- Required parameter: destinationS3BucketName
-- Required parameter: snsTopicArn
function M.GenerateDataSetRequest(_roleNameArn, _destinationS3BucketName, _snsTopicArn, _dataSetPublicationDate, _destinationS3Prefix, _dataSetType, _customerDefinedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataSetRequest")
	local t = { 
		["roleNameArn"] = _roleNameArn,
		["destinationS3BucketName"] = _destinationS3BucketName,
		["snsTopicArn"] = _snsTopicArn,
		["dataSetPublicationDate"] = _dataSetPublicationDate,
		["destinationS3Prefix"] = _destinationS3Prefix,
		["dataSetType"] = _dataSetType,
		["customerDefinedValues"] = _customerDefinedValues,
	}
	asserts.AssertGenerateDataSetRequest(t)
	return t
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
