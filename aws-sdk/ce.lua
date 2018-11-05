--- GENERATED CODE - DO NOT MODIFY
-- AWS Cost Explorer Service (ce-2017-10-25)

local M = {}

M.metadata = {
	api_version = "2017-10-25",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "ce",
	service_abbreviation = "AWS Cost Explorer",
	service_full_name = "AWS Cost Explorer Service",
	signature_version = "v4",
	target_prefix = "AWSInsightsIndexService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "ce-2017-10-25",
}

local keys = {}
local asserts = {}

keys.DimensionValuesWithAttributes = { ["Attributes"] = true, ["Value"] = true, nil }

function asserts.AssertDimensionValuesWithAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DimensionValuesWithAttributes to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.DimensionValuesWithAttributes[k], "DimensionValuesWithAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DimensionValuesWithAttributes
-- <p>The metadata of a specific type that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>The attribute that applies to a specific <code>Dimension</code>.</p>
-- * Value [Value] <p>The value of a dimension with a specific attribute.</p>
-- @return DimensionValuesWithAttributes structure as a key-value pair table
function M.DimensionValuesWithAttributes(args)
	assert(args, "You must provide an argument table when creating DimensionValuesWithAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Value"] = args["Value"],
	}
	asserts.AssertDimensionValuesWithAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationPurchaseRecommendationSummary = { ["CurrencyCode"] = true, ["TotalEstimatedMonthlySavingsPercentage"] = true, ["TotalEstimatedMonthlySavingsAmount"] = true, nil }

function asserts.AssertReservationPurchaseRecommendationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationPurchaseRecommendationSummary to be of type 'table'")
	if struct["CurrencyCode"] then asserts.AssertGenericString(struct["CurrencyCode"]) end
	if struct["TotalEstimatedMonthlySavingsPercentage"] then asserts.AssertGenericString(struct["TotalEstimatedMonthlySavingsPercentage"]) end
	if struct["TotalEstimatedMonthlySavingsAmount"] then asserts.AssertGenericString(struct["TotalEstimatedMonthlySavingsAmount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationPurchaseRecommendationSummary[k], "ReservationPurchaseRecommendationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationPurchaseRecommendationSummary
-- <p>A summary about this recommendation, such as the currency code, the amount that AWS estimates that you could save, and the total amount of reservation to purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrencyCode [GenericString] <p>The currency code used for this recommendation.</p>
-- * TotalEstimatedMonthlySavingsPercentage [GenericString] <p>The total amount that AWS estimates that this recommendation could save you in a month, as a percentage of your costs.</p>
-- * TotalEstimatedMonthlySavingsAmount [GenericString] <p>The total amount that AWS estimates that this recommendation could save you in a month.</p>
-- @return ReservationPurchaseRecommendationSummary structure as a key-value pair table
function M.ReservationPurchaseRecommendationSummary(args)
	assert(args, "You must provide an argument table when creating ReservationPurchaseRecommendationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrencyCode"] = args["CurrencyCode"],
		["TotalEstimatedMonthlySavingsPercentage"] = args["TotalEstimatedMonthlySavingsPercentage"],
		["TotalEstimatedMonthlySavingsAmount"] = args["TotalEstimatedMonthlySavingsAmount"],
	}
	asserts.AssertReservationPurchaseRecommendationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RedshiftInstanceDetails = { ["CurrentGeneration"] = true, ["Region"] = true, ["NodeType"] = true, ["Family"] = true, ["SizeFlexEligible"] = true, nil }

function asserts.AssertRedshiftInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedshiftInstanceDetails to be of type 'table'")
	if struct["CurrentGeneration"] then asserts.AssertGenericBoolean(struct["CurrentGeneration"]) end
	if struct["Region"] then asserts.AssertGenericString(struct["Region"]) end
	if struct["NodeType"] then asserts.AssertGenericString(struct["NodeType"]) end
	if struct["Family"] then asserts.AssertGenericString(struct["Family"]) end
	if struct["SizeFlexEligible"] then asserts.AssertGenericBoolean(struct["SizeFlexEligible"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedshiftInstanceDetails[k], "RedshiftInstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedshiftInstanceDetails
-- <p>Details about the Amazon Redshift instances that AWS recommends that you purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrentGeneration [GenericBoolean] <p>Whether the recommendation is for a current generation instance.</p>
-- * Region [GenericString] <p>The AWS Region of the recommended reservation.</p>
-- * NodeType [GenericString] <p>The type of node that AWS recommends.</p>
-- * Family [GenericString] <p>The instance family of the recommended reservation.</p>
-- * SizeFlexEligible [GenericBoolean] <p>Whether the recommended reservation is size flexible.</p>
-- @return RedshiftInstanceDetails structure as a key-value pair table
function M.RedshiftInstanceDetails(args)
	assert(args, "You must provide an argument table when creating RedshiftInstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrentGeneration"] = args["CurrentGeneration"],
		["Region"] = args["Region"],
		["NodeType"] = args["NodeType"],
		["Family"] = args["Family"],
		["SizeFlexEligible"] = args["SizeFlexEligible"],
	}
	asserts.AssertRedshiftInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataUnavailableException = { ["Message"] = true, nil }

function asserts.AssertDataUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataUnavailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataUnavailableException[k], "DataUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataUnavailableException
-- <p>The requested data is unavailable.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return DataUnavailableException structure as a key-value pair table
function M.DataUnavailableException(args)
	assert(args, "You must provide an argument table when creating DataUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDataUnavailableException(all_args)
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
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The pagination token is invalid. Try again without a pagination token.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
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

keys.DateInterval = { ["Start"] = true, ["End"] = true, nil }

function asserts.AssertDateInterval(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateInterval to be of type 'table'")
	assert(struct["Start"], "Expected key Start to exist in table")
	assert(struct["End"], "Expected key End to exist in table")
	if struct["Start"] then asserts.AssertYearMonthDay(struct["Start"]) end
	if struct["End"] then asserts.AssertYearMonthDay(struct["End"]) end
	for k,_ in pairs(struct) do
		assert(keys.DateInterval[k], "DateInterval contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateInterval
-- <p>The time period that you want the usage and costs for. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Start [YearMonthDay] <p>The beginning of the time period that you want the usage and costs for. The start date is inclusive. For example, if <code>start</code> is <code>2017-01-01</code>, AWS retrieves cost and usage data starting at <code>2017-01-01</code> up to the end date.</p>
-- * End [YearMonthDay] <p>The end of the time period that you want the usage and costs for. The end date is exclusive. For example, if <code>end</code> is <code>2017-05-01</code>, AWS retrieves cost and usage data from the start date up to, but not including, <code>2017-05-01</code>.</p>
-- Required key: Start
-- Required key: End
-- @return DateInterval structure as a key-value pair table
function M.DateInterval(args)
	assert(args, "You must provide an argument table when creating DateInterval")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Start"] = args["Start"],
		["End"] = args["End"],
	}
	asserts.AssertDateInterval(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservationCoverageResponse = { ["NextPageToken"] = true, ["CoveragesByTime"] = true, ["Total"] = true, nil }

function asserts.AssertGetReservationCoverageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservationCoverageResponse to be of type 'table'")
	assert(struct["CoveragesByTime"], "Expected key CoveragesByTime to exist in table")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["CoveragesByTime"] then asserts.AssertCoveragesByTime(struct["CoveragesByTime"]) end
	if struct["Total"] then asserts.AssertCoverage(struct["Total"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservationCoverageResponse[k], "GetReservationCoverageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservationCoverageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * CoveragesByTime [CoveragesByTime] <p>The amount of time that your reservations covered.</p>
-- * Total [Coverage] <p>The total amount of instance usage that is covered by a reservation.</p>
-- Required key: CoveragesByTime
-- @return GetReservationCoverageResponse structure as a key-value pair table
function M.GetReservationCoverageResponse(args)
	assert(args, "You must provide an argument table when creating GetReservationCoverageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["CoveragesByTime"] = args["CoveragesByTime"],
		["Total"] = args["Total"],
	}
	asserts.AssertGetReservationCoverageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservationPurchaseRecommendationRequest = { ["NextPageToken"] = true, ["AccountScope"] = true, ["PageSize"] = true, ["Service"] = true, ["TermInYears"] = true, ["PaymentOption"] = true, ["ServiceSpecification"] = true, ["LookbackPeriodInDays"] = true, ["AccountId"] = true, nil }

function asserts.AssertGetReservationPurchaseRecommendationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservationPurchaseRecommendationRequest to be of type 'table'")
	assert(struct["Service"], "Expected key Service to exist in table")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["AccountScope"] then asserts.AssertAccountScope(struct["AccountScope"]) end
	if struct["PageSize"] then asserts.AssertNonNegativeInteger(struct["PageSize"]) end
	if struct["Service"] then asserts.AssertGenericString(struct["Service"]) end
	if struct["TermInYears"] then asserts.AssertTermInYears(struct["TermInYears"]) end
	if struct["PaymentOption"] then asserts.AssertPaymentOption(struct["PaymentOption"]) end
	if struct["ServiceSpecification"] then asserts.AssertServiceSpecification(struct["ServiceSpecification"]) end
	if struct["LookbackPeriodInDays"] then asserts.AssertLookbackPeriodInDays(struct["LookbackPeriodInDays"]) end
	if struct["AccountId"] then asserts.AssertGenericString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservationPurchaseRecommendationRequest[k], "GetReservationPurchaseRecommendationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservationPurchaseRecommendationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
-- * AccountScope [AccountScope] <p>The account scope that you want recommendations for. <code>PAYER</code> means that AWS includes the master account and any member accounts when it calculates its recommendations. <code>LINKED</code> means that AWS includes only member accounts when it calculates its recommendations.</p> <p>Valid values are <code>PAYER</code> and <code>LINKED</code>.</p>
-- * PageSize [NonNegativeInteger] <p>The number of recommendations that you want returned in a single response object.</p>
-- * Service [GenericString] <p>The specific service that you want recommendations for.</p>
-- * TermInYears [TermInYears] <p>The reservation term that you want recommendations for.</p>
-- * PaymentOption [PaymentOption] <p>The reservation purchase option that you want recommendations for.</p>
-- * ServiceSpecification [ServiceSpecification] <p>The hardware specifications for the service instances that you want recommendations for, such as standard or convertible EC2 instances.</p>
-- * LookbackPeriodInDays [LookbackPeriodInDays] <p>The number of previous days that you want AWS to consider when it calculates your recommendations.</p>
-- * AccountId [GenericString] <p>The account ID that is associated with the recommendation. </p>
-- Required key: Service
-- @return GetReservationPurchaseRecommendationRequest structure as a key-value pair table
function M.GetReservationPurchaseRecommendationRequest(args)
	assert(args, "You must provide an argument table when creating GetReservationPurchaseRecommendationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["AccountScope"] = args["AccountScope"],
		["PageSize"] = args["PageSize"],
		["Service"] = args["Service"],
		["TermInYears"] = args["TermInYears"],
		["PaymentOption"] = args["PaymentOption"],
		["ServiceSpecification"] = args["ServiceSpecification"],
		["LookbackPeriodInDays"] = args["LookbackPeriodInDays"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertGetReservationPurchaseRecommendationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RDSInstanceDetails = { ["Family"] = true, ["LicenseModel"] = true, ["Region"] = true, ["DatabaseEdition"] = true, ["SizeFlexEligible"] = true, ["CurrentGeneration"] = true, ["DeploymentOption"] = true, ["InstanceType"] = true, ["DatabaseEngine"] = true, nil }

function asserts.AssertRDSInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RDSInstanceDetails to be of type 'table'")
	if struct["Family"] then asserts.AssertGenericString(struct["Family"]) end
	if struct["LicenseModel"] then asserts.AssertGenericString(struct["LicenseModel"]) end
	if struct["Region"] then asserts.AssertGenericString(struct["Region"]) end
	if struct["DatabaseEdition"] then asserts.AssertGenericString(struct["DatabaseEdition"]) end
	if struct["SizeFlexEligible"] then asserts.AssertGenericBoolean(struct["SizeFlexEligible"]) end
	if struct["CurrentGeneration"] then asserts.AssertGenericBoolean(struct["CurrentGeneration"]) end
	if struct["DeploymentOption"] then asserts.AssertGenericString(struct["DeploymentOption"]) end
	if struct["InstanceType"] then asserts.AssertGenericString(struct["InstanceType"]) end
	if struct["DatabaseEngine"] then asserts.AssertGenericString(struct["DatabaseEngine"]) end
	for k,_ in pairs(struct) do
		assert(keys.RDSInstanceDetails[k], "RDSInstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RDSInstanceDetails
-- <p>Details about the RDS instances that AWS recommends that you purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Family [GenericString] <p>The instance family of the recommended reservation.</p>
-- * LicenseModel [GenericString] <p>The license model that the recommended reservation supports.</p>
-- * Region [GenericString] <p>The AWS Region of the recommended reservation.</p>
-- * DatabaseEdition [GenericString] <p>The database edition that the recommended reservation supports.</p>
-- * SizeFlexEligible [GenericBoolean] <p>Whether the recommended reservation is size flexible.</p>
-- * CurrentGeneration [GenericBoolean] <p>Whether the recommendation is for a current generation instance. </p>
-- * DeploymentOption [GenericString] <p>Whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.</p>
-- * InstanceType [GenericString] <p>The type of instance that AWS recommends.</p>
-- * DatabaseEngine [GenericString] <p>The database engine that the recommended reservation supports.</p>
-- @return RDSInstanceDetails structure as a key-value pair table
function M.RDSInstanceDetails(args)
	assert(args, "You must provide an argument table when creating RDSInstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Family"] = args["Family"],
		["LicenseModel"] = args["LicenseModel"],
		["Region"] = args["Region"],
		["DatabaseEdition"] = args["DatabaseEdition"],
		["SizeFlexEligible"] = args["SizeFlexEligible"],
		["CurrentGeneration"] = args["CurrentGeneration"],
		["DeploymentOption"] = args["DeploymentOption"],
		["InstanceType"] = args["InstanceType"],
		["DatabaseEngine"] = args["DatabaseEngine"],
	}
	asserts.AssertRDSInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDimensionValuesResponse = { ["TotalSize"] = true, ["DimensionValues"] = true, ["NextPageToken"] = true, ["ReturnSize"] = true, nil }

function asserts.AssertGetDimensionValuesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDimensionValuesResponse to be of type 'table'")
	assert(struct["DimensionValues"], "Expected key DimensionValues to exist in table")
	assert(struct["ReturnSize"], "Expected key ReturnSize to exist in table")
	assert(struct["TotalSize"], "Expected key TotalSize to exist in table")
	if struct["TotalSize"] then asserts.AssertPageSize(struct["TotalSize"]) end
	if struct["DimensionValues"] then asserts.AssertDimensionValuesWithAttributesList(struct["DimensionValues"]) end
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["ReturnSize"] then asserts.AssertPageSize(struct["ReturnSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDimensionValuesResponse[k], "GetDimensionValuesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDimensionValuesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalSize [PageSize] <p>The total number of search results.</p>
-- * DimensionValues [DimensionValuesWithAttributesList] <p>The filters that you used to filter your request. Some dimensions are available only for a specific context:</p> <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p> </li> <li> <p>INSTANCE_TYPE - The type of EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p> </li> <li> <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p> </li> <li> <p>PLATFORM - The EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.</p> </li> <li> <p>SERVICE - The AWS service such as Amazon DynamoDB.</p> </li> <li> <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples include GB and Hrs.</p> </li> <li> <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.</p> </li> <li> <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p> </li> </ul> <p>If you set the context to <code>RESERVATIONS</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p> </li> <li> <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p> </li> <li> <p>INSTANCE_TYPE - The type of EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>PLATFORM - The EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>REGION - The AWS Region.</p> </li> <li> <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p> </li> <li> <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p> </li> <li> <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p> </li> </ul>
-- * NextPageToken [NextPageToken] <p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * ReturnSize [PageSize] <p>The number of results that AWS returned at one time.</p>
-- Required key: DimensionValues
-- Required key: ReturnSize
-- Required key: TotalSize
-- @return GetDimensionValuesResponse structure as a key-value pair table
function M.GetDimensionValuesResponse(args)
	assert(args, "You must provide an argument table when creating GetDimensionValuesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalSize"] = args["TotalSize"],
		["DimensionValues"] = args["DimensionValues"],
		["NextPageToken"] = args["NextPageToken"],
		["ReturnSize"] = args["ReturnSize"],
	}
	asserts.AssertGetDimensionValuesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCostAndUsageRequest = { ["NextPageToken"] = true, ["Metrics"] = true, ["Filter"] = true, ["Granularity"] = true, ["TimePeriod"] = true, ["GroupBy"] = true, nil }

function asserts.AssertGetCostAndUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCostAndUsageRequest to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["Metrics"] then asserts.AssertMetricNames(struct["Metrics"]) end
	if struct["Filter"] then asserts.AssertExpression(struct["Filter"]) end
	if struct["Granularity"] then asserts.AssertGranularity(struct["Granularity"]) end
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["GroupBy"] then asserts.AssertGroupDefinitions(struct["GroupBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCostAndUsageRequest[k], "GetCostAndUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCostAndUsageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * Metrics [MetricNames] <p>Which metrics are returned in the query. For more information about blended and unblended rates, see <a href="https://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation appear on some line items in my bill?</a>. </p> <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>.</p> <note> <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage numbers without taking into account the units. For example, if you aggregate <code>usageQuantity</code> across all of EC2, the results aren't meaningful because EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by <code>UsageType</code> or <code>UsageTypeGroups</code>. </p> </note> <p> <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>
-- * Filter [Expression] <p>Filters AWS costs by different dimensions. For example, you can specify <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated with that account's usage of that service. You can nest <code>Expression</code> objects to define any combination of dimension filters. For more information, see <a href="http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
-- * Granularity [Granularity] <p>Sets the AWS cost granularity to <code>MONTHLY</code> or <code>DAILY</code>. If <code>Granularity</code> isn't set, the response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>. </p>
-- * TimePeriod [DateInterval] <p>Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
-- * GroupBy [GroupDefinitions] <p>You can group AWS costs using up to two different groups, either dimensions, tag keys, or both.</p> <p>When you group by tag key, you get all tag values, including empty strings.</p> <p>Valid values are <code>AZ</code>, <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>LINKED_ACCOUNT</code>, <code>OPERATION</code>, <code>PLATFORM</code>, <code>PURCHASE_TYPE</code>, <code>SERVICE</code>, <code>TAGS</code>, <code>TENANCY</code>, and <code>USAGE_TYPE</code>.</p>
-- @return GetCostAndUsageRequest structure as a key-value pair table
function M.GetCostAndUsageRequest(args)
	assert(args, "You must provide an argument table when creating GetCostAndUsageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Metrics"] = args["Metrics"],
		["Filter"] = args["Filter"],
		["Granularity"] = args["Granularity"],
		["TimePeriod"] = args["TimePeriod"],
		["GroupBy"] = args["GroupBy"],
	}
	asserts.AssertGetCostAndUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationUtilizationGroup = { ["Attributes"] = true, ["Value"] = true, ["Key"] = true, ["Utilization"] = true, nil }

function asserts.AssertReservationUtilizationGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationUtilizationGroup to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["Value"] then asserts.AssertReservationGroupValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertReservationGroupKey(struct["Key"]) end
	if struct["Utilization"] then asserts.AssertReservationAggregates(struct["Utilization"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationUtilizationGroup[k], "ReservationUtilizationGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationUtilizationGroup
-- <p>A group of Reserved Instances (RIs) that share a set of attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>The attributes for this group of RIs.</p>
-- * Value [ReservationGroupValue] <p>The value of a specific RI attribute.</p>
-- * Key [ReservationGroupKey] <p>The key for a specific RI attribute.</p>
-- * Utilization [ReservationAggregates] <p>How much you used this group of RIs.</p>
-- @return ReservationUtilizationGroup structure as a key-value pair table
function M.ReservationUtilizationGroup(args)
	assert(args, "You must provide an argument table when creating ReservationUtilizationGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["Utilization"] = args["Utilization"],
	}
	asserts.AssertReservationUtilizationGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ESInstanceDetails = { ["CurrentGeneration"] = true, ["InstanceClass"] = true, ["Region"] = true, ["InstanceSize"] = true, ["SizeFlexEligible"] = true, nil }

function asserts.AssertESInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ESInstanceDetails to be of type 'table'")
	if struct["CurrentGeneration"] then asserts.AssertGenericBoolean(struct["CurrentGeneration"]) end
	if struct["InstanceClass"] then asserts.AssertGenericString(struct["InstanceClass"]) end
	if struct["Region"] then asserts.AssertGenericString(struct["Region"]) end
	if struct["InstanceSize"] then asserts.AssertGenericString(struct["InstanceSize"]) end
	if struct["SizeFlexEligible"] then asserts.AssertGenericBoolean(struct["SizeFlexEligible"]) end
	for k,_ in pairs(struct) do
		assert(keys.ESInstanceDetails[k], "ESInstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ESInstanceDetails
-- <p>Details about the ES instances that AWS recommends that you purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrentGeneration [GenericBoolean] <p>Whether the recommendation is for a current generation instance.</p>
-- * InstanceClass [GenericString] <p>The class of instance that AWS recommends.</p>
-- * Region [GenericString] <p>The AWS Region of the recommended reservation.</p>
-- * InstanceSize [GenericString] <p>The size of instance that AWS recommends.</p>
-- * SizeFlexEligible [GenericBoolean] <p>Whether the recommended reservation is size flexible.</p>
-- @return ESInstanceDetails structure as a key-value pair table
function M.ESInstanceDetails(args)
	assert(args, "You must provide an argument table when creating ESInstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrentGeneration"] = args["CurrentGeneration"],
		["InstanceClass"] = args["InstanceClass"],
		["Region"] = args["Region"],
		["InstanceSize"] = args["InstanceSize"],
		["SizeFlexEligible"] = args["SizeFlexEligible"],
	}
	asserts.AssertESInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CoverageHours = { ["CoverageHoursPercentage"] = true, ["TotalRunningHours"] = true, ["ReservedHours"] = true, ["OnDemandHours"] = true, nil }

function asserts.AssertCoverageHours(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CoverageHours to be of type 'table'")
	if struct["CoverageHoursPercentage"] then asserts.AssertCoverageHoursPercentage(struct["CoverageHoursPercentage"]) end
	if struct["TotalRunningHours"] then asserts.AssertTotalRunningHours(struct["TotalRunningHours"]) end
	if struct["ReservedHours"] then asserts.AssertReservedHours(struct["ReservedHours"]) end
	if struct["OnDemandHours"] then asserts.AssertOnDemandHours(struct["OnDemandHours"]) end
	for k,_ in pairs(struct) do
		assert(keys.CoverageHours[k], "CoverageHours contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CoverageHours
-- <p>How long a running instance either used a reservation or was On-Demand.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoverageHoursPercentage [CoverageHoursPercentage] <p>The percentage of instance hours that are covered by a reservation.</p>
-- * TotalRunningHours [TotalRunningHours] <p>The total instance usage, in hours.</p>
-- * ReservedHours [ReservedHours] <p>The number of instance running hours that are covered by reservations.</p>
-- * OnDemandHours [OnDemandHours] <p>The number of instance running hours that are covered by On-Demand Instances.</p>
-- @return CoverageHours structure as a key-value pair table
function M.CoverageHours(args)
	assert(args, "You must provide an argument table when creating CoverageHours")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CoverageHoursPercentage"] = args["CoverageHoursPercentage"],
		["TotalRunningHours"] = args["TotalRunningHours"],
		["ReservedHours"] = args["ReservedHours"],
		["OnDemandHours"] = args["OnDemandHours"],
	}
	asserts.AssertCoverageHours(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservationCoverageRequest = { ["Filter"] = true, ["NextPageToken"] = true, ["TimePeriod"] = true, ["GroupBy"] = true, ["Granularity"] = true, nil }

function asserts.AssertGetReservationCoverageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservationCoverageRequest to be of type 'table'")
	assert(struct["TimePeriod"], "Expected key TimePeriod to exist in table")
	if struct["Filter"] then asserts.AssertExpression(struct["Filter"]) end
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["GroupBy"] then asserts.AssertGroupDefinitions(struct["GroupBy"]) end
	if struct["Granularity"] then asserts.AssertGranularity(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservationCoverageRequest[k], "GetReservationCoverageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservationCoverageRequest
-- <p>You can use the following request parameters to query for how much of your instance usage is covered by a reservation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [Expression] <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>SERVICE</p> </li> <li> <p>TAG</p> </li> <li> <p>TENANCY</p> </li> </ul> <p> <code>GetReservationCoverage</code> uses the same <code> <a href="http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> </code> object as the other operations, but only <code>AND</code> is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR'd together.</p> <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to EC2.</p>
-- * NextPageToken [NextPageToken] <p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * TimePeriod [DateInterval] <p>The start and end dates of the period for which you want to retrieve data about reservation coverage. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
-- * GroupBy [GroupDefinitions] <p>You can group the data by the following attributes:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>TAG</p> </li> <li> <p>TENANCY</p> </li> </ul>
-- * Granularity [Granularity] <p>The granularity of the AWS cost data for the reservation. Valid values are <code>MONTHLY</code> and <code>DAILY</code>.</p> <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set, the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
-- Required key: TimePeriod
-- @return GetReservationCoverageRequest structure as a key-value pair table
function M.GetReservationCoverageRequest(args)
	assert(args, "You must provide an argument table when creating GetReservationCoverageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextPageToken"] = args["NextPageToken"],
		["TimePeriod"] = args["TimePeriod"],
		["GroupBy"] = args["GroupBy"],
		["Granularity"] = args["Granularity"],
	}
	asserts.AssertGetReservationCoverageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagsResponse = { ["NextPageToken"] = true, ["TotalSize"] = true, ["ReturnSize"] = true, ["Tags"] = true, nil }

function asserts.AssertGetTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagsResponse to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	assert(struct["ReturnSize"], "Expected key ReturnSize to exist in table")
	assert(struct["TotalSize"], "Expected key TotalSize to exist in table")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["TotalSize"] then asserts.AssertPageSize(struct["TotalSize"]) end
	if struct["ReturnSize"] then asserts.AssertPageSize(struct["ReturnSize"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagsResponse[k], "GetTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * TotalSize [PageSize] <p>The total number of query results.</p>
-- * ReturnSize [PageSize] <p>The number of query results that AWS returns at a time.</p>
-- * Tags [TagList] <p>The tags that match your request.</p>
-- Required key: Tags
-- Required key: ReturnSize
-- Required key: TotalSize
-- @return GetTagsResponse structure as a key-value pair table
function M.GetTagsResponse(args)
	assert(args, "You must provide an argument table when creating GetTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["TotalSize"] = args["TotalSize"],
		["ReturnSize"] = args["ReturnSize"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertGetTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricValue = { ["Amount"] = true, ["Unit"] = true, nil }

function asserts.AssertMetricValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricValue to be of type 'table'")
	if struct["Amount"] then asserts.AssertMetricAmount(struct["Amount"]) end
	if struct["Unit"] then asserts.AssertMetricUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricValue[k], "MetricValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricValue
-- <p>The aggregated value for a metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Amount [MetricAmount] <p>The actual number that represents the metric.</p>
-- * Unit [MetricUnit] <p>The unit that the metric is given in.</p>
-- @return MetricValue structure as a key-value pair table
function M.MetricValue(args)
	assert(args, "You must provide an argument table when creating MetricValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Amount"] = args["Amount"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertMetricValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCostAndUsageResponse = { ["NextPageToken"] = true, ["GroupDefinitions"] = true, ["ResultsByTime"] = true, nil }

function asserts.AssertGetCostAndUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCostAndUsageResponse to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["GroupDefinitions"] then asserts.AssertGroupDefinitions(struct["GroupDefinitions"]) end
	if struct["ResultsByTime"] then asserts.AssertResultsByTime(struct["ResultsByTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCostAndUsageResponse[k], "GetCostAndUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCostAndUsageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * GroupDefinitions [GroupDefinitions] <p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code> parameters in the request.</p>
-- * ResultsByTime [ResultsByTime] <p>The time period that is covered by the results in the response.</p>
-- @return GetCostAndUsageResponse structure as a key-value pair table
function M.GetCostAndUsageResponse(args)
	assert(args, "You must provide an argument table when creating GetCostAndUsageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["GroupDefinitions"] = args["GroupDefinitions"],
		["ResultsByTime"] = args["ResultsByTime"],
	}
	asserts.AssertGetCostAndUsageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationPurchaseRecommendationDetail = { ["AverageUtilization"] = true, ["RecurringStandardMonthlyCost"] = true, ["MinimumNumberOfInstancesUsedPerHour"] = true, ["InstanceDetails"] = true, ["EstimatedMonthlySavingsAmount"] = true, ["AverageNumberOfInstancesUsedPerHour"] = true, ["EstimatedBreakEvenInMonths"] = true, ["CurrencyCode"] = true, ["EstimatedMonthlySavingsPercentage"] = true, ["UpfrontCost"] = true, ["MaximumNormalizedUnitsUsedPerHour"] = true, ["EstimatedReservationCostForLookbackPeriod"] = true, ["MaximumNumberOfInstancesUsedPerHour"] = true, ["EstimatedMonthlyOnDemandCost"] = true, ["RecommendedNormalizedUnitsToPurchase"] = true, ["AverageNormalizedUnitsUsedPerHour"] = true, ["RecommendedNumberOfInstancesToPurchase"] = true, ["MinimumNormalizedUnitsUsedPerHour"] = true, nil }

function asserts.AssertReservationPurchaseRecommendationDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationPurchaseRecommendationDetail to be of type 'table'")
	if struct["AverageUtilization"] then asserts.AssertGenericString(struct["AverageUtilization"]) end
	if struct["RecurringStandardMonthlyCost"] then asserts.AssertGenericString(struct["RecurringStandardMonthlyCost"]) end
	if struct["MinimumNumberOfInstancesUsedPerHour"] then asserts.AssertGenericString(struct["MinimumNumberOfInstancesUsedPerHour"]) end
	if struct["InstanceDetails"] then asserts.AssertInstanceDetails(struct["InstanceDetails"]) end
	if struct["EstimatedMonthlySavingsAmount"] then asserts.AssertGenericString(struct["EstimatedMonthlySavingsAmount"]) end
	if struct["AverageNumberOfInstancesUsedPerHour"] then asserts.AssertGenericString(struct["AverageNumberOfInstancesUsedPerHour"]) end
	if struct["EstimatedBreakEvenInMonths"] then asserts.AssertGenericString(struct["EstimatedBreakEvenInMonths"]) end
	if struct["CurrencyCode"] then asserts.AssertGenericString(struct["CurrencyCode"]) end
	if struct["EstimatedMonthlySavingsPercentage"] then asserts.AssertGenericString(struct["EstimatedMonthlySavingsPercentage"]) end
	if struct["UpfrontCost"] then asserts.AssertGenericString(struct["UpfrontCost"]) end
	if struct["MaximumNormalizedUnitsUsedPerHour"] then asserts.AssertGenericString(struct["MaximumNormalizedUnitsUsedPerHour"]) end
	if struct["EstimatedReservationCostForLookbackPeriod"] then asserts.AssertGenericString(struct["EstimatedReservationCostForLookbackPeriod"]) end
	if struct["MaximumNumberOfInstancesUsedPerHour"] then asserts.AssertGenericString(struct["MaximumNumberOfInstancesUsedPerHour"]) end
	if struct["EstimatedMonthlyOnDemandCost"] then asserts.AssertGenericString(struct["EstimatedMonthlyOnDemandCost"]) end
	if struct["RecommendedNormalizedUnitsToPurchase"] then asserts.AssertGenericString(struct["RecommendedNormalizedUnitsToPurchase"]) end
	if struct["AverageNormalizedUnitsUsedPerHour"] then asserts.AssertGenericString(struct["AverageNormalizedUnitsUsedPerHour"]) end
	if struct["RecommendedNumberOfInstancesToPurchase"] then asserts.AssertGenericString(struct["RecommendedNumberOfInstancesToPurchase"]) end
	if struct["MinimumNormalizedUnitsUsedPerHour"] then asserts.AssertGenericString(struct["MinimumNormalizedUnitsUsedPerHour"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationPurchaseRecommendationDetail[k], "ReservationPurchaseRecommendationDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationPurchaseRecommendationDetail
-- <p>Details about your recommended reservation purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AverageUtilization [GenericString] <p>The average utilization of your instances. AWS uses this to calculate your recommended reservation purchases.</p>
-- * RecurringStandardMonthlyCost [GenericString] <p>How much purchasing this instance costs you on a monthly basis.</p>
-- * MinimumNumberOfInstancesUsedPerHour [GenericString] <p>The minimum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>
-- * InstanceDetails [InstanceDetails] <p>Details about the instances that AWS recommends that you purchase.</p>
-- * EstimatedMonthlySavingsAmount [GenericString] <p>How much AWS estimates that this specific recommendation could save you in a month.</p>
-- * AverageNumberOfInstancesUsedPerHour [GenericString] <p>The average number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>
-- * EstimatedBreakEvenInMonths [GenericString] <p>How long AWS estimates that it takes for this instance to start saving you money, in months.</p>
-- * CurrencyCode [GenericString] <p>The currency code that AWS used to calculate the costs for this instance.</p>
-- * EstimatedMonthlySavingsPercentage [GenericString] <p>How much AWS estimates that this specific recommendation could save you in a month, as a percentage of your overall costs.</p>
-- * UpfrontCost [GenericString] <p>How much purchasing this instance costs you upfront.</p>
-- * MaximumNormalizedUnitsUsedPerHour [GenericString] <p>The maximum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>
-- * EstimatedReservationCostForLookbackPeriod [GenericString] <p>How much AWS estimates that you would have spent for all usage during the specified historical period if you had had a reservation.</p>
-- * MaximumNumberOfInstancesUsedPerHour [GenericString] <p>The maximum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>
-- * EstimatedMonthlyOnDemandCost [GenericString] <p>How much AWS estimates that you spend on On-Demand Instances in a month.</p>
-- * RecommendedNormalizedUnitsToPurchase [GenericString] <p>The number of normalized units that AWS recommends that you purchase.</p>
-- * AverageNormalizedUnitsUsedPerHour [GenericString] <p>The average number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>
-- * RecommendedNumberOfInstancesToPurchase [GenericString] <p>The number of instances that AWS recommends that you purchase.</p>
-- * MinimumNormalizedUnitsUsedPerHour [GenericString] <p>The minimum number of hours that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>
-- @return ReservationPurchaseRecommendationDetail structure as a key-value pair table
function M.ReservationPurchaseRecommendationDetail(args)
	assert(args, "You must provide an argument table when creating ReservationPurchaseRecommendationDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AverageUtilization"] = args["AverageUtilization"],
		["RecurringStandardMonthlyCost"] = args["RecurringStandardMonthlyCost"],
		["MinimumNumberOfInstancesUsedPerHour"] = args["MinimumNumberOfInstancesUsedPerHour"],
		["InstanceDetails"] = args["InstanceDetails"],
		["EstimatedMonthlySavingsAmount"] = args["EstimatedMonthlySavingsAmount"],
		["AverageNumberOfInstancesUsedPerHour"] = args["AverageNumberOfInstancesUsedPerHour"],
		["EstimatedBreakEvenInMonths"] = args["EstimatedBreakEvenInMonths"],
		["CurrencyCode"] = args["CurrencyCode"],
		["EstimatedMonthlySavingsPercentage"] = args["EstimatedMonthlySavingsPercentage"],
		["UpfrontCost"] = args["UpfrontCost"],
		["MaximumNormalizedUnitsUsedPerHour"] = args["MaximumNormalizedUnitsUsedPerHour"],
		["EstimatedReservationCostForLookbackPeriod"] = args["EstimatedReservationCostForLookbackPeriod"],
		["MaximumNumberOfInstancesUsedPerHour"] = args["MaximumNumberOfInstancesUsedPerHour"],
		["EstimatedMonthlyOnDemandCost"] = args["EstimatedMonthlyOnDemandCost"],
		["RecommendedNormalizedUnitsToPurchase"] = args["RecommendedNormalizedUnitsToPurchase"],
		["AverageNormalizedUnitsUsedPerHour"] = args["AverageNormalizedUnitsUsedPerHour"],
		["RecommendedNumberOfInstancesToPurchase"] = args["RecommendedNumberOfInstancesToPurchase"],
		["MinimumNormalizedUnitsUsedPerHour"] = args["MinimumNormalizedUnitsUsedPerHour"],
	}
	asserts.AssertReservationPurchaseRecommendationDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceSpecification = { ["EC2Specification"] = true, nil }

function asserts.AssertServiceSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSpecification to be of type 'table'")
	if struct["EC2Specification"] then asserts.AssertEC2Specification(struct["EC2Specification"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceSpecification[k], "ServiceSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSpecification
-- <p>Hardware specifications for the service that you want recommendations for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2Specification [EC2Specification] <p>The EC2 hardware specifications that you want AWS to provide recommendations for.</p>
-- @return ServiceSpecification structure as a key-value pair table
function M.ServiceSpecification(args)
	assert(args, "You must provide an argument table when creating ServiceSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2Specification"] = args["EC2Specification"],
	}
	asserts.AssertServiceSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElastiCacheInstanceDetails = { ["ProductDescription"] = true, ["NodeType"] = true, ["Family"] = true, ["Region"] = true, ["CurrentGeneration"] = true, ["SizeFlexEligible"] = true, nil }

function asserts.AssertElastiCacheInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElastiCacheInstanceDetails to be of type 'table'")
	if struct["ProductDescription"] then asserts.AssertGenericString(struct["ProductDescription"]) end
	if struct["NodeType"] then asserts.AssertGenericString(struct["NodeType"]) end
	if struct["Family"] then asserts.AssertGenericString(struct["Family"]) end
	if struct["Region"] then asserts.AssertGenericString(struct["Region"]) end
	if struct["CurrentGeneration"] then asserts.AssertGenericBoolean(struct["CurrentGeneration"]) end
	if struct["SizeFlexEligible"] then asserts.AssertGenericBoolean(struct["SizeFlexEligible"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElastiCacheInstanceDetails[k], "ElastiCacheInstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElastiCacheInstanceDetails
-- <p>Details about the ElastiCache instances that AWS recommends that you purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProductDescription [GenericString] <p>The description of the recommended reservation.</p>
-- * NodeType [GenericString] <p>The type of node that AWS recommends.</p>
-- * Family [GenericString] <p>The instance family of the recommended reservation.</p>
-- * Region [GenericString] <p>The AWS Region of the recommended reservation.</p>
-- * CurrentGeneration [GenericBoolean] <p>Whether the recommendation is for a current generation instance.</p>
-- * SizeFlexEligible [GenericBoolean] <p>Whether the recommended reservation is size flexible.</p>
-- @return ElastiCacheInstanceDetails structure as a key-value pair table
function M.ElastiCacheInstanceDetails(args)
	assert(args, "You must provide an argument table when creating ElastiCacheInstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProductDescription"] = args["ProductDescription"],
		["NodeType"] = args["NodeType"],
		["Family"] = args["Family"],
		["Region"] = args["Region"],
		["CurrentGeneration"] = args["CurrentGeneration"],
		["SizeFlexEligible"] = args["SizeFlexEligible"],
	}
	asserts.AssertElastiCacheInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Group = { ["Keys"] = true, ["Metrics"] = true, nil }

function asserts.AssertGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Group to be of type 'table'")
	if struct["Keys"] then asserts.AssertKeys(struct["Keys"]) end
	if struct["Metrics"] then asserts.AssertMetrics(struct["Metrics"]) end
	for k,_ in pairs(struct) do
		assert(keys.Group[k], "Group contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Group
-- <p>One level of grouped data within the results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Keys [Keys] <p>The keys that are included in this group.</p>
-- * Metrics [Metrics] <p>The metrics that are included in this group.</p>
-- @return Group structure as a key-value pair table
function M.Group(args)
	assert(args, "You must provide an argument table when creating Group")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Keys"] = args["Keys"],
		["Metrics"] = args["Metrics"],
	}
	asserts.AssertGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceDetails = { ["ESInstanceDetails"] = true, ["ElastiCacheInstanceDetails"] = true, ["RDSInstanceDetails"] = true, ["EC2InstanceDetails"] = true, ["RedshiftInstanceDetails"] = true, nil }

function asserts.AssertInstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceDetails to be of type 'table'")
	if struct["ESInstanceDetails"] then asserts.AssertESInstanceDetails(struct["ESInstanceDetails"]) end
	if struct["ElastiCacheInstanceDetails"] then asserts.AssertElastiCacheInstanceDetails(struct["ElastiCacheInstanceDetails"]) end
	if struct["RDSInstanceDetails"] then asserts.AssertRDSInstanceDetails(struct["RDSInstanceDetails"]) end
	if struct["EC2InstanceDetails"] then asserts.AssertEC2InstanceDetails(struct["EC2InstanceDetails"]) end
	if struct["RedshiftInstanceDetails"] then asserts.AssertRedshiftInstanceDetails(struct["RedshiftInstanceDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceDetails[k], "InstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceDetails
-- <p>Details about the instances that AWS recommends that you purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ESInstanceDetails [ESInstanceDetails] <p>The Amazon ES instances that AWS recommends that you purchase.</p>
-- * ElastiCacheInstanceDetails [ElastiCacheInstanceDetails] <p>The ElastiCache instances that AWS recommends that you purchase.</p>
-- * RDSInstanceDetails [RDSInstanceDetails] <p>The RDS instances that AWS recommends that you purchase.</p>
-- * EC2InstanceDetails [EC2InstanceDetails] <p>The EC2 instances that AWS recommends that you purchase.</p>
-- * RedshiftInstanceDetails [RedshiftInstanceDetails] <p>The Amazon Redshift instances that AWS recommends that you purchase.</p>
-- @return InstanceDetails structure as a key-value pair table
function M.InstanceDetails(args)
	assert(args, "You must provide an argument table when creating InstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ESInstanceDetails"] = args["ESInstanceDetails"],
		["ElastiCacheInstanceDetails"] = args["ElastiCacheInstanceDetails"],
		["RDSInstanceDetails"] = args["RDSInstanceDetails"],
		["EC2InstanceDetails"] = args["EC2InstanceDetails"],
		["RedshiftInstanceDetails"] = args["RedshiftInstanceDetails"],
	}
	asserts.AssertInstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResultByTime = { ["Estimated"] = true, ["TimePeriod"] = true, ["Total"] = true, ["Groups"] = true, nil }

function asserts.AssertResultByTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultByTime to be of type 'table'")
	if struct["Estimated"] then asserts.AssertEstimated(struct["Estimated"]) end
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["Total"] then asserts.AssertMetrics(struct["Total"]) end
	if struct["Groups"] then asserts.AssertGroups(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResultByTime[k], "ResultByTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultByTime
-- <p>The result that is associated with a time period.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Estimated [Estimated] <p>Whether this result is estimated.</p>
-- * TimePeriod [DateInterval] <p>The time period covered by a result.</p>
-- * Total [Metrics] <p>The total amount of cost or usage accrued during the time period.</p>
-- * Groups [Groups] <p>The groups that are included in this time period.</p>
-- @return ResultByTime structure as a key-value pair table
function M.ResultByTime(args)
	assert(args, "You must provide an argument table when creating ResultByTime")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Estimated"] = args["Estimated"],
		["TimePeriod"] = args["TimePeriod"],
		["Total"] = args["Total"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertResultByTime(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>You made too many calls in a short period of time. Try again later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagValues = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertTagValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagValues to be of type 'table'")
	if struct["Values"] then asserts.AssertValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagValues[k], "TagValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagValues
-- <p>The values that are available for a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [Values] <p>The specific value of a tag.</p>
-- * Key [TagKey] <p>The key for a tag.</p>
-- @return TagValues structure as a key-value pair table
function M.TagValues(args)
	assert(args, "You must provide an argument table when creating TagValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertTagValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DimensionValues = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertDimensionValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DimensionValues to be of type 'table'")
	if struct["Values"] then asserts.AssertValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertDimension(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.DimensionValues[k], "DimensionValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DimensionValues
-- <p>The metadata that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [Values] <p>The metadata values that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>
-- * Key [Dimension] <p>The names of the metadata types that you can use to filter and group your results. For example, <code>AZ</code> returns a list of Availability Zones.</p>
-- @return DimensionValues structure as a key-value pair table
function M.DimensionValues(args)
	assert(args, "You must provide an argument table when creating DimensionValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertDimensionValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationAggregates = { ["TotalAmortizedFee"] = true, ["UtilizationPercentage"] = true, ["PurchasedHours"] = true, ["NetRISavings"] = true, ["TotalActualHours"] = true, ["AmortizedRecurringFee"] = true, ["UnusedHours"] = true, ["TotalPotentialRISavings"] = true, ["OnDemandCostOfRIHoursUsed"] = true, ["AmortizedUpfrontFee"] = true, nil }

function asserts.AssertReservationAggregates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationAggregates to be of type 'table'")
	if struct["TotalAmortizedFee"] then asserts.AssertTotalAmortizedFee(struct["TotalAmortizedFee"]) end
	if struct["UtilizationPercentage"] then asserts.AssertUtilizationPercentage(struct["UtilizationPercentage"]) end
	if struct["PurchasedHours"] then asserts.AssertPurchasedHours(struct["PurchasedHours"]) end
	if struct["NetRISavings"] then asserts.AssertNetRISavings(struct["NetRISavings"]) end
	if struct["TotalActualHours"] then asserts.AssertTotalActualHours(struct["TotalActualHours"]) end
	if struct["AmortizedRecurringFee"] then asserts.AssertAmortizedRecurringFee(struct["AmortizedRecurringFee"]) end
	if struct["UnusedHours"] then asserts.AssertUnusedHours(struct["UnusedHours"]) end
	if struct["TotalPotentialRISavings"] then asserts.AssertTotalPotentialRISavings(struct["TotalPotentialRISavings"]) end
	if struct["OnDemandCostOfRIHoursUsed"] then asserts.AssertOnDemandCostOfRIHoursUsed(struct["OnDemandCostOfRIHoursUsed"]) end
	if struct["AmortizedUpfrontFee"] then asserts.AssertAmortizedUpfrontFee(struct["AmortizedUpfrontFee"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationAggregates[k], "ReservationAggregates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationAggregates
-- <p>The aggregated numbers for your Reserved Instance (RI) usage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalAmortizedFee [TotalAmortizedFee] <p>The total cost of your RI, amortized over the RI period.</p>
-- * UtilizationPercentage [UtilizationPercentage] <p>The percentage of RI time that you used.</p>
-- * PurchasedHours [PurchasedHours] <p>How many RI hours that you purchased.</p>
-- * NetRISavings [NetRISavings] <p>How much you saved due to purchasing and utilizing RIs. AWS calculates this by subtracting <code>TotalAmortizedFee</code> from <code>OnDemandCostOfRIHoursUsed</code>.</p>
-- * TotalActualHours [TotalActualHours] <p>The total number of RI hours that you used.</p>
-- * AmortizedRecurringFee [AmortizedRecurringFee] <p>The monthly cost of your RI, amortized over the RI period.</p>
-- * UnusedHours [UnusedHours] <p>The number of RI hours that you didn't use.</p>
-- * TotalPotentialRISavings [TotalPotentialRISavings] <p>How much you could save if you use your entire reservation.</p>
-- * OnDemandCostOfRIHoursUsed [OnDemandCostOfRIHoursUsed] <p>How much your RIs would cost if charged On-Demand rates.</p>
-- * AmortizedUpfrontFee [AmortizedUpfrontFee] <p>The upfront cost of your RI, amortized over the RI period.</p>
-- @return ReservationAggregates structure as a key-value pair table
function M.ReservationAggregates(args)
	assert(args, "You must provide an argument table when creating ReservationAggregates")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalAmortizedFee"] = args["TotalAmortizedFee"],
		["UtilizationPercentage"] = args["UtilizationPercentage"],
		["PurchasedHours"] = args["PurchasedHours"],
		["NetRISavings"] = args["NetRISavings"],
		["TotalActualHours"] = args["TotalActualHours"],
		["AmortizedRecurringFee"] = args["AmortizedRecurringFee"],
		["UnusedHours"] = args["UnusedHours"],
		["TotalPotentialRISavings"] = args["TotalPotentialRISavings"],
		["OnDemandCostOfRIHoursUsed"] = args["OnDemandCostOfRIHoursUsed"],
		["AmortizedUpfrontFee"] = args["AmortizedUpfrontFee"],
	}
	asserts.AssertReservationAggregates(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDimensionValuesRequest = { ["NextPageToken"] = true, ["TimePeriod"] = true, ["SearchString"] = true, ["Dimension"] = true, ["Context"] = true, nil }

function asserts.AssertGetDimensionValuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDimensionValuesRequest to be of type 'table'")
	assert(struct["TimePeriod"], "Expected key TimePeriod to exist in table")
	assert(struct["Dimension"], "Expected key Dimension to exist in table")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["SearchString"] then asserts.AssertSearchString(struct["SearchString"]) end
	if struct["Dimension"] then asserts.AssertDimension(struct["Dimension"]) end
	if struct["Context"] then asserts.AssertContext(struct["Context"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDimensionValuesRequest[k], "GetDimensionValuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDimensionValuesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * TimePeriod [DateInterval] <p>The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
-- * SearchString [SearchString] <p>The value that you want to search the filter values for.</p>
-- * Dimension [Dimension] <p>The name of the dimension. Each <code>Dimension</code> is available for different a <code>Context</code>. For more information, see <code>Context</code>.</p>
-- * Context [Context] <p>The context for the call to <code>GetDimensionValues</code>. This can be <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>. The default value is <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the resulting dimension values can be used in the <code>GetReservationUtilization</code> operation. If the context is set to <code>COST_AND_USAGE</code> the resulting dimension values can be used in the <code>GetCostAndUsage</code> operation.</p> <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p> </li> <li> <p>INSTANCE_TYPE - The type of EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p> </li> <li> <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p> </li> <li> <p>PLATFORM - The EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.</p> </li> <li> <p>SERVICE - The AWS service such as Amazon DynamoDB.</p> </li> <li> <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples include GB and Hrs.</p> </li> <li> <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.</p> </li> <li> <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p> </li> </ul> <p>If you set the context to <code>RESERVATIONS</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p> </li> <li> <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p> </li> <li> <p>INSTANCE_TYPE - The type of EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>PLATFORM - The EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>REGION - The AWS Region.</p> </li> <li> <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p> </li> <li> <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p> </li> <li> <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p> </li> </ul>
-- Required key: TimePeriod
-- Required key: Dimension
-- @return GetDimensionValuesRequest structure as a key-value pair table
function M.GetDimensionValuesRequest(args)
	assert(args, "You must provide an argument table when creating GetDimensionValuesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["TimePeriod"] = args["TimePeriod"],
		["SearchString"] = args["SearchString"],
		["Dimension"] = args["Dimension"],
		["Context"] = args["Context"],
	}
	asserts.AssertGetDimensionValuesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Coverage = { ["CoverageHours"] = true, nil }

function asserts.AssertCoverage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Coverage to be of type 'table'")
	if struct["CoverageHours"] then asserts.AssertCoverageHours(struct["CoverageHours"]) end
	for k,_ in pairs(struct) do
		assert(keys.Coverage[k], "Coverage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Coverage
-- <p>The amount of instance usage that a reservation covered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoverageHours [CoverageHours] <p>The amount of instance usage that a reservation covered, in hours.</p>
-- @return Coverage structure as a key-value pair table
function M.Coverage(args)
	assert(args, "You must provide an argument table when creating Coverage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CoverageHours"] = args["CoverageHours"],
	}
	asserts.AssertCoverage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationCoverageGroup = { ["Attributes"] = true, ["Coverage"] = true, nil }

function asserts.AssertReservationCoverageGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationCoverageGroup to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["Coverage"] then asserts.AssertCoverage(struct["Coverage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationCoverageGroup[k], "ReservationCoverageGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationCoverageGroup
-- <p>A group of reservations that share a set of attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>The attributes for this group of reservations.</p>
-- * Coverage [Coverage] <p>How much instance usage this group of reservations covered.</p>
-- @return ReservationCoverageGroup structure as a key-value pair table
function M.ReservationCoverageGroup(args)
	assert(args, "You must provide an argument table when creating ReservationCoverageGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Coverage"] = args["Coverage"],
	}
	asserts.AssertReservationCoverageGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Expression = { ["And"] = true, ["Not"] = true, ["Tags"] = true, ["Or"] = true, ["Dimensions"] = true, nil }

function asserts.AssertExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Expression to be of type 'table'")
	if struct["And"] then asserts.AssertExpressions(struct["And"]) end
	if struct["Not"] then asserts.AssertExpression(struct["Not"]) end
	if struct["Tags"] then asserts.AssertTagValues(struct["Tags"]) end
	if struct["Or"] then asserts.AssertExpressions(struct["Or"]) end
	if struct["Dimensions"] then asserts.AssertDimensionValues(struct["Dimensions"]) end
	for k,_ in pairs(struct) do
		assert(keys.Expression[k], "Expression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Expression
-- <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p> <ul> <li> <p>Simple dimension values - You can set the dimension name and values for the filters that you plan to use. For example, you can filter for <code>INSTANCE_TYPE==m4.xlarge OR INSTANCE_TYPE==c4.large</code>. The <code>Expression</code> for that looks like this:</p> <p> <code>{ "Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.xlarge", “c4.large” ] } }</code> </p> <p>The list of dimension values are OR'd together to retrieve cost or usage data. You can create <code>Expression</code> and <code>DimensionValues</code> objects using either <code>with*</code> methods or <code>set*</code> methods in multiple lines. </p> </li> <li> <p>Compound dimension values with logical operations - You can use multiple <code>Expression</code> types and the logical operators <code>AND/OR/NOT</code> to create a list of one or more <code>Expression</code> objects. This allows you to filter on more advanced options. For example, you can filter on <code>((INSTANCE_TYPE == m4.large OR INSTANCE_TYPE == m3.large) OR (TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)</code>. The <code>Expression</code> for that looks like this:</p> <p> <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.x.large", "c4.large" ] }}, {"Tags": { "Key": "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] } </code> </p> <note> <p>Because each <code>Expression</code> can have only one operator, the service returns an error if more than one is specified. The following example shows an <code>Expression</code> object that creates an error.</p> </note> <p> <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE", "Values": [ "DataTransfer" ] } } </code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * And [Expressions] <p>Return results that match both <code>Dimension</code> objects.</p>
-- * Not [Expression] <p>Return results that don't match a <code>Dimension</code> object.</p>
-- * Tags [TagValues] <p>The specific <code>Tag</code> to use for <code>Expression</code>.</p>
-- * Or [Expressions] <p>Return results that match either <code>Dimension</code> object.</p>
-- * Dimensions [DimensionValues] <p>The specific <code>Dimension</code> to use for <code>Expression</code>.</p>
-- @return Expression structure as a key-value pair table
function M.Expression(args)
	assert(args, "You must provide an argument table when creating Expression")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["And"] = args["And"],
		["Not"] = args["Not"],
		["Tags"] = args["Tags"],
		["Or"] = args["Or"],
		["Dimensions"] = args["Dimensions"],
	}
	asserts.AssertExpression(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GroupDefinition = { ["Type"] = true, ["Key"] = true, nil }

function asserts.AssertGroupDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupDefinition to be of type 'table'")
	if struct["Type"] then asserts.AssertGroupDefinitionType(struct["Type"]) end
	if struct["Key"] then asserts.AssertGroupDefinitionKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupDefinition[k], "GroupDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupDefinition
-- <p>Represents a group when you specify a group by criteria, or in the response to a query with a specific grouping.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [GroupDefinitionType] <p>The string that represents the type of group.</p>
-- * Key [GroupDefinitionKey] <p>The string that represents a key for a specified group.</p>
-- @return GroupDefinition structure as a key-value pair table
function M.GroupDefinition(args)
	assert(args, "You must provide an argument table when creating GroupDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Key"] = args["Key"],
	}
	asserts.AssertGroupDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2Specification = { ["OfferingClass"] = true, nil }

function asserts.AssertEC2Specification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2Specification to be of type 'table'")
	if struct["OfferingClass"] then asserts.AssertOfferingClass(struct["OfferingClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2Specification[k], "EC2Specification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2Specification
-- <p>The EC2 hardware specifications that you want AWS to provide recommendations for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingClass [OfferingClass] <p>Whether you want a recommendation for standard or convertible reservations.</p>
-- @return EC2Specification structure as a key-value pair table
function M.EC2Specification(args)
	assert(args, "You must provide an argument table when creating EC2Specification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingClass"] = args["OfferingClass"],
	}
	asserts.AssertEC2Specification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestChangedException = { ["Message"] = true, nil }

function asserts.AssertRequestChangedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestChangedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestChangedException[k], "RequestChangedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestChangedException
-- <p>Your request parameters changed between pages. Try again with the old parameters or without a pagination token.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return RequestChangedException structure as a key-value pair table
function M.RequestChangedException(args)
	assert(args, "You must provide an argument table when creating RequestChangedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertRequestChangedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationPurchaseRecommendationMetadata = { ["GenerationTimestamp"] = true, ["RecommendationId"] = true, nil }

function asserts.AssertReservationPurchaseRecommendationMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationPurchaseRecommendationMetadata to be of type 'table'")
	if struct["GenerationTimestamp"] then asserts.AssertGenericString(struct["GenerationTimestamp"]) end
	if struct["RecommendationId"] then asserts.AssertGenericString(struct["RecommendationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationPurchaseRecommendationMetadata[k], "ReservationPurchaseRecommendationMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationPurchaseRecommendationMetadata
-- <p>Information about this specific recommendation, such as the time stamp for when AWS made a specific recommendation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GenerationTimestamp [GenericString] <p>The time stamp for when AWS made this recommendation.</p>
-- * RecommendationId [GenericString] <p>The ID for this specific recommendation.</p>
-- @return ReservationPurchaseRecommendationMetadata structure as a key-value pair table
function M.ReservationPurchaseRecommendationMetadata(args)
	assert(args, "You must provide an argument table when creating ReservationPurchaseRecommendationMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GenerationTimestamp"] = args["GenerationTimestamp"],
		["RecommendationId"] = args["RecommendationId"],
	}
	asserts.AssertReservationPurchaseRecommendationMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2InstanceDetails = { ["AvailabilityZone"] = true, ["Family"] = true, ["SizeFlexEligible"] = true, ["Region"] = true, ["CurrentGeneration"] = true, ["Platform"] = true, ["Tenancy"] = true, ["InstanceType"] = true, nil }

function asserts.AssertEC2InstanceDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2InstanceDetails to be of type 'table'")
	if struct["AvailabilityZone"] then asserts.AssertGenericString(struct["AvailabilityZone"]) end
	if struct["Family"] then asserts.AssertGenericString(struct["Family"]) end
	if struct["SizeFlexEligible"] then asserts.AssertGenericBoolean(struct["SizeFlexEligible"]) end
	if struct["Region"] then asserts.AssertGenericString(struct["Region"]) end
	if struct["CurrentGeneration"] then asserts.AssertGenericBoolean(struct["CurrentGeneration"]) end
	if struct["Platform"] then asserts.AssertGenericString(struct["Platform"]) end
	if struct["Tenancy"] then asserts.AssertGenericString(struct["Tenancy"]) end
	if struct["InstanceType"] then asserts.AssertGenericString(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2InstanceDetails[k], "EC2InstanceDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2InstanceDetails
-- <p>Details about the EC2 instances that AWS recommends that you purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailabilityZone [GenericString] <p>The Availability Zone of the recommended reservation.</p>
-- * Family [GenericString] <p>The instance family of the recommended reservation.</p>
-- * SizeFlexEligible [GenericBoolean] <p>Whether the recommended reservation is size flexible.</p>
-- * Region [GenericString] <p>The AWS Region of the recommended reservation.</p>
-- * CurrentGeneration [GenericBoolean] <p>Whether the recommendation is for a current generation instance. </p>
-- * Platform [GenericString] <p>The platform of the recommended reservation. The platform is the specific combination of operating system, license model, and software on an instance.</p>
-- * Tenancy [GenericString] <p>Whether the recommended reservation is dedicated or shared.</p>
-- * InstanceType [GenericString] <p>The type of instance that AWS recommends.</p>
-- @return EC2InstanceDetails structure as a key-value pair table
function M.EC2InstanceDetails(args)
	assert(args, "You must provide an argument table when creating EC2InstanceDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Family"] = args["Family"],
		["SizeFlexEligible"] = args["SizeFlexEligible"],
		["Region"] = args["Region"],
		["CurrentGeneration"] = args["CurrentGeneration"],
		["Platform"] = args["Platform"],
		["Tenancy"] = args["Tenancy"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertEC2InstanceDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservationUtilizationResponse = { ["NextPageToken"] = true, ["Total"] = true, ["UtilizationsByTime"] = true, nil }

function asserts.AssertGetReservationUtilizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservationUtilizationResponse to be of type 'table'")
	assert(struct["UtilizationsByTime"], "Expected key UtilizationsByTime to exist in table")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["Total"] then asserts.AssertReservationAggregates(struct["Total"]) end
	if struct["UtilizationsByTime"] then asserts.AssertUtilizationsByTime(struct["UtilizationsByTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservationUtilizationResponse[k], "GetReservationUtilizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservationUtilizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * Total [ReservationAggregates] <p>The total amount of time that you utilized your RIs.</p>
-- * UtilizationsByTime [UtilizationsByTime] <p>The amount of time that you utilized your RIs.</p>
-- Required key: UtilizationsByTime
-- @return GetReservationUtilizationResponse structure as a key-value pair table
function M.GetReservationUtilizationResponse(args)
	assert(args, "You must provide an argument table when creating GetReservationUtilizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Total"] = args["Total"],
		["UtilizationsByTime"] = args["UtilizationsByTime"],
	}
	asserts.AssertGetReservationUtilizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UtilizationByTime = { ["TimePeriod"] = true, ["Total"] = true, ["Groups"] = true, nil }

function asserts.AssertUtilizationByTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UtilizationByTime to be of type 'table'")
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["Total"] then asserts.AssertReservationAggregates(struct["Total"]) end
	if struct["Groups"] then asserts.AssertReservationUtilizationGroups(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.UtilizationByTime[k], "UtilizationByTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UtilizationByTime
-- <p>The amount of utilization, in hours.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimePeriod [DateInterval] <p>The period of time over which this utilization was used.</p>
-- * Total [ReservationAggregates] <p>The total number of RI hours that were used.</p>
-- * Groups [ReservationUtilizationGroups] <p>The groups that are included in this utilization result.</p>
-- @return UtilizationByTime structure as a key-value pair table
function M.UtilizationByTime(args)
	assert(args, "You must provide an argument table when creating UtilizationByTime")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimePeriod"] = args["TimePeriod"],
		["Total"] = args["Total"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertUtilizationByTime(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagsRequest = { ["NextPageToken"] = true, ["TagKey"] = true, ["TimePeriod"] = true, ["SearchString"] = true, nil }

function asserts.AssertGetTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagsRequest to be of type 'table'")
	assert(struct["TimePeriod"], "Expected key TimePeriod to exist in table")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["TagKey"] then asserts.AssertTagKey(struct["TagKey"]) end
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["SearchString"] then asserts.AssertSearchString(struct["SearchString"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagsRequest[k], "GetTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * TagKey [TagKey] <p>The key of the tag that you want to return values for.</p>
-- * TimePeriod [DateInterval] <p>The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
-- * SearchString [SearchString] <p>The value that you want to search for.</p>
-- Required key: TimePeriod
-- @return GetTagsRequest structure as a key-value pair table
function M.GetTagsRequest(args)
	assert(args, "You must provide an argument table when creating GetTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["TagKey"] = args["TagKey"],
		["TimePeriod"] = args["TimePeriod"],
		["SearchString"] = args["SearchString"],
	}
	asserts.AssertGetTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationPurchaseRecommendation = { ["AccountScope"] = true, ["TermInYears"] = true, ["PaymentOption"] = true, ["ServiceSpecification"] = true, ["RecommendationSummary"] = true, ["LookbackPeriodInDays"] = true, ["RecommendationDetails"] = true, nil }

function asserts.AssertReservationPurchaseRecommendation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationPurchaseRecommendation to be of type 'table'")
	if struct["AccountScope"] then asserts.AssertAccountScope(struct["AccountScope"]) end
	if struct["TermInYears"] then asserts.AssertTermInYears(struct["TermInYears"]) end
	if struct["PaymentOption"] then asserts.AssertPaymentOption(struct["PaymentOption"]) end
	if struct["ServiceSpecification"] then asserts.AssertServiceSpecification(struct["ServiceSpecification"]) end
	if struct["RecommendationSummary"] then asserts.AssertReservationPurchaseRecommendationSummary(struct["RecommendationSummary"]) end
	if struct["LookbackPeriodInDays"] then asserts.AssertLookbackPeriodInDays(struct["LookbackPeriodInDays"]) end
	if struct["RecommendationDetails"] then asserts.AssertReservationPurchaseRecommendationDetails(struct["RecommendationDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationPurchaseRecommendation[k], "ReservationPurchaseRecommendation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationPurchaseRecommendation
-- <p>A specific reservation that AWS recommends for purchase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountScope [AccountScope] <p>The account scope that AWS recommends that you purchase this instance for. For example, you can purchase this reservation for an entire organization in AWS Organizations.</p>
-- * TermInYears [TermInYears] <p>The term of the reservation that you want recommendations for, in years.</p>
-- * PaymentOption [PaymentOption] <p>The payment option for the reservation. For example, <code>AllUpfront</code> or <code>NoUpfront</code>.</p>
-- * ServiceSpecification [ServiceSpecification] <p>Hardware specifications for the service that you want recommendations for.</p>
-- * RecommendationSummary [ReservationPurchaseRecommendationSummary] <p>A summary about the recommended purchase.</p>
-- * LookbackPeriodInDays [LookbackPeriodInDays] <p>How many days of previous usage that AWS considers when making this recommendation.</p>
-- * RecommendationDetails [ReservationPurchaseRecommendationDetails] <p>Details about the recommended purchases.</p>
-- @return ReservationPurchaseRecommendation structure as a key-value pair table
function M.ReservationPurchaseRecommendation(args)
	assert(args, "You must provide an argument table when creating ReservationPurchaseRecommendation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountScope"] = args["AccountScope"],
		["TermInYears"] = args["TermInYears"],
		["PaymentOption"] = args["PaymentOption"],
		["ServiceSpecification"] = args["ServiceSpecification"],
		["RecommendationSummary"] = args["RecommendationSummary"],
		["LookbackPeriodInDays"] = args["LookbackPeriodInDays"],
		["RecommendationDetails"] = args["RecommendationDetails"],
	}
	asserts.AssertReservationPurchaseRecommendation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CoverageByTime = { ["TimePeriod"] = true, ["Total"] = true, ["Groups"] = true, nil }

function asserts.AssertCoverageByTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CoverageByTime to be of type 'table'")
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["Total"] then asserts.AssertCoverage(struct["Total"]) end
	if struct["Groups"] then asserts.AssertReservationCoverageGroups(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CoverageByTime[k], "CoverageByTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CoverageByTime
-- <p>Reservation coverage for a specified period, in hours.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimePeriod [DateInterval] <p>The period over which this coverage was used.</p>
-- * Total [Coverage] <p>The total reservation coverage, in hours.</p>
-- * Groups [ReservationCoverageGroups] <p>The groups of instances that are covered by a reservation.</p>
-- @return CoverageByTime structure as a key-value pair table
function M.CoverageByTime(args)
	assert(args, "You must provide an argument table when creating CoverageByTime")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimePeriod"] = args["TimePeriod"],
		["Total"] = args["Total"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertCoverageByTime(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservationUtilizationRequest = { ["Filter"] = true, ["NextPageToken"] = true, ["TimePeriod"] = true, ["GroupBy"] = true, ["Granularity"] = true, nil }

function asserts.AssertGetReservationUtilizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservationUtilizationRequest to be of type 'table'")
	assert(struct["TimePeriod"], "Expected key TimePeriod to exist in table")
	if struct["Filter"] then asserts.AssertExpression(struct["Filter"]) end
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["TimePeriod"] then asserts.AssertDateInterval(struct["TimePeriod"]) end
	if struct["GroupBy"] then asserts.AssertGroupDefinitions(struct["GroupBy"]) end
	if struct["Granularity"] then asserts.AssertGranularity(struct["Granularity"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservationUtilizationRequest[k], "GetReservationUtilizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservationUtilizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [Expression] <p>Filters utilization data by dimensions. You can filter by the following dimensions:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>SERVICE</p> </li> <li> <p>SCOPE</p> </li> <li> <p>TENANCY</p> </li> </ul> <p> <code>GetReservationUtilization</code> uses the same <code> <a href="http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> </code> object as the other operations, but only <code>AND</code> is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.</p>
-- * NextPageToken [NextPageToken] <p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>
-- * TimePeriod [DateInterval] <p>Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
-- * GroupBy [GroupDefinitions] <p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>
-- * Granularity [Granularity] <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set, the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>. If both <code>GroupBy</code> and <code>Granularity</code> aren't set, <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p>
-- Required key: TimePeriod
-- @return GetReservationUtilizationRequest structure as a key-value pair table
function M.GetReservationUtilizationRequest(args)
	assert(args, "You must provide an argument table when creating GetReservationUtilizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextPageToken"] = args["NextPageToken"],
		["TimePeriod"] = args["TimePeriod"],
		["GroupBy"] = args["GroupBy"],
		["Granularity"] = args["Granularity"],
	}
	asserts.AssertGetReservationUtilizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BillExpirationException = { ["Message"] = true, nil }

function asserts.AssertBillExpirationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BillExpirationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BillExpirationException[k], "BillExpirationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BillExpirationException
-- <p>The requested report expired. Update the date interval and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return BillExpirationException structure as a key-value pair table
function M.BillExpirationException(args)
	assert(args, "You must provide an argument table when creating BillExpirationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertBillExpirationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservationPurchaseRecommendationResponse = { ["NextPageToken"] = true, ["Recommendations"] = true, ["Metadata"] = true, nil }

function asserts.AssertGetReservationPurchaseRecommendationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservationPurchaseRecommendationResponse to be of type 'table'")
	if struct["NextPageToken"] then asserts.AssertNextPageToken(struct["NextPageToken"]) end
	if struct["Recommendations"] then asserts.AssertReservationPurchaseRecommendations(struct["Recommendations"]) end
	if struct["Metadata"] then asserts.AssertReservationPurchaseRecommendationMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservationPurchaseRecommendationResponse[k], "GetReservationPurchaseRecommendationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservationPurchaseRecommendationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageToken [NextPageToken] <p>The pagination token for the next set of retrievable results.</p>
-- * Recommendations [ReservationPurchaseRecommendations] <p>Recommendations for reservations to purchase.</p>
-- * Metadata [ReservationPurchaseRecommendationMetadata] <p>Information about this specific recommendation call, such as the time stamp for when Cost Explorer generated this recommendation.</p>
-- @return GetReservationPurchaseRecommendationResponse structure as a key-value pair table
function M.GetReservationPurchaseRecommendationResponse(args)
	assert(args, "You must provide an argument table when creating GetReservationPurchaseRecommendationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageToken"] = args["NextPageToken"],
		["Recommendations"] = args["Recommendations"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertGetReservationPurchaseRecommendationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertOfferingClass(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingClass to be of type 'string'")
end

--  
function M.OfferingClass(str)
	asserts.AssertOfferingClass(str)
	return str
end

function asserts.AssertNextPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextPageToken to be of type 'string'")
end

--  
function M.NextPageToken(str)
	asserts.AssertNextPageToken(str)
	return str
end

function asserts.AssertUtilizationPercentage(str)
	assert(str)
	assert(type(str) == "string", "Expected UtilizationPercentage to be of type 'string'")
end

--  
function M.UtilizationPercentage(str)
	asserts.AssertUtilizationPercentage(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertAccountScope(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountScope to be of type 'string'")
end

--  
function M.AccountScope(str)
	asserts.AssertAccountScope(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertEntity(str)
	assert(str)
	assert(type(str) == "string", "Expected Entity to be of type 'string'")
end

--  
function M.Entity(str)
	asserts.AssertEntity(str)
	return str
end

function asserts.AssertTotalRunningHours(str)
	assert(str)
	assert(type(str) == "string", "Expected TotalRunningHours to be of type 'string'")
end

--  
function M.TotalRunningHours(str)
	asserts.AssertTotalRunningHours(str)
	return str
end

function asserts.AssertTotalActualHours(str)
	assert(str)
	assert(type(str) == "string", "Expected TotalActualHours to be of type 'string'")
end

--  
function M.TotalActualHours(str)
	asserts.AssertTotalActualHours(str)
	return str
end

function asserts.AssertOnDemandHours(str)
	assert(str)
	assert(type(str) == "string", "Expected OnDemandHours to be of type 'string'")
end

--  
function M.OnDemandHours(str)
	asserts.AssertOnDemandHours(str)
	return str
end

function asserts.AssertUnusedHours(str)
	assert(str)
	assert(type(str) == "string", "Expected UnusedHours to be of type 'string'")
end

--  
function M.UnusedHours(str)
	asserts.AssertUnusedHours(str)
	return str
end

function asserts.AssertGroupDefinitionType(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupDefinitionType to be of type 'string'")
end

--  
function M.GroupDefinitionType(str)
	asserts.AssertGroupDefinitionType(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertLookbackPeriodInDays(str)
	assert(str)
	assert(type(str) == "string", "Expected LookbackPeriodInDays to be of type 'string'")
end

--  
function M.LookbackPeriodInDays(str)
	asserts.AssertLookbackPeriodInDays(str)
	return str
end

function asserts.AssertCoverageHoursPercentage(str)
	assert(str)
	assert(type(str) == "string", "Expected CoverageHoursPercentage to be of type 'string'")
end

--  
function M.CoverageHoursPercentage(str)
	asserts.AssertCoverageHoursPercentage(str)
	return str
end

function asserts.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

--  
function M.GenericString(str)
	asserts.AssertGenericString(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertAmortizedRecurringFee(str)
	assert(str)
	assert(type(str) == "string", "Expected AmortizedRecurringFee to be of type 'string'")
end

--  
function M.AmortizedRecurringFee(str)
	asserts.AssertAmortizedRecurringFee(str)
	return str
end

function asserts.AssertTotalAmortizedFee(str)
	assert(str)
	assert(type(str) == "string", "Expected TotalAmortizedFee to be of type 'string'")
end

--  
function M.TotalAmortizedFee(str)
	asserts.AssertTotalAmortizedFee(str)
	return str
end

function asserts.AssertReservationGroupValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationGroupValue to be of type 'string'")
end

--  
function M.ReservationGroupValue(str)
	asserts.AssertReservationGroupValue(str)
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

function asserts.AssertPaymentOption(str)
	assert(str)
	assert(type(str) == "string", "Expected PaymentOption to be of type 'string'")
end

--  
function M.PaymentOption(str)
	asserts.AssertPaymentOption(str)
	return str
end

function asserts.AssertOnDemandCostOfRIHoursUsed(str)
	assert(str)
	assert(type(str) == "string", "Expected OnDemandCostOfRIHoursUsed to be of type 'string'")
end

--  
function M.OnDemandCostOfRIHoursUsed(str)
	asserts.AssertOnDemandCostOfRIHoursUsed(str)
	return str
end

function asserts.AssertTermInYears(str)
	assert(str)
	assert(type(str) == "string", "Expected TermInYears to be of type 'string'")
end

--  
function M.TermInYears(str)
	asserts.AssertTermInYears(str)
	return str
end

function asserts.AssertYearMonthDay(str)
	assert(str)
	assert(type(str) == "string", "Expected YearMonthDay to be of type 'string'")
end

--  
function M.YearMonthDay(str)
	asserts.AssertYearMonthDay(str)
	return str
end

function asserts.AssertPurchasedHours(str)
	assert(str)
	assert(type(str) == "string", "Expected PurchasedHours to be of type 'string'")
end

--  
function M.PurchasedHours(str)
	asserts.AssertPurchasedHours(str)
	return str
end

function asserts.AssertDimension(str)
	assert(str)
	assert(type(str) == "string", "Expected Dimension to be of type 'string'")
end

--  
function M.Dimension(str)
	asserts.AssertDimension(str)
	return str
end

function asserts.AssertSearchString(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchString to be of type 'string'")
end

--  
function M.SearchString(str)
	asserts.AssertSearchString(str)
	return str
end

function asserts.AssertAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeType to be of type 'string'")
end

--  
function M.AttributeType(str)
	asserts.AssertAttributeType(str)
	return str
end

function asserts.AssertMetricAmount(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricAmount to be of type 'string'")
end

--  
function M.MetricAmount(str)
	asserts.AssertMetricAmount(str)
	return str
end

function asserts.AssertTotalPotentialRISavings(str)
	assert(str)
	assert(type(str) == "string", "Expected TotalPotentialRISavings to be of type 'string'")
end

--  
function M.TotalPotentialRISavings(str)
	asserts.AssertTotalPotentialRISavings(str)
	return str
end

function asserts.AssertReservationGroupKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationGroupKey to be of type 'string'")
end

--  
function M.ReservationGroupKey(str)
	asserts.AssertReservationGroupKey(str)
	return str
end

function asserts.AssertNetRISavings(str)
	assert(str)
	assert(type(str) == "string", "Expected NetRISavings to be of type 'string'")
end

--  
function M.NetRISavings(str)
	asserts.AssertNetRISavings(str)
	return str
end

function asserts.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	asserts.AssertMetricUnit(str)
	return str
end

function asserts.AssertGroupDefinitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupDefinitionKey to be of type 'string'")
end

--  
function M.GroupDefinitionKey(str)
	asserts.AssertGroupDefinitionKey(str)
	return str
end

function asserts.AssertAmortizedUpfrontFee(str)
	assert(str)
	assert(type(str) == "string", "Expected AmortizedUpfrontFee to be of type 'string'")
end

--  
function M.AmortizedUpfrontFee(str)
	asserts.AssertAmortizedUpfrontFee(str)
	return str
end

function asserts.AssertGranularity(str)
	assert(str)
	assert(type(str) == "string", "Expected Granularity to be of type 'string'")
end

--  
function M.Granularity(str)
	asserts.AssertGranularity(str)
	return str
end

function asserts.AssertContext(str)
	assert(str)
	assert(type(str) == "string", "Expected Context to be of type 'string'")
end

--  
function M.Context(str)
	asserts.AssertContext(str)
	return str
end

function asserts.AssertReservedHours(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservedHours to be of type 'string'")
end

--  
function M.ReservedHours(str)
	asserts.AssertReservedHours(str)
	return str
end

function asserts.AssertNonNegativeInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NonNegativeInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NonNegativeInteger(integer)
	asserts.AssertNonNegativeInteger(integer)
	return integer
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertGenericBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected GenericBoolean to be of type 'boolean'")
end

function M.GenericBoolean(boolean)
	asserts.AssertGenericBoolean(boolean)
	return boolean
end

function asserts.AssertEstimated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Estimated to be of type 'boolean'")
end

function M.Estimated(boolean)
	asserts.AssertEstimated(boolean)
	return boolean
end

function asserts.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeType(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.Attributes(map)
	asserts.AssertAttributes(map)
	return map
end

function asserts.AssertMetrics(map)
	assert(map)
	assert(type(map) == "table", "Expected Metrics to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertMetricName(k)
		asserts.AssertMetricValue(v)
	end
end

function M.Metrics(map)
	asserts.AssertMetrics(map)
	return map
end

function asserts.AssertResultsByTime(list)
	assert(list)
	assert(type(list) == "table", "Expected ResultsByTime to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResultByTime(v)
	end
end

--  
-- List of ResultByTime objects
function M.ResultsByTime(list)
	asserts.AssertResultsByTime(list)
	return list
end

function asserts.AssertReservationPurchaseRecommendationDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservationPurchaseRecommendationDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservationPurchaseRecommendationDetail(v)
	end
end

--  
-- List of ReservationPurchaseRecommendationDetail objects
function M.ReservationPurchaseRecommendationDetails(list)
	asserts.AssertReservationPurchaseRecommendationDetails(list)
	return list
end

function asserts.AssertMetricNames(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricName(v)
	end
end

--  
-- List of MetricName objects
function M.MetricNames(list)
	asserts.AssertMetricNames(list)
	return list
end

function asserts.AssertReservationUtilizationGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservationUtilizationGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservationUtilizationGroup(v)
	end
end

--  
-- List of ReservationUtilizationGroup objects
function M.ReservationUtilizationGroups(list)
	asserts.AssertReservationUtilizationGroups(list)
	return list
end

function asserts.AssertGroupDefinitions(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupDefinitions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupDefinition(v)
	end
end

--  
-- List of GroupDefinition objects
function M.GroupDefinitions(list)
	asserts.AssertGroupDefinitions(list)
	return list
end

function asserts.AssertCoveragesByTime(list)
	assert(list)
	assert(type(list) == "table", "Expected CoveragesByTime to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCoverageByTime(v)
	end
end

--  
-- List of CoverageByTime objects
function M.CoveragesByTime(list)
	asserts.AssertCoveragesByTime(list)
	return list
end

function asserts.AssertKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected Keys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKey(v)
	end
end

--  
-- List of Key objects
function M.Keys(list)
	asserts.AssertKeys(list)
	return list
end

function asserts.AssertGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected Groups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroup(v)
	end
end

--  
-- List of Group objects
function M.Groups(list)
	asserts.AssertGroups(list)
	return list
end

function asserts.AssertReservationCoverageGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservationCoverageGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservationCoverageGroup(v)
	end
end

--  
-- List of ReservationCoverageGroup objects
function M.ReservationCoverageGroups(list)
	asserts.AssertReservationCoverageGroups(list)
	return list
end

function asserts.AssertReservationPurchaseRecommendations(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservationPurchaseRecommendations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservationPurchaseRecommendation(v)
	end
end

--  
-- List of ReservationPurchaseRecommendation objects
function M.ReservationPurchaseRecommendations(list)
	asserts.AssertReservationPurchaseRecommendations(list)
	return list
end

function asserts.AssertDimensionValuesWithAttributesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionValuesWithAttributesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDimensionValuesWithAttributes(v)
	end
end

--  
-- List of DimensionValuesWithAttributes objects
function M.DimensionValuesWithAttributesList(list)
	asserts.AssertDimensionValuesWithAttributesList(list)
	return list
end

function asserts.AssertUtilizationsByTime(list)
	assert(list)
	assert(type(list) == "table", "Expected UtilizationsByTime to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUtilizationByTime(v)
	end
end

--  
-- List of UtilizationByTime objects
function M.UtilizationsByTime(list)
	asserts.AssertUtilizationsByTime(list)
	return list
end

function asserts.AssertValues(list)
	assert(list)
	assert(type(list) == "table", "Expected Values to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValue(v)
	end
end

--  
-- List of Value objects
function M.Values(list)
	asserts.AssertValues(list)
	return list
end

function asserts.AssertExpressions(list)
	assert(list)
	assert(type(list) == "table", "Expected Expressions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExpression(v)
	end
end

--  
-- List of Expression objects
function M.Expressions(list)
	asserts.AssertExpressions(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEntity(v)
	end
end

--  
-- List of Entity objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "ce.amazonaws.com"
		end
	end
	local ss = { "ce" }
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
--- Call GetTags asynchronously, invoking a callback when done
-- @param GetTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTagsAsync(GetTagsRequest, cb)
	assert(GetTagsRequest, "You must provide a GetTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSInsightsIndexService.GetTags",
	}
	for header,value in pairs(GetTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTagsSync(GetTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTagsAsync(GetTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReservationPurchaseRecommendation asynchronously, invoking a callback when done
-- @param GetReservationPurchaseRecommendationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetReservationPurchaseRecommendationAsync(GetReservationPurchaseRecommendationRequest, cb)
	assert(GetReservationPurchaseRecommendationRequest, "You must provide a GetReservationPurchaseRecommendationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSInsightsIndexService.GetReservationPurchaseRecommendation",
	}
	for header,value in pairs(GetReservationPurchaseRecommendationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetReservationPurchaseRecommendationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReservationPurchaseRecommendation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReservationPurchaseRecommendationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetReservationPurchaseRecommendationSync(GetReservationPurchaseRecommendationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReservationPurchaseRecommendationAsync(GetReservationPurchaseRecommendationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReservationUtilization asynchronously, invoking a callback when done
-- @param GetReservationUtilizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetReservationUtilizationAsync(GetReservationUtilizationRequest, cb)
	assert(GetReservationUtilizationRequest, "You must provide a GetReservationUtilizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSInsightsIndexService.GetReservationUtilization",
	}
	for header,value in pairs(GetReservationUtilizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetReservationUtilizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReservationUtilization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReservationUtilizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetReservationUtilizationSync(GetReservationUtilizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReservationUtilizationAsync(GetReservationUtilizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDimensionValues asynchronously, invoking a callback when done
-- @param GetDimensionValuesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDimensionValuesAsync(GetDimensionValuesRequest, cb)
	assert(GetDimensionValuesRequest, "You must provide a GetDimensionValuesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSInsightsIndexService.GetDimensionValues",
	}
	for header,value in pairs(GetDimensionValuesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDimensionValuesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDimensionValues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDimensionValuesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDimensionValuesSync(GetDimensionValuesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDimensionValuesAsync(GetDimensionValuesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCostAndUsage asynchronously, invoking a callback when done
-- @param GetCostAndUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCostAndUsageAsync(GetCostAndUsageRequest, cb)
	assert(GetCostAndUsageRequest, "You must provide a GetCostAndUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSInsightsIndexService.GetCostAndUsage",
	}
	for header,value in pairs(GetCostAndUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCostAndUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCostAndUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCostAndUsageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCostAndUsageSync(GetCostAndUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCostAndUsageAsync(GetCostAndUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReservationCoverage asynchronously, invoking a callback when done
-- @param GetReservationCoverageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetReservationCoverageAsync(GetReservationCoverageRequest, cb)
	assert(GetReservationCoverageRequest, "You must provide a GetReservationCoverageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSInsightsIndexService.GetReservationCoverage",
	}
	for header,value in pairs(GetReservationCoverageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetReservationCoverageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReservationCoverage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReservationCoverageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetReservationCoverageSync(GetReservationCoverageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReservationCoverageAsync(GetReservationCoverageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
