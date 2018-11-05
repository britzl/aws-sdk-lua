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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
-- * TagKeyList [TagKeyList] <p>The tag key or keys to remove.</p> <p>Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use <a>AddTagsToResource</a>.</p>
-- Required key: ResourceArn
-- Required key: TagKeyList
-- @return RemoveTagsFromResourceRequest structure as a key-value pair table
function M.RemoveTagsFromResourceRequest(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["TagKeyList"] = args["TagKeyList"],
	}
	asserts.AssertRemoveTagsFromResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the output of the <code>ListHsms</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmList [HsmList] <p>The list of ARNs that identify the HSMs.</p>
-- * NextToken [PaginationToken] <p>If not null, more results are available. Pass this value to <code>ListHsms</code> to retrieve the next set of items.</p>
-- @return ListHsmsResponse structure as a key-value pair table
function M.ListHsmsResponse(args)
	assert(args, "You must provide an argument table when creating ListHsmsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmList"] = args["HsmList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHsmsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ListAvailableZonesRequest structure as a key-value pair table
function M.ListAvailableZonesRequest(args)
	assert(args, "You must provide an argument table when creating ListAvailableZonesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertListAvailableZonesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientArn [ClientArn] <p>The ARN of the client.</p>
-- @return CreateLunaClientResponse structure as a key-value pair table
function M.CreateLunaClientResponse(args)
	assert(args, "You must provide an argument table when creating CreateLunaClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertCreateLunaClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the output of the <code>CreateHsm</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmArn [HsmArn] <p>The ARN of the HSM.</p>
-- @return CreateHsmResponse structure as a key-value pair table
function M.CreateHsmResponse(args)
	assert(args, "You must provide an argument table when creating CreateHsmResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmArn"] = args["HsmArn"],
	}
	asserts.AssertCreateHsmResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>
-- * TagList [TagList] <p>One or more tags.</p>
-- Required key: ResourceArn
-- Required key: TagList
-- @return AddTagsToResourceRequest structure as a key-value pair table
function M.AddTagsToResourceRequest(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["TagList"] = args["TagList"],
	}
	asserts.AssertAddTagsToResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The <code>NextToken</code> value from a previous call to <code>ListLunaClients</code>. Pass null if this is the first call.</p>
-- @return ListLunaClientsRequest structure as a key-value pair table
function M.ListLunaClientsRequest(args)
	assert(args, "You must provide an argument table when creating ListLunaClientsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListLunaClientsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the operation.</p>
-- Required key: Status
-- @return RemoveTagsFromResourceResponse structure as a key-value pair table
function M.RemoveTagsFromResourceResponse(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertRemoveTagsFromResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [String] <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
-- Required key: ResourceArn
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmArn [HsmArn] <p>The ARN of the HSM to delete.</p>
-- Required key: HsmArn
-- @return DeleteHsmRequest structure as a key-value pair table
function M.DeleteHsmRequest(args)
	assert(args, "You must provide an argument table when creating DeleteHsmRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmArn"] = args["HsmArn"],
	}
	asserts.AssertDeleteHsmRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmArn [HsmArn] <p>The ARN of the HSM.</p>
-- @return ModifyHsmResponse structure as a key-value pair table
function M.ModifyHsmResponse(args)
	assert(args, "You must provide an argument table when creating ModifyHsmResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmArn"] = args["HsmArn"],
	}
	asserts.AssertModifyHsmResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionSerialList [PartitionSerialList] <p>The list of partition serial numbers that belong to the high-availability partition group.</p>
-- * HsmsPendingRegistration [HsmList] <p/>
-- * HsmsLastActionFailed [HsmList] <p/>
-- * HsmsPendingDeletion [HsmList] <p/>
-- * LastModifiedTimestamp [Timestamp] <p>The date and time the high-availability partition group was last modified.</p>
-- * Label [Label] <p>The label for the high-availability partition group.</p>
-- * HapgSerial [String] <p>The serial number of the high-availability partition group.</p>
-- * State [CloudHsmObjectState] <p>The state of the high-availability partition group.</p>
-- * HapgArn [HapgArn] <p>The ARN of the high-availability partition group.</p>
-- @return DescribeHapgResponse structure as a key-value pair table
function M.DescribeHapgResponse(args)
	assert(args, "You must provide an argument table when creating DescribeHapgResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionSerialList"] = args["PartitionSerialList"],
		["HsmsPendingRegistration"] = args["HsmsPendingRegistration"],
		["HsmsLastActionFailed"] = args["HsmsLastActionFailed"],
		["HsmsPendingDeletion"] = args["HsmsPendingDeletion"],
		["LastModifiedTimestamp"] = args["LastModifiedTimestamp"],
		["Label"] = args["Label"],
		["HapgSerial"] = args["HapgSerial"],
		["State"] = args["State"],
		["HapgArn"] = args["HapgArn"],
	}
	asserts.AssertDescribeHapgResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>One or more tags.</p>
-- Required key: TagList
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The <code>NextToken</code> value from a previous call to <code>ListHapgs</code>. Pass null if this is the first call.</p>
-- @return ListHapgsRequest structure as a key-value pair table
function M.ListHapgsRequest(args)
	assert(args, "You must provide an argument table when creating ListHapgsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHapgsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgList [HapgList] <p>A list of ARNs that identify the high-availability partition groups that are associated with the client.</p>
-- * ClientVersion [ClientVersion] <p>The client version.</p>
-- * ClientArn [ClientArn] <p>The ARN of the client.</p>
-- Required key: ClientArn
-- Required key: ClientVersion
-- Required key: HapgList
-- @return GetConfigRequest structure as a key-value pair table
function M.GetConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgList"] = args["HapgList"],
		["ClientVersion"] = args["ClientVersion"],
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertGetConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Label [Label] <p>The label of the new high-availability partition group.</p>
-- Required key: Label
-- @return CreateHapgRequest structure as a key-value pair table
function M.CreateHapgRequest(args)
	assert(args, "You must provide an argument table when creating CreateHapgRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Label"] = args["Label"],
	}
	asserts.AssertCreateHapgRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgArn [HapgArn] <p>The ARN of the high-availability partition group to describe.</p>
-- Required key: HapgArn
-- @return DescribeHapgRequest structure as a key-value pair table
function M.DescribeHapgRequest(args)
	assert(args, "You must provide an argument table when creating DescribeHapgRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgArn"] = args["HapgArn"],
	}
	asserts.AssertDescribeHapgRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgList [HapgList] <p>The list of high-availability partition groups.</p>
