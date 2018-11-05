--- GENERATED CODE - DO NOT MODIFY
-- Amazon Route 53 Domains (route53domains-2014-05-15)

local M = {}

M.metadata = {
	api_version = "2014-05-15",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "route53domains",
	service_abbreviation = "",
	service_full_name = "Amazon Route 53 Domains",
	signature_version = "v4",
	target_prefix = "Route53Domains_v20140515",
	timestamp_format = "",
	global_endpoint = "",
	uid = "route53domains-2014-05-15",
}

local keys = {}
local asserts = {}

keys.UpdateTagsForDomainRequest = { ["TagsToUpdate"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateTagsForDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagsForDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["TagsToUpdate"] then asserts.AssertTagList(struct["TagsToUpdate"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTagsForDomainRequest[k], "UpdateTagsForDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagsForDomainRequest
-- <p>The UpdateTagsForDomainRequest includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagsToUpdate [TagList] <p>A list of the tag keys and values that you want to add or update. If you specify a key that already exists, the corresponding value will be replaced.</p>
-- * DomainName [DomainName] <p>The domain for which you want to add or update tags.</p>
-- Required key: DomainName
-- @return UpdateTagsForDomainRequest structure as a key-value pair table
function M.UpdateTagsForDomainRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTagsForDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagsToUpdate"] = args["TagsToUpdate"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateTagsForDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableDomainAutoRenewRequest = { ["DomainName"] = true, nil }

function asserts.AssertDisableDomainAutoRenewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainAutoRenewRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableDomainAutoRenewRequest[k], "DisableDomainAutoRenewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainAutoRenewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to disable automatic renewal for.</p>
-- Required key: DomainName
-- @return DisableDomainAutoRenewRequest structure as a key-value pair table
function M.DisableDomainAutoRenewRequest(args)
	assert(args, "You must provide an argument table when creating DisableDomainAutoRenewRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDisableDomainAutoRenewRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BillingRecord = { ["Operation"] = true, ["InvoiceId"] = true, ["Price"] = true, ["BillDate"] = true, ["DomainName"] = true, nil }

function asserts.AssertBillingRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BillingRecord to be of type 'table'")
	if struct["Operation"] then asserts.AssertOperationType(struct["Operation"]) end
	if struct["InvoiceId"] then asserts.AssertInvoiceId(struct["InvoiceId"]) end
	if struct["Price"] then asserts.AssertPrice(struct["Price"]) end
	if struct["BillDate"] then asserts.AssertTimestamp(struct["BillDate"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BillingRecord[k], "BillingRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BillingRecord
-- <p>Information for one billing record.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operation [OperationType] <p>The operation that you were charged for.</p>
-- * InvoiceId [InvoiceId] <p>The ID of the invoice that is associated with the billing record.</p>
-- * Price [Price] <p>The price that you were charged for the operation, in US dollars.</p> <p>Example value: 12.0</p>
-- * BillDate [Timestamp] <p>The date that the operation was billed, in Unix format.</p>
-- * DomainName [DomainName] <p>The name of the domain that the billing record applies to. If the domain name contains characters other than a-z, 0-9, and - (hyphen), such as an internationalized domain name, then this value is in Punycode. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the <i>Amazon Route 53 Developer Guidezzz</i>.</p>
-- @return BillingRecord structure as a key-value pair table
function M.BillingRecord(args)
	assert(args, "You must provide an argument table when creating BillingRecord")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operation"] = args["Operation"],
		["InvoiceId"] = args["InvoiceId"],
		["Price"] = args["Price"],
		["BillDate"] = args["BillDate"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertBillingRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainSummary = { ["TransferLock"] = true, ["AutoRenew"] = true, ["Expiry"] = true, ["DomainName"] = true, nil }

function asserts.AssertDomainSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainSummary to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["TransferLock"] then asserts.AssertBoolean(struct["TransferLock"]) end
	if struct["AutoRenew"] then asserts.AssertBoolean(struct["AutoRenew"]) end
	if struct["Expiry"] then asserts.AssertTimestamp(struct["Expiry"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainSummary[k], "DomainSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainSummary
-- <p>Summary information about one domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TransferLock [Boolean] <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
-- * AutoRenew [Boolean] <p>Indicates whether the domain is automatically renewed upon expiration.</p>
-- * Expiry [Timestamp] <p>Expiration date of the domain in Coordinated Universal Time (UTC).</p>
-- * DomainName [DomainName] <p>The name of the domain that the summary information applies to.</p>
-- Required key: DomainName
-- @return DomainSummary structure as a key-value pair table
function M.DomainSummary(args)
	assert(args, "You must provide an argument table when creating DomainSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TransferLock"] = args["TransferLock"],
		["AutoRenew"] = args["AutoRenew"],
		["Expiry"] = args["Expiry"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDomainSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOperationsRequest = { ["Marker"] = true, ["SubmittedSince"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListOperationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["SubmittedSince"] then asserts.AssertTimestamp(struct["SubmittedSince"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOperationsRequest[k], "ListOperationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsRequest
-- <p>The ListOperations request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional operations. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
-- * SubmittedSince [Timestamp] <p>An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. Specify the date and time in Coordinated Universal time (UTC).</p>
-- * MaxItems [PageMaxItems] <p>Number of domains to be returned.</p> <p>Default: 20</p>
-- @return ListOperationsRequest structure as a key-value pair table
function M.ListOperationsRequest(args)
	assert(args, "You must provide an argument table when creating ListOperationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["SubmittedSince"] = args["SubmittedSince"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListOperationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedTLD = { ["message"] = true, nil }

function asserts.AssertUnsupportedTLD(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedTLD to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedTLD[k], "UnsupportedTLD contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedTLD
-- <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
-- @return UnsupportedTLD structure as a key-value pair table
function M.UnsupportedTLD(args)
	assert(args, "You must provide an argument table when creating UnsupportedTLD")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedTLD(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForDomainResponse = { ["TagList"] = true, nil }

function asserts.AssertListTagsForDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForDomainResponse to be of type 'table'")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForDomainResponse[k], "ListTagsForDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForDomainResponse
-- <p>The ListTagsForDomain response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>A list of the tags that are associated with the specified domain.</p>
-- Required key: TagList
-- @return ListTagsForDomainResponse structure as a key-value pair table
function M.ListTagsForDomainResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertListTagsForDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RenewDomainResponse = { ["OperationId"] = true, nil }

function asserts.AssertRenewDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewDomainResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RenewDomainResponse[k], "RenewDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>The identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required key: OperationId
-- @return RenewDomainResponse structure as a key-value pair table
function M.RenewDomainResponse(args)
	assert(args, "You must provide an argument table when creating RenewDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertRenewDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExtraParam = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertExtraParam(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtraParam to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertExtraParamName(struct["Name"]) end
	if struct["Value"] then asserts.AssertExtraParamValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtraParam[k], "ExtraParam contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtraParam
-- <p>ExtraParam includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ExtraParamName] <p>Name of the additional parameter required by the top-level domain. Here are the top-level domains that require additional parameters and which parameters they require:</p> <ul> <li> <p> <b>.com.au and .net.au:</b> <code>AU_ID_NUMBER</code> and <code>AU_ID_TYPE</code> </p> </li> <li> <p> <b>.ca:</b> <code>BRAND_NUMBER</code>, <code>CA_LEGAL_TYPE</code>, and <code>CA_BUSINESS_ENTITY_TYPE</code> </p> </li> <li> <p> <b>.es:</b> <code>ES_IDENTIFICATION</code>, <code>ES_IDENTIFICATION_TYPE</code>, and <code>ES_LEGAL_FORM</code> </p> </li> <li> <p> <b>.fi:</b> <code>BIRTH_DATE_IN_YYYY_MM_DD</code>, <code>FI_BUSINESS_NUMBER</code>, <code>FI_ID_NUMBER</code>, <code>FI_NATIONALITY</code>, and <code>FI_ORGANIZATION_TYPE</code> </p> </li> <li> <p> <b>.fr:</b> <code>BRAND_NUMBER</code>, <code>BIRTH_DEPARTMENT</code>, <code>BIRTH_DATE_IN_YYYY_MM_DD</code>, <code>BIRTH_COUNTRY</code>, and <code>BIRTH_CITY</code> </p> </li> <li> <p> <b>.it:</b> <code>BIRTH_COUNTRY</code>, <code>IT_PIN</code>, and <code>IT_REGISTRANT_ENTITY_TYPE</code> </p> </li> <li> <p> <b>.ru:</b> <code>BIRTH_DATE_IN_YYYY_MM_DD</code> and <code>RU_PASSPORT_DATA</code> </p> </li> <li> <p> <b>.se:</b> <code>BIRTH_COUNTRY</code> and <code>SE_ID_NUMBER</code> </p> </li> <li> <p> <b>.sg:</b> <code>SG_ID_NUMBER</code> </p> </li> <li> <p> <b>.co.uk, .me.uk, and .org.uk:</b> <code>UK_CONTACT_TYPE</code> and <code>UK_COMPANY_NUMBER</code> </p> </li> </ul> <p>In addition, many TLDs require <code>VAT_NUMBER</code>.</p>
-- * Value [ExtraParamValue] <p>Values corresponding to the additional parameter names required by some top-level domains.</p>
-- Required key: Name
-- Required key: Value
-- @return ExtraParam structure as a key-value pair table
function M.ExtraParam(args)
	assert(args, "You must provide an argument table when creating ExtraParam")
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
	asserts.AssertExtraParam(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOperationDetailResponse = { ["Status"] = true, ["DomainName"] = true, ["SubmittedDate"] = true, ["Message"] = true, ["Type"] = true, ["OperationId"] = true, nil }

function asserts.AssertGetOperationDetailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationDetailResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertOperationStatus(struct["Status"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["SubmittedDate"] then asserts.AssertTimestamp(struct["SubmittedDate"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	if struct["Type"] then asserts.AssertOperationType(struct["Type"]) end
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationDetailResponse[k], "GetOperationDetailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationDetailResponse
-- <p>The GetOperationDetail response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OperationStatus] <p>The current status of the requested operation in the system.</p>
-- * DomainName [DomainName] <p>The name of a domain.</p>
-- * SubmittedDate [Timestamp] <p>The date when the request was submitted.</p>
-- * Message [ErrorMessage] <p>Detailed information on the status including possible errors.</p>
-- * Type [OperationType] <p>The type of operation that was requested.</p>
-- * OperationId [OperationId] <p>The identifier for the operation.</p>
-- @return GetOperationDetailResponse structure as a key-value pair table
function M.GetOperationDetailResponse(args)
	assert(args, "You must provide an argument table when creating GetOperationDetailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DomainName"] = args["DomainName"],
		["SubmittedDate"] = args["SubmittedDate"],
		["Message"] = args["Message"],
		["Type"] = args["Type"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertGetOperationDetailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOperationDetailRequest = { ["OperationId"] = true, nil }

function asserts.AssertGetOperationDetailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationDetailRequest to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationDetailRequest[k], "GetOperationDetailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationDetailRequest
-- <p>The <a>GetOperationDetail</a> request includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>The identifier for the operation for which you want to get the status. Amazon Route 53 returned the identifier in the response to the original request.</p>
-- Required key: OperationId
-- @return GetOperationDetailRequest structure as a key-value pair table
function M.GetOperationDetailRequest(args)
	assert(args, "You must provide an argument table when creating GetOperationDetailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertGetOperationDetailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableDomainTransferLockRequest = { ["DomainName"] = true, nil }

function asserts.AssertDisableDomainTransferLockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainTransferLockRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableDomainTransferLockRequest[k], "DisableDomainTransferLockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainTransferLockRequest
-- <p>The DisableDomainTransferLock request includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to remove the transfer lock for.</p>
-- Required key: DomainName
-- @return DisableDomainTransferLockRequest structure as a key-value pair table
function M.DisableDomainTransferLockRequest(args)
	assert(args, "You must provide an argument table when creating DisableDomainTransferLockRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDisableDomainTransferLockRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Each tag includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of a tag.</p> <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p> <p>Constraints: Each value can be 0-256 characters long.</p>
-- * Key [TagKey] <p>The key (name) of a tag.</p> <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p> <p>Constraints: Each key can be 1-128 characters long.</p>
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RenewDomainRequest = { ["CurrentExpiryYear"] = true, ["DurationInYears"] = true, ["DomainName"] = true, nil }

function asserts.AssertRenewDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["CurrentExpiryYear"], "Expected key CurrentExpiryYear to exist in table")
	if struct["CurrentExpiryYear"] then asserts.AssertCurrentExpiryYear(struct["CurrentExpiryYear"]) end
	if struct["DurationInYears"] then asserts.AssertDurationInYears(struct["DurationInYears"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RenewDomainRequest[k], "RenewDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewDomainRequest
-- <p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrentExpiryYear [CurrentExpiryYear] <p>The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.</p>
-- * DurationInYears [DurationInYears] <p>The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Default: 1</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to renew.</p>
-- Required key: DomainName
-- Required key: CurrentExpiryYear
-- @return RenewDomainRequest structure as a key-value pair table
function M.RenewDomainRequest(args)
	assert(args, "You must provide an argument table when creating RenewDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrentExpiryYear"] = args["CurrentExpiryYear"],
		["DurationInYears"] = args["DurationInYears"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertRenewDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableDomainAutoRenewResponse = { nil }

function asserts.AssertDisableDomainAutoRenewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainAutoRenewResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisableDomainAutoRenewResponse[k], "DisableDomainAutoRenewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainAutoRenewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisableDomainAutoRenewResponse structure as a key-value pair table
function M.DisableDomainAutoRenewResponse(args)
	assert(args, "You must provide an argument table when creating DisableDomainAutoRenewResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisableDomainAutoRenewResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContactReachabilityStatusResponse = { ["status"] = true, ["domainName"] = true, nil }

function asserts.AssertGetContactReachabilityStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContactReachabilityStatusResponse to be of type 'table'")
	if struct["status"] then asserts.AssertReachabilityStatus(struct["status"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContactReachabilityStatusResponse[k], "GetContactReachabilityStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContactReachabilityStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ReachabilityStatus] <p>Whether the registrant contact has responded. Values include the following:</p> <dl> <dt>PENDING</dt> <dd> <p>We sent the confirmation email and haven't received a response yet.</p> </dd> <dt>DONE</dt> <dd> <p>We sent the email and got confirmation from the registrant contact.</p> </dd> <dt>EXPIRED</dt> <dd> <p>The time limit expired before the registrant contact responded.</p> </dd> </dl>
-- * domainName [DomainName] <p>The domain name for which you requested the reachability status.</p>
-- @return GetContactReachabilityStatusResponse structure as a key-value pair table
function M.GetContactReachabilityStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetContactReachabilityStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetContactReachabilityStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CheckDomainTransferabilityRequest = { ["AuthCode"] = true, ["DomainName"] = true, nil }

function asserts.AssertCheckDomainTransferabilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDomainTransferabilityRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["AuthCode"] then asserts.AssertDomainAuthCode(struct["AuthCode"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckDomainTransferabilityRequest[k], "CheckDomainTransferabilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDomainTransferabilityRequest
-- <p>The CheckDomainTransferability request contains the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthCode [DomainAuthCode] <p>If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain, the code that you got from the current registrar for the domain.</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to transfer to Amazon Route 53.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- Required key: DomainName
-- @return CheckDomainTransferabilityRequest structure as a key-value pair table
function M.CheckDomainTransferabilityRequest(args)
	assert(args, "You must provide an argument table when creating CheckDomainTransferabilityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthCode"] = args["AuthCode"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertCheckDomainTransferabilityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsForDomainRequest = { ["TagsToDelete"] = true, ["DomainName"] = true, nil }

function asserts.AssertDeleteTagsForDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsForDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["TagsToDelete"], "Expected key TagsToDelete to exist in table")
	if struct["TagsToDelete"] then asserts.AssertTagKeyList(struct["TagsToDelete"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsForDomainRequest[k], "DeleteTagsForDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsForDomainRequest
-- <p>The DeleteTagsForDomainRequest includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagsToDelete [TagKeyList] <p>A list of tag keys to delete.</p>
-- * DomainName [DomainName] <p>The domain for which you want to delete one or more tags.</p>
-- Required key: DomainName
-- Required key: TagsToDelete
-- @return DeleteTagsForDomainRequest structure as a key-value pair table
function M.DeleteTagsForDomainRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTagsForDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagsToDelete"] = args["TagsToDelete"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDeleteTagsForDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDomainSuggestionsRequest = { ["OnlyAvailable"] = true, ["SuggestionCount"] = true, ["DomainName"] = true, nil }

function asserts.AssertGetDomainSuggestionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainSuggestionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["SuggestionCount"], "Expected key SuggestionCount to exist in table")
	assert(struct["OnlyAvailable"], "Expected key OnlyAvailable to exist in table")
	if struct["OnlyAvailable"] then asserts.AssertBoolean(struct["OnlyAvailable"]) end
	if struct["SuggestionCount"] then asserts.AssertInteger(struct["SuggestionCount"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainSuggestionsRequest[k], "GetDomainSuggestionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainSuggestionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OnlyAvailable [Boolean] <p>If <code>OnlyAvailable</code> is <code>true</code>, Amazon Route 53 returns only domain names that are available. If <code>OnlyAvailable</code> is <code>false</code>, Amazon Route 53 returns domain names without checking whether they're available to be registered. To determine whether the domain is available, you can call <code>checkDomainAvailability</code> for each suggestion.</p>
-- * SuggestionCount [Integer] <p>The number of suggested domain names that you want Amazon Route 53 to return.</p>
-- * DomainName [DomainName] <p>A domain name that you want to use as the basis for a list of possible domain names. The domain name must contain a top-level domain (TLD), such as .com, that Amazon Route 53 supports. For a list of TLDs, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- Required key: DomainName
-- Required key: SuggestionCount
-- Required key: OnlyAvailable
-- @return GetDomainSuggestionsRequest structure as a key-value pair table
function M.GetDomainSuggestionsRequest(args)
	assert(args, "You must provide an argument table when creating GetDomainSuggestionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OnlyAvailable"] = args["OnlyAvailable"],
		["SuggestionCount"] = args["SuggestionCount"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertGetDomainSuggestionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetrieveDomainAuthCodeRequest = { ["DomainName"] = true, nil }

function asserts.AssertRetrieveDomainAuthCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveDomainAuthCodeRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveDomainAuthCodeRequest[k], "RetrieveDomainAuthCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveDomainAuthCodeRequest
-- <p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to get an authorization code for.</p>
-- Required key: DomainName
-- @return RetrieveDomainAuthCodeRequest structure as a key-value pair table
function M.RetrieveDomainAuthCodeRequest(args)
	assert(args, "You must provide an argument table when creating RetrieveDomainAuthCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertRetrieveDomainAuthCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationLimitExceeded = { ["message"] = true, nil }

function asserts.AssertOperationLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationLimitExceeded[k], "OperationLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationLimitExceeded
-- <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
-- @return OperationLimitExceeded structure as a key-value pair table
function M.OperationLimitExceeded(args)
	assert(args, "You must provide an argument table when creating OperationLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertOperationLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDomainContactRequest = { ["RegistrantContact"] = true, ["AdminContact"] = true, ["TechContact"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateDomainContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["RegistrantContact"] then asserts.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["AdminContact"] then asserts.AssertContactDetail(struct["AdminContact"]) end
	if struct["TechContact"] then asserts.AssertContactDetail(struct["TechContact"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainContactRequest[k], "UpdateDomainContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactRequest
-- <p>The UpdateDomainContact request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to update contact information for.</p>
-- Required key: DomainName
-- @return UpdateDomainContactRequest structure as a key-value pair table
function M.UpdateDomainContactRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDomainContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegistrantContact"] = args["RegistrantContact"],
		["AdminContact"] = args["AdminContact"],
		["TechContact"] = args["TechContact"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateDomainContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainSuggestion = { ["Availability"] = true, ["DomainName"] = true, nil }

function asserts.AssertDomainSuggestion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainSuggestion to be of type 'table'")
	if struct["Availability"] then asserts.AssertString(struct["Availability"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainSuggestion[k], "DomainSuggestion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainSuggestion
-- <p>Information about one suggested domain name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Availability [String] <p>Whether the domain name is available for registering.</p> <note> <p>You can register only the domains that are designated as <code>AVAILABLE</code>.</p> </note> <p>Valid values:</p> <dl> <dt>AVAILABLE</dt> <dd> <p>The domain name is available.</p> </dd> <dt>AVAILABLE_RESERVED</dt> <dd> <p>The domain name is reserved under specific conditions.</p> </dd> <dt>AVAILABLE_PREORDER</dt> <dd> <p>The domain name is available and can be preordered.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. Amazon Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.</p> </dd> <dt>PENDING</dt> <dd> <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.</p> </dd> <dt>RESERVED</dt> <dd> <p>The domain name has been reserved for another person or organization.</p> </dd> <dt>UNAVAILABLE</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_PREMIUM</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_RESTRICTED</dt> <dd> <p>The domain name is forbidden.</p> </dd> </dl>
-- * DomainName [DomainName] <p>A suggested domain name.</p>
-- @return DomainSuggestion structure as a key-value pair table
function M.DomainSuggestion(args)
	assert(args, "You must provide an argument table when creating DomainSuggestion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Availability"] = args["Availability"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDomainSuggestion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ViewBillingRequest = { ["Marker"] = true, ["Start"] = true, ["End"] = true, ["MaxItems"] = true, nil }

function asserts.AssertViewBillingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewBillingRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["Start"] then asserts.AssertTimestamp(struct["Start"]) end
	if struct["End"] then asserts.AssertTimestamp(struct["End"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ViewBillingRequest[k], "ViewBillingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewBillingRequest
-- <p>The ViewBilling request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional billing records. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element. </p> <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was returned in the previous response.</p>
-- * Start [Timestamp] <p>The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).</p>
-- * End [Timestamp] <p>The end date and time for the time period for which you want a list of billing records. Specify the date and time in Coordinated Universal time (UTC).</p>
-- * MaxItems [PageMaxItems] <p>The number of billing records to be returned.</p> <p>Default: 20</p>
-- @return ViewBillingRequest structure as a key-value pair table
function M.ViewBillingRequest(args)
	assert(args, "You must provide an argument table when creating ViewBillingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Start"] = args["Start"],
		["End"] = args["End"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertViewBillingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransferDomainResponse = { ["OperationId"] = true, nil }

function asserts.AssertTransferDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferDomainResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferDomainResponse[k], "TransferDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferDomainResponse
-- <p>The TranserDomain response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required key: OperationId
-- @return TransferDomainResponse structure as a key-value pair table
function M.TransferDomainResponse(args)
	assert(args, "You must provide an argument table when creating TransferDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertTransferDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TLDRulesViolation = { ["message"] = true, nil }

function asserts.AssertTLDRulesViolation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TLDRulesViolation to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TLDRulesViolation[k], "TLDRulesViolation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TLDRulesViolation
-- <p>The top-level domain does not support this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The top-level domain does not support this operation.</p>
-- @return TLDRulesViolation structure as a key-value pair table
function M.TLDRulesViolation(args)
	assert(args, "You must provide an argument table when creating TLDRulesViolation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTLDRulesViolation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResendContactReachabilityEmailRequest = { ["domainName"] = true, nil }

function asserts.AssertResendContactReachabilityEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendContactReachabilityEmailRequest to be of type 'table'")
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResendContactReachabilityEmailRequest[k], "ResendContactReachabilityEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendContactReachabilityEmailRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [DomainName] <p>The name of the domain for which you want Amazon Route 53 to resend a confirmation email to the registrant contact.</p>
-- @return ResendContactReachabilityEmailRequest structure as a key-value pair table
function M.ResendContactReachabilityEmailRequest(args)
	assert(args, "You must provide an argument table when creating ResendContactReachabilityEmailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertResendContactReachabilityEmailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterDomainRequest = { ["RegistrantContact"] = true, ["IdnLangCode"] = true, ["DomainName"] = true, ["PrivacyProtectRegistrantContact"] = true, ["PrivacyProtectTechContact"] = true, ["TechContact"] = true, ["PrivacyProtectAdminContact"] = true, ["AutoRenew"] = true, ["DurationInYears"] = true, ["AdminContact"] = true, nil }

function asserts.AssertRegisterDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["DurationInYears"], "Expected key DurationInYears to exist in table")
	assert(struct["AdminContact"], "Expected key AdminContact to exist in table")
	assert(struct["RegistrantContact"], "Expected key RegistrantContact to exist in table")
	assert(struct["TechContact"], "Expected key TechContact to exist in table")
	if struct["RegistrantContact"] then asserts.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["IdnLangCode"] then asserts.AssertLangCode(struct["IdnLangCode"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["PrivacyProtectRegistrantContact"] then asserts.AssertBoolean(struct["PrivacyProtectRegistrantContact"]) end
	if struct["PrivacyProtectTechContact"] then asserts.AssertBoolean(struct["PrivacyProtectTechContact"]) end
	if struct["TechContact"] then asserts.AssertContactDetail(struct["TechContact"]) end
	if struct["PrivacyProtectAdminContact"] then asserts.AssertBoolean(struct["PrivacyProtectAdminContact"]) end
	if struct["AutoRenew"] then asserts.AssertBoolean(struct["AutoRenew"]) end
	if struct["DurationInYears"] then asserts.AssertDurationInYears(struct["DurationInYears"]) end
	if struct["AdminContact"] then asserts.AssertContactDetail(struct["AdminContact"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDomainRequest[k], "RegisterDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDomainRequest
-- <p>The RegisterDomain request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- * DomainName [DomainName] <p>The domain name that you want to register.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- * PrivacyProtectRegistrantContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the registrant contact (the domain owner).</p> <p>Default: <code>true</code> </p>
-- * PrivacyProtectTechContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the technical contact.</p> <p>Default: <code>true</code> </p>
-- * TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * PrivacyProtectAdminContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the admin contact.</p> <p>Default: <code>true</code> </p>
-- * AutoRenew [Boolean] <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not (<code>false</code>). Autorenewal only takes effect after the account is charged.</p> <p>Default: <code>true</code> </p>
-- * DurationInYears [DurationInYears] <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Default: 1</p>
-- * AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- Required key: DomainName
-- Required key: DurationInYears
-- Required key: AdminContact
-- Required key: RegistrantContact
-- Required key: TechContact
-- @return RegisterDomainRequest structure as a key-value pair table
function M.RegisterDomainRequest(args)
	assert(args, "You must provide an argument table when creating RegisterDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegistrantContact"] = args["RegistrantContact"],
		["IdnLangCode"] = args["IdnLangCode"],
		["DomainName"] = args["DomainName"],
		["PrivacyProtectRegistrantContact"] = args["PrivacyProtectRegistrantContact"],
		["PrivacyProtectTechContact"] = args["PrivacyProtectTechContact"],
		["TechContact"] = args["TechContact"],
		["PrivacyProtectAdminContact"] = args["PrivacyProtectAdminContact"],
		["AutoRenew"] = args["AutoRenew"],
		["DurationInYears"] = args["DurationInYears"],
		["AdminContact"] = args["AdminContact"],
	}
	asserts.AssertRegisterDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationSummary = { ["Status"] = true, ["Type"] = true, ["SubmittedDate"] = true, ["OperationId"] = true, nil }

function asserts.AssertOperationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationSummary to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["SubmittedDate"], "Expected key SubmittedDate to exist in table")
	if struct["Status"] then asserts.AssertOperationStatus(struct["Status"]) end
	if struct["Type"] then asserts.AssertOperationType(struct["Type"]) end
	if struct["SubmittedDate"] then asserts.AssertTimestamp(struct["SubmittedDate"]) end
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationSummary[k], "OperationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationSummary
-- <p>OperationSummary includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OperationStatus] <p>The current status of the requested operation in the system.</p>
-- * Type [OperationType] <p>Type of the action requested.</p>
-- * SubmittedDate [Timestamp] <p>The date when the request was submitted.</p>
-- * OperationId [OperationId] <p>Identifier returned to track the requested action.</p>
-- Required key: OperationId
-- Required key: Status
-- Required key: Type
-- Required key: SubmittedDate
-- @return OperationSummary structure as a key-value pair table
function M.OperationSummary(args)
	assert(args, "You must provide an argument table when creating OperationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Type"] = args["Type"],
		["SubmittedDate"] = args["SubmittedDate"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertOperationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDomainNameserversResponse = { ["OperationId"] = true, nil }

function asserts.AssertUpdateDomainNameserversResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainNameserversResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainNameserversResponse[k], "UpdateDomainNameserversResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainNameserversResponse
-- <p>The UpdateDomainNameservers response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required key: OperationId
-- @return UpdateDomainNameserversResponse structure as a key-value pair table
function M.UpdateDomainNameserversResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDomainNameserversResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateDomainNameserversResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TransferDomainRequest = { ["RegistrantContact"] = true, ["IdnLangCode"] = true, ["DomainName"] = true, ["Nameservers"] = true, ["AuthCode"] = true, ["PrivacyProtectRegistrantContact"] = true, ["TechContact"] = true, ["PrivacyProtectAdminContact"] = true, ["AutoRenew"] = true, ["DurationInYears"] = true, ["AdminContact"] = true, ["PrivacyProtectTechContact"] = true, nil }

function asserts.AssertTransferDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["DurationInYears"], "Expected key DurationInYears to exist in table")
	assert(struct["AdminContact"], "Expected key AdminContact to exist in table")
	assert(struct["RegistrantContact"], "Expected key RegistrantContact to exist in table")
	assert(struct["TechContact"], "Expected key TechContact to exist in table")
	if struct["RegistrantContact"] then asserts.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["IdnLangCode"] then asserts.AssertLangCode(struct["IdnLangCode"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["Nameservers"] then asserts.AssertNameserverList(struct["Nameservers"]) end
	if struct["AuthCode"] then asserts.AssertDomainAuthCode(struct["AuthCode"]) end
	if struct["PrivacyProtectRegistrantContact"] then asserts.AssertBoolean(struct["PrivacyProtectRegistrantContact"]) end
	if struct["TechContact"] then asserts.AssertContactDetail(struct["TechContact"]) end
	if struct["PrivacyProtectAdminContact"] then asserts.AssertBoolean(struct["PrivacyProtectAdminContact"]) end
	if struct["AutoRenew"] then asserts.AssertBoolean(struct["AutoRenew"]) end
	if struct["DurationInYears"] then asserts.AssertDurationInYears(struct["DurationInYears"]) end
	if struct["AdminContact"] then asserts.AssertContactDetail(struct["AdminContact"]) end
	if struct["PrivacyProtectTechContact"] then asserts.AssertBoolean(struct["PrivacyProtectTechContact"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferDomainRequest[k], "TransferDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferDomainRequest
-- <p>The TransferDomain request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to transfer to Amazon Route 53.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- * Nameservers [NameserverList] <p>Contains details for the host and glue IP addresses.</p>
-- * AuthCode [DomainAuthCode] <p>The authorization code for the domain. You get this value from the current registrar.</p>
-- * PrivacyProtectRegistrantContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the registrant contact (domain owner).</p> <p>Default: <code>true</code> </p>
-- * TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * PrivacyProtectAdminContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the admin contact.</p> <p>Default: <code>true</code> </p>
-- * AutoRenew [Boolean] <p>Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged.</p> <p>Default: true</p>
-- * DurationInYears [DurationInYears] <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain.</p> <p>Default: 1</p>
-- * AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- * PrivacyProtectTechContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the technical contact.</p> <p>Default: <code>true</code> </p>
-- Required key: DomainName
-- Required key: DurationInYears
-- Required key: AdminContact
-- Required key: RegistrantContact
-- Required key: TechContact
-- @return TransferDomainRequest structure as a key-value pair table
function M.TransferDomainRequest(args)
	assert(args, "You must provide an argument table when creating TransferDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegistrantContact"] = args["RegistrantContact"],
		["IdnLangCode"] = args["IdnLangCode"],
		["DomainName"] = args["DomainName"],
		["Nameservers"] = args["Nameservers"],
		["AuthCode"] = args["AuthCode"],
		["PrivacyProtectRegistrantContact"] = args["PrivacyProtectRegistrantContact"],
		["TechContact"] = args["TechContact"],
		["PrivacyProtectAdminContact"] = args["PrivacyProtectAdminContact"],
		["AutoRenew"] = args["AutoRenew"],
		["DurationInYears"] = args["DurationInYears"],
		["AdminContact"] = args["AdminContact"],
		["PrivacyProtectTechContact"] = args["PrivacyProtectTechContact"],
	}
	asserts.AssertTransferDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContactDetail = { ["City"] = true, ["Fax"] = true, ["OrganizationName"] = true, ["CountryCode"] = true, ["FirstName"] = true, ["LastName"] = true, ["ContactType"] = true, ["ZipCode"] = true, ["ExtraParams"] = true, ["State"] = true, ["AddressLine2"] = true, ["AddressLine1"] = true, ["PhoneNumber"] = true, ["Email"] = true, nil }

function asserts.AssertContactDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContactDetail to be of type 'table'")
	if struct["City"] then asserts.AssertCity(struct["City"]) end
	if struct["Fax"] then asserts.AssertContactNumber(struct["Fax"]) end
	if struct["OrganizationName"] then asserts.AssertContactName(struct["OrganizationName"]) end
	if struct["CountryCode"] then asserts.AssertCountryCode(struct["CountryCode"]) end
	if struct["FirstName"] then asserts.AssertContactName(struct["FirstName"]) end
	if struct["LastName"] then asserts.AssertContactName(struct["LastName"]) end
	if struct["ContactType"] then asserts.AssertContactType(struct["ContactType"]) end
	if struct["ZipCode"] then asserts.AssertZipCode(struct["ZipCode"]) end
	if struct["ExtraParams"] then asserts.AssertExtraParamList(struct["ExtraParams"]) end
	if struct["State"] then asserts.AssertState(struct["State"]) end
	if struct["AddressLine2"] then asserts.AssertAddressLine(struct["AddressLine2"]) end
	if struct["AddressLine1"] then asserts.AssertAddressLine(struct["AddressLine1"]) end
	if struct["PhoneNumber"] then asserts.AssertContactNumber(struct["PhoneNumber"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContactDetail[k], "ContactDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContactDetail
-- <p>ContactDetail includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * City [City] <p>The city of the contact's address.</p>
-- * Fax [ContactNumber] <p>Fax number of the contact.</p> <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code]". For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
-- * OrganizationName [ContactName] <p>Name of the organization for contact types other than <code>PERSON</code>.</p>
-- * CountryCode [CountryCode] <p>Code for the country of the contact's address.</p>
-- * FirstName [ContactName] <p>First name of contact.</p>
-- * LastName [ContactName] <p>Last name of contact.</p>
-- * ContactType [ContactType] <p>Indicates whether the contact is a person, company, association, or public organization. If you choose an option other than <code>PERSON</code>, you must enter an organization name, and you can't enable privacy protection for the contact.</p>
-- * ZipCode [ZipCode] <p>The zip or postal code of the contact's address.</p>
-- * ExtraParams [ExtraParamList] <p>A list of name-value pairs for parameters required by certain top-level domains.</p>
-- * State [State] <p>The state or province of the contact's city.</p>
-- * AddressLine2 [AddressLine] <p>Second line of contact's address, if any.</p>
-- * AddressLine1 [AddressLine] <p>First line of the contact's address.</p>
-- * PhoneNumber [ContactNumber] <p>The phone number of the contact.</p> <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code&gt;]". For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
-- * Email [Email] <p>Email address of the contact.</p>
-- @return ContactDetail structure as a key-value pair table
function M.ContactDetail(args)
	assert(args, "You must provide an argument table when creating ContactDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["City"] = args["City"],
		["Fax"] = args["Fax"],
		["OrganizationName"] = args["OrganizationName"],
		["CountryCode"] = args["CountryCode"],
		["FirstName"] = args["FirstName"],
		["LastName"] = args["LastName"],
		["ContactType"] = args["ContactType"],
		["ZipCode"] = args["ZipCode"],
		["ExtraParams"] = args["ExtraParams"],
		["State"] = args["State"],
		["AddressLine2"] = args["AddressLine2"],
		["AddressLine1"] = args["AddressLine1"],
		["PhoneNumber"] = args["PhoneNumber"],
		["Email"] = args["Email"],
	}
	asserts.AssertContactDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableDomainTransferLockResponse = { ["OperationId"] = true, nil }

function asserts.AssertDisableDomainTransferLockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainTransferLockResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableDomainTransferLockResponse[k], "DisableDomainTransferLockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainTransferLockResponse
-- <p>The DisableDomainTransferLock response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required key: OperationId
-- @return DisableDomainTransferLockResponse structure as a key-value pair table
function M.DisableDomainTransferLockResponse(args)
	assert(args, "You must provide an argument table when creating DisableDomainTransferLockResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertDisableDomainTransferLockResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDomainContactResponse = { ["OperationId"] = true, nil }

function asserts.AssertUpdateDomainContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainContactResponse[k], "UpdateDomainContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactResponse
-- <p>The UpdateDomainContact response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required key: OperationId
-- @return UpdateDomainContactResponse structure as a key-value pair table
function M.UpdateDomainContactResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDomainContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateDomainContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterDomainResponse = { ["OperationId"] = true, nil }

function asserts.AssertRegisterDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDomainResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDomainResponse[k], "RegisterDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDomainResponse
-- <p>The RegisterDomain response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required key: OperationId
-- @return RegisterDomainResponse structure as a key-value pair table
function M.RegisterDomainResponse(args)
	assert(args, "You must provide an argument table when creating RegisterDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertRegisterDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDomainDetailResponse = { ["RegistrantContact"] = true, ["StatusList"] = true, ["WhoIsServer"] = true, ["AbuseContactEmail"] = true, ["Reseller"] = true, ["RegistrarName"] = true, ["DomainName"] = true, ["Nameservers"] = true, ["RegistrarUrl"] = true, ["AdminPrivacy"] = true, ["RegistryDomainId"] = true, ["TechContact"] = true, ["CreationDate"] = true, ["AutoRenew"] = true, ["UpdatedDate"] = true, ["ExpirationDate"] = true, ["DnsSec"] = true, ["AdminContact"] = true, ["TechPrivacy"] = true, ["RegistrantPrivacy"] = true, ["AbuseContactPhone"] = true, nil }

function asserts.AssertGetDomainDetailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainDetailResponse to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Nameservers"], "Expected key Nameservers to exist in table")
	assert(struct["AdminContact"], "Expected key AdminContact to exist in table")
	assert(struct["RegistrantContact"], "Expected key RegistrantContact to exist in table")
	assert(struct["TechContact"], "Expected key TechContact to exist in table")
	if struct["RegistrantContact"] then asserts.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["StatusList"] then asserts.AssertDomainStatusList(struct["StatusList"]) end
	if struct["WhoIsServer"] then asserts.AssertRegistrarWhoIsServer(struct["WhoIsServer"]) end
	if struct["AbuseContactEmail"] then asserts.AssertEmail(struct["AbuseContactEmail"]) end
	if struct["Reseller"] then asserts.AssertReseller(struct["Reseller"]) end
	if struct["RegistrarName"] then asserts.AssertRegistrarName(struct["RegistrarName"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	if struct["Nameservers"] then asserts.AssertNameserverList(struct["Nameservers"]) end
	if struct["RegistrarUrl"] then asserts.AssertRegistrarUrl(struct["RegistrarUrl"]) end
	if struct["AdminPrivacy"] then asserts.AssertBoolean(struct["AdminPrivacy"]) end
	if struct["RegistryDomainId"] then asserts.AssertRegistryDomainId(struct["RegistryDomainId"]) end
	if struct["TechContact"] then asserts.AssertContactDetail(struct["TechContact"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["AutoRenew"] then asserts.AssertBoolean(struct["AutoRenew"]) end
	if struct["UpdatedDate"] then asserts.AssertTimestamp(struct["UpdatedDate"]) end
	if struct["ExpirationDate"] then asserts.AssertTimestamp(struct["ExpirationDate"]) end
	if struct["DnsSec"] then asserts.AssertDNSSec(struct["DnsSec"]) end
	if struct["AdminContact"] then asserts.AssertContactDetail(struct["AdminContact"]) end
	if struct["TechPrivacy"] then asserts.AssertBoolean(struct["TechPrivacy"]) end
	if struct["RegistrantPrivacy"] then asserts.AssertBoolean(struct["RegistrantPrivacy"]) end
	if struct["AbuseContactPhone"] then asserts.AssertContactNumber(struct["AbuseContactPhone"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainDetailResponse[k], "GetDomainDetailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainDetailResponse
-- <p>The GetDomainDetail response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RegistrantContact [ContactDetail] <p>Provides details about the domain registrant.</p>
-- * StatusList [DomainStatusList] <p>An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes.</p> <p>ICANN, the organization that maintains a central database of domain names, has developed a set of domain name status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name, transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars use this same set of status codes.</p> <p>For a current list of domain name status codes and an explanation of what each code means, go to the <a href="https://www.icann.org/">ICANN website</a> and search for <code>epp status codes</code>. (Search on the ICANN website; web searches sometimes return an old version of the document.)</p>
-- * WhoIsServer [RegistrarWhoIsServer] <p>The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.</p>
-- * AbuseContactEmail [Email] <p>Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.</p>
-- * Reseller [Reseller] <p>Reseller of the domain. Domains registered or transferred using Amazon Route 53 domains will have <code>"Amazon"</code> as the reseller. </p>
-- * RegistrarName [RegistrarName] <p>Name of the registrar of the domain as identified in the registry. Domains with a .com, .net, or .org TLD are registered by Amazon Registrar. All other domains are registered by our registrar associate, Gandi. The value for domains that are registered by Gandi is <code>"GANDI SAS"</code>. </p>
-- * DomainName [DomainName] <p>The name of a domain.</p>
-- * Nameservers [NameserverList] <p>The name of the domain.</p>
-- * RegistrarUrl [RegistrarUrl] <p>Web address of the registrar.</p>
-- * AdminPrivacy [Boolean] <p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>, WHOIS queries return the information that you entered for the admin contact.</p>
-- * RegistryDomainId [RegistryDomainId] <p>Reserved for future use.</p>
-- * TechContact [ContactDetail] <p>Provides details about the domain technical contact.</p>
-- * CreationDate [Timestamp] <p>The date when the domain was created as found in the response to a WHOIS query. The date and time is in Coordinated Universal time (UTC).</p>
-- * AutoRenew [Boolean] <p>Specifies whether the domain registration is set to renew automatically.</p>
-- * UpdatedDate [Timestamp] <p>The last updated date of the domain as found in the response to a WHOIS query. The date and time is in Coordinated Universal time (UTC).</p>
-- * ExpirationDate [Timestamp] <p>The date when the registration for the domain is set to expire. The date and time is in Coordinated Universal time (UTC).</p>
-- * DnsSec [DNSSec] <p>Reserved for future use.</p>
-- * AdminContact [ContactDetail] <p>Provides details about the domain administrative contact.</p>
-- * TechPrivacy [Boolean] <p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>, WHOIS queries return the information that you entered for the technical contact.</p>
-- * RegistrantPrivacy [Boolean] <p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>, WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
-- * AbuseContactPhone [ContactNumber] <p>Phone number for reporting abuse.</p>
-- Required key: DomainName
-- Required key: Nameservers
-- Required key: AdminContact
-- Required key: RegistrantContact
-- Required key: TechContact
-- @return GetDomainDetailResponse structure as a key-value pair table
function M.GetDomainDetailResponse(args)
	assert(args, "You must provide an argument table when creating GetDomainDetailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RegistrantContact"] = args["RegistrantContact"],
		["StatusList"] = args["StatusList"],
		["WhoIsServer"] = args["WhoIsServer"],
		["AbuseContactEmail"] = args["AbuseContactEmail"],
		["Reseller"] = args["Reseller"],
		["RegistrarName"] = args["RegistrarName"],
		["DomainName"] = args["DomainName"],
		["Nameservers"] = args["Nameservers"],
		["RegistrarUrl"] = args["RegistrarUrl"],
		["AdminPrivacy"] = args["AdminPrivacy"],
		["RegistryDomainId"] = args["RegistryDomainId"],
		["TechContact"] = args["TechContact"],
		["CreationDate"] = args["CreationDate"],
		["AutoRenew"] = args["AutoRenew"],
		["UpdatedDate"] = args["UpdatedDate"],
		["ExpirationDate"] = args["ExpirationDate"],
		["DnsSec"] = args["DnsSec"],
		["AdminContact"] = args["AdminContact"],
		["TechPrivacy"] = args["TechPrivacy"],
		["RegistrantPrivacy"] = args["RegistrantPrivacy"],
		["AbuseContactPhone"] = args["AbuseContactPhone"],
	}
	asserts.AssertGetDomainDetailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableDomainAutoRenewRequest = { ["DomainName"] = true, nil }

function asserts.AssertEnableDomainAutoRenewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainAutoRenewRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableDomainAutoRenewRequest[k], "EnableDomainAutoRenewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainAutoRenewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to enable automatic renewal for.</p>
-- Required key: DomainName
-- @return EnableDomainAutoRenewRequest structure as a key-value pair table
function M.EnableDomainAutoRenewRequest(args)
	assert(args, "You must provide an argument table when creating EnableDomainAutoRenewRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertEnableDomainAutoRenewRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CheckDomainAvailabilityResponse = { ["Availability"] = true, nil }

function asserts.AssertCheckDomainAvailabilityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDomainAvailabilityResponse to be of type 'table'")
	assert(struct["Availability"], "Expected key Availability to exist in table")
	if struct["Availability"] then asserts.AssertDomainAvailability(struct["Availability"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckDomainAvailabilityResponse[k], "CheckDomainAvailabilityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDomainAvailabilityResponse
-- <p>The CheckDomainAvailability response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Availability [DomainAvailability] <p>Whether the domain name is available for registering.</p> <note> <p>You can register only domains designated as <code>AVAILABLE</code>.</p> </note> <p>Valid values:</p> <dl> <dt>AVAILABLE</dt> <dd> <p>The domain name is available.</p> </dd> <dt>AVAILABLE_RESERVED</dt> <dd> <p>The domain name is reserved under specific conditions.</p> </dd> <dt>AVAILABLE_PREORDER</dt> <dd> <p>The domain name is available and can be preordered.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. Amazon Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.</p> </dd> <dt>PENDING</dt> <dd> <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.</p> </dd> <dt>RESERVED</dt> <dd> <p>The domain name has been reserved for another person or organization.</p> </dd> <dt>UNAVAILABLE</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_PREMIUM</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_RESTRICTED</dt> <dd> <p>The domain name is forbidden.</p> </dd> </dl>
-- Required key: Availability
-- @return CheckDomainAvailabilityResponse structure as a key-value pair table
function M.CheckDomainAvailabilityResponse(args)
	assert(args, "You must provide an argument table when creating CheckDomainAvailabilityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Availability"] = args["Availability"],
	}
	asserts.AssertCheckDomainAvailabilityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CheckDomainTransferabilityResponse = { ["Transferability"] = true, nil }

function asserts.AssertCheckDomainTransferabilityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDomainTransferabilityResponse to be of type 'table'")
	assert(struct["Transferability"], "Expected key Transferability to exist in table")
	if struct["Transferability"] then asserts.AssertDomainTransferability(struct["Transferability"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckDomainTransferabilityResponse[k], "CheckDomainTransferabilityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDomainTransferabilityResponse
-- <p>The CheckDomainTransferability response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Transferability [DomainTransferability] <p>A complex type that contains information about whether the specified domain can be transferred to Amazon Route 53.</p>
-- Required key: Transferability
-- @return CheckDomainTransferabilityResponse structure as a key-value pair table
function M.CheckDomainTransferabilityResponse(args)
	assert(args, "You must provide an argument table when creating CheckDomainTransferabilityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Transferability"] = args["Transferability"],
	}
	asserts.AssertCheckDomainTransferabilityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableDomainTransferLockResponse = { ["OperationId"] = true, nil }

function asserts.AssertEnableDomainTransferLockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainTransferLockResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableDomainTransferLockResponse[k], "EnableDomainTransferLockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainTransferLockResponse
-- <p>The EnableDomainTransferLock response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
-- Required key: OperationId
-- @return EnableDomainTransferLockResponse structure as a key-value pair table
function M.EnableDomainTransferLockResponse(args)
	assert(args, "You must provide an argument table when creating EnableDomainTransferLockResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertEnableDomainTransferLockResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableDomainAutoRenewResponse = { nil }

function asserts.AssertEnableDomainAutoRenewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainAutoRenewResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableDomainAutoRenewResponse[k], "EnableDomainAutoRenewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainAutoRenewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableDomainAutoRenewResponse structure as a key-value pair table
function M.EnableDomainAutoRenewResponse(args)
	assert(args, "You must provide an argument table when creating EnableDomainAutoRenewResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableDomainAutoRenewResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainLimitExceeded = { ["message"] = true, nil }

function asserts.AssertDomainLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainLimitExceeded[k], "DomainLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainLimitExceeded
-- <p>The number of domains has exceeded the allowed threshold for the account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The number of domains has exceeded the allowed threshold for the account.</p>
-- @return DomainLimitExceeded structure as a key-value pair table
function M.DomainLimitExceeded(args)
	assert(args, "You must provide an argument table when creating DomainLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDomainLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDomainContactPrivacyResponse = { ["OperationId"] = true, nil }

function asserts.AssertUpdateDomainContactPrivacyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactPrivacyResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainContactPrivacyResponse[k], "UpdateDomainContactPrivacyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactPrivacyResponse
-- <p>The UpdateDomainContactPrivacy response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
-- Required key: OperationId
-- @return UpdateDomainContactPrivacyResponse structure as a key-value pair table
function M.UpdateDomainContactPrivacyResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDomainContactPrivacyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateDomainContactPrivacyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDomainContactPrivacyRequest = { ["TechPrivacy"] = true, ["AdminPrivacy"] = true, ["RegistrantPrivacy"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateDomainContactPrivacyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactPrivacyRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["TechPrivacy"] then asserts.AssertBoolean(struct["TechPrivacy"]) end
	if struct["AdminPrivacy"] then asserts.AssertBoolean(struct["AdminPrivacy"]) end
	if struct["RegistrantPrivacy"] then asserts.AssertBoolean(struct["RegistrantPrivacy"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainContactPrivacyRequest[k], "UpdateDomainContactPrivacyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactPrivacyRequest
-- <p>The UpdateDomainContactPrivacy request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TechPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the technical contact.</p>
-- * AdminPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the admin contact.</p>
-- * RegistrantPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to update the privacy setting for.</p>
-- Required key: DomainName
-- @return UpdateDomainContactPrivacyRequest structure as a key-value pair table
function M.UpdateDomainContactPrivacyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDomainContactPrivacyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TechPrivacy"] = args["TechPrivacy"],
		["AdminPrivacy"] = args["AdminPrivacy"],
		["RegistrantPrivacy"] = args["RegistrantPrivacy"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateDomainContactPrivacyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsForDomainResponse = { nil }

function asserts.AssertDeleteTagsForDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsForDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsForDomainResponse[k], "DeleteTagsForDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsForDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTagsForDomainResponse structure as a key-value pair table
function M.DeleteTagsForDomainResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTagsForDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTagsForDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Nameserver = { ["GlueIps"] = true, ["Name"] = true, nil }

function asserts.AssertNameserver(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Nameserver to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["GlueIps"] then asserts.AssertGlueIpList(struct["GlueIps"]) end
	if struct["Name"] then asserts.AssertHostName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Nameserver[k], "Nameserver contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Nameserver
-- <p>Nameserver includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlueIps [GlueIpList] <p>Glue IP address of a name server entry. Glue IP addresses are required only when the name of the name server is a subdomain of the domain. For example, if your domain is example.com and the name server for the domain is ns.example.com, you need to specify the IP address for ns.example.com.</p> <p>Constraints: The list can contain only one IPv4 and one IPv6 address.</p>
-- * Name [HostName] <p>The fully qualified host name of the name server.</p> <p>Constraint: Maximum 255 characters</p>
-- Required key: Name
-- @return Nameserver structure as a key-value pair table
function M.Nameserver(args)
	assert(args, "You must provide an argument table when creating Nameserver")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GlueIps"] = args["GlueIps"],
		["Name"] = args["Name"],
	}
	asserts.AssertNameserver(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResendContactReachabilityEmailResponse = { ["isAlreadyVerified"] = true, ["emailAddress"] = true, ["domainName"] = true, nil }

function asserts.AssertResendContactReachabilityEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendContactReachabilityEmailResponse to be of type 'table'")
	if struct["isAlreadyVerified"] then asserts.AssertBoolean(struct["isAlreadyVerified"]) end
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResendContactReachabilityEmailResponse[k], "ResendContactReachabilityEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendContactReachabilityEmailResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * isAlreadyVerified [Boolean] <p> <code>True</code> if the email address for the registrant contact has already been verified, and <code>false</code> otherwise. If the email address has already been verified, we don't send another confirmation email.</p>
-- * emailAddress [Email] <p>The email address for the registrant contact at the time that we sent the verification email.</p>
-- * domainName [DomainName] <p>The domain name for which you requested a confirmation email.</p>
-- @return ResendContactReachabilityEmailResponse structure as a key-value pair table
function M.ResendContactReachabilityEmailResponse(args)
	assert(args, "You must provide an argument table when creating ResendContactReachabilityEmailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["isAlreadyVerified"] = args["isAlreadyVerified"],
		["emailAddress"] = args["emailAddress"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertResendContactReachabilityEmailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTagsForDomainResponse = { nil }

function asserts.AssertUpdateTagsForDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagsForDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateTagsForDomainResponse[k], "UpdateTagsForDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagsForDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateTagsForDomainResponse structure as a key-value pair table
function M.UpdateTagsForDomainResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTagsForDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateTagsForDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForDomainRequest = { ["DomainName"] = true, nil }

function asserts.AssertListTagsForDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForDomainRequest[k], "ListTagsForDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForDomainRequest
-- <p>The ListTagsForDomainRequest includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The domain for which you want to get a list of tags.</p>
-- Required key: DomainName
-- @return ListTagsForDomainRequest structure as a key-value pair table
function M.ListTagsForDomainRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertListTagsForDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainTransferability = { ["Transferable"] = true, nil }

function asserts.AssertDomainTransferability(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainTransferability to be of type 'table'")
	if struct["Transferable"] then asserts.AssertTransferable(struct["Transferable"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainTransferability[k], "DomainTransferability contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainTransferability
-- <p>A complex type that contains information about whether the specified domain can be transferred to Amazon Route 53.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Transferable [Transferable] 
-- @return DomainTransferability structure as a key-value pair table
function M.DomainTransferability(args)
	assert(args, "You must provide an argument table when creating DomainTransferability")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Transferable"] = args["Transferable"],
	}
	asserts.AssertDomainTransferability(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ViewBillingResponse = { ["NextPageMarker"] = true, ["BillingRecords"] = true, nil }

function asserts.AssertViewBillingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewBillingResponse to be of type 'table'")
	if struct["NextPageMarker"] then asserts.AssertPageMarker(struct["NextPageMarker"]) end
	if struct["BillingRecords"] then asserts.AssertBillingRecords(struct["BillingRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.ViewBillingResponse[k], "ViewBillingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewBillingResponse
-- <p>The ViewBilling response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextPageMarker [PageMarker] <p>If there are more billing records than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- * BillingRecords [BillingRecords] <p>A summary of billing records.</p>
-- @return ViewBillingResponse structure as a key-value pair table
function M.ViewBillingResponse(args)
	assert(args, "You must provide an argument table when creating ViewBillingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextPageMarker"] = args["NextPageMarker"],
		["BillingRecords"] = args["BillingRecords"],
	}
	asserts.AssertViewBillingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContactReachabilityStatusRequest = { ["domainName"] = true, nil }

function asserts.AssertGetContactReachabilityStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContactReachabilityStatusRequest to be of type 'table'")
	if struct["domainName"] then asserts.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContactReachabilityStatusRequest[k], "GetContactReachabilityStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContactReachabilityStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [DomainName] <p>The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.</p>
-- @return GetContactReachabilityStatusRequest structure as a key-value pair table
function M.GetContactReachabilityStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetContactReachabilityStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetContactReachabilityStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateRequest = { ["message"] = true, nil }

function asserts.AssertDuplicateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequest to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateRequest[k], "DuplicateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequest
-- <p>The request is already in progress for the domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The request is already in progress for the domain.</p>
-- @return DuplicateRequest structure as a key-value pair table
function M.DuplicateRequest(args)
	assert(args, "You must provide an argument table when creating DuplicateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDuplicateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CheckDomainAvailabilityRequest = { ["IdnLangCode"] = true, ["DomainName"] = true, nil }

function asserts.AssertCheckDomainAvailabilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDomainAvailabilityRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["IdnLangCode"] then asserts.AssertLangCode(struct["IdnLangCode"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckDomainAvailabilityRequest[k], "CheckDomainAvailabilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDomainAvailabilityRequest
-- <p>The CheckDomainAvailability request contains the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to get availability for.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- Required key: DomainName
-- @return CheckDomainAvailabilityRequest structure as a key-value pair table
function M.CheckDomainAvailabilityRequest(args)
	assert(args, "You must provide an argument table when creating CheckDomainAvailabilityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdnLangCode"] = args["IdnLangCode"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertCheckDomainAvailabilityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableDomainTransferLockRequest = { ["DomainName"] = true, nil }

function asserts.AssertEnableDomainTransferLockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainTransferLockRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableDomainTransferLockRequest[k], "EnableDomainTransferLockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainTransferLockRequest
-- <p>A request to set the transfer lock for the specified domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to set the transfer lock for.</p>
-- Required key: DomainName
-- @return EnableDomainTransferLockRequest structure as a key-value pair table
function M.EnableDomainTransferLockRequest(args)
	assert(args, "You must provide an argument table when creating EnableDomainTransferLockRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertEnableDomainTransferLockRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDomainSuggestionsResponse = { ["SuggestionsList"] = true, nil }

function asserts.AssertGetDomainSuggestionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainSuggestionsResponse to be of type 'table'")
	if struct["SuggestionsList"] then asserts.AssertDomainSuggestionsList(struct["SuggestionsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainSuggestionsResponse[k], "GetDomainSuggestionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainSuggestionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuggestionsList [DomainSuggestionsList] <p>A list of possible domain names. If you specified <code>true</code> for <code>OnlyAvailable</code> in the request, the list contains only domains that are available for registration.</p>
-- @return GetDomainSuggestionsResponse structure as a key-value pair table
function M.GetDomainSuggestionsResponse(args)
	assert(args, "You must provide an argument table when creating GetDomainSuggestionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuggestionsList"] = args["SuggestionsList"],
	}
	asserts.AssertGetDomainSuggestionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDomainNameserversRequest = { ["Nameservers"] = true, ["FIAuthKey"] = true, ["DomainName"] = true, nil }

function asserts.AssertUpdateDomainNameserversRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainNameserversRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Nameservers"], "Expected key Nameservers to exist in table")
	if struct["Nameservers"] then asserts.AssertNameserverList(struct["Nameservers"]) end
	if struct["FIAuthKey"] then asserts.AssertFIAuthKey(struct["FIAuthKey"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainNameserversRequest[k], "UpdateDomainNameserversRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainNameserversRequest
-- <p>Replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Nameservers [NameserverList] <p>A list of new name servers for the domain.</p>
-- * FIAuthKey [FIAuthKey] <p>The authorization key for .fi domains</p>
-- * DomainName [DomainName] <p>The name of the domain that you want to change name servers for.</p>
-- Required key: DomainName
-- Required key: Nameservers
-- @return UpdateDomainNameserversRequest structure as a key-value pair table
function M.UpdateDomainNameserversRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDomainNameserversRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Nameservers"] = args["Nameservers"],
		["FIAuthKey"] = args["FIAuthKey"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertUpdateDomainNameserversRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDomainDetailRequest = { ["DomainName"] = true, nil }

function asserts.AssertGetDomainDetailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainDetailRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainDetailRequest[k], "GetDomainDetailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainDetailRequest
-- <p>The GetDomainDetail request includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainName [DomainName] <p>The name of the domain that you want to get detailed information about.</p>
-- Required key: DomainName
-- @return GetDomainDetailRequest structure as a key-value pair table
function M.GetDomainDetailRequest(args)
	assert(args, "You must provide an argument table when creating GetDomainDetailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertGetDomainDetailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDomainsResponse = { ["Domains"] = true, ["NextPageMarker"] = true, nil }

function asserts.AssertListDomainsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsResponse to be of type 'table'")
	assert(struct["Domains"], "Expected key Domains to exist in table")
	if struct["Domains"] then asserts.AssertDomainSummaryList(struct["Domains"]) end
	if struct["NextPageMarker"] then asserts.AssertPageMarker(struct["NextPageMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainsResponse[k], "ListDomainsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsResponse
-- <p>The ListDomains response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domains [DomainSummaryList] <p>A summary of domains.</p>
-- * NextPageMarker [PageMarker] <p>If there are more domains than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- Required key: Domains
-- @return ListDomainsResponse structure as a key-value pair table
function M.ListDomainsResponse(args)
	assert(args, "You must provide an argument table when creating ListDomainsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domains"] = args["Domains"],
		["NextPageMarker"] = args["NextPageMarker"],
	}
	asserts.AssertListDomainsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDomainsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainsRequest[k], "ListDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsRequest
-- <p>The ListDomains request includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional domains. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p> <p>Constraints: The marker must match the value specified in the previous request.</p>
-- * MaxItems [PageMaxItems] <p>Number of domains to be returned.</p> <p>Default: 20</p>
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
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListDomainsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOperationsResponse = { ["Operations"] = true, ["NextPageMarker"] = true, nil }

function asserts.AssertListOperationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsResponse to be of type 'table'")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then asserts.AssertOperationSummaryList(struct["Operations"]) end
	if struct["NextPageMarker"] then asserts.AssertPageMarker(struct["NextPageMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOperationsResponse[k], "ListOperationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsResponse
-- <p>The ListOperations response includes the following elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operations [OperationSummaryList] <p>Lists summaries of the operations.</p>
-- * NextPageMarker [PageMarker] <p>If there are more operations than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- Required key: Operations
-- @return ListOperationsResponse structure as a key-value pair table
function M.ListOperationsResponse(args)
	assert(args, "You must provide an argument table when creating ListOperationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operations"] = args["Operations"],
		["NextPageMarker"] = args["NextPageMarker"],
	}
	asserts.AssertListOperationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInput = { ["message"] = true, nil }

function asserts.AssertInvalidInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInput to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInput[k], "InvalidInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInput
-- <p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>
-- @return InvalidInput structure as a key-value pair table
function M.InvalidInput(args)
	assert(args, "You must provide an argument table when creating InvalidInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetrieveDomainAuthCodeResponse = { ["AuthCode"] = true, nil }

function asserts.AssertRetrieveDomainAuthCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveDomainAuthCodeResponse to be of type 'table'")
	assert(struct["AuthCode"], "Expected key AuthCode to exist in table")
	if struct["AuthCode"] then asserts.AssertDomainAuthCode(struct["AuthCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveDomainAuthCodeResponse[k], "RetrieveDomainAuthCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveDomainAuthCodeResponse
-- <p>The RetrieveDomainAuthCode response includes the following element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthCode [DomainAuthCode] <p>The authorization code for the domain.</p>
-- Required key: AuthCode
-- @return RetrieveDomainAuthCodeResponse structure as a key-value pair table
function M.RetrieveDomainAuthCodeResponse(args)
	assert(args, "You must provide an argument table when creating RetrieveDomainAuthCodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthCode"] = args["AuthCode"],
	}
	asserts.AssertRetrieveDomainAuthCodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertOperationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationStatus to be of type 'string'")
end

--  
function M.OperationStatus(str)
	asserts.AssertOperationStatus(str)
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

function asserts.AssertPageMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMarker to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.PageMarker(str)
	asserts.AssertPageMarker(str)
	return str
end

function asserts.AssertGlueIp(str)
	assert(str)
	assert(type(str) == "string", "Expected GlueIp to be of type 'string'")
	assert(#str <= 45, "Expected string to be max 45 characters")
end

--  
function M.GlueIp(str)
	asserts.AssertGlueIp(str)
	return str
end

function asserts.AssertContactType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactType to be of type 'string'")
end

--  
function M.ContactType(str)
	asserts.AssertContactType(str)
	return str
end

function asserts.AssertRegistryDomainId(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistryDomainId to be of type 'string'")
end

--  
function M.RegistryDomainId(str)
	asserts.AssertRegistryDomainId(str)
	return str
end

function asserts.AssertReseller(str)
	assert(str)
	assert(type(str) == "string", "Expected Reseller to be of type 'string'")
end

--  
function M.Reseller(str)
	asserts.AssertReseller(str)
	return str
end

function asserts.AssertTransferable(str)
	assert(str)
	assert(type(str) == "string", "Expected Transferable to be of type 'string'")
end

-- <p>Whether the domain name can be transferred to Amazon Route 53.</p> <note> <p>You can transfer only domains that have a value of <code>TRANSFERABLE</code> for <code>Transferable</code>.</p> </note> <p>Valid values:</p> <dl> <dt>TRANSFERABLE</dt> <dd> <p>The domain name can be transferred to Amazon Route 53.</p> </dd> <dt>UNTRANSFERRABLE</dt> <dd> <p>The domain name can't be transferred to Amazon Route 53.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>Reserved for future use.</p> </dd> </dl>
function M.Transferable(str)
	asserts.AssertTransferable(str)
	return str
end

function asserts.AssertLangCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LangCode to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
end

--  
function M.LangCode(str)
	asserts.AssertLangCode(str)
	return str
end

function asserts.AssertRegistrarName(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrarName to be of type 'string'")
end

--  
function M.RegistrarName(str)
	asserts.AssertRegistrarName(str)
	return str
end

function asserts.AssertExtraParamValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtraParamValue to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ExtraParamValue(str)
	asserts.AssertExtraParamValue(str)
	return str
end

function asserts.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.DomainName(str)
	asserts.AssertDomainName(str)
	return str
end

function asserts.AssertDomainStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatus to be of type 'string'")
end

--  
function M.DomainStatus(str)
	asserts.AssertDomainStatus(str)
	return str
end

function asserts.AssertState(str)
	assert(str)
	assert(type(str) == "string", "Expected State to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.State(str)
	asserts.AssertState(str)
	return str
end

function asserts.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 254, "Expected string to be max 254 characters")
end

--  
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertOperationId(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.OperationId(str)
	asserts.AssertOperationId(str)
	return str
end

function asserts.AssertCountryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CountryCode to be of type 'string'")
end

--  
function M.CountryCode(str)
	asserts.AssertCountryCode(str)
	return str
end

function asserts.AssertReachabilityStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReachabilityStatus to be of type 'string'")
end

--  
function M.ReachabilityStatus(str)
	asserts.AssertReachabilityStatus(str)
	return str
end

function asserts.AssertExtraParamName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtraParamName to be of type 'string'")
end

--  
function M.ExtraParamName(str)
	asserts.AssertExtraParamName(str)
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

function asserts.AssertZipCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ZipCode to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ZipCode(str)
	asserts.AssertZipCode(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertDomainAvailability(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainAvailability to be of type 'string'")
end

--  
function M.DomainAvailability(str)
	asserts.AssertDomainAvailability(str)
	return str
end

function asserts.AssertContactNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactNumber to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
end

--  
function M.ContactNumber(str)
	asserts.AssertContactNumber(str)
	return str
end

function asserts.AssertRegistrarWhoIsServer(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrarWhoIsServer to be of type 'string'")
end

--  
function M.RegistrarWhoIsServer(str)
	asserts.AssertRegistrarWhoIsServer(str)
	return str
end

function asserts.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	asserts.AssertOperationType(str)
	return str
end

function asserts.AssertFIAuthKey(str)
	assert(str)
	assert(type(str) == "string", "Expected FIAuthKey to be of type 'string'")
end

--  
function M.FIAuthKey(str)
	asserts.AssertFIAuthKey(str)
	return str
end

function asserts.AssertInvoiceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InvoiceId to be of type 'string'")
end

--  
function M.InvoiceId(str)
	asserts.AssertInvoiceId(str)
	return str
end

function asserts.AssertRegistrarUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrarUrl to be of type 'string'")
end

--  
function M.RegistrarUrl(str)
	asserts.AssertRegistrarUrl(str)
	return str
end

function asserts.AssertCity(str)
	assert(str)
	assert(type(str) == "string", "Expected City to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.City(str)
	asserts.AssertCity(str)
	return str
end

function asserts.AssertAddressLine(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressLine to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.AddressLine(str)
	asserts.AssertAddressLine(str)
	return str
end

function asserts.AssertHostName(str)
	assert(str)
	assert(type(str) == "string", "Expected HostName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.HostName(str)
	asserts.AssertHostName(str)
	return str
end

function asserts.AssertContactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ContactName(str)
	asserts.AssertContactName(str)
	return str
end

function asserts.AssertDNSSec(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSSec to be of type 'string'")
end

--  
function M.DNSSec(str)
	asserts.AssertDNSSec(str)
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

function asserts.AssertDomainAuthCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainAuthCode to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.DomainAuthCode(str)
	asserts.AssertDomainAuthCode(str)
	return str
end

function asserts.AssertPrice(double)
	assert(double)
	assert(type(double) == "number", "Expected Price to be of type 'number'")
end

function M.Price(double)
	asserts.AssertPrice(double)
	return double
end

function asserts.AssertPageMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageMaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.PageMaxItems(integer)
	asserts.AssertPageMaxItems(integer)
	return integer
end

function asserts.AssertCurrentExpiryYear(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CurrentExpiryYear to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CurrentExpiryYear(integer)
	asserts.AssertCurrentExpiryYear(integer)
	return integer
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

function asserts.AssertDurationInYears(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DurationInYears to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DurationInYears(integer)
	asserts.AssertDurationInYears(integer)
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

function asserts.AssertDomainSuggestionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainSuggestionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainSuggestion(v)
	end
end

--  
-- List of DomainSuggestion objects
function M.DomainSuggestionsList(list)
	asserts.AssertDomainSuggestionsList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertDomainSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainSummary(v)
	end
end

--  
-- List of DomainSummary objects
function M.DomainSummaryList(list)
	asserts.AssertDomainSummaryList(list)
	return list
end

function asserts.AssertGlueIpList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlueIpList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlueIp(v)
	end
end

--  
-- List of GlueIp objects
function M.GlueIpList(list)
	asserts.AssertGlueIpList(list)
	return list
end

function asserts.AssertDomainStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainStatus(v)
	end
end

--  
-- List of DomainStatus objects
function M.DomainStatusList(list)
	asserts.AssertDomainStatusList(list)
	return list
end

function asserts.AssertNameserverList(list)
	assert(list)
	assert(type(list) == "table", "Expected NameserverList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNameserver(v)
	end
end

--  
-- List of Nameserver objects
function M.NameserverList(list)
	asserts.AssertNameserverList(list)
	return list
end

function asserts.AssertOperationSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected OperationSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOperationSummary(v)
	end
end

--  
-- List of OperationSummary objects
function M.OperationSummaryList(list)
	asserts.AssertOperationSummaryList(list)
	return list
end

function asserts.AssertExtraParamList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExtraParamList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExtraParam(v)
	end
end

--  
-- List of ExtraParam objects
function M.ExtraParamList(list)
	asserts.AssertExtraParamList(list)
	return list
end

function asserts.AssertBillingRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected BillingRecords to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBillingRecord(v)
	end
end

--  
-- List of BillingRecord objects
function M.BillingRecords(list)
	asserts.AssertBillingRecords(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
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
			return "route53domains.amazonaws.com"
		end
	end
	local ss = { "route53domains" }
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
--- Call CheckDomainTransferability asynchronously, invoking a callback when done
-- @param CheckDomainTransferabilityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CheckDomainTransferabilityAsync(CheckDomainTransferabilityRequest, cb)
	assert(CheckDomainTransferabilityRequest, "You must provide a CheckDomainTransferabilityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.CheckDomainTransferability",
	}
	for header,value in pairs(CheckDomainTransferabilityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CheckDomainTransferabilityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CheckDomainTransferability synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CheckDomainTransferabilityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CheckDomainTransferabilitySync(CheckDomainTransferabilityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CheckDomainTransferabilityAsync(CheckDomainTransferabilityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResendContactReachabilityEmail asynchronously, invoking a callback when done
-- @param ResendContactReachabilityEmailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResendContactReachabilityEmailAsync(ResendContactReachabilityEmailRequest, cb)
	assert(ResendContactReachabilityEmailRequest, "You must provide a ResendContactReachabilityEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ResendContactReachabilityEmail",
	}
	for header,value in pairs(ResendContactReachabilityEmailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResendContactReachabilityEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResendContactReachabilityEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResendContactReachabilityEmailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResendContactReachabilityEmailSync(ResendContactReachabilityEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResendContactReachabilityEmailAsync(ResendContactReachabilityEmailRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ListDomains",
	}
	for header,value in pairs(ListDomainsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call DisableDomainTransferLock asynchronously, invoking a callback when done
-- @param DisableDomainTransferLockRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableDomainTransferLockAsync(DisableDomainTransferLockRequest, cb)
	assert(DisableDomainTransferLockRequest, "You must provide a DisableDomainTransferLockRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.DisableDomainTransferLock",
	}
	for header,value in pairs(DisableDomainTransferLockRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableDomainTransferLockRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableDomainTransferLock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableDomainTransferLockRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableDomainTransferLockSync(DisableDomainTransferLockRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableDomainTransferLockAsync(DisableDomainTransferLockRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RetrieveDomainAuthCode asynchronously, invoking a callback when done
-- @param RetrieveDomainAuthCodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RetrieveDomainAuthCodeAsync(RetrieveDomainAuthCodeRequest, cb)
	assert(RetrieveDomainAuthCodeRequest, "You must provide a RetrieveDomainAuthCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.RetrieveDomainAuthCode",
	}
	for header,value in pairs(RetrieveDomainAuthCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RetrieveDomainAuthCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RetrieveDomainAuthCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RetrieveDomainAuthCodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RetrieveDomainAuthCodeSync(RetrieveDomainAuthCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RetrieveDomainAuthCodeAsync(RetrieveDomainAuthCodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ViewBilling asynchronously, invoking a callback when done
-- @param ViewBillingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ViewBillingAsync(ViewBillingRequest, cb)
	assert(ViewBillingRequest, "You must provide a ViewBillingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ViewBilling",
	}
	for header,value in pairs(ViewBillingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ViewBillingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ViewBilling synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ViewBillingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ViewBillingSync(ViewBillingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ViewBillingAsync(ViewBillingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainNameservers asynchronously, invoking a callback when done
-- @param UpdateDomainNameserversRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDomainNameserversAsync(UpdateDomainNameserversRequest, cb)
	assert(UpdateDomainNameserversRequest, "You must provide a UpdateDomainNameserversRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateDomainNameservers",
	}
	for header,value in pairs(UpdateDomainNameserversRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDomainNameserversRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDomainNameservers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDomainNameserversRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDomainNameserversSync(UpdateDomainNameserversRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainNameserversAsync(UpdateDomainNameserversRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTagsForDomain asynchronously, invoking a callback when done
-- @param UpdateTagsForDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTagsForDomainAsync(UpdateTagsForDomainRequest, cb)
	assert(UpdateTagsForDomainRequest, "You must provide a UpdateTagsForDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateTagsForDomain",
	}
	for header,value in pairs(UpdateTagsForDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTagsForDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTagsForDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTagsForDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTagsForDomainSync(UpdateTagsForDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTagsForDomainAsync(UpdateTagsForDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CheckDomainAvailability asynchronously, invoking a callback when done
-- @param CheckDomainAvailabilityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CheckDomainAvailabilityAsync(CheckDomainAvailabilityRequest, cb)
	assert(CheckDomainAvailabilityRequest, "You must provide a CheckDomainAvailabilityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.CheckDomainAvailability",
	}
	for header,value in pairs(CheckDomainAvailabilityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CheckDomainAvailabilityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CheckDomainAvailability synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CheckDomainAvailabilityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CheckDomainAvailabilitySync(CheckDomainAvailabilityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CheckDomainAvailabilityAsync(CheckDomainAvailabilityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomainSuggestions asynchronously, invoking a callback when done
-- @param GetDomainSuggestionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDomainSuggestionsAsync(GetDomainSuggestionsRequest, cb)
	assert(GetDomainSuggestionsRequest, "You must provide a GetDomainSuggestionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetDomainSuggestions",
	}
	for header,value in pairs(GetDomainSuggestionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDomainSuggestionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDomainSuggestions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDomainSuggestionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDomainSuggestionsSync(GetDomainSuggestionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainSuggestionsAsync(GetDomainSuggestionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperationDetail asynchronously, invoking a callback when done
-- @param GetOperationDetailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetOperationDetailAsync(GetOperationDetailRequest, cb)
	assert(GetOperationDetailRequest, "You must provide a GetOperationDetailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetOperationDetail",
	}
	for header,value in pairs(GetOperationDetailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOperationDetailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOperationDetail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOperationDetailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetOperationDetailSync(GetOperationDetailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationDetailAsync(GetOperationDetailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RenewDomain asynchronously, invoking a callback when done
-- @param RenewDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RenewDomainAsync(RenewDomainRequest, cb)
	assert(RenewDomainRequest, "You must provide a RenewDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.RenewDomain",
	}
	for header,value in pairs(RenewDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RenewDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RenewDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RenewDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RenewDomainSync(RenewDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RenewDomainAsync(RenewDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TransferDomain asynchronously, invoking a callback when done
-- @param TransferDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TransferDomainAsync(TransferDomainRequest, cb)
	assert(TransferDomainRequest, "You must provide a TransferDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.TransferDomain",
	}
	for header,value in pairs(TransferDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TransferDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TransferDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TransferDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TransferDomainSync(TransferDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TransferDomainAsync(TransferDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableDomainAutoRenew asynchronously, invoking a callback when done
-- @param DisableDomainAutoRenewRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableDomainAutoRenewAsync(DisableDomainAutoRenewRequest, cb)
	assert(DisableDomainAutoRenewRequest, "You must provide a DisableDomainAutoRenewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.DisableDomainAutoRenew",
	}
	for header,value in pairs(DisableDomainAutoRenewRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableDomainAutoRenewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableDomainAutoRenew synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableDomainAutoRenewRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableDomainAutoRenewSync(DisableDomainAutoRenewRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableDomainAutoRenewAsync(DisableDomainAutoRenewRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTagsForDomain asynchronously, invoking a callback when done
-- @param DeleteTagsForDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagsForDomainAsync(DeleteTagsForDomainRequest, cb)
	assert(DeleteTagsForDomainRequest, "You must provide a DeleteTagsForDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.DeleteTagsForDomain",
	}
	for header,value in pairs(DeleteTagsForDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagsForDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTagsForDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsForDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTagsForDomainSync(DeleteTagsForDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsForDomainAsync(DeleteTagsForDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterDomain asynchronously, invoking a callback when done
-- @param RegisterDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterDomainAsync(RegisterDomainRequest, cb)
	assert(RegisterDomainRequest, "You must provide a RegisterDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.RegisterDomain",
	}
	for header,value in pairs(RegisterDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterDomainSync(RegisterDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterDomainAsync(RegisterDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomainDetail asynchronously, invoking a callback when done
-- @param GetDomainDetailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDomainDetailAsync(GetDomainDetailRequest, cb)
	assert(GetDomainDetailRequest, "You must provide a GetDomainDetailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetDomainDetail",
	}
	for header,value in pairs(GetDomainDetailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDomainDetailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDomainDetail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDomainDetailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDomainDetailSync(GetDomainDetailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainDetailAsync(GetDomainDetailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableDomainAutoRenew asynchronously, invoking a callback when done
-- @param EnableDomainAutoRenewRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableDomainAutoRenewAsync(EnableDomainAutoRenewRequest, cb)
	assert(EnableDomainAutoRenewRequest, "You must provide a EnableDomainAutoRenewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.EnableDomainAutoRenew",
	}
	for header,value in pairs(EnableDomainAutoRenewRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableDomainAutoRenewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableDomainAutoRenew synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableDomainAutoRenewRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableDomainAutoRenewSync(EnableDomainAutoRenewRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableDomainAutoRenewAsync(EnableDomainAutoRenewRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainContactPrivacy asynchronously, invoking a callback when done
-- @param UpdateDomainContactPrivacyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDomainContactPrivacyAsync(UpdateDomainContactPrivacyRequest, cb)
	assert(UpdateDomainContactPrivacyRequest, "You must provide a UpdateDomainContactPrivacyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateDomainContactPrivacy",
	}
	for header,value in pairs(UpdateDomainContactPrivacyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDomainContactPrivacyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDomainContactPrivacy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDomainContactPrivacyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDomainContactPrivacySync(UpdateDomainContactPrivacyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainContactPrivacyAsync(UpdateDomainContactPrivacyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForDomain asynchronously, invoking a callback when done
-- @param ListTagsForDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForDomainAsync(ListTagsForDomainRequest, cb)
	assert(ListTagsForDomainRequest, "You must provide a ListTagsForDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ListTagsForDomain",
	}
	for header,value in pairs(ListTagsForDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForDomainSync(ListTagsForDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForDomainAsync(ListTagsForDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetContactReachabilityStatus asynchronously, invoking a callback when done
-- @param GetContactReachabilityStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetContactReachabilityStatusAsync(GetContactReachabilityStatusRequest, cb)
	assert(GetContactReachabilityStatusRequest, "You must provide a GetContactReachabilityStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetContactReachabilityStatus",
	}
	for header,value in pairs(GetContactReachabilityStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetContactReachabilityStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetContactReachabilityStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetContactReachabilityStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetContactReachabilityStatusSync(GetContactReachabilityStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetContactReachabilityStatusAsync(GetContactReachabilityStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainContact asynchronously, invoking a callback when done
-- @param UpdateDomainContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDomainContactAsync(UpdateDomainContactRequest, cb)
	assert(UpdateDomainContactRequest, "You must provide a UpdateDomainContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateDomainContact",
	}
	for header,value in pairs(UpdateDomainContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDomainContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDomainContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDomainContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDomainContactSync(UpdateDomainContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainContactAsync(UpdateDomainContactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOperations asynchronously, invoking a callback when done
-- @param ListOperationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOperationsAsync(ListOperationsRequest, cb)
	assert(ListOperationsRequest, "You must provide a ListOperationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ListOperations",
	}
	for header,value in pairs(ListOperationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOperationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOperations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOperationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOperationsSync(ListOperationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOperationsAsync(ListOperationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableDomainTransferLock asynchronously, invoking a callback when done
-- @param EnableDomainTransferLockRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableDomainTransferLockAsync(EnableDomainTransferLockRequest, cb)
	assert(EnableDomainTransferLockRequest, "You must provide a EnableDomainTransferLockRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.EnableDomainTransferLock",
	}
	for header,value in pairs(EnableDomainTransferLockRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableDomainTransferLockRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableDomainTransferLock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableDomainTransferLockRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableDomainTransferLockSync(EnableDomainTransferLockRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableDomainTransferLockAsync(EnableDomainTransferLockRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
