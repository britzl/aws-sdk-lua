--- GENERATED CODE - DO NOT MODIFY
-- AWSMarketplace Metering (meteringmarketplace-2016-01-14)

local M = {}

M.metadata = {
	api_version = "2016-01-14",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "metering.marketplace",
	service_abbreviation = "",
	service_full_name = "AWSMarketplace Metering",
	signature_version = "v4",
	target_prefix = "AWSMPMeteringService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "meteringmarketplace-2016-01-14",
}

local ExpiredTokenException_keys = { "message" = true, nil }

function M.AssertExpiredTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredTokenException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredTokenException_keys[k], "ExpiredTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredTokenException
-- &lt;p&gt;The submitted registration token has expired. This can happen if the buyer's browser takes too long to redirect to your page, the buyer has resubmitted the registration token, or your application has held on to the registration token for too long. Your SaaS registration website should redeem this token as soon as it is submitted by the buyer's browser.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The submitted registration token has expired. This can happen if the buyer's browser takes too long to redirect to your page, the buyer has resubmitted the registration token, or your application has held on to the registration token for too long. Your SaaS registration website should redeem this token as soon as it is submitted by the buyer's browser.&lt;/p&gt;
function M.ExpiredTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredTokenException(t)
	return t
end

local ResolveCustomerRequest_keys = { "RegistrationToken" = true, nil }

