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

keys.Interconnect = { ["awsDevice"] = true, ["region"] = true, ["lagId"] = true, ["bandwidth"] = true, ["location"] = true, ["interconnectName"] = true, ["interconnectId"] = true, ["loaIssueTime"] = true, ["interconnectState"] = true, nil }

function asserts.AssertInterconnect(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Interconnect to be of type 'table'")
	if struct["awsDevice"] then asserts.AssertAwsDevice(struct["awsDevice"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
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
-- <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * awsDevice [AwsDevice] <p>The Direct Connection endpoint which the physical connection terminates on.</p>
-- * region [Region] 
-- * lagId [LagId] 
-- * bandwidth [Bandwidth] 
-- * location [LocationCode] 
-- * interconnectName [InterconnectName] 
-- * interconnectId [InterconnectId] 
-- * loaIssueTime [LoaIssueTime] <p>The time of the most recent call to DescribeInterconnectLoa for this Interconnect.</p>
-- * interconnectState [InterconnectState] 
-- @return Interconnect structure as a key-value pair table
function M.Interconnect(args)
	assert(args, "You must provdide an argument table when creating Interconnect")
	local t = { 
		["awsDevice"] = args["awsDevice"],
		["region"] = args["region"],
		["lagId"] = args["lagId"],
		["bandwidth"] = args["bandwidth"],
		["location"] = args["location"],
		["interconnectName"] = args["interconnectName"],
		["interconnectId"] = args["interconnectId"],
		["loaIssueTime"] = args["loaIssueTime"],
		["interconnectState"] = args["interconnectState"],
	}
	asserts.AssertInterconnect(t)
	return t
end

keys.DuplicateTagKeysException = { nil }

function asserts.AssertDuplicateTagKeysException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateTagKeysException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateTagKeysException[k], "DuplicateTagKeysException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateTagKeysException
-- <p>A tag key was specified more than once.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateTagKeysException structure as a key-value pair table
function M.DuplicateTagKeysException(args)
	assert(args, "You must provdide an argument table when creating DuplicateTagKeysException")
	local t = { 
	}
	asserts.AssertDuplicateTagKeysException(t)
	return t
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
-- <p>Container for the parameters to the DeleteInterconnect operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] 
-- Required key: interconnectId
-- @return DeleteInterconnectRequest structure as a key-value pair table
function M.DeleteInterconnectRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteInterconnectRequest")
	local t = { 
		["interconnectId"] = args["interconnectId"],
	}
	asserts.AssertDeleteInterconnectRequest(t)
	return t
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
-- <p>Container for the parameters to the ConfirmPublicVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceId [VirtualInterfaceId] 
-- Required key: virtualInterfaceId
-- @return ConfirmPublicVirtualInterfaceRequest structure as a key-value pair table
function M.ConfirmPublicVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating ConfirmPublicVirtualInterfaceRequest")
	local t = { 
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertConfirmPublicVirtualInterfaceRequest(t)
	return t
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
-- <p>Container for the parameters to the DescribeConnectionLoa operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loaContentType [LoaContentType] 
-- * connectionId [ConnectionId] 
-- * providerName [ProviderName] <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- Required key: connectionId
-- @return DescribeConnectionLoaRequest structure as a key-value pair table
function M.DescribeConnectionLoaRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeConnectionLoaRequest")
	local t = { 
		["loaContentType"] = args["loaContentType"],
		["connectionId"] = args["connectionId"],
		["providerName"] = args["providerName"],
	}
	asserts.AssertDescribeConnectionLoaRequest(t)
	return t
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
-- <p>Container for the parameters to the AssociateConnectionWithLag operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG with which to associate the connection.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- * connectionId [ConnectionId] <p>The ID of the connection.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: lagId
-- @return AssociateConnectionWithLagRequest structure as a key-value pair table
function M.AssociateConnectionWithLagRequest(args)
	assert(args, "You must provdide an argument table when creating AssociateConnectionWithLagRequest")
	local t = { 
		["lagId"] = args["lagId"],
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertAssociateConnectionWithLagRequest(t)
	return t
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
-- <p>The response received when DeleteInterconnect is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectState [InterconnectState] 
-- @return DeleteInterconnectResponse structure as a key-value pair table
function M.DeleteInterconnectResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteInterconnectResponse")
	local t = { 
		["interconnectState"] = args["interconnectState"],
	}
	asserts.AssertDeleteInterconnectResponse(t)
	return t
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
-- <p>Container for the parameters to the DescribeVirtualInterfaces operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] 
-- * virtualInterfaceId [VirtualInterfaceId] 
-- @return DescribeVirtualInterfacesRequest structure as a key-value pair table
function M.DescribeVirtualInterfacesRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeVirtualInterfacesRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDescribeVirtualInterfacesRequest(t)
	return t
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
-- <p>Container for the parameters to the DescribeLags operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @return DescribeLagsRequest structure as a key-value pair table
function M.DescribeLagsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeLagsRequest")
	local t = { 
		["lagId"] = args["lagId"],
	}
	asserts.AssertDescribeLagsRequest(t)
	return t
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
-- <p>A structure containing a list of interconnects.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnects [InterconnectList] <p>A list of interconnects.</p>
-- @return Interconnects structure as a key-value pair table
function M.Interconnects(args)
	assert(args, "You must provdide an argument table when creating Interconnects")
	local t = { 
		["interconnects"] = args["interconnects"],
	}
	asserts.AssertInterconnects(t)
	return t
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
-- <p>The response received when DescribeInterconnectLoa is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loa [Loa] 
-- @return DescribeInterconnectLoaResponse structure as a key-value pair table
function M.DescribeInterconnectLoaResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeInterconnectLoaResponse")
	local t = { 
		["loa"] = args["loa"],
	}
	asserts.AssertDescribeInterconnectLoaResponse(t)
	return t
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
-- <p>Container for the parameters to the DisassociateConnectionFromLag operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- * connectionId [ConnectionId] <p>The ID of the connection to disassociate from the LAG.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: lagId
-- @return DisassociateConnectionFromLagRequest structure as a key-value pair table
function M.DisassociateConnectionFromLagRequest(args)
	assert(args, "You must provdide an argument table when creating DisassociateConnectionFromLagRequest")
	local t = { 
		["lagId"] = args["lagId"],
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDisassociateConnectionFromLagRequest(t)
	return t
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
-- <p>Container for the parameters to the CreateLag operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of an existing connection to migrate to the LAG.</p> <p>Default: None</p>
-- * lagName [LagName] <p>The name of the LAG.</p> <p>Example: "<code>3x10G LAG to AWS</code>"</p> <p>Default: None</p>
-- * numberOfConnections [Count] <p>The number of physical connections initially provisioned and bundled by the LAG.</p> <p>Default: None</p>
-- * location [LocationCode] <p>The AWS Direct Connect location in which the LAG should be allocated.</p> <p>Example: EqSV5</p> <p>Default: None</p>
-- * connectionsBandwidth [Bandwidth] <p>The bandwidth of the individual physical connections bundled by the LAG.</p> <p>Default: None</p> <p>Available values: 1Gbps, 10Gbps</p>
-- Required key: numberOfConnections
-- Required key: location
-- Required key: connectionsBandwidth
-- Required key: lagName
-- @return CreateLagRequest structure as a key-value pair table
function M.CreateLagRequest(args)
	assert(args, "You must provdide an argument table when creating CreateLagRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
		["lagName"] = args["lagName"],
		["numberOfConnections"] = args["numberOfConnections"],
		["location"] = args["location"],
		["connectionsBandwidth"] = args["connectionsBandwidth"],
	}
	asserts.AssertCreateLagRequest(t)
	return t
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
-- <p>A structure containing a list of connections.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connections [ConnectionList] <p>A list of connections.</p>
-- @return Connections structure as a key-value pair table
function M.Connections(args)
	assert(args, "You must provdide an argument table when creating Connections")
	local t = { 
		["connections"] = args["connections"],
	}
	asserts.AssertConnections(t)
	return t
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
-- * value [TagValue] <p>The value of the tag.</p>
-- * key [TagKey] <p>The key of the tag.</p>
-- Required key: key
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provdide an argument table when creating Tag")
	local t = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(t)
	return t
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
-- <p>Container for the parameters to the DescribeConnectionsOnInterconnect operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>ID of the interconnect on which a list of connection is provisioned.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required key: interconnectId
-- @return DescribeConnectionsOnInterconnectRequest structure as a key-value pair table
function M.DescribeConnectionsOnInterconnectRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeConnectionsOnInterconnectRequest")
	local t = { 
		["interconnectId"] = args["interconnectId"],
	}
	asserts.AssertDescribeConnectionsOnInterconnectRequest(t)
	return t
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
-- <p>A structure containing a list of LAGs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lags [LagList] <p>A list of LAGs.</p>
-- @return Lags structure as a key-value pair table
function M.Lags(args)
	assert(args, "You must provdide an argument table when creating Lags")
	local t = { 
		["lags"] = args["lags"],
	}
	asserts.AssertLags(t)
	return t
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
-- <p>The response received when DeleteBGPPeer is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterface [VirtualInterface] 
-- @return DeleteBGPPeerResponse structure as a key-value pair table
function M.DeleteBGPPeerResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteBGPPeerResponse")
	local t = { 
		["virtualInterface"] = args["virtualInterface"],
	}
	asserts.AssertDeleteBGPPeerResponse(t)
	return t
end

keys.ConfirmPrivateVirtualInterfaceRequest = { ["virtualGatewayId"] = true, ["virtualInterfaceId"] = true, nil }

function asserts.AssertConfirmPrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	assert(struct["virtualGatewayId"], "Expected key virtualGatewayId to exist in table")
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmPrivateVirtualInterfaceRequest[k], "ConfirmPrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPrivateVirtualInterfaceRequest
-- <p>Container for the parameters to the ConfirmPrivateVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGatewayId [VirtualGatewayId] <p>ID of the virtual private gateway that will be attached to the virtual interface.</p> <p> A virtual private gateway can be managed via the Amazon Virtual Private Cloud (VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">EC2 CreateVpnGateway</a> action.</p> <p>Default: None</p>
-- * virtualInterfaceId [VirtualInterfaceId] 
-- Required key: virtualInterfaceId
-- Required key: virtualGatewayId
-- @return ConfirmPrivateVirtualInterfaceRequest structure as a key-value pair table
function M.ConfirmPrivateVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating ConfirmPrivateVirtualInterfaceRequest")
	local t = { 
		["virtualGatewayId"] = args["virtualGatewayId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertConfirmPrivateVirtualInterfaceRequest(t)
	return t
end

keys.Location = { ["locationName"] = true, ["locationCode"] = true, nil }

function asserts.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	if struct["locationName"] then asserts.AssertLocationName(struct["locationName"]) end
	if struct["locationCode"] then asserts.AssertLocationCode(struct["locationCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Location[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>An AWS Direct Connect location where connections and interconnects can be requested.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locationName [LocationName] <p>The name of the AWS Direct Connect location. The name includes the colocation partner name and the physical site of the lit building.</p>
-- * locationCode [LocationCode] <p>The code used to indicate the AWS Direct Connect location.</p>
-- @return Location structure as a key-value pair table
function M.Location(args)
	assert(args, "You must provdide an argument table when creating Location")
	local t = { 
		["locationName"] = args["locationName"],
		["locationCode"] = args["locationCode"],
	}
	asserts.AssertLocation(t)
	return t
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
-- <p>The response received when DescribeConnectionLoa is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loa [Loa] 
-- @return DescribeConnectionLoaResponse structure as a key-value pair table
function M.DescribeConnectionLoaResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeConnectionLoaResponse")
	local t = { 
		["loa"] = args["loa"],
	}
	asserts.AssertDescribeConnectionLoaResponse(t)
	return t
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
-- <p>Container for the parameters to the ConfirmConnection operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] 
-- Required key: connectionId
-- @return ConfirmConnectionRequest structure as a key-value pair table
function M.ConfirmConnectionRequest(args)
	assert(args, "You must provdide an argument table when creating ConfirmConnectionRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertConfirmConnectionRequest(t)
	return t
end

keys.VirtualInterface = { ["virtualInterfaceState"] = true, ["asn"] = true, ["vlan"] = true, ["customerAddress"] = true, ["ownerAccount"] = true, ["connectionId"] = true, ["addressFamily"] = true, ["virtualGatewayId"] = true, ["virtualInterfaceId"] = true, ["authKey"] = true, ["routeFilterPrefixes"] = true, ["location"] = true, ["bgpPeers"] = true, ["customerRouterConfig"] = true, ["amazonAddress"] = true, ["virtualInterfaceType"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualInterface to be of type 'table'")
	if struct["virtualInterfaceState"] then asserts.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["virtualInterfaceId"] then asserts.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["routeFilterPrefixes"] then asserts.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["bgpPeers"] then asserts.AssertBGPPeerList(struct["bgpPeers"]) end
	if struct["customerRouterConfig"] then asserts.AssertRouterConfig(struct["customerRouterConfig"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["virtualInterfaceType"] then asserts.AssertVirtualInterfaceType(struct["virtualInterfaceType"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.VirtualInterface[k], "VirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualInterface
-- <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] 
-- * asn [ASN] 
-- * vlan [VLAN] 
-- * customerAddress [CustomerAddress] 
-- * ownerAccount [OwnerAccount] <p>The AWS account that will own the new virtual interface.</p>
-- * connectionId [ConnectionId] 
-- * addressFamily [AddressFamily] 
-- * virtualGatewayId [VirtualGatewayId] 
-- * virtualInterfaceId [VirtualInterfaceId] 
-- * authKey [BGPAuthKey] 
-- * routeFilterPrefixes [RouteFilterPrefixList] 
-- * location [LocationCode] 
-- * bgpPeers [BGPPeerList] 
-- * customerRouterConfig [RouterConfig] <p>Information for generating the customer router configuration.</p>
-- * amazonAddress [AmazonAddress] 
-- * virtualInterfaceType [VirtualInterfaceType] 
-- * virtualInterfaceName [VirtualInterfaceName] 
-- @return VirtualInterface structure as a key-value pair table
function M.VirtualInterface(args)
	assert(args, "You must provdide an argument table when creating VirtualInterface")
	local t = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
		["asn"] = args["asn"],
		["vlan"] = args["vlan"],
		["customerAddress"] = args["customerAddress"],
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["addressFamily"] = args["addressFamily"],
		["virtualGatewayId"] = args["virtualGatewayId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
		["authKey"] = args["authKey"],
		["routeFilterPrefixes"] = args["routeFilterPrefixes"],
		["location"] = args["location"],
		["bgpPeers"] = args["bgpPeers"],
		["customerRouterConfig"] = args["customerRouterConfig"],
		["amazonAddress"] = args["amazonAddress"],
		["virtualInterfaceType"] = args["virtualInterfaceType"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertVirtualInterface(t)
	return t
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
-- <p>Container for the parameters to the DeleteVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceId [VirtualInterfaceId] 
-- Required key: virtualInterfaceId
-- @return DeleteVirtualInterfaceRequest structure as a key-value pair table
function M.DeleteVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteVirtualInterfaceRequest")
	local t = { 
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDeleteVirtualInterfaceRequest(t)
	return t
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
-- <p>Container for the parameters to theHostedConnection operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ownerAccount [OwnerAccount] <p>The numeric account ID of the customer for whom the connection will be provisioned.</p> <p>Example: 123443215678</p> <p>Default: None</p>
-- * connectionId [ConnectionId] <p>The ID of the interconnect or LAG on which the connection will be provisioned.</p> <p>Example: dxcon-456abc78 or dxlag-abc123</p> <p>Default: None</p>
-- * bandwidth [Bandwidth] <p>The bandwidth of the connection.</p> <p>Example: <code>500Mbps</code> </p> <p>Default: None</p> <p>Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps</p>
-- * vlan [VLAN] <p>The dedicated VLAN provisioned to the hosted connection.</p> <p>Example: 101</p> <p>Default: None</p>
-- * connectionName [ConnectionName] <p>The name of the provisioned connection.</p> <p>Example: "<code>500M Connection to AWS</code>"</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: ownerAccount
-- Required key: bandwidth
-- Required key: connectionName
-- Required key: vlan
-- @return AllocateHostedConnectionRequest structure as a key-value pair table
function M.AllocateHostedConnectionRequest(args)
	assert(args, "You must provdide an argument table when creating AllocateHostedConnectionRequest")
	local t = { 
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["bandwidth"] = args["bandwidth"],
		["vlan"] = args["vlan"],
		["connectionName"] = args["connectionName"],
	}
	asserts.AssertAllocateHostedConnectionRequest(t)
	return t
end

keys.BGPPeer = { ["bgpStatus"] = true, ["customerAddress"] = true, ["addressFamily"] = true, ["authKey"] = true, ["bgpPeerState"] = true, ["amazonAddress"] = true, ["asn"] = true, nil }

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
	for k,_ in pairs(struct) do
		assert(keys.BGPPeer[k], "BGPPeer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BGPPeer
-- <p>A structure containing information about a BGP peer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bgpStatus [BGPStatus] 
-- * customerAddress [CustomerAddress] 
-- * addressFamily [AddressFamily] 
-- * authKey [BGPAuthKey] 
-- * bgpPeerState [BGPPeerState] 
-- * amazonAddress [AmazonAddress] 
-- * asn [ASN] 
-- @return BGPPeer structure as a key-value pair table
function M.BGPPeer(args)
	assert(args, "You must provdide an argument table when creating BGPPeer")
	local t = { 
		["bgpStatus"] = args["bgpStatus"],
		["customerAddress"] = args["customerAddress"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["bgpPeerState"] = args["bgpPeerState"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
	}
	asserts.AssertBGPPeer(t)
	return t
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
-- <p>Container for the parameters to the CreateBGPPeer operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newBGPPeer [NewBGPPeer] <p>Detailed information for the BGP peer to be created.</p> <p>Default: None</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface on which the BGP peer will be provisioned.</p> <p>Example: dxvif-456abc78</p> <p>Default: None</p>
-- @return CreateBGPPeerRequest structure as a key-value pair table
function M.CreateBGPPeerRequest(args)
	assert(args, "You must provdide an argument table when creating CreateBGPPeerRequest")
	local t = { 
		["newBGPPeer"] = args["newBGPPeer"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertCreateBGPPeerRequest(t)
	return t
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
-- <p>Container for the parameters to the AllocatePrivateVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ownerAccount [OwnerAccount] <p>The AWS account that will own the new private virtual interface.</p> <p>Default: None</p>
-- * connectionId [ConnectionId] <p>The connection ID on which the private virtual interface is provisioned.</p> <p>Default: None</p>
-- * newPrivateVirtualInterfaceAllocation [NewPrivateVirtualInterfaceAllocation] <p>Detailed information for the private virtual interface to be provisioned.</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: ownerAccount
-- Required key: newPrivateVirtualInterfaceAllocation
-- @return AllocatePrivateVirtualInterfaceRequest structure as a key-value pair table
function M.AllocatePrivateVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating AllocatePrivateVirtualInterfaceRequest")
	local t = { 
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["newPrivateVirtualInterfaceAllocation"] = args["newPrivateVirtualInterfaceAllocation"],
	}
	asserts.AssertAllocatePrivateVirtualInterfaceRequest(t)
	return t
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
-- <p>Container for the parameters to the UntagResource operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p>
-- * tagKeys [TagKeyList] <p>The list of tag keys to remove.</p>
-- Required key: resourceArn
-- Required key: tagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provdide an argument table when creating UntagResourceRequest")
	local t = { 
		["resourceArn"] = args["resourceArn"],
		["tagKeys"] = args["tagKeys"],
	}
	asserts.AssertUntagResourceRequest(t)
	return t
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
-- <p>Container for the parameters to the DescribeInterconnectLoa operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] 
-- * providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- * loaContentType [LoaContentType] 
-- Required key: interconnectId
-- @return DescribeInterconnectLoaRequest structure as a key-value pair table
function M.DescribeInterconnectLoaRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInterconnectLoaRequest")
	local t = { 
		["interconnectId"] = args["interconnectId"],
		["providerName"] = args["providerName"],
		["loaContentType"] = args["loaContentType"],
	}
	asserts.AssertDescribeInterconnectLoaRequest(t)
	return t
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
-- <p>A structure containing the Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loaContentType [LoaContentType] 
-- * loaContent [LoaContent] 
-- @return Loa structure as a key-value pair table
function M.Loa(args)
	assert(args, "You must provdide an argument table when creating Loa")
	local t = { 
		["loaContentType"] = args["loaContentType"],
		["loaContent"] = args["loaContent"],
	}
	asserts.AssertLoa(t)
	return t
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
-- <p>Container for the parameters to the DescribeInterconnects operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] 
-- @return DescribeInterconnectsRequest structure as a key-value pair table
function M.DescribeInterconnectsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInterconnectsRequest")
	local t = { 
		["interconnectId"] = args["interconnectId"],
	}
	asserts.AssertDescribeInterconnectsRequest(t)
	return t
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
-- <p>Container for the parameters to the AssociateVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the LAG or connection with which to associate the virtual interface.</p> <p>Example: dxlag-abc123 or dxcon-abc123</p> <p>Default: None</p>
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p> <p>Example: dxvif-123dfg56</p> <p>Default: None</p>
-- Required key: virtualInterfaceId
-- Required key: connectionId
-- @return AssociateVirtualInterfaceRequest structure as a key-value pair table
function M.AssociateVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating AssociateVirtualInterfaceRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertAssociateVirtualInterfaceRequest(t)
	return t
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
-- <p>Container for the parameters to the AllocatePublicVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ownerAccount [OwnerAccount] <p>The AWS account that will own the new public virtual interface.</p> <p>Default: None</p>
-- * connectionId [ConnectionId] <p>The connection ID on which the public virtual interface is provisioned.</p> <p>Default: None</p>
-- * newPublicVirtualInterfaceAllocation [NewPublicVirtualInterfaceAllocation] <p>Detailed information for the public virtual interface to be provisioned.</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: ownerAccount
-- Required key: newPublicVirtualInterfaceAllocation
-- @return AllocatePublicVirtualInterfaceRequest structure as a key-value pair table
function M.AllocatePublicVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating AllocatePublicVirtualInterfaceRequest")
	local t = { 
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["newPublicVirtualInterfaceAllocation"] = args["newPublicVirtualInterfaceAllocation"],
	}
	asserts.AssertAllocatePublicVirtualInterfaceRequest(t)
	return t
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
-- <p>Container for the parameters to the DescribeConnections operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] 
-- @return DescribeConnectionsRequest structure as a key-value pair table
function M.DescribeConnectionsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeConnectionsRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDescribeConnectionsRequest(t)
	return t
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
-- <p>The response received when ConfirmPublicVirtualInterface is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] 
-- @return ConfirmPublicVirtualInterfaceResponse structure as a key-value pair table
function M.ConfirmPublicVirtualInterfaceResponse(args)
	assert(args, "You must provdide an argument table when creating ConfirmPublicVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
	}
	asserts.AssertConfirmPublicVirtualInterfaceResponse(t)
	return t
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
-- <p>A route filter prefix that the customer can advertise through Border Gateway Protocol (BGP) over a public virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cidr [CIDR] <p>CIDR notation for the advertised route. Multiple routes are separated by commas.</p> <p>IPv6 CIDRs must be at least a /64 or shorter</p> <p>Example: 10.10.10.0/24,10.10.11.0/24,2001:db8::/64</p>
-- @return RouteFilterPrefix structure as a key-value pair table
function M.RouteFilterPrefix(args)
	assert(args, "You must provdide an argument table when creating RouteFilterPrefix")
	local t = { 
		["cidr"] = args["cidr"],
	}
	asserts.AssertRouteFilterPrefix(t)
	return t
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
-- <p>You can create one or more AWS Direct Connect private virtual interfaces linking to your virtual private gateway.</p> <p>Virtual private gateways can be managed using the Amazon Virtual Private Cloud (Amazon VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">Amazon EC2 CreateVpnGateway action</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGatewayId [VirtualGatewayId] 
-- * virtualGatewayState [VirtualGatewayState] 
-- @return VirtualGateway structure as a key-value pair table
function M.VirtualGateway(args)
	assert(args, "You must provdide an argument table when creating VirtualGateway")
	local t = { 
		["virtualGatewayId"] = args["virtualGatewayId"],
		["virtualGatewayState"] = args["virtualGatewayState"],
	}
	asserts.AssertVirtualGateway(t)
	return t
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
-- <p>A structure containing information about a new BGP peer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authKey [BGPAuthKey] 
-- * amazonAddress [AmazonAddress] 
-- * customerAddress [CustomerAddress] 
-- * asn [ASN] 
-- * addressFamily [AddressFamily] 
-- @return NewBGPPeer structure as a key-value pair table
function M.NewBGPPeer(args)
	assert(args, "You must provdide an argument table when creating NewBGPPeer")
	local t = { 
		["authKey"] = args["authKey"],
		["amazonAddress"] = args["amazonAddress"],
		["customerAddress"] = args["customerAddress"],
		["asn"] = args["asn"],
		["addressFamily"] = args["addressFamily"],
	}
	asserts.AssertNewBGPPeer(t)
	return t
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
-- <p>Container for the parameters to the DescribeLoa operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loaContentType [LoaContentType] <p>A standard media type indicating the content type of the LOA-CFA document. Currently, the only supported value is "application/pdf".</p> <p>Default: application/pdf</p>
-- * connectionId [ConnectionId] <p>The ID of a connection, LAG, or interconnect for which to get the LOA-CFA information.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- * providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- Required key: connectionId
-- @return DescribeLoaRequest structure as a key-value pair table
function M.DescribeLoaRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeLoaRequest")
	local t = { 
		["loaContentType"] = args["loaContentType"],
		["connectionId"] = args["connectionId"],
		["providerName"] = args["providerName"],
	}
	asserts.AssertDescribeLoaRequest(t)
	return t
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
-- <p>The response received when UntagResource is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provdide an argument table when creating UntagResourceResponse")
	local t = { 
	}
	asserts.AssertUntagResourceResponse(t)
	return t
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
-- <p>Container for the parameters to the DeleteBGPPeer operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] 
-- * asn [ASN] 
-- * virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface from which the BGP peer will be deleted.</p> <p>Example: dxvif-456abc78</p> <p>Default: None</p>
-- @return DeleteBGPPeerRequest structure as a key-value pair table
function M.DeleteBGPPeerRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBGPPeerRequest")
	local t = { 
		["customerAddress"] = args["customerAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceId"] = args["virtualInterfaceId"],
	}
	asserts.AssertDeleteBGPPeerRequest(t)
	return t
end

keys.Connection = { ["partnerName"] = true, ["awsDevice"] = true, ["vlan"] = true, ["ownerAccount"] = true, ["connectionId"] = true, ["lagId"] = true, ["connectionState"] = true, ["bandwidth"] = true, ["location"] = true, ["connectionName"] = true, ["loaIssueTime"] = true, ["region"] = true, nil }

function asserts.AssertConnection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connection to be of type 'table'")
	if struct["partnerName"] then asserts.AssertPartnerName(struct["partnerName"]) end
	if struct["awsDevice"] then asserts.AssertAwsDevice(struct["awsDevice"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then asserts.AssertConnectionId(struct["connectionId"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["connectionState"] then asserts.AssertConnectionState(struct["connectionState"]) end
	if struct["bandwidth"] then asserts.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	if struct["connectionName"] then asserts.AssertConnectionName(struct["connectionName"]) end
	if struct["loaIssueTime"] then asserts.AssertLoaIssueTime(struct["loaIssueTime"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	for k,_ in pairs(struct) do
		assert(keys.Connection[k], "Connection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connection
-- <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * partnerName [PartnerName] <p>The name of the AWS Direct Connect service provider associated with the connection.</p>
-- * awsDevice [AwsDevice] <p>The Direct Connection endpoint which the physical connection terminates on.</p>
-- * vlan [VLAN] 
-- * ownerAccount [OwnerAccount] <p>The AWS account that will own the new connection.</p>
-- * connectionId [ConnectionId] 
-- * lagId [LagId] 
-- * connectionState [ConnectionState] 
-- * bandwidth [Bandwidth] <p>Bandwidth of the connection.</p> <p>Example: 1Gbps (for regular connections), or 500Mbps (for hosted connections)</p> <p>Default: None</p>
-- * location [LocationCode] 
-- * connectionName [ConnectionName] 
-- * loaIssueTime [LoaIssueTime] <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
-- * region [Region] 
-- @return Connection structure as a key-value pair table
function M.Connection(args)
	assert(args, "You must provdide an argument table when creating Connection")
	local t = { 
		["partnerName"] = args["partnerName"],
		["awsDevice"] = args["awsDevice"],
		["vlan"] = args["vlan"],
		["ownerAccount"] = args["ownerAccount"],
		["connectionId"] = args["connectionId"],
		["lagId"] = args["lagId"],
		["connectionState"] = args["connectionState"],
		["bandwidth"] = args["bandwidth"],
		["location"] = args["location"],
		["connectionName"] = args["connectionName"],
		["loaIssueTime"] = args["loaIssueTime"],
		["region"] = args["region"],
	}
	asserts.AssertConnection(t)
	return t
end

keys.NewPrivateVirtualInterfaceAllocation = { ["customerAddress"] = true, ["vlan"] = true, ["asn"] = true, ["authKey"] = true, ["amazonAddress"] = true, ["addressFamily"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertNewPrivateVirtualInterfaceAllocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPrivateVirtualInterfaceAllocation to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewPrivateVirtualInterfaceAllocation[k], "NewPrivateVirtualInterfaceAllocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPrivateVirtualInterfaceAllocation
-- <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] 
-- * vlan [VLAN] 
-- * asn [ASN] 
-- * authKey [BGPAuthKey] 
-- * amazonAddress [AmazonAddress] 
-- * addressFamily [AddressFamily] 
-- * virtualInterfaceName [VirtualInterfaceName] 
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPrivateVirtualInterfaceAllocation structure as a key-value pair table
function M.NewPrivateVirtualInterfaceAllocation(args)
	assert(args, "You must provdide an argument table when creating NewPrivateVirtualInterfaceAllocation")
	local t = { 
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["asn"] = args["asn"],
		["authKey"] = args["authKey"],
		["amazonAddress"] = args["amazonAddress"],
		["addressFamily"] = args["addressFamily"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPrivateVirtualInterfaceAllocation(t)
	return t
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
-- <p>Container for the parameters to the DeleteConnection operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] 
-- Required key: connectionId
-- @return DeleteConnectionRequest structure as a key-value pair table
function M.DeleteConnectionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteConnectionRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDeleteConnectionRequest(t)
	return t
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
-- <p>Container for the parameters to the DescribeTags operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArns [ResourceArnList] <p>The Amazon Resource Names (ARNs) of the Direct Connect resources.</p>
-- Required key: resourceArns
-- @return DescribeTagsRequest structure as a key-value pair table
function M.DescribeTagsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeTagsRequest")
	local t = { 
		["resourceArns"] = args["resourceArns"],
	}
	asserts.AssertDescribeTagsRequest(t)
	return t
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
-- <p>A structure containing information about a new public virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] 
-- * vlan [VLAN] 
-- * addressFamily [AddressFamily] 
-- * authKey [BGPAuthKey] 
-- * routeFilterPrefixes [RouteFilterPrefixList] 
-- * amazonAddress [AmazonAddress] 
-- * asn [ASN] 
-- * virtualInterfaceName [VirtualInterfaceName] 
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPublicVirtualInterface structure as a key-value pair table
function M.NewPublicVirtualInterface(args)
	assert(args, "You must provdide an argument table when creating NewPublicVirtualInterface")
	local t = { 
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["routeFilterPrefixes"] = args["routeFilterPrefixes"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPublicVirtualInterface(t)
	return t
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
-- <p>A location is a network facility where AWS Direct Connect routers are available to be connected. Generally, these are colocation hubs where many network providers have equipment, and where cross connects can be delivered. Locations include a name and facility code, and must be provided when creating a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locations [LocationList] <p>A list of colocation hubs where network providers have equipment. Most regions have multiple locations available.</p>
-- @return Locations structure as a key-value pair table
function M.Locations(args)
	assert(args, "You must provdide an argument table when creating Locations")
	local t = { 
		["locations"] = args["locations"],
	}
	asserts.AssertLocations(t)
	return t
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
-- <p>Container for the parameters to the AllocateConnectionOnInterconnect operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectId [InterconnectId] <p>ID of the interconnect on which the connection will be provisioned.</p> <p>Example: dxcon-456abc78</p> <p>Default: None</p>
-- * bandwidth [Bandwidth] <p>Bandwidth of the connection.</p> <p>Example: "<i>500Mbps</i>"</p> <p>Default: None</p> <p>Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps</p>
-- * vlan [VLAN] <p>The dedicated VLAN provisioned to the connection.</p> <p>Example: 101</p> <p>Default: None</p>
-- * ownerAccount [OwnerAccount] <p>Numeric account Id of the customer for whom the connection will be provisioned.</p> <p>Example: 123443215678</p> <p>Default: None</p>
-- * connectionName [ConnectionName] <p>Name of the provisioned connection.</p> <p>Example: "<i>500M Connection to AWS</i>"</p> <p>Default: None</p>
-- Required key: bandwidth
-- Required key: connectionName
-- Required key: ownerAccount
-- Required key: interconnectId
-- Required key: vlan
-- @return AllocateConnectionOnInterconnectRequest structure as a key-value pair table
function M.AllocateConnectionOnInterconnectRequest(args)
	assert(args, "You must provdide an argument table when creating AllocateConnectionOnInterconnectRequest")
	local t = { 
		["interconnectId"] = args["interconnectId"],
		["bandwidth"] = args["bandwidth"],
		["vlan"] = args["vlan"],
		["ownerAccount"] = args["ownerAccount"],
		["connectionName"] = args["connectionName"],
	}
	asserts.AssertAllocateConnectionOnInterconnectRequest(t)
	return t
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
-- <p>The tags associated with a Direct Connect resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p>
-- * tags [TagList] <p>The tags.</p>
-- @return ResourceTag structure as a key-value pair table
function M.ResourceTag(args)
	assert(args, "You must provdide an argument table when creating ResourceTag")
	local t = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertResourceTag(t)
	return t
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
-- <p>Container for the parameters to the UpdateLag operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG to update.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- * minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p> <p>Default: None</p>
-- * lagName [LagName] <p>The name for the LAG.</p> <p>Example: "<code>3x10G LAG to AWS</code>"</p> <p>Default: None</p>
-- Required key: lagId
-- @return UpdateLagRequest structure as a key-value pair table
function M.UpdateLagRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateLagRequest")
	local t = { 
		["lagId"] = args["lagId"],
		["minimumLinks"] = args["minimumLinks"],
		["lagName"] = args["lagName"],
	}
	asserts.AssertUpdateLagRequest(t)
	return t
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
-- <p>Container for the parameters to the CreatePublicVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newPublicVirtualInterface [NewPublicVirtualInterface] <p>Detailed information for the public virtual interface to be created.</p> <p>Default: None</p>
-- * connectionId [ConnectionId] 
-- Required key: connectionId
-- Required key: newPublicVirtualInterface
-- @return CreatePublicVirtualInterfaceRequest structure as a key-value pair table
function M.CreatePublicVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating CreatePublicVirtualInterfaceRequest")
	local t = { 
		["newPublicVirtualInterface"] = args["newPublicVirtualInterface"],
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertCreatePublicVirtualInterfaceRequest(t)
	return t
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
-- <p>The response received when DescribeTags is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceTags [ResourceTagList] <p>Information about the tags.</p>
-- @return DescribeTagsResponse structure as a key-value pair table
function M.DescribeTagsResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeTagsResponse")
	local t = { 
		["resourceTags"] = args["resourceTags"],
	}
	asserts.AssertDescribeTagsResponse(t)
	return t
end

keys.TooManyTagsException = { nil }

function asserts.AssertTooManyTagsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyTagsException[k], "TooManyTagsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsException
-- <p>You have reached the limit on the number of tags that can be assigned to a Direct Connect resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyTagsException structure as a key-value pair table
function M.TooManyTagsException(args)
	assert(args, "You must provdide an argument table when creating TooManyTagsException")
	local t = { 
	}
	asserts.AssertTooManyTagsException(t)
	return t
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
-- <p>The response received when CreateBGPPeer is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterface [VirtualInterface] 
-- @return CreateBGPPeerResponse structure as a key-value pair table
function M.CreateBGPPeerResponse(args)
	assert(args, "You must provdide an argument table when creating CreateBGPPeerResponse")
	local t = { 
		["virtualInterface"] = args["virtualInterface"],
	}
	asserts.AssertCreateBGPPeerResponse(t)
	return t
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
-- <p>The response received when TagResource is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provdide an argument table when creating TagResourceResponse")
	local t = { 
	}
	asserts.AssertTagResourceResponse(t)
	return t
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
-- <p>The response received when DeleteVirtualInterface is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] 
-- @return DeleteVirtualInterfaceResponse structure as a key-value pair table
function M.DeleteVirtualInterfaceResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
	}
	asserts.AssertDeleteVirtualInterfaceResponse(t)
	return t
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
-- <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * customerAddress [CustomerAddress] 
-- * vlan [VLAN] 
-- * addressFamily [AddressFamily] 
-- * authKey [BGPAuthKey] 
-- * routeFilterPrefixes [RouteFilterPrefixList] 
-- * amazonAddress [AmazonAddress] 
-- * asn [ASN] 
-- * virtualInterfaceName [VirtualInterfaceName] 
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- @return NewPublicVirtualInterfaceAllocation structure as a key-value pair table
function M.NewPublicVirtualInterfaceAllocation(args)
	assert(args, "You must provdide an argument table when creating NewPublicVirtualInterfaceAllocation")
	local t = { 
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["routeFilterPrefixes"] = args["routeFilterPrefixes"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPublicVirtualInterfaceAllocation(t)
	return t
end

keys.Lag = { ["awsDevice"] = true, ["allowsHostedConnections"] = true, ["numberOfConnections"] = true, ["lagState"] = true, ["ownerAccount"] = true, ["lagName"] = true, ["connections"] = true, ["lagId"] = true, ["minimumLinks"] = true, ["connectionsBandwidth"] = true, ["region"] = true, ["location"] = true, nil }

function asserts.AssertLag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lag to be of type 'table'")
	if struct["awsDevice"] then asserts.AssertAwsDevice(struct["awsDevice"]) end
	if struct["allowsHostedConnections"] then asserts.AssertBooleanFlag(struct["allowsHostedConnections"]) end
	if struct["numberOfConnections"] then asserts.AssertCount(struct["numberOfConnections"]) end
	if struct["lagState"] then asserts.AssertLagState(struct["lagState"]) end
	if struct["ownerAccount"] then asserts.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["lagName"] then asserts.AssertLagName(struct["lagName"]) end
	if struct["connections"] then asserts.AssertConnectionList(struct["connections"]) end
	if struct["lagId"] then asserts.AssertLagId(struct["lagId"]) end
	if struct["minimumLinks"] then asserts.AssertCount(struct["minimumLinks"]) end
	if struct["connectionsBandwidth"] then asserts.AssertBandwidth(struct["connectionsBandwidth"]) end
	if struct["region"] then asserts.AssertRegion(struct["region"]) end
	if struct["location"] then asserts.AssertLocationCode(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.Lag[k], "Lag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lag
-- <p>Describes a link aggregation group (LAG). A LAG is a connection that uses the Link Aggregation Control Protocol (LACP) to logically aggregate a bundle of physical connections. Like an interconnect, it can host other connections. All connections in a LAG must terminate on the same physical AWS Direct Connect endpoint, and must be the same bandwidth.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * awsDevice [AwsDevice] <p>The AWS Direct Connection endpoint that hosts the LAG.</p>
-- * allowsHostedConnections [BooleanFlag] <p>Indicates whether the LAG can host other connections.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>
-- * numberOfConnections [Count] <p>The number of physical connections bundled by the LAG, up to a maximum of 10.</p>
-- * lagState [LagState] 
-- * ownerAccount [OwnerAccount] <p>The owner of the LAG.</p>
-- * lagName [LagName] <p>The name of the LAG.</p>
-- * connections [ConnectionList] <p>A list of connections bundled by this LAG.</p>
-- * lagId [LagId] 
-- * minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational. If the number of operational connections drops below this setting, the LAG state changes to <code>down</code>. This value can help to ensure that a LAG is not overutilized if a significant number of its bundled connections go down.</p>
-- * connectionsBandwidth [Bandwidth] <p>The individual bandwidth of the physical connections bundled by the LAG.</p> <p>Available values: 1Gbps, 10Gbps</p>
-- * region [Region] 
-- * location [LocationCode] 
-- @return Lag structure as a key-value pair table
function M.Lag(args)
	assert(args, "You must provdide an argument table when creating Lag")
	local t = { 
		["awsDevice"] = args["awsDevice"],
		["allowsHostedConnections"] = args["allowsHostedConnections"],
		["numberOfConnections"] = args["numberOfConnections"],
		["lagState"] = args["lagState"],
		["ownerAccount"] = args["ownerAccount"],
		["lagName"] = args["lagName"],
		["connections"] = args["connections"],
		["lagId"] = args["lagId"],
		["minimumLinks"] = args["minimumLinks"],
		["connectionsBandwidth"] = args["connectionsBandwidth"],
		["region"] = args["region"],
		["location"] = args["location"],
	}
	asserts.AssertLag(t)
	return t
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
-- <p>The response received when ConfirmPrivateVirtualInterface is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaceState [VirtualInterfaceState] 
-- @return ConfirmPrivateVirtualInterfaceResponse structure as a key-value pair table
function M.ConfirmPrivateVirtualInterfaceResponse(args)
	assert(args, "You must provdide an argument table when creating ConfirmPrivateVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = args["virtualInterfaceState"],
	}
	asserts.AssertConfirmPrivateVirtualInterfaceResponse(t)
	return t
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
-- <p>Container for the parameters to the AssociateHostedConnection operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the hosted connection.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- * parentConnectionId [ConnectionId] <p>The ID of the interconnect or the LAG.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: parentConnectionId
-- @return AssociateHostedConnectionRequest structure as a key-value pair table
function M.AssociateHostedConnectionRequest(args)
	assert(args, "You must provdide an argument table when creating AssociateHostedConnectionRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
		["parentConnectionId"] = args["parentConnectionId"],
	}
	asserts.AssertAssociateHostedConnectionRequest(t)
	return t
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
-- <p>Container for the parameters to the CreateInterconnect operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * interconnectName [InterconnectName] <p>The name of the interconnect.</p> <p>Example: "<i>1G Interconnect to AWS</i>"</p> <p>Default: None</p>
-- * bandwidth [Bandwidth] <p>The port bandwidth</p> <p>Example: 1Gbps</p> <p>Default: None</p> <p>Available values: 1Gbps,10Gbps</p>
-- * lagId [LagId] 
-- * location [LocationCode] <p>Where the interconnect is located</p> <p>Example: EqSV5</p> <p>Default: None</p>
-- Required key: interconnectName
-- Required key: bandwidth
-- Required key: location
-- @return CreateInterconnectRequest structure as a key-value pair table
function M.CreateInterconnectRequest(args)
	assert(args, "You must provdide an argument table when creating CreateInterconnectRequest")
	local t = { 
		["interconnectName"] = args["interconnectName"],
		["bandwidth"] = args["bandwidth"],
		["lagId"] = args["lagId"],
		["location"] = args["location"],
	}
	asserts.AssertCreateInterconnectRequest(t)
	return t
end

keys.DirectConnectClientException = { ["message"] = true, nil }

function asserts.AssertDirectConnectClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectClientException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectConnectClientException[k], "DirectConnectClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectClientException
-- <p>The API was called with invalid parameters. The error message will contain additional details about the cause.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>This is an exception thrown when there is an issue with the input provided by the API call. For example, the name provided for a connection contains a pound sign (#). This can also occur when a valid value is provided, but is otherwise constrained. For example, the valid VLAN tag range is 1-4096 but each can only be used once per connection.</p>
-- @return DirectConnectClientException structure as a key-value pair table
function M.DirectConnectClientException(args)
	assert(args, "You must provdide an argument table when creating DirectConnectClientException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDirectConnectClientException(t)
	return t
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
-- <p>A structure containing a list of virtual private gateways.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGateways [VirtualGatewayList] <p>A list of virtual private gateways.</p>
-- @return VirtualGateways structure as a key-value pair table
function M.VirtualGateways(args)
	assert(args, "You must provdide an argument table when creating VirtualGateways")
	local t = { 
		["virtualGateways"] = args["virtualGateways"],
	}
	asserts.AssertVirtualGateways(t)
	return t
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
-- <p>Container for the parameters to the CreateConnection operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] 
-- * bandwidth [Bandwidth] 
-- * location [LocationCode] 
-- * connectionName [ConnectionName] 
-- Required key: location
-- Required key: bandwidth
-- Required key: connectionName
-- @return CreateConnectionRequest structure as a key-value pair table
function M.CreateConnectionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateConnectionRequest")
	local t = { 
		["lagId"] = args["lagId"],
		["bandwidth"] = args["bandwidth"],
		["location"] = args["location"],
		["connectionName"] = args["connectionName"],
	}
	asserts.AssertCreateConnectionRequest(t)
	return t
end

keys.NewPrivateVirtualInterface = { ["virtualGatewayId"] = true, ["customerAddress"] = true, ["vlan"] = true, ["addressFamily"] = true, ["authKey"] = true, ["amazonAddress"] = true, ["asn"] = true, ["virtualInterfaceName"] = true, nil }

function asserts.AssertNewPrivateVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPrivateVirtualInterface to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	assert(struct["virtualGatewayId"], "Expected key virtualGatewayId to exist in table")
	if struct["virtualGatewayId"] then asserts.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["customerAddress"] then asserts.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then asserts.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then asserts.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then asserts.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then asserts.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then asserts.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then asserts.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewPrivateVirtualInterface[k], "NewPrivateVirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPrivateVirtualInterface
-- <p>A structure containing information about a new private virtual interface.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualGatewayId [VirtualGatewayId] 
-- * customerAddress [CustomerAddress] 
-- * vlan [VLAN] 
-- * addressFamily [AddressFamily] 
-- * authKey [BGPAuthKey] 
-- * amazonAddress [AmazonAddress] 
-- * asn [ASN] 
-- * virtualInterfaceName [VirtualInterfaceName] 
-- Required key: virtualInterfaceName
-- Required key: vlan
-- Required key: asn
-- Required key: virtualGatewayId
-- @return NewPrivateVirtualInterface structure as a key-value pair table
function M.NewPrivateVirtualInterface(args)
	assert(args, "You must provdide an argument table when creating NewPrivateVirtualInterface")
	local t = { 
		["virtualGatewayId"] = args["virtualGatewayId"],
		["customerAddress"] = args["customerAddress"],
		["vlan"] = args["vlan"],
		["addressFamily"] = args["addressFamily"],
		["authKey"] = args["authKey"],
		["amazonAddress"] = args["amazonAddress"],
		["asn"] = args["asn"],
		["virtualInterfaceName"] = args["virtualInterfaceName"],
	}
	asserts.AssertNewPrivateVirtualInterface(t)
	return t
end

keys.DirectConnectServerException = { ["message"] = true, nil }

function asserts.AssertDirectConnectServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectServerException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectConnectServerException[k], "DirectConnectServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectServerException
-- <p>A server-side error occurred during the API call. The error message will contain additional details about the cause.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>This is an exception thrown when there is a backend issue on the server side.</p>
-- @return DirectConnectServerException structure as a key-value pair table
function M.DirectConnectServerException(args)
	assert(args, "You must provdide an argument table when creating DirectConnectServerException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDirectConnectServerException(t)
	return t
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
-- <p>A structure containing a list of virtual interfaces.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * virtualInterfaces [VirtualInterfaceList] <p>A list of virtual interfaces.</p>
-- @return VirtualInterfaces structure as a key-value pair table
function M.VirtualInterfaces(args)
	assert(args, "You must provdide an argument table when creating VirtualInterfaces")
	local t = { 
		["virtualInterfaces"] = args["virtualInterfaces"],
	}
	asserts.AssertVirtualInterfaces(t)
	return t
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
-- <p>Container for the parameters to the TagResource operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p> <p>Example: arn:aws:directconnect:us-east-1:123456789012:dxcon/dxcon-fg5678gh</p>
-- * tags [TagList] <p>The list of tags to add.</p>
-- Required key: resourceArn
-- Required key: tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provdide an argument table when creating TagResourceRequest")
	local t = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertTagResourceRequest(t)
	return t
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
-- <p>Container for the parameters to the DeleteLag operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lagId [LagId] <p>The ID of the LAG to delete.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- Required key: lagId
-- @return DeleteLagRequest structure as a key-value pair table
function M.DeleteLagRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteLagRequest")
	local t = { 
		["lagId"] = args["lagId"],
	}
	asserts.AssertDeleteLagRequest(t)
	return t
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
-- <p>Container for the parameters to the DescribeHostedConnections operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] <p>The ID of the interconnect or LAG on which the hosted connections are provisioned.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- Required key: connectionId
-- @return DescribeHostedConnectionsRequest structure as a key-value pair table
function M.DescribeHostedConnectionsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeHostedConnectionsRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
	}
	asserts.AssertDescribeHostedConnectionsRequest(t)
	return t
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
-- <p>The response received when ConfirmConnection is called.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionState [ConnectionState] 
-- @return ConfirmConnectionResponse structure as a key-value pair table
function M.ConfirmConnectionResponse(args)
	assert(args, "You must provdide an argument table when creating ConfirmConnectionResponse")
	local t = { 
		["connectionState"] = args["connectionState"],
	}
	asserts.AssertConfirmConnectionResponse(t)
	return t
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
-- <p>Container for the parameters to the CreatePrivateVirtualInterface operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectionId [ConnectionId] 
-- * newPrivateVirtualInterface [NewPrivateVirtualInterface] <p>Detailed information for the private virtual interface to be created.</p> <p>Default: None</p>
-- Required key: connectionId
-- Required key: newPrivateVirtualInterface
-- @return CreatePrivateVirtualInterfaceRequest structure as a key-value pair table
function M.CreatePrivateVirtualInterfaceRequest(args)
	assert(args, "You must provdide an argument table when creating CreatePrivateVirtualInterfaceRequest")
	local t = { 
		["connectionId"] = args["connectionId"],
		["newPrivateVirtualInterface"] = args["newPrivateVirtualInterface"],
	}
	asserts.AssertCreatePrivateVirtualInterfaceRequest(t)
	return t
end

function asserts.AssertVirtualGatewayState(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayState to be of type 'string'")
end

-- <p>State of the virtual private gateway.</p> <ul> <li> <p> <b>Pending</b>: This is the initial state after calling <i>CreateVpnGateway</i>.</p> </li> <li> <p> <b>Available</b>: Ready for use by a private virtual interface.</p> </li> <li> <p> <b>Deleting</b>: This is the initial state after calling <i>DeleteVpnGateway</i>.</p> </li> <li> <p> <b>Deleted</b>: In this state, a private virtual interface is unable to send traffic over this gateway.</p> </li> </ul>
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

-- <p>IP address assigned to the Amazon interface.</p> <p>Example: 192.168.1.1/30 or 2001:db8::1/125</p>
function M.AmazonAddress(str)
	asserts.AssertAmazonAddress(str)
	return str
end

function asserts.AssertVirtualGatewayId(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayId to be of type 'string'")
end

-- <p>The ID of the virtual private gateway to a VPC. This only applies to private virtual interfaces.</p> <p>Example: vgw-123er56</p>
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

-- <p>The state of the LAG.</p> <ul> <li> <p> <b>Requested</b>: The initial state of a LAG. The LAG stays in the requested state until the Letter of Authorization (LOA) is available.</p> </li> <li> <p> <b>Pending</b>: The LAG has been approved, and is being initialized.</p> </li> <li> <p> <b>Available</b>: The network link is established, and the LAG is ready for use.</p> </li> <li> <p> <b>Down</b>: The network link is down.</p> </li> <li> <p> <b>Deleting</b>: The LAG is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The LAG has been deleted.</p> </li> </ul>
function M.LagState(str)
	asserts.AssertLagState(str)
	return str
end

function asserts.AssertBGPStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPStatus to be of type 'string'")
end

-- <p>The Up/Down state of the BGP peer.</p> <ul> <li> <p> <b>Up</b>: The BGP peer is established.</p> </li> <li> <p> <b>Down</b>: The BGP peer is down.</p> </li> </ul>
function M.BGPStatus(str)
	asserts.AssertBGPStatus(str)
	return str
end

function asserts.AssertLagId(str)
	assert(str)
	assert(type(str) == "string", "Expected LagId to be of type 'string'")
end

-- <p>The ID of the LAG.</p> <p>Example: dxlag-fg5678gh</p>
function M.LagId(str)
	asserts.AssertLagId(str)
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

-- <p>The AWS region where the connection is located.</p> <p>Example: us-east-1</p> <p>Default: None</p>
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

-- <p>An abstract ID for the physical Direct Connect endpoint.</p> <p>Example: EQC50-abcdef123456</p>
function M.AwsDevice(str)
	asserts.AssertAwsDevice(str)
	return str
end

function asserts.AssertLoaContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected LoaContentType to be of type 'string'")
end

-- <p>A standard media type indicating the content type of the LOA-CFA document. Currently, the only supported value is "application/pdf".</p> <p>Default: application/pdf</p>
function M.LoaContentType(str)
	asserts.AssertLoaContentType(str)
	return str
end

function asserts.AssertInterconnectName(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectName to be of type 'string'")
end

-- <p>The name of the interconnect.</p> <p>Example: "<i>1G Interconnect to AWS</i>"</p>
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

-- <p>State of the interconnect.</p> <ul> <li> <p> <b>Requested</b>: The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <b>Pending</b>: The interconnect has been approved, and is being initialized.</p> </li> <li> <p> <b>Available</b>: The network link is up, and the interconnect is ready for use.</p> </li> <li> <p> <b>Down</b>: The network link is down.</p> </li> <li> <p> <b>Deleting</b>: The interconnect is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The interconnect has been deleted.</p> </li> </ul>
function M.InterconnectState(str)
	asserts.AssertInterconnectState(str)
	return str
end

function asserts.AssertVirtualInterfaceType(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceType to be of type 'string'")
end

-- <p>The type of virtual interface.</p> <p>Example: private (Amazon VPC) or public (Amazon S3, Amazon DynamoDB, and so on.)</p>
function M.VirtualInterfaceType(str)
	asserts.AssertVirtualInterfaceType(str)
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

function asserts.AssertVirtualInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceId to be of type 'string'")
end

-- <p>The ID of the virtual interface.</p> <p>Example: dxvif-123dfg56</p> <p>Default: None</p>
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

-- <p>The name of the connection.</p> <p>Example: "<i>My Connection to AWS</i>"</p> <p>Default: None</p>
function M.ConnectionName(str)
	asserts.AssertConnectionName(str)
	return str
end

function asserts.AssertVirtualInterfaceState(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceState to be of type 'string'")
end

-- <p>State of the virtual interface.</p> <ul> <li> <p> <b>Confirming</b>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <b>Verifying</b>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <b>Pending</b>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <b>Available</b>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <b>Down</b>: A virtual interface that is BGP down.</p> </li> <li> <p> <b>Deleting</b>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <b>Deleted</b>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <b>Rejected</b>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the 'Confirming' state is deleted by the virtual interface owner, the virtual interface will enter the 'Rejected' state.</p> </li> </ul>
function M.VirtualInterfaceState(str)
	asserts.AssertVirtualInterfaceState(str)
	return str
end

function asserts.AssertBGPAuthKey(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPAuthKey to be of type 'string'")
end

-- <p>The authentication key for BGP configuration.</p> <p>Example: asdf34example</p>
function M.BGPAuthKey(str)
	asserts.AssertBGPAuthKey(str)
	return str
end

function asserts.AssertInterconnectId(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectId to be of type 'string'")
end

-- <p>The ID of the interconnect.</p> <p>Example: dxcon-abc123</p>
function M.InterconnectId(str)
	asserts.AssertInterconnectId(str)
	return str
end

function asserts.AssertConnectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionId to be of type 'string'")
end

-- <p>The ID of the connection. This field is also used as the ID type for operations that use multiple connection types (LAG, interconnect, and/or connection).</p> <p>Example: dxcon-fg5678gh</p> <p>Default: None</p>
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

function asserts.AssertConnectionState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionState to be of type 'string'")
end

-- <p>State of the connection.</p> <ul> <li> <p> <b>Ordering</b>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p> </li> <li> <p> <b>Requested</b>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <b>Pending</b>: The connection has been approved, and is being initialized.</p> </li> <li> <p> <b>Available</b>: The network link is up, and the connection is ready for use.</p> </li> <li> <p> <b>Down</b>: The network link is down.</p> </li> <li> <p> <b>Deleting</b>: The connection is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The connection has been deleted.</p> </li> <li> <p> <b>Rejected</b>: A hosted connection in the 'Ordering' state will enter the 'Rejected' state if it is deleted by the end customer.</p> </li> </ul>
function M.ConnectionState(str)
	asserts.AssertConnectionState(str)
	return str
end

function asserts.AssertAddressFamily(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressFamily to be of type 'string'")
end

-- <p>Indicates the address family for the BGP peer.</p> <ul> <li> <p> <b>ipv4</b>: IPv4 address family</p> </li> <li> <p> <b>ipv6</b>: IPv6 address family</p> </li> </ul>
function M.AddressFamily(str)
	asserts.AssertAddressFamily(str)
	return str
end

function asserts.AssertVirtualInterfaceName(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceName to be of type 'string'")
end

-- <p>The name of the virtual interface assigned by the customer.</p> <p>Example: "My VPC"</p>
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

-- <p>The state of the BGP peer.</p> <ul> <li> <p> <b>Verifying</b>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state only applies to BGP peers on a public virtual interface. </p> </li> <li> <p> <b>Pending</b>: The BGP peer has been created, and is in this state until it is ready to be established.</p> </li> <li> <p> <b>Available</b>: The BGP peer can be established.</p> </li> <li> <p> <b>Deleting</b>: The BGP peer is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The BGP peer has been deleted and cannot be established.</p> </li> </ul>
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

-- <p>IP address assigned to the customer interface.</p> <p>Example: 192.168.1.2/30 or 2001:db8::2/125</p>
function M.CustomerAddress(str)
	asserts.AssertCustomerAddress(str)
	return str
end

function asserts.AssertBandwidth(str)
	assert(str)
	assert(type(str) == "string", "Expected Bandwidth to be of type 'string'")
end

-- <p>Bandwidth of the connection.</p> <p>Example: 1Gbps</p> <p>Default: None</p>
function M.Bandwidth(str)
	asserts.AssertBandwidth(str)
	return str
end

function asserts.AssertLocationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationCode to be of type 'string'")
end

-- <p>Where the connection is located.</p> <p>Example: EqSV5</p> <p>Default: None</p>
function M.LocationCode(str)
	asserts.AssertLocationCode(str)
	return str
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
	assert(type(string) == "string", "Expected LoaContent to be of type 'string'")
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

-- <p>A list of virtual private gateways.</p>
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

-- <p>A list of connections.</p>
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

-- <p>A list of LAGs.</p>
-- List of Lag objects
function M.LagList(list)
	asserts.AssertLagList(list)
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

function asserts.AssertRouteFilterPrefixList(list)
	assert(list)
	assert(type(list) == "table", "Expected RouteFilterPrefixList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRouteFilterPrefix(v)
	end
end

-- <p>A list of routes to be advertised to the AWS network in this region (public virtual interface).</p>
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

-- <p>A list of virtual interfaces.</p>
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

-- <p>A list of the BGP peers configured on this virtual interface.</p>
-- List of BGPPeer objects
function M.BGPPeerList(list)
	asserts.AssertBGPPeerList(list)
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

-- <p>A list of interconnects.</p>
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
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DescribeVirtualGateways asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVirtualGatewaysAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualGateways",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVirtualGateways synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.DescribeVirtualGatewaysSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVirtualGatewaysAsync(function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBGPPeer asynchronously, invoking a callback when done
-- @param CreateBGPPeerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBGPPeerAsync(CreateBGPPeerRequest, cb)
	assert(CreateBGPPeerRequest, "You must provide a CreateBGPPeerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateBGPPeer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateBGPPeerSync(CreateBGPPeerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBGPPeerAsync(CreateBGPPeerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocateHostedConnection asynchronously, invoking a callback when done
-- @param AllocateHostedConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocateHostedConnectionAsync(AllocateHostedConnectionRequest, cb)
	assert(AllocateHostedConnectionRequest, "You must provide a AllocateHostedConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AllocateHostedConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AllocateHostedConnectionSync(AllocateHostedConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocateHostedConnectionAsync(AllocateHostedConnectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateHostedConnection asynchronously, invoking a callback when done
-- @param AssociateHostedConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateHostedConnectionAsync(AssociateHostedConnectionRequest, cb)
	assert(AssociateHostedConnectionRequest, "You must provide a AssociateHostedConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateHostedConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateHostedConnectionSync(AssociateHostedConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateHostedConnectionAsync(AssociateHostedConnectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocatePublicVirtualInterface asynchronously, invoking a callback when done
-- @param AllocatePublicVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocatePublicVirtualInterfaceAsync(AllocatePublicVirtualInterfaceRequest, cb)
	assert(AllocatePublicVirtualInterfaceRequest, "You must provide a AllocatePublicVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AllocatePublicVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AllocatePublicVirtualInterfaceSync(AllocatePublicVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocatePublicVirtualInterfaceAsync(AllocatePublicVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVirtualInterface asynchronously, invoking a callback when done
-- @param DeleteVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVirtualInterfaceAsync(DeleteVirtualInterfaceRequest, cb)
	assert(DeleteVirtualInterfaceRequest, "You must provide a DeleteVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteVirtualInterfaceSync(DeleteVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVirtualInterfaceAsync(DeleteVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInterconnect asynchronously, invoking a callback when done
-- @param CreateInterconnectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInterconnectAsync(CreateInterconnectRequest, cb)
	assert(CreateInterconnectRequest, "You must provide a CreateInterconnectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateInterconnect",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateInterconnectSync(CreateInterconnectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInterconnectAsync(CreateInterconnectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLags asynchronously, invoking a callback when done
-- @param DescribeLagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLagsAsync(DescribeLagsRequest, cb)
	assert(DescribeLagsRequest, "You must provide a DescribeLagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeLagsSync(DescribeLagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLagsAsync(DescribeLagsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBGPPeer asynchronously, invoking a callback when done
-- @param DeleteBGPPeerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBGPPeerAsync(DeleteBGPPeerRequest, cb)
	assert(DeleteBGPPeerRequest, "You must provide a DeleteBGPPeerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteBGPPeer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteBGPPeerSync(DeleteBGPPeerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBGPPeerAsync(DeleteBGPPeerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AllocatePrivateVirtualInterface asynchronously, invoking a callback when done
-- @param AllocatePrivateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocatePrivateVirtualInterfaceAsync(AllocatePrivateVirtualInterfaceRequest, cb)
	assert(AllocatePrivateVirtualInterfaceRequest, "You must provide a AllocatePrivateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AllocatePrivateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AllocatePrivateVirtualInterfaceSync(AllocatePrivateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AllocatePrivateVirtualInterfaceAsync(AllocatePrivateVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateConnectionWithLag asynchronously, invoking a callback when done
-- @param AssociateConnectionWithLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateConnectionWithLagAsync(AssociateConnectionWithLagRequest, cb)
	assert(AssociateConnectionWithLagRequest, "You must provide a AssociateConnectionWithLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateConnectionWithLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateConnectionWithLagSync(AssociateConnectionWithLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateConnectionWithLagAsync(AssociateConnectionWithLagRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLag asynchronously, invoking a callback when done
-- @param CreateLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLagAsync(CreateLagRequest, cb)
	assert(CreateLagRequest, "You must provide a CreateLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateLagSync(CreateLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLagAsync(CreateLagRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmPublicVirtualInterface asynchronously, invoking a callback when done
-- @param ConfirmPublicVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmPublicVirtualInterfaceAsync(ConfirmPublicVirtualInterfaceRequest, cb)
	assert(ConfirmPublicVirtualInterfaceRequest, "You must provide a ConfirmPublicVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmPublicVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ConfirmPublicVirtualInterfaceSync(ConfirmPublicVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmPublicVirtualInterfaceAsync(ConfirmPublicVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoa asynchronously, invoking a callback when done
-- @param DescribeLoaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoaAsync(DescribeLoaRequest, cb)
	assert(DescribeLoaRequest, "You must provide a DescribeLoaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLoa",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeLoaSync(DescribeLoaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoaAsync(DescribeLoaRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHostedConnections asynchronously, invoking a callback when done
-- @param DescribeHostedConnectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHostedConnectionsAsync(DescribeHostedConnectionsRequest, cb)
	assert(DescribeHostedConnectionsRequest, "You must provide a DescribeHostedConnectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeHostedConnections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeHostedConnectionsSync(DescribeHostedConnectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHostedConnectionsAsync(DescribeHostedConnectionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInterconnect asynchronously, invoking a callback when done
-- @param DeleteInterconnectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInterconnectAsync(DeleteInterconnectRequest, cb)
	assert(DeleteInterconnectRequest, "You must provide a DeleteInterconnectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteInterconnect",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteInterconnectSync(DeleteInterconnectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInterconnectAsync(DeleteInterconnectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeVirtualInterfaces asynchronously, invoking a callback when done
-- @param DescribeVirtualInterfacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVirtualInterfacesAsync(DescribeVirtualInterfacesRequest, cb)
	assert(DescribeVirtualInterfacesRequest, "You must provide a DescribeVirtualInterfacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualInterfaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeVirtualInterfacesSync(DescribeVirtualInterfacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVirtualInterfacesAsync(DescribeVirtualInterfacesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLag asynchronously, invoking a callback when done
-- @param UpdateLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateLagAsync(UpdateLagRequest, cb)
	assert(UpdateLagRequest, "You must provide a UpdateLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.UpdateLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateLagSync(UpdateLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLagAsync(UpdateLagRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmPrivateVirtualInterface asynchronously, invoking a callback when done
-- @param ConfirmPrivateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmPrivateVirtualInterfaceAsync(ConfirmPrivateVirtualInterfaceRequest, cb)
	assert(ConfirmPrivateVirtualInterfaceRequest, "You must provide a ConfirmPrivateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmPrivateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ConfirmPrivateVirtualInterfaceSync(ConfirmPrivateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmPrivateVirtualInterfaceAsync(ConfirmPrivateVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateConnectionFromLag asynchronously, invoking a callback when done
-- @param DisassociateConnectionFromLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateConnectionFromLagAsync(DisassociateConnectionFromLagRequest, cb)
	assert(DisassociateConnectionFromLagRequest, "You must provide a DisassociateConnectionFromLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DisassociateConnectionFromLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisassociateConnectionFromLagSync(DisassociateConnectionFromLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateConnectionFromLagAsync(DisassociateConnectionFromLagRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmConnection asynchronously, invoking a callback when done
-- @param ConfirmConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmConnectionAsync(ConfirmConnectionRequest, cb)
	assert(ConfirmConnectionRequest, "You must provide a ConfirmConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ConfirmConnectionSync(ConfirmConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmConnectionAsync(ConfirmConnectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInterconnects asynchronously, invoking a callback when done
-- @param DescribeInterconnectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInterconnectsAsync(DescribeInterconnectsRequest, cb)
	assert(DescribeInterconnectsRequest, "You must provide a DescribeInterconnectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeInterconnects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeInterconnectsSync(DescribeInterconnectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInterconnectsAsync(DescribeInterconnectsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeTagsSync(DescribeTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConnections asynchronously, invoking a callback when done
-- @param DescribeConnectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConnectionsAsync(DescribeConnectionsRequest, cb)
	assert(DescribeConnectionsRequest, "You must provide a DescribeConnectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeConnections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeConnectionsSync(DescribeConnectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConnectionsAsync(DescribeConnectionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePublicVirtualInterface asynchronously, invoking a callback when done
-- @param CreatePublicVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePublicVirtualInterfaceAsync(CreatePublicVirtualInterfaceRequest, cb)
	assert(CreatePublicVirtualInterfaceRequest, "You must provide a CreatePublicVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreatePublicVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreatePublicVirtualInterfaceSync(CreatePublicVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePublicVirtualInterfaceAsync(CreatePublicVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConnection asynchronously, invoking a callback when done
-- @param CreateConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConnectionAsync(CreateConnectionRequest, cb)
	assert(CreateConnectionRequest, "You must provide a CreateConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreateConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateConnectionSync(CreateConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConnectionAsync(CreateConnectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLocations asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLocationsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLocations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.DescribeLocationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLocationsAsync(function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePrivateVirtualInterface asynchronously, invoking a callback when done
-- @param CreatePrivateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePrivateVirtualInterfaceAsync(CreatePrivateVirtualInterfaceRequest, cb)
	assert(CreatePrivateVirtualInterfaceRequest, "You must provide a CreatePrivateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.CreatePrivateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreatePrivateVirtualInterfaceSync(CreatePrivateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePrivateVirtualInterfaceAsync(CreatePrivateVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConnection asynchronously, invoking a callback when done
-- @param DeleteConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConnectionAsync(DeleteConnectionRequest, cb)
	assert(DeleteConnectionRequest, "You must provide a DeleteConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteConnectionSync(DeleteConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConnectionAsync(DeleteConnectionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLag asynchronously, invoking a callback when done
-- @param DeleteLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLagAsync(DeleteLagRequest, cb)
	assert(DeleteLagRequest, "You must provide a DeleteLagRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteLagSync(DeleteLagRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLagAsync(DeleteLagRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateVirtualInterface asynchronously, invoking a callback when done
-- @param AssociateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateVirtualInterfaceAsync(AssociateVirtualInterfaceRequest, cb)
	assert(AssociateVirtualInterfaceRequest, "You must provide a AssociateVirtualInterfaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateVirtualInterfaceSync(AssociateVirtualInterfaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateVirtualInterfaceAsync(AssociateVirtualInterfaceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