-- * NextToken [PaginationToken] <p>If not null, more results are available. Pass this value to <code>ListHapgs</code> to retrieve the next set of items.</p>
-- Required key: HapgList
-- @return ListHapgsResponse structure as a key-value pair table
function M.ListHapgsResponse(args)
	assert(args, "You must provide an argument table when creating ListHapgsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgList"] = args["HapgList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHapgsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the inputs for the <a>DescribeHsm</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmSerialNumber [HsmSerialNumber] <p>The serial number of the HSM. Either the <code>HsmArn</code> or the <code>HsmSerialNumber</code> parameter must be specified.</p>
-- * HsmArn [HsmArn] <p>The ARN of the HSM. Either the <code>HsmArn</code> or the <code>SerialNumber</code> parameter must be specified.</p>
-- @return DescribeHsmRequest structure as a key-value pair table
function M.DescribeHsmRequest(args)
	assert(args, "You must provide an argument table when creating DescribeHsmRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmSerialNumber"] = args["HsmSerialNumber"],
		["HsmArn"] = args["HsmArn"],
	}
	asserts.AssertDescribeHsmRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTimestamp [Timestamp] <p>The date and time the client was last modified.</p>
-- * Label [Label] <p>The label of the client.</p>
-- * CertificateFingerprint [CertificateFingerprint] <p>The certificate fingerprint.</p>
-- * Certificate [Certificate] <p>The certificate installed on the HSMs used by this client.</p>
-- * ClientArn [ClientArn] <p>The ARN of the client.</p>
-- @return DescribeLunaClientResponse structure as a key-value pair table
function M.DescribeLunaClientResponse(args)
	assert(args, "You must provide an argument table when creating DescribeLunaClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTimestamp"] = args["LastModifiedTimestamp"],
		["Label"] = args["Label"],
		["CertificateFingerprint"] = args["CertificateFingerprint"],
		["Certificate"] = args["Certificate"],
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertDescribeLunaClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientArn [ClientArn] <p>The ARN of the client to delete.</p>
-- Required key: ClientArn
-- @return DeleteLunaClientRequest structure as a key-value pair table
function M.DeleteLunaClientRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLunaClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertDeleteLunaClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>Additional information about the error.</p>
-- * retryable [Boolean] <p>Indicates if the action can be retried.</p>
-- @return CloudHsmServiceException structure as a key-value pair table
function M.CloudHsmServiceException(args)
	assert(args, "You must provide an argument table when creating CloudHsmServiceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["retryable"] = args["retryable"],
	}
	asserts.AssertCloudHsmServiceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgArn [HapgArn] <p>The ARN of the high-availability partition group.</p>
