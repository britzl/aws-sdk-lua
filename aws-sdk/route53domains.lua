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

local UpdateTagsForDomainRequest_keys = { "TagsToUpdate" = true, "DomainName" = true, nil }

function M.AssertUpdateTagsForDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagsForDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["TagsToUpdate"] then M.AssertTagList(struct["TagsToUpdate"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTagsForDomainRequest_keys[k], "UpdateTagsForDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagsForDomainRequest
-- <p>The UpdateTagsForDomainRequest includes the following elements.</p>
-- @param TagsToUpdate [TagList] <p>A list of the tag keys and values that you want to add or update. If you specify a key that already exists, the corresponding value will be replaced.</p>
-- @param DomainName [DomainName] <p>The domain for which you want to add or update tags.</p>
-- Required parameter: DomainName
function M.UpdateTagsForDomainRequest(TagsToUpdate, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagsForDomainRequest")
	local t = { 
		["TagsToUpdate"] = TagsToUpdate,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateTagsForDomainRequest(t)
	return t
end

local DisableDomainAutoRenewRequest_keys = { "DomainName" = true, nil }

function M.AssertDisableDomainAutoRenewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainAutoRenewRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DisableDomainAutoRenewRequest_keys[k], "DisableDomainAutoRenewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainAutoRenewRequest
--  
-- @param DomainName [DomainName] <p>The name of the domain that you want to disable automatic renewal for.</p>
-- Required parameter: DomainName
function M.DisableDomainAutoRenewRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainAutoRenewRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDisableDomainAutoRenewRequest(t)
	return t
end

local BillingRecord_keys = { "Operation" = true, "InvoiceId" = true, "Price" = true, "BillDate" = true, "DomainName" = true, nil }

function M.AssertBillingRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BillingRecord to be of type 'table'")
	if struct["Operation"] then M.AssertOperationType(struct["Operation"]) end
	if struct["InvoiceId"] then M.AssertInvoiceId(struct["InvoiceId"]) end
	if struct["Price"] then M.AssertPrice(struct["Price"]) end
	if struct["BillDate"] then M.AssertTimestamp(struct["BillDate"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(BillingRecord_keys[k], "BillingRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BillingRecord
-- <p>Information for one billing record.</p>
-- @param Operation [OperationType] <p>The operation that you were charged for.</p>
-- @param InvoiceId [InvoiceId] <p>The ID of the invoice that is associated with the billing record.</p>
-- @param Price [Price] <p>The price that you were charged for the operation, in US dollars.</p> <p>Example value: 12.0</p>
-- @param BillDate [Timestamp] <p>The date that the operation was billed, in Unix format.</p>
-- @param DomainName [DomainName] <p>The name of the domain that the billing record applies to. If the domain name contains characters other than a-z, 0-9, and - (hyphen), such as an internationalized domain name, then this value is in Punycode. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the <i>Amazon Route 53 Developer Guidezzz</i>.</p>
function M.BillingRecord(Operation, InvoiceId, Price, BillDate, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BillingRecord")
	local t = { 
		["Operation"] = Operation,
		["InvoiceId"] = InvoiceId,
		["Price"] = Price,
		["BillDate"] = BillDate,
		["DomainName"] = DomainName,
	}
	M.AssertBillingRecord(t)
	return t
end

local DomainSummary_keys = { "TransferLock" = true, "AutoRenew" = true, "Expiry" = true, "DomainName" = true, nil }

function M.AssertDomainSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainSummary to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["TransferLock"] then M.AssertBoolean(struct["TransferLock"]) end
	if struct["AutoRenew"] then M.AssertBoolean(struct["AutoRenew"]) end
	if struct["Expiry"] then M.AssertTimestamp(struct["Expiry"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainSummary_keys[k], "DomainSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainSummary
-- <p>Summary information about one domain.</p>
-- @param TransferLock [Boolean] <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
-- @param AutoRenew [Boolean] <p>Indicates whether the domain is automatically renewed upon expiration.</p>
-- @param Expiry [Timestamp] <p>Expiration date of the domain in Coordinated Universal Time (UTC).</p>
-- @param DomainName [DomainName] <p>The name of the domain that the summary information applies to.</p>
-- Required parameter: DomainName
function M.DomainSummary(TransferLock, AutoRenew, Expiry, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainSummary")
	local t = { 
		["TransferLock"] = TransferLock,
		["AutoRenew"] = AutoRenew,
		["Expiry"] = Expiry,
		["DomainName"] = DomainName,
	}
	M.AssertDomainSummary(t)
	return t
end

local ListOperationsRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListOperationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListOperationsRequest_keys[k], "ListOperationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsRequest
-- <p>The ListOperations request includes the following elements.</p>
-- @param Marker [PageMarker] <p>For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional operations. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
-- @param MaxItems [PageMaxItems] <p>Number of domains to be returned.</p> <p>Default: 20</p>
function M.ListOperationsRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOperationsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListOperationsRequest(t)
	return t
end

local UnsupportedTLD_keys = { "message" = true, nil }

function M.AssertUnsupportedTLD(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedTLD to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedTLD_keys[k], "UnsupportedTLD contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedTLD
-- <p>Amazon Route 53 does not support this top-level domain.</p>
-- @param message [ErrorMessage] <p>Amazon Route 53 does not support this top-level domain.</p>
function M.UnsupportedTLD(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedTLD")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedTLD(t)
	return t
end

local ListTagsForDomainResponse_keys = { "TagList" = true, nil }

function M.AssertListTagsForDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForDomainResponse to be of type 'table'")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForDomainResponse_keys[k], "ListTagsForDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForDomainResponse
-- <p>The ListTagsForDomain response includes the following elements.</p>
-- @param TagList [TagList] <p>A list of the tags that are associated with the specified domain.</p>
-- Required parameter: TagList
function M.ListTagsForDomainResponse(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForDomainResponse")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertListTagsForDomainResponse(t)
	return t
end

local RenewDomainResponse_keys = { "OperationId" = true, nil }

function M.AssertRenewDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewDomainResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(RenewDomainResponse_keys[k], "RenewDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewDomainResponse
--  
-- @param OperationId [OperationId] <p>The identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.RenewDomainResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewDomainResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertRenewDomainResponse(t)
	return t
end

local ExtraParam_keys = { "Name" = true, "Value" = true, nil }

function M.AssertExtraParam(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtraParam to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then M.AssertExtraParamName(struct["Name"]) end
	if struct["Value"] then M.AssertExtraParamValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(ExtraParam_keys[k], "ExtraParam contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtraParam
-- <p>ExtraParam includes the following elements.</p>
-- @param Name [ExtraParamName] <p>Name of the additional parameter required by the top-level domain.</p>
-- @param Value [ExtraParamValue] <p>Values corresponding to the additional parameter names required by some top-level domains.</p>
-- Required parameter: Name
-- Required parameter: Value
function M.ExtraParam(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtraParam")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertExtraParam(t)
	return t
end

local GetOperationDetailResponse_keys = { "Status" = true, "DomainName" = true, "SubmittedDate" = true, "Message" = true, "Type" = true, "OperationId" = true, nil }

function M.AssertGetOperationDetailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationDetailResponse to be of type 'table'")
	if struct["Status"] then M.AssertOperationStatus(struct["Status"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["SubmittedDate"] then M.AssertTimestamp(struct["SubmittedDate"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	if struct["Type"] then M.AssertOperationType(struct["Type"]) end
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationDetailResponse_keys[k], "GetOperationDetailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationDetailResponse
-- <p>The GetOperationDetail response includes the following elements.</p>
-- @param Status [OperationStatus] <p>The current status of the requested operation in the system.</p>
-- @param DomainName [DomainName] <p>The name of a domain.</p>
-- @param SubmittedDate [Timestamp] <p>The date when the request was submitted.</p>
-- @param Message [ErrorMessage] <p>Detailed information on the status including possible errors.</p>
-- @param Type [OperationType] <p>The type of operation that was requested.</p>
-- @param OperationId [OperationId] <p>The identifier for the operation.</p>
function M.GetOperationDetailResponse(Status, DomainName, SubmittedDate, Message, Type, OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationDetailResponse")
	local t = { 
		["Status"] = Status,
		["DomainName"] = DomainName,
		["SubmittedDate"] = SubmittedDate,
		["Message"] = Message,
		["Type"] = Type,
		["OperationId"] = OperationId,
	}
	M.AssertGetOperationDetailResponse(t)
	return t
end

local GetOperationDetailRequest_keys = { "OperationId" = true, nil }

function M.AssertGetOperationDetailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationDetailRequest to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(GetOperationDetailRequest_keys[k], "GetOperationDetailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationDetailRequest
-- <p>The <a>GetOperationDetail</a> request includes the following element.</p>
-- @param OperationId [OperationId] <p>The identifier for the operation for which you want to get the status. Amazon Route 53 returned the identifier in the response to the original request.</p>
-- Required parameter: OperationId
function M.GetOperationDetailRequest(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationDetailRequest")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertGetOperationDetailRequest(t)
	return t
end

local DisableDomainTransferLockRequest_keys = { "DomainName" = true, nil }

function M.AssertDisableDomainTransferLockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainTransferLockRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DisableDomainTransferLockRequest_keys[k], "DisableDomainTransferLockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainTransferLockRequest
-- <p>The DisableDomainTransferLock request includes the following element.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to remove the transfer lock for.</p>
-- Required parameter: DomainName
function M.DisableDomainTransferLockRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainTransferLockRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertDisableDomainTransferLockRequest(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Each tag includes the following elements.</p>
-- @param Value [TagValue] <p>The value of a tag.</p> <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p> <p>Constraints: Each value can be 0-256 characters long.</p>
-- @param Key [TagKey] <p>The key (name) of a tag.</p> <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p> <p>Constraints: Each key can be 1-128 characters long.</p>
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local RenewDomainRequest_keys = { "CurrentExpiryYear" = true, "DurationInYears" = true, "DomainName" = true, nil }

function M.AssertRenewDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RenewDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["CurrentExpiryYear"], "Expected key CurrentExpiryYear to exist in table")
	if struct["CurrentExpiryYear"] then M.AssertCurrentExpiryYear(struct["CurrentExpiryYear"]) end
	if struct["DurationInYears"] then M.AssertDurationInYears(struct["DurationInYears"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(RenewDomainRequest_keys[k], "RenewDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RenewDomainRequest
-- <p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>
-- @param CurrentExpiryYear [CurrentExpiryYear] <p>The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.</p>
-- @param DurationInYears [DurationInYears] <p>The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Default: 1</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to renew.</p>
-- Required parameter: DomainName
-- Required parameter: CurrentExpiryYear
function M.RenewDomainRequest(CurrentExpiryYear, DurationInYears, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewDomainRequest")
	local t = { 
		["CurrentExpiryYear"] = CurrentExpiryYear,
		["DurationInYears"] = DurationInYears,
		["DomainName"] = DomainName,
	}
	M.AssertRenewDomainRequest(t)
	return t
end

local DisableDomainAutoRenewResponse_keys = { nil }

function M.AssertDisableDomainAutoRenewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainAutoRenewResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisableDomainAutoRenewResponse_keys[k], "DisableDomainAutoRenewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainAutoRenewResponse
--  
function M.DisableDomainAutoRenewResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainAutoRenewResponse")
	local t = { 
	}
	M.AssertDisableDomainAutoRenewResponse(t)
	return t
end

local GetContactReachabilityStatusResponse_keys = { "status" = true, "domainName" = true, nil }

function M.AssertGetContactReachabilityStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContactReachabilityStatusResponse to be of type 'table'")
	if struct["status"] then M.AssertReachabilityStatus(struct["status"]) end
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(GetContactReachabilityStatusResponse_keys[k], "GetContactReachabilityStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContactReachabilityStatusResponse
--  
-- @param status [ReachabilityStatus] <p>Whether the registrant contact has responded. Values include the following:</p> <dl> <dt>PENDING</dt> <dd> <p>We sent the confirmation email and haven't received a response yet.</p> </dd> <dt>DONE</dt> <dd> <p>We sent the email and got confirmation from the registrant contact.</p> </dd> <dt>EXPIRED</dt> <dd> <p>The time limit expired before the registrant contact responded.</p> </dd> </dl>
-- @param domainName [DomainName] <p>The domain name for which you requested the reachability status.</p>
function M.GetContactReachabilityStatusResponse(status, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContactReachabilityStatusResponse")
	local t = { 
		["status"] = status,
		["domainName"] = domainName,
	}
	M.AssertGetContactReachabilityStatusResponse(t)
	return t
end

local DeleteTagsForDomainRequest_keys = { "TagsToDelete" = true, "DomainName" = true, nil }

function M.AssertDeleteTagsForDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsForDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["TagsToDelete"], "Expected key TagsToDelete to exist in table")
	if struct["TagsToDelete"] then M.AssertTagKeyList(struct["TagsToDelete"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsForDomainRequest_keys[k], "DeleteTagsForDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsForDomainRequest
-- <p>The DeleteTagsForDomainRequest includes the following elements.</p>
-- @param TagsToDelete [TagKeyList] <p>A list of tag keys to delete.</p>
-- @param DomainName [DomainName] <p>The domain for which you want to delete one or more tags.</p>
-- Required parameter: DomainName
-- Required parameter: TagsToDelete
function M.DeleteTagsForDomainRequest(TagsToDelete, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsForDomainRequest")
	local t = { 
		["TagsToDelete"] = TagsToDelete,
		["DomainName"] = DomainName,
	}
	M.AssertDeleteTagsForDomainRequest(t)
	return t
end

local GetDomainSuggestionsRequest_keys = { "OnlyAvailable" = true, "SuggestionCount" = true, "DomainName" = true, nil }

function M.AssertGetDomainSuggestionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainSuggestionsRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["SuggestionCount"], "Expected key SuggestionCount to exist in table")
	assert(struct["OnlyAvailable"], "Expected key OnlyAvailable to exist in table")
	if struct["OnlyAvailable"] then M.AssertBoolean(struct["OnlyAvailable"]) end
	if struct["SuggestionCount"] then M.AssertInteger(struct["SuggestionCount"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainSuggestionsRequest_keys[k], "GetDomainSuggestionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainSuggestionsRequest
--  
-- @param OnlyAvailable [Boolean] <p>If <code>OnlyAvailable</code> is <code>true</code>, Amazon Route 53 returns only domain names that are available. If <code>OnlyAvailable</code> is <code>false</code>, Amazon Route 53 returns domain names without checking whether they're available to be registered. To determine whether the domain is available, you can call <code>checkDomainAvailability</code> for each suggestion.</p>
-- @param SuggestionCount [Integer] <p>The number of suggested domain names that you want Amazon Route 53 to return.</p>
-- @param DomainName [DomainName] <p>A domain name that you want to use as the basis for a list of possible domain names. The domain name must contain a top-level domain (TLD), such as .com, that Amazon Route 53 supports. For a list of TLDs, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- Required parameter: DomainName
-- Required parameter: SuggestionCount
-- Required parameter: OnlyAvailable
function M.GetDomainSuggestionsRequest(OnlyAvailable, SuggestionCount, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainSuggestionsRequest")
	local t = { 
		["OnlyAvailable"] = OnlyAvailable,
		["SuggestionCount"] = SuggestionCount,
		["DomainName"] = DomainName,
	}
	M.AssertGetDomainSuggestionsRequest(t)
	return t
end

local RetrieveDomainAuthCodeRequest_keys = { "DomainName" = true, nil }

function M.AssertRetrieveDomainAuthCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveDomainAuthCodeRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(RetrieveDomainAuthCodeRequest_keys[k], "RetrieveDomainAuthCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveDomainAuthCodeRequest
-- <p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to get an authorization code for.</p>
-- Required parameter: DomainName
function M.RetrieveDomainAuthCodeRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveDomainAuthCodeRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertRetrieveDomainAuthCodeRequest(t)
	return t
end

local OperationLimitExceeded_keys = { "message" = true, nil }

function M.AssertOperationLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OperationLimitExceeded_keys[k], "OperationLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationLimitExceeded
-- <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
-- @param message [ErrorMessage] <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
function M.OperationLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertOperationLimitExceeded(t)
	return t
end

local UpdateDomainContactRequest_keys = { "RegistrantContact" = true, "AdminContact" = true, "TechContact" = true, "DomainName" = true, nil }

function M.AssertUpdateDomainContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["RegistrantContact"] then M.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["AdminContact"] then M.AssertContactDetail(struct["AdminContact"]) end
	if struct["TechContact"] then M.AssertContactDetail(struct["TechContact"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainContactRequest_keys[k], "UpdateDomainContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactRequest
-- <p>The UpdateDomainContact request includes the following elements.</p>
-- @param RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to update contact information for.</p>
-- Required parameter: DomainName
function M.UpdateDomainContactRequest(RegistrantContact, AdminContact, TechContact, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactRequest")
	local t = { 
		["RegistrantContact"] = RegistrantContact,
		["AdminContact"] = AdminContact,
		["TechContact"] = TechContact,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateDomainContactRequest(t)
	return t
end

local DomainSuggestion_keys = { "Availability" = true, "DomainName" = true, nil }

function M.AssertDomainSuggestion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainSuggestion to be of type 'table'")
	if struct["Availability"] then M.AssertString(struct["Availability"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainSuggestion_keys[k], "DomainSuggestion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainSuggestion
-- <p>Information about one suggested domain name.</p>
-- @param Availability [String] <p>Whether the domain name is available for registering.</p> <note> <p>You can register only the domains that are designated as <code>AVAILABLE</code>.</p> </note> <p>Valid values:</p> <dl> <dt>AVAILABLE</dt> <dd> <p>The domain name is available.</p> </dd> <dt>AVAILABLE_RESERVED</dt> <dd> <p>The domain name is reserved under specific conditions.</p> </dd> <dt>AVAILABLE_PREORDER</dt> <dd> <p>The domain name is available and can be preordered.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. Amazon Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.</p> </dd> <dt>PENDING</dt> <dd> <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.</p> </dd> <dt>RESERVED</dt> <dd> <p>The domain name has been reserved for another person or organization.</p> </dd> <dt>UNAVAILABLE</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_PREMIUM</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_RESTRICTED</dt> <dd> <p>The domain name is forbidden.</p> </dd> </dl>
-- @param DomainName [DomainName] <p>A suggested domain name.</p>
function M.DomainSuggestion(Availability, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainSuggestion")
	local t = { 
		["Availability"] = Availability,
		["DomainName"] = DomainName,
	}
	M.AssertDomainSuggestion(t)
	return t
end

local ViewBillingRequest_keys = { "Marker" = true, "Start" = true, "End" = true, "MaxItems" = true, nil }

function M.AssertViewBillingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewBillingRequest to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["Start"] then M.AssertTimestamp(struct["Start"]) end
	if struct["End"] then M.AssertTimestamp(struct["End"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ViewBillingRequest_keys[k], "ViewBillingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewBillingRequest
-- <p>The ViewBilling request includes the following elements.</p>
-- @param Marker [PageMarker] <p>For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional billing records. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element. </p> <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was returned in the previous response.</p>
-- @param Start [Timestamp] <p>The beginning date and time for the time period for which you want a list of billing records. Specify the date in Unix time format.</p>
-- @param End [Timestamp] <p>The end date and time for the time period for which you want a list of billing records. Specify the date in Unix time format.</p>
-- @param MaxItems [PageMaxItems] <p>The number of billing records to be returned.</p> <p>Default: 20</p>
function M.ViewBillingRequest(Marker, Start, End, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ViewBillingRequest")
	local t = { 
		["Marker"] = Marker,
		["Start"] = Start,
		["End"] = End,
		["MaxItems"] = MaxItems,
	}
	M.AssertViewBillingRequest(t)
	return t
end

local TransferDomainResponse_keys = { "OperationId" = true, nil }

function M.AssertTransferDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferDomainResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(TransferDomainResponse_keys[k], "TransferDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferDomainResponse
-- <p>The TranserDomain response includes the following element.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.TransferDomainResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferDomainResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertTransferDomainResponse(t)
	return t
end

local TLDRulesViolation_keys = { "message" = true, nil }

function M.AssertTLDRulesViolation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TLDRulesViolation to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TLDRulesViolation_keys[k], "TLDRulesViolation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TLDRulesViolation
-- <p>The top-level domain does not support this operation.</p>
-- @param message [ErrorMessage] <p>The top-level domain does not support this operation.</p>
function M.TLDRulesViolation(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TLDRulesViolation")
	local t = { 
		["message"] = message,
	}
	M.AssertTLDRulesViolation(t)
	return t
end

local ResendContactReachabilityEmailRequest_keys = { "domainName" = true, nil }

function M.AssertResendContactReachabilityEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendContactReachabilityEmailRequest to be of type 'table'")
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(ResendContactReachabilityEmailRequest_keys[k], "ResendContactReachabilityEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendContactReachabilityEmailRequest
--  
-- @param domainName [DomainName] <p>The name of the domain for which you want Amazon Route 53 to resend a confirmation email to the registrant contact.</p>
function M.ResendContactReachabilityEmailRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendContactReachabilityEmailRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertResendContactReachabilityEmailRequest(t)
	return t
end

local RegisterDomainRequest_keys = { "RegistrantContact" = true, "IdnLangCode" = true, "DomainName" = true, "PrivacyProtectRegistrantContact" = true, "PrivacyProtectTechContact" = true, "TechContact" = true, "PrivacyProtectAdminContact" = true, "AutoRenew" = true, "DurationInYears" = true, "AdminContact" = true, nil }

function M.AssertRegisterDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["DurationInYears"], "Expected key DurationInYears to exist in table")
	assert(struct["AdminContact"], "Expected key AdminContact to exist in table")
	assert(struct["RegistrantContact"], "Expected key RegistrantContact to exist in table")
	assert(struct["TechContact"], "Expected key TechContact to exist in table")
	if struct["RegistrantContact"] then M.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["IdnLangCode"] then M.AssertLangCode(struct["IdnLangCode"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["PrivacyProtectRegistrantContact"] then M.AssertBoolean(struct["PrivacyProtectRegistrantContact"]) end
	if struct["PrivacyProtectTechContact"] then M.AssertBoolean(struct["PrivacyProtectTechContact"]) end
	if struct["TechContact"] then M.AssertContactDetail(struct["TechContact"]) end
	if struct["PrivacyProtectAdminContact"] then M.AssertBoolean(struct["PrivacyProtectAdminContact"]) end
	if struct["AutoRenew"] then M.AssertBoolean(struct["AutoRenew"]) end
	if struct["DurationInYears"] then M.AssertDurationInYears(struct["DurationInYears"]) end
	if struct["AdminContact"] then M.AssertContactDetail(struct["AdminContact"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDomainRequest_keys[k], "RegisterDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDomainRequest
-- <p>The RegisterDomain request includes the following elements.</p>
-- @param RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- @param DomainName [DomainName] <p>The domain name that you want to register.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- @param PrivacyProtectRegistrantContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param PrivacyProtectTechContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param PrivacyProtectAdminContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param AutoRenew [Boolean] <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not (<code>false</code>). Autorenewal only takes effect after the account is charged.</p> <p>Default: <code>true</code> </p>
-- @param DurationInYears [DurationInYears] <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Default: 1</p>
-- @param AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- Required parameter: DomainName
-- Required parameter: DurationInYears
-- Required parameter: AdminContact
-- Required parameter: RegistrantContact
-- Required parameter: TechContact
function M.RegisterDomainRequest(RegistrantContact, IdnLangCode, DomainName, PrivacyProtectRegistrantContact, PrivacyProtectTechContact, TechContact, PrivacyProtectAdminContact, AutoRenew, DurationInYears, AdminContact, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDomainRequest")
	local t = { 
		["RegistrantContact"] = RegistrantContact,
		["IdnLangCode"] = IdnLangCode,
		["DomainName"] = DomainName,
		["PrivacyProtectRegistrantContact"] = PrivacyProtectRegistrantContact,
		["PrivacyProtectTechContact"] = PrivacyProtectTechContact,
		["TechContact"] = TechContact,
		["PrivacyProtectAdminContact"] = PrivacyProtectAdminContact,
		["AutoRenew"] = AutoRenew,
		["DurationInYears"] = DurationInYears,
		["AdminContact"] = AdminContact,
	}
	M.AssertRegisterDomainRequest(t)
	return t
end

local OperationSummary_keys = { "Status" = true, "Type" = true, "SubmittedDate" = true, "OperationId" = true, nil }

function M.AssertOperationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationSummary to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["SubmittedDate"], "Expected key SubmittedDate to exist in table")
	if struct["Status"] then M.AssertOperationStatus(struct["Status"]) end
	if struct["Type"] then M.AssertOperationType(struct["Type"]) end
	if struct["SubmittedDate"] then M.AssertTimestamp(struct["SubmittedDate"]) end
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(OperationSummary_keys[k], "OperationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationSummary
-- <p>OperationSummary includes the following elements.</p>
-- @param Status [OperationStatus] <p>The current status of the requested operation in the system.</p>
-- @param Type [OperationType] <p>Type of the action requested.</p>
-- @param SubmittedDate [Timestamp] <p>The date when the request was submitted.</p>
-- @param OperationId [OperationId] <p>Identifier returned to track the requested action.</p>
-- Required parameter: OperationId
-- Required parameter: Status
-- Required parameter: Type
-- Required parameter: SubmittedDate
function M.OperationSummary(Status, Type, SubmittedDate, OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationSummary")
	local t = { 
		["Status"] = Status,
		["Type"] = Type,
		["SubmittedDate"] = SubmittedDate,
		["OperationId"] = OperationId,
	}
	M.AssertOperationSummary(t)
	return t
end

local UpdateDomainNameserversResponse_keys = { "OperationId" = true, nil }

function M.AssertUpdateDomainNameserversResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainNameserversResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainNameserversResponse_keys[k], "UpdateDomainNameserversResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainNameserversResponse
-- <p>The UpdateDomainNameservers response includes the following element.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.UpdateDomainNameserversResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainNameserversResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertUpdateDomainNameserversResponse(t)
	return t
end

local TransferDomainRequest_keys = { "RegistrantContact" = true, "IdnLangCode" = true, "DomainName" = true, "Nameservers" = true, "AuthCode" = true, "PrivacyProtectRegistrantContact" = true, "TechContact" = true, "PrivacyProtectAdminContact" = true, "AutoRenew" = true, "DurationInYears" = true, "AdminContact" = true, "PrivacyProtectTechContact" = true, nil }

function M.AssertTransferDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["DurationInYears"], "Expected key DurationInYears to exist in table")
	assert(struct["AdminContact"], "Expected key AdminContact to exist in table")
	assert(struct["RegistrantContact"], "Expected key RegistrantContact to exist in table")
	assert(struct["TechContact"], "Expected key TechContact to exist in table")
	if struct["RegistrantContact"] then M.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["IdnLangCode"] then M.AssertLangCode(struct["IdnLangCode"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["Nameservers"] then M.AssertNameserverList(struct["Nameservers"]) end
	if struct["AuthCode"] then M.AssertDomainAuthCode(struct["AuthCode"]) end
	if struct["PrivacyProtectRegistrantContact"] then M.AssertBoolean(struct["PrivacyProtectRegistrantContact"]) end
	if struct["TechContact"] then M.AssertContactDetail(struct["TechContact"]) end
	if struct["PrivacyProtectAdminContact"] then M.AssertBoolean(struct["PrivacyProtectAdminContact"]) end
	if struct["AutoRenew"] then M.AssertBoolean(struct["AutoRenew"]) end
	if struct["DurationInYears"] then M.AssertDurationInYears(struct["DurationInYears"]) end
	if struct["AdminContact"] then M.AssertContactDetail(struct["AdminContact"]) end
	if struct["PrivacyProtectTechContact"] then M.AssertBoolean(struct["PrivacyProtectTechContact"]) end
	for k,_ in pairs(struct) do
		assert(TransferDomainRequest_keys[k], "TransferDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferDomainRequest
-- <p>The TransferDomain request includes the following elements.</p>
-- @param RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to transfer to Amazon Route 53.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- @param Nameservers [NameserverList] <p>Contains details for the host and glue IP addresses.</p>
-- @param AuthCode [DomainAuthCode] <p>The authorization code for the domain. You get this value from the current registrar.</p>
-- @param PrivacyProtectRegistrantContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param PrivacyProtectAdminContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param AutoRenew [Boolean] <p>Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged.</p> <p>Default: true</p>
-- @param DurationInYears [DurationInYears] <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain.</p> <p>Default: 1</p>
-- @param AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param PrivacyProtectTechContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- Required parameter: DomainName
-- Required parameter: DurationInYears
-- Required parameter: AdminContact
-- Required parameter: RegistrantContact
-- Required parameter: TechContact
function M.TransferDomainRequest(RegistrantContact, IdnLangCode, DomainName, Nameservers, AuthCode, PrivacyProtectRegistrantContact, TechContact, PrivacyProtectAdminContact, AutoRenew, DurationInYears, AdminContact, PrivacyProtectTechContact, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferDomainRequest")
	local t = { 
		["RegistrantContact"] = RegistrantContact,
		["IdnLangCode"] = IdnLangCode,
		["DomainName"] = DomainName,
		["Nameservers"] = Nameservers,
		["AuthCode"] = AuthCode,
		["PrivacyProtectRegistrantContact"] = PrivacyProtectRegistrantContact,
		["TechContact"] = TechContact,
		["PrivacyProtectAdminContact"] = PrivacyProtectAdminContact,
		["AutoRenew"] = AutoRenew,
		["DurationInYears"] = DurationInYears,
		["AdminContact"] = AdminContact,
		["PrivacyProtectTechContact"] = PrivacyProtectTechContact,
	}
	M.AssertTransferDomainRequest(t)
	return t
end

local ContactDetail_keys = { "City" = true, "Fax" = true, "OrganizationName" = true, "CountryCode" = true, "FirstName" = true, "LastName" = true, "ContactType" = true, "ZipCode" = true, "ExtraParams" = true, "State" = true, "AddressLine2" = true, "AddressLine1" = true, "PhoneNumber" = true, "Email" = true, nil }

function M.AssertContactDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContactDetail to be of type 'table'")
	if struct["City"] then M.AssertCity(struct["City"]) end
	if struct["Fax"] then M.AssertContactNumber(struct["Fax"]) end
	if struct["OrganizationName"] then M.AssertContactName(struct["OrganizationName"]) end
	if struct["CountryCode"] then M.AssertCountryCode(struct["CountryCode"]) end
	if struct["FirstName"] then M.AssertContactName(struct["FirstName"]) end
	if struct["LastName"] then M.AssertContactName(struct["LastName"]) end
	if struct["ContactType"] then M.AssertContactType(struct["ContactType"]) end
	if struct["ZipCode"] then M.AssertZipCode(struct["ZipCode"]) end
	if struct["ExtraParams"] then M.AssertExtraParamList(struct["ExtraParams"]) end
	if struct["State"] then M.AssertState(struct["State"]) end
	if struct["AddressLine2"] then M.AssertAddressLine(struct["AddressLine2"]) end
	if struct["AddressLine1"] then M.AssertAddressLine(struct["AddressLine1"]) end
	if struct["PhoneNumber"] then M.AssertContactNumber(struct["PhoneNumber"]) end
	if struct["Email"] then M.AssertEmail(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(ContactDetail_keys[k], "ContactDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContactDetail
-- <p>ContactDetail includes the following elements.</p>
-- @param City [City] <p>The city of the contact's address.</p>
-- @param Fax [ContactNumber] <p>Fax number of the contact.</p> <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code]". For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
-- @param OrganizationName [ContactName] <p>Name of the organization for contact types other than <code>PERSON</code>.</p>
-- @param CountryCode [CountryCode] <p>Code for the country of the contact's address.</p>
-- @param FirstName [ContactName] <p>First name of contact.</p>
-- @param LastName [ContactName] <p>Last name of contact.</p>
-- @param ContactType [ContactType] <p>Indicates whether the contact is a person, company, association, or public organization. If you choose an option other than <code>PERSON</code>, you must enter an organization name, and you can't enable privacy protection for the contact.</p>
-- @param ZipCode [ZipCode] <p>The zip or postal code of the contact's address.</p>
-- @param ExtraParams [ExtraParamList] <p>A list of name-value pairs for parameters required by certain top-level domains.</p>
-- @param State [State] <p>The state or province of the contact's city.</p>
-- @param AddressLine2 [AddressLine] <p>Second line of contact's address, if any.</p>
-- @param AddressLine1 [AddressLine] <p>First line of the contact's address.</p>
-- @param PhoneNumber [ContactNumber] <p>The phone number of the contact.</p> <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code&gt;]". For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
-- @param Email [Email] <p>Email address of the contact.</p>
function M.ContactDetail(City, Fax, OrganizationName, CountryCode, FirstName, LastName, ContactType, ZipCode, ExtraParams, State, AddressLine2, AddressLine1, PhoneNumber, Email, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContactDetail")
	local t = { 
		["City"] = City,
		["Fax"] = Fax,
		["OrganizationName"] = OrganizationName,
		["CountryCode"] = CountryCode,
		["FirstName"] = FirstName,
		["LastName"] = LastName,
		["ContactType"] = ContactType,
		["ZipCode"] = ZipCode,
		["ExtraParams"] = ExtraParams,
		["State"] = State,
		["AddressLine2"] = AddressLine2,
		["AddressLine1"] = AddressLine1,
		["PhoneNumber"] = PhoneNumber,
		["Email"] = Email,
	}
	M.AssertContactDetail(t)
	return t
end

local DisableDomainTransferLockResponse_keys = { "OperationId" = true, nil }

function M.AssertDisableDomainTransferLockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDomainTransferLockResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(DisableDomainTransferLockResponse_keys[k], "DisableDomainTransferLockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDomainTransferLockResponse
-- <p>The DisableDomainTransferLock response includes the following element.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.DisableDomainTransferLockResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainTransferLockResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertDisableDomainTransferLockResponse(t)
	return t
end

local UpdateDomainContactResponse_keys = { "OperationId" = true, nil }

function M.AssertUpdateDomainContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainContactResponse_keys[k], "UpdateDomainContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactResponse
-- <p>The UpdateDomainContact response includes the following element.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.UpdateDomainContactResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertUpdateDomainContactResponse(t)
	return t
end

local RegisterDomainResponse_keys = { "OperationId" = true, nil }

function M.AssertRegisterDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDomainResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDomainResponse_keys[k], "RegisterDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDomainResponse
-- <p>The RegisterDomain response includes the following element.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.RegisterDomainResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDomainResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertRegisterDomainResponse(t)
	return t
end

local GetDomainDetailResponse_keys = { "RegistrantContact" = true, "StatusList" = true, "WhoIsServer" = true, "AbuseContactEmail" = true, "Reseller" = true, "RegistrarName" = true, "DomainName" = true, "Nameservers" = true, "RegistrarUrl" = true, "AdminPrivacy" = true, "RegistryDomainId" = true, "TechContact" = true, "CreationDate" = true, "AutoRenew" = true, "UpdatedDate" = true, "ExpirationDate" = true, "DnsSec" = true, "AdminContact" = true, "TechPrivacy" = true, "RegistrantPrivacy" = true, "AbuseContactPhone" = true, nil }

function M.AssertGetDomainDetailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainDetailResponse to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Nameservers"], "Expected key Nameservers to exist in table")
	assert(struct["AdminContact"], "Expected key AdminContact to exist in table")
	assert(struct["RegistrantContact"], "Expected key RegistrantContact to exist in table")
	assert(struct["TechContact"], "Expected key TechContact to exist in table")
	if struct["RegistrantContact"] then M.AssertContactDetail(struct["RegistrantContact"]) end
	if struct["StatusList"] then M.AssertDomainStatusList(struct["StatusList"]) end
	if struct["WhoIsServer"] then M.AssertRegistrarWhoIsServer(struct["WhoIsServer"]) end
	if struct["AbuseContactEmail"] then M.AssertEmail(struct["AbuseContactEmail"]) end
	if struct["Reseller"] then M.AssertReseller(struct["Reseller"]) end
	if struct["RegistrarName"] then M.AssertRegistrarName(struct["RegistrarName"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	if struct["Nameservers"] then M.AssertNameserverList(struct["Nameservers"]) end
	if struct["RegistrarUrl"] then M.AssertRegistrarUrl(struct["RegistrarUrl"]) end
	if struct["AdminPrivacy"] then M.AssertBoolean(struct["AdminPrivacy"]) end
	if struct["RegistryDomainId"] then M.AssertRegistryDomainId(struct["RegistryDomainId"]) end
	if struct["TechContact"] then M.AssertContactDetail(struct["TechContact"]) end
	if struct["CreationDate"] then M.AssertTimestamp(struct["CreationDate"]) end
	if struct["AutoRenew"] then M.AssertBoolean(struct["AutoRenew"]) end
	if struct["UpdatedDate"] then M.AssertTimestamp(struct["UpdatedDate"]) end
	if struct["ExpirationDate"] then M.AssertTimestamp(struct["ExpirationDate"]) end
	if struct["DnsSec"] then M.AssertDNSSec(struct["DnsSec"]) end
	if struct["AdminContact"] then M.AssertContactDetail(struct["AdminContact"]) end
	if struct["TechPrivacy"] then M.AssertBoolean(struct["TechPrivacy"]) end
	if struct["RegistrantPrivacy"] then M.AssertBoolean(struct["RegistrantPrivacy"]) end
	if struct["AbuseContactPhone"] then M.AssertContactNumber(struct["AbuseContactPhone"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainDetailResponse_keys[k], "GetDomainDetailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainDetailResponse
-- <p>The GetDomainDetail response includes the following elements.</p>
-- @param RegistrantContact [ContactDetail] <p>Provides details about the domain registrant.</p>
-- @param StatusList [DomainStatusList] <p>An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes.</p> <p>ICANN, the organization that maintains a central database of domain names, has developed a set of domain name status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name, transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars use this same set of status codes.</p> <p>For a current list of domain name status codes and an explanation of what each code means, go to the <a href="https://www.icann.org/">ICANN website</a> and search for <code>epp status codes</code>. (Search on the ICANN website; web searches sometimes return an old version of the document.)</p>
-- @param WhoIsServer [RegistrarWhoIsServer] <p>The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.</p>
-- @param AbuseContactEmail [Email] <p>Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.</p>
-- @param Reseller [Reseller] <p>Reseller of the domain. Domains registered or transferred using Amazon Route 53 domains will have <code>"Amazon"</code> as the reseller. </p>
-- @param RegistrarName [RegistrarName] <p>Name of the registrar of the domain as identified in the registry. Amazon Route 53 domains are registered by registrar Gandi. The value is <code>"GANDI SAS"</code>. </p>
-- @param DomainName [DomainName] <p>The name of a domain.</p>
-- @param Nameservers [NameserverList] <p>The name of the domain.</p>
-- @param RegistrarUrl [RegistrarUrl] <p>Web address of the registrar.</p>
-- @param AdminPrivacy [Boolean] <p>Specifies whether contact information for the admin contact is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param RegistryDomainId [RegistryDomainId] <p>Reserved for future use.</p>
-- @param TechContact [ContactDetail] <p>Provides details about the domain technical contact.</p>
-- @param CreationDate [Timestamp] <p>The date when the domain was created as found in the response to a WHOIS query. The date format is Unix time.</p>
-- @param AutoRenew [Boolean] <p>Specifies whether the domain registration is set to renew automatically.</p>
-- @param UpdatedDate [Timestamp] <p>The last updated date of the domain as found in the response to a WHOIS query. The date format is Unix time.</p>
-- @param ExpirationDate [Timestamp] <p>The date when the registration for the domain is set to expire. The date format is Unix time.</p>
-- @param DnsSec [DNSSec] <p>Reserved for future use.</p>
-- @param AdminContact [ContactDetail] <p>Provides details about the domain administrative contact.</p>
-- @param TechPrivacy [Boolean] <p>Specifies whether contact information for the tech contact is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param RegistrantPrivacy [Boolean] <p>Specifies whether contact information for the registrant contact is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param AbuseContactPhone [ContactNumber] <p>Phone number for reporting abuse.</p>
-- Required parameter: DomainName
-- Required parameter: Nameservers
-- Required parameter: AdminContact
-- Required parameter: RegistrantContact
-- Required parameter: TechContact
function M.GetDomainDetailResponse(RegistrantContact, StatusList, WhoIsServer, AbuseContactEmail, Reseller, RegistrarName, DomainName, Nameservers, RegistrarUrl, AdminPrivacy, RegistryDomainId, TechContact, CreationDate, AutoRenew, UpdatedDate, ExpirationDate, DnsSec, AdminContact, TechPrivacy, RegistrantPrivacy, AbuseContactPhone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainDetailResponse")
	local t = { 
		["RegistrantContact"] = RegistrantContact,
		["StatusList"] = StatusList,
		["WhoIsServer"] = WhoIsServer,
		["AbuseContactEmail"] = AbuseContactEmail,
		["Reseller"] = Reseller,
		["RegistrarName"] = RegistrarName,
		["DomainName"] = DomainName,
		["Nameservers"] = Nameservers,
		["RegistrarUrl"] = RegistrarUrl,
		["AdminPrivacy"] = AdminPrivacy,
		["RegistryDomainId"] = RegistryDomainId,
		["TechContact"] = TechContact,
		["CreationDate"] = CreationDate,
		["AutoRenew"] = AutoRenew,
		["UpdatedDate"] = UpdatedDate,
		["ExpirationDate"] = ExpirationDate,
		["DnsSec"] = DnsSec,
		["AdminContact"] = AdminContact,
		["TechPrivacy"] = TechPrivacy,
		["RegistrantPrivacy"] = RegistrantPrivacy,
		["AbuseContactPhone"] = AbuseContactPhone,
	}
	M.AssertGetDomainDetailResponse(t)
	return t
end

local EnableDomainAutoRenewRequest_keys = { "DomainName" = true, nil }

function M.AssertEnableDomainAutoRenewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainAutoRenewRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(EnableDomainAutoRenewRequest_keys[k], "EnableDomainAutoRenewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainAutoRenewRequest
--  
-- @param DomainName [DomainName] <p>The name of the domain that you want to enable automatic renewal for.</p>
-- Required parameter: DomainName
function M.EnableDomainAutoRenewRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainAutoRenewRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertEnableDomainAutoRenewRequest(t)
	return t
end

local CheckDomainAvailabilityResponse_keys = { "Availability" = true, nil }

function M.AssertCheckDomainAvailabilityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDomainAvailabilityResponse to be of type 'table'")
	assert(struct["Availability"], "Expected key Availability to exist in table")
	if struct["Availability"] then M.AssertDomainAvailability(struct["Availability"]) end
	for k,_ in pairs(struct) do
		assert(CheckDomainAvailabilityResponse_keys[k], "CheckDomainAvailabilityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDomainAvailabilityResponse
-- <p>The CheckDomainAvailability response includes the following elements.</p>
-- @param Availability [DomainAvailability] <p>Whether the domain name is available for registering.</p> <note> <p>You can only register domains designated as <code>AVAILABLE</code>.</p> </note> <p>Valid values:</p> <dl> <dt>AVAILABLE</dt> <dd> <p>The domain name is available.</p> </dd> <dt>AVAILABLE_RESERVED</dt> <dd> <p>The domain name is reserved under specific conditions.</p> </dd> <dt>AVAILABLE_PREORDER</dt> <dd> <p>The domain name is available and can be preordered.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. Amazon Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.</p> </dd> <dt>PENDING</dt> <dd> <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.</p> </dd> <dt>RESERVED</dt> <dd> <p>The domain name has been reserved for another person or organization.</p> </dd> <dt>UNAVAILABLE</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_PREMIUM</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_RESTRICTED</dt> <dd> <p>The domain name is forbidden.</p> </dd> </dl>
-- Required parameter: Availability
function M.CheckDomainAvailabilityResponse(Availability, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckDomainAvailabilityResponse")
	local t = { 
		["Availability"] = Availability,
	}
	M.AssertCheckDomainAvailabilityResponse(t)
	return t
end

local EnableDomainTransferLockResponse_keys = { "OperationId" = true, nil }

function M.AssertEnableDomainTransferLockResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainTransferLockResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(EnableDomainTransferLockResponse_keys[k], "EnableDomainTransferLockResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainTransferLockResponse
-- <p>The EnableDomainTransferLock response includes the following elements.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
-- Required parameter: OperationId
function M.EnableDomainTransferLockResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainTransferLockResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertEnableDomainTransferLockResponse(t)
	return t
end

local EnableDomainAutoRenewResponse_keys = { nil }

function M.AssertEnableDomainAutoRenewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainAutoRenewResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EnableDomainAutoRenewResponse_keys[k], "EnableDomainAutoRenewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainAutoRenewResponse
--  
function M.EnableDomainAutoRenewResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainAutoRenewResponse")
	local t = { 
	}
	M.AssertEnableDomainAutoRenewResponse(t)
	return t
end

local DomainLimitExceeded_keys = { "message" = true, nil }

function M.AssertDomainLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DomainLimitExceeded_keys[k], "DomainLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainLimitExceeded
-- <p>The number of domains has exceeded the allowed threshold for the account.</p>
-- @param message [ErrorMessage] <p>The number of domains has exceeded the allowed threshold for the account.</p>
function M.DomainLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertDomainLimitExceeded(t)
	return t
end

local UpdateDomainContactPrivacyResponse_keys = { "OperationId" = true, nil }

function M.AssertUpdateDomainContactPrivacyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactPrivacyResponse to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then M.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainContactPrivacyResponse_keys[k], "UpdateDomainContactPrivacyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactPrivacyResponse
-- <p>The UpdateDomainContactPrivacy response includes the following element.</p>
-- @param OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
-- Required parameter: OperationId
function M.UpdateDomainContactPrivacyResponse(OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactPrivacyResponse")
	local t = { 
		["OperationId"] = OperationId,
	}
	M.AssertUpdateDomainContactPrivacyResponse(t)
	return t
end

local UpdateDomainContactPrivacyRequest_keys = { "TechPrivacy" = true, "AdminPrivacy" = true, "RegistrantPrivacy" = true, "DomainName" = true, nil }

function M.AssertUpdateDomainContactPrivacyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainContactPrivacyRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["TechPrivacy"] then M.AssertBoolean(struct["TechPrivacy"]) end
	if struct["AdminPrivacy"] then M.AssertBoolean(struct["AdminPrivacy"]) end
	if struct["RegistrantPrivacy"] then M.AssertBoolean(struct["RegistrantPrivacy"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainContactPrivacyRequest_keys[k], "UpdateDomainContactPrivacyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainContactPrivacyRequest
-- <p>The UpdateDomainContactPrivacy request includes the following elements.</p>
-- @param TechPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param AdminPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param RegistrantPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to update the privacy setting for.</p>
-- Required parameter: DomainName
function M.UpdateDomainContactPrivacyRequest(TechPrivacy, AdminPrivacy, RegistrantPrivacy, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactPrivacyRequest")
	local t = { 
		["TechPrivacy"] = TechPrivacy,
		["AdminPrivacy"] = AdminPrivacy,
		["RegistrantPrivacy"] = RegistrantPrivacy,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateDomainContactPrivacyRequest(t)
	return t
end

local DeleteTagsForDomainResponse_keys = { nil }

function M.AssertDeleteTagsForDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsForDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTagsForDomainResponse_keys[k], "DeleteTagsForDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsForDomainResponse
--  
function M.DeleteTagsForDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsForDomainResponse")
	local t = { 
	}
	M.AssertDeleteTagsForDomainResponse(t)
	return t
end

local Nameserver_keys = { "GlueIps" = true, "Name" = true, nil }

function M.AssertNameserver(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Nameserver to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["GlueIps"] then M.AssertGlueIpList(struct["GlueIps"]) end
	if struct["Name"] then M.AssertHostName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Nameserver_keys[k], "Nameserver contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Nameserver
-- <p>Nameserver includes the following elements.</p>
-- @param GlueIps [GlueIpList] <p>Glue IP address of a name server entry. Glue IP addresses are required only when the name of the name server is a subdomain of the domain. For example, if your domain is example.com and the name server for the domain is ns.example.com, you need to specify the IP address for ns.example.com.</p> <p>Constraints: The list can contain only one IPv4 and one IPv6 address.</p>
-- @param Name [HostName] <p>The fully qualified host name of the name server.</p> <p>Constraint: Maximum 255 characters</p>
-- Required parameter: Name
function M.Nameserver(GlueIps, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Nameserver")
	local t = { 
		["GlueIps"] = GlueIps,
		["Name"] = Name,
	}
	M.AssertNameserver(t)
	return t
end

local ResendContactReachabilityEmailResponse_keys = { "isAlreadyVerified" = true, "emailAddress" = true, "domainName" = true, nil }

function M.AssertResendContactReachabilityEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendContactReachabilityEmailResponse to be of type 'table'")
	if struct["isAlreadyVerified"] then M.AssertBoolean(struct["isAlreadyVerified"]) end
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(ResendContactReachabilityEmailResponse_keys[k], "ResendContactReachabilityEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendContactReachabilityEmailResponse
--  
-- @param isAlreadyVerified [Boolean] <p> <code>True</code> if the email address for the registrant contact has already been verified, and <code>false</code> otherwise. If the email address has already been verified, we don't send another confirmation email.</p>
-- @param emailAddress [Email] <p>The email address for the registrant contact at the time that we sent the verification email.</p>
-- @param domainName [DomainName] <p>The domain name for which you requested a confirmation email.</p>
function M.ResendContactReachabilityEmailResponse(isAlreadyVerified, emailAddress, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendContactReachabilityEmailResponse")
	local t = { 
		["isAlreadyVerified"] = isAlreadyVerified,
		["emailAddress"] = emailAddress,
		["domainName"] = domainName,
	}
	M.AssertResendContactReachabilityEmailResponse(t)
	return t
end

local UpdateTagsForDomainResponse_keys = { nil }

function M.AssertUpdateTagsForDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTagsForDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateTagsForDomainResponse_keys[k], "UpdateTagsForDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTagsForDomainResponse
--  
function M.UpdateTagsForDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagsForDomainResponse")
	local t = { 
	}
	M.AssertUpdateTagsForDomainResponse(t)
	return t
end

local ListTagsForDomainRequest_keys = { "DomainName" = true, nil }

function M.AssertListTagsForDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForDomainRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForDomainRequest_keys[k], "ListTagsForDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForDomainRequest
-- <p>The ListTagsForDomainRequest includes the following elements.</p>
-- @param DomainName [DomainName] <p>The domain for which you want to get a list of tags.</p>
-- Required parameter: DomainName
function M.ListTagsForDomainRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForDomainRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertListTagsForDomainRequest(t)
	return t
end

local ViewBillingResponse_keys = { "NextPageMarker" = true, "BillingRecords" = true, nil }

function M.AssertViewBillingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewBillingResponse to be of type 'table'")
	if struct["NextPageMarker"] then M.AssertPageMarker(struct["NextPageMarker"]) end
	if struct["BillingRecords"] then M.AssertBillingRecords(struct["BillingRecords"]) end
	for k,_ in pairs(struct) do
		assert(ViewBillingResponse_keys[k], "ViewBillingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewBillingResponse
-- <p>The ViewBilling response includes the following elements.</p>
-- @param NextPageMarker [PageMarker] <p>If there are more billing records than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- @param BillingRecords [BillingRecords] <p>A summary of billing records.</p>
function M.ViewBillingResponse(NextPageMarker, BillingRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ViewBillingResponse")
	local t = { 
		["NextPageMarker"] = NextPageMarker,
		["BillingRecords"] = BillingRecords,
	}
	M.AssertViewBillingResponse(t)
	return t
end

local GetContactReachabilityStatusRequest_keys = { "domainName" = true, nil }

function M.AssertGetContactReachabilityStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContactReachabilityStatusRequest to be of type 'table'")
	if struct["domainName"] then M.AssertDomainName(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(GetContactReachabilityStatusRequest_keys[k], "GetContactReachabilityStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContactReachabilityStatusRequest
--  
-- @param domainName [DomainName] <p>The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.</p>
function M.GetContactReachabilityStatusRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContactReachabilityStatusRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertGetContactReachabilityStatusRequest(t)
	return t
end

local DuplicateRequest_keys = { "message" = true, nil }

function M.AssertDuplicateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequest to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateRequest_keys[k], "DuplicateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequest
-- <p>The request is already in progress for the domain.</p>
-- @param message [ErrorMessage] <p>The request is already in progress for the domain.</p>
function M.DuplicateRequest(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRequest")
	local t = { 
		["message"] = message,
	}
	M.AssertDuplicateRequest(t)
	return t
end

local CheckDomainAvailabilityRequest_keys = { "IdnLangCode" = true, "DomainName" = true, nil }

function M.AssertCheckDomainAvailabilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckDomainAvailabilityRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["IdnLangCode"] then M.AssertLangCode(struct["IdnLangCode"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(CheckDomainAvailabilityRequest_keys[k], "CheckDomainAvailabilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckDomainAvailabilityRequest
-- <p>The CheckDomainAvailability request contains the following elements.</p>
-- @param IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to get availability for.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- Required parameter: DomainName
function M.CheckDomainAvailabilityRequest(IdnLangCode, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckDomainAvailabilityRequest")
	local t = { 
		["IdnLangCode"] = IdnLangCode,
		["DomainName"] = DomainName,
	}
	M.AssertCheckDomainAvailabilityRequest(t)
	return t
end

local EnableDomainTransferLockRequest_keys = { "DomainName" = true, nil }

function M.AssertEnableDomainTransferLockRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDomainTransferLockRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(EnableDomainTransferLockRequest_keys[k], "EnableDomainTransferLockRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDomainTransferLockRequest
-- <p>A request to set the transfer lock for the specified domain.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to set the transfer lock for.</p>
-- Required parameter: DomainName
function M.EnableDomainTransferLockRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainTransferLockRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertEnableDomainTransferLockRequest(t)
	return t
end

local GetDomainSuggestionsResponse_keys = { "SuggestionsList" = true, nil }

function M.AssertGetDomainSuggestionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainSuggestionsResponse to be of type 'table'")
	if struct["SuggestionsList"] then M.AssertDomainSuggestionsList(struct["SuggestionsList"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainSuggestionsResponse_keys[k], "GetDomainSuggestionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainSuggestionsResponse
--  
-- @param SuggestionsList [DomainSuggestionsList] <p>A list of possible domain names. If you specified <code>true</code> for <code>OnlyAvailable</code> in the request, the list contains only domains that are available for registration.</p>
function M.GetDomainSuggestionsResponse(SuggestionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainSuggestionsResponse")
	local t = { 
		["SuggestionsList"] = SuggestionsList,
	}
	M.AssertGetDomainSuggestionsResponse(t)
	return t
end

local UpdateDomainNameserversRequest_keys = { "Nameservers" = true, "FIAuthKey" = true, "DomainName" = true, nil }

function M.AssertUpdateDomainNameserversRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainNameserversRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Nameservers"], "Expected key Nameservers to exist in table")
	if struct["Nameservers"] then M.AssertNameserverList(struct["Nameservers"]) end
	if struct["FIAuthKey"] then M.AssertFIAuthKey(struct["FIAuthKey"]) end
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainNameserversRequest_keys[k], "UpdateDomainNameserversRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainNameserversRequest
-- <p>Replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>
-- @param Nameservers [NameserverList] <p>A list of new name servers for the domain.</p>
-- @param FIAuthKey [FIAuthKey] <p>The authorization key for .fi domains</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to change name servers for.</p>
-- Required parameter: DomainName
-- Required parameter: Nameservers
function M.UpdateDomainNameserversRequest(Nameservers, FIAuthKey, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainNameserversRequest")
	local t = { 
		["Nameservers"] = Nameservers,
		["FIAuthKey"] = FIAuthKey,
		["DomainName"] = DomainName,
	}
	M.AssertUpdateDomainNameserversRequest(t)
	return t
end

local GetDomainDetailRequest_keys = { "DomainName" = true, nil }

function M.AssertGetDomainDetailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainDetailRequest to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["DomainName"] then M.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainDetailRequest_keys[k], "GetDomainDetailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainDetailRequest
-- <p>The GetDomainDetail request includes the following element.</p>
-- @param DomainName [DomainName] <p>The name of the domain that you want to get detailed information about.</p>
-- Required parameter: DomainName
function M.GetDomainDetailRequest(DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainDetailRequest")
	local t = { 
		["DomainName"] = DomainName,
	}
	M.AssertGetDomainDetailRequest(t)
	return t
end

local ListDomainsResponse_keys = { "Domains" = true, "NextPageMarker" = true, nil }

function M.AssertListDomainsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsResponse to be of type 'table'")
	assert(struct["Domains"], "Expected key Domains to exist in table")
	if struct["Domains"] then M.AssertDomainSummaryList(struct["Domains"]) end
	if struct["NextPageMarker"] then M.AssertPageMarker(struct["NextPageMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainsResponse_keys[k], "ListDomainsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsResponse
-- <p>The ListDomains response includes the following elements.</p>
-- @param Domains [DomainSummaryList] <p>A summary of domains.</p>
-- @param NextPageMarker [PageMarker] <p>If there are more domains than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- Required parameter: Domains
function M.ListDomainsResponse(Domains, NextPageMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsResponse")
	local t = { 
		["Domains"] = Domains,
		["NextPageMarker"] = NextPageMarker,
	}
	M.AssertListDomainsResponse(t)
	return t
end

local ListDomainsRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListDomainsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainsRequest_keys[k], "ListDomainsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsRequest
-- <p>The ListDomains request includes the following elements.</p>
-- @param Marker [PageMarker] <p>For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional domains. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p> <p>Constraints: The marker must match the value specified in the previous request.</p>
-- @param MaxItems [PageMaxItems] <p>Number of domains to be returned.</p> <p>Default: 20</p>
function M.ListDomainsRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListDomainsRequest(t)
	return t
end

local ListOperationsResponse_keys = { "Operations" = true, "NextPageMarker" = true, nil }

function M.AssertListOperationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsResponse to be of type 'table'")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then M.AssertOperationSummaryList(struct["Operations"]) end
	if struct["NextPageMarker"] then M.AssertPageMarker(struct["NextPageMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListOperationsResponse_keys[k], "ListOperationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsResponse
-- <p>The ListOperations response includes the following elements.</p>
-- @param Operations [OperationSummaryList] <p>Lists summaries of the operations.</p>
-- @param NextPageMarker [PageMarker] <p>If there are more operations than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- Required parameter: Operations
function M.ListOperationsResponse(Operations, NextPageMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOperationsResponse")
	local t = { 
		["Operations"] = Operations,
		["NextPageMarker"] = NextPageMarker,
	}
	M.AssertListOperationsResponse(t)
	return t
end

local InvalidInput_keys = { "message" = true, nil }

function M.AssertInvalidInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInput to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInput_keys[k], "InvalidInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInput
-- <p>The requested item is not acceptable. For example, for an OperationId it may refer to the ID of an operation that is already completed. For a domain name, it may not be a valid domain name or belong to the requester account.</p>
-- @param message [ErrorMessage] <p>The requested item is not acceptable. For example, for an OperationId it may refer to the ID of an operation that is already completed. For a domain name, it may not be a valid domain name or belong to the requester account.</p>
function M.InvalidInput(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInput")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidInput(t)
	return t
end

local RetrieveDomainAuthCodeResponse_keys = { "AuthCode" = true, nil }

function M.AssertRetrieveDomainAuthCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveDomainAuthCodeResponse to be of type 'table'")
	assert(struct["AuthCode"], "Expected key AuthCode to exist in table")
	if struct["AuthCode"] then M.AssertDomainAuthCode(struct["AuthCode"]) end
	for k,_ in pairs(struct) do
		assert(RetrieveDomainAuthCodeResponse_keys[k], "RetrieveDomainAuthCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveDomainAuthCodeResponse
-- <p>The RetrieveDomainAuthCode response includes the following element.</p>
-- @param AuthCode [DomainAuthCode] <p>The authorization code for the domain.</p>
-- Required parameter: AuthCode
function M.RetrieveDomainAuthCodeResponse(AuthCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveDomainAuthCodeResponse")
	local t = { 
		["AuthCode"] = AuthCode,
	}
	M.AssertRetrieveDomainAuthCodeResponse(t)
	return t
end

function M.AssertOperationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationStatus to be of type 'string'")
end

--  
function M.OperationStatus(str)
	M.AssertOperationStatus(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertPageMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMarker to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.PageMarker(str)
	M.AssertPageMarker(str)
	return str
end

function M.AssertGlueIp(str)
	assert(str)
	assert(type(str) == "string", "Expected GlueIp to be of type 'string'")
	assert(#str <= 45, "Expected string to be max 45 characters")
end

--  
function M.GlueIp(str)
	M.AssertGlueIp(str)
	return str
end

function M.AssertContactType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactType to be of type 'string'")
end

--  
function M.ContactType(str)
	M.AssertContactType(str)
	return str
end

function M.AssertRegistryDomainId(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistryDomainId to be of type 'string'")
end

--  
function M.RegistryDomainId(str)
	M.AssertRegistryDomainId(str)
	return str
end

function M.AssertReseller(str)
	assert(str)
	assert(type(str) == "string", "Expected Reseller to be of type 'string'")
end

--  
function M.Reseller(str)
	M.AssertReseller(str)
	return str
end

function M.AssertLangCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LangCode to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
end

--  
function M.LangCode(str)
	M.AssertLangCode(str)
	return str
end

function M.AssertRegistrarName(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrarName to be of type 'string'")
end

--  
function M.RegistrarName(str)
	M.AssertRegistrarName(str)
	return str
end

function M.AssertExtraParamValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtraParamValue to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ExtraParamValue(str)
	M.AssertExtraParamValue(str)
	return str
end

function M.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("[a-zA-Z0-9_%-.]*"), "Expected string to match pattern '[a-zA-Z0-9_%-.]*'")
end

--  
function M.DomainName(str)
	M.AssertDomainName(str)
	return str
end

function M.AssertDomainStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatus to be of type 'string'")
end

--  
function M.DomainStatus(str)
	M.AssertDomainStatus(str)
	return str
end

function M.AssertState(str)
	assert(str)
	assert(type(str) == "string", "Expected State to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.State(str)
	M.AssertState(str)
	return str
end

function M.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 254, "Expected string to be max 254 characters")
end

--  
function M.Email(str)
	M.AssertEmail(str)
	return str
end

function M.AssertOperationId(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.OperationId(str)
	M.AssertOperationId(str)
	return str
end

function M.AssertCountryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CountryCode to be of type 'string'")
end

--  
function M.CountryCode(str)
	M.AssertCountryCode(str)
	return str
end

function M.AssertReachabilityStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReachabilityStatus to be of type 'string'")
end

--  
function M.ReachabilityStatus(str)
	M.AssertReachabilityStatus(str)
	return str
end

function M.AssertExtraParamName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtraParamName to be of type 'string'")
end

--  
function M.ExtraParamName(str)
	M.AssertExtraParamName(str)
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

function M.AssertZipCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ZipCode to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ZipCode(str)
	M.AssertZipCode(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertDomainAvailability(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainAvailability to be of type 'string'")
end

--  
function M.DomainAvailability(str)
	M.AssertDomainAvailability(str)
	return str
end

function M.AssertContactNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactNumber to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
end

--  
function M.ContactNumber(str)
	M.AssertContactNumber(str)
	return str
end

function M.AssertRegistrarWhoIsServer(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrarWhoIsServer to be of type 'string'")
end

--  
function M.RegistrarWhoIsServer(str)
	M.AssertRegistrarWhoIsServer(str)
	return str
end

function M.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	M.AssertOperationType(str)
	return str
end

function M.AssertFIAuthKey(str)
	assert(str)
	assert(type(str) == "string", "Expected FIAuthKey to be of type 'string'")
end

--  
function M.FIAuthKey(str)
	M.AssertFIAuthKey(str)
	return str
end

function M.AssertInvoiceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InvoiceId to be of type 'string'")
end

--  
function M.InvoiceId(str)
	M.AssertInvoiceId(str)
	return str
end

function M.AssertRegistrarUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrarUrl to be of type 'string'")
end

--  
function M.RegistrarUrl(str)
	M.AssertRegistrarUrl(str)
	return str
end

function M.AssertCity(str)
	assert(str)
	assert(type(str) == "string", "Expected City to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.City(str)
	M.AssertCity(str)
	return str
end

function M.AssertAddressLine(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressLine to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.AddressLine(str)
	M.AssertAddressLine(str)
	return str
end

function M.AssertHostName(str)
	assert(str)
	assert(type(str) == "string", "Expected HostName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("[a-zA-Z0-9_%-.]*"), "Expected string to match pattern '[a-zA-Z0-9_%-.]*'")
end

--  
function M.HostName(str)
	M.AssertHostName(str)
	return str
end

function M.AssertContactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ContactName(str)
	M.AssertContactName(str)
	return str
end

function M.AssertDNSSec(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSSec to be of type 'string'")
end

--  
function M.DNSSec(str)
	M.AssertDNSSec(str)
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

function M.AssertDomainAuthCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainAuthCode to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.DomainAuthCode(str)
	M.AssertDomainAuthCode(str)
	return str
end

function M.AssertPrice(double)
	assert(double)
	assert(type(double) == "number", "Expected Price to be of type 'number'")
end

function M.Price(double)
	M.AssertPrice(double)
	return double
end

function M.AssertPageMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageMaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.PageMaxItems(integer)
	M.AssertPageMaxItems(integer)
	return integer
end

function M.AssertCurrentExpiryYear(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CurrentExpiryYear to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CurrentExpiryYear(integer)
	M.AssertCurrentExpiryYear(integer)
	return integer
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

function M.AssertDurationInYears(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DurationInYears to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DurationInYears(integer)
	M.AssertDurationInYears(integer)
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

function M.AssertDomainSuggestionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainSuggestionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainSuggestion(v)
	end
end

--  
-- List of DomainSuggestion objects
function M.DomainSuggestionsList(list)
	M.AssertDomainSuggestionsList(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertDomainSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainSummary(v)
	end
end

--  
-- List of DomainSummary objects
function M.DomainSummaryList(list)
	M.AssertDomainSummaryList(list)
	return list
end

function M.AssertGlueIpList(list)
	assert(list)
	assert(type(list) == "table", "Expected GlueIpList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGlueIp(v)
	end
end

--  
-- List of GlueIp objects
function M.GlueIpList(list)
	M.AssertGlueIpList(list)
	return list
end

function M.AssertDomainStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainStatus(v)
	end
end

--  
-- List of DomainStatus objects
function M.DomainStatusList(list)
	M.AssertDomainStatusList(list)
	return list
end

function M.AssertNameserverList(list)
	assert(list)
	assert(type(list) == "table", "Expected NameserverList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNameserver(v)
	end
end

--  
-- List of Nameserver objects
function M.NameserverList(list)
	M.AssertNameserverList(list)
	return list
end

function M.AssertOperationSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected OperationSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOperationSummary(v)
	end
end

--  
-- List of OperationSummary objects
function M.OperationSummaryList(list)
	M.AssertOperationSummaryList(list)
	return list
end

function M.AssertExtraParamList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExtraParamList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExtraParam(v)
	end
end

--  
-- List of ExtraParam objects
function M.ExtraParamList(list)
	M.AssertExtraParamList(list)
	return list
end

function M.AssertBillingRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected BillingRecords to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBillingRecord(v)
	end
end

--  
-- List of BillingRecord objects
function M.BillingRecords(list)
	M.AssertBillingRecords(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ResendContactReachabilityEmail
-- @param ResendContactReachabilityEmailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResendContactReachabilityEmailAsync(ResendContactReachabilityEmailRequest, cb)
	assert(ResendContactReachabilityEmailRequest, "You must provide a ResendContactReachabilityEmailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ResendContactReachabilityEmail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResendContactReachabilityEmailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDomains
-- @param ListDomainsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDomainsAsync(ListDomainsRequest, cb)
	assert(ListDomainsRequest, "You must provide a ListDomainsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ListDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDomainsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableDomainTransferLock
-- @param DisableDomainTransferLockRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableDomainTransferLockAsync(DisableDomainTransferLockRequest, cb)
	assert(DisableDomainTransferLockRequest, "You must provide a DisableDomainTransferLockRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.DisableDomainTransferLock",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableDomainTransferLockRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RetrieveDomainAuthCode
-- @param RetrieveDomainAuthCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RetrieveDomainAuthCodeAsync(RetrieveDomainAuthCodeRequest, cb)
	assert(RetrieveDomainAuthCodeRequest, "You must provide a RetrieveDomainAuthCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.RetrieveDomainAuthCode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RetrieveDomainAuthCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ViewBilling
-- @param ViewBillingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ViewBillingAsync(ViewBillingRequest, cb)
	assert(ViewBillingRequest, "You must provide a ViewBillingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ViewBilling",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ViewBillingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDomainNameservers
-- @param UpdateDomainNameserversRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainNameserversAsync(UpdateDomainNameserversRequest, cb)
	assert(UpdateDomainNameserversRequest, "You must provide a UpdateDomainNameserversRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateDomainNameservers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDomainNameserversRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTagsForDomain
-- @param UpdateTagsForDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTagsForDomainAsync(UpdateTagsForDomainRequest, cb)
	assert(UpdateTagsForDomainRequest, "You must provide a UpdateTagsForDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateTagsForDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateTagsForDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableDomainAutoRenew
-- @param EnableDomainAutoRenewRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableDomainAutoRenewAsync(EnableDomainAutoRenewRequest, cb)
	assert(EnableDomainAutoRenewRequest, "You must provide a EnableDomainAutoRenewRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.EnableDomainAutoRenew",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableDomainAutoRenewRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDomainSuggestions
-- @param GetDomainSuggestionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainSuggestionsAsync(GetDomainSuggestionsRequest, cb)
	assert(GetDomainSuggestionsRequest, "You must provide a GetDomainSuggestionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetDomainSuggestions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDomainSuggestionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOperationDetail
-- @param GetOperationDetailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOperationDetailAsync(GetOperationDetailRequest, cb)
	assert(GetOperationDetailRequest, "You must provide a GetOperationDetailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetOperationDetail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOperationDetailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RenewDomain
-- @param RenewDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RenewDomainAsync(RenewDomainRequest, cb)
	assert(RenewDomainRequest, "You must provide a RenewDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.RenewDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RenewDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TransferDomain
-- @param TransferDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TransferDomainAsync(TransferDomainRequest, cb)
	assert(TransferDomainRequest, "You must provide a TransferDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.TransferDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TransferDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableDomainAutoRenew
-- @param DisableDomainAutoRenewRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableDomainAutoRenewAsync(DisableDomainAutoRenewRequest, cb)
	assert(DisableDomainAutoRenewRequest, "You must provide a DisableDomainAutoRenewRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.DisableDomainAutoRenew",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableDomainAutoRenewRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTagsForDomain
-- @param DeleteTagsForDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsForDomainAsync(DeleteTagsForDomainRequest, cb)
	assert(DeleteTagsForDomainRequest, "You must provide a DeleteTagsForDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.DeleteTagsForDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTagsForDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterDomain
-- @param RegisterDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterDomainAsync(RegisterDomainRequest, cb)
	assert(RegisterDomainRequest, "You must provide a RegisterDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.RegisterDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDomainDetail
-- @param GetDomainDetailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainDetailAsync(GetDomainDetailRequest, cb)
	assert(GetDomainDetailRequest, "You must provide a GetDomainDetailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetDomainDetail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDomainDetailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CheckDomainAvailability
-- @param CheckDomainAvailabilityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CheckDomainAvailabilityAsync(CheckDomainAvailabilityRequest, cb)
	assert(CheckDomainAvailabilityRequest, "You must provide a CheckDomainAvailabilityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.CheckDomainAvailability",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CheckDomainAvailabilityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDomainContactPrivacy
-- @param UpdateDomainContactPrivacyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainContactPrivacyAsync(UpdateDomainContactPrivacyRequest, cb)
	assert(UpdateDomainContactPrivacyRequest, "You must provide a UpdateDomainContactPrivacyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateDomainContactPrivacy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDomainContactPrivacyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForDomain
-- @param ListTagsForDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForDomainAsync(ListTagsForDomainRequest, cb)
	assert(ListTagsForDomainRequest, "You must provide a ListTagsForDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ListTagsForDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetContactReachabilityStatus
-- @param GetContactReachabilityStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetContactReachabilityStatusAsync(GetContactReachabilityStatusRequest, cb)
	assert(GetContactReachabilityStatusRequest, "You must provide a GetContactReachabilityStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.GetContactReachabilityStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetContactReachabilityStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDomainContact
-- @param UpdateDomainContactRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainContactAsync(UpdateDomainContactRequest, cb)
	assert(UpdateDomainContactRequest, "You must provide a UpdateDomainContactRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.UpdateDomainContact",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDomainContactRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOperations
-- @param ListOperationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOperationsAsync(ListOperationsRequest, cb)
	assert(ListOperationsRequest, "You must provide a ListOperationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.ListOperations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOperationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableDomainTransferLock
-- @param EnableDomainTransferLockRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableDomainTransferLockAsync(EnableDomainTransferLockRequest, cb)
	assert(EnableDomainTransferLockRequest, "You must provide a EnableDomainTransferLockRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Route53Domains_v20140515.EnableDomainTransferLock",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableDomainTransferLockRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
