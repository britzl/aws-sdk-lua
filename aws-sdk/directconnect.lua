--- GENERATED CODE - DO NOT MODIFY
-- AWS Direct Connect (directconnect-2012-10-25)

local M = {}

M.metadata = {
	api_version = "2012-10-25",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "directconnect",
	service_abbreviation = "",
	service_full_name = "AWS Direct Connect",
	signature_version = "v4",
	target_prefix = "OvertureService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "directconnect-2012-10-25",
}

local keys = {}
local asserts = {}

keys.Interconnect = { ["awsDevice"] = true, ["region"] = true, ["lagId"] = true, ["awsDeviceV2"] = true, ["jumboFrameCapable"] = true, ["bandwidth"] = true, ["location"] = true, ["interconnectName"] = true, ["interconnectId"] = true, ["loaIssueTime"] = true, ["interconnectState"] = true, nil }

function asserts.AssertInterconnect(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Interconnect to be of type 'table'")
	if struct["awsDevice"] then asserts.AssertAwsDevice(struct["awsDevice"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["awsDeviceV2"] then asserts.AssertAwsDeviceV2(struct["awsDeviceV2"]) end
	if struct["jumboFrameCapable"] then asserts.AssertJumboFrameCapable(struct["jumboFrameCapable"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["interconnectName"] then asserts.AssertInterconnectName(struct["interconnectName"]) end
	if struct["interconnectId"] then asserts.AssertInterconnectId(struct["interconnectId"]) end
	if struct["loaIssueTime"] then asserts.AssertLoaIssueTime(struct["loaIssueTime"]) end
	if struct["interconnectState"] then asserts.AssertInterconnectState(struct["interconnectState"]) end
	for k,_ in pairs(struct) do
		assert(keys.Interconnect[k], "Interconnect contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Interconnect
-- <p>Information about an interconnect.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * awsDevice [AwsDevice] <p>The Direct Connect endpoint on which the physical connection terminates.</p>
-- * region [Region] <p>The AWS Region where the connection is located.</p>
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- * awsDeviceV2 [AwsDeviceV2] <p>The Direct Connect endpoint on which the physical connection terminates.</p>
-- * jumboFrameCapable [JumboFrameCapable] <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
-- * bandwidth [Bandwidth] <p>The bandwidth of the connection.</p>
-- * location [LocationCode] <p>The location of the connection.</p>
-- * interconnectName [InterconnectName] <p>The name of the interconnect.</p>
-- * interconnectId [InterconnectId] <p>The ID of the interconnect.</p>
-- * loaIssueTime [LoaIssueTime] <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
-- * interconnectState [InterconnectState] <p>The state of the interconnect. The following are the possible values:</p> <ul> <li> <p> <code>requested</code>: The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The interconnect is approved, and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up, and the interconnect is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The interconnect is being deleted.</p> </li> <li> <p> <code>deleted</code>: The interconnect is deleted.</p> </li> </ul>
-- @return Interconnect structure as a key-value pair table
function M.Interconnect(args)
	assert(args, "You must provide an argument table when creating Interconnect")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["awsDevice"] = args["awsDevice"],
		["region"] = args["region"],
		["lagId"] = args["lagId"],
		["awsDeviceV2"] = args["awsDeviceV2"],
		["jumboFrameCapable"] = args["jumboFrameCapable"],
		["bandwidth"] = args["bandwidth"],
		["location"] = args["location"],
		["interconnectName"] = args["interconnectName"],
		["interconnectId"] = args["interconnectId"],
		["loaIssueTime"] = args["loaIssueTime"],
		["interconnectState"] = args["interconnectState"],
	}
	asserts.AssertInterconnect(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectConnectGatewayAttachment = { ["directConnectGatewayId"] = true, ["stateChangeError"] = true, ["attachmentState"] = true, ["virtualInterfaceId"] = true, ["virtualInterfaceRegion"] = true, ["virtualInterfaceOwnerAccount"] = true, nil }

function asserts.AssertDirectConnectGatewayAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectGatewayAttachment to be of type 'table'")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["stateChangeError"] then asserts.AssertStateChangeError(struct["stateChangeError"]) end
	if struct["attachmentState"] then asserts.AssertDirectConnectGatewayAttachmentState(struct["attachmentState"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	if struct["virtualInterfaceRegion"] then asserts.AssertVirtualInterfaceRegion(struct["virtualInterfaceRegion"]) end
	if struct["virtualInterfaceOwnerAccount"] then asserts.AssertOwnerAccount(struct["virtualInterfaceOwnerAccount"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectConnectGatewayAttachment[k], "DirectConnectGatewayAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectGatewayAttachment
-- <p>Information about an attachment between a Direct Connect gateway and a virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * stateChangeError [StateChangeError] <p>The error message if the state of an object failed to advance.</p>
-- * attachmentState [DirectConnectGatewayAttachmentState] <p>The state of the attachment. The following are the possible values:</p> <ul> <li> <p> <code>attaching</code>: The initial state after a virtual interface is created using the Direct Connect gateway.</p> </li> <li> <p> <code>attached</code>: The Direct Connect gateway and virtual interface are attached and ready to pass traffic.</p> </li> <li> <p> <code>detaching</code>: The initial state after calling <a>DeleteVirtualInterface</a>.</p> </li> <li> <p> <code>detached</code>: The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.</p> </li> </ul>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- * virtualInterfaceRegion [VirtualInterfaceRegion] <p>The AWS Region where the virtual interface is located.</p>
-- * virtualInterfaceOwnerAccount [OwnerAccount] <p>The ID of the AWS account that owns the virtual interface.</p>
-- @return DirectConnectGatewayAttachment structure as a key-value pair table
function M.DirectConnectGatewayAttachment(args)
	assert(args, "You must provide an argument table when creating DirectConnectGatewayAttachment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["stateChangeError"] = args["stateChangeError"],
		["attachmentState"] = args["attachmentState"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
		["virtualInterfaceRegion"] = args["virtualInterfaceRegion"],
		["virtualInterfaceOwnerAccount"] = args["virtualInterfaceOwnerAccount"],
	}
	asserts.AssertDirectConnectGatewayAttachment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInterconnectRequest = { ["interconnectId"] = true, nil }

function asserts.AssertDeleteInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInterconnectRequest to be of type 'table'")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	if struct["interconnectId"] then asserts.AssertInterconnectId(struct["interconnectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInterconnectRequest[k], "DeleteInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInterconnectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>The ID of the interconnect.</p>
-- Required key: interconnectId
-- @return DeleteInterconnectRequest structure as a key-value pair table
function M.DeleteInterconnectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInterconnectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectId"] = args["interconnectId"],
	}
	asserts.AssertDeleteInterconnectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDirectConnectGatewayResult = { ["directConnectGateway"] = true, nil }

function asserts.AssertCreateDirectConnectGatewayResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectConnectGatewayResult to be of type 'table'")
	if struct["directConnectGateway"] then asserts.AssertDirectConnectGateway(struct["directConnectGateway"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectConnectGatewayResult[k], "CreateDirectConnectGatewayResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectConnectGatewayResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGateway [DirectConnectGateway] <p>The Direct Connect gateway.</p>
-- @return CreateDirectConnectGatewayResult structure as a key-value pair table
function M.CreateDirectConnectGatewayResult(args)
	assert(args, "You must provide an argument table when creating CreateDirectConnectGatewayResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGateway"] = args["directConnectGateway"],
	}
	asserts.AssertCreateDirectConnectGatewayResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDirectConnectGatewayRequest = { ["amazonSideAsn"] = true, ["directConnectGatewayName"] = true, nil }

function asserts.AssertCreateDirectConnectGatewayRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectConnectGatewayRequest to be of type 'table'")
	assert(struct["directConnectGatewayName"], "Expected key directConnectGatewayName to exist in table")
	if struct["amazonSideAsn"] then asserts.AssertLongAsn(struct["amazonSideAsn"]) end
	if struct["directConnectGatewayName"] then asserts.AssertDirectConnectGatewayName(struct["directConnectGatewayName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectConnectGatewayRequest[k], "CreateDirectConnectGatewayRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectConnectGatewayRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * amazonSideAsn [LongAsn] <p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>
-- * directConnectGatewayName [DirectConnectGatewayName] <p>The name of the Direct Connect gateway.</p>
-- Required key: directConnectGatewayName
-- @return CreateDirectConnectGatewayRequest structure as a key-value pair table
function M.CreateDirectConnectGatewayRequest(args)
	assert(args, "You must provide an argument table when creating CreateDirectConnectGatewayRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["amazonSideAsn"] = args["amazonSideAsn"],
		["directConnectGatewayName"] = args["directConnectGatewayName"],
	}
	asserts.AssertCreateDirectConnectGatewayRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmPublicVirtualInterfaceRequest = { ["virtualInterfaceId"] = true, nil }

function asserts.AssertConfirmPublicVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPublicVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmPublicVirtualInterfaceRequest[k], "ConfirmPublicVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPublicVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- Required key: virtualInterfaceId
-- @return ConfirmPublicVirtualInterfaceRequest structure as a key-value pair table
function M.ConfirmPublicVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating ConfirmPublicVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertConfirmPublicVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConnectionLoaRequest = { ["loaContentType"] = true, ["connectionId"] = true, ["providerName"] = true, nil }

function asserts.AssertDescribeConnectionLoaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionLoaRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["loaContentType"] then asserts.AssertLoaContentType(struct["loaContentType"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["providerName"] then asserts.AssertProviderName(struct["providerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConnectionLoaRequest[k], "DescribeConnectionLoaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionLoaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loaContentType [LoaContentType] <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- * providerName [ProviderName] <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
-- Required key: connectionId
-- @return DescribeConnectionLoaRequest structure as a key-value pair table
function M.DescribeConnectionLoaRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConnectionLoaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loaContentType"] = args["loaContentType"],
		["connectionId"] = args["connectionId"],
		["providerName"] = args["providerName"],
	}
	asserts.AssertDescribeConnectionLoaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDirectConnectGatewayResult = { ["directConnectGateway"] = true, nil }

function asserts.AssertDeleteDirectConnectGatewayResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectConnectGatewayResult to be of type 'table'")
	if struct["directConnectGateway"] then asserts.AssertDirectConnectGateway(struct["directConnectGateway"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectConnectGatewayResult[k], "DeleteDirectConnectGatewayResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectConnectGatewayResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGateway [DirectConnectGateway] <p>The Direct Connect gateway.</p>
-- @return DeleteDirectConnectGatewayResult structure as a key-value pair table
function M.DeleteDirectConnectGatewayResult(args)
	assert(args, "You must provide an argument table when creating DeleteDirectConnectGatewayResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGateway"] = args["directConnectGateway"],
	}
	asserts.AssertDeleteDirectConnectGatewayResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateConnectionWithLagRequest = { ["lagId"] = true, ["connectionId"] = true, nil }

function asserts.AssertAssociateConnectionWithLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateConnectionWithLagRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateConnectionWithLagRequest[k], "AssociateConnectionWithLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateConnectionWithLagRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG with which to associate the connection. For example, dxlag-abc123.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection. For example, dxcon-abc123.</p>
-- Required key: connectionId
-- Required key: lagId
-- @return AssociateConnectionWithLagRequest structure as a key-value pair table
function M.AssociateConnectionWithLagRequest(args)
	assert(args, "You must provide an argument table when creating AssociateConnectionWithLagRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lagId"] = args["lagId"],
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertAssociateConnectionWithLagRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInterconnectResponse = { ["interconnectState"] = true, nil }

function asserts.AssertDeleteInterconnectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInterconnectResponse to be of type 'table'")
	if struct["interconnectState"] then asserts.AssertInterconnectState(struct["interconnectState"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInterconnectResponse[k], "DeleteInterconnectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInterconnectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectState [InterconnectState] <p>The state of the interconnect. The following are the possible values:</p> <ul> <li> <p> <code>requested</code>: The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The interconnect is approved, and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up, and the interconnect is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The interconnect is being deleted.</p> </li> <li> <p> <code>deleted</code>: The interconnect is deleted.</p> </li> </ul>
-- @return DeleteInterconnectResponse structure as a key-value pair table
function M.DeleteInterconnectResponse(args)
	assert(args, "You must provide an argument table when creating DeleteInterconnectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectState"] = args["interconnectState"],
	}
	asserts.AssertDeleteInterconnectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeVirtualInterfacesRequest = { ["connectionId"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertDescribeVirtualInterfacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVirtualInterfacesRequest to be of type 'table'")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVirtualInterfacesRequest[k], "DescribeVirtualInterfacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVirtualInterfacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- @return DescribeVirtualInterfacesRequest structure as a key-value pair table
function M.DescribeVirtualInterfacesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeVirtualInterfacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDescribeVirtualInterfacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLagsRequest = { ["lagId"] = true, nil }

function asserts.AssertDescribeLagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLagsRequest to be of type 'table'")
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLagsRequest[k], "DescribeLagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- @return DescribeLagsRequest structure as a key-value pair table
function M.DescribeLagsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lagId"] = args["lagId"],
	}
	asserts.AssertDescribeLagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Interconnects = { ["interconnects"] = true, nil }

function asserts.AssertInterconnects(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Interconnects to be of type 'table'")
	if struct["interconnects"] then asserts.AssertInterconnectList(struct["interconnects"]) end
	for k,_ in pairs(struct) do
		assert(keys.Interconnects[k], "Interconnects contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Interconnects
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnects [InterconnectList] <p>The interconnects.</p>
-- @return Interconnects structure as a key-value pair table
function M.Interconnects(args)
	assert(args, "You must provide an argument table when creating Interconnects")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnects"] = args["interconnects"],
	}
	asserts.AssertInterconnects(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInterconnectLoaResponse = { ["loa"] = true, nil }

function asserts.AssertDescribeInterconnectLoaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInterconnectLoaResponse to be of type 'table'")
	if struct["loa"] then asserts.AssertLoa(struct["loa"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInterconnectLoaResponse[k], "DescribeInterconnectLoaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInterconnectLoaResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loa [Loa] <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>
-- @return DescribeInterconnectLoaResponse structure as a key-value pair table
function M.DescribeInterconnectLoaResponse(args)
	assert(args, "You must provide an argument table when creating DescribeInterconnectLoaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loa"] = args["loa"],
	}
	asserts.AssertDescribeInterconnectLoaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateConnectionFromLagRequest = { ["lagId"] = true, ["connectionId"] = true, nil }

function asserts.AssertDisassociateConnectionFromLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConnectionFromLagRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateConnectionFromLagRequest[k], "DisassociateConnectionFromLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConnectionFromLagRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG. For example, dxlag-abc123.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection. For example, dxcon-abc123.</p>
-- Required key: connectionId
-- Required key: lagId
-- @return DisassociateConnectionFromLagRequest structure as a key-value pair table
function M.DisassociateConnectionFromLagRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateConnectionFromLagRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lagId"] = args["lagId"],
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDisassociateConnectionFromLagRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLagRequest = { ["connectionId"] = true, ["lagName"] = true, ["numberOfConnections"] = true, ["location"] = true, ["connectionsBandwidth"] = true, nil }

function asserts.AssertCreateLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLagRequest to be of type 'table'")
	assert(struct["numberOfConnections"], "Expected key numberOfConnections to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	assert(struct["connectionsBandwidth"], "Expected key connectionsBandwidth to exist in table")
	assert(struct["lagName"], "Expected key lagName to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["lagName"] then asserts.AssertLagName(struct["lagName"]) end
	if struct["numberOfConnections"] then asserts.AssertCount(struct["numberOfConnections"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["connectionsBandwidth"] then asserts.AssertBandwidth(struct["connectionsBandwidth"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLagRequest[k], "CreateLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLagRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of an existing connection to migrate to the LAG.</p>
-- * lagName [LagName] <p>The name of the LAG.</p>
-- * numberOfConnections [Count] <p>The number of physical connections initially provisioned and bundled by the LAG.</p>
-- * location [LocationCode] <p>The location for the LAG.</p>
-- * connectionsBandwidth [Bandwidth] <p>The bandwidth of the individual physical connections bundled by the LAG. The possible values are 1Gbps and 10Gbps.</p>
-- Required key: numberOfConnections
-- Required key: location
-- Required key: connectionsBandwidth
-- Required key: lagName
-- @return CreateLagRequest structure as a key-value pair table
function M.CreateLagRequest(args)
	assert(args, "You must provide an argument table when creating CreateLagRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
		["lagName"] = args["lagName"],
		["numberOfConnections"] = args["numberOfConnections"],
		["location"] = args["location"],
		["connectionsBandwidth"] = args["connectionsBandwidth"],
	}
	asserts.AssertCreateLagRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Connections = { ["connections"] = true, nil }

function asserts.AssertConnections(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connections to be of type 'table'")
	if struct["connections"] then asserts.AssertConnectionList(struct["connections"]) end
	for k,_ in pairs(struct) do
		assert(keys.Connections[k], "Connections contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connections
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connections [ConnectionList] <p>The connections.</p>
-- @return Connections structure as a key-value pair table
function M.Connections(args)
	assert(args, "You must provide an argument table when creating Connections")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connections"] = args["connections"],
	}
	asserts.AssertConnections(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDirectConnectGatewayAssociationRequest = { ["directConnectGatewayId"] = true, ["virtualGatewayId"] = true, nil }

function asserts.AssertCreateDirectConnectGatewayAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectConnectGatewayAssociationRequest to be of type 'table'")
	assert(struct["directConnectGatewayId"], "Expected key directConnectGatewayId to exist in table")
	assert(struct["virtualGatewayId"], "Expected key virtualGatewayId to exist in table")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectConnectGatewayAssociationRequest[k], "CreateDirectConnectGatewayAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectConnectGatewayAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway.</p>
-- Required key: directConnectGatewayId
-- Required key: virtualGatewayId
-- @return CreateDirectConnectGatewayAssociationRequest structure as a key-value pair table
function M.CreateDirectConnectGatewayAssociationRequest(args)
	assert(args, "You must provide an argument table when creating CreateDirectConnectGatewayAssociationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["virtualGatewayId"] = args["virtualGatewayId"],
	}
	asserts.AssertCreateDirectConnectGatewayAssociationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDirectConnectGatewayAssociationResult = { ["directConnectGatewayAssociation"] = true, nil }

function asserts.AssertCreateDirectConnectGatewayAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectConnectGatewayAssociationResult to be of type 'table'")
	if struct["directConnectGatewayAssociation"] then asserts.AssertDirectConnectGatewayAssociation(struct["directConnectGatewayAssociation"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectConnectGatewayAssociationResult[k], "CreateDirectConnectGatewayAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectConnectGatewayAssociationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayAssociation [DirectConnectGatewayAssociation] <p>The association to be created.</p>
-- @return CreateDirectConnectGatewayAssociationResult structure as a key-value pair table
function M.CreateDirectConnectGatewayAssociationResult(args)
	assert(args, "You must provide an argument table when creating CreateDirectConnectGatewayAssociationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayAssociation"] = args["directConnectGatewayAssociation"],
	}
	asserts.AssertCreateDirectConnectGatewayAssociationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConnectionsOnInterconnectRequest = { ["interconnectId"] = true, nil }

function asserts.AssertDescribeConnectionsOnInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsOnInterconnectRequest to be of type 'table'")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	if struct["interconnectId"] then asserts.AssertInterconnectId(struct["interconnectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConnectionsOnInterconnectRequest[k], "DescribeConnectionsOnInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsOnInterconnectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>The ID of the interconnect.</p>
-- Required key: interconnectId
-- @return DescribeConnectionsOnInterconnectRequest structure as a key-value pair table
function M.DescribeConnectionsOnInterconnectRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConnectionsOnInterconnectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectId"] = args["interconnectId"],
	}
	asserts.AssertDescribeConnectionsOnInterconnectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Lags = { ["lags"] = true, nil }

function asserts.AssertLags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lags to be of type 'table'")
	if struct["lags"] then asserts.AssertLagList(struct["lags"]) end
	for k,_ in pairs(struct) do
		assert(keys.Lags[k], "Lags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lags
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lags [LagList] <p>The LAGs.</p>
-- @return Lags structure as a key-value pair table
function M.Lags(args)
	assert(args, "You must provide an argument table when creating Lags")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lags"] = args["lags"],
	}
	asserts.AssertLags(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBGPPeerResponse = { ["virtualInterface"] = true, nil }

function asserts.AssertDeleteBGPPeerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBGPPeerResponse to be of type 'table'")
	if struct["virtualInterface"] then asserts.AssertVirtualInterface(struct["virtualInterface"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBGPPeerResponse[k], "DeleteBGPPeerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBGPPeerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterface [VirtualInterface] <p>The virtual interface.</p>
-- @return DeleteBGPPeerResponse structure as a key-value pair table
function M.DeleteBGPPeerResponse(args)
	assert(args, "You must provide an argument table when creating DeleteBGPPeerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterface"] = args["virtualInterface"],
	}
	asserts.AssertDeleteBGPPeerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmPrivateVirtualInterfaceRequest = { ["virtualGatewayId"] = true, ["directConnectGatewayId"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertConfirmPrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmPrivateVirtualInterfaceRequest[k], "ConfirmPrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPrivateVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway.</p>
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- Required key: virtualInterfaceId
-- @return ConfirmPrivateVirtualInterfaceRequest structure as a key-value pair table
function M.ConfirmPrivateVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating ConfirmPrivateVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualGatewayId"] = args["virtualGatewayId"],
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertConfirmPrivateVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Location = { ["locationName"] = true, ["region"] = true, ["locationCode"] = true, nil }

function asserts.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	if struct["locationName"] then asserts.AssertLocationName(struct["locationName"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	if struct["locationCode"] then asserts.AssertLocationCode(struct["locationCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Location[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>Information about an AWS Direct Connect location.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locationName [LocationName] <p>The name of the location. This includes the name of the colocation partner and the physical site of the building.</p>
-- * region [Region] <p>The AWS Region for the location.</p>
-- * locationCode [LocationCode] <p>The code for the location.</p>
-- @return Location structure as a key-value pair table
function M.Location(args)
	assert(args, "You must provide an argument table when creating Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["locationName"] = args["locationName"],
		["region"] = args["region"],
		["locationCode"] = args["locationCode"],
	}
	asserts.AssertLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDirectConnectGatewayAssociationRequest = { ["directConnectGatewayId"] = true, ["virtualGatewayId"] = true, nil }

function asserts.AssertDeleteDirectConnectGatewayAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectConnectGatewayAssociationRequest to be of type 'table'")
	assert(struct["directConnectGatewayId"], "Expected key directConnectGatewayId to exist in table")
	assert(struct["virtualGatewayId"], "Expected key virtualGatewayId to exist in table")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectConnectGatewayAssociationRequest[k], "DeleteDirectConnectGatewayAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectConnectGatewayAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway.</p>
-- Required key: directConnectGatewayId
-- Required key: virtualGatewayId
-- @return DeleteDirectConnectGatewayAssociationRequest structure as a key-value pair table
function M.DeleteDirectConnectGatewayAssociationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDirectConnectGatewayAssociationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["virtualGatewayId"] = args["virtualGatewayId"],
	}
	asserts.AssertDeleteDirectConnectGatewayAssociationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConnectionLoaResponse = { ["loa"] = true, nil }

function asserts.AssertDescribeConnectionLoaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionLoaResponse to be of type 'table'")
	if struct["loa"] then asserts.AssertLoa(struct["loa"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConnectionLoaResponse[k], "DescribeConnectionLoaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionLoaResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loa [Loa] <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>
-- @return DescribeConnectionLoaResponse structure as a key-value pair table
function M.DescribeConnectionLoaResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConnectionLoaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loa"] = args["loa"],
	}
	asserts.AssertDescribeConnectionLoaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectConnectGatewayAttachmentsRequest = { ["directConnectGatewayId"] = true, ["nextToken"] = true, ["maxResults"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertDescribeDirectConnectGatewayAttachmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectConnectGatewayAttachmentsRequest to be of type 'table'")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResultSetSize(struct["maxResults"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectConnectGatewayAttachmentsRequest[k], "DescribeDirectConnectGatewayAttachmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectConnectGatewayAttachmentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * nextToken [PaginationToken] <p>The token provided in the previous call to retrieve the next page.</p>
-- * maxResults [MaxResultSetSize] <p>The maximum number of attachments to return per page.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- @return DescribeDirectConnectGatewayAttachmentsRequest structure as a key-value pair table
function M.DescribeDirectConnectGatewayAttachmentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDirectConnectGatewayAttachmentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDescribeDirectConnectGatewayAttachmentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmConnectionRequest = { ["connectionId"] = true, nil }

function asserts.AssertConfirmConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmConnectionRequest[k], "ConfirmConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the hosted connection.</p>
-- Required key: connectionId
-- @return ConfirmConnectionRequest structure as a key-value pair table
function M.ConfirmConnectionRequest(args)
	assert(args, "You must provide an argument table when creating ConfirmConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertConfirmConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VirtualInterface = { ["virtualInterfaceId"] = true, ["amazonSideAsn"] = true, ["addressFamily"] = true, ["awsDeviceV2"] = true, ["virtualInterfaceState"] = true, ["directConnectGatewayId"] = true, ["authKey"] = true, ["location"] = true, ["virtualGatewayId"] = true, ["connectionId"] = true, ["virtualInterfaceType"] = true, ["customerAddress"] = true, ["vlan"] = true, ["jumboFrameCapable"] = true, ["routeFilterPrefixes"] = true, ["customerRouterConfig"] = true, ["asn"] = true, ["virtualInterfaceName"] = true, ["ownerAccount"] = true, ["mtu"] = true, ["bgpPeers"] = true, ["amazonAddress"] = true, ["region"] = true, nil }

function asserts.AssertVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualInterface to be of type 'table'")
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	if struct["amazonSideAsn"] then asserts.AssertLongAsn(struct["amazonSideAsn"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["awsDeviceV2"] then asserts.AssertAwsDeviceV2(struct["awsDeviceV2"]) end
	if struct["virtualInterfaceState"] then asserts.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["virtualInterfaceType"] then asserts.AssertVirtualInterfaceType(struct["virtualInterfaceType"]) end
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["jumboFrameCapable"] then asserts.AssertJumboFrameCapable(struct["jumboFrameCapable"]) end
	if struct["routeFilterPrefixes"] then asserts.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["customerRouterConfig"] then asserts.AssertRouterConfig(struct["customerRouterConfig"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["mtu"] then asserts.AssertMTU(struct["mtu"]) end
	if struct["bgpPeers"] then asserts.AssertBGPPeerList(struct["bgpPeers"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	for k,_ in pairs(struct) do
		assert(keys.VirtualInterface[k], "VirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualInterface
-- <p>Information about a virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- * amazonSideAsn [LongAsn] <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- * awsDeviceV2 [AwsDeviceV2] <p>The Direct Connect endpoint on which the virtual interface terminates.</p>
-- * virtualInterfaceState [VirtualInterfaceState] <p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> </ul>
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * location [LocationCode] <p>The location of the connection.</p>
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- * virtualInterfaceType [VirtualInterfaceType] <p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * vlan [VLAN] <p>The ID of the VLAN.</p>
-- * jumboFrameCapable [JumboFrameCapable] <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
-- * routeFilterPrefixes [RouteFilterPrefixList] <p>The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.</p>
-- * customerRouterConfig [RouterConfig] <p>The customer router configuration.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * virtualInterfaceName [VirtualInterfaceName] <p>The name of the virtual interface assigned by the customer network.</p>
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account that owns the virtual interface.</p>
-- * mtu [MTU] <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
-- * bgpPeers [BGPPeerList] <p>The BGP peers configured on this virtual interface.</p>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * region [Region] <p>The AWS Region where the virtual interface is located.</p>
-- @return VirtualInterface structure as a key-value pair table
function M.VirtualInterface(args)
	assert(args, "You must provide an argument table when creating VirtualInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaceId"] = args["virtualInterfaceId"],
		["amazonSideAsn"] = args["amazonSideAsn"],
		["addressFamily"] = args["addressFamily"],
		["awsDeviceV2"] = args["awsDeviceV2"],
		["virtualInterfaceState"] = args["virtualInterfaceState"],
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["authKey"] = args["authKey"],
		["location"] = args["location"],
		["virtualGatewayId"] = args["virtualGatewayId"],
		["connectionId"] = args["connectionId"],
		["virtualInterfaceType"] = args["virtualInterfaceType"],
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["jumboFrameCapable"] = args["jumboFrameCapable"],
		["routeFilterPrefixes"] = args["routeFilterPrefixes"],
		["customerRouterConfig"] = args["customerRouterConfig"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
		["ownerAccount"] = args["ownerAccount"],
		["mtu"] = args["mtu"],
		["bgpPeers"] = args["bgpPeers"],
		["amazonAddress"] = args["amazonAddress"],
		["region"] = args["region"],
	}
	asserts.AssertVirtualInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then asserts.AssertTagValue(struct["value"]) end
	if struct["key"] then asserts.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Information about a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [TagValue] <p>The value.</p>
-- * key [TagKey] <p>The key.</p>
-- Required key: key
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
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVirtualInterfaceRequest = { ["virtualInterfaceId"] = true, nil }

function asserts.AssertDeleteVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVirtualInterfaceRequest[k], "DeleteVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- Required key: virtualInterfaceId
-- @return DeleteVirtualInterfaceRequest structure as a key-value pair table
function M.DeleteVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDeleteVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllocateHostedConnectionRequest = { ["ownerAccount"] = true, ["connectionId"] = true, ["bandwidth"] = true, ["vlan"] = true, ["connectionName"] = true, nil }

function asserts.AssertAllocateHostedConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateHostedConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["connectionName"], "Expected key connectionName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["connectionName"] then asserts.AssertConnectionName(struct["connectionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllocateHostedConnectionRequest[k], "AllocateHostedConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateHostedConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account ID of the customer for the connection.</p>
-- * connectionId [ConnectionId] <p>The ID of the interconnect or LAG.</p>
-- * bandwidth [Bandwidth] <p>The bandwidth of the hosted connection, in Mbps. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, and 500Mbps.</p>
-- * vlan [VLAN] <p>The dedicated VLAN provisioned to the hosted connection.</p>
-- * connectionName [ConnectionName] <p>The name of the hosted connection.</p>
-- Required key: connectionId
-- Required key: ownerAccount
-- Required key: bandwidth
-- Required key: connectionName
-- Required key: vlan
-- @return AllocateHostedConnectionRequest structure as a key-value pair table
function M.AllocateHostedConnectionRequest(args)
	assert(args, "You must provide an argument table when creating AllocateHostedConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["bandwidth"] = args["bandwidth"],
		["vlan"] = args["vlan"],
		["connectionName"] = args["connectionName"],
	}
	asserts.AssertAllocateHostedConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BGPPeer = { ["bgpStatus"] = true, ["customerAddress"] = true, ["addressFamily"] = true, ["authKey"] = true, ["bgpPeerState"] = true, ["amazonAddress"] = true, ["asn"] = true, ["awsDeviceV2"] = true, nil }

function asserts.AssertBGPPeer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BGPPeer to be of type 'table'")
	if struct["bgpStatus"] then asserts.AssertBGPStatus(struct["bgpStatus"]) end
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["bgpPeerState"] then asserts.AssertBGPPeerState(struct["bgpPeerState"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["awsDeviceV2"] then asserts.AssertAwsDeviceV2(struct["awsDeviceV2"]) end
	for k,_ in pairs(struct) do
		assert(keys.BGPPeer[k], "BGPPeer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BGPPeer
-- <p>Information about a BGP peer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bgpStatus [BGPStatus] <p>The status of the BGP peer. The following are the possible values:</p> <ul> <li> <p> <code>up</code>: The BGP peer is established. This state does not indicate the state of the routing function. Ensure that you are receiving routes over the BGP session.</p> </li> <li> <p> <code>down</code>: The BGP peer is down.</p> </li> <li> <p> <code>unknown</code>: The BGP peer status is unknown.</p> </li> </ul>
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * bgpPeerState [BGPPeerState] <p>The state of the BGP peer. The following are the possible values:</p> <ul> <li> <p> <code>verifying</code>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.</p> </li> <li> <p> <code>pending</code>: The BGP peer is created, and remains in this state until it is ready to be established.</p> </li> <li> <p> <code>available</code>: The BGP peer is ready to be established.</p> </li> <li> <p> <code>deleting</code>: The BGP peer is being deleted.</p> </li> <li> <p> <code>deleted</code>: The BGP peer is deleted and cannot be established.</p> </li> </ul>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * awsDeviceV2 [AwsDeviceV2] <p>The Direct Connect endpoint on which the BGP peer terminates.</p>
-- @return BGPPeer structure as a key-value pair table
function M.BGPPeer(args)
	assert(args, "You must provide an argument table when creating BGPPeer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["bgpStatus"] = args["bgpStatus"],
		["customerAddress"] = args["customerAddress"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["bgpPeerState"] = args["bgpPeerState"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["awsDeviceV2"] = args["awsDeviceV2"],
	}
	asserts.AssertBGPPeer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBGPPeerRequest = { ["newBGPPeer"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertCreateBGPPeerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBGPPeerRequest to be of type 'table'")
	if struct["newBGPPeer"] then asserts.AssertNewBGPPeer(struct["newBGPPeer"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBGPPeerRequest[k], "CreateBGPPeerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBGPPeerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newBGPPeer [NewBGPPeer] <p>Information about the BGP peer.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- @return CreateBGPPeerRequest structure as a key-value pair table
function M.CreateBGPPeerRequest(args)
	assert(args, "You must provide an argument table when creating CreateBGPPeerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["newBGPPeer"] = args["newBGPPeer"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertCreateBGPPeerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllocatePrivateVirtualInterfaceRequest = { ["ownerAccount"] = true, ["connectionId"] = true, ["newPrivateVirtualInterfaceAllocation"] = true, nil }

function asserts.AssertAllocatePrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocatePrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["newPrivateVirtualInterfaceAllocation"], "Expected key newPrivateVirtualInterfaceAllocation to exist in table")
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["newPrivateVirtualInterfaceAllocation"] then asserts.AssertNewPrivateVirtualInterfaceAllocation(struct["newPrivateVirtualInterfaceAllocation"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllocatePrivateVirtualInterfaceRequest[k], "AllocatePrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocatePrivateVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account that owns the virtual private interface.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection on which the private virtual interface is provisioned.</p>
-- * newPrivateVirtualInterfaceAllocation [NewPrivateVirtualInterfaceAllocation] <p>Information about the private virtual interface.</p>
-- Required key: connectionId
-- Required key: ownerAccount
-- Required key: newPrivateVirtualInterfaceAllocation
-- @return AllocatePrivateVirtualInterfaceRequest structure as a key-value pair table
function M.AllocatePrivateVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating AllocatePrivateVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["newPrivateVirtualInterfaceAllocation"] = args["newPrivateVirtualInterfaceAllocation"],
	}
	asserts.AssertAllocatePrivateVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDirectConnectGatewayAssociationResult = { ["directConnectGatewayAssociation"] = true, nil }

function asserts.AssertDeleteDirectConnectGatewayAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectConnectGatewayAssociationResult to be of type 'table'")
	if struct["directConnectGatewayAssociation"] then asserts.AssertDirectConnectGatewayAssociation(struct["directConnectGatewayAssociation"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectConnectGatewayAssociationResult[k], "DeleteDirectConnectGatewayAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectConnectGatewayAssociationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayAssociation [DirectConnectGatewayAssociation] <p>The association to be deleted.</p>
-- @return DeleteDirectConnectGatewayAssociationResult structure as a key-value pair table
function M.DeleteDirectConnectGatewayAssociationResult(args)
	assert(args, "You must provide an argument table when creating DeleteDirectConnectGatewayAssociationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayAssociation"] = args["directConnectGatewayAssociation"],
	}
	asserts.AssertDeleteDirectConnectGatewayAssociationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["resourceArn"] = true, ["tagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tagKeys"], "Expected key tagKeys to exist in table")
	if struct["resourceArn"] then asserts.AssertResourceArn(struct["resourceArn"]) end
	if struct["tagKeys"] then asserts.AssertTagKeyList(struct["tagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * tagKeys [TagKeyList] <p>The tag keys of the tags to remove.</p>
-- Required key: resourceArn
-- Required key: tagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tagKeys"] = args["tagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInterconnectLoaRequest = { ["interconnectId"] = true, ["providerName"] = true, ["loaContentType"] = true, nil }

function asserts.AssertDescribeInterconnectLoaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInterconnectLoaRequest to be of type 'table'")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	if struct["interconnectId"] then asserts.AssertInterconnectId(struct["interconnectId"]) end
	if struct["providerName"] then asserts.AssertProviderName(struct["providerName"]) end
	if struct["loaContentType"] then asserts.AssertLoaContentType(struct["loaContentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInterconnectLoaRequest[k], "DescribeInterconnectLoaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInterconnectLoaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>The ID of the interconnect.</p>
-- * providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
-- * loaContentType [LoaContentType] <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
-- Required key: interconnectId
-- @return DescribeInterconnectLoaRequest structure as a key-value pair table
function M.DescribeInterconnectLoaRequest(args)
	assert(args, "You must provide an argument table when creating DescribeInterconnectLoaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectId"] = args["interconnectId"],
		["providerName"] = args["providerName"],
		["loaContentType"] = args["loaContentType"],
	}
	asserts.AssertDescribeInterconnectLoaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Loa = { ["loaContentType"] = true, ["loaContent"] = true, nil }

function asserts.AssertLoa(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Loa to be of type 'table'")
	if struct["loaContentType"] then asserts.AssertLoaContentType(struct["loaContentType"]) end
	if struct["loaContent"] then asserts.AssertLoaContent(struct["loaContent"]) end
	for k,_ in pairs(struct) do
		assert(keys.Loa[k], "Loa contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Loa
-- <p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loaContentType [LoaContentType] <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
-- * loaContent [LoaContent] <p>The binary contents of the LOA-CFA document.</p>
-- @return Loa structure as a key-value pair table
function M.Loa(args)
	assert(args, "You must provide an argument table when creating Loa")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loaContentType"] = args["loaContentType"],
		["loaContent"] = args["loaContent"],
	}
	asserts.AssertLoa(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInterconnectsRequest = { ["interconnectId"] = true, nil }

function asserts.AssertDescribeInterconnectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInterconnectsRequest to be of type 'table'")
	if struct["interconnectId"] then asserts.AssertInterconnectId(struct["interconnectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInterconnectsRequest[k], "DescribeInterconnectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInterconnectsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>The ID of the interconnect.</p>
-- @return DescribeInterconnectsRequest structure as a key-value pair table
function M.DescribeInterconnectsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeInterconnectsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectId"] = args["interconnectId"],
	}
	asserts.AssertDescribeInterconnectsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateVirtualInterfaceRequest = { ["connectionId"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertAssociateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateVirtualInterfaceRequest[k], "AssociateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the LAG or connection.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- Required key: virtualInterfaceId
-- Required key: connectionId
-- @return AssociateVirtualInterfaceRequest structure as a key-value pair table
function M.AssociateVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating AssociateVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertAssociateVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllocatePublicVirtualInterfaceRequest = { ["ownerAccount"] = true, ["connectionId"] = true, ["newPublicVirtualInterfaceAllocation"] = true, nil }

function asserts.AssertAllocatePublicVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocatePublicVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["newPublicVirtualInterfaceAllocation"], "Expected key newPublicVirtualInterfaceAllocation to exist in table")
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["newPublicVirtualInterfaceAllocation"] then asserts.AssertNewPublicVirtualInterfaceAllocation(struct["newPublicVirtualInterfaceAllocation"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllocatePublicVirtualInterfaceRequest[k], "AllocatePublicVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocatePublicVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account that owns the public virtual interface.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection on which the public virtual interface is provisioned.</p>
-- * newPublicVirtualInterfaceAllocation [NewPublicVirtualInterfaceAllocation] <p>Information about the public virtual interface.</p>
-- Required key: connectionId
-- Required key: ownerAccount
-- Required key: newPublicVirtualInterfaceAllocation
-- @return AllocatePublicVirtualInterfaceRequest structure as a key-value pair table
function M.AllocatePublicVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating AllocatePublicVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["newPublicVirtualInterfaceAllocation"] = args["newPublicVirtualInterfaceAllocation"],
	}
	asserts.AssertAllocatePublicVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectConnectGatewaysResult = { ["nextToken"] = true, ["directConnectGateways"] = true, nil }

function asserts.AssertDescribeDirectConnectGatewaysResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectConnectGatewaysResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["directConnectGateways"] then asserts.AssertDirectConnectGatewayList(struct["directConnectGateways"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectConnectGatewaysResult[k], "DescribeDirectConnectGatewaysResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectConnectGatewaysResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The token to retrieve the next page.</p>
-- * directConnectGateways [DirectConnectGatewayList] <p>The Direct Connect gateways.</p>
-- @return DescribeDirectConnectGatewaysResult structure as a key-value pair table
function M.DescribeDirectConnectGatewaysResult(args)
	assert(args, "You must provide an argument table when creating DescribeDirectConnectGatewaysResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["directConnectGateways"] = args["directConnectGateways"],
	}
	asserts.AssertDescribeDirectConnectGatewaysResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConnectionsRequest = { ["connectionId"] = true, nil }

function asserts.AssertDescribeConnectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsRequest to be of type 'table'")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConnectionsRequest[k], "DescribeConnectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- @return DescribeConnectionsRequest structure as a key-value pair table
function M.DescribeConnectionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConnectionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDescribeConnectionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmPublicVirtualInterfaceResponse = { ["virtualInterfaceState"] = true, nil }

function asserts.AssertConfirmPublicVirtualInterfaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPublicVirtualInterfaceResponse to be of type 'table'")
	if struct["virtualInterfaceState"] then asserts.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmPublicVirtualInterfaceResponse[k], "ConfirmPublicVirtualInterfaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPublicVirtualInterfaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] <p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> </ul>
-- @return ConfirmPublicVirtualInterfaceResponse structure as a key-value pair table
function M.ConfirmPublicVirtualInterfaceResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmPublicVirtualInterfaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
	}
	asserts.AssertConfirmPublicVirtualInterfaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectConnectGatewaysRequest = { ["directConnectGatewayId"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeDirectConnectGatewaysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectConnectGatewaysRequest to be of type 'table'")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResultSetSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectConnectGatewaysRequest[k], "DescribeDirectConnectGatewaysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectConnectGatewaysRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * nextToken [PaginationToken] <p>The token provided in the previous call to retrieve the next page.</p>
-- * maxResults [MaxResultSetSize] <p>The maximum number of Direct Connect gateways to return per page.</p>
-- @return DescribeDirectConnectGatewaysRequest structure as a key-value pair table
function M.DescribeDirectConnectGatewaysRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDirectConnectGatewaysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeDirectConnectGatewaysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RouteFilterPrefix = { ["cidr"] = true, nil }

function asserts.AssertRouteFilterPrefix(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RouteFilterPrefix to be of type 'table'")
	if struct["cidr"] then asserts.AssertCIDR(struct["cidr"]) end
	for k,_ in pairs(struct) do
		assert(keys.RouteFilterPrefix[k], "RouteFilterPrefix contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RouteFilterPrefix
-- <p>Information about a route filter prefix that a customer can advertise through Border Gateway Protocol (BGP) over a public virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cidr [CIDR] <p>The CIDR block for the advertised route. Separate multiple routes using commas. An IPv6 CIDR must use /64 or shorter.</p>
-- @return RouteFilterPrefix structure as a key-value pair table
function M.RouteFilterPrefix(args)
	assert(args, "You must provide an argument table when creating RouteFilterPrefix")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cidr"] = args["cidr"],
	}
	asserts.AssertRouteFilterPrefix(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VirtualGateway = { ["virtualGatewayId"] = true, ["virtualGatewayState"] = true, nil }

function asserts.AssertVirtualGateway(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualGateway to be of type 'table'")
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["virtualGatewayState"] then asserts.AssertVirtualGatewayState(struct["virtualGatewayState"]) end
	for k,_ in pairs(struct) do
		assert(keys.VirtualGateway[k], "VirtualGateway contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualGateway
-- <p>Information about a virtual private gateway for a private virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway.</p>
-- * virtualGatewayState [VirtualGatewayState] <p>The state of the virtual private gateway. The following are the possible values:</p> <ul> <li> <p> <code>pending</code>: Initial state after creating the virtual private gateway.</p> </li> <li> <p> <code>available</code>: Ready for use by a private virtual interface.</p> </li> <li> <p> <code>deleting</code>: Initial state after deleting the virtual private gateway.</p> </li> <li> <p> <code>deleted</code>: The virtual private gateway is deleted. The private virtual interface is unable to send traffic over this gateway.</p> </li> </ul>
-- @return VirtualGateway structure as a key-value pair table
function M.VirtualGateway(args)
	assert(args, "You must provide an argument table when creating VirtualGateway")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualGatewayId"] = args["virtualGatewayId"],
		["virtualGatewayState"] = args["virtualGatewayState"],
	}
	asserts.AssertVirtualGateway(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NewBGPPeer = { ["authKey"] = true, ["amazonAddress"] = true, ["customerAddress"] = true, ["asn"] = true, ["addressFamily"] = true, nil }

function asserts.AssertNewBGPPeer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewBGPPeer to be of type 'table'")
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewBGPPeer[k], "NewBGPPeer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewBGPPeer
-- <p>Information about a new BGP peer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- @return NewBGPPeer structure as a key-value pair table
function M.NewBGPPeer(args)
	assert(args, "You must provide an argument table when creating NewBGPPeer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["authKey"] = args["authKey"],
		["amazonAddress"] = args["amazonAddress"],
		["customerAddress"] = args["customerAddress"],
		["asn"] = args["asn"],
		["addressFamily"] = args["addressFamily"],
	}
	asserts.AssertNewBGPPeer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoaRequest = { ["loaContentType"] = true, ["connectionId"] = true, ["providerName"] = true, nil }

function asserts.AssertDescribeLoaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoaRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["loaContentType"] then asserts.AssertLoaContentType(struct["loaContentType"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["providerName"] then asserts.AssertProviderName(struct["providerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoaRequest[k], "DescribeLoaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loaContentType [LoaContentType] <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
-- * connectionId [ConnectionId] <p>The ID of a connection, LAG, or interconnect.</p>
-- * providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
-- Required key: connectionId
-- @return DescribeLoaRequest structure as a key-value pair table
function M.DescribeLoaRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLoaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loaContentType"] = args["loaContentType"],
		["connectionId"] = args["connectionId"],
		["providerName"] = args["providerName"],
	}
	asserts.AssertDescribeLoaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBGPPeerRequest = { ["customerAddress"] = true, ["asn"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertDeleteBGPPeerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBGPPeerRequest to be of type 'table'")
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBGPPeerRequest[k], "DeleteBGPPeerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBGPPeerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p>
-- @return DeleteBGPPeerRequest structure as a key-value pair table
function M.DeleteBGPPeerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBGPPeerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["customerAddress"] = args["customerAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDeleteBGPPeerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectConnectGatewayAssociationsResult = { ["nextToken"] = true, ["directConnectGatewayAssociations"] = true, nil }

function asserts.AssertDescribeDirectConnectGatewayAssociationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectConnectGatewayAssociationsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["directConnectGatewayAssociations"] then asserts.AssertDirectConnectGatewayAssociationList(struct["directConnectGatewayAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectConnectGatewayAssociationsResult[k], "DescribeDirectConnectGatewayAssociationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectConnectGatewayAssociationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The token to retrieve the next page.</p>
-- * directConnectGatewayAssociations [DirectConnectGatewayAssociationList] <p>The associations.</p>
-- @return DescribeDirectConnectGatewayAssociationsResult structure as a key-value pair table
function M.DescribeDirectConnectGatewayAssociationsResult(args)
	assert(args, "You must provide an argument table when creating DescribeDirectConnectGatewayAssociationsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["directConnectGatewayAssociations"] = args["directConnectGatewayAssociations"],
	}
	asserts.AssertDescribeDirectConnectGatewayAssociationsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Connection = { ["partnerName"] = true, ["awsDevice"] = true, ["vlan"] = true, ["ownerAccount"] = true, ["connectionId"] = true, ["lagId"] = true, ["jumboFrameCapable"] = true, ["connectionState"] = true, ["bandwidth"] = true, ["location"] = true, ["connectionName"] = true, ["loaIssueTime"] = true, ["region"] = true, ["awsDeviceV2"] = true, nil }

function asserts.AssertConnection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connection to be of type 'table'")
	if struct["partnerName"] then asserts.AssertPartnerName(struct["partnerName"]) end
	if struct["awsDevice"] then asserts.AssertAwsDevice(struct["awsDevice"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["jumboFrameCapable"] then asserts.AssertJumboFrameCapable(struct["jumboFrameCapable"]) end
	if struct["connectionState"] then asserts.AssertConnectionState(struct["connectionState"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["connectionName"] then asserts.AssertConnectionName(struct["connectionName"]) end
	if struct["loaIssueTime"] then asserts.AssertLoaIssueTime(struct["loaIssueTime"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	if struct["awsDeviceV2"] then asserts.AssertAwsDeviceV2(struct["awsDeviceV2"]) end
	for k,_ in pairs(struct) do
		assert(keys.Connection[k], "Connection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connection
-- <p>Information about an AWS Direct Connect connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * partnerName [PartnerName] <p>The name of the AWS Direct Connect service provider associated with the connection.</p>
-- * awsDevice [AwsDevice] <p>The Direct Connect endpoint on which the physical connection terminates.</p>
-- * vlan [VLAN] <p>The ID of the VLAN.</p>
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account that owns the connection.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- * jumboFrameCapable [JumboFrameCapable] <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
-- * connectionState [ConnectionState] <p>The state of the connection. The following are the possible values:</p> <ul> <li> <p> <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p> </li> <li> <p> <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The connection has been approved and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up and the connection is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The connection is being deleted.</p> </li> <li> <p> <code>deleted</code>: The connection has been deleted.</p> </li> <li> <p> <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p> </li> </ul>
-- * bandwidth [Bandwidth] <p>The bandwidth of the connection.</p>
-- * location [LocationCode] <p>The location of the connection.</p>
-- * connectionName [ConnectionName] <p>The name of the connection.</p>
-- * loaIssueTime [LoaIssueTime] <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
-- * region [Region] <p>The AWS Region where the connection is located.</p>
-- * awsDeviceV2 [AwsDeviceV2] <p>The Direct Connect endpoint on which the physical connection terminates.</p>
-- @return Connection structure as a key-value pair table
function M.Connection(args)
	assert(args, "You must provide an argument table when creating Connection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["partnerName"] = args["partnerName"],
		["awsDevice"] = args["awsDevice"],
		["vlan"] = args["vlan"],
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["lagId"] = args["lagId"],
		["jumboFrameCapable"] = args["jumboFrameCapable"],
		["connectionState"] = args["connectionState"],
		["bandwidth"] = args["bandwidth"],
		["location"] = args["location"],
		["connectionName"] = args["connectionName"],
		["loaIssueTime"] = args["loaIssueTime"],
		["region"] = args["region"],
		["awsDeviceV2"] = args["awsDeviceV2"],
	}
	asserts.AssertConnection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NewPrivateVirtualInterfaceAllocation = { ["customerAddress"] = true, ["vlan"] = true, ["addressFamily"] = true, ["mtu"] = true, ["authKey"] = true, ["amazonAddress"] = true, ["asn"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertNewPrivateVirtualInterfaceAllocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPrivateVirtualInterfaceAllocation to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["mtu"] then asserts.AssertMTU(struct["mtu"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewPrivateVirtualInterfaceAllocation[k], "NewPrivateVirtualInterfaceAllocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPrivateVirtualInterfaceAllocation
-- <p>Information about a private virtual interface to be provisioned on a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * vlan [VLAN] <p>The ID of the VLAN.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- * mtu [MTU] <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * virtualInterfaceName [VirtualInterfaceName] <p>The name of the virtual interface assigned by the customer network.</p>
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPrivateVirtualInterfaceAllocation structure as a key-value pair table
function M.NewPrivateVirtualInterfaceAllocation(args)
	assert(args, "You must provide an argument table when creating NewPrivateVirtualInterfaceAllocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["mtu"] = args["mtu"],
		["authKey"] = args["authKey"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPrivateVirtualInterfaceAllocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConnectionRequest = { ["connectionId"] = true, nil }

function asserts.AssertDeleteConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConnectionRequest[k], "DeleteConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- Required key: connectionId
-- @return DeleteConnectionRequest structure as a key-value pair table
function M.DeleteConnectionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDeleteConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectConnectGatewayAttachmentsResult = { ["directConnectGatewayAttachments"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeDirectConnectGatewayAttachmentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectConnectGatewayAttachmentsResult to be of type 'table'")
	if struct["directConnectGatewayAttachments"] then asserts.AssertDirectConnectGatewayAttachmentList(struct["directConnectGatewayAttachments"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectConnectGatewayAttachmentsResult[k], "DescribeDirectConnectGatewayAttachmentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectConnectGatewayAttachmentsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayAttachments [DirectConnectGatewayAttachmentList] <p>The attachments.</p>
-- * nextToken [PaginationToken] <p>The token to retrieve the next page.</p>
-- @return DescribeDirectConnectGatewayAttachmentsResult structure as a key-value pair table
function M.DescribeDirectConnectGatewayAttachmentsResult(args)
	assert(args, "You must provide an argument table when creating DescribeDirectConnectGatewayAttachmentsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayAttachments"] = args["directConnectGatewayAttachments"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeDirectConnectGatewayAttachmentsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsRequest = { ["resourceArns"] = true, nil }

function asserts.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	assert(struct["resourceArns"], "Expected key resourceArns to exist in table")
	if struct["resourceArns"] then asserts.AssertResourceArnList(struct["resourceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsRequest[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArns [ResourceArnList] <p>The Amazon Resource Names (ARNs) of the resources.</p>
-- Required key: resourceArns
-- @return DescribeTagsRequest structure as a key-value pair table
function M.DescribeTagsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArns"] = args["resourceArns"],
	}
	asserts.AssertDescribeTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NewPublicVirtualInterface = { ["customerAddress"] = true, ["vlan"] = true, ["addressFamily"] = true, ["authKey"] = true, ["routeFilterPrefixes"] = true, ["amazonAddress"] = true, ["asn"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertNewPublicVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPublicVirtualInterface to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["routeFilterPrefixes"] then asserts.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewPublicVirtualInterface[k], "NewPublicVirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPublicVirtualInterface
-- <p>Information about a public virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * vlan [VLAN] <p>The ID of the VLAN.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * routeFilterPrefixes [RouteFilterPrefixList] <p>The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.</p>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * virtualInterfaceName [VirtualInterfaceName] <p>The name of the virtual interface assigned by the customer network.</p>
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPublicVirtualInterface structure as a key-value pair table
function M.NewPublicVirtualInterface(args)
	assert(args, "You must provide an argument table when creating NewPublicVirtualInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["routeFilterPrefixes"] = args["routeFilterPrefixes"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPublicVirtualInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Locations = { ["locations"] = true, nil }

function asserts.AssertLocations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Locations to be of type 'table'")
	if struct["locations"] then asserts.AssertLocationList(struct["locations"]) end
	for k,_ in pairs(struct) do
		assert(keys.Locations[k], "Locations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Locations
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locations [LocationList] <p>The locations.</p>
-- @return Locations structure as a key-value pair table
function M.Locations(args)
	assert(args, "You must provide an argument table when creating Locations")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["locations"] = args["locations"],
	}
	asserts.AssertLocations(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllocateConnectionOnInterconnectRequest = { ["interconnectId"] = true, ["bandwidth"] = true, ["vlan"] = true, ["ownerAccount"] = true, ["connectionName"] = true, nil }

function asserts.AssertAllocateConnectionOnInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateConnectionOnInterconnectRequest to be of type 'table'")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["connectionName"], "Expected key connectionName to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	if struct["interconnectId"] then asserts.AssertInterconnectId(struct["interconnectId"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionName"] then asserts.AssertConnectionName(struct["connectionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllocateConnectionOnInterconnectRequest[k], "AllocateConnectionOnInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateConnectionOnInterconnectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>The ID of the interconnect on which the connection will be provisioned. For example, dxcon-456abc78.</p>
-- * bandwidth [Bandwidth] <p>The bandwidth of the connection, in Mbps. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, and 500Mbps.</p>
-- * vlan [VLAN] <p>The dedicated VLAN provisioned to the connection.</p>
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account of the customer for whom the connection will be provisioned.</p>
-- * connectionName [ConnectionName] <p>The name of the provisioned connection.</p>
-- Required key: bandwidth
-- Required key: connectionName
-- Required key: ownerAccount
-- Required key: interconnectId
-- Required key: vlan
-- @return AllocateConnectionOnInterconnectRequest structure as a key-value pair table
function M.AllocateConnectionOnInterconnectRequest(args)
	assert(args, "You must provide an argument table when creating AllocateConnectionOnInterconnectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectId"] = args["interconnectId"],
		["bandwidth"] = args["bandwidth"],
		["vlan"] = args["vlan"],
		["ownerAccount"] = args["ownerAccount"],
		["connectionName"] = args["connectionName"],
	}
	asserts.AssertAllocateConnectionOnInterconnectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceTag = { ["resourceArn"] = true, ["tags"] = true, nil }

function asserts.AssertResourceTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTag to be of type 'table'")
	if struct["resourceArn"] then asserts.AssertResourceArn(struct["resourceArn"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTag[k], "ResourceTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTag
-- <p>Information about a tag associated with an AWS Direct Connect resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * tags [TagList] <p>The tags.</p>
-- @return ResourceTag structure as a key-value pair table
function M.ResourceTag(args)
	assert(args, "You must provide an argument table when creating ResourceTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertResourceTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateLagRequest = { ["lagId"] = true, ["minimumLinks"] = true, ["lagName"] = true, nil }

function asserts.AssertUpdateLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLagRequest to be of type 'table'")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["minimumLinks"] then asserts.AssertCount(struct["minimumLinks"]) end
	if struct["lagName"] then asserts.AssertLagName(struct["lagName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLagRequest[k], "UpdateLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLagRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- * minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>
-- * lagName [LagName] <p>The name of the LAG.</p>
-- Required key: lagId
-- @return UpdateLagRequest structure as a key-value pair table
function M.UpdateLagRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLagRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lagId"] = args["lagId"],
		["minimumLinks"] = args["minimumLinks"],
		["lagName"] = args["lagName"],
	}
	asserts.AssertUpdateLagRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePublicVirtualInterfaceRequest = { ["newPublicVirtualInterface"] = true, ["connectionId"] = true, nil }

function asserts.AssertCreatePublicVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePublicVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["newPublicVirtualInterface"], "Expected key newPublicVirtualInterface to exist in table")
	if struct["newPublicVirtualInterface"] then asserts.AssertNewPublicVirtualInterface(struct["newPublicVirtualInterface"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePublicVirtualInterfaceRequest[k], "CreatePublicVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePublicVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newPublicVirtualInterface [NewPublicVirtualInterface] <p>Information about the public virtual interface.</p>
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- Required key: connectionId
-- Required key: newPublicVirtualInterface
-- @return CreatePublicVirtualInterfaceRequest structure as a key-value pair table
function M.CreatePublicVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating CreatePublicVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["newPublicVirtualInterface"] = args["newPublicVirtualInterface"],
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertCreatePublicVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsResponse = { ["resourceTags"] = true, nil }

function asserts.AssertDescribeTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResponse to be of type 'table'")
	if struct["resourceTags"] then asserts.AssertResourceTagList(struct["resourceTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsResponse[k], "DescribeTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceTags [ResourceTagList] <p>Information about the tags.</p>
-- @return DescribeTagsResponse structure as a key-value pair table
function M.DescribeTagsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceTags"] = args["resourceTags"],
	}
	asserts.AssertDescribeTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectConnectGatewayAssociation = { ["associationState"] = true, ["virtualGatewayOwnerAccount"] = true, ["directConnectGatewayId"] = true, ["stateChangeError"] = true, ["virtualGatewayRegion"] = true, ["virtualGatewayId"] = true, nil }

function asserts.AssertDirectConnectGatewayAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectGatewayAssociation to be of type 'table'")
	if struct["associationState"] then asserts.AssertDirectConnectGatewayAssociationState(struct["associationState"]) end
	if struct["virtualGatewayOwnerAccount"] then asserts.AssertOwnerAccount(struct["virtualGatewayOwnerAccount"]) end
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["stateChangeError"] then asserts.AssertStateChangeError(struct["stateChangeError"]) end
	if struct["virtualGatewayRegion"] then asserts.AssertVirtualGatewayRegion(struct["virtualGatewayRegion"]) end
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectConnectGatewayAssociation[k], "DirectConnectGatewayAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectGatewayAssociation
-- <p>Information about an association between a Direct Connect gateway and a virtual private gateway.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * associationState [DirectConnectGatewayAssociationState] <p>The state of the association. The following are the possible values:</p> <ul> <li> <p> <code>associating</code>: The initial state after calling <a>CreateDirectConnectGatewayAssociation</a>.</p> </li> <li> <p> <code>associated</code>: The Direct Connect gateway and virtual private gateway are successfully associated and ready to pass traffic.</p> </li> <li> <p> <code>disassociating</code>: The initial state after calling <a>DeleteDirectConnectGatewayAssociation</a>.</p> </li> <li> <p> <code>disassociated</code>: The virtual private gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway is stopped.</p> </li> </ul>
-- * virtualGatewayOwnerAccount [OwnerAccount] <p>The ID of the AWS account that owns the virtual private gateway.</p>
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * stateChangeError [StateChangeError] <p>The error message if the state of an object failed to advance.</p>
-- * virtualGatewayRegion [VirtualGatewayRegion] <p>The AWS Region where the virtual private gateway is located.</p>
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>
-- @return DirectConnectGatewayAssociation structure as a key-value pair table
function M.DirectConnectGatewayAssociation(args)
	assert(args, "You must provide an argument table when creating DirectConnectGatewayAssociation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["associationState"] = args["associationState"],
		["virtualGatewayOwnerAccount"] = args["virtualGatewayOwnerAccount"],
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["stateChangeError"] = args["stateChangeError"],
		["virtualGatewayRegion"] = args["virtualGatewayRegion"],
		["virtualGatewayId"] = args["virtualGatewayId"],
	}
	asserts.AssertDirectConnectGatewayAssociation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBGPPeerResponse = { ["virtualInterface"] = true, nil }

function asserts.AssertCreateBGPPeerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBGPPeerResponse to be of type 'table'")
	if struct["virtualInterface"] then asserts.AssertVirtualInterface(struct["virtualInterface"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBGPPeerResponse[k], "CreateBGPPeerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBGPPeerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterface [VirtualInterface] <p>The virtual interface.</p>
-- @return CreateBGPPeerResponse structure as a key-value pair table
function M.CreateBGPPeerResponse(args)
	assert(args, "You must provide an argument table when creating CreateBGPPeerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterface"] = args["virtualInterface"],
	}
	asserts.AssertCreateBGPPeerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVirtualInterfaceResponse = { ["virtualInterfaceState"] = true, nil }

function asserts.AssertDeleteVirtualInterfaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVirtualInterfaceResponse to be of type 'table'")
	if struct["virtualInterfaceState"] then asserts.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVirtualInterfaceResponse[k], "DeleteVirtualInterfaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVirtualInterfaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] <p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> </ul>
-- @return DeleteVirtualInterfaceResponse structure as a key-value pair table
function M.DeleteVirtualInterfaceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteVirtualInterfaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
	}
	asserts.AssertDeleteVirtualInterfaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateVirtualInterfaceAttributesRequest = { ["mtu"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertUpdateVirtualInterfaceAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVirtualInterfaceAttributesRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	if struct["mtu"] then asserts.AssertMTU(struct["mtu"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVirtualInterfaceAttributesRequest[k], "UpdateVirtualInterfaceAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVirtualInterfaceAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * mtu [MTU] <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual private interface.</p>
-- Required key: virtualInterfaceId
-- @return UpdateVirtualInterfaceAttributesRequest structure as a key-value pair table
function M.UpdateVirtualInterfaceAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateVirtualInterfaceAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["mtu"] = args["mtu"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertUpdateVirtualInterfaceAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectConnectGateway = { ["directConnectGatewayId"] = true, ["stateChangeError"] = true, ["directConnectGatewayState"] = true, ["ownerAccount"] = true, ["amazonSideAsn"] = true, ["directConnectGatewayName"] = true, nil }

function asserts.AssertDirectConnectGateway(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectGateway to be of type 'table'")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["stateChangeError"] then asserts.AssertStateChangeError(struct["stateChangeError"]) end
	if struct["directConnectGatewayState"] then asserts.AssertDirectConnectGatewayState(struct["directConnectGatewayState"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["amazonSideAsn"] then asserts.AssertLongAsn(struct["amazonSideAsn"]) end
	if struct["directConnectGatewayName"] then asserts.AssertDirectConnectGatewayName(struct["directConnectGatewayName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectConnectGateway[k], "DirectConnectGateway contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectGateway
-- <p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateways.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * stateChangeError [StateChangeError] <p>The error message if the state of an object failed to advance.</p>
-- * directConnectGatewayState [DirectConnectGatewayState] <p>The state of the Direct Connect gateway. The following are the possible values:</p> <ul> <li> <p> <code>pending</code>: The initial state after calling <a>CreateDirectConnectGateway</a>.</p> </li> <li> <p> <code>available</code>: The Direct Connect gateway is ready for use.</p> </li> <li> <p> <code>deleting</code>: The initial state after calling <a>DeleteDirectConnectGateway</a>.</p> </li> <li> <p> <code>deleted</code>: The Direct Connect gateway is deleted and cannot pass traffic.</p> </li> </ul>
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account that owns the Direct Connect gateway.</p>
-- * amazonSideAsn [LongAsn] <p>The autonomous system number (ASN) for the Amazon side of the connection.</p>
-- * directConnectGatewayName [DirectConnectGatewayName] <p>The name of the Direct Connect gateway.</p>
-- @return DirectConnectGateway structure as a key-value pair table
function M.DirectConnectGateway(args)
	assert(args, "You must provide an argument table when creating DirectConnectGateway")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["stateChangeError"] = args["stateChangeError"],
		["directConnectGatewayState"] = args["directConnectGatewayState"],
		["ownerAccount"] = args["ownerAccount"],
		["amazonSideAsn"] = args["amazonSideAsn"],
		["directConnectGatewayName"] = args["directConnectGatewayName"],
	}
	asserts.AssertDirectConnectGateway(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NewPublicVirtualInterfaceAllocation = { ["customerAddress"] = true, ["vlan"] = true, ["addressFamily"] = true, ["authKey"] = true, ["routeFilterPrefixes"] = true, ["amazonAddress"] = true, ["asn"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertNewPublicVirtualInterfaceAllocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPublicVirtualInterfaceAllocation to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["routeFilterPrefixes"] then asserts.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewPublicVirtualInterfaceAllocation[k], "NewPublicVirtualInterfaceAllocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPublicVirtualInterfaceAllocation
-- <p>Information about a public virtual interface to be provisioned on a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * vlan [VLAN] <p>The ID of the VLAN.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * routeFilterPrefixes [RouteFilterPrefixList] <p>The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.</p>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * virtualInterfaceName [VirtualInterfaceName] <p>The name of the virtual interface assigned by the customer network.</p>
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPublicVirtualInterfaceAllocation structure as a key-value pair table
function M.NewPublicVirtualInterfaceAllocation(args)
	assert(args, "You must provide an argument table when creating NewPublicVirtualInterfaceAllocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["routeFilterPrefixes"] = args["routeFilterPrefixes"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPublicVirtualInterfaceAllocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Lag = { ["awsDevice"] = true, ["allowsHostedConnections"] = true, ["numberOfConnections"] = true, ["lagState"] = true, ["ownerAccount"] = true, ["jumboFrameCapable"] = true, ["lagName"] = true, ["connections"] = true, ["lagId"] = true, ["minimumLinks"] = true, ["connectionsBandwidth"] = true, ["region"] = true, ["awsDeviceV2"] = true, ["location"] = true, nil }

function asserts.AssertLag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lag to be of type 'table'")
	if struct["awsDevice"] then asserts.AssertAwsDevice(struct["awsDevice"]) end
	if struct["allowsHostedConnections"] then asserts.AssertBooleanFlag(struct["allowsHostedConnections"]) end
	if struct["numberOfConnections"] then asserts.AssertCount(struct["numberOfConnections"]) end
	if struct["lagState"] then asserts.AssertLagState(struct["lagState"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["jumboFrameCapable"] then asserts.AssertJumboFrameCapable(struct["jumboFrameCapable"]) end
	if struct["lagName"] then asserts.AssertLagName(struct["lagName"]) end
	if struct["connections"] then asserts.AssertConnectionList(struct["connections"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["minimumLinks"] then asserts.AssertCount(struct["minimumLinks"]) end
	if struct["connectionsBandwidth"] then asserts.AssertBandwidth(struct["connectionsBandwidth"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	if struct["awsDeviceV2"] then asserts.AssertAwsDeviceV2(struct["awsDeviceV2"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.Lag[k], "Lag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lag
-- <p>Information about a link aggregation group (LAG).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * awsDevice [AwsDevice] <p>The Direct Connect endpoint that hosts the LAG.</p>
-- * allowsHostedConnections [BooleanFlag] <p>Indicates whether the LAG can host other connections.</p>
-- * numberOfConnections [Count] <p>The number of physical connections bundled by the LAG, up to a maximum of 10.</p>
-- * lagState [LagState] <p>The state of the LAG. The following are the possible values:</p> <ul> <li> <p> <code>requested</code>: The initial state of a LAG. The LAG stays in the requested state until the Letter of Authorization (LOA) is available.</p> </li> <li> <p> <code>pending</code>: The LAG has been approved and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is established and the LAG is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The LAG is being deleted.</p> </li> <li> <p> <code>deleted</code>: The LAG is deleted.</p> </li> </ul>
-- * ownerAccount [OwnerAccount] <p>The ID of the AWS account that owns the LAG.</p>
-- * jumboFrameCapable [JumboFrameCapable] <p>Indicates whether jumbo frames (9001 MTU) are supported.</p>
-- * lagName [LagName] <p>The name of the LAG.</p>
-- * connections [ConnectionList] <p>The connections bundled by the LAG.</p>
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- * minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>
-- * connectionsBandwidth [Bandwidth] <p>The individual bandwidth of the physical connections bundled by the LAG. The possible values are 1Gbps and 10Gbps.</p>
-- * region [Region] <p>The AWS Region where the connection is located.</p>
-- * awsDeviceV2 [AwsDeviceV2] <p>The Direct Connect endpoint that hosts the LAG.</p>
-- * location [LocationCode] <p>The location of the LAG.</p>
-- @return Lag structure as a key-value pair table
function M.Lag(args)
	assert(args, "You must provide an argument table when creating Lag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["awsDevice"] = args["awsDevice"],
		["allowsHostedConnections"] = args["allowsHostedConnections"],
		["numberOfConnections"] = args["numberOfConnections"],
		["lagState"] = args["lagState"],
		["ownerAccount"] = args["ownerAccount"],
		["jumboFrameCapable"] = args["jumboFrameCapable"],
		["lagName"] = args["lagName"],
		["connections"] = args["connections"],
		["lagId"] = args["lagId"],
		["minimumLinks"] = args["minimumLinks"],
		["connectionsBandwidth"] = args["connectionsBandwidth"],
		["region"] = args["region"],
		["awsDeviceV2"] = args["awsDeviceV2"],
		["location"] = args["location"],
	}
	asserts.AssertLag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmPrivateVirtualInterfaceResponse = { ["virtualInterfaceState"] = true, nil }

function asserts.AssertConfirmPrivateVirtualInterfaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPrivateVirtualInterfaceResponse to be of type 'table'")
	if struct["virtualInterfaceState"] then asserts.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmPrivateVirtualInterfaceResponse[k], "ConfirmPrivateVirtualInterfaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPrivateVirtualInterfaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] <p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> </ul>
-- @return ConfirmPrivateVirtualInterfaceResponse structure as a key-value pair table
function M.ConfirmPrivateVirtualInterfaceResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmPrivateVirtualInterfaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
	}
	asserts.AssertConfirmPrivateVirtualInterfaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateHostedConnectionRequest = { ["connectionId"] = true, ["parentConnectionId"] = true, nil }

function asserts.AssertAssociateHostedConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateHostedConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["parentConnectionId"], "Expected key parentConnectionId to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["parentConnectionId"] then asserts.AssertConnectionId(struct["parentConnectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateHostedConnectionRequest[k], "AssociateHostedConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateHostedConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the hosted connection.</p>
-- * parentConnectionId [ConnectionId] <p>The ID of the interconnect or the LAG.</p>
-- Required key: connectionId
-- Required key: parentConnectionId
-- @return AssociateHostedConnectionRequest structure as a key-value pair table
function M.AssociateHostedConnectionRequest(args)
	assert(args, "You must provide an argument table when creating AssociateHostedConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
		["parentConnectionId"] = args["parentConnectionId"],
	}
	asserts.AssertAssociateHostedConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInterconnectRequest = { ["interconnectName"] = true, ["bandwidth"] = true, ["lagId"] = true, ["location"] = true, nil }

function asserts.AssertCreateInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInterconnectRequest to be of type 'table'")
	assert(struct["interconnectName"], "Expected key interconnectName to exist in table")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	if struct["interconnectName"] then asserts.AssertInterconnectName(struct["interconnectName"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInterconnectRequest[k], "CreateInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInterconnectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectName [InterconnectName] <p>The name of the interconnect.</p>
-- * bandwidth [Bandwidth] <p>The port bandwidth, in Gbps. The possible values are 1 and 10.</p>
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- * location [LocationCode] <p>The location of the interconnect.</p>
-- Required key: interconnectName
-- Required key: bandwidth
-- Required key: location
-- @return CreateInterconnectRequest structure as a key-value pair table
function M.CreateInterconnectRequest(args)
	assert(args, "You must provide an argument table when creating CreateInterconnectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["interconnectName"] = args["interconnectName"],
		["bandwidth"] = args["bandwidth"],
		["lagId"] = args["lagId"],
		["location"] = args["location"],
	}
	asserts.AssertCreateInterconnectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VirtualGateways = { ["virtualGateways"] = true, nil }

function asserts.AssertVirtualGateways(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualGateways to be of type 'table'")
	if struct["virtualGateways"] then asserts.AssertVirtualGatewayList(struct["virtualGateways"]) end
	for k,_ in pairs(struct) do
		assert(keys.VirtualGateways[k], "VirtualGateways contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualGateways
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGateways [VirtualGatewayList] <p>The virtual private gateways.</p>
-- @return VirtualGateways structure as a key-value pair table
function M.VirtualGateways(args)
	assert(args, "You must provide an argument table when creating VirtualGateways")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualGateways"] = args["virtualGateways"],
	}
	asserts.AssertVirtualGateways(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConnectionRequest = { ["lagId"] = true, ["bandwidth"] = true, ["location"] = true, ["connectionName"] = true, nil }

function asserts.AssertCreateConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConnectionRequest to be of type 'table'")
	assert(struct["location"], "Expected key location to exist in table")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["connectionName"], "Expected key connectionName to exist in table")
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["connectionName"] then asserts.AssertConnectionName(struct["connectionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConnectionRequest[k], "CreateConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- * bandwidth [Bandwidth] <p>The bandwidth of the connection.</p>
-- * location [LocationCode] <p>The location of the connection.</p>
-- * connectionName [ConnectionName] <p>The name of the connection.</p>
-- Required key: location
-- Required key: bandwidth
-- Required key: connectionName
-- @return CreateConnectionRequest structure as a key-value pair table
function M.CreateConnectionRequest(args)
	assert(args, "You must provide an argument table when creating CreateConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lagId"] = args["lagId"],
		["bandwidth"] = args["bandwidth"],
		["location"] = args["location"],
		["connectionName"] = args["connectionName"],
	}
	asserts.AssertCreateConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NewPrivateVirtualInterface = { ["virtualGatewayId"] = true, ["customerAddress"] = true, ["vlan"] = true, ["addressFamily"] = true, ["directConnectGatewayId"] = true, ["mtu"] = true, ["authKey"] = true, ["amazonAddress"] = true, ["asn"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertNewPrivateVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPrivateVirtualInterface to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["mtu"] then asserts.AssertMTU(struct["mtu"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewPrivateVirtualInterface[k], "NewPrivateVirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPrivateVirtualInterface
-- <p>Information about a private virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway.</p>
-- * customerAddress [CustomerAddress] <p>The IP address assigned to the customer interface.</p>
-- * vlan [VLAN] <p>The ID of the VLAN.</p>
-- * addressFamily [AddressFamily] <p>The address family for the BGP peer.</p>
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * mtu [MTU] <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
-- * authKey [BGPAuthKey] <p>The authentication key for BGP configuration.</p>
-- * amazonAddress [AmazonAddress] <p>The IP address assigned to the Amazon interface.</p>
-- * asn [ASN] <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
-- * virtualInterfaceName [VirtualInterfaceName] <p>The name of the virtual interface assigned by the customer network.</p>
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPrivateVirtualInterface structure as a key-value pair table
function M.NewPrivateVirtualInterface(args)
	assert(args, "You must provide an argument table when creating NewPrivateVirtualInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualGatewayId"] = args["virtualGatewayId"],
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["mtu"] = args["mtu"],
		["authKey"] = args["authKey"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPrivateVirtualInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDirectConnectGatewayAssociationsRequest = { ["directConnectGatewayId"] = true, ["nextToken"] = true, ["virtualGatewayId"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeDirectConnectGatewayAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDirectConnectGatewayAssociationsRequest to be of type 'table'")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["maxResults"] then asserts.AssertMaxResultSetSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDirectConnectGatewayAssociationsRequest[k], "DescribeDirectConnectGatewayAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDirectConnectGatewayAssociationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- * nextToken [PaginationToken] <p>The token provided in the previous call to retrieve the next page.</p>
-- * virtualGatewayId [VirtualGatewayId] <p>The ID of the virtual private gateway.</p>
-- * maxResults [MaxResultSetSize] <p>The maximum number of associations to return per page.</p>
-- @return DescribeDirectConnectGatewayAssociationsRequest structure as a key-value pair table
function M.DescribeDirectConnectGatewayAssociationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDirectConnectGatewayAssociationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
		["nextToken"] = args["nextToken"],
		["virtualGatewayId"] = args["virtualGatewayId"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeDirectConnectGatewayAssociationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VirtualInterfaces = { ["virtualInterfaces"] = true, nil }

function asserts.AssertVirtualInterfaces(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualInterfaces to be of type 'table'")
	if struct["virtualInterfaces"] then asserts.AssertVirtualInterfaceList(struct["virtualInterfaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.VirtualInterfaces[k], "VirtualInterfaces contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualInterfaces
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaces [VirtualInterfaceList] <p>The virtual interfaces</p>
-- @return VirtualInterfaces structure as a key-value pair table
function M.VirtualInterfaces(args)
	assert(args, "You must provide an argument table when creating VirtualInterfaces")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["virtualInterfaces"] = args["virtualInterfaces"],
	}
	asserts.AssertVirtualInterfaces(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["resourceArn"] = true, ["tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["resourceArn"] then asserts.AssertResourceArn(struct["resourceArn"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- * tags [TagList] <p>The tags to add.</p>
-- Required key: resourceArn
-- Required key: tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLagRequest = { ["lagId"] = true, nil }

function asserts.AssertDeleteLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLagRequest to be of type 'table'")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLagRequest[k], "DeleteLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLagRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG.</p>
-- Required key: lagId
-- @return DeleteLagRequest structure as a key-value pair table
function M.DeleteLagRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLagRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lagId"] = args["lagId"],
	}
	asserts.AssertDeleteLagRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDirectConnectGatewayRequest = { ["directConnectGatewayId"] = true, nil }

function asserts.AssertDeleteDirectConnectGatewayRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectConnectGatewayRequest to be of type 'table'")
	assert(struct["directConnectGatewayId"], "Expected key directConnectGatewayId to exist in table")
	if struct["directConnectGatewayId"] then asserts.AssertDirectConnectGatewayId(struct["directConnectGatewayId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectConnectGatewayRequest[k], "DeleteDirectConnectGatewayRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectConnectGatewayRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * directConnectGatewayId [DirectConnectGatewayId] <p>The ID of the Direct Connect gateway.</p>
-- Required key: directConnectGatewayId
-- @return DeleteDirectConnectGatewayRequest structure as a key-value pair table
function M.DeleteDirectConnectGatewayRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDirectConnectGatewayRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["directConnectGatewayId"] = args["directConnectGatewayId"],
	}
	asserts.AssertDeleteDirectConnectGatewayRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeHostedConnectionsRequest = { ["connectionId"] = true, nil }

function asserts.AssertDescribeHostedConnectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHostedConnectionsRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHostedConnectionsRequest[k], "DescribeHostedConnectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHostedConnectionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the interconnect or LAG.</p>
-- Required key: connectionId
-- @return DescribeHostedConnectionsRequest structure as a key-value pair table
function M.DescribeHostedConnectionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeHostedConnectionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDescribeHostedConnectionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmConnectionResponse = { ["connectionState"] = true, nil }

function asserts.AssertConfirmConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmConnectionResponse to be of type 'table'")
	if struct["connectionState"] then asserts.AssertConnectionState(struct["connectionState"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmConnectionResponse[k], "ConfirmConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmConnectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionState [ConnectionState] <p>The state of the connection. The following are the possible values:</p> <ul> <li> <p> <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p> </li> <li> <p> <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The connection has been approved and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up and the connection is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The connection is being deleted.</p> </li> <li> <p> <code>deleted</code>: The connection has been deleted.</p> </li> <li> <p> <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p> </li> </ul>
-- @return ConfirmConnectionResponse structure as a key-value pair table
function M.ConfirmConnectionResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionState"] = args["connectionState"],
	}
	asserts.AssertConfirmConnectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePrivateVirtualInterfaceRequest = { ["connectionId"] = true, ["newPrivateVirtualInterface"] = true, nil }

function asserts.AssertCreatePrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["newPrivateVirtualInterface"], "Expected key newPrivateVirtualInterface to exist in table")
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["newPrivateVirtualInterface"] then asserts.AssertNewPrivateVirtualInterface(struct["newPrivateVirtualInterface"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePrivateVirtualInterfaceRequest[k], "CreatePrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePrivateVirtualInterfaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the connection.</p>
-- * newPrivateVirtualInterface [NewPrivateVirtualInterface] <p>Information about the private virtual interface.</p>
-- Required key: connectionId
-- Required key: newPrivateVirtualInterface
-- @return CreatePrivateVirtualInterfaceRequest structure as a key-value pair table
function M.CreatePrivateVirtualInterfaceRequest(args)
	assert(args, "You must provide an argument table when creating CreatePrivateVirtualInterfaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectionId"] = args["connectionId"],
		["newPrivateVirtualInterface"] = args["newPrivateVirtualInterface"],
	}
	asserts.AssertCreatePrivateVirtualInterfaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertVirtualGatewayState(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayState to be of type 'string'")
end

--  
function M.VirtualGatewayState(str)
	asserts.AssertVirtualGatewayState(str)
	return str
end

function asserts.AssertLocationName(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationName to be of type 'string'")
end

--  
function M.LocationName(str)
	asserts.AssertLocationName(str)
	return str
end

function asserts.AssertAmazonAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonAddress to be of type 'string'")
end

--  
function M.AmazonAddress(str)
	asserts.AssertAmazonAddress(str)
	return str
end

function asserts.AssertVirtualGatewayId(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayId to be of type 'string'")
end

--  
function M.VirtualGatewayId(str)
	asserts.AssertVirtualGatewayId(str)
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

function asserts.AssertLagState(str)
	assert(str)
	assert(type(str) == "string", "Expected LagState to be of type 'string'")
end

--  
function M.LagState(str)
	asserts.AssertLagState(str)
	return str
end

function asserts.AssertBGPStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPStatus to be of type 'string'")
end

--  
function M.BGPStatus(str)
	asserts.AssertBGPStatus(str)
	return str
end

function asserts.AssertLagId(str)
	assert(str)
	assert(type(str) == "string", "Expected LagId to be of type 'string'")
end

--  
function M.LagId(str)
	asserts.AssertLagId(str)
	return str
end

function asserts.AssertVirtualInterfaceRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceRegion to be of type 'string'")
end

--  
function M.VirtualInterfaceRegion(str)
	asserts.AssertVirtualInterfaceRegion(str)
	return str
end

function asserts.AssertPartnerName(str)
	assert(str)
	assert(type(str) == "string", "Expected PartnerName to be of type 'string'")
end

--  
function M.PartnerName(str)
	asserts.AssertPartnerName(str)
	return str
end

function asserts.AssertRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected Region to be of type 'string'")
end

--  
function M.Region(str)
	asserts.AssertRegion(str)
	return str
end

function asserts.AssertLagName(str)
	assert(str)
	assert(type(str) == "string", "Expected LagName to be of type 'string'")
end

--  
function M.LagName(str)
	asserts.AssertLagName(str)
	return str
end

function asserts.AssertAwsDevice(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsDevice to be of type 'string'")
end

--  
function M.AwsDevice(str)
	asserts.AssertAwsDevice(str)
	return str
end

function asserts.AssertLoaContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected LoaContentType to be of type 'string'")
end

--  
function M.LoaContentType(str)
	asserts.AssertLoaContentType(str)
	return str
end

function asserts.AssertInterconnectName(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectName to be of type 'string'")
end

--  
function M.InterconnectName(str)
	asserts.AssertInterconnectName(str)
	return str
end

function asserts.AssertOwnerAccount(str)
	assert(str)
	assert(type(str) == "string", "Expected OwnerAccount to be of type 'string'")
end

--  
function M.OwnerAccount(str)
	asserts.AssertOwnerAccount(str)
	return str
end

function asserts.AssertStateChangeError(str)
	assert(str)
	assert(type(str) == "string", "Expected StateChangeError to be of type 'string'")
end

--  
function M.StateChangeError(str)
	asserts.AssertStateChangeError(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertInterconnectState(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectState to be of type 'string'")
end

--  
function M.InterconnectState(str)
	asserts.AssertInterconnectState(str)
	return str
end

function asserts.AssertDirectConnectGatewayId(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectConnectGatewayId to be of type 'string'")
end

--  
function M.DirectConnectGatewayId(str)
	asserts.AssertDirectConnectGatewayId(str)
	return str
end

function asserts.AssertDirectConnectGatewayState(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectConnectGatewayState to be of type 'string'")
end

--  
function M.DirectConnectGatewayState(str)
	asserts.AssertDirectConnectGatewayState(str)
	return str
end

function asserts.AssertVirtualInterfaceType(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceType to be of type 'string'")
end

--  
function M.VirtualInterfaceType(str)
	asserts.AssertVirtualInterfaceType(str)
	return str
end

function asserts.AssertDirectConnectGatewayAssociationState(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectConnectGatewayAssociationState to be of type 'string'")
end

--  
function M.DirectConnectGatewayAssociationState(str)
	asserts.AssertDirectConnectGatewayAssociationState(str)
	return str
end

function asserts.AssertVirtualInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceId to be of type 'string'")
end

--  
function M.VirtualInterfaceId(str)
	asserts.AssertVirtualInterfaceId(str)
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

function asserts.AssertConnectionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionName to be of type 'string'")
end

--  
function M.ConnectionName(str)
	asserts.AssertConnectionName(str)
	return str
end

function asserts.AssertAwsDeviceV2(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsDeviceV2 to be of type 'string'")
end

--  
function M.AwsDeviceV2(str)
	asserts.AssertAwsDeviceV2(str)
	return str
end

function asserts.AssertVirtualInterfaceState(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceState to be of type 'string'")
end

--  
function M.VirtualInterfaceState(str)
	asserts.AssertVirtualInterfaceState(str)
	return str
end

function asserts.AssertBGPAuthKey(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPAuthKey to be of type 'string'")
end

--  
function M.BGPAuthKey(str)
	asserts.AssertBGPAuthKey(str)
	return str
end

function asserts.AssertDirectConnectGatewayAttachmentState(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectConnectGatewayAttachmentState to be of type 'string'")
end

--  
function M.DirectConnectGatewayAttachmentState(str)
	asserts.AssertDirectConnectGatewayAttachmentState(str)
	return str
end

function asserts.AssertInterconnectId(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectId to be of type 'string'")
end

--  
function M.InterconnectId(str)
	asserts.AssertInterconnectId(str)
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

function asserts.AssertConnectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionId to be of type 'string'")
end

--  
function M.ConnectionId(str)
	asserts.AssertConnectionId(str)
	return str
end

function asserts.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
end

--  
function M.ProviderName(str)
	asserts.AssertProviderName(str)
	return str
end

function asserts.AssertVirtualGatewayRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayRegion to be of type 'string'")
end

--  
function M.VirtualGatewayRegion(str)
	asserts.AssertVirtualGatewayRegion(str)
	return str
end

function asserts.AssertConnectionState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionState to be of type 'string'")
end

--  
function M.ConnectionState(str)
	asserts.AssertConnectionState(str)
	return str
end

function asserts.AssertAddressFamily(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressFamily to be of type 'string'")
end

--  
function M.AddressFamily(str)
	asserts.AssertAddressFamily(str)
	return str
end

function asserts.AssertVirtualInterfaceName(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceName to be of type 'string'")
end

--  
function M.VirtualInterfaceName(str)
	asserts.AssertVirtualInterfaceName(str)
	return str
end

function asserts.AssertRouterConfig(str)
	assert(str)
	assert(type(str) == "string", "Expected RouterConfig to be of type 'string'")
end

--  
function M.RouterConfig(str)
	asserts.AssertRouterConfig(str)
	return str
end

function asserts.AssertBGPPeerState(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPPeerState to be of type 'string'")
end

--  
function M.BGPPeerState(str)
	asserts.AssertBGPPeerState(str)
	return str
end

function asserts.AssertCIDR(str)
	assert(str)
	assert(type(str) == "string", "Expected CIDR to be of type 'string'")
end

--  
function M.CIDR(str)
	asserts.AssertCIDR(str)
	return str
end

function asserts.AssertCustomerAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerAddress to be of type 'string'")
end

--  
function M.CustomerAddress(str)
	asserts.AssertCustomerAddress(str)
	return str
end

function asserts.AssertBandwidth(str)
	assert(str)
	assert(type(str) == "string", "Expected Bandwidth to be of type 'string'")
end

--  
function M.Bandwidth(str)
	asserts.AssertBandwidth(str)
	return str
end

function asserts.AssertLocationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationCode to be of type 'string'")
end

--  
function M.LocationCode(str)
	asserts.AssertLocationCode(str)
	return str
end

function asserts.AssertDirectConnectGatewayName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectConnectGatewayName to be of type 'string'")
end

--  
function M.DirectConnectGatewayName(str)
	asserts.AssertDirectConnectGatewayName(str)
	return str
end

function asserts.AssertLongAsn(long)
	assert(long)
	assert(type(long) == "number", "Expected LongAsn to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongAsn(long)
	asserts.AssertLongAsn(long)
	return long
end

function asserts.AssertVLAN(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected VLAN to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.VLAN(integer)
	asserts.AssertVLAN(integer)
	return integer
end

function asserts.AssertASN(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ASN to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ASN(integer)
	asserts.AssertASN(integer)
	return integer
end

function asserts.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Count(integer)
	asserts.AssertCount(integer)
	return integer
end

function asserts.AssertMaxResultSetSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultSetSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxResultSetSize(integer)
	asserts.AssertMaxResultSetSize(integer)
	return integer
end

function asserts.AssertMTU(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MTU to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MTU(integer)
	asserts.AssertMTU(integer)
	return integer
end

function asserts.AssertJumboFrameCapable(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected JumboFrameCapable to be of type 'boolean'")
end

function M.JumboFrameCapable(boolean)
	asserts.AssertJumboFrameCapable(boolean)
	return boolean
end

function asserts.AssertBooleanFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanFlag to be of type 'boolean'")
end

function M.BooleanFlag(boolean)
	asserts.AssertBooleanFlag(boolean)
	return boolean
end

function asserts.AssertLoaIssueTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LoaIssueTime to be of type 'string'")
end

function M.LoaIssueTime(timestamp)
	asserts.AssertLoaIssueTime(timestamp)
	return timestamp
end

function asserts.AssertLoaContent(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected LoaContent to be of type 'string'")
end

function M.LoaContent(blob)
	asserts.AssertLoaContent(blob)
	return blob
end

function asserts.AssertVirtualGatewayList(list)
	assert(list)
	assert(type(list) == "table", "Expected VirtualGatewayList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVirtualGateway(v)
	end
end

--  
-- List of VirtualGateway objects
function M.VirtualGatewayList(list)
	asserts.AssertVirtualGatewayList(list)
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

function asserts.AssertConnectionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConnection(v)
	end
end

--  
-- List of Connection objects
function M.ConnectionList(list)
	asserts.AssertConnectionList(list)
	return list
end

function asserts.AssertResourceArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArnList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArnList(list)
	asserts.AssertResourceArnList(list)
	return list
end

function asserts.AssertLagList(list)
	assert(list)
	assert(type(list) == "table", "Expected LagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLag(v)
	end
end

--  
-- List of Lag objects
function M.LagList(list)
	asserts.AssertLagList(list)
	return list
end

function asserts.AssertDirectConnectGatewayList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectConnectGatewayList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectConnectGateway(v)
	end
end

--  
-- List of DirectConnectGateway objects
function M.DirectConnectGatewayList(list)
	asserts.AssertDirectConnectGatewayList(list)
	return list
end

function asserts.AssertResourceTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceTag(v)
	end
end

--  
-- List of ResourceTag objects
function M.ResourceTagList(list)
	asserts.AssertResourceTagList(list)
	return list
end

function asserts.AssertDirectConnectGatewayAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectConnectGatewayAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectConnectGatewayAssociation(v)
	end
end

--  
-- List of DirectConnectGatewayAssociation objects
function M.DirectConnectGatewayAssociationList(list)
	asserts.AssertDirectConnectGatewayAssociationList(list)
	return list
end

function asserts.AssertRouteFilterPrefixList(list)
	assert(list)
	assert(type(list) == "table", "Expected RouteFilterPrefixList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRouteFilterPrefix(v)
	end
end

--  
-- List of RouteFilterPrefix objects
function M.RouteFilterPrefixList(list)
	asserts.AssertRouteFilterPrefixList(list)
	return list
end

function asserts.AssertVirtualInterfaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected VirtualInterfaceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVirtualInterface(v)
	end
end

--  
-- List of VirtualInterface objects
function M.VirtualInterfaceList(list)
	asserts.AssertVirtualInterfaceList(list)
	return list
end

function asserts.AssertBGPPeerList(list)
	assert(list)
	assert(type(list) == "table", "Expected BGPPeerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBGPPeer(v)
	end
end

--  
-- List of BGPPeer objects
function M.BGPPeerList(list)
	asserts.AssertBGPPeerList(list)
	return list
end

function asserts.AssertDirectConnectGatewayAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectConnectGatewayAttachmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectConnectGatewayAttachment(v)
	end
end

--  
-- List of DirectConnectGatewayAttachment objects
function M.DirectConnectGatewayAttachmentList(list)
	asserts.AssertDirectConnectGatewayAttachmentList(list)
	return list
end

function asserts.AssertLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLocation(v)
	end
end

--  
-- List of Location objects
function M.LocationList(list)
	asserts.AssertLocationList(list)
	return list
end

function asserts.AssertInterconnectList(list)
	assert(list)
	assert(type(list) == "table", "Expected InterconnectList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInterconnect(v)
	end
end

--  
-- List of Interconnect objects
function M.InterconnectList(list)
	asserts.AssertInterconnectList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
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
			return "directconnect.amazonaws.com"
		end
	end
	local ss = { "directconnect" }
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
--- Call DescribeVirtualGateways asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeVirtualGatewaysAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualGateways",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVirtualGateways synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeVirtualGatewaysSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVirtualGatewaysAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDirectConnectGatewayAssociations asynchronously, invoking a callback when done
-- @param DescribeDirectConnectGatewayAssociationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDirectConnectGatewayAssociationsAsync(DescribeDirectConnectGatewayAssociationsRequest, cb)
	assert(DescribeDirectConnectGatewayAssociationsRequest, "You must provide a DescribeDirectConnectGatewayAssociationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeDirectConnectGatewayAssociations",
	}
	for header,value in pairs(DescribeDirectConnectGatewayAssociationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDirectConnectGatewayAssociationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDirectConnectGatewayAssociations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDirectConnectGatewayAssociationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDirectConnectGatewayAssociationsSync(DescribeDirectConnectGatewayAssociationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDirectConnectGatewayAssociationsAsync(DescribeDirectConnectGatewayAssociationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBGPPeer asynchronously, invoking a callback when done
-- @param CreateBGPPeerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBGPPeerAsync(CreateBGPPeerRequest, cb)
	assert(CreateBGPPeerRequest, "You must provide a CreateBGPPeerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateBGPPeer",
	}
	for header,value in pairs(CreateBGPPeerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBGPPeerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBGPPeer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBGPPeerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBGPPeerSync(CreateBGPPeerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBGPPeerAsync(CreateBGPPeerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocateHostedConnection asynchronously, invoking a callback when done
-- @param AllocateHostedConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AllocateHostedConnectionAsync(AllocateHostedConnectionRequest, cb)
	assert(AllocateHostedConnectionRequest, "You must provide a AllocateHostedConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AllocateHostedConnection",
	}
	for header,value in pairs(AllocateHostedConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AllocateHostedConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AllocateHostedConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AllocateHostedConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AllocateHostedConnectionSync(AllocateHostedConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocateHostedConnectionAsync(AllocateHostedConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateHostedConnection asynchronously, invoking a callback when done
-- @param AssociateHostedConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateHostedConnectionAsync(AssociateHostedConnectionRequest, cb)
	assert(AssociateHostedConnectionRequest, "You must provide a AssociateHostedConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateHostedConnection",
	}
	for header,value in pairs(AssociateHostedConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateHostedConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateHostedConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateHostedConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateHostedConnectionSync(AssociateHostedConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateHostedConnectionAsync(AssociateHostedConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocatePublicVirtualInterface asynchronously, invoking a callback when done
-- @param AllocatePublicVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AllocatePublicVirtualInterfaceAsync(AllocatePublicVirtualInterfaceRequest, cb)
	assert(AllocatePublicVirtualInterfaceRequest, "You must provide a AllocatePublicVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AllocatePublicVirtualInterface",
	}
	for header,value in pairs(AllocatePublicVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AllocatePublicVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AllocatePublicVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AllocatePublicVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AllocatePublicVirtualInterfaceSync(AllocatePublicVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocatePublicVirtualInterfaceAsync(AllocatePublicVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVirtualInterface asynchronously, invoking a callback when done
-- @param DeleteVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVirtualInterfaceAsync(DeleteVirtualInterfaceRequest, cb)
	assert(DeleteVirtualInterfaceRequest, "You must provide a DeleteVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteVirtualInterface",
	}
	for header,value in pairs(DeleteVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVirtualInterfaceSync(DeleteVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVirtualInterfaceAsync(DeleteVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInterconnect asynchronously, invoking a callback when done
-- @param CreateInterconnectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInterconnectAsync(CreateInterconnectRequest, cb)
	assert(CreateInterconnectRequest, "You must provide a CreateInterconnectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateInterconnect",
	}
	for header,value in pairs(CreateInterconnectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInterconnectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInterconnect synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInterconnectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateInterconnectSync(CreateInterconnectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInterconnectAsync(CreateInterconnectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLags asynchronously, invoking a callback when done
-- @param DescribeLagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLagsAsync(DescribeLagsRequest, cb)
	assert(DescribeLagsRequest, "You must provide a DescribeLagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLags",
	}
	for header,value in pairs(DescribeLagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLagsSync(DescribeLagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLagsAsync(DescribeLagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInterconnect asynchronously, invoking a callback when done
-- @param DeleteInterconnectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInterconnectAsync(DeleteInterconnectRequest, cb)
	assert(DeleteInterconnectRequest, "You must provide a DeleteInterconnectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteInterconnect",
	}
	for header,value in pairs(DeleteInterconnectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteInterconnectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInterconnect synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInterconnectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteInterconnectSync(DeleteInterconnectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInterconnectAsync(DeleteInterconnectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBGPPeer asynchronously, invoking a callback when done
-- @param DeleteBGPPeerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBGPPeerAsync(DeleteBGPPeerRequest, cb)
	assert(DeleteBGPPeerRequest, "You must provide a DeleteBGPPeerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteBGPPeer",
	}
	for header,value in pairs(DeleteBGPPeerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBGPPeerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBGPPeer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBGPPeerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBGPPeerSync(DeleteBGPPeerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBGPPeerAsync(DeleteBGPPeerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDirectConnectGatewayAssociation asynchronously, invoking a callback when done
-- @param DeleteDirectConnectGatewayAssociationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDirectConnectGatewayAssociationAsync(DeleteDirectConnectGatewayAssociationRequest, cb)
	assert(DeleteDirectConnectGatewayAssociationRequest, "You must provide a DeleteDirectConnectGatewayAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteDirectConnectGatewayAssociation",
	}
	for header,value in pairs(DeleteDirectConnectGatewayAssociationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDirectConnectGatewayAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDirectConnectGatewayAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDirectConnectGatewayAssociationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDirectConnectGatewayAssociationSync(DeleteDirectConnectGatewayAssociationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDirectConnectGatewayAssociationAsync(DeleteDirectConnectGatewayAssociationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDirectConnectGatewayAttachments asynchronously, invoking a callback when done
-- @param DescribeDirectConnectGatewayAttachmentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDirectConnectGatewayAttachmentsAsync(DescribeDirectConnectGatewayAttachmentsRequest, cb)
	assert(DescribeDirectConnectGatewayAttachmentsRequest, "You must provide a DescribeDirectConnectGatewayAttachmentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeDirectConnectGatewayAttachments",
	}
	for header,value in pairs(DescribeDirectConnectGatewayAttachmentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDirectConnectGatewayAttachmentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDirectConnectGatewayAttachments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDirectConnectGatewayAttachmentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDirectConnectGatewayAttachmentsSync(DescribeDirectConnectGatewayAttachmentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDirectConnectGatewayAttachmentsAsync(DescribeDirectConnectGatewayAttachmentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocatePrivateVirtualInterface asynchronously, invoking a callback when done
-- @param AllocatePrivateVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AllocatePrivateVirtualInterfaceAsync(AllocatePrivateVirtualInterfaceRequest, cb)
	assert(AllocatePrivateVirtualInterfaceRequest, "You must provide a AllocatePrivateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AllocatePrivateVirtualInterface",
	}
	for header,value in pairs(AllocatePrivateVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AllocatePrivateVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AllocatePrivateVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AllocatePrivateVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AllocatePrivateVirtualInterfaceSync(AllocatePrivateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocatePrivateVirtualInterfaceAsync(AllocatePrivateVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateConnectionWithLag asynchronously, invoking a callback when done
-- @param AssociateConnectionWithLagRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateConnectionWithLagAsync(AssociateConnectionWithLagRequest, cb)
	assert(AssociateConnectionWithLagRequest, "You must provide a AssociateConnectionWithLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateConnectionWithLag",
	}
	for header,value in pairs(AssociateConnectionWithLagRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateConnectionWithLagRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateConnectionWithLag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateConnectionWithLagRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateConnectionWithLagSync(AssociateConnectionWithLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateConnectionWithLagAsync(AssociateConnectionWithLagRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLag asynchronously, invoking a callback when done
-- @param CreateLagRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLagAsync(CreateLagRequest, cb)
	assert(CreateLagRequest, "You must provide a CreateLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateLag",
	}
	for header,value in pairs(CreateLagRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLagRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLagRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLagSync(CreateLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLagAsync(CreateLagRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmPublicVirtualInterface asynchronously, invoking a callback when done
-- @param ConfirmPublicVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmPublicVirtualInterfaceAsync(ConfirmPublicVirtualInterfaceRequest, cb)
	assert(ConfirmPublicVirtualInterfaceRequest, "You must provide a ConfirmPublicVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmPublicVirtualInterface",
	}
	for header,value in pairs(ConfirmPublicVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmPublicVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmPublicVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmPublicVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ConfirmPublicVirtualInterfaceSync(ConfirmPublicVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmPublicVirtualInterfaceAsync(ConfirmPublicVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoa asynchronously, invoking a callback when done
-- @param DescribeLoaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoaAsync(DescribeLoaRequest, cb)
	assert(DescribeLoaRequest, "You must provide a DescribeLoaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLoa",
	}
	for header,value in pairs(DescribeLoaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoa synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoaSync(DescribeLoaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoaAsync(DescribeLoaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHostedConnections asynchronously, invoking a callback when done
-- @param DescribeHostedConnectionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHostedConnectionsAsync(DescribeHostedConnectionsRequest, cb)
	assert(DescribeHostedConnectionsRequest, "You must provide a DescribeHostedConnectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeHostedConnections",
	}
	for header,value in pairs(DescribeHostedConnectionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHostedConnectionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHostedConnections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHostedConnectionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeHostedConnectionsSync(DescribeHostedConnectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHostedConnectionsAsync(DescribeHostedConnectionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateVirtualInterface asynchronously, invoking a callback when done
-- @param AssociateVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateVirtualInterfaceAsync(AssociateVirtualInterfaceRequest, cb)
	assert(AssociateVirtualInterfaceRequest, "You must provide a AssociateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateVirtualInterface",
	}
	for header,value in pairs(AssociateVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateVirtualInterfaceSync(AssociateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateVirtualInterfaceAsync(AssociateVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeVirtualInterfaces asynchronously, invoking a callback when done
-- @param DescribeVirtualInterfacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeVirtualInterfacesAsync(DescribeVirtualInterfacesRequest, cb)
	assert(DescribeVirtualInterfacesRequest, "You must provide a DescribeVirtualInterfacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualInterfaces",
	}
	for header,value in pairs(DescribeVirtualInterfacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeVirtualInterfacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVirtualInterfaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeVirtualInterfacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeVirtualInterfacesSync(DescribeVirtualInterfacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVirtualInterfacesAsync(DescribeVirtualInterfacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDirectConnectGateway asynchronously, invoking a callback when done
-- @param CreateDirectConnectGatewayRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDirectConnectGatewayAsync(CreateDirectConnectGatewayRequest, cb)
	assert(CreateDirectConnectGatewayRequest, "You must provide a CreateDirectConnectGatewayRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateDirectConnectGateway",
	}
	for header,value in pairs(CreateDirectConnectGatewayRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDirectConnectGatewayRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDirectConnectGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDirectConnectGatewayRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDirectConnectGatewaySync(CreateDirectConnectGatewayRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDirectConnectGatewayAsync(CreateDirectConnectGatewayRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmPrivateVirtualInterface asynchronously, invoking a callback when done
-- @param ConfirmPrivateVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmPrivateVirtualInterfaceAsync(ConfirmPrivateVirtualInterfaceRequest, cb)
	assert(ConfirmPrivateVirtualInterfaceRequest, "You must provide a ConfirmPrivateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmPrivateVirtualInterface",
	}
	for header,value in pairs(ConfirmPrivateVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmPrivateVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmPrivateVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmPrivateVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ConfirmPrivateVirtualInterfaceSync(ConfirmPrivateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmPrivateVirtualInterfaceAsync(ConfirmPrivateVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateConnectionFromLag asynchronously, invoking a callback when done
-- @param DisassociateConnectionFromLagRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateConnectionFromLagAsync(DisassociateConnectionFromLagRequest, cb)
	assert(DisassociateConnectionFromLagRequest, "You must provide a DisassociateConnectionFromLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DisassociateConnectionFromLag",
	}
	for header,value in pairs(DisassociateConnectionFromLagRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateConnectionFromLagRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateConnectionFromLag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateConnectionFromLagRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateConnectionFromLagSync(DisassociateConnectionFromLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateConnectionFromLagAsync(DisassociateConnectionFromLagRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDirectConnectGateway asynchronously, invoking a callback when done
-- @param DeleteDirectConnectGatewayRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDirectConnectGatewayAsync(DeleteDirectConnectGatewayRequest, cb)
	assert(DeleteDirectConnectGatewayRequest, "You must provide a DeleteDirectConnectGatewayRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteDirectConnectGateway",
	}
	for header,value in pairs(DeleteDirectConnectGatewayRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDirectConnectGatewayRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDirectConnectGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDirectConnectGatewayRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDirectConnectGatewaySync(DeleteDirectConnectGatewayRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDirectConnectGatewayAsync(DeleteDirectConnectGatewayRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmConnection asynchronously, invoking a callback when done
-- @param ConfirmConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmConnectionAsync(ConfirmConnectionRequest, cb)
	assert(ConfirmConnectionRequest, "You must provide a ConfirmConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmConnection",
	}
	for header,value in pairs(ConfirmConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ConfirmConnectionSync(ConfirmConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmConnectionAsync(ConfirmConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInterconnects asynchronously, invoking a callback when done
-- @param DescribeInterconnectsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeInterconnectsAsync(DescribeInterconnectsRequest, cb)
	assert(DescribeInterconnectsRequest, "You must provide a DescribeInterconnectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeInterconnects",
	}
	for header,value in pairs(DescribeInterconnectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInterconnectsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInterconnects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInterconnectsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeInterconnectsSync(DescribeInterconnectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInterconnectsAsync(DescribeInterconnectsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeTags",
	}
	for header,value in pairs(DescribeTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConnections asynchronously, invoking a callback when done
-- @param DescribeConnectionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConnectionsAsync(DescribeConnectionsRequest, cb)
	assert(DescribeConnectionsRequest, "You must provide a DescribeConnectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeConnections",
	}
	for header,value in pairs(DescribeConnectionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConnectionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConnections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConnectionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConnectionsSync(DescribeConnectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConnectionsAsync(DescribeConnectionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePublicVirtualInterface asynchronously, invoking a callback when done
-- @param CreatePublicVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePublicVirtualInterfaceAsync(CreatePublicVirtualInterfaceRequest, cb)
	assert(CreatePublicVirtualInterfaceRequest, "You must provide a CreatePublicVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreatePublicVirtualInterface",
	}
	for header,value in pairs(CreatePublicVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePublicVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePublicVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePublicVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePublicVirtualInterfaceSync(CreatePublicVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePublicVirtualInterfaceAsync(CreatePublicVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConnection asynchronously, invoking a callback when done
-- @param CreateConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConnectionAsync(CreateConnectionRequest, cb)
	assert(CreateConnectionRequest, "You must provide a CreateConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateConnection",
	}
	for header,value in pairs(CreateConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConnectionSync(CreateConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConnectionAsync(CreateConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLocations asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLocationsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLocations",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLocations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLocationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLocationsAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePrivateVirtualInterface asynchronously, invoking a callback when done
-- @param CreatePrivateVirtualInterfaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePrivateVirtualInterfaceAsync(CreatePrivateVirtualInterfaceRequest, cb)
	assert(CreatePrivateVirtualInterfaceRequest, "You must provide a CreatePrivateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreatePrivateVirtualInterface",
	}
	for header,value in pairs(CreatePrivateVirtualInterfaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePrivateVirtualInterfaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePrivateVirtualInterface synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePrivateVirtualInterfaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePrivateVirtualInterfaceSync(CreatePrivateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePrivateVirtualInterfaceAsync(CreatePrivateVirtualInterfaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConnection asynchronously, invoking a callback when done
-- @param DeleteConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConnectionAsync(DeleteConnectionRequest, cb)
	assert(DeleteConnectionRequest, "You must provide a DeleteConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteConnection",
	}
	for header,value in pairs(DeleteConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConnectionSync(DeleteConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConnectionAsync(DeleteConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDirectConnectGateways asynchronously, invoking a callback when done
-- @param DescribeDirectConnectGatewaysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDirectConnectGatewaysAsync(DescribeDirectConnectGatewaysRequest, cb)
	assert(DescribeDirectConnectGatewaysRequest, "You must provide a DescribeDirectConnectGatewaysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeDirectConnectGateways",
	}
	for header,value in pairs(DescribeDirectConnectGatewaysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDirectConnectGatewaysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDirectConnectGateways synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDirectConnectGatewaysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDirectConnectGatewaysSync(DescribeDirectConnectGatewaysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDirectConnectGatewaysAsync(DescribeDirectConnectGatewaysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLag asynchronously, invoking a callback when done
-- @param DeleteLagRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLagAsync(DeleteLagRequest, cb)
	assert(DeleteLagRequest, "You must provide a DeleteLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteLag",
	}
	for header,value in pairs(DeleteLagRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLagRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLagRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLagSync(DeleteLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLagAsync(DeleteLagRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDirectConnectGatewayAssociation asynchronously, invoking a callback when done
-- @param CreateDirectConnectGatewayAssociationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDirectConnectGatewayAssociationAsync(CreateDirectConnectGatewayAssociationRequest, cb)
	assert(CreateDirectConnectGatewayAssociationRequest, "You must provide a CreateDirectConnectGatewayAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateDirectConnectGatewayAssociation",
	}
	for header,value in pairs(CreateDirectConnectGatewayAssociationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDirectConnectGatewayAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDirectConnectGatewayAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDirectConnectGatewayAssociationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDirectConnectGatewayAssociationSync(CreateDirectConnectGatewayAssociationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDirectConnectGatewayAssociationAsync(CreateDirectConnectGatewayAssociationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVirtualInterfaceAttributes asynchronously, invoking a callback when done
-- @param UpdateVirtualInterfaceAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateVirtualInterfaceAttributesAsync(UpdateVirtualInterfaceAttributesRequest, cb)
	assert(UpdateVirtualInterfaceAttributesRequest, "You must provide a UpdateVirtualInterfaceAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.UpdateVirtualInterfaceAttributes",
	}
	for header,value in pairs(UpdateVirtualInterfaceAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateVirtualInterfaceAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateVirtualInterfaceAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateVirtualInterfaceAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateVirtualInterfaceAttributesSync(UpdateVirtualInterfaceAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVirtualInterfaceAttributesAsync(UpdateVirtualInterfaceAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLag asynchronously, invoking a callback when done
-- @param UpdateLagRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateLagAsync(UpdateLagRequest, cb)
	assert(UpdateLagRequest, "You must provide a UpdateLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.UpdateLag",
	}
	for header,value in pairs(UpdateLagRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateLagRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLagRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateLagSync(UpdateLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLagAsync(UpdateLagRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