function M.AssertResolveCustomerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCustomerRequest to be of type 'table'")
	assert(struct["RegistrationToken"], "Expected key RegistrationToken to exist in table")
	if struct["RegistrationToken"] then M.AssertNonEmptyString(struct["RegistrationToken"]) end
	for k,_ in pairs(struct) do
		assert(ResolveCustomerRequest_keys[k], "ResolveCustomerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCustomerRequest
-- &lt;p&gt;Contains input to the ResolveCustomer operation.&lt;/p&gt;
-- @param RegistrationToken [NonEmptyString] &lt;p&gt;When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code.&lt;/p&gt;
-- Required parameter: RegistrationToken
function M.ResolveCustomerRequest(RegistrationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCustomerRequest")
	local t = { 
		["RegistrationToken"] = RegistrationToken,
	}
	M.AssertResolveCustomerRequest(t)
	return t
end

local ResolveCustomerResult_keys = { "ProductCode" = true, "CustomerIdentifier" = true, nil }

function M.AssertResolveCustomerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCustomerResult to be of type 'table'")
	if struct["ProductCode"] then M.AssertProductCode(struct["ProductCode"]) end
	if struct["CustomerIdentifier"] then M.AssertCustomerIdentifier(struct["CustomerIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ResolveCustomerResult_keys[k], "ResolveCustomerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCustomerResult
-- &lt;p&gt;The result of the ResolveCustomer operation. Contains the CustomerIdentifier and product code.&lt;/p&gt;
-- @param ProductCode [ProductCode] &lt;p&gt;The product code is returned to confirm that the buyer is registering for your product. Subsequent BatchMeterUsage calls should be made using this product code.&lt;/p&gt;
-- @param CustomerIdentifier [CustomerIdentifier] &lt;p&gt;The CustomerIdentifier is used to identify an individual customer in your application. Calls to BatchMeterUsage require CustomerIdentifiers for each UsageRecord.&lt;/p&gt;
function M.ResolveCustomerResult(ProductCode, CustomerIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCustomerResult")
	local t = { 
		["ProductCode"] = ProductCode,
		["CustomerIdentifier"] = CustomerIdentifier,
	}
	M.AssertResolveCustomerResult(t)
	return t
end

local TimestampOutOfBoundsException_keys = { "message" = true, nil }

function M.AssertTimestampOutOfBoundsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimestampOutOfBoundsException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TimestampOutOfBoundsException_keys[k], "TimestampOutOfBoundsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimestampOutOfBoundsException
-- &lt;p&gt;The timestamp value passed in the meterUsage() is out of allowed range.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The timestamp value passed in the meterUsage() is out of allowed range.&lt;/p&gt;
function M.TimestampOutOfBoundsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimestampOutOfBoundsException")
	local t = { 
		["message"] = message,
	}
	M.AssertTimestampOutOfBoundsException(t)
	return t
end

local BatchMeterUsageResult_keys = { "UnprocessedRecords" = true, "Results" = true, nil }

function M.AssertBatchMeterUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchMeterUsageResult to be of type 'table'")
	if struct["UnprocessedRecords"] then M.AssertUsageRecordList(struct["UnprocessedRecords"]) end
	if struct["Results"] then M.AssertUsageRecordResultList(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(BatchMeterUsageResult_keys[k], "BatchMeterUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchMeterUsageResult
-- &lt;p&gt;Contains the UsageRecords processed by BatchMeterUsage and any records that have failed due to transient error.&lt;/p&gt;
-- @param UnprocessedRecords [UsageRecordList] &lt;p&gt;Contains all UsageRecords that were not processed by BatchMeterUsage. This is a list of UsageRecords. You can retry the failed request by making another BatchMeterUsage call with this list as input in the BatchMeterUsageRequest.&lt;/p&gt;
-- @param Results [UsageRecordResultList] &lt;p&gt;Contains all UsageRecords processed by BatchMeterUsage. These records were either honored by AWS Marketplace Metering Service or were invalid.&lt;/p&gt;
function M.BatchMeterUsageResult(UnprocessedRecords, Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchMeterUsageResult")
	local t = { 
		["UnprocessedRecords"] = UnprocessedRecords,
		["Results"] = Results,
	}
	M.AssertBatchMeterUsageResult(t)
	return t
end

local InvalidTokenException_keys = { "message" = true, nil }

function M.AssertInvalidTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTokenException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTokenException_keys[k], "InvalidTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTokenException
--  
-- @param message [errorMessage]  
function M.InvalidTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidTokenException(t)
	return t
end

local InvalidCustomerIdentifierException_keys = { "message" = true, nil }

function M.AssertInvalidCustomerIdentifierException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCustomerIdentifierException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCustomerIdentifierException_keys[k], "InvalidCustomerIdentifierException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCustomerIdentifierException
-- &lt;p&gt;You have metered usage for a CustomerIdentifier that does not exist.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;You have metered usage for a CustomerIdentifier that does not exist.&lt;/p&gt;
function M.InvalidCustomerIdentifierException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCustomerIdentifierException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidCustomerIdentifierException(t)
	return t
end

local MeterUsageRequest_keys = { "ProductCode" = true, "UsageQuantity" = true, "DryRun" = true, "UsageDimension" = true, "Timestamp" = true, nil }

function M.AssertMeterUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MeterUsageRequest to be of type 'table'")
	assert(struct["ProductCode"], "Expected key ProductCode to exist in table")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["UsageDimension"], "Expected key UsageDimension to exist in table")
	assert(struct["UsageQuantity"], "Expected key UsageQuantity to exist in table")
	assert(struct["DryRun"], "Expected key DryRun to exist in table")
	if struct["ProductCode"] then M.AssertProductCode(struct["ProductCode"]) end
	if struct["UsageQuantity"] then M.AssertUsageQuantity(struct["UsageQuantity"]) end
	if struct["DryRun"] then M.AssertBoolean(struct["DryRun"]) end
	if struct["UsageDimension"] then M.AssertUsageDimension(struct["UsageDimension"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	for k,_ in pairs(struct) do
		assert(MeterUsageRequest_keys[k], "MeterUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MeterUsageRequest
--  
-- @param ProductCode [ProductCode] &lt;p&gt;Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.&lt;/p&gt;
-- @param UsageQuantity [UsageQuantity] &lt;p&gt;Consumption value for the hour.&lt;/p&gt;
-- @param DryRun [Boolean] &lt;p&gt;Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException.&lt;/p&gt;
-- @param UsageDimension [UsageDimension] &lt;p&gt;It will be one of the fcp dimension name provided during the publishing of the product.&lt;/p&gt;
-- @param Timestamp [Timestamp] &lt;p&gt;Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.&lt;/p&gt;
-- Required parameter: ProductCode
-- Required parameter: Timestamp
-- Required parameter: UsageDimension
-- Required parameter: UsageQuantity
-- Required parameter: DryRun
function M.MeterUsageRequest(ProductCode, UsageQuantity, DryRun, UsageDimension, Timestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MeterUsageRequest")
	local t = { 
		["ProductCode"] = ProductCode,
		["UsageQuantity"] = UsageQuantity,
		["DryRun"] = DryRun,
		["UsageDimension"] = UsageDimension,
		["Timestamp"] = Timestamp,
	}
	M.AssertMeterUsageRequest(t)
	return t
end

local MeterUsageResult_keys = { "MeteringRecordId" = true, nil }

function M.AssertMeterUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MeterUsageResult to be of type 'table'")
	if struct["MeteringRecordId"] then M.AssertString(struct["MeteringRecordId"]) end
	for k,_ in pairs(struct) do
		assert(MeterUsageResult_keys[k], "MeterUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MeterUsageResult
--  
-- @param MeteringRecordId [String]  
function M.MeterUsageResult(MeteringRecordId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MeterUsageResult")
	local t = { 
		["MeteringRecordId"] = MeteringRecordId,
	}
	M.AssertMeterUsageResult(t)
	return t
end

local InvalidProductCodeException_keys = { "message" = true, nil }

function M.AssertInvalidProductCodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidProductCodeException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidProductCodeException_keys[k], "InvalidProductCodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidProductCodeException
-- &lt;p&gt;The product code passed does not match the product code used for publishing the product.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The product code passed does not match the product code used for publishing the product.&lt;/p&gt;
function M.InvalidProductCodeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidProductCodeException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidProductCodeException(t)
	return t
end

local InternalServiceErrorException_keys = { "message" = true, nil }

function M.AssertInternalServiceErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceErrorException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServiceErrorException_keys[k], "InternalServiceErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceErrorException
-- &lt;p&gt;An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.&lt;/p&gt;
function M.InternalServiceErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalServiceErrorException(t)
	return t
end

local InvalidEndpointRegionException_keys = { "message" = true, nil }

function M.AssertInvalidEndpointRegionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEndpointRegionException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidEndpointRegionException_keys[k], "InvalidEndpointRegionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEndpointRegionException
-- &lt;p&gt;The endpoint being called is in a region different from your EC2 instance. The region of the Metering service endpoint and the region of the EC2 instance must match.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The endpoint being called is in a region different from your EC2 instance. The region of the Metering service endpoint and the region of the EC2 instance must match.&lt;/p&gt;
function M.InvalidEndpointRegionException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEndpointRegionException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidEndpointRegionException(t)
	return t
end

local UsageRecordResult_keys = { "Status" = true, "UsageRecord" = true, "MeteringRecordId" = true, nil }

function M.AssertUsageRecordResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsageRecordResult to be of type 'table'")
	if struct["Status"] then M.AssertUsageRecordResultStatus(struct["Status"]) end
	if struct["UsageRecord"] then M.AssertUsageRecord(struct["UsageRecord"]) end
	if struct["MeteringRecordId"] then M.AssertString(struct["MeteringRecordId"]) end
	for k,_ in pairs(struct) do
		assert(UsageRecordResult_keys[k], "UsageRecordResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsageRecordResult
-- &lt;p&gt;A UsageRecordResult indicates the status of a given UsageRecord processed by BatchMeterUsage.&lt;/p&gt;
-- @param Status [UsageRecordResultStatus] &lt;p&gt;The UsageRecordResult Status indicates the status of an individual UsageRecord processed by BatchMeterUsage.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;Success&lt;/i&gt;- The UsageRecord was accepted and honored by BatchMeterUsage.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;CustomerNotSubscribed&lt;/i&gt;- The CustomerIdentifier specified is not subscribed to your product. The UsageRecord was not honored. Future UsageRecords for this customer will fail until the customer subscribes to your product.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;DuplicateRecord&lt;/i&gt;- Indicates that the UsageRecord was invalid and not honored. A previously metered UsageRecord had the same customer, dimension, and time, but a different quantity.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param UsageRecord [UsageRecord] &lt;p&gt;The UsageRecord that was part of the BatchMeterUsage request.&lt;/p&gt;
-- @param MeteringRecordId [String] &lt;p&gt;The MeteringRecordId is a unique identifier for this metering event.&lt;/p&gt;
function M.UsageRecordResult(Status, UsageRecord, MeteringRecordId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsageRecordResult")
	local t = { 
		["Status"] = Status,
		["UsageRecord"] = UsageRecord,
		["MeteringRecordId"] = MeteringRecordId,
	}
	M.AssertUsageRecordResult(t)
	return t
end

local BatchMeterUsageRequest_keys = { "UsageRecords" = true, "ProductCode" = true, nil }

function M.AssertBatchMeterUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchMeterUsageRequest to be of type 'table'")
	assert(struct["UsageRecords"], "Expected key UsageRecords to exist in table")
	assert(struct["ProductCode"], "Expected key ProductCode to exist in table")
	if struct["UsageRecords"] then M.AssertUsageRecordList(struct["UsageRecords"]) end
	if struct["ProductCode"] then M.AssertProductCode(struct["ProductCode"]) end
	for k,_ in pairs(struct) do
		assert(BatchMeterUsageRequest_keys[k], "BatchMeterUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchMeterUsageRequest
-- &lt;p&gt;A BatchMeterUsageRequest contains UsageRecords, which indicate quantities of usage within your application.&lt;/p&gt;
-- @param UsageRecords [UsageRecordList] &lt;p&gt;The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.&lt;/p&gt;
-- @param ProductCode [ProductCode] &lt;p&gt;Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.&lt;/p&gt;
-- Required parameter: UsageRecords
-- Required parameter: ProductCode
function M.BatchMeterUsageRequest(UsageRecords, ProductCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchMeterUsageRequest")
	local t = { 
		["UsageRecords"] = UsageRecords,
		["ProductCode"] = ProductCode,
	}
	M.AssertBatchMeterUsageRequest(t)
	return t
end

local InvalidUsageDimensionException_keys = { "message" = true, nil }

function M.AssertInvalidUsageDimensionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUsageDimensionException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidUsageDimensionException_keys[k], "InvalidUsageDimensionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUsageDimensionException
-- &lt;p&gt;The usage dimension does not match one of the UsageDimensions associated with products.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The usage dimension does not match one of the UsageDimensions associated with products.&lt;/p&gt;
function M.InvalidUsageDimensionException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidUsageDimensionException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidUsageDimensionException(t)
	return t
end

local UsageRecord_keys = { "Timestamp" = true, "CustomerIdentifier" = true, "Dimension" = true, "Quantity" = true, nil }

function M.AssertUsageRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsageRecord to be of type 'table'")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["CustomerIdentifier"], "Expected key CustomerIdentifier to exist in table")
	assert(struct["Dimension"], "Expected key Dimension to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["CustomerIdentifier"] then M.AssertCustomerIdentifier(struct["CustomerIdentifier"]) end
	if struct["Dimension"] then M.AssertUsageDimension(struct["Dimension"]) end
	if struct["Quantity"] then M.AssertUsageQuantity(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(UsageRecord_keys[k], "UsageRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsageRecord
-- &lt;p&gt;A UsageRecord indicates a quantity of usage for a given product, customer, dimension and time.&lt;/p&gt; &lt;p&gt;Multiple requests with the same UsageRecords as input will be deduplicated to prevent double charges.&lt;/p&gt;
-- @param Timestamp [Timestamp] &lt;p&gt;Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.&lt;/p&gt; &lt;p&gt;Your application can meter usage for up to one hour in the past.&lt;/p&gt;
-- @param CustomerIdentifier [CustomerIdentifier] &lt;p&gt;The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.&lt;/p&gt;
-- @param Dimension [UsageDimension] &lt;p&gt;During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.&lt;/p&gt;
-- @param Quantity [UsageQuantity] &lt;p&gt;The quantity of usage consumed by the customer for the given dimension and time.&lt;/p&gt;
-- Required parameter: Timestamp
-- Required parameter: CustomerIdentifier
-- Required parameter: Dimension
-- Required parameter: Quantity
function M.UsageRecord(Timestamp, CustomerIdentifier, Dimension, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsageRecord")
	local t = { 
		["Timestamp"] = Timestamp,
		["CustomerIdentifier"] = CustomerIdentifier,
		["Dimension"] = Dimension,
		["Quantity"] = Quantity,
	}
	M.AssertUsageRecord(t)
	return t
end

local ThrottlingException_keys = { "message" = true, nil }

function M.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottlingException_keys[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- &lt;p&gt;The calls to the MeterUsage API are throttled.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The calls to the MeterUsage API are throttled.&lt;/p&gt;
function M.ThrottlingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = message,
	}
	M.AssertThrottlingException(t)
	return t
end

local DuplicateRequestException_keys = { "message" = true, nil }

function M.AssertDuplicateRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequestException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateRequestException_keys[k], "DuplicateRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequestException
-- &lt;p&gt;A metering record has already been emitted by the same EC2 instance for the given {usageDimension, timestamp} with a different usageQuantity.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;A metering record has already been emitted by the same EC2 instance for the given {usageDimension, timestamp} with a different usageQuantity.&lt;/p&gt;
function M.DuplicateRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertDuplicateRequestException(t)
	return t
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

function M.AssertCustomerIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerIdentifier to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomerIdentifier(str)
	M.AssertCustomerIdentifier(str)
	return str
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

function M.AssertUsageRecordResultStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected UsageRecordResultStatus to be of type 'string'")
end

--  
function M.UsageRecordResultStatus(str)
	M.AssertUsageRecordResultStatus(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	M.AsserterrorMessage(str)
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

function M.AssertUsageDimension(str)
	assert(str)
	assert(type(str) == "string", "Expected UsageDimension to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UsageDimension(str)
	M.AssertUsageDimension(str)
	return str
end

function M.AssertUsageQuantity(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UsageQuantity to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
end

function M.UsageQuantity(integer)
	M.AssertUsageQuantity(integer)
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

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertUsageRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected UsageRecordList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		M.AssertUsageRecord(v)
	end
end

--  
-- List of UsageRecord objects
function M.UsageRecordList(list)
	M.AssertUsageRecordList(list)
	return list
end

function M.AssertUsageRecordResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected UsageRecordResultList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUsageRecordResult(v)
	end
end

--  
-- List of UsageRecordResult objects
function M.UsageRecordResultList(list)
	M.AssertUsageRecordResultList(list)
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
			return "metering.marketplace.amazonaws.com"
		end
	end
	local ss = { "metering.marketplace" }
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
--- BatchMeterUsage
-- @param BatchMeterUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchMeterUsageAsync(BatchMeterUsageRequest, cb)
	assert(BatchMeterUsageRequest, "You must provide a BatchMeterUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSMPMeteringService.BatchMeterUsage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchMeterUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- MeterUsage
-- @param MeterUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.MeterUsageAsync(MeterUsageRequest, cb)
	assert(MeterUsageRequest, "You must provide a MeterUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSMPMeteringService.MeterUsage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", MeterUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResolveCustomer
-- @param ResolveCustomerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResolveCustomerAsync(ResolveCustomerRequest, cb)
	assert(ResolveCustomerRequest, "You must provide a ResolveCustomerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSMPMeteringService.ResolveCustomer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResolveCustomerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