-- @return ModifyHapgResponse structure as a key-value pair table
function M.ModifyHapgResponse(args)
	assert(args, "You must provide an argument table when creating ModifyHapgResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgArn"] = args["HapgArn"],
	}
	asserts.AssertModifyHapgResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the action.</p>
-- Required key: Status
-- @return DeleteLunaClientResponse structure as a key-value pair table
function M.DeleteLunaClientResponse(args)
	assert(args, "You must provide an argument table when creating DeleteLunaClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertDeleteLunaClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If not null, more results are available. Pass this to <code>ListLunaClients</code> to retrieve the next set of items.</p>
-- * ClientList [ClientList] <p>The list of clients.</p>
-- Required key: ClientList
-- @return ListLunaClientsResponse structure as a key-value pair table
function M.ListLunaClientsResponse(args)
	assert(args, "You must provide an argument table when creating ListLunaClientsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ClientList"] = args["ClientList"],
	}
	asserts.AssertListLunaClientsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgArn [HapgArn] <p>The ARN of the high-availability partition group to modify.</p>
-- * PartitionSerialList [PartitionSerialList] <p>The list of partition serial numbers to make members of the high-availability partition group.</p>
-- * Label [Label] <p>The new label for the high-availability partition group.</p>
-- Required key: HapgArn
-- @return ModifyHapgRequest structure as a key-value pair table
function M.ModifyHapgRequest(args)
	assert(args, "You must provide an argument table when creating ModifyHapgRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgArn"] = args["HapgArn"],
		["PartitionSerialList"] = args["PartitionSerialList"],
		["Label"] = args["Label"],
	}
	asserts.AssertModifyHapgRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientArn [ClientArn] <p>The ARN of the client.</p>
-- @return ModifyLunaClientResponse structure as a key-value pair table
function M.ModifyLunaClientResponse(args)
	assert(args, "You must provide an argument table when creating ModifyLunaClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertModifyLunaClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the operation.</p>
-- Required key: Status
-- @return AddTagsToResourceResponse structure as a key-value pair table
function M.AddTagsToResourceResponse(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertAddTagsToResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigType [String] <p>The type of credentials.</p>
-- * ConfigCred [String] <p>The certificate file containing the server.pem files of the HSMs.</p>
-- * ConfigFile [String] <p>The chrystoki.conf configuration file.</p>
-- @return GetConfigResponse structure as a key-value pair table
function M.GetConfigResponse(args)
	assert(args, "You must provide an argument table when creating GetConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigType"] = args["ConfigType"],
		["ConfigCred"] = args["ConfigCred"],
		["ConfigFile"] = args["ConfigFile"],
	}
	asserts.AssertGetConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgArn [HapgArn] <p>The ARN of the high-availability partition group to delete.</p>
-- Required key: HapgArn
-- @return DeleteHapgRequest structure as a key-value pair table
function M.DeleteHapgRequest(args)
	assert(args, "You must provide an argument table when creating DeleteHapgRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgArn"] = args["HapgArn"],
	}
	asserts.AssertDeleteHapgRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the action.</p>
