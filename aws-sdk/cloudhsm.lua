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

local InvalidRequestException_keys = { nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- &lt;p&gt;Indicates that one or more of the request parameters are not valid.&lt;/p&gt;
function M.InvalidRequestException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
	}
	M.AssertInvalidRequestException(t)
	return t
end

local RemoveTagsFromResourceRequest_keys = { "ResourceArn" = true, "TagKeyList" = true, nil }

function M.AssertRemoveTagsFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeyList"], "Expected key TagKeyList to exist in table")
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	if struct["TagKeyList"] then M.AssertTagKeyList(struct["TagKeyList"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceRequest_keys[k], "RemoveTagsFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceRequest
--  
-- @param ResourceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS CloudHSM resource.&lt;/p&gt;
-- @param TagKeyList [TagKeyList] &lt;p&gt;The tag key or keys to remove.&lt;/p&gt; &lt;p&gt;Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use &lt;a&gt;AddTagsToResource&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: ResourceArn
-- Required parameter: TagKeyList
function M.RemoveTagsFromResourceRequest(ResourceArn, TagKeyList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["TagKeyList"] = TagKeyList,
	}
	M.AssertRemoveTagsFromResourceRequest(t)
	return t
end

local ListHsmsResponse_keys = { "HsmList" = true, "NextToken" = true, nil }

function M.AssertListHsmsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHsmsResponse to be of type 'table'")
	if struct["HsmList"] then M.AssertHsmList(struct["HsmList"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHsmsResponse_keys[k], "ListHsmsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHsmsResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;ListHsms&lt;/a&gt; operation.&lt;/p&gt;
-- @param HsmList [HsmList] &lt;p&gt;The list of ARNs that identify the HSMs.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;If not null, more results are available. Pass this value to &lt;a&gt;ListHsms&lt;/a&gt; to retrieve the next set of items.&lt;/p&gt;
function M.ListHsmsResponse(HsmList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHsmsResponse")
	local t = { 
		["HsmList"] = HsmList,
		["NextToken"] = NextToken,
	}
	M.AssertListHsmsResponse(t)
	return t
end

local ListAvailableZonesRequest_keys = { nil }

function M.AssertListAvailableZonesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAvailableZonesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ListAvailableZonesRequest_keys[k], "ListAvailableZonesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAvailableZonesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;ListAvailableZones&lt;/a&gt; action.&lt;/p&gt;
function M.ListAvailableZonesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAvailableZonesRequest")
	local t = { 
	}
	M.AssertListAvailableZonesRequest(t)
	return t
end

local CreateLunaClientResponse_keys = { "ClientArn" = true, nil }

function M.AssertCreateLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLunaClientResponse to be of type 'table'")
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateLunaClientResponse_keys[k], "CreateLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLunaClientResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;CreateLunaClient&lt;/a&gt; action.&lt;/p&gt;
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client.&lt;/p&gt;
function M.CreateLunaClientResponse(ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLunaClientResponse")
	local t = { 
		["ClientArn"] = ClientArn,
	}
	M.AssertCreateLunaClientResponse(t)
	return t
end

local CreateHsmResponse_keys = { "HsmArn" = true, nil }

function M.AssertCreateHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmResponse to be of type 'table'")
	if struct["HsmArn"] then M.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateHsmResponse_keys[k], "CreateHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;CreateHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param HsmArn [HsmArn] &lt;p&gt;The ARN of the HSM.&lt;/p&gt;
function M.CreateHsmResponse(HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmResponse")
	local t = { 
		["HsmArn"] = HsmArn,
	}
	M.AssertCreateHsmResponse(t)
	return t
end

local AddTagsToResourceRequest_keys = { "ResourceArn" = true, "TagList" = true, nil }

function M.AssertAddTagsToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceRequest_keys[k], "AddTagsToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceRequest
--  
-- @param ResourceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.&lt;/p&gt;
-- @param TagList [TagList] &lt;p&gt;One or more tags.&lt;/p&gt;
-- Required parameter: ResourceArn
-- Required parameter: TagList
function M.AddTagsToResourceRequest(ResourceArn, TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["TagList"] = TagList,
	}
	M.AssertAddTagsToResourceRequest(t)
	return t
end

local ListLunaClientsRequest_keys = { "NextToken" = true, nil }

function M.AssertListLunaClientsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLunaClientsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListLunaClientsRequest_keys[k], "ListLunaClientsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLunaClientsRequest
--  
-- @param NextToken [PaginationToken] &lt;p&gt;The &lt;i&gt;NextToken&lt;/i&gt; value from a previous call to &lt;a&gt;ListLunaClients&lt;/a&gt;. Pass null if this is the first call.&lt;/p&gt;
function M.ListLunaClientsRequest(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLunaClientsRequest")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListLunaClientsRequest(t)
	return t
end

local RemoveTagsFromResourceResponse_keys = { "Status" = true, nil }

function M.AssertRemoveTagsFromResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceResponse_keys[k], "RemoveTagsFromResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResponse
--  
-- @param Status [String] &lt;p&gt;The status of the operation.&lt;/p&gt;
-- Required parameter: Status
function M.RemoveTagsFromResourceResponse(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceResponse")
	local t = { 
		["Status"] = Status,
	}
	M.AssertRemoveTagsFromResourceResponse(t)
	return t
end

local ListTagsForResourceRequest_keys = { "ResourceArn" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then M.AssertString(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param ResourceArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS CloudHSM resource.&lt;/p&gt;
-- Required parameter: ResourceArn
function M.ListTagsForResourceRequest(ResourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local DeleteHsmRequest_keys = { "HsmArn" = true, nil }

function M.AssertDeleteHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmRequest to be of type 'table'")
	assert(struct["HsmArn"], "Expected key HsmArn to exist in table")
	if struct["HsmArn"] then M.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHsmRequest_keys[k], "DeleteHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DeleteHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param HsmArn [HsmArn] &lt;p&gt;The ARN of the HSM to delete.&lt;/p&gt;
-- Required parameter: HsmArn
function M.DeleteHsmRequest(HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmRequest")
	local t = { 
		["HsmArn"] = HsmArn,
	}
	M.AssertDeleteHsmRequest(t)
	return t
end

local ModifyHsmResponse_keys = { "HsmArn" = true, nil }

function M.AssertModifyHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHsmResponse to be of type 'table'")
	if struct["HsmArn"] then M.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyHsmResponse_keys[k], "ModifyHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHsmResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;ModifyHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param HsmArn [HsmArn] &lt;p&gt;The ARN of the HSM.&lt;/p&gt;
function M.ModifyHsmResponse(HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHsmResponse")
	local t = { 
		["HsmArn"] = HsmArn,
	}
	M.AssertModifyHsmResponse(t)
	return t
end

local DescribeHapgResponse_keys = { "PartitionSerialList" = true, "HsmsPendingRegistration" = true, "HsmsLastActionFailed" = true, "HsmsPendingDeletion" = true, "LastModifiedTimestamp" = true, "Label" = true, "HapgSerial" = true, "State" = true, "HapgArn" = true, nil }

function M.AssertDescribeHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHapgResponse to be of type 'table'")
	if struct["PartitionSerialList"] then M.AssertPartitionSerialList(struct["PartitionSerialList"]) end
	if struct["HsmsPendingRegistration"] then M.AssertHsmList(struct["HsmsPendingRegistration"]) end
	if struct["HsmsLastActionFailed"] then M.AssertHsmList(struct["HsmsLastActionFailed"]) end
	if struct["HsmsPendingDeletion"] then M.AssertHsmList(struct["HsmsPendingDeletion"]) end
	if struct["LastModifiedTimestamp"] then M.AssertTimestamp(struct["LastModifiedTimestamp"]) end
	if struct["Label"] then M.AssertLabel(struct["Label"]) end
	if struct["HapgSerial"] then M.AssertString(struct["HapgSerial"]) end
	if struct["State"] then M.AssertCloudHsmObjectState(struct["State"]) end
	if struct["HapgArn"] then M.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHapgResponse_keys[k], "DescribeHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHapgResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;DescribeHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param PartitionSerialList [PartitionSerialList] &lt;p&gt;The list of partition serial numbers that belong to the high-availability partition group.&lt;/p&gt;
-- @param HsmsPendingRegistration [HsmList] &lt;p&gt;Contains the output of the &lt;a&gt;DescribeHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param HsmsLastActionFailed [HsmList] &lt;p&gt;Contains the output of the &lt;a&gt;DescribeHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param HsmsPendingDeletion [HsmList] &lt;p&gt;Contains the output of the &lt;a&gt;DescribeHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param LastModifiedTimestamp [Timestamp] &lt;p&gt;The date and time the high-availability partition group was last modified.&lt;/p&gt;
-- @param Label [Label] &lt;p&gt;The label for the high-availability partition group.&lt;/p&gt;
-- @param HapgSerial [String] &lt;p&gt;The serial number of the high-availability partition group.&lt;/p&gt;
-- @param State [CloudHsmObjectState] &lt;p&gt;The state of the high-availability partition group.&lt;/p&gt;
-- @param HapgArn [HapgArn] &lt;p&gt;The ARN of the high-availability partition group.&lt;/p&gt;
function M.DescribeHapgResponse(PartitionSerialList, HsmsPendingRegistration, HsmsLastActionFailed, HsmsPendingDeletion, LastModifiedTimestamp, Label, HapgSerial, State, HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHapgResponse")
	local t = { 
		["PartitionSerialList"] = PartitionSerialList,
		["HsmsPendingRegistration"] = HsmsPendingRegistration,
		["HsmsLastActionFailed"] = HsmsLastActionFailed,
		["HsmsPendingDeletion"] = HsmsPendingDeletion,
		["LastModifiedTimestamp"] = LastModifiedTimestamp,
		["Label"] = Label,
		["HapgSerial"] = HapgSerial,
		["State"] = State,
		["HapgArn"] = HapgArn,
	}
	M.AssertDescribeHapgResponse(t)
	return t
end

local ListTagsForResourceResponse_keys = { "TagList" = true, nil }

function M.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResponse_keys[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param TagList [TagList] &lt;p&gt;One or more tags.&lt;/p&gt;
-- Required parameter: TagList
function M.ListTagsForResourceResponse(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertListTagsForResourceResponse(t)
	return t
end

local ListHapgsRequest_keys = { "NextToken" = true, nil }

function M.AssertListHapgsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHapgsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHapgsRequest_keys[k], "ListHapgsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHapgsRequest
--  
-- @param NextToken [PaginationToken] &lt;p&gt;The &lt;i&gt;NextToken&lt;/i&gt; value from a previous call to &lt;a&gt;ListHapgs&lt;/a&gt;. Pass null if this is the first call.&lt;/p&gt;
function M.ListHapgsRequest(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHapgsRequest")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListHapgsRequest(t)
	return t
end

local GetConfigRequest_keys = { "HapgList" = true, "ClientVersion" = true, "ClientArn" = true, nil }

function M.AssertGetConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConfigRequest to be of type 'table'")
	assert(struct["ClientArn"], "Expected key ClientArn to exist in table")
	assert(struct["ClientVersion"], "Expected key ClientVersion to exist in table")
	assert(struct["HapgList"], "Expected key HapgList to exist in table")
	if struct["HapgList"] then M.AssertHapgList(struct["HapgList"]) end
	if struct["ClientVersion"] then M.AssertClientVersion(struct["ClientVersion"]) end
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(GetConfigRequest_keys[k], "GetConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConfigRequest
--  
-- @param HapgList [HapgList] &lt;p&gt;A list of ARNs that identify the high-availability partition groups that are associated with the client.&lt;/p&gt;
-- @param ClientVersion [ClientVersion] &lt;p&gt;The client version.&lt;/p&gt;
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client.&lt;/p&gt;
-- Required parameter: ClientArn
-- Required parameter: ClientVersion
-- Required parameter: HapgList
function M.GetConfigRequest(HapgList, ClientVersion, ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConfigRequest")
	local t = { 
		["HapgList"] = HapgList,
		["ClientVersion"] = ClientVersion,
		["ClientArn"] = ClientArn,
	}
	M.AssertGetConfigRequest(t)
	return t
end

local CreateHapgRequest_keys = { "Label" = true, nil }

function M.AssertCreateHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHapgRequest to be of type 'table'")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["Label"] then M.AssertLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(CreateHapgRequest_keys[k], "CreateHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHapgRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;CreateHapgRequest&lt;/a&gt; action.&lt;/p&gt;
-- @param Label [Label] &lt;p&gt;The label of the new high-availability partition group.&lt;/p&gt;
-- Required parameter: Label
function M.CreateHapgRequest(Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHapgRequest")
	local t = { 
		["Label"] = Label,
	}
	M.AssertCreateHapgRequest(t)
	return t
end

local DescribeHapgRequest_keys = { "HapgArn" = true, nil }

function M.AssertDescribeHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHapgRequest to be of type 'table'")
	assert(struct["HapgArn"], "Expected key HapgArn to exist in table")
	if struct["HapgArn"] then M.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHapgRequest_keys[k], "DescribeHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHapgRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DescribeHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param HapgArn [HapgArn] &lt;p&gt;The ARN of the high-availability partition group to describe.&lt;/p&gt;
-- Required parameter: HapgArn
function M.DescribeHapgRequest(HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHapgRequest")
	local t = { 
		["HapgArn"] = HapgArn,
	}
	M.AssertDescribeHapgRequest(t)
	return t
end

local ListHapgsResponse_keys = { "HapgList" = true, "NextToken" = true, nil }

function M.AssertListHapgsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHapgsResponse to be of type 'table'")
	assert(struct["HapgList"], "Expected key HapgList to exist in table")
	if struct["HapgList"] then M.AssertHapgList(struct["HapgList"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHapgsResponse_keys[k], "ListHapgsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHapgsResponse
--  
-- @param HapgList [HapgList] &lt;p&gt;The list of high-availability partition groups.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;If not null, more results are available. Pass this value to &lt;a&gt;ListHapgs&lt;/a&gt; to retrieve the next set of items.&lt;/p&gt;
-- Required parameter: HapgList
function M.ListHapgsResponse(HapgList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHapgsResponse")
	local t = { 
		["HapgList"] = HapgList,
		["NextToken"] = NextToken,
	}
	M.AssertListHapgsResponse(t)
	return t
end

local DescribeHsmRequest_keys = { "HsmSerialNumber" = true, "HsmArn" = true, nil }

function M.AssertDescribeHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmRequest to be of type 'table'")
	if struct["HsmSerialNumber"] then M.AssertHsmSerialNumber(struct["HsmSerialNumber"]) end
	if struct["HsmArn"] then M.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHsmRequest_keys[k], "DescribeHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DescribeHsm&lt;/a&gt; operation. &lt;/p&gt;
-- @param HsmSerialNumber [HsmSerialNumber] &lt;p&gt;The serial number of the HSM. Either the &lt;i&gt;HsmArn&lt;/i&gt; or the &lt;i&gt;HsmSerialNumber&lt;/i&gt; parameter must be specified.&lt;/p&gt;
-- @param HsmArn [HsmArn] &lt;p&gt;The ARN of the HSM. Either the &lt;i&gt;HsmArn&lt;/i&gt; or the &lt;i&gt;SerialNumber&lt;/i&gt; parameter must be specified.&lt;/p&gt;
function M.DescribeHsmRequest(HsmSerialNumber, HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmRequest")
	local t = { 
		["HsmSerialNumber"] = HsmSerialNumber,
		["HsmArn"] = HsmArn,
	}
	M.AssertDescribeHsmRequest(t)
	return t
end

local DescribeLunaClientResponse_keys = { "LastModifiedTimestamp" = true, "Label" = true, "CertificateFingerprint" = true, "Certificate" = true, "ClientArn" = true, nil }

function M.AssertDescribeLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLunaClientResponse to be of type 'table'")
	if struct["LastModifiedTimestamp"] then M.AssertTimestamp(struct["LastModifiedTimestamp"]) end
	if struct["Label"] then M.AssertLabel(struct["Label"]) end
	if struct["CertificateFingerprint"] then M.AssertCertificateFingerprint(struct["CertificateFingerprint"]) end
	if struct["Certificate"] then M.AssertCertificate(struct["Certificate"]) end
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLunaClientResponse_keys[k], "DescribeLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLunaClientResponse
--  
-- @param LastModifiedTimestamp [Timestamp] &lt;p&gt;The date and time the client was last modified.&lt;/p&gt;
-- @param Label [Label] &lt;p&gt;The label of the client.&lt;/p&gt;
-- @param CertificateFingerprint [CertificateFingerprint] &lt;p&gt;The certificate fingerprint.&lt;/p&gt;
-- @param Certificate [Certificate] &lt;p&gt;The certificate installed on the HSMs used by this client.&lt;/p&gt;
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client.&lt;/p&gt;
function M.DescribeLunaClientResponse(LastModifiedTimestamp, Label, CertificateFingerprint, Certificate, ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLunaClientResponse")
	local t = { 
		["LastModifiedTimestamp"] = LastModifiedTimestamp,
		["Label"] = Label,
		["CertificateFingerprint"] = CertificateFingerprint,
		["Certificate"] = Certificate,
		["ClientArn"] = ClientArn,
	}
	M.AssertDescribeLunaClientResponse(t)
	return t
end

local DeleteLunaClientRequest_keys = { "ClientArn" = true, nil }

function M.AssertDeleteLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLunaClientRequest to be of type 'table'")
	assert(struct["ClientArn"], "Expected key ClientArn to exist in table")
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLunaClientRequest_keys[k], "DeleteLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLunaClientRequest
--  
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client to delete.&lt;/p&gt;
-- Required parameter: ClientArn
function M.DeleteLunaClientRequest(ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLunaClientRequest")
	local t = { 
		["ClientArn"] = ClientArn,
	}
	M.AssertDeleteLunaClientRequest(t)
	return t
end

local CloudHsmServiceException_keys = { "message" = true, "retryable" = true, nil }

function M.AssertCloudHsmServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudHsmServiceException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["retryable"] then M.AssertBoolean(struct["retryable"]) end
	for k,_ in pairs(struct) do
		assert(CloudHsmServiceException_keys[k], "CloudHsmServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudHsmServiceException
-- &lt;p&gt;Indicates that an exception occurred in the AWS CloudHSM service.&lt;/p&gt;
-- @param message [String] &lt;p&gt;Additional information about the error.&lt;/p&gt;
-- @param retryable [Boolean] &lt;p&gt;Indicates if the action can be retried.&lt;/p&gt;
function M.CloudHsmServiceException(message, retryable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudHsmServiceException")
	local t = { 
		["message"] = message,
		["retryable"] = retryable,
	}
	M.AssertCloudHsmServiceException(t)
	return t
end

local ModifyHapgResponse_keys = { "HapgArn" = true, nil }

function M.AssertModifyHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHapgResponse to be of type 'table'")
	if struct["HapgArn"] then M.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyHapgResponse_keys[k], "ModifyHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHapgResponse
--  
-- @param HapgArn [HapgArn] &lt;p&gt;The ARN of the high-availability partition group.&lt;/p&gt;
function M.ModifyHapgResponse(HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHapgResponse")
	local t = { 
		["HapgArn"] = HapgArn,
	}
	M.AssertModifyHapgResponse(t)
	return t
end

local DeleteLunaClientResponse_keys = { "Status" = true, nil }

function M.AssertDeleteLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLunaClientResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLunaClientResponse_keys[k], "DeleteLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLunaClientResponse
--  
-- @param Status [String] &lt;p&gt;The status of the action.&lt;/p&gt;
-- Required parameter: Status
function M.DeleteLunaClientResponse(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLunaClientResponse")
	local t = { 
		["Status"] = Status,
	}
	M.AssertDeleteLunaClientResponse(t)
	return t
end

local ListLunaClientsResponse_keys = { "NextToken" = true, "ClientList" = true, nil }

function M.AssertListLunaClientsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLunaClientsResponse to be of type 'table'")
	assert(struct["ClientList"], "Expected key ClientList to exist in table")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["ClientList"] then M.AssertClientList(struct["ClientList"]) end
	for k,_ in pairs(struct) do
		assert(ListLunaClientsResponse_keys[k], "ListLunaClientsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLunaClientsResponse
--  
-- @param NextToken [PaginationToken] &lt;p&gt;If not null, more results are available. Pass this to &lt;a&gt;ListLunaClients&lt;/a&gt; to retrieve the next set of items.&lt;/p&gt;
-- @param ClientList [ClientList] &lt;p&gt;The list of clients.&lt;/p&gt;
-- Required parameter: ClientList
function M.ListLunaClientsResponse(NextToken, ClientList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLunaClientsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["ClientList"] = ClientList,
	}
	M.AssertListLunaClientsResponse(t)
	return t
end

local ModifyHapgRequest_keys = { "HapgArn" = true, "PartitionSerialList" = true, "Label" = true, nil }

function M.AssertModifyHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHapgRequest to be of type 'table'")
	assert(struct["HapgArn"], "Expected key HapgArn to exist in table")
	if struct["HapgArn"] then M.AssertHapgArn(struct["HapgArn"]) end
	if struct["PartitionSerialList"] then M.AssertPartitionSerialList(struct["PartitionSerialList"]) end
	if struct["Label"] then M.AssertLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(ModifyHapgRequest_keys[k], "ModifyHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHapgRequest
--  
-- @param HapgArn [HapgArn] &lt;p&gt;The ARN of the high-availability partition group to modify.&lt;/p&gt;
-- @param PartitionSerialList [PartitionSerialList] &lt;p&gt;The list of partition serial numbers to make members of the high-availability partition group.&lt;/p&gt;
-- @param Label [Label] &lt;p&gt;The new label for the high-availability partition group.&lt;/p&gt;
-- Required parameter: HapgArn
function M.ModifyHapgRequest(HapgArn, PartitionSerialList, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHapgRequest")
	local t = { 
		["HapgArn"] = HapgArn,
		["PartitionSerialList"] = PartitionSerialList,
		["Label"] = Label,
	}
	M.AssertModifyHapgRequest(t)
	return t
end

local ModifyLunaClientResponse_keys = { "ClientArn" = true, nil }

function M.AssertModifyLunaClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLunaClientResponse to be of type 'table'")
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyLunaClientResponse_keys[k], "ModifyLunaClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLunaClientResponse
--  
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client.&lt;/p&gt;
function M.ModifyLunaClientResponse(ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyLunaClientResponse")
	local t = { 
		["ClientArn"] = ClientArn,
	}
	M.AssertModifyLunaClientResponse(t)
	return t
end

local AddTagsToResourceResponse_keys = { "Status" = true, nil }

function M.AssertAddTagsToResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceResponse_keys[k], "AddTagsToResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResponse
--  
-- @param Status [String] &lt;p&gt;The status of the operation.&lt;/p&gt;
-- Required parameter: Status
function M.AddTagsToResourceResponse(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceResponse")
	local t = { 
		["Status"] = Status,
	}
	M.AssertAddTagsToResourceResponse(t)
	return t
end

local GetConfigResponse_keys = { "ConfigType" = true, "ConfigCred" = true, "ConfigFile" = true, nil }

function M.AssertGetConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConfigResponse to be of type 'table'")
	if struct["ConfigType"] then M.AssertString(struct["ConfigType"]) end
	if struct["ConfigCred"] then M.AssertString(struct["ConfigCred"]) end
	if struct["ConfigFile"] then M.AssertString(struct["ConfigFile"]) end
	for k,_ in pairs(struct) do
		assert(GetConfigResponse_keys[k], "GetConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConfigResponse
--  
-- @param ConfigType [String] &lt;p&gt;The type of credentials.&lt;/p&gt;
-- @param ConfigCred [String] &lt;p&gt;The certificate file containing the server.pem files of the HSMs.&lt;/p&gt;
-- @param ConfigFile [String] &lt;p&gt;The chrystoki.conf configuration file.&lt;/p&gt;
function M.GetConfigResponse(ConfigType, ConfigCred, ConfigFile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConfigResponse")
	local t = { 
		["ConfigType"] = ConfigType,
		["ConfigCred"] = ConfigCred,
		["ConfigFile"] = ConfigFile,
	}
	M.AssertGetConfigResponse(t)
	return t
end

local DeleteHapgRequest_keys = { "HapgArn" = true, nil }

function M.AssertDeleteHapgRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHapgRequest to be of type 'table'")
	assert(struct["HapgArn"], "Expected key HapgArn to exist in table")
	if struct["HapgArn"] then M.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHapgRequest_keys[k], "DeleteHapgRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHapgRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DeleteHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param HapgArn [HapgArn] &lt;p&gt;The ARN of the high-availability partition group to delete.&lt;/p&gt;
-- Required parameter: HapgArn
function M.DeleteHapgRequest(HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHapgRequest")
	local t = { 
		["HapgArn"] = HapgArn,
	}
	M.AssertDeleteHapgRequest(t)
	return t
end

local DeleteHapgResponse_keys = { "Status" = true, nil }

function M.AssertDeleteHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHapgResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHapgResponse_keys[k], "DeleteHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHapgResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;DeleteHapg&lt;/a&gt; action.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the action.&lt;/p&gt;
-- Required parameter: Status
function M.DeleteHapgResponse(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHapgResponse")
	local t = { 
		["Status"] = Status,
	}
	M.AssertDeleteHapgResponse(t)
	return t
end

local ListHsmsRequest_keys = { "NextToken" = true, nil }

function M.AssertListHsmsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHsmsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListHsmsRequest_keys[k], "ListHsmsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHsmsRequest
--  
-- @param NextToken [PaginationToken] &lt;p&gt;The &lt;i&gt;NextToken&lt;/i&gt; value from a previous call to &lt;a&gt;ListHsms&lt;/a&gt;. Pass null if this is the first call.&lt;/p&gt;
function M.ListHsmsRequest(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHsmsRequest")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListHsmsRequest(t)
	return t
end

local ModifyLunaClientRequest_keys = { "Certificate" = true, "ClientArn" = true, nil }

function M.AssertModifyLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyLunaClientRequest to be of type 'table'")
	assert(struct["ClientArn"], "Expected key ClientArn to exist in table")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	if struct["Certificate"] then M.AssertCertificate(struct["Certificate"]) end
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyLunaClientRequest_keys[k], "ModifyLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyLunaClientRequest
--  
-- @param Certificate [Certificate] &lt;p&gt;The new certificate for the client.&lt;/p&gt;
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client.&lt;/p&gt;
-- Required parameter: ClientArn
-- Required parameter: Certificate
function M.ModifyLunaClientRequest(Certificate, ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyLunaClientRequest")
	local t = { 
		["Certificate"] = Certificate,
		["ClientArn"] = ClientArn,
	}
	M.AssertModifyLunaClientRequest(t)
	return t
end

local DescribeLunaClientRequest_keys = { "CertificateFingerprint" = true, "ClientArn" = true, nil }

function M.AssertDescribeLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLunaClientRequest to be of type 'table'")
	if struct["CertificateFingerprint"] then M.AssertCertificateFingerprint(struct["CertificateFingerprint"]) end
	if struct["ClientArn"] then M.AssertClientArn(struct["ClientArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLunaClientRequest_keys[k], "DescribeLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLunaClientRequest
--  
-- @param CertificateFingerprint [CertificateFingerprint] &lt;p&gt;The certificate fingerprint.&lt;/p&gt;
-- @param ClientArn [ClientArn] &lt;p&gt;The ARN of the client.&lt;/p&gt;
function M.DescribeLunaClientRequest(CertificateFingerprint, ClientArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLunaClientRequest")
	local t = { 
		["CertificateFingerprint"] = CertificateFingerprint,
		["ClientArn"] = ClientArn,
	}
	M.AssertDescribeLunaClientRequest(t)
	return t
end

local CreateHapgResponse_keys = { "HapgArn" = true, nil }

function M.AssertCreateHapgResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHapgResponse to be of type 'table'")
	if struct["HapgArn"] then M.AssertHapgArn(struct["HapgArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateHapgResponse_keys[k], "CreateHapgResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHapgResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;CreateHAPartitionGroup&lt;/a&gt; action.&lt;/p&gt;
-- @param HapgArn [HapgArn] &lt;p&gt;The ARN of the high-availability partition group.&lt;/p&gt;
function M.CreateHapgResponse(HapgArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHapgResponse")
	local t = { 
		["HapgArn"] = HapgArn,
	}
	M.AssertCreateHapgResponse(t)
	return t
end

local ModifyHsmRequest_keys = { "IamRoleArn" = true, "EniIp" = true, "ExternalId" = true, "SubnetId" = true, "SyslogIp" = true, "HsmArn" = true, nil }

function M.AssertModifyHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyHsmRequest to be of type 'table'")
	assert(struct["HsmArn"], "Expected key HsmArn to exist in table")
	if struct["IamRoleArn"] then M.AssertIamRoleArn(struct["IamRoleArn"]) end
	if struct["EniIp"] then M.AssertIpAddress(struct["EniIp"]) end
	if struct["ExternalId"] then M.AssertExternalId(struct["ExternalId"]) end
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["SyslogIp"] then M.AssertIpAddress(struct["SyslogIp"]) end
	if struct["HsmArn"] then M.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyHsmRequest_keys[k], "ModifyHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyHsmRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;ModifyHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param IamRoleArn [IamRoleArn] &lt;p&gt;The new IAM role ARN.&lt;/p&gt;
-- @param EniIp [IpAddress] &lt;p&gt;The new IP address for the elastic network interface (ENI) attached to the HSM.&lt;/p&gt; &lt;p&gt;If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.&lt;/p&gt;
-- @param ExternalId [ExternalId] &lt;p&gt;The new external ID.&lt;/p&gt;
-- @param SubnetId [SubnetId] &lt;p&gt;The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.&lt;/p&gt;
-- @param SyslogIp [IpAddress] &lt;p&gt;The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.&lt;/p&gt;
-- @param HsmArn [HsmArn] &lt;p&gt;The ARN of the HSM to modify.&lt;/p&gt;
-- Required parameter: HsmArn
function M.ModifyHsmRequest(IamRoleArn, EniIp, ExternalId, SubnetId, SyslogIp, HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyHsmRequest")
	local t = { 
		["IamRoleArn"] = IamRoleArn,
		["EniIp"] = EniIp,
		["ExternalId"] = ExternalId,
		["SubnetId"] = SubnetId,
		["SyslogIp"] = SyslogIp,
		["HsmArn"] = HsmArn,
	}
	M.AssertModifyHsmRequest(t)
	return t
end

local ListAvailableZonesResponse_keys = { "AZList" = true, nil }

function M.AssertListAvailableZonesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAvailableZonesResponse to be of type 'table'")
	if struct["AZList"] then M.AssertAZList(struct["AZList"]) end
	for k,_ in pairs(struct) do
		assert(ListAvailableZonesResponse_keys[k], "ListAvailableZonesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAvailableZonesResponse
--  
-- @param AZList [AZList] &lt;p&gt;The list of Availability Zones that have available AWS CloudHSM capacity.&lt;/p&gt;
function M.ListAvailableZonesResponse(AZList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAvailableZonesResponse")
	local t = { 
		["AZList"] = AZList,
	}
	M.AssertListAvailableZonesResponse(t)
	return t
end

local CreateHsmRequest_keys = { "SshKey" = true, "SubscriptionType" = true, "IamRoleArn" = true, "EniIp" = true, "ExternalId" = true, "ClientToken" = true, "SubnetId" = true, "SyslogIp" = true, nil }

function M.AssertCreateHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmRequest to be of type 'table'")
	assert(struct["SubnetId"], "Expected key SubnetId to exist in table")
	assert(struct["SshKey"], "Expected key SshKey to exist in table")
	assert(struct["IamRoleArn"], "Expected key IamRoleArn to exist in table")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	if struct["SshKey"] then M.AssertSshKey(struct["SshKey"]) end
	if struct["SubscriptionType"] then M.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["IamRoleArn"] then M.AssertIamRoleArn(struct["IamRoleArn"]) end
	if struct["EniIp"] then M.AssertIpAddress(struct["EniIp"]) end
	if struct["ExternalId"] then M.AssertExternalId(struct["ExternalId"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["SyslogIp"] then M.AssertIpAddress(struct["SyslogIp"]) end
	for k,_ in pairs(struct) do
		assert(CreateHsmRequest_keys[k], "CreateHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;CreateHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param SshKey [SshKey] &lt;p&gt;The SSH public key to install on the HSM.&lt;/p&gt;
-- @param SubscriptionType [SubscriptionType] &lt;p&gt;Contains the inputs for the &lt;a&gt;CreateHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param IamRoleArn [IamRoleArn] &lt;p&gt;The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.&lt;/p&gt;
-- @param EniIp [IpAddress] &lt;p&gt;The IP address to assign to the HSM's ENI.&lt;/p&gt; &lt;p&gt;If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.&lt;/p&gt;
-- @param ExternalId [ExternalId] &lt;p&gt;The external ID from &lt;b&gt;IamRoleArn&lt;/b&gt;, if present.&lt;/p&gt;
-- @param ClientToken [ClientToken] &lt;p&gt;A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.&lt;/p&gt;
-- @param SubnetId [SubnetId] &lt;p&gt;The identifier of the subnet in your VPC in which to place the HSM.&lt;/p&gt;
-- @param SyslogIp [IpAddress] &lt;p&gt;The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.&lt;/p&gt;
-- Required parameter: SubnetId
-- Required parameter: SshKey
-- Required parameter: IamRoleArn
-- Required parameter: SubscriptionType
function M.CreateHsmRequest(SshKey, SubscriptionType, IamRoleArn, EniIp, ExternalId, ClientToken, SubnetId, SyslogIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmRequest")
	local t = { 
		["SshKey"] = SshKey,
		["SubscriptionType"] = SubscriptionType,
		["IamRoleArn"] = IamRoleArn,
		["EniIp"] = EniIp,
		["ExternalId"] = ExternalId,
		["ClientToken"] = ClientToken,
		["SubnetId"] = SubnetId,
		["SyslogIp"] = SyslogIp,
	}
	M.AssertCreateHsmRequest(t)
	return t
end

local DeleteHsmResponse_keys = { "Status" = true, nil }

function M.AssertDeleteHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHsmResponse_keys[k], "DeleteHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;DeleteHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the operation.&lt;/p&gt;
-- Required parameter: Status
function M.DeleteHsmResponse(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmResponse")
	local t = { 
		["Status"] = Status,
	}
	M.AssertDeleteHsmResponse(t)
	return t
end

local CreateLunaClientRequest_keys = { "Certificate" = true, "Label" = true, nil }

function M.AssertCreateLunaClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLunaClientRequest to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	if struct["Certificate"] then M.AssertCertificate(struct["Certificate"]) end
	if struct["Label"] then M.AssertClientLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(CreateLunaClientRequest_keys[k], "CreateLunaClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLunaClientRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;CreateLunaClient&lt;/a&gt; action.&lt;/p&gt;
-- @param Certificate [Certificate] &lt;p&gt;The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.&lt;/p&gt;
-- @param Label [ClientLabel] &lt;p&gt;The label for the client.&lt;/p&gt;
-- Required parameter: Certificate
function M.CreateLunaClientRequest(Certificate, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLunaClientRequest")
	local t = { 
		["Certificate"] = Certificate,
		["Label"] = Label,
	}
	M.AssertCreateLunaClientRequest(t)
	return t
end

local DescribeHsmResponse_keys = { "Status" = true, "SubscriptionStartDate" = true, "AvailabilityZone" = true, "EniId" = true, "HsmType" = true, "SshPublicKey" = true, "SubscriptionType" = true, "SerialNumber" = true, "IamRoleArn" = true, "SubscriptionEndDate" = true, "EniIp" = true, "SoftwareVersion" = true, "VpcId" = true, "ServerCertUri" = true, "SubnetId" = true, "SshKeyLastUpdated" = true, "Partitions" = true, "ServerCertLastUpdated" = true, "StatusDetails" = true, "VendorName" = true, "HsmArn" = true, nil }

function M.AssertDescribeHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmResponse to be of type 'table'")
	if struct["Status"] then M.AssertHsmStatus(struct["Status"]) end
	if struct["SubscriptionStartDate"] then M.AssertTimestamp(struct["SubscriptionStartDate"]) end
	if struct["AvailabilityZone"] then M.AssertAZ(struct["AvailabilityZone"]) end
	if struct["EniId"] then M.AssertEniId(struct["EniId"]) end
	if struct["HsmType"] then M.AssertString(struct["HsmType"]) end
	if struct["SshPublicKey"] then M.AssertSshKey(struct["SshPublicKey"]) end
	if struct["SubscriptionType"] then M.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["SerialNumber"] then M.AssertHsmSerialNumber(struct["SerialNumber"]) end
	if struct["IamRoleArn"] then M.AssertIamRoleArn(struct["IamRoleArn"]) end
	if struct["SubscriptionEndDate"] then M.AssertTimestamp(struct["SubscriptionEndDate"]) end
	if struct["EniIp"] then M.AssertIpAddress(struct["EniIp"]) end
	if struct["SoftwareVersion"] then M.AssertString(struct["SoftwareVersion"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["ServerCertUri"] then M.AssertString(struct["ServerCertUri"]) end
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["SshKeyLastUpdated"] then M.AssertTimestamp(struct["SshKeyLastUpdated"]) end
	if struct["Partitions"] then M.AssertPartitionList(struct["Partitions"]) end
	if struct["ServerCertLastUpdated"] then M.AssertTimestamp(struct["ServerCertLastUpdated"]) end
	if struct["StatusDetails"] then M.AssertString(struct["StatusDetails"]) end
	if struct["VendorName"] then M.AssertString(struct["VendorName"]) end
	if struct["HsmArn"] then M.AssertHsmArn(struct["HsmArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHsmResponse_keys[k], "DescribeHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmResponse
-- &lt;p&gt;Contains the output of the &lt;a&gt;DescribeHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param Status [HsmStatus] &lt;p&gt;The status of the HSM.&lt;/p&gt;
-- @param SubscriptionStartDate [Timestamp] &lt;p&gt;The subscription start date.&lt;/p&gt;
-- @param AvailabilityZone [AZ] &lt;p&gt;The Availability Zone that the HSM is in.&lt;/p&gt;
-- @param EniId [EniId] &lt;p&gt;The identifier of the elastic network interface (ENI) attached to the HSM.&lt;/p&gt;
-- @param HsmType [String] &lt;p&gt;The HSM model type.&lt;/p&gt;
-- @param SshPublicKey [SshKey] &lt;p&gt;The public SSH key.&lt;/p&gt;
-- @param SubscriptionType [SubscriptionType] &lt;p&gt;Contains the output of the &lt;a&gt;DescribeHsm&lt;/a&gt; operation.&lt;/p&gt;
-- @param SerialNumber [HsmSerialNumber] &lt;p&gt;The serial number of the HSM.&lt;/p&gt;
-- @param IamRoleArn [IamRoleArn] &lt;p&gt;The ARN of the IAM role assigned to the HSM.&lt;/p&gt;
-- @param SubscriptionEndDate [Timestamp] &lt;p&gt;The subscription end date.&lt;/p&gt;
-- @param EniIp [IpAddress] &lt;p&gt;The IP address assigned to the HSM's ENI.&lt;/p&gt;
-- @param SoftwareVersion [String] &lt;p&gt;The HSM software version.&lt;/p&gt;
-- @param VpcId [VpcId] &lt;p&gt;The identifier of the VPC that the HSM is in.&lt;/p&gt;
-- @param ServerCertUri [String] &lt;p&gt;The URI of the certificate server.&lt;/p&gt;
-- @param SubnetId [SubnetId] &lt;p&gt;The identifier of the subnet that the HSM is in.&lt;/p&gt;
-- @param SshKeyLastUpdated [Timestamp] &lt;p&gt;The date and time that the SSH key was last updated.&lt;/p&gt;
-- @param Partitions [PartitionList] &lt;p&gt;The list of partitions on the HSM.&lt;/p&gt;
-- @param ServerCertLastUpdated [Timestamp] &lt;p&gt;The date and time that the server certificate was last updated.&lt;/p&gt;
-- @param StatusDetails [String] &lt;p&gt;Contains additional information about the status of the HSM.&lt;/p&gt;
-- @param VendorName [String] &lt;p&gt;The name of the HSM vendor.&lt;/p&gt;
-- @param HsmArn [HsmArn] &lt;p&gt;The ARN of the HSM.&lt;/p&gt;
function M.DescribeHsmResponse(Status, SubscriptionStartDate, AvailabilityZone, EniId, HsmType, SshPublicKey, SubscriptionType, SerialNumber, IamRoleArn, SubscriptionEndDate, EniIp, SoftwareVersion, VpcId, ServerCertUri, SubnetId, SshKeyLastUpdated, Partitions, ServerCertLastUpdated, StatusDetails, VendorName, HsmArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmResponse")
	local t = { 
		["Status"] = Status,
		["SubscriptionStartDate"] = SubscriptionStartDate,
		["AvailabilityZone"] = AvailabilityZone,
		["EniId"] = EniId,
		["HsmType"] = HsmType,
		["SshPublicKey"] = SshPublicKey,
		["SubscriptionType"] = SubscriptionType,
		["SerialNumber"] = SerialNumber,
		["IamRoleArn"] = IamRoleArn,
		["SubscriptionEndDate"] = SubscriptionEndDate,
		["EniIp"] = EniIp,
		["SoftwareVersion"] = SoftwareVersion,
		["VpcId"] = VpcId,
		["ServerCertUri"] = ServerCertUri,
		["SubnetId"] = SubnetId,
		["SshKeyLastUpdated"] = SshKeyLastUpdated,
		["Partitions"] = Partitions,
		["ServerCertLastUpdated"] = ServerCertLastUpdated,
		["StatusDetails"] = StatusDetails,
		["VendorName"] = VendorName,
		["HsmArn"] = HsmArn,
	}
	M.AssertDescribeHsmResponse(t)
	return t
end

local CloudHsmInternalException_keys = { nil }

function M.AssertCloudHsmInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudHsmInternalException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CloudHsmInternalException_keys[k], "CloudHsmInternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudHsmInternalException
-- &lt;p&gt;Indicates that an internal error occurred.&lt;/p&gt;
function M.CloudHsmInternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudHsmInternalException")
	local t = { 
	}
	M.AssertCloudHsmInternalException(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;A key-value pair that identifies or specifies metadata about an AWS CloudHSM resource.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;The value of the tag.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;The key of the tag.&lt;/p&gt;
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

function M.AssertCertificate(str)
	assert(str)
	assert(type(str) == "string", "Expected Certificate to be of type 'string'")
	assert(#str <= 2400, "Expected string to be max 2400 characters")
	assert(#str >= 600, "Expected string to be min 600 characters")
	assert(str:match("[%w :+=./%n-]*"), "Expected string to match pattern '[%w :+=./%n-]*'")
end

--  
function M.Certificate(str)
	M.AssertCertificate(str)
	return str
end

function M.AssertPartitionSerial(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionSerial to be of type 'string'")
	assert(str:match("%d{6,12}"), "Expected string to match pattern '%d{6,12}'")
end

--  
function M.PartitionSerial(str)
	M.AssertPartitionSerial(str)
	return str
end

function M.AssertPartitionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionArn to be of type 'string'")
	assert(str:match("arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:hsm-[0-9a-f]{8}/partition-[0-9]{6,12}"), "Expected string to match pattern 'arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:hsm-[0-9a-f]{8}/partition-[0-9]{6,12}'")
end

--  
function M.PartitionArn(str)
	M.AssertPartitionArn(str)
	return str
end

function M.AssertLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected Label to be of type 'string'")
	assert(str:match("[a-zA-Z0-9_.-]{1,64}"), "Expected string to match pattern '[a-zA-Z0-9_.-]{1,64}'")
end

--  
function M.Label(str)
	M.AssertLabel(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(str:match("[%w :+=./%%-]*"), "Expected string to match pattern '[%w :+=./%%-]*'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertHsmArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmArn to be of type 'string'")
	assert(str:match("arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:hsm-[0-9a-f]{8}"), "Expected string to match pattern 'arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:hsm-[0-9a-f]{8}'")
end

-- &lt;p&gt;An ARN that identifies an HSM.&lt;/p&gt;
function M.HsmArn(str)
	M.AssertHsmArn(str)
	return str
end

function M.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
	assert(str:match("%d{1,3}%.%d{1,3}%.%d{1,3}%.%d{1,3}"), "Expected string to match pattern '%d{1,3}%.%d{1,3}%.%d{1,3}%.%d{1,3}'")
end

--  
function M.IpAddress(str)
	M.AssertIpAddress(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertEniId(str)
	assert(str)
	assert(type(str) == "string", "Expected EniId to be of type 'string'")
	assert(str:match("eni-[0-9a-f]{8}"), "Expected string to match pattern 'eni-[0-9a-f]{8}'")
end

--  
function M.EniId(str)
	M.AssertEniId(str)
	return str
end

function M.AssertSshKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SshKey to be of type 'string'")
	assert(str:match("[a-zA-Z0-9+/= ._:%%@-]*"), "Expected string to match pattern '[a-zA-Z0-9+/= ._:%%@-]*'")
end

--  
function M.SshKey(str)
	M.AssertSshKey(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(str:match("[a-zA-Z0-9+/]*"), "Expected string to match pattern '[a-zA-Z0-9+/]*'")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertHsmSerialNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmSerialNumber to be of type 'string'")
	assert(str:match("%d{1,16}"), "Expected string to match pattern '%d{1,16}'")
end

--  
function M.HsmSerialNumber(str)
	M.AssertHsmSerialNumber(str)
	return str
end

function M.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
	assert(str:match("vpc-[0-9a-f]{8}"), "Expected string to match pattern 'vpc-[0-9a-f]{8}'")
end

--  
function M.VpcId(str)
	M.AssertVpcId(str)
	return str
end

function M.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(str:match("[a-zA-Z0-9]{1,64}"), "Expected string to match pattern '[a-zA-Z0-9]{1,64}'")
end

--  
function M.ClientToken(str)
	M.AssertClientToken(str)
	return str
end

function M.AssertHapgArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HapgArn to be of type 'string'")
	assert(str:match("arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:hapg-[0-9a-f]{8}"), "Expected string to match pattern 'arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:hapg-[0-9a-f]{8}'")
end

--  
function M.HapgArn(str)
	M.AssertHapgArn(str)
	return str
end

function M.AssertHsmStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmStatus to be of type 'string'")
end

--  
function M.HsmStatus(str)
	M.AssertHsmStatus(str)
	return str
end

function M.AssertClientVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientVersion to be of type 'string'")
end

--  
function M.ClientVersion(str)
	M.AssertClientVersion(str)
	return str
end

function M.AssertTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected Timestamp to be of type 'string'")
	assert(str:match("%d*"), "Expected string to match pattern '%d*'")
end

--  
function M.Timestamp(str)
	M.AssertTimestamp(str)
	return str
end

function M.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
	assert(str:match("subnet-[0-9a-f]{8}"), "Expected string to match pattern 'subnet-[0-9a-f]{8}'")
end

--  
function M.SubnetId(str)
	M.AssertSubnetId(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertExternalId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExternalId to be of type 'string'")
	assert(str:match("[%w :+=./-]*"), "Expected string to match pattern '[%w :+=./-]*'")
end

--  
function M.ExternalId(str)
	M.AssertExternalId(str)
	return str
end

function M.AssertClientLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientLabel to be of type 'string'")
	assert(str:match("[a-zA-Z0-9_.-]{2,64}"), "Expected string to match pattern '[a-zA-Z0-9_.-]{2,64}'")
end

--  
function M.ClientLabel(str)
	M.AssertClientLabel(str)
	return str
end

function M.AssertAZ(str)
	assert(str)
	assert(type(str) == "string", "Expected AZ to be of type 'string'")
	assert(str:match("[a-zA-Z0-9%-]*"), "Expected string to match pattern '[a-zA-Z0-9%-]*'")
end

--  
function M.AZ(str)
	M.AssertAZ(str)
	return str
end

function M.AssertCertificateFingerprint(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateFingerprint to be of type 'string'")
	assert(str:match("([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]"), "Expected string to match pattern '([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]'")
end

--  
function M.CertificateFingerprint(str)
	M.AssertCertificateFingerprint(str)
	return str
end

function M.AssertCloudHsmObjectState(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudHsmObjectState to be of type 'string'")
end

--  
function M.CloudHsmObjectState(str)
	M.AssertCloudHsmObjectState(str)
	return str
end

function M.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

-- &lt;p&gt;Specifies the type of subscription for the HSM.&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;PRODUCTION&lt;/b&gt; - The HSM is being used in a production environment.&lt;/li&gt; &lt;li&gt;&lt;b&gt;TRIAL&lt;/b&gt; - The HSM is being used in a product trial.&lt;/li&gt; &lt;/ul&gt;
function M.SubscriptionType(str)
	M.AssertSubscriptionType(str)
	return str
end

function M.AssertIamRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamRoleArn to be of type 'string'")
	assert(str:match("arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_%+=,%.%-@]{1,64}"), "Expected string to match pattern 'arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_%+=,%.%-@]{1,64}'")
end

--  
function M.IamRoleArn(str)
	M.AssertIamRoleArn(str)
	return str
end

function M.AssertClientArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientArn to be of type 'string'")
	assert(str:match("arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:client-[0-9a-f]{8}"), "Expected string to match pattern 'arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9%-]*:[0-9]{12}:client-[0-9a-f]{8}'")
end

--  
function M.ClientArn(str)
	M.AssertClientArn(str)
	return str
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertHsmList(list)
	assert(list)
	assert(type(list) == "table", "Expected HsmList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHsmArn(v)
	end
end

-- &lt;p&gt;Contains a list of ARNs that identify the HSMs.&lt;/p&gt;
-- List of HsmArn objects
function M.HsmList(list)
	M.AssertHsmList(list)
	return list
end

function M.AssertHapgList(list)
	assert(list)
	assert(type(list) == "table", "Expected HapgList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHapgArn(v)
	end
end

--  
-- List of HapgArn objects
function M.HapgList(list)
	M.AssertHapgList(list)
	return list
end

function M.AssertPartitionSerialList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionSerialList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPartitionSerial(v)
	end
end

--  
-- List of PartitionSerial objects
function M.PartitionSerialList(list)
	M.AssertPartitionSerialList(list)
	return list
end

function M.AssertClientList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClientList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClientArn(v)
	end
end

--  
-- List of ClientArn objects
function M.ClientList(list)
	M.AssertClientList(list)
	return list
end

function M.AssertPartitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPartitionArn(v)
	end
end

--  
-- List of PartitionArn objects
function M.PartitionList(list)
	M.AssertPartitionList(list)
	return list
end

function M.AssertAZList(list)
	assert(list)
	assert(type(list) == "table", "Expected AZList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAZ(v)
	end
end

--  
-- List of AZ objects
function M.AZList(list)
	M.AssertAZList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateHsm
-- @param CreateHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHsmAsync(CreateHsmRequest, cb)
	assert(CreateHsmRequest, "You must provide a CreateHsmRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHsmRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHapgs
-- @param ListHapgsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHapgsAsync(ListHapgsRequest, cb)
	assert(ListHapgsRequest, "You must provide a ListHapgsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListHapgs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHapgsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyHapg
-- @param ModifyHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyHapgAsync(ModifyHapgRequest, cb)
	assert(ModifyHapgRequest, "You must provide a ModifyHapgRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyHapgRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHapg
-- @param DescribeHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHapgAsync(DescribeHapgRequest, cb)
	assert(DescribeHapgRequest, "You must provide a DescribeHapgRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHapgRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHsm
-- @param DeleteHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHsmAsync(DeleteHsmRequest, cb)
	assert(DeleteHsmRequest, "You must provide a DeleteHsmRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteHsmRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHsms
-- @param ListHsmsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHsmsAsync(ListHsmsRequest, cb)
	assert(ListHsmsRequest, "You must provide a ListHsmsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListHsms",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHsmsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToResource
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLunaClient
-- @param DeleteLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLunaClientAsync(DeleteLunaClientRequest, cb)
	assert(DeleteLunaClientRequest, "You must provide a DeleteLunaClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLunaClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLunaClient
-- @param CreateLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLunaClientAsync(CreateLunaClientRequest, cb)
	assert(CreateLunaClientRequest, "You must provide a CreateLunaClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLunaClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHapg
-- @param CreateHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHapgAsync(CreateHapgRequest, cb)
	assert(CreateHapgRequest, "You must provide a CreateHapgRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHapgRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromResource
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHapg
-- @param DeleteHapgRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHapgAsync(DeleteHapgRequest, cb)
	assert(DeleteHapgRequest, "You must provide a DeleteHapgRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteHapg",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteHapgRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHsm
-- @param DescribeHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHsmAsync(DescribeHsmRequest, cb)
	assert(DescribeHsmRequest, "You must provide a DescribeHsmRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHsmRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetConfig
-- @param GetConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetConfigAsync(GetConfigRequest, cb)
	assert(GetConfigRequest, "You must provide a GetConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.GetConfig",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAvailableZones
-- @param ListAvailableZonesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAvailableZonesAsync(ListAvailableZonesRequest, cb)
	assert(ListAvailableZonesRequest, "You must provide a ListAvailableZonesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListAvailableZones",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAvailableZonesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyHsm
-- @param ModifyHsmRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyHsmAsync(ModifyHsmRequest, cb)
	assert(ModifyHsmRequest, "You must provide a ModifyHsmRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyHsm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyHsmRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyLunaClient
-- @param ModifyLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyLunaClientAsync(ModifyLunaClientRequest, cb)
	assert(ModifyLunaClientRequest, "You must provide a ModifyLunaClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyLunaClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLunaClient
-- @param DescribeLunaClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLunaClientAsync(DescribeLunaClientRequest, cb)
	assert(DescribeLunaClientRequest, "You must provide a DescribeLunaClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeLunaClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLunaClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListLunaClients
-- @param ListLunaClientsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListLunaClientsAsync(ListLunaClientsRequest, cb)
	assert(ListLunaClientsRequest, "You must provide a ListLunaClientsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListLunaClients",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListLunaClientsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
