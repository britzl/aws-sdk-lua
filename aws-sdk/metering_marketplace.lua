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

local keys = {}
local asserts = {}

keys.ExpiredTokenException = { ["message"] = true, nil }

function asserts.AssertExpiredTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredTokenException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredTokenException[k], "ExpiredTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredTokenException
-- <p>The submitted registration token has expired. This can happen if the buyer's browser takes too long to redirect to your page, the buyer has resubmitted the registration token, or your application has held on to the registration token for too long. Your SaaS registration website should redeem this token as soon as it is submitted by the buyer's browser.</p>
-- @param _message [errorMessage] 
function M.ExpiredTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExpiredTokenException(t)
	return t
end

keys.ResolveCustomerRequest = { ["RegistrationToken"] = true, nil }

function asserts.AssertResolveCustomerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCustomerRequest to be of type 'table'")
	assert(struct["RegistrationToken"], "Expected key RegistrationToken to exist in table")
	if struct["RegistrationToken"] then asserts.AssertNonEmptyString(struct["RegistrationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveCustomerRequest[k], "ResolveCustomerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCustomerRequest
-- <p>Contains input to the ResolveCustomer operation.</p>
-- @param _RegistrationToken [NonEmptyString] <p>When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code.</p>
-- Required parameter: RegistrationToken
function M.ResolveCustomerRequest(_RegistrationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCustomerRequest")
	local t = { 
		["RegistrationToken"] = _RegistrationToken,
	}
	asserts.AssertResolveCustomerRequest(t)
	return t
end

keys.ResolveCustomerResult = { ["ProductCode"] = true, ["CustomerIdentifier"] = true, nil }

function asserts.AssertResolveCustomerResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveCustomerResult to be of type 'table'")
	if struct["ProductCode"] then asserts.AssertProductCode(struct["ProductCode"]) end
	if struct["CustomerIdentifier"] then asserts.AssertCustomerIdentifier(struct["CustomerIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveCustomerResult[k], "ResolveCustomerResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveCustomerResult
-- <p>The result of the ResolveCustomer operation. Contains the CustomerIdentifier and product code.</p>
-- @param _ProductCode [ProductCode] <p>The product code is returned to confirm that the buyer is registering for your product. Subsequent BatchMeterUsage calls should be made using this product code.</p>
-- @param _CustomerIdentifier [CustomerIdentifier] <p>The CustomerIdentifier is used to identify an individual customer in your application. Calls to BatchMeterUsage require CustomerIdentifiers for each UsageRecord.</p>
function M.ResolveCustomerResult(_ProductCode, _CustomerIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResolveCustomerResult")
	local t = { 
		["ProductCode"] = _ProductCode,
		["CustomerIdentifier"] = _CustomerIdentifier,
	}
	asserts.AssertResolveCustomerResult(t)
	return t
end

keys.TimestampOutOfBoundsException = { ["message"] = true, nil }

function asserts.AssertTimestampOutOfBoundsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimestampOutOfBoundsException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimestampOutOfBoundsException[k], "TimestampOutOfBoundsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimestampOutOfBoundsException
-- <p>The timestamp value passed in the meterUsage() is out of allowed range.</p>
-- @param _message [errorMessage] 
function M.TimestampOutOfBoundsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimestampOutOfBoundsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTimestampOutOfBoundsException(t)
	return t
end

keys.BatchMeterUsageResult = { ["UnprocessedRecords"] = true, ["Results"] = true, nil }

function asserts.AssertBatchMeterUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchMeterUsageResult to be of type 'table'")
	if struct["UnprocessedRecords"] then asserts.AssertUsageRecordList(struct["UnprocessedRecords"]) end
	if struct["Results"] then asserts.AssertUsageRecordResultList(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchMeterUsageResult[k], "BatchMeterUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchMeterUsageResult
-- <p>Contains the UsageRecords processed by BatchMeterUsage and any records that have failed due to transient error.</p>
-- @param _UnprocessedRecords [UsageRecordList] <p>Contains all UsageRecords that were not processed by BatchMeterUsage. This is a list of UsageRecords. You can retry the failed request by making another BatchMeterUsage call with this list as input in the BatchMeterUsageRequest.</p>
-- @param _Results [UsageRecordResultList] <p>Contains all UsageRecords processed by BatchMeterUsage. These records were either honored by AWS Marketplace Metering Service or were invalid.</p>
function M.BatchMeterUsageResult(_UnprocessedRecords, _Results, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchMeterUsageResult")
	local t = { 
		["UnprocessedRecords"] = _UnprocessedRecords,
		["Results"] = _Results,
	}
	asserts.AssertBatchMeterUsageResult(t)
	return t
end

keys.InvalidTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTokenException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTokenException[k], "InvalidTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTokenException
--  
-- @param _message [errorMessage] 
function M.InvalidTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidTokenException(t)
	return t
end

keys.InvalidCustomerIdentifierException = { ["message"] = true, nil }

function asserts.AssertInvalidCustomerIdentifierException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCustomerIdentifierException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCustomerIdentifierException[k], "InvalidCustomerIdentifierException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCustomerIdentifierException
-- <p>You have metered usage for a CustomerIdentifier that does not exist.</p>
-- @param _message [errorMessage] 
function M.InvalidCustomerIdentifierException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCustomerIdentifierException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidCustomerIdentifierException(t)
	return t
end

keys.MeterUsageRequest = { ["ProductCode"] = true, ["UsageQuantity"] = true, ["DryRun"] = true, ["UsageDimension"] = true, ["Timestamp"] = true, nil }

function asserts.AssertMeterUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MeterUsageRequest to be of type 'table'")
	assert(struct["ProductCode"], "Expected key ProductCode to exist in table")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["UsageDimension"], "Expected key UsageDimension to exist in table")
	assert(struct["UsageQuantity"], "Expected key UsageQuantity to exist in table")
	assert(struct["DryRun"], "Expected key DryRun to exist in table")
	if struct["ProductCode"] then asserts.AssertProductCode(struct["ProductCode"]) end
	if struct["UsageQuantity"] then asserts.AssertUsageQuantity(struct["UsageQuantity"]) end
	if struct["DryRun"] then asserts.AssertBoolean(struct["DryRun"]) end
	if struct["UsageDimension"] then asserts.AssertUsageDimension(struct["UsageDimension"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.MeterUsageRequest[k], "MeterUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MeterUsageRequest
--  
-- @param _ProductCode [ProductCode] <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.</p>
-- @param _UsageQuantity [UsageQuantity] <p>Consumption value for the hour.</p>
-- @param _DryRun [Boolean] <p>Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException.</p>
-- @param _UsageDimension [UsageDimension] <p>It will be one of the fcp dimension name provided during the publishing of the product.</p>
-- @param _Timestamp [Timestamp] <p>Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.</p>
-- Required parameter: ProductCode
-- Required parameter: Timestamp
-- Required parameter: UsageDimension
-- Required parameter: UsageQuantity
-- Required parameter: DryRun
function M.MeterUsageRequest(_ProductCode, _UsageQuantity, _DryRun, _UsageDimension, _Timestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MeterUsageRequest")
	local t = { 
		["ProductCode"] = _ProductCode,
		["UsageQuantity"] = _UsageQuantity,
		["DryRun"] = _DryRun,
		["UsageDimension"] = _UsageDimension,
		["Timestamp"] = _Timestamp,
	}
	asserts.AssertMeterUsageRequest(t)
	return t
end

keys.MeterUsageResult = { ["MeteringRecordId"] = true, nil }

function asserts.AssertMeterUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MeterUsageResult to be of type 'table'")
	if struct["MeteringRecordId"] then asserts.AssertString(struct["MeteringRecordId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MeterUsageResult[k], "MeterUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MeterUsageResult
--  
-- @param _MeteringRecordId [String] 
function M.MeterUsageResult(_MeteringRecordId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MeterUsageResult")
	local t = { 
		["MeteringRecordId"] = _MeteringRecordId,
	}
	asserts.AssertMeterUsageResult(t)
	return t
end

keys.InvalidProductCodeException = { ["message"] = true, nil }

function asserts.AssertInvalidProductCodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidProductCodeException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidProductCodeException[k], "InvalidProductCodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidProductCodeException
-- <p>The product code passed does not match the product code used for publishing the product.</p>
-- @param _message [errorMessage] 
function M.InvalidProductCodeException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidProductCodeException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidProductCodeException(t)
	return t
end

keys.InternalServiceErrorException = { ["message"] = true, nil }

function asserts.AssertInternalServiceErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceErrorException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceErrorException[k], "InternalServiceErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceErrorException
-- <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
-- @param _message [errorMessage] 
function M.InternalServiceErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalServiceErrorException(t)
	return t
end

keys.InvalidEndpointRegionException = { ["message"] = true, nil }

function asserts.AssertInvalidEndpointRegionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEndpointRegionException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidEndpointRegionException[k], "InvalidEndpointRegionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEndpointRegionException
-- <p>The endpoint being called is in a region different from your EC2 instance. The region of the Metering service endpoint and the region of the EC2 instance must match.</p>
-- @param _message [errorMessage] 
function M.InvalidEndpointRegionException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEndpointRegionException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidEndpointRegionException(t)
	return t
end

keys.UsageRecordResult = { ["Status"] = true, ["UsageRecord"] = true, ["MeteringRecordId"] = true, nil }

function asserts.AssertUsageRecordResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsageRecordResult to be of type 'table'")
	if struct["Status"] then asserts.AssertUsageRecordResultStatus(struct["Status"]) end
	if struct["UsageRecord"] then asserts.AssertUsageRecord(struct["UsageRecord"]) end
	if struct["MeteringRecordId"] then asserts.AssertString(struct["MeteringRecordId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsageRecordResult[k], "UsageRecordResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsageRecordResult
-- <p>A UsageRecordResult indicates the status of a given UsageRecord processed by BatchMeterUsage.</p>
-- @param _Status [UsageRecordResultStatus] <p>The UsageRecordResult Status indicates the status of an individual UsageRecord processed by BatchMeterUsage.</p> <ul> <li> <p> <i>Success</i>- The UsageRecord was accepted and honored by BatchMeterUsage.</p> </li> <li> <p> <i>CustomerNotSubscribed</i>- The CustomerIdentifier specified is not subscribed to your product. The UsageRecord was not honored. Future UsageRecords for this customer will fail until the customer subscribes to your product.</p> </li> <li> <p> <i>DuplicateRecord</i>- Indicates that the UsageRecord was invalid and not honored. A previously metered UsageRecord had the same customer, dimension, and time, but a different quantity.</p> </li> </ul>
-- @param _UsageRecord [UsageRecord] <p>The UsageRecord that was part of the BatchMeterUsage request.</p>
-- @param _MeteringRecordId [String] <p>The MeteringRecordId is a unique identifier for this metering event.</p>
function M.UsageRecordResult(_Status, _UsageRecord, _MeteringRecordId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsageRecordResult")
	local t = { 
		["Status"] = _Status,
		["UsageRecord"] = _UsageRecord,
		["MeteringRecordId"] = _MeteringRecordId,
	}
	asserts.AssertUsageRecordResult(t)
	return t
end

keys.BatchMeterUsageRequest = { ["UsageRecords"] = true, ["ProductCode"] = true, nil }

function asserts.AssertBatchMeterUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchMeterUsageRequest to be of type 'table'")
	assert(struct["UsageRecords"], "Expected key UsageRecords to exist in table")
	assert(struct["ProductCode"], "Expected key ProductCode to exist in table")
	if struct["UsageRecords"] then asserts.AssertUsageRecordList(struct["UsageRecords"]) end
	if struct["ProductCode"] then asserts.AssertProductCode(struct["ProductCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchMeterUsageRequest[k], "BatchMeterUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchMeterUsageRequest
-- <p>A BatchMeterUsageRequest contains UsageRecords, which indicate quantities of usage within your application.</p>
-- @param _UsageRecords [UsageRecordList] <p>The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.</p>
-- @param _ProductCode [ProductCode] <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.</p>
-- Required parameter: UsageRecords
-- Required parameter: ProductCode
function M.BatchMeterUsageRequest(_UsageRecords, _ProductCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchMeterUsageRequest")
	local t = { 
		["UsageRecords"] = _UsageRecords,
		["ProductCode"] = _ProductCode,
	}
	asserts.AssertBatchMeterUsageRequest(t)
	return t
end

keys.InvalidUsageDimensionException = { ["message"] = true, nil }

function asserts.AssertInvalidUsageDimensionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUsageDimensionException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidUsageDimensionException[k], "InvalidUsageDimensionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUsageDimensionException
-- <p>The usage dimension does not match one of the UsageDimensions associated with products.</p>
-- @param _message [errorMessage] 
function M.InvalidUsageDimensionException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidUsageDimensionException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidUsageDimensionException(t)
	return t
end

keys.UsageRecord = { ["Timestamp"] = true, ["CustomerIdentifier"] = true, ["Dimension"] = true, ["Quantity"] = true, nil }

function asserts.AssertUsageRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsageRecord to be of type 'table'")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["CustomerIdentifier"], "Expected key CustomerIdentifier to exist in table")
	assert(struct["Dimension"], "Expected key Dimension to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["CustomerIdentifier"] then asserts.AssertCustomerIdentifier(struct["CustomerIdentifier"]) end
	if struct["Dimension"] then asserts.AssertUsageDimension(struct["Dimension"]) end
	if struct["Quantity"] then asserts.AssertUsageQuantity(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsageRecord[k], "UsageRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsageRecord
-- <p>A UsageRecord indicates a quantity of usage for a given product, customer, dimension and time.</p> <p>Multiple requests with the same UsageRecords as input will be deduplicated to prevent double charges.</p>
-- @param _Timestamp [Timestamp] <p>Timestamp of the hour, recorded in UTC. The seconds and milliseconds portions of the timestamp will be ignored.</p> <p>Your application can meter usage for up to one hour in the past.</p>
-- @param _CustomerIdentifier [CustomerIdentifier] <p>The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.</p>
-- @param _Dimension [UsageDimension] <p>During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.</p>
-- @param _Quantity [UsageQuantity] <p>The quantity of usage consumed by the customer for the given dimension and time.</p>
-- Required parameter: Timestamp
-- Required parameter: CustomerIdentifier
-- Required parameter: Dimension
-- Required parameter: Quantity
function M.UsageRecord(_Timestamp, _CustomerIdentifier, _Dimension, _Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsageRecord")
	local t = { 
		["Timestamp"] = _Timestamp,
		["CustomerIdentifier"] = _CustomerIdentifier,
		["Dimension"] = _Dimension,
		["Quantity"] = _Quantity,
	}
	asserts.AssertUsageRecord(t)
	return t
end

keys.ThrottlingException = { ["message"] = true, nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The calls to the MeterUsage API are throttled.</p>
-- @param _message [errorMessage] 
function M.ThrottlingException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertThrottlingException(t)
	return t
end

keys.DuplicateRequestException = { ["message"] = true, nil }

function asserts.AssertDuplicateRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequestException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateRequestException[k], "DuplicateRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequestException
-- <p>A metering record has already been emitted by the same EC2 instance for the given {usageDimension, timestamp} with a different usageQuantity.</p>
-- @param _message [errorMessage] 
function M.DuplicateRequestException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRequestException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDuplicateRequestException(t)
	return t
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

function asserts.AssertCustomerIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerIdentifier to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomerIdentifier(str)
	asserts.AssertCustomerIdentifier(str)
	return str
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

function asserts.AssertUsageRecordResultStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected UsageRecordResultStatus to be of type 'string'")
end

--  
function M.UsageRecordResultStatus(str)
	asserts.AssertUsageRecordResultStatus(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertUsageDimension(str)
	assert(str)
	assert(type(str) == "string", "Expected UsageDimension to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UsageDimension(str)
	asserts.AssertUsageDimension(str)
	return str
end

function asserts.AssertUsageQuantity(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UsageQuantity to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
end

function M.UsageQuantity(integer)
	asserts.AssertUsageQuantity(integer)
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertUsageRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected UsageRecordList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertUsageRecord(v)
	end
end

--  
-- List of UsageRecord objects
function M.UsageRecordList(list)
	asserts.AssertUsageRecordList(list)
	return list
end

function asserts.AssertUsageRecordResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected UsageRecordResultList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUsageRecordResult(v)
	end
end

--  
-- List of UsageRecordResult objects
function M.UsageRecordResultList(list)
	asserts.AssertUsageRecordResultList(list)
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