-- Required key: Status
-- @return DeleteHapgResponse structure as a key-value pair table
function M.DeleteHapgResponse(args)
	assert(args, "You must provide an argument table when creating DeleteHapgResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertDeleteHapgResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The <code>NextToken</code> value from a previous call to <code>ListHsms</code>. Pass null if this is the first call.</p>
-- @return ListHsmsRequest structure as a key-value pair table
function M.ListHsmsRequest(args)
	assert(args, "You must provide an argument table when creating ListHsmsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHsmsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [Certificate] <p>The new certificate for the client.</p>
-- * ClientArn [ClientArn] <p>The ARN of the client.</p>
-- Required key: ClientArn
-- Required key: Certificate
-- @return ModifyLunaClientRequest structure as a key-value pair table
function M.ModifyLunaClientRequest(args)
	assert(args, "You must provide an argument table when creating ModifyLunaClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertModifyLunaClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateFingerprint [CertificateFingerprint] <p>The certificate fingerprint.</p>
-- * ClientArn [ClientArn] <p>The ARN of the client.</p>
-- @return DescribeLunaClientRequest structure as a key-value pair table
function M.DescribeLunaClientRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLunaClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateFingerprint"] = args["CertificateFingerprint"],
		["ClientArn"] = args["ClientArn"],
	}
	asserts.AssertDescribeLunaClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HapgArn [HapgArn] <p>The ARN of the high-availability partition group.</p>
-- @return CreateHapgResponse structure as a key-value pair table
function M.CreateHapgResponse(args)
	assert(args, "You must provide an argument table when creating CreateHapgResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HapgArn"] = args["HapgArn"],
	}
	asserts.AssertCreateHapgResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamRoleArn [IamRoleArn] <p>The new IAM role ARN.</p>
-- * EniIp [IpAddress] <p>The new IP address for the elastic network interface (ENI) attached to the HSM.</p> <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.</p>
-- * ExternalId [ExternalId] <p>The new external ID.</p>
-- * SubnetId [SubnetId] <p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.</p>
-- * SyslogIp [IpAddress] <p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.</p>
-- * HsmArn [HsmArn] <p>The ARN of the HSM to modify.</p>
-- Required key: HsmArn
-- @return ModifyHsmRequest structure as a key-value pair table
function M.ModifyHsmRequest(args)
	assert(args, "You must provide an argument table when creating ModifyHsmRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamRoleArn"] = args["IamRoleArn"],
		["EniIp"] = args["EniIp"],
		["ExternalId"] = args["ExternalId"],
		["SubnetId"] = args["SubnetId"],
		["SyslogIp"] = args["SyslogIp"],
		["HsmArn"] = args["HsmArn"],
	}
	asserts.AssertModifyHsmRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AZList [AZList] <p>The list of Availability Zones that have available AWS CloudHSM capacity.</p>
-- @return ListAvailableZonesResponse structure as a key-value pair table
function M.ListAvailableZonesResponse(args)
	assert(args, "You must provide an argument table when creating ListAvailableZonesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AZList"] = args["AZList"],
	}
	asserts.AssertListAvailableZonesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the inputs for the <code>CreateHsm</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SshKey [SshKey] <p>The SSH public key to install on the HSM.</p>
