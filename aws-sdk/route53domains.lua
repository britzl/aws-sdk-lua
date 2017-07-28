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
-- @param _TagsToUpdate [TagList] <p>A list of the tag keys and values that you want to add or update. If you specify a key that already exists, the corresponding value will be replaced.</p>
-- @param _DomainName [DomainName] <p>The domain for which you want to add or update tags.</p>
-- Required parameter: DomainName
function M.UpdateTagsForDomainRequest(_TagsToUpdate, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagsForDomainRequest")
	local t = { 
		["TagsToUpdate"] = _TagsToUpdate,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateTagsForDomainRequest(t)
	return t
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
-- @param _DomainName [DomainName] <p>The name of the domain that you want to disable automatic renewal for.</p>
-- Required parameter: DomainName
function M.DisableDomainAutoRenewRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainAutoRenewRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDisableDomainAutoRenewRequest(t)
	return t
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
-- @param _Operation [OperationType] <p>The operation that you were charged for.</p>
-- @param _InvoiceId [InvoiceId] <p>The ID of the invoice that is associated with the billing record.</p>
-- @param _Price [Price] <p>The price that you were charged for the operation, in US dollars.</p> <p>Example value: 12.0</p>
-- @param _BillDate [Timestamp] <p>The date that the operation was billed, in Unix format.</p>
-- @param _DomainName [DomainName] <p>The name of the domain that the billing record applies to. If the domain name contains characters other than a-z, 0-9, and - (hyphen), such as an internationalized domain name, then this value is in Punycode. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the <i>Amazon Route 53 Developer Guidezzz</i>.</p>
function M.BillingRecord(_Operation, _InvoiceId, _Price, _BillDate, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BillingRecord")
	local t = { 
		["Operation"] = _Operation,
		["InvoiceId"] = _InvoiceId,
		["Price"] = _Price,
		["BillDate"] = _BillDate,
		["DomainName"] = _DomainName,
	}
	asserts.AssertBillingRecord(t)
	return t
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
-- @param _TransferLock [Boolean] <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
-- @param _AutoRenew [Boolean] <p>Indicates whether the domain is automatically renewed upon expiration.</p>
-- @param _Expiry [Timestamp] <p>Expiration date of the domain in Coordinated Universal Time (UTC).</p>
-- @param _DomainName [DomainName] <p>The name of the domain that the summary information applies to.</p>
-- Required parameter: DomainName
function M.DomainSummary(_TransferLock, _AutoRenew, _Expiry, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainSummary")
	local t = { 
		["TransferLock"] = _TransferLock,
		["AutoRenew"] = _AutoRenew,
		["Expiry"] = _Expiry,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDomainSummary(t)
	return t
end

keys.ListOperationsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListOperationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOperationsRequest[k], "ListOperationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsRequest
-- <p>The ListOperations request includes the following elements.</p>
-- @param _Marker [PageMarker] <p>For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional operations. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
-- @param _MaxItems [PageMaxItems] <p>Number of domains to be returned.</p> <p>Default: 20</p>
function M.ListOperationsRequest(_Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOperationsRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListOperationsRequest(t)
	return t
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
-- <p>Amazon Route 53 does not support this top-level domain.</p>
-- @param _message [ErrorMessage] <p>Amazon Route 53 does not support this top-level domain.</p>
function M.UnsupportedTLD(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedTLD")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedTLD(t)
	return t
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
-- @param _TagList [TagList] <p>A list of the tags that are associated with the specified domain.</p>
-- Required parameter: TagList
function M.ListTagsForDomainResponse(_TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForDomainResponse")
	local t = { 
		["TagList"] = _TagList,
	}
	asserts.AssertListTagsForDomainResponse(t)
	return t
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
-- @param _OperationId [OperationId] <p>The identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.RenewDomainResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewDomainResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertRenewDomainResponse(t)
	return t
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
-- @param _Name [ExtraParamName] <p>Name of the additional parameter required by the top-level domain.</p>
-- @param _Value [ExtraParamValue] <p>Values corresponding to the additional parameter names required by some top-level domains.</p>
-- Required parameter: Name
-- Required parameter: Value
function M.ExtraParam(_Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtraParam")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertExtraParam(t)
	return t
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
-- @param _Status [OperationStatus] <p>The current status of the requested operation in the system.</p>
-- @param _DomainName [DomainName] <p>The name of a domain.</p>
-- @param _SubmittedDate [Timestamp] <p>The date when the request was submitted.</p>
-- @param _Message [ErrorMessage] <p>Detailed information on the status including possible errors.</p>
-- @param _Type [OperationType] <p>The type of operation that was requested.</p>
-- @param _OperationId [OperationId] <p>The identifier for the operation.</p>
function M.GetOperationDetailResponse(_Status, _DomainName, _SubmittedDate, _Message, _Type, _OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationDetailResponse")
	local t = { 
		["Status"] = _Status,
		["DomainName"] = _DomainName,
		["SubmittedDate"] = _SubmittedDate,
		["Message"] = _Message,
		["Type"] = _Type,
		["OperationId"] = _OperationId,
	}
	asserts.AssertGetOperationDetailResponse(t)
	return t
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
-- @param _OperationId [OperationId] <p>The identifier for the operation for which you want to get the status. Amazon Route 53 returned the identifier in the response to the original request.</p>
-- Required parameter: OperationId
function M.GetOperationDetailRequest(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOperationDetailRequest")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertGetOperationDetailRequest(t)
	return t
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
-- @param _DomainName [DomainName] <p>The name of the domain that you want to remove the transfer lock for.</p>
-- Required parameter: DomainName
function M.DisableDomainTransferLockRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainTransferLockRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertDisableDomainTransferLockRequest(t)
	return t
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
-- @param _Value [TagValue] <p>The value of a tag.</p> <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p> <p>Constraints: Each value can be 0-256 characters long.</p>
-- @param _Key [TagKey] <p>The key (name) of a tag.</p> <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p> <p>Constraints: Each key can be 1-128 characters long.</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
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
-- @param _CurrentExpiryYear [CurrentExpiryYear] <p>The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.</p>
-- @param _DurationInYears [DurationInYears] <p>The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Default: 1</p>
-- @param _DomainName [DomainName] <p>The name of the domain that you want to renew.</p>
-- Required parameter: DomainName
-- Required parameter: CurrentExpiryYear
function M.RenewDomainRequest(_CurrentExpiryYear, _DurationInYears, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RenewDomainRequest")
	local t = { 
		["CurrentExpiryYear"] = _CurrentExpiryYear,
		["DurationInYears"] = _DurationInYears,
		["DomainName"] = _DomainName,
	}
	asserts.AssertRenewDomainRequest(t)
	return t
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
function M.DisableDomainAutoRenewResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainAutoRenewResponse")
	local t = { 
	}
	asserts.AssertDisableDomainAutoRenewResponse(t)
	return t
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
-- @param _status [ReachabilityStatus] <p>Whether the registrant contact has responded. Values include the following:</p> <dl> <dt>PENDING</dt> <dd> <p>We sent the confirmation email and haven't received a response yet.</p> </dd> <dt>DONE</dt> <dd> <p>We sent the email and got confirmation from the registrant contact.</p> </dd> <dt>EXPIRED</dt> <dd> <p>The time limit expired before the registrant contact responded.</p> </dd> </dl>
-- @param _domainName [DomainName] <p>The domain name for which you requested the reachability status.</p>
function M.GetContactReachabilityStatusResponse(_status, _domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContactReachabilityStatusResponse")
	local t = { 
		["status"] = _status,
		["domainName"] = _domainName,
	}
	asserts.AssertGetContactReachabilityStatusResponse(t)
	return t
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
-- @param _TagsToDelete [TagKeyList] <p>A list of tag keys to delete.</p>
-- @param _DomainName [DomainName] <p>The domain for which you want to delete one or more tags.</p>
-- Required parameter: DomainName
-- Required parameter: TagsToDelete
function M.DeleteTagsForDomainRequest(_TagsToDelete, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsForDomainRequest")
	local t = { 
		["TagsToDelete"] = _TagsToDelete,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDeleteTagsForDomainRequest(t)
	return t
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
-- @param _OnlyAvailable [Boolean] <p>If <code>OnlyAvailable</code> is <code>true</code>, Amazon Route 53 returns only domain names that are available. If <code>OnlyAvailable</code> is <code>false</code>, Amazon Route 53 returns domain names without checking whether they're available to be registered. To determine whether the domain is available, you can call <code>checkDomainAvailability</code> for each suggestion.</p>
-- @param _SuggestionCount [Integer] <p>The number of suggested domain names that you want Amazon Route 53 to return.</p>
-- @param _DomainName [DomainName] <p>A domain name that you want to use as the basis for a list of possible domain names. The domain name must contain a top-level domain (TLD), such as .com, that Amazon Route 53 supports. For a list of TLDs, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- Required parameter: DomainName
-- Required parameter: SuggestionCount
-- Required parameter: OnlyAvailable
function M.GetDomainSuggestionsRequest(_OnlyAvailable, _SuggestionCount, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainSuggestionsRequest")
	local t = { 
		["OnlyAvailable"] = _OnlyAvailable,
		["SuggestionCount"] = _SuggestionCount,
		["DomainName"] = _DomainName,
	}
	asserts.AssertGetDomainSuggestionsRequest(t)
	return t
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
-- @param _DomainName [DomainName] <p>The name of the domain that you want to get an authorization code for.</p>
-- Required parameter: DomainName
function M.RetrieveDomainAuthCodeRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveDomainAuthCodeRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertRetrieveDomainAuthCodeRequest(t)
	return t
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
-- @param _message [ErrorMessage] <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
function M.OperationLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertOperationLimitExceeded(t)
	return t
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
-- @param _RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _DomainName [DomainName] <p>The name of the domain that you want to update contact information for.</p>
-- Required parameter: DomainName
function M.UpdateDomainContactRequest(_RegistrantContact, _AdminContact, _TechContact, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactRequest")
	local t = { 
		["RegistrantContact"] = _RegistrantContact,
		["AdminContact"] = _AdminContact,
		["TechContact"] = _TechContact,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateDomainContactRequest(t)
	return t
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
-- @param _Availability [String] <p>Whether the domain name is available for registering.</p> <note> <p>You can register only the domains that are designated as <code>AVAILABLE</code>.</p> </note> <p>Valid values:</p> <dl> <dt>AVAILABLE</dt> <dd> <p>The domain name is available.</p> </dd> <dt>AVAILABLE_RESERVED</dt> <dd> <p>The domain name is reserved under specific conditions.</p> </dd> <dt>AVAILABLE_PREORDER</dt> <dd> <p>The domain name is available and can be preordered.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. Amazon Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.</p> </dd> <dt>PENDING</dt> <dd> <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.</p> </dd> <dt>RESERVED</dt> <dd> <p>The domain name has been reserved for another person or organization.</p> </dd> <dt>UNAVAILABLE</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_PREMIUM</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_RESTRICTED</dt> <dd> <p>The domain name is forbidden.</p> </dd> </dl>
-- @param _DomainName [DomainName] <p>A suggested domain name.</p>
function M.DomainSuggestion(_Availability, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainSuggestion")
	local t = { 
		["Availability"] = _Availability,
		["DomainName"] = _DomainName,
	}
	asserts.AssertDomainSuggestion(t)
	return t
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
-- @param _Marker [PageMarker] <p>For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional billing records. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element. </p> <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was returned in the previous response.</p>
-- @param _Start [Timestamp] <p>The beginning date and time for the time period for which you want a list of billing records. Specify the date in Unix time format.</p>
-- @param _End [Timestamp] <p>The end date and time for the time period for which you want a list of billing records. Specify the date in Unix time format.</p>
-- @param _MaxItems [PageMaxItems] <p>The number of billing records to be returned.</p> <p>Default: 20</p>
function M.ViewBillingRequest(_Marker, _Start, _End, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ViewBillingRequest")
	local t = { 
		["Marker"] = _Marker,
		["Start"] = _Start,
		["End"] = _End,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertViewBillingRequest(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.TransferDomainResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferDomainResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertTransferDomainResponse(t)
	return t
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
-- @param _message [ErrorMessage] <p>The top-level domain does not support this operation.</p>
function M.TLDRulesViolation(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TLDRulesViolation")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTLDRulesViolation(t)
	return t
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
-- @param _domainName [DomainName] <p>The name of the domain for which you want Amazon Route 53 to resend a confirmation email to the registrant contact.</p>
function M.ResendContactReachabilityEmailRequest(_domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendContactReachabilityEmailRequest")
	local t = { 
		["domainName"] = _domainName,
	}
	asserts.AssertResendContactReachabilityEmailRequest(t)
	return t
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
-- @param _RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- @param _DomainName [DomainName] <p>The domain name that you want to register.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- @param _PrivacyProtectRegistrantContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param _PrivacyProtectTechContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param _TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _PrivacyProtectAdminContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param _AutoRenew [Boolean] <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not (<code>false</code>). Autorenewal only takes effect after the account is charged.</p> <p>Default: <code>true</code> </p>
-- @param _DurationInYears [DurationInYears] <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Default: 1</p>
-- @param _AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- Required parameter: DomainName
-- Required parameter: DurationInYears
-- Required parameter: AdminContact
-- Required parameter: RegistrantContact
-- Required parameter: TechContact
function M.RegisterDomainRequest(_RegistrantContact, _IdnLangCode, _DomainName, _PrivacyProtectRegistrantContact, _PrivacyProtectTechContact, _TechContact, _PrivacyProtectAdminContact, _AutoRenew, _DurationInYears, _AdminContact, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDomainRequest")
	local t = { 
		["RegistrantContact"] = _RegistrantContact,
		["IdnLangCode"] = _IdnLangCode,
		["DomainName"] = _DomainName,
		["PrivacyProtectRegistrantContact"] = _PrivacyProtectRegistrantContact,
		["PrivacyProtectTechContact"] = _PrivacyProtectTechContact,
		["TechContact"] = _TechContact,
		["PrivacyProtectAdminContact"] = _PrivacyProtectAdminContact,
		["AutoRenew"] = _AutoRenew,
		["DurationInYears"] = _DurationInYears,
		["AdminContact"] = _AdminContact,
	}
	asserts.AssertRegisterDomainRequest(t)
	return t
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
-- @param _Status [OperationStatus] <p>The current status of the requested operation in the system.</p>
-- @param _Type [OperationType] <p>Type of the action requested.</p>
-- @param _SubmittedDate [Timestamp] <p>The date when the request was submitted.</p>
-- @param _OperationId [OperationId] <p>Identifier returned to track the requested action.</p>
-- Required parameter: OperationId
-- Required parameter: Status
-- Required parameter: Type
-- Required parameter: SubmittedDate
function M.OperationSummary(_Status, _Type, _SubmittedDate, _OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationSummary")
	local t = { 
		["Status"] = _Status,
		["Type"] = _Type,
		["SubmittedDate"] = _SubmittedDate,
		["OperationId"] = _OperationId,
	}
	asserts.AssertOperationSummary(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.UpdateDomainNameserversResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainNameserversResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertUpdateDomainNameserversResponse(t)
	return t
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
-- @param _RegistrantContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- @param _DomainName [DomainName] <p>The name of the domain that you want to transfer to Amazon Route 53.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- @param _Nameservers [NameserverList] <p>Contains details for the host and glue IP addresses.</p>
-- @param _AuthCode [DomainAuthCode] <p>The authorization code for the domain. You get this value from the current registrar.</p>
-- @param _PrivacyProtectRegistrantContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param _TechContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _PrivacyProtectAdminContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- @param _AutoRenew [Boolean] <p>Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect after the account is charged.</p> <p>Default: true</p>
-- @param _DurationInYears [DurationInYears] <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain.</p> <p>Default: 1</p>
-- @param _AdminContact [ContactDetail] <p>Provides detailed contact information.</p>
-- @param _PrivacyProtectTechContact [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p> <p>Default: <code>true</code> </p>
-- Required parameter: DomainName
-- Required parameter: DurationInYears
-- Required parameter: AdminContact
-- Required parameter: RegistrantContact
-- Required parameter: TechContact
function M.TransferDomainRequest(_RegistrantContact, _IdnLangCode, _DomainName, _Nameservers, _AuthCode, _PrivacyProtectRegistrantContact, _TechContact, _PrivacyProtectAdminContact, _AutoRenew, _DurationInYears, _AdminContact, _PrivacyProtectTechContact, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferDomainRequest")
	local t = { 
		["RegistrantContact"] = _RegistrantContact,
		["IdnLangCode"] = _IdnLangCode,
		["DomainName"] = _DomainName,
		["Nameservers"] = _Nameservers,
		["AuthCode"] = _AuthCode,
		["PrivacyProtectRegistrantContact"] = _PrivacyProtectRegistrantContact,
		["TechContact"] = _TechContact,
		["PrivacyProtectAdminContact"] = _PrivacyProtectAdminContact,
		["AutoRenew"] = _AutoRenew,
		["DurationInYears"] = _DurationInYears,
		["AdminContact"] = _AdminContact,
		["PrivacyProtectTechContact"] = _PrivacyProtectTechContact,
	}
	asserts.AssertTransferDomainRequest(t)
	return t
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
-- @param _City [City] <p>The city of the contact's address.</p>
-- @param _Fax [ContactNumber] <p>Fax number of the contact.</p> <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code]". For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
-- @param _OrganizationName [ContactName] <p>Name of the organization for contact types other than <code>PERSON</code>.</p>
-- @param _CountryCode [CountryCode] <p>Code for the country of the contact's address.</p>
-- @param _FirstName [ContactName] <p>First name of contact.</p>
-- @param _LastName [ContactName] <p>Last name of contact.</p>
-- @param _ContactType [ContactType] <p>Indicates whether the contact is a person, company, association, or public organization. If you choose an option other than <code>PERSON</code>, you must enter an organization name, and you can't enable privacy protection for the contact.</p>
-- @param _ZipCode [ZipCode] <p>The zip or postal code of the contact's address.</p>
-- @param _ExtraParams [ExtraParamList] <p>A list of name-value pairs for parameters required by certain top-level domains.</p>
-- @param _State [State] <p>The state or province of the contact's city.</p>
-- @param _AddressLine2 [AddressLine] <p>Second line of contact's address, if any.</p>
-- @param _AddressLine1 [AddressLine] <p>First line of the contact's address.</p>
-- @param _PhoneNumber [ContactNumber] <p>The phone number of the contact.</p> <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code&gt;]". For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
-- @param _Email [Email] <p>Email address of the contact.</p>
function M.ContactDetail(_City, _Fax, _OrganizationName, _CountryCode, _FirstName, _LastName, _ContactType, _ZipCode, _ExtraParams, _State, _AddressLine2, _AddressLine1, _PhoneNumber, _Email, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContactDetail")
	local t = { 
		["City"] = _City,
		["Fax"] = _Fax,
		["OrganizationName"] = _OrganizationName,
		["CountryCode"] = _CountryCode,
		["FirstName"] = _FirstName,
		["LastName"] = _LastName,
		["ContactType"] = _ContactType,
		["ZipCode"] = _ZipCode,
		["ExtraParams"] = _ExtraParams,
		["State"] = _State,
		["AddressLine2"] = _AddressLine2,
		["AddressLine1"] = _AddressLine1,
		["PhoneNumber"] = _PhoneNumber,
		["Email"] = _Email,
	}
	asserts.AssertContactDetail(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.DisableDomainTransferLockResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDomainTransferLockResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertDisableDomainTransferLockResponse(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.UpdateDomainContactResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertUpdateDomainContactResponse(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use <a>GetOperationDetail</a>.</p>
-- Required parameter: OperationId
function M.RegisterDomainResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDomainResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertRegisterDomainResponse(t)
	return t
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
-- @param _RegistrantContact [ContactDetail] <p>Provides details about the domain registrant.</p>
-- @param _StatusList [DomainStatusList] <p>An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes.</p> <p>ICANN, the organization that maintains a central database of domain names, has developed a set of domain name status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name, transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars use this same set of status codes.</p> <p>For a current list of domain name status codes and an explanation of what each code means, go to the <a href="https://www.icann.org/">ICANN website</a> and search for <code>epp status codes</code>. (Search on the ICANN website; web searches sometimes return an old version of the document.)</p>
-- @param _WhoIsServer [RegistrarWhoIsServer] <p>The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.</p>
-- @param _AbuseContactEmail [Email] <p>Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.</p>
-- @param _Reseller [Reseller] <p>Reseller of the domain. Domains registered or transferred using Amazon Route 53 domains will have <code>"Amazon"</code> as the reseller. </p>
-- @param _RegistrarName [RegistrarName] <p>Name of the registrar of the domain as identified in the registry. Amazon Route 53 domains are registered by registrar Gandi. The value is <code>"GANDI SAS"</code>. </p>
-- @param _DomainName [DomainName] <p>The name of a domain.</p>
-- @param _Nameservers [NameserverList] <p>The name of the domain.</p>
-- @param _RegistrarUrl [RegistrarUrl] <p>Web address of the registrar.</p>
-- @param _AdminPrivacy [Boolean] <p>Specifies whether contact information for the admin contact is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param _RegistryDomainId [RegistryDomainId] <p>Reserved for future use.</p>
-- @param _TechContact [ContactDetail] <p>Provides details about the domain technical contact.</p>
-- @param _CreationDate [Timestamp] <p>The date when the domain was created as found in the response to a WHOIS query. The date format is Unix time.</p>
-- @param _AutoRenew [Boolean] <p>Specifies whether the domain registration is set to renew automatically.</p>
-- @param _UpdatedDate [Timestamp] <p>The last updated date of the domain as found in the response to a WHOIS query. The date format is Unix time.</p>
-- @param _ExpirationDate [Timestamp] <p>The date when the registration for the domain is set to expire. The date format is Unix time.</p>
-- @param _DnsSec [DNSSec] <p>Reserved for future use.</p>
-- @param _AdminContact [ContactDetail] <p>Provides details about the domain administrative contact.</p>
-- @param _TechPrivacy [Boolean] <p>Specifies whether contact information for the tech contact is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param _RegistrantPrivacy [Boolean] <p>Specifies whether contact information for the registrant contact is concealed from WHOIS queries. If the value is <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param _AbuseContactPhone [ContactNumber] <p>Phone number for reporting abuse.</p>
-- Required parameter: DomainName
-- Required parameter: Nameservers
-- Required parameter: AdminContact
-- Required parameter: RegistrantContact
-- Required parameter: TechContact
function M.GetDomainDetailResponse(_RegistrantContact, _StatusList, _WhoIsServer, _AbuseContactEmail, _Reseller, _RegistrarName, _DomainName, _Nameservers, _RegistrarUrl, _AdminPrivacy, _RegistryDomainId, _TechContact, _CreationDate, _AutoRenew, _UpdatedDate, _ExpirationDate, _DnsSec, _AdminContact, _TechPrivacy, _RegistrantPrivacy, _AbuseContactPhone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainDetailResponse")
	local t = { 
		["RegistrantContact"] = _RegistrantContact,
		["StatusList"] = _StatusList,
		["WhoIsServer"] = _WhoIsServer,
		["AbuseContactEmail"] = _AbuseContactEmail,
		["Reseller"] = _Reseller,
		["RegistrarName"] = _RegistrarName,
		["DomainName"] = _DomainName,
		["Nameservers"] = _Nameservers,
		["RegistrarUrl"] = _RegistrarUrl,
		["AdminPrivacy"] = _AdminPrivacy,
		["RegistryDomainId"] = _RegistryDomainId,
		["TechContact"] = _TechContact,
		["CreationDate"] = _CreationDate,
		["AutoRenew"] = _AutoRenew,
		["UpdatedDate"] = _UpdatedDate,
		["ExpirationDate"] = _ExpirationDate,
		["DnsSec"] = _DnsSec,
		["AdminContact"] = _AdminContact,
		["TechPrivacy"] = _TechPrivacy,
		["RegistrantPrivacy"] = _RegistrantPrivacy,
		["AbuseContactPhone"] = _AbuseContactPhone,
	}
	asserts.AssertGetDomainDetailResponse(t)
	return t
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
-- @param _DomainName [DomainName] <p>The name of the domain that you want to enable automatic renewal for.</p>
-- Required parameter: DomainName
function M.EnableDomainAutoRenewRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainAutoRenewRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertEnableDomainAutoRenewRequest(t)
	return t
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
-- @param _Availability [DomainAvailability] <p>Whether the domain name is available for registering.</p> <note> <p>You can only register domains designated as <code>AVAILABLE</code>.</p> </note> <p>Valid values:</p> <dl> <dt>AVAILABLE</dt> <dd> <p>The domain name is available.</p> </dd> <dt>AVAILABLE_RESERVED</dt> <dd> <p>The domain name is reserved under specific conditions.</p> </dd> <dt>AVAILABLE_PREORDER</dt> <dd> <p>The domain name is available and can be preordered.</p> </dd> <dt>DONT_KNOW</dt> <dd> <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. Amazon Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.</p> </dd> <dt>PENDING</dt> <dd> <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.</p> </dd> <dt>RESERVED</dt> <dd> <p>The domain name has been reserved for another person or organization.</p> </dd> <dt>UNAVAILABLE</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_PREMIUM</dt> <dd> <p>The domain name is not available.</p> </dd> <dt>UNAVAILABLE_RESTRICTED</dt> <dd> <p>The domain name is forbidden.</p> </dd> </dl>
-- Required parameter: Availability
function M.CheckDomainAvailabilityResponse(_Availability, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckDomainAvailabilityResponse")
	local t = { 
		["Availability"] = _Availability,
	}
	asserts.AssertCheckDomainAvailabilityResponse(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
-- Required parameter: OperationId
function M.EnableDomainTransferLockResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainTransferLockResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertEnableDomainTransferLockResponse(t)
	return t
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
function M.EnableDomainAutoRenewResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainAutoRenewResponse")
	local t = { 
	}
	asserts.AssertEnableDomainAutoRenewResponse(t)
	return t
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
-- @param _message [ErrorMessage] <p>The number of domains has exceeded the allowed threshold for the account.</p>
function M.DomainLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDomainLimitExceeded(t)
	return t
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
-- @param _OperationId [OperationId] <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
-- Required parameter: OperationId
function M.UpdateDomainContactPrivacyResponse(_OperationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactPrivacyResponse")
	local t = { 
		["OperationId"] = _OperationId,
	}
	asserts.AssertUpdateDomainContactPrivacyResponse(t)
	return t
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
-- @param _TechPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param _AdminPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param _RegistrantPrivacy [Boolean] <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, WHOIS ("who is") queries will return contact information for our registrar partner, Gandi, instead of the contact information that you enter.</p>
-- @param _DomainName [DomainName] <p>The name of the domain that you want to update the privacy setting for.</p>
-- Required parameter: DomainName
function M.UpdateDomainContactPrivacyRequest(_TechPrivacy, _AdminPrivacy, _RegistrantPrivacy, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainContactPrivacyRequest")
	local t = { 
		["TechPrivacy"] = _TechPrivacy,
		["AdminPrivacy"] = _AdminPrivacy,
		["RegistrantPrivacy"] = _RegistrantPrivacy,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateDomainContactPrivacyRequest(t)
	return t
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
function M.DeleteTagsForDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsForDomainResponse")
	local t = { 
	}
	asserts.AssertDeleteTagsForDomainResponse(t)
	return t
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
-- @param _GlueIps [GlueIpList] <p>Glue IP address of a name server entry. Glue IP addresses are required only when the name of the name server is a subdomain of the domain. For example, if your domain is example.com and the name server for the domain is ns.example.com, you need to specify the IP address for ns.example.com.</p> <p>Constraints: The list can contain only one IPv4 and one IPv6 address.</p>
-- @param _Name [HostName] <p>The fully qualified host name of the name server.</p> <p>Constraint: Maximum 255 characters</p>
-- Required parameter: Name
function M.Nameserver(_GlueIps, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Nameserver")
	local t = { 
		["GlueIps"] = _GlueIps,
		["Name"] = _Name,
	}
	asserts.AssertNameserver(t)
	return t
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
-- @param _isAlreadyVerified [Boolean] <p> <code>True</code> if the email address for the registrant contact has already been verified, and <code>false</code> otherwise. If the email address has already been verified, we don't send another confirmation email.</p>
-- @param _emailAddress [Email] <p>The email address for the registrant contact at the time that we sent the verification email.</p>
-- @param _domainName [DomainName] <p>The domain name for which you requested a confirmation email.</p>
function M.ResendContactReachabilityEmailResponse(_isAlreadyVerified, _emailAddress, _domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendContactReachabilityEmailResponse")
	local t = { 
		["isAlreadyVerified"] = _isAlreadyVerified,
		["emailAddress"] = _emailAddress,
		["domainName"] = _domainName,
	}
	asserts.AssertResendContactReachabilityEmailResponse(t)
	return t
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
function M.UpdateTagsForDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTagsForDomainResponse")
	local t = { 
	}
	asserts.AssertUpdateTagsForDomainResponse(t)
	return t
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
-- @param _DomainName [DomainName] <p>The domain for which you want to get a list of tags.</p>
-- Required parameter: DomainName
function M.ListTagsForDomainRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForDomainRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertListTagsForDomainRequest(t)
	return t
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
-- @param _NextPageMarker [PageMarker] <p>If there are more billing records than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- @param _BillingRecords [BillingRecords] <p>A summary of billing records.</p>
function M.ViewBillingResponse(_NextPageMarker, _BillingRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ViewBillingResponse")
	local t = { 
		["NextPageMarker"] = _NextPageMarker,
		["BillingRecords"] = _BillingRecords,
	}
	asserts.AssertViewBillingResponse(t)
	return t
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
-- @param _domainName [DomainName] <p>The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.</p>
function M.GetContactReachabilityStatusRequest(_domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContactReachabilityStatusRequest")
	local t = { 
		["domainName"] = _domainName,
	}
	asserts.AssertGetContactReachabilityStatusRequest(t)
	return t
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
-- @param _message [ErrorMessage] <p>The request is already in progress for the domain.</p>
function M.DuplicateRequest(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRequest")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDuplicateRequest(t)
	return t
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
-- @param _IdnLangCode [LangCode] <p>Reserved for future use.</p>
-- @param _DomainName [DomainName] <p>The name of the domain that you want to get availability for.</p> <p>Constraints: The domain name can contain only the letters a through z, the numbers 0 through 9, and hyphen (-). Internationalized Domain Names are not supported.</p>
-- Required parameter: DomainName
function M.CheckDomainAvailabilityRequest(_IdnLangCode, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckDomainAvailabilityRequest")
	local t = { 
		["IdnLangCode"] = _IdnLangCode,
		["DomainName"] = _DomainName,
	}
	asserts.AssertCheckDomainAvailabilityRequest(t)
	return t
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
-- @param _DomainName [DomainName] <p>The name of the domain that you want to set the transfer lock for.</p>
-- Required parameter: DomainName
function M.EnableDomainTransferLockRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDomainTransferLockRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertEnableDomainTransferLockRequest(t)
	return t
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
-- @param _SuggestionsList [DomainSuggestionsList] <p>A list of possible domain names. If you specified <code>true</code> for <code>OnlyAvailable</code> in the request, the list contains only domains that are available for registration.</p>
function M.GetDomainSuggestionsResponse(_SuggestionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainSuggestionsResponse")
	local t = { 
		["SuggestionsList"] = _SuggestionsList,
	}
	asserts.AssertGetDomainSuggestionsResponse(t)
	return t
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
-- @param _Nameservers [NameserverList] <p>A list of new name servers for the domain.</p>
-- @param _FIAuthKey [FIAuthKey] <p>The authorization key for .fi domains</p>
-- @param _DomainName [DomainName] <p>The name of the domain that you want to change name servers for.</p>
-- Required parameter: DomainName
-- Required parameter: Nameservers
function M.UpdateDomainNameserversRequest(_Nameservers, _FIAuthKey, _DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainNameserversRequest")
	local t = { 
		["Nameservers"] = _Nameservers,
		["FIAuthKey"] = _FIAuthKey,
		["DomainName"] = _DomainName,
	}
	asserts.AssertUpdateDomainNameserversRequest(t)
	return t
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
-- @param _DomainName [DomainName] <p>The name of the domain that you want to get detailed information about.</p>
-- Required parameter: DomainName
function M.GetDomainDetailRequest(_DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainDetailRequest")
	local t = { 
		["DomainName"] = _DomainName,
	}
	asserts.AssertGetDomainDetailRequest(t)
	return t
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
-- @param _Domains [DomainSummaryList] <p>A summary of domains.</p>
-- @param _NextPageMarker [PageMarker] <p>If there are more domains than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- Required parameter: Domains
function M.ListDomainsResponse(_Domains, _NextPageMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsResponse")
	local t = { 
		["Domains"] = _Domains,
		["NextPageMarker"] = _NextPageMarker,
	}
	asserts.AssertListDomainsResponse(t)
	return t
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
-- @param _Marker [PageMarker] <p>For an initial request for a list of domains, omit this element. If the number of domains that are associated with the current AWS account is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional domains. Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p> <p>Constraints: The marker must match the value specified in the previous request.</p>
-- @param _MaxItems [PageMaxItems] <p>Number of domains to be returned.</p> <p>Default: 20</p>
function M.ListDomainsRequest(_Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListDomainsRequest(t)
	return t
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
-- @param _Operations [OperationSummaryList] <p>Lists summaries of the operations.</p>
-- @param _NextPageMarker [PageMarker] <p>If there are more operations than you specified for <code>MaxItems</code> in the request, submit another request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
-- Required parameter: Operations
function M.ListOperationsResponse(_Operations, _NextPageMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOperationsResponse")
	local t = { 
		["Operations"] = _Operations,
		["NextPageMarker"] = _NextPageMarker,
	}
	asserts.AssertListOperationsResponse(t)
	return t
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
-- <p>The requested item is not acceptable. For example, for an OperationId it may refer to the ID of an operation that is already completed. For a domain name, it may not be a valid domain name or belong to the requester account.</p>
-- @param _message [ErrorMessage] <p>The requested item is not acceptable. For example, for an OperationId it may refer to the ID of an operation that is already completed. For a domain name, it may not be a valid domain name or belong to the requester account.</p>
function M.InvalidInput(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInput")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidInput(t)
	return t
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
-- @param _AuthCode [DomainAuthCode] <p>The authorization code for the domain.</p>
-- Required parameter: AuthCode
function M.RetrieveDomainAuthCodeResponse(_AuthCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveDomainAuthCodeResponse")
	local t = { 
		["AuthCode"] = _AuthCode,
	}
	asserts.AssertRetrieveDomainAuthCodeResponse(t)
	return t
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
