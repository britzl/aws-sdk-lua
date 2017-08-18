--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudHSM (cloudhsm-2014-05-30)

local M = {}

M.metadata = {
	api_version = "2014-05-30",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cloudhsm",
	service_abbreviation = "CloudHSM",
	service_full_name = "Amazon CloudHSM",
	signature_version = "v4",
	target_prefix = "CloudHsmFrontendService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudhsm-2014-05-30",
}

local keys = {}
local asserts = {}

keys.InvalidRequestException = { nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>Indicates that one or more of the request parameters are not valid.</p>
function M.InvalidRequestException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.RemoveTagsFromResourceRequest = { ["ResourceArn"] = true, ["TagKeyList"] = true, nil }

function asserts.AssertRemoveTagsFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeyList"], "Expected key TagKeyList to exist in table")
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	if struct["TagKeyList"] then asserts.AssertTagKeyList(struct["TagKeyList"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceRequest[k], "RemoveTagsFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceRequest
--  
-- @param _ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
-- @param _TagKeyList [TagKeyList] <p>The tag key or keys to remove.</p> <p>Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use <a>AddTagsToResource</a>.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeyList
function M.RemoveTagsFromResourceRequest(_ResourceArn, _TagKeyList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["TagKeyList"] = _TagKeyList,
	}
	asserts.AssertRemoveTagsFromResourceRequest(t)
	return t
end

keys.ListHsmsResponse = { ["HsmList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListHsmsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHsmsResponse to be of type 'table'")
	if struct["HsmList"] then asserts.AssertHsmList(struct["HsmList"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHsmsResponse[k], "ListHsmsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHsmsResponse
-- <p>Contains the output of the <a>ListHsms</a> operation.</p>
-- @param _HsmList [HsmList] <p>The list of ARNs that identify the HSMs.</p>
-- @param _NextToken [PaginationToken] <p>If not null, more results are available. Pass this value to <a>ListHsms</a> to retrieve the next set of items.</p>
function M.ListHsmsResponse(_HsmList, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHsmsResponse")
	local t = { 
		["HsmList"] = _HsmList,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHsmsResponse(t)
	return t
end

keys.ListAvailableZonesRequest = { nil }

function asserts.AssertListAvailableZonesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAvailableZonesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ListAvailableZonesRequest[k], "ListAvailableZonesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAvailableZonesRequest
-- <p>Contains the inputs for the <a>ListAvailableZones</a> action.</p>
function M.ListAvailableZonesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAvailableZonesRequest")
	local t = { 
	}
	asserts.AssertListAvailableZonesRequest(t)
	return t
end

keys.CreateLunaClientResponse = { ["ClientArn"] = true, nil }

function asserts.AssertCreateLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLunaClientResponse to be of type 'table'")
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLunaClientResponse[k], "CreateLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLunaClientResponse
-- <p>Contains the output of the <a>CreateLunaClient</a> action.</p>
-- @param _ClientArn [ClientArn] <p>The ARN of the client.</p>
function M.CreateLunaClientResponse(_ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLunaClientResponse")
	local t = { 
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertCreateLunaClientResponse(t)
	return t
end

keys.CreateHsmResponse = { ["HsmArn"] = true, nil }

function asserts.AssertCreateHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmResponse to be of type 'table'")
	if struct["HsmArn"] then asserts.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmResponse[k], "CreateHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmResponse
-- <p>Contains the output of the <a>CreateHsm</a> operation.</p>
-- @param _HsmArn [HsmArn] <p>The ARN of the HSM.</p>
function M.CreateHsmResponse(_HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmResponse")
	local t = { 
		["HsmArn"] = _HsmArn,
	}
	asserts.AssertCreateHsmResponse(t)
	return t
end

keys.AddTagsToResourceRequest = { ["ResourceArn"] = true, ["TagList"] = true, nil }

function asserts.AssertAddTagsToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceRequest[k], "AddTagsToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceRequest
--  
-- @param _ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>
-- @param _TagList [TagList] <p>One or more tags.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagList
function M.AddTagsToResourceRequest(_ResourceArn, _TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["TagList"] = _TagList,
	}
	asserts.AssertAddTagsToResourceRequest(t)
	return t
end

keys.ListLunaClientsRequest = { ["NextToken"] = true, nil }

function asserts.AssertListLunaClientsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLunaClientsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLunaClientsRequest[k], "ListLunaClientsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLunaClientsRequest
--  
-- @param _NextToken [PaginationToken] <p>The <i>NextToken</i> value from a previous call to <a>ListLunaClients</a>. Pass null if this is the first call.</p>
function M.ListLunaClientsRequest(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLunaClientsRequest")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListLunaClientsRequest(t)
	return t
end

keys.RemoveTagsFromResourceResponse = { ["Status"] = true, nil }

function asserts.AssertRemoveTagsFromResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceResponse[k], "RemoveTagsFromResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResponse
--  
-- @param _Status [String] <p>The status of the operation.</p>
-- Required parameter: Status
function M.RemoveTagsFromResourceResponse(_Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceResponse")
	local t = { 
		["Status"] = _Status,
	}
	asserts.AssertRemoveTagsFromResourceResponse(t)
	return t
end

keys.ListTagsForResourceRequest = { ["ResourceArn"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param _ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
-- Required parameter: ResourceArn
function M.ListTagsForResourceRequest(_ResourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.DeleteHsmRequest = { ["HsmArn"] = true, nil }

function asserts.AssertDeleteHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmRequest to be of type 'table'")
	assert(struct["HsmArn"], "Expected key HsmArn to exist in table")
	if struct["HsmArn"] then asserts.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHsmRequest[k], "DeleteHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmRequest
-- <p>Contains the inputs for the <a>DeleteHsm</a> operation.</p>
-- @param _HsmArn [HsmArn] <p>The ARN of the HSM to delete.</p>
-- Required parameter: HsmArn
function M.DeleteHsmRequest(_HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmRequest")
	local t = { 
		["HsmArn"] = _HsmArn,
	}
	asserts.AssertDeleteHsmRequest(t)
	return t
end

keys.ModifyHsmResponse = { ["HsmArn"] = true, nil }

function asserts.AssertModifyHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHsmResponse to be of type 'table'")
	if struct["HsmArn"] then asserts.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyHsmResponse[k], "ModifyHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHsmResponse
-- <p>Contains the output of the <a>ModifyHsm</a> operation.</p>
-- @param _HsmArn [HsmArn] <p>The ARN of the HSM.</p>
function M.ModifyHsmResponse(_HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHsmResponse")
	local t = { 
		["HsmArn"] = _HsmArn,
	}
	asserts.AssertModifyHsmResponse(t)
	return t
end

keys.DescribeHapgResponse = { ["PartitionSerialList"] = true, ["HsmsPendingRegistration"] = true, ["HsmsLastActionFailed"] = true, ["HsmsPendingDeletion"] = true, ["LastModifiedTimestamp"] = true, ["Label"] = true, ["HapgSerial"] = true, ["State"] = true, ["HapgArn"] = true, nil }

function asserts.AssertDescribeHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHapgResponse to be of type 'table'")
	if struct["PartitionSerialList"] then asserts.AssertPartitionSerialList(struct["PartitionSerialList"]) end
	if struct["HsmsPendingRegistration"] then asserts.AssertHsmList(struct["HsmsPendingRegistration"]) end
	if struct["HsmsLastActionFailed"] then asserts.AssertHsmList(struct["HsmsLastActionFailed"]) end
	if struct["HsmsPendingDeletion"] then asserts.AssertHsmList(struct["HsmsPendingDeletion"]) end
	if struct["LastModifiedTimestamp"] then asserts.AssertTimestamp(struct["LastModifiedTimestamp"]) end
	if struct["Label"] then asserts.AssertLabel(struct["Label"]) end
	if struct["HapgSerial"] then asserts.AssertString(struct["HapgSerial"]) end
	if struct["State"] then asserts.AssertCloudHsmObjectState(struct["State"]) end
	if struct["HapgArn"] then asserts.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHapgResponse[k], "DescribeHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHapgResponse
-- <p>Contains the output of the <a>DescribeHapg</a> action.</p>
-- @param _PartitionSerialList [PartitionSerialList] <p>The list of partition serial numbers that belong to the high-availability partition group.</p>
-- @param _HsmsPendingRegistration [HsmList] 
-- @param _HsmsLastActionFailed [HsmList] 
-- @param _HsmsPendingDeletion [HsmList] 
-- @param _LastModifiedTimestamp [Timestamp] <p>The date and time the high-availability partition group was last modified.</p>
-- @param _Label [Label] <p>The label for the high-availability partition group.</p>
-- @param _HapgSerial [String] <p>The serial number of the high-availability partition group.</p>
-- @param _State [CloudHsmObjectState] <p>The state of the high-availability partition group.</p>
-- @param _HapgArn [HapgArn] <p>The ARN of the high-availability partition group.</p>
function M.DescribeHapgResponse(_PartitionSerialList, _HsmsPendingRegistration, _HsmsLastActionFailed, _HsmsPendingDeletion, _LastModifiedTimestamp, _Label, _HapgSerial, _State, _HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHapgResponse")
	local t = { 
		["PartitionSerialList"] = _PartitionSerialList,
		["HsmsPendingRegistration"] = _HsmsPendingRegistration,
		["HsmsLastActionFailed"] = _HsmsLastActionFailed,
		["HsmsPendingDeletion"] = _HsmsPendingDeletion,
		["LastModifiedTimestamp"] = _LastModifiedTimestamp,
		["Label"] = _Label,
		["HapgSerial"] = _HapgSerial,
		["State"] = _State,
		["HapgArn"] = _HapgArn,
	}
	asserts.AssertDescribeHapgResponse(t)
	return t
end

keys.ListTagsForResourceResponse = { ["TagList"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param _TagList [TagList] <p>One or more tags.</p>
-- Required parameter: TagList
function M.ListTagsForResourceResponse(_TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["TagList"] = _TagList,
	}
	asserts.AssertListTagsForResourceResponse(t)
	return t
end

keys.ListHapgsRequest = { ["NextToken"] = true, nil }

function asserts.AssertListHapgsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHapgsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHapgsRequest[k], "ListHapgsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHapgsRequest
--  
-- @param _NextToken [PaginationToken] <p>The <i>NextToken</i> value from a previous call to <a>ListHapgs</a>. Pass null if this is the first call.</p>
function M.ListHapgsRequest(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHapgsRequest")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHapgsRequest(t)
	return t
end

keys.GetConfigRequest = { ["HapgList"] = true, ["ClientVersion"] = true, ["ClientArn"] = true, nil }

function asserts.AssertGetConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConfigRequest to be of type 'table'")
	assert(struct["ClientArn"], "Expected key ClientArn to exist in table")
	assert(struct["ClientVersion"], "Expected key ClientVersion to exist in table")
	assert(struct["HapgList"], "Expected key HapgList to exist in table")
	if struct["HapgList"] then asserts.AssertHapgList(struct["HapgList"]) end
	if struct["ClientVersion"] then asserts.AssertClientVersion(struct["ClientVersion"]) end
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConfigRequest[k], "GetConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConfigRequest
--  
-- @param _HapgList [HapgList] <p>A list of ARNs that identify the high-availability partition groups that are associated with the client.</p>
-- @param _ClientVersion [ClientVersion] <p>The client version.</p>
-- @param _ClientArn [ClientArn] <p>The ARN of the client.</p>
-- Required parameter: ClientArn
-- Required parameter: ClientVersion
-- Required parameter: HapgList
function M.GetConfigRequest(_HapgList, _ClientVersion, _ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConfigRequest")
	local t = { 
		["HapgList"] = _HapgList,
		["ClientVersion"] = _ClientVersion,
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertGetConfigRequest(t)
	return t
end

keys.CreateHapgRequest = { ["Label"] = true, nil }

function asserts.AssertCreateHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHapgRequest to be of type 'table'")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["Label"] then asserts.AssertLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHapgRequest[k], "CreateHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHapgRequest
-- <p>Contains the inputs for the <a>CreateHapgRequest</a> action.</p>
-- @param _Label [Label] <p>The label of the new high-availability partition group.</p>
-- Required parameter: Label
function M.CreateHapgRequest(_Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHapgRequest")
	local t = { 
		["Label"] = _Label,
	}
	asserts.AssertCreateHapgRequest(t)
	return t
end

keys.DescribeHapgRequest = { ["HapgArn"] = true, nil }

function asserts.AssertDescribeHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHapgRequest to be of type 'table'")
	assert(struct["HapgArn"], "Expected key HapgArn to exist in table")
	if struct["HapgArn"] then asserts.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHapgRequest[k], "DescribeHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHapgRequest
-- <p>Contains the inputs for the <a>DescribeHapg</a> action.</p>
-- @param _HapgArn [HapgArn] <p>The ARN of the high-availability partition group to describe.</p>
-- Required parameter: HapgArn
function M.DescribeHapgRequest(_HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHapgRequest")
	local t = { 
		["HapgArn"] = _HapgArn,
	}
	asserts.AssertDescribeHapgRequest(t)
	return t
end

keys.ListHapgsResponse = { ["HapgList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListHapgsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHapgsResponse to be of type 'table'")
	assert(struct["HapgList"], "Expected key HapgList to exist in table")
	if struct["HapgList"] then asserts.AssertHapgList(struct["HapgList"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHapgsResponse[k], "ListHapgsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHapgsResponse
--  
-- @param _HapgList [HapgList] <p>The list of high-availability partition groups.</p>
-- @param _NextToken [PaginationToken] <p>If not null, more results are available. Pass this value to <a>ListHapgs</a> to retrieve the next set of items.</p>
-- Required parameter: HapgList
function M.ListHapgsResponse(_HapgList, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHapgsResponse")
	local t = { 
		["HapgList"] = _HapgList,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHapgsResponse(t)
	return t
end

keys.DescribeHsmRequest = { ["HsmSerialNumber"] = true, ["HsmArn"] = true, nil }

function asserts.AssertDescribeHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmRequest to be of type 'table'")
	if struct["HsmSerialNumber"] then asserts.AssertHsmSerialNumber(struct["HsmSerialNumber"]) end
	if struct["HsmArn"] then asserts.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHsmRequest[k], "DescribeHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmRequest
-- <p>Contains the inputs for the <a>DescribeHsm</a> operation. </p>
-- @param _HsmSerialNumber [HsmSerialNumber] <p>The serial number of the HSM. Either the <i>HsmArn</i> or the <i>HsmSerialNumber</i> parameter must be specified.</p>
-- @param _HsmArn [HsmArn] <p>The ARN of the HSM. Either the <i>HsmArn</i> or the <i>SerialNumber</i> parameter must be specified.</p>
function M.DescribeHsmRequest(_HsmSerialNumber, _HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmRequest")
	local t = { 
		["HsmSerialNumber"] = _HsmSerialNumber,
		["HsmArn"] = _HsmArn,
	}
	asserts.AssertDescribeHsmRequest(t)
	return t
end

keys.DescribeLunaClientResponse = { ["LastModifiedTimestamp"] = true, ["Label"] = true, ["CertificateFingerprint"] = true, ["Certificate"] = true, ["ClientArn"] = true, nil }

function asserts.AssertDescribeLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLunaClientResponse to be of type 'table'")
	if struct["LastModifiedTimestamp"] then asserts.AssertTimestamp(struct["LastModifiedTimestamp"]) end
	if struct["Label"] then asserts.AssertLabel(struct["Label"]) end
	if struct["CertificateFingerprint"] then asserts.AssertCertificateFingerprint(struct["CertificateFingerprint"]) end
	if struct["Certificate"] then asserts.AssertCertificate(struct["Certificate"]) end
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLunaClientResponse[k], "DescribeLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLunaClientResponse
--  
-- @param _LastModifiedTimestamp [Timestamp] <p>The date and time the client was last modified.</p>
-- @param _Label [Label] <p>The label of the client.</p>
-- @param _CertificateFingerprint [CertificateFingerprint] <p>The certificate fingerprint.</p>
-- @param _Certificate [Certificate] <p>The certificate installed on the HSMs used by this client.</p>
-- @param _ClientArn [ClientArn] <p>The ARN of the client.</p>
function M.DescribeLunaClientResponse(_LastModifiedTimestamp, _Label, _CertificateFingerprint, _Certificate, _ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLunaClientResponse")
	local t = { 
		["LastModifiedTimestamp"] = _LastModifiedTimestamp,
		["Label"] = _Label,
		["CertificateFingerprint"] = _CertificateFingerprint,
		["Certificate"] = _Certificate,
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertDescribeLunaClientResponse(t)
	return t
end

keys.DeleteLunaClientRequest = { ["ClientArn"] = true, nil }

function asserts.AssertDeleteLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLunaClientRequest to be of type 'table'")
	assert(struct["ClientArn"], "Expected key ClientArn to exist in table")
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLunaClientRequest[k], "DeleteLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLunaClientRequest
--  
-- @param _ClientArn [ClientArn] <p>The ARN of the client to delete.</p>
-- Required parameter: ClientArn
function M.DeleteLunaClientRequest(_ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLunaClientRequest")
	local t = { 
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertDeleteLunaClientRequest(t)
	return t
end

keys.CloudHsmServiceException = { ["message"] = true, ["retryable"] = true, nil }

function asserts.AssertCloudHsmServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudHsmServiceException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["retryable"] then asserts.AssertBoolean(struct["retryable"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudHsmServiceException[k], "CloudHsmServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudHsmServiceException
-- <p>Indicates that an exception occurred in the AWS CloudHSM service.</p>
-- @param _message [String] <p>Additional information about the error.</p>
-- @param _retryable [Boolean] <p>Indicates if the action can be retried.</p>
function M.CloudHsmServiceException(_message, _retryable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudHsmServiceException")
	local t = { 
		["message"] = _message,
		["retryable"] = _retryable,
	}
	asserts.AssertCloudHsmServiceException(t)
	return t
end

keys.ModifyHapgResponse = { ["HapgArn"] = true, nil }

function asserts.AssertModifyHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHapgResponse to be of type 'table'")
	if struct["HapgArn"] then asserts.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyHapgResponse[k], "ModifyHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHapgResponse
--  
-- @param _HapgArn [HapgArn] <p>The ARN of the high-availability partition group.</p>
function M.ModifyHapgResponse(_HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHapgResponse")
	local t = { 
		["HapgArn"] = _HapgArn,
	}
	asserts.AssertModifyHapgResponse(t)
	return t
end

keys.DeleteLunaClientResponse = { ["Status"] = true, nil }

function asserts.AssertDeleteLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLunaClientResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLunaClientResponse[k], "DeleteLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLunaClientResponse
--  
-- @param _Status [String] <p>The status of the action.</p>
-- Required parameter: Status
function M.DeleteLunaClientResponse(_Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLunaClientResponse")
	local t = { 
		["Status"] = _Status,
	}
	asserts.AssertDeleteLunaClientResponse(t)
	return t
end

keys.ListLunaClientsResponse = { ["NextToken"] = true, ["ClientList"] = true, nil }

function asserts.AssertListLunaClientsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLunaClientsResponse to be of type 'table'")
	assert(struct["ClientList"], "Expected key ClientList to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["ClientList"] then asserts.AssertClientList(struct["ClientList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLunaClientsResponse[k], "ListLunaClientsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLunaClientsResponse
--  
-- @param _NextToken [PaginationToken] <p>If not null, more results are available. Pass this to <a>ListLunaClients</a> to retrieve the next set of items.</p>
-- @param _ClientList [ClientList] <p>The list of clients.</p>
-- Required parameter: ClientList
function M.ListLunaClientsResponse(_NextToken, _ClientList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLunaClientsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["ClientList"] = _ClientList,
	}
	asserts.AssertListLunaClientsResponse(t)
	return t
end

keys.ModifyHapgRequest = { ["HapgArn"] = true, ["PartitionSerialList"] = true, ["Label"] = true, nil }

function asserts.AssertModifyHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHapgRequest to be of type 'table'")
	assert(struct["HapgArn"], "Expected key HapgArn to exist in table")
	if struct["HapgArn"] then asserts.AssertHapgArn(struct["HapgArn"]) end
	if struct["PartitionSerialList"] then asserts.AssertPartitionSerialList(struct["PartitionSerialList"]) end
	if struct["Label"] then asserts.AssertLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyHapgRequest[k], "ModifyHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHapgRequest
--  
-- @param _HapgArn [HapgArn] <p>The ARN of the high-availability partition group to modify.</p>
-- @param _PartitionSerialList [PartitionSerialList] <p>The list of partition serial numbers to make members of the high-availability partition group.</p>
-- @param _Label [Label] <p>The new label for the high-availability partition group.</p>
-- Required parameter: HapgArn
function M.ModifyHapgRequest(_HapgArn, _PartitionSerialList, _Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHapgRequest")
	local t = { 
		["HapgArn"] = _HapgArn,
		["PartitionSerialList"] = _PartitionSerialList,
		["Label"] = _Label,
	}
	asserts.AssertModifyHapgRequest(t)
	return t
end

keys.ModifyLunaClientResponse = { ["ClientArn"] = true, nil }

function asserts.AssertModifyLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLunaClientResponse to be of type 'table'")
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyLunaClientResponse[k], "ModifyLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLunaClientResponse
--  
-- @param _ClientArn [ClientArn] <p>The ARN of the client.</p>
function M.ModifyLunaClientResponse(_ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyLunaClientResponse")
	local t = { 
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertModifyLunaClientResponse(t)
	return t
end

keys.AddTagsToResourceResponse = { ["Status"] = true, nil }

function asserts.AssertAddTagsToResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceResponse[k], "AddTagsToResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResponse
--  
-- @param _Status [String] <p>The status of the operation.</p>
-- Required parameter: Status
function M.AddTagsToResourceResponse(_Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceResponse")
	local t = { 
		["Status"] = _Status,
	}
	asserts.AssertAddTagsToResourceResponse(t)
	return t
end

keys.GetConfigResponse = { ["ConfigType"] = true, ["ConfigCred"] = true, ["ConfigFile"] = true, nil }

function asserts.AssertGetConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConfigResponse to be of type 'table'")
	if struct["ConfigType"] then asserts.AssertString(struct["ConfigType"]) end
	if struct["ConfigCred"] then asserts.AssertString(struct["ConfigCred"]) end
	if struct["ConfigFile"] then asserts.AssertString(struct["ConfigFile"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConfigResponse[k], "GetConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConfigResponse
--  
-- @param _ConfigType [String] <p>The type of credentials.</p>
-- @param _ConfigCred [String] <p>The certificate file containing the server.pem files of the HSMs.</p>
-- @param _ConfigFile [String] <p>The chrystoki.conf configuration file.</p>
function M.GetConfigResponse(_ConfigType, _ConfigCred, _ConfigFile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConfigResponse")
	local t = { 
		["ConfigType"] = _ConfigType,
		["ConfigCred"] = _ConfigCred,
		["ConfigFile"] = _ConfigFile,
	}
	asserts.AssertGetConfigResponse(t)
	return t
end

keys.DeleteHapgRequest = { ["HapgArn"] = true, nil }

function asserts.AssertDeleteHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHapgRequest to be of type 'table'")
	assert(struct["HapgArn"], "Expected key HapgArn to exist in table")
	if struct["HapgArn"] then asserts.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHapgRequest[k], "DeleteHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHapgRequest
-- <p>Contains the inputs for the <a>DeleteHapg</a> action.</p>
-- @param _HapgArn [HapgArn] <p>The ARN of the high-availability partition group to delete.</p>
-- Required parameter: HapgArn
function M.DeleteHapgRequest(_HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHapgRequest")
	local t = { 
		["HapgArn"] = _HapgArn,
	}
	asserts.AssertDeleteHapgRequest(t)
	return t
end

keys.DeleteHapgResponse = { ["Status"] = true, nil }

function asserts.AssertDeleteHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHapgResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHapgResponse[k], "DeleteHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHapgResponse
-- <p>Contains the output of the <a>DeleteHapg</a> action.</p>
-- @param _Status [String] <p>The status of the action.</p>
-- Required parameter: Status
function M.DeleteHapgResponse(_Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHapgResponse")
	local t = { 
		["Status"] = _Status,
	}
	asserts.AssertDeleteHapgResponse(t)
	return t
end

keys.ListHsmsRequest = { ["NextToken"] = true, nil }

function asserts.AssertListHsmsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHsmsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHsmsRequest[k], "ListHsmsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHsmsRequest
--  
-- @param _NextToken [PaginationToken] <p>The <i>NextToken</i> value from a previous call to <a>ListHsms</a>. Pass null if this is the first call.</p>
function M.ListHsmsRequest(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHsmsRequest")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHsmsRequest(t)
	return t
end

keys.ModifyLunaClientRequest = { ["Certificate"] = true, ["ClientArn"] = true, nil }

function asserts.AssertModifyLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLunaClientRequest to be of type 'table'")
	assert(struct["ClientArn"], "Expected key ClientArn to exist in table")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	if struct["Certificate"] then asserts.AssertCertificate(struct["Certificate"]) end
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyLunaClientRequest[k], "ModifyLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLunaClientRequest
--  
-- @param _Certificate [Certificate] <p>The new certificate for the client.</p>
-- @param _ClientArn [ClientArn] <p>The ARN of the client.</p>
-- Required parameter: ClientArn
-- Required parameter: Certificate
function M.ModifyLunaClientRequest(_Certificate, _ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyLunaClientRequest")
	local t = { 
		["Certificate"] = _Certificate,
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertModifyLunaClientRequest(t)
	return t
end

keys.DescribeLunaClientRequest = { ["CertificateFingerprint"] = true, ["ClientArn"] = true, nil }

function asserts.AssertDescribeLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLunaClientRequest to be of type 'table'")
	if struct["CertificateFingerprint"] then asserts.AssertCertificateFingerprint(struct["CertificateFingerprint"]) end
	if struct["ClientArn"] then asserts.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLunaClientRequest[k], "DescribeLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLunaClientRequest
--  
-- @param _CertificateFingerprint [CertificateFingerprint] <p>The certificate fingerprint.</p>
-- @param _ClientArn [ClientArn] <p>The ARN of the client.</p>
function M.DescribeLunaClientRequest(_CertificateFingerprint, _ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLunaClientRequest")
	local t = { 
		["CertificateFingerprint"] = _CertificateFingerprint,
		["ClientArn"] = _ClientArn,
	}
	asserts.AssertDescribeLunaClientRequest(t)
	return t
end

keys.CreateHapgResponse = { ["HapgArn"] = true, nil }

function asserts.AssertCreateHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHapgResponse to be of type 'table'")
	if struct["HapgArn"] then asserts.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHapgResponse[k], "CreateHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHapgResponse
-- <p>Contains the output of the <a>CreateHAPartitionGroup</a> action.</p>
-- @param _HapgArn [HapgArn] <p>The ARN of the high-availability partition group.</p>
function M.CreateHapgResponse(_HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHapgResponse")
	local t = { 
		["HapgArn"] = _HapgArn,
	}
	asserts.AssertCreateHapgResponse(t)
	return t
end

keys.ModifyHsmRequest = { ["IamRoleArn"] = true, ["EniIp"] = true, ["ExternalId"] = true, ["SubnetId"] = true, ["SyslogIp"] = true, ["HsmArn"] = true, nil }

function asserts.AssertModifyHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHsmRequest to be of type 'table'")
	assert(struct["HsmArn"], "Expected key HsmArn to exist in table")
	if struct["IamRoleArn"] then asserts.AssertIamRoleArn(struct["IamRoleArn"]) end
	if struct["EniIp"] then asserts.AssertIpAddress(struct["EniIp"]) end
	if struct["ExternalId"] then asserts.AssertExternalId(struct["ExternalId"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["SyslogIp"] then asserts.AssertIpAddress(struct["SyslogIp"]) end
	if struct["HsmArn"] then asserts.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyHsmRequest[k], "ModifyHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHsmRequest
-- <p>Contains the inputs for the <a>ModifyHsm</a> operation.</p>
-- @param _IamRoleArn [IamRoleArn] <p>The new IAM role ARN.</p>
-- @param _EniIp [IpAddress] <p>The new IP address for the elastic network interface (ENI) attached to the HSM.</p> <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.</p>
-- @param _ExternalId [ExternalId] <p>The new external ID.</p>
-- @param _SubnetId [SubnetId] <p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.</p>
-- @param _SyslogIp [IpAddress] <p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.</p>
-- @param _HsmArn [HsmArn] <p>The ARN of the HSM to modify.</p>
-- Required parameter: HsmArn
function M.ModifyHsmRequest(_IamRoleArn, _EniIp, _ExternalId, _SubnetId, _SyslogIp, _HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHsmRequest")
	local t = { 
		["IamRoleArn"] = _IamRoleArn,
		["EniIp"] = _EniIp,
		["ExternalId"] = _ExternalId,
		["SubnetId"] = _SubnetId,
		["SyslogIp"] = _SyslogIp,
		["HsmArn"] = _HsmArn,
	}
	asserts.AssertModifyHsmRequest(t)
	return t
end

keys.ListAvailableZonesResponse = { ["AZList"] = true, nil }

function asserts.AssertListAvailableZonesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAvailableZonesResponse to be of type 'table'")
	if struct["AZList"] then asserts.AssertAZList(struct["AZList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAvailableZonesResponse[k], "ListAvailableZonesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAvailableZonesResponse
--  
-- @param _AZList [AZList] <p>The list of Availability Zones that have available AWS CloudHSM capacity.</p>
function M.ListAvailableZonesResponse(_AZList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAvailableZonesResponse")
	local t = { 
		["AZList"] = _AZList,
	}
	asserts.AssertListAvailableZonesResponse(t)
	return t
end

keys.CreateHsmRequest = { ["SshKey"] = true, ["SubscriptionType"] = true, ["IamRoleArn"] = true, ["EniIp"] = true, ["ExternalId"] = true, ["ClientToken"] = true, ["SubnetId"] = true, ["SyslogIp"] = true, nil }

function asserts.AssertCreateHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmRequest to be of type 'table'")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	assert(struct["SshKey"], "Expected key SshKey to exist in table")
	assert(struct["IamRoleArn"], "Expected key IamRoleArn to exist in table")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	if struct["SshKey"] then asserts.AssertSshKey(struct["SshKey"]) end
	if struct["SubscriptionType"] then asserts.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["IamRoleArn"] then asserts.AssertIamRoleArn(struct["IamRoleArn"]) end
	if struct["EniIp"] then asserts.AssertIpAddress(struct["EniIp"]) end
	if struct["ExternalId"] then asserts.AssertExternalId(struct["ExternalId"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["SyslogIp"] then asserts.AssertIpAddress(struct["SyslogIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmRequest[k], "CreateHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmRequest
-- <p>Contains the inputs for the <a>CreateHsm</a> operation.</p>
-- @param _SshKey [SshKey] <p>The SSH public key to install on the HSM.</p>
-- @param _SubscriptionType [SubscriptionType] 
-- @param _IamRoleArn [IamRoleArn] <p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.</p>
-- @param _EniIp [IpAddress] <p>The IP address to assign to the HSM's ENI.</p> <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.</p>
-- @param _ExternalId [ExternalId] <p>The external ID from <b>IamRoleArn</b>, if present.</p>
-- @param _ClientToken [ClientToken] <p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.</p>
-- @param _SubnetId [SubnetId] <p>The identifier of the subnet in your VPC in which to place the HSM.</p>
-- @param _SyslogIp [IpAddress] <p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.</p>
-- Required parameter: SubnetId
-- Required parameter: SshKey
-- Required parameter: IamRoleArn
-- Required parameter: SubscriptionType
function M.CreateHsmRequest(_SshKey, _SubscriptionType, _IamRoleArn, _EniIp, _ExternalId, _ClientToken, _SubnetId, _SyslogIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmRequest")
	local t = { 
		["SshKey"] = _SshKey,
		["SubscriptionType"] = _SubscriptionType,
		["IamRoleArn"] = _IamRoleArn,
		["EniIp"] = _EniIp,
		["ExternalId"] = _ExternalId,
		["ClientToken"] = _ClientToken,
		["SubnetId"] = _SubnetId,
		["SyslogIp"] = _SyslogIp,
	}
	asserts.AssertCreateHsmRequest(t)
	return t
end

keys.DeleteHsmResponse = { ["Status"] = true, nil }

function asserts.AssertDeleteHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHsmResponse[k], "DeleteHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmResponse
-- <p>Contains the output of the <a>DeleteHsm</a> operation.</p>
-- @param _Status [String] <p>The status of the operation.</p>
-- Required parameter: Status
function M.DeleteHsmResponse(_Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmResponse")
	local t = { 
		["Status"] = _Status,
	}
	asserts.AssertDeleteHsmResponse(t)
	return t
end

keys.CreateLunaClientRequest = { ["Certificate"] = true, ["Label"] = true, nil }

function asserts.AssertCreateLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLunaClientRequest to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	if struct["Certificate"] then asserts.AssertCertificate(struct["Certificate"]) end
	if struct["Label"] then asserts.AssertClientLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLunaClientRequest[k], "CreateLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLunaClientRequest
-- <p>Contains the inputs for the <a>CreateLunaClient</a> action.</p>
-- @param _Certificate [Certificate] <p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.</p>
-- @param _Label [ClientLabel] <p>The label for the client.</p>
-- Required parameter: Certificate
function M.CreateLunaClientRequest(_Certificate, _Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLunaClientRequest")
	local t = { 
		["Certificate"] = _Certificate,
		["Label"] = _Label,
	}
	asserts.AssertCreateLunaClientRequest(t)
	return t
end

keys.DescribeHsmResponse = { ["Status"] = true, ["SubscriptionStartDate"] = true, ["AvailabilityZone"] = true, ["EniId"] = true, ["HsmType"] = true, ["SshPublicKey"] = true, ["SubscriptionType"] = true, ["SerialNumber"] = true, ["IamRoleArn"] = true, ["SubscriptionEndDate"] = true, ["EniIp"] = true, ["SoftwareVersion"] = true, ["VpcId"] = true, ["ServerCertUri"] = true, ["SubnetId"] = true, ["SshKeyLastUpdated"] = true, ["Partitions"] = true, ["ServerCertLastUpdated"] = true, ["StatusDetails"] = true, ["VendorName"] = true, ["HsmArn"] = true, nil }

function asserts.AssertDescribeHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertHsmStatus(struct["Status"]) end
	if struct["SubscriptionStartDate"] then asserts.AssertTimestamp(struct["SubscriptionStartDate"]) end
	if struct["AvailabilityZone"] then asserts.AssertAZ(struct["AvailabilityZone"]) end
	if struct["EniId"] then asserts.AssertEniId(struct["EniId"]) end
	if struct["HsmType"] then asserts.AssertString(struct["HsmType"]) end
	if struct["SshPublicKey"] then asserts.AssertSshKey(struct["SshPublicKey"]) end
	if struct["SubscriptionType"] then asserts.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["SerialNumber"] then asserts.AssertHsmSerialNumber(struct["SerialNumber"]) end
	if struct["IamRoleArn"] then asserts.AssertIamRoleArn(struct["IamRoleArn"]) end
	if struct["SubscriptionEndDate"] then asserts.AssertTimestamp(struct["SubscriptionEndDate"]) end
	if struct["EniIp"] then asserts.AssertIpAddress(struct["EniIp"]) end
	if struct["SoftwareVersion"] then asserts.AssertString(struct["SoftwareVersion"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["ServerCertUri"] then asserts.AssertString(struct["ServerCertUri"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["SshKeyLastUpdated"] then asserts.AssertTimestamp(struct["SshKeyLastUpdated"]) end
	if struct["Partitions"] then asserts.AssertPartitionList(struct["Partitions"]) end
	if struct["ServerCertLastUpdated"] then asserts.AssertTimestamp(struct["ServerCertLastUpdated"]) end
	if struct["StatusDetails"] then asserts.AssertString(struct["StatusDetails"]) end
	if struct["VendorName"] then asserts.AssertString(struct["VendorName"]) end
	if struct["HsmArn"] then asserts.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHsmResponse[k], "DescribeHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmResponse
-- <p>Contains the output of the <a>DescribeHsm</a> operation.</p>
-- @param _Status [HsmStatus] <p>The status of the HSM.</p>
-- @param _SubscriptionStartDate [Timestamp] <p>The subscription start date.</p>
-- @param _AvailabilityZone [AZ] <p>The Availability Zone that the HSM is in.</p>
-- @param _EniId [EniId] <p>The identifier of the elastic network interface (ENI) attached to the HSM.</p>
-- @param _HsmType [String] <p>The HSM model type.</p>
-- @param _SshPublicKey [SshKey] <p>The public SSH key.</p>
-- @param _SubscriptionType [SubscriptionType] 
-- @param _SerialNumber [HsmSerialNumber] <p>The serial number of the HSM.</p>
-- @param _IamRoleArn [IamRoleArn] <p>The ARN of the IAM role assigned to the HSM.</p>
-- @param _SubscriptionEndDate [Timestamp] <p>The subscription end date.</p>
-- @param _EniIp [IpAddress] <p>The IP address assigned to the HSM's ENI.</p>
-- @param _SoftwareVersion [String] <p>The HSM software version.</p>
-- @param _VpcId [VpcId] <p>The identifier of the VPC that the HSM is in.</p>
-- @param _ServerCertUri [String] <p>The URI of the certificate server.</p>
-- @param _SubnetId [SubnetId] <p>The identifier of the subnet that the HSM is in.</p>
-- @param _SshKeyLastUpdated [Timestamp] <p>The date and time that the SSH key was last updated.</p>
-- @param _Partitions [PartitionList] <p>The list of partitions on the HSM.</p>
-- @param _ServerCertLastUpdated [Timestamp] <p>The date and time that the server certificate was last updated.</p>
-- @param _StatusDetails [String] <p>Contains additional information about the status of the HSM.</p>
-- @param _VendorName [String] <p>The name of the HSM vendor.</p>
-- @param _HsmArn [HsmArn] <p>The ARN of the HSM.</p>
function M.DescribeHsmResponse(_Status, _SubscriptionStartDate, _AvailabilityZone, _EniId, _HsmType, _SshPublicKey, _SubscriptionType, _SerialNumber, _IamRoleArn, _SubscriptionEndDate, _EniIp, _SoftwareVersion, _VpcId, _ServerCertUri, _SubnetId, _SshKeyLastUpdated, _Partitions, _ServerCertLastUpdated, _StatusDetails, _VendorName, _HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmResponse")
	local t = { 
		["Status"] = _Status,
		["SubscriptionStartDate"] = _SubscriptionStartDate,
		["AvailabilityZone"] = _AvailabilityZone,
		["EniId"] = _EniId,
		["HsmType"] = _HsmType,
		["SshPublicKey"] = _SshPublicKey,
		["SubscriptionType"] = _SubscriptionType,
		["SerialNumber"] = _SerialNumber,
		["IamRoleArn"] = _IamRoleArn,
		["SubscriptionEndDate"] = _SubscriptionEndDate,
		["EniIp"] = _EniIp,
		["SoftwareVersion"] = _SoftwareVersion,
		["VpcId"] = _VpcId,
		["ServerCertUri"] = _ServerCertUri,
		["SubnetId"] = _SubnetId,
		["SshKeyLastUpdated"] = _SshKeyLastUpdated,
		["Partitions"] = _Partitions,
		["ServerCertLastUpdated"] = _ServerCertLastUpdated,
		["StatusDetails"] = _StatusDetails,
		["VendorName"] = _VendorName,
		["HsmArn"] = _HsmArn,
	}
	asserts.AssertDescribeHsmResponse(t)
	return t
end

keys.CloudHsmInternalException = { nil }

function asserts.AssertCloudHsmInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudHsmInternalException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CloudHsmInternalException[k], "CloudHsmInternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudHsmInternalException
-- <p>Indicates that an internal error occurred.</p>
function M.CloudHsmInternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudHsmInternalException")
	local t = { 
	}
	asserts.AssertCloudHsmInternalException(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key-value pair that identifies or specifies metadata about an AWS CloudHSM resource.</p>
-- @param _Value [TagValue] <p>The value of the tag.</p>
-- @param _Key [TagKey] <p>The key of the tag.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

function asserts.AssertCertificate(str)
	assert(str)
	assert(type(str) == "string", "Expected Certificate to be of type 'string'")
	assert(#str <= 2400, "Expected string to be max 2400 characters")
	assert(#str >= 600, "Expected string to be min 600 characters")
end

--  
function M.Certificate(str)
	asserts.AssertCertificate(str)
	return str
end

function asserts.AssertPartitionSerial(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionSerial to be of type 'string'")
end

--  
function M.PartitionSerial(str)
	asserts.AssertPartitionSerial(str)
	return str
end

function asserts.AssertPartitionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionArn to be of type 'string'")
end

--  
function M.PartitionArn(str)
	asserts.AssertPartitionArn(str)
	return str
end

function asserts.AssertLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected Label to be of type 'string'")
end

--  
function M.Label(str)
	asserts.AssertLabel(str)
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

function asserts.AssertHsmArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmArn to be of type 'string'")
end

-- <p>An ARN that identifies an HSM.</p>
function M.HsmArn(str)
	asserts.AssertHsmArn(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertEniId(str)
	assert(str)
	assert(type(str) == "string", "Expected EniId to be of type 'string'")
end

--  
function M.EniId(str)
	asserts.AssertEniId(str)
	return str
end

function asserts.AssertSshKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SshKey to be of type 'string'")
end

--  
function M.SshKey(str)
	asserts.AssertSshKey(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertHsmSerialNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmSerialNumber to be of type 'string'")
end

--  
function M.HsmSerialNumber(str)
	asserts.AssertHsmSerialNumber(str)
	return str
end

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
	return str
end

function asserts.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
end

--  
function M.ClientToken(str)
	asserts.AssertClientToken(str)
	return str
end

function asserts.AssertHapgArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HapgArn to be of type 'string'")
end

--  
function M.HapgArn(str)
	asserts.AssertHapgArn(str)
	return str
end

function asserts.AssertHsmStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmStatus to be of type 'string'")
end

--  
function M.HsmStatus(str)
	asserts.AssertHsmStatus(str)
	return str
end

function asserts.AssertClientVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientVersion to be of type 'string'")
end

--  
function M.ClientVersion(str)
	asserts.AssertClientVersion(str)
	return str
end

function asserts.AssertTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected Timestamp to be of type 'string'")
end

--  
function M.Timestamp(str)
	asserts.AssertTimestamp(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertExternalId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExternalId to be of type 'string'")
end

--  
function M.ExternalId(str)
	asserts.AssertExternalId(str)
	return str
end

function asserts.AssertClientLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientLabel to be of type 'string'")
end

--  
function M.ClientLabel(str)
	asserts.AssertClientLabel(str)
	return str
end

function asserts.AssertAZ(str)
	assert(str)
	assert(type(str) == "string", "Expected AZ to be of type 'string'")
end

--  
function M.AZ(str)
	asserts.AssertAZ(str)
	return str
end

function asserts.AssertCertificateFingerprint(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateFingerprint to be of type 'string'")
end

--  
function M.CertificateFingerprint(str)
	asserts.AssertCertificateFingerprint(str)
	return str
end

function asserts.AssertCloudHsmObjectState(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudHsmObjectState to be of type 'string'")
end

--  
function M.CloudHsmObjectState(str)
	asserts.AssertCloudHsmObjectState(str)
	return str
end

function asserts.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

-- <p>Specifies the type of subscription for the HSM.</p> <ul> <li><b>PRODUCTION</b> - The HSM is being used in a production environment.</li> <li><b>TRIAL</b> - The HSM is being used in a product trial.</li> </ul>
function M.SubscriptionType(str)
	asserts.AssertSubscriptionType(str)
	return str
end

function asserts.AssertIamRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamRoleArn to be of type 'string'")
end

--  
function M.IamRoleArn(str)
	asserts.AssertIamRoleArn(str)
	return str
end

function asserts.AssertClientArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientArn to be of type 'string'")
end

--  
function M.ClientArn(str)
	asserts.AssertClientArn(str)
	return str
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertHsmList(list)
	assert(list)
	assert(type(list) == "table", "Expected HsmList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHsmArn(v)
	end
end

-- <p>Contains a list of ARNs that identify the HSMs.</p>
-- List of HsmArn objects
function M.HsmList(list)
	asserts.AssertHsmList(list)
	return list
end

function asserts.AssertHapgList(list)
	assert(list)
	assert(type(list) == "table", "Expected HapgList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHapgArn(v)
	end
end

--  
-- List of HapgArn objects
function M.HapgList(list)
	asserts.AssertHapgList(list)
	return list
end

function asserts.AssertPartitionSerialList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionSerialList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPartitionSerial(v)
	end
end

--  
-- List of PartitionSerial objects
function M.PartitionSerialList(list)
	asserts.AssertPartitionSerialList(list)
	return list
end

function asserts.AssertClientList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClientList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClientArn(v)
	end
end

--  
-- List of ClientArn objects
function M.ClientList(list)
	asserts.AssertClientList(list)
	return list
end

function asserts.AssertPartitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPartitionArn(v)
	end
end

--  
-- List of PartitionArn objects
function M.PartitionList(list)
	asserts.AssertPartitionList(list)
	return list
end

function asserts.AssertAZList(list)
	assert(list)
	assert(type(list) == "table", "Expected AZList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAZ(v)
	end
end

--  
-- List of AZ objects
function M.AZList(list)
	asserts.AssertAZList(list)
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
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "cloudhsm.amazonaws.com"
		end
	end
	local ss = { "cloudhsm" }
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call CreateHsm asynchronously, invoking a callback when done
-- @param CreateHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHsmAsync(CreateHsmRequest, cb)
	assert(CreateHsmRequest, "You must provide a CreateHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHsmRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHsm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHsmRequest
-- @return response
-- @return error_message
function M.CreateHsmSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHapgs asynchronously, invoking a callback when done
-- @param ListHapgsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHapgsAsync(ListHapgsRequest, cb)
	assert(ListHapgsRequest, "You must provide a ListHapgsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListHapgs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHapgsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHapgs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHapgsRequest
-- @return response
-- @return error_message
function M.ListHapgsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHapgsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyHapg asynchronously, invoking a callback when done
-- @param ModifyHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyHapgAsync(ModifyHapgRequest, cb)
	assert(ModifyHapgRequest, "You must provide a ModifyHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyHapgRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyHapg synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyHapgRequest
-- @return response
-- @return error_message
function M.ModifyHapgSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyHapgAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHapg asynchronously, invoking a callback when done
-- @param DescribeHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHapgAsync(DescribeHapgRequest, cb)
	assert(DescribeHapgRequest, "You must provide a DescribeHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHapgRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHapg synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHapgRequest
-- @return response
-- @return error_message
function M.DescribeHapgSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHapgAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHsm asynchronously, invoking a callback when done
-- @param DeleteHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHsmAsync(DeleteHsmRequest, cb)
	assert(DeleteHsmRequest, "You must provide a DeleteHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteHsmRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHsm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHsmRequest
-- @return response
-- @return error_message
function M.DeleteHsmSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHsms asynchronously, invoking a callback when done
-- @param ListHsmsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHsmsAsync(ListHsmsRequest, cb)
	assert(ListHsmsRequest, "You must provide a ListHsmsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListHsms",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHsmsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHsms synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHsmsRequest
-- @return response
-- @return error_message
function M.ListHsmsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHsmsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToResourceRequest
-- @return response
-- @return error_message
function M.AddTagsToResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLunaClient asynchronously, invoking a callback when done
-- @param DeleteLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLunaClientAsync(DeleteLunaClientRequest, cb)
	assert(DeleteLunaClientRequest, "You must provide a DeleteLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLunaClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLunaClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLunaClientRequest
-- @return response
-- @return error_message
function M.DeleteLunaClientSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLunaClientAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLunaClient asynchronously, invoking a callback when done
-- @param CreateLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLunaClientAsync(CreateLunaClientRequest, cb)
	assert(CreateLunaClientRequest, "You must provide a CreateLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLunaClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLunaClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLunaClientRequest
-- @return response
-- @return error_message
function M.CreateLunaClientSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLunaClientAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHapg asynchronously, invoking a callback when done
-- @param CreateHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHapgAsync(CreateHapgRequest, cb)
	assert(CreateHapgRequest, "You must provide a CreateHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHapgRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHapg synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHapgRequest
-- @return response
-- @return error_message
function M.CreateHapgSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHapgAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromResourceRequest
-- @return response
-- @return error_message
function M.RemoveTagsFromResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHapg asynchronously, invoking a callback when done
-- @param DeleteHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHapgAsync(DeleteHapgRequest, cb)
	assert(DeleteHapgRequest, "You must provide a DeleteHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteHapgRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHapg synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHapgRequest
-- @return response
-- @return error_message
function M.DeleteHapgSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHapgAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHsm asynchronously, invoking a callback when done
-- @param DescribeHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHsmAsync(DescribeHsmRequest, cb)
	assert(DescribeHsmRequest, "You must provide a DescribeHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHsmRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHsm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHsmRequest
-- @return response
-- @return error_message
function M.DescribeHsmSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHsmAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConfig asynchronously, invoking a callback when done
-- @param GetConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetConfigAsync(GetConfigRequest, cb)
	assert(GetConfigRequest, "You must provide a GetConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.GetConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConfigRequest
-- @return response
-- @return error_message
function M.GetConfigSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConfigAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAvailableZones asynchronously, invoking a callback when done
-- @param ListAvailableZonesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAvailableZonesAsync(ListAvailableZonesRequest, cb)
	assert(ListAvailableZonesRequest, "You must provide a ListAvailableZonesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListAvailableZones",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAvailableZonesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAvailableZones synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAvailableZonesRequest
-- @return response
-- @return error_message
function M.ListAvailableZonesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAvailableZonesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyHsm asynchronously, invoking a callback when done
-- @param ModifyHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyHsmAsync(ModifyHsmRequest, cb)
	assert(ModifyHsmRequest, "You must provide a ModifyHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyHsmRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyHsm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyHsmRequest
-- @return response
-- @return error_message
function M.ModifyHsmSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyHsmAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_message
function M.ListTagsForResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyLunaClient asynchronously, invoking a callback when done
-- @param ModifyLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyLunaClientAsync(ModifyLunaClientRequest, cb)
	assert(ModifyLunaClientRequest, "You must provide a ModifyLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyLunaClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyLunaClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyLunaClientRequest
-- @return response
-- @return error_message
function M.ModifyLunaClientSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyLunaClientAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLunaClient asynchronously, invoking a callback when done
-- @param DescribeLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLunaClientAsync(DescribeLunaClientRequest, cb)
	assert(DescribeLunaClientRequest, "You must provide a DescribeLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLunaClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLunaClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLunaClientRequest
-- @return response
-- @return error_message
function M.DescribeLunaClientSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLunaClientAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLunaClients asynchronously, invoking a callback when done
-- @param ListLunaClientsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListLunaClientsAsync(ListLunaClientsRequest, cb)
	assert(ListLunaClientsRequest, "You must provide a ListLunaClientsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListLunaClients",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListLunaClientsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLunaClients synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLunaClientsRequest
-- @return response
-- @return error_message
function M.ListLunaClientsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLunaClientsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