-- * SubscriptionType [SubscriptionType] 
-- * IamRoleArn [IamRoleArn] <p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.</p>
-- * EniIp [IpAddress] <p>The IP address to assign to the HSM's ENI.</p> <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.</p>
-- * ExternalId [ExternalId] <p>The external ID from <code>IamRoleArn</code>, if present.</p>
-- * ClientToken [ClientToken] <p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.</p>
-- * SubnetId [SubnetId] <p>The identifier of the subnet in your VPC in which to place the HSM.</p>
-- * SyslogIp [IpAddress] <p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.</p>
-- Required key: SubnetId
-- Required key: SshKey
-- Required key: IamRoleArn
-- Required key: SubscriptionType
-- @return CreateHsmRequest structure as a key-value pair table
function M.CreateHsmRequest(args)
	assert(args, "You must provide an argument table when creating CreateHsmRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SshKey"] = args["SshKey"],
		["SubscriptionType"] = args["SubscriptionType"],
		["IamRoleArn"] = args["IamRoleArn"],
		["EniIp"] = args["EniIp"],
		["ExternalId"] = args["ExternalId"],
		["ClientToken"] = args["ClientToken"],
		["SubnetId"] = args["SubnetId"],
		["SyslogIp"] = args["SyslogIp"],
	}
	asserts.AssertCreateHsmRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the operation.</p>
-- Required key: Status
-- @return DeleteHsmResponse structure as a key-value pair table
function M.DeleteHsmResponse(args)
	assert(args, "You must provide an argument table when creating DeleteHsmResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertDeleteHsmResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [Certificate] <p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.</p>
-- * Label [ClientLabel] <p>The label for the client.</p>
-- Required key: Certificate
-- @return CreateLunaClientRequest structure as a key-value pair table
function M.CreateLunaClientRequest(args)
	assert(args, "You must provide an argument table when creating CreateLunaClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["Label"] = args["Label"],
	}
	asserts.AssertCreateLunaClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [HsmStatus] <p>The status of the HSM.</p>
-- * SubscriptionStartDate [Timestamp] <p>The subscription start date.</p>
-- * AvailabilityZone [AZ] <p>The Availability Zone that the HSM is in.</p>
-- * EniId [EniId] <p>The identifier of the elastic network interface (ENI) attached to the HSM.</p>
-- * HsmType [String] <p>The HSM model type.</p>
-- * SshPublicKey [SshKey] <p>The public SSH key.</p>
-- * SubscriptionType [SubscriptionType] 
-- * SerialNumber [HsmSerialNumber] <p>The serial number of the HSM.</p>
-- * IamRoleArn [IamRoleArn] <p>The ARN of the IAM role assigned to the HSM.</p>
-- * SubscriptionEndDate [Timestamp] <p>The subscription end date.</p>
-- * EniIp [IpAddress] <p>The IP address assigned to the HSM's ENI.</p>
-- * SoftwareVersion [String] <p>The HSM software version.</p>
-- * VpcId [VpcId] <p>The identifier of the VPC that the HSM is in.</p>
-- * ServerCertUri [String] <p>The URI of the certificate server.</p>
-- * SubnetId [SubnetId] <p>The identifier of the subnet that the HSM is in.</p>
-- * SshKeyLastUpdated [Timestamp] <p>The date and time that the SSH key was last updated.</p>
-- * Partitions [PartitionList] <p>The list of partitions on the HSM.</p>
-- * ServerCertLastUpdated [Timestamp] <p>The date and time that the server certificate was last updated.</p>
-- * StatusDetails [String] <p>Contains additional information about the status of the HSM.</p>
-- * VendorName [String] <p>The name of the HSM vendor.</p>
-- * HsmArn [HsmArn] <p>The ARN of the HSM.</p>
-- @return DescribeHsmResponse structure as a key-value pair table
function M.DescribeHsmResponse(args)
	assert(args, "You must provide an argument table when creating DescribeHsmResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["SubscriptionStartDate"] = args["SubscriptionStartDate"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["EniId"] = args["EniId"],
		["HsmType"] = args["HsmType"],
		["SshPublicKey"] = args["SshPublicKey"],
		["SubscriptionType"] = args["SubscriptionType"],
		["SerialNumber"] = args["SerialNumber"],
		["IamRoleArn"] = args["IamRoleArn"],
		["SubscriptionEndDate"] = args["SubscriptionEndDate"],
		["EniIp"] = args["EniIp"],
		["SoftwareVersion"] = args["SoftwareVersion"],
		["VpcId"] = args["VpcId"],
		["ServerCertUri"] = args["ServerCertUri"],
		["SubnetId"] = args["SubnetId"],
		["SshKeyLastUpdated"] = args["SshKeyLastUpdated"],
		["Partitions"] = args["Partitions"],
		["ServerCertLastUpdated"] = args["ServerCertLastUpdated"],
		["StatusDetails"] = args["StatusDetails"],
		["VendorName"] = args["VendorName"],
		["HsmArn"] = args["HsmArn"],
	}
	asserts.AssertDescribeHsmResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CloudHsmInternalException structure as a key-value pair table
function M.CloudHsmInternalException(args)
	assert(args, "You must provide an argument table when creating CloudHsmInternalException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCloudHsmInternalException(all_args)
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The key of the tag.</p>
-- Required key: Key
-- Required key: Value
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

-- <p>Specifies the type of subscription for the HSM.</p> <ul> <li> <p> <b>PRODUCTION</b> - The HSM is being used in a production environment.</p> </li> <li> <p> <b>TRIAL</b> - The HSM is being used in a product trial.</p> </li> </ul>
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call CreateHsm asynchronously, invoking a callback when done
-- @param CreateHsmRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHsmAsync(CreateHsmRequest, cb)
	assert(CreateHsmRequest, "You must provide a CreateHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateHsm",
	}
	for header,value in pairs(CreateHsmRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateHsmSync(CreateHsmRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmAsync(CreateHsmRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHapgs asynchronously, invoking a callback when done
-- @param ListHapgsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHapgsAsync(ListHapgsRequest, cb)
	assert(ListHapgsRequest, "You must provide a ListHapgsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListHapgs",
	}
	for header,value in pairs(ListHapgsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListHapgsSync(ListHapgsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHapgsAsync(ListHapgsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyHapg asynchronously, invoking a callback when done
-- @param ModifyHapgRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyHapgAsync(ModifyHapgRequest, cb)
	assert(ModifyHapgRequest, "You must provide a ModifyHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyHapg",
	}
	for header,value in pairs(ModifyHapgRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyHapgSync(ModifyHapgRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyHapgAsync(ModifyHapgRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHapg asynchronously, invoking a callback when done
-- @param DescribeHapgRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHapgAsync(DescribeHapgRequest, cb)
	assert(DescribeHapgRequest, "You must provide a DescribeHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeHapg",
	}
	for header,value in pairs(DescribeHapgRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeHapgSync(DescribeHapgRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHapgAsync(DescribeHapgRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHsm asynchronously, invoking a callback when done
-- @param DeleteHsmRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteHsmAsync(DeleteHsmRequest, cb)
	assert(DeleteHsmRequest, "You must provide a DeleteHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteHsm",
	}
	for header,value in pairs(DeleteHsmRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteHsmSync(DeleteHsmRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmAsync(DeleteHsmRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHsms asynchronously, invoking a callback when done
-- @param ListHsmsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHsmsAsync(ListHsmsRequest, cb)
	assert(ListHsmsRequest, "You must provide a ListHsmsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListHsms",
	}
	for header,value in pairs(ListHsmsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListHsmsSync(ListHsmsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHsmsAsync(ListHsmsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.AddTagsToResource",
	}
	for header,value in pairs(AddTagsToResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AddTagsToResourceSync(AddTagsToResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(AddTagsToResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLunaClient asynchronously, invoking a callback when done
-- @param DeleteLunaClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLunaClientAsync(DeleteLunaClientRequest, cb)
	assert(DeleteLunaClientRequest, "You must provide a DeleteLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteLunaClient",
	}
	for header,value in pairs(DeleteLunaClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteLunaClientSync(DeleteLunaClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLunaClientAsync(DeleteLunaClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLunaClient asynchronously, invoking a callback when done
-- @param CreateLunaClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLunaClientAsync(CreateLunaClientRequest, cb)
	assert(CreateLunaClientRequest, "You must provide a CreateLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateLunaClient",
	}
	for header,value in pairs(CreateLunaClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateLunaClientSync(CreateLunaClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLunaClientAsync(CreateLunaClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHapg asynchronously, invoking a callback when done
-- @param CreateHapgRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHapgAsync(CreateHapgRequest, cb)
	assert(CreateHapgRequest, "You must provide a CreateHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.CreateHapg",
	}
	for header,value in pairs(CreateHapgRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateHapgSync(CreateHapgRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHapgAsync(CreateHapgRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.RemoveTagsFromResource",
	}
	for header,value in pairs(RemoveTagsFromResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RemoveTagsFromResourceSync(RemoveTagsFromResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHapg asynchronously, invoking a callback when done
-- @param DeleteHapgRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteHapgAsync(DeleteHapgRequest, cb)
	assert(DeleteHapgRequest, "You must provide a DeleteHapgRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DeleteHapg",
	}
	for header,value in pairs(DeleteHapgRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteHapgSync(DeleteHapgRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHapgAsync(DeleteHapgRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHsm asynchronously, invoking a callback when done
-- @param DescribeHsmRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHsmAsync(DescribeHsmRequest, cb)
	assert(DescribeHsmRequest, "You must provide a DescribeHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeHsm",
	}
	for header,value in pairs(DescribeHsmRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeHsmSync(DescribeHsmRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHsmAsync(DescribeHsmRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConfig asynchronously, invoking a callback when done
-- @param GetConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetConfigAsync(GetConfigRequest, cb)
	assert(GetConfigRequest, "You must provide a GetConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.GetConfig",
	}
	for header,value in pairs(GetConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetConfigSync(GetConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConfigAsync(GetConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAvailableZones asynchronously, invoking a callback when done
-- @param ListAvailableZonesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAvailableZonesAsync(ListAvailableZonesRequest, cb)
	assert(ListAvailableZonesRequest, "You must provide a ListAvailableZonesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListAvailableZones",
	}
	for header,value in pairs(ListAvailableZonesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListAvailableZonesSync(ListAvailableZonesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAvailableZonesAsync(ListAvailableZonesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyHsm asynchronously, invoking a callback when done
-- @param ModifyHsmRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyHsmAsync(ModifyHsmRequest, cb)
	assert(ModifyHsmRequest, "You must provide a ModifyHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyHsm",
	}
	for header,value in pairs(ModifyHsmRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyHsmSync(ModifyHsmRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyHsmAsync(ModifyHsmRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyLunaClient asynchronously, invoking a callback when done
-- @param ModifyLunaClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyLunaClientAsync(ModifyLunaClientRequest, cb)
	assert(ModifyLunaClientRequest, "You must provide a ModifyLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ModifyLunaClient",
	}
	for header,value in pairs(ModifyLunaClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyLunaClientSync(ModifyLunaClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyLunaClientAsync(ModifyLunaClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLunaClient asynchronously, invoking a callback when done
-- @param DescribeLunaClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLunaClientAsync(DescribeLunaClientRequest, cb)
	assert(DescribeLunaClientRequest, "You must provide a DescribeLunaClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.DescribeLunaClient",
	}
	for header,value in pairs(DescribeLunaClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeLunaClientSync(DescribeLunaClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLunaClientAsync(DescribeLunaClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLunaClients asynchronously, invoking a callback when done
-- @param ListLunaClientsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListLunaClientsAsync(ListLunaClientsRequest, cb)
	assert(ListLunaClientsRequest, "You must provide a ListLunaClientsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CloudHsmFrontendService.ListLunaClients",
	}
	for header,value in pairs(ListLunaClientsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListLunaClientsSync(ListLunaClientsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLunaClientsAsync(ListLunaClientsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
