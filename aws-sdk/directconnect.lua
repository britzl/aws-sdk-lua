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

local Interconnect_keys = { "awsDevice" = true, "region" = true, "lagId" = true, "bandwidth" = true, "location" = true, "interconnectName" = true, "interconnectId" = true, "loaIssueTime" = true, "interconnectState" = true, nil }

function M.AssertInterconnect(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Interconnect to be of type 'table'")
	if struct["awsDevice"] then M.AssertAwsDevice(struct["awsDevice"]) end
	if struct["region"] then M.AssertRegion(struct["region"]) end
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["bandwidth"] then M.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	if struct["interconnectName"] then M.AssertInterconnectName(struct["interconnectName"]) end
	if struct["interconnectId"] then M.AssertInterconnectId(struct["interconnectId"]) end
	if struct["loaIssueTime"] then M.AssertLoaIssueTime(struct["loaIssueTime"]) end
	if struct["interconnectState"] then M.AssertInterconnectState(struct["interconnectState"]) end
	for k,_ in pairs(struct) do
		assert(Interconnect_keys[k], "Interconnect contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Interconnect
-- <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param awsDevice [AwsDevice] <p>The Direct Connection endpoint which the physical connection terminates on.</p>
-- @param region [Region] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param lagId [LagId] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param bandwidth [Bandwidth] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param location [LocationCode] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param interconnectName [InterconnectName] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param interconnectId [InterconnectId] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
-- @param loaIssueTime [LoaIssueTime] <p>The time of the most recent call to DescribeInterconnectLoa for this Interconnect.</p>
-- @param interconnectState [InterconnectState] <p>An interconnect is a connection that can host other connections.</p> <p>Like a standard AWS Direct Connect connection, an interconnect represents the physical connection between an AWS Direct Connect partner's network and a specific Direct Connect location. An AWS Direct Connect partner who owns an interconnect can provision hosted connections on the interconnect for their end customers, thereby providing the end customers with connectivity to AWS services.</p> <p>The resources of the interconnect, including bandwidth and VLAN numbers, are shared by all of the hosted connections on the interconnect, and the owner of the interconnect determines how these resources are assigned.</p>
function M.Interconnect(awsDevice, region, lagId, bandwidth, location, interconnectName, interconnectId, loaIssueTime, interconnectState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Interconnect")
	local t = { 
		["awsDevice"] = awsDevice,
		["region"] = region,
		["lagId"] = lagId,
		["bandwidth"] = bandwidth,
		["location"] = location,
		["interconnectName"] = interconnectName,
		["interconnectId"] = interconnectId,
		["loaIssueTime"] = loaIssueTime,
		["interconnectState"] = interconnectState,
	}
	M.AssertInterconnect(t)
	return t
end

local DuplicateTagKeysException_keys = { nil }

function M.AssertDuplicateTagKeysException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateTagKeysException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateTagKeysException_keys[k], "DuplicateTagKeysException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateTagKeysException
-- <p>A tag key was specified more than once.</p>
function M.DuplicateTagKeysException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateTagKeysException")
	local t = { 
	}
	M.AssertDuplicateTagKeysException(t)
	return t
end

local DeleteInterconnectRequest_keys = { "interconnectId" = true, nil }

function M.AssertDeleteInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInterconnectRequest to be of type 'table'")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	if struct["interconnectId"] then M.AssertInterconnectId(struct["interconnectId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInterconnectRequest_keys[k], "DeleteInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInterconnectRequest
-- <p>Container for the parameters to the DeleteInterconnect operation.</p>
-- @param interconnectId [InterconnectId] <p>Container for the parameters to the DeleteInterconnect operation.</p>
-- Required parameter: interconnectId
function M.DeleteInterconnectRequest(interconnectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInterconnectRequest")
	local t = { 
		["interconnectId"] = interconnectId,
	}
	M.AssertDeleteInterconnectRequest(t)
	return t
end

local ConfirmPublicVirtualInterfaceRequest_keys = { "virtualInterfaceId" = true, nil }

function M.AssertConfirmPublicVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPublicVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmPublicVirtualInterfaceRequest_keys[k], "ConfirmPublicVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPublicVirtualInterfaceRequest
-- <p>Container for the parameters to the ConfirmPublicVirtualInterface operation.</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>Container for the parameters to the ConfirmPublicVirtualInterface operation.</p>
-- Required parameter: virtualInterfaceId
function M.ConfirmPublicVirtualInterfaceRequest(virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPublicVirtualInterfaceRequest")
	local t = { 
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertConfirmPublicVirtualInterfaceRequest(t)
	return t
end

local DescribeConnectionLoaRequest_keys = { "loaContentType" = true, "connectionId" = true, "providerName" = true, nil }

function M.AssertDescribeConnectionLoaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionLoaRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["loaContentType"] then M.AssertLoaContentType(struct["loaContentType"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["providerName"] then M.AssertProviderName(struct["providerName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConnectionLoaRequest_keys[k], "DescribeConnectionLoaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionLoaRequest
-- <p>Container for the parameters to the DescribeConnectionLoa operation.</p>
-- @param loaContentType [LoaContentType] <p>Container for the parameters to the DescribeConnectionLoa operation.</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the DescribeConnectionLoa operation.</p>
-- @param providerName [ProviderName] <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- Required parameter: connectionId
function M.DescribeConnectionLoaRequest(loaContentType, connectionId, providerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionLoaRequest")
	local t = { 
		["loaContentType"] = loaContentType,
		["connectionId"] = connectionId,
		["providerName"] = providerName,
	}
	M.AssertDescribeConnectionLoaRequest(t)
	return t
end

local AssociateConnectionWithLagRequest_keys = { "lagId" = true, "connectionId" = true, nil }

function M.AssertAssociateConnectionWithLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateConnectionWithLagRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateConnectionWithLagRequest_keys[k], "AssociateConnectionWithLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateConnectionWithLagRequest
-- <p>Container for the parameters to the AssociateConnectionWithLag operation.</p>
-- @param lagId [LagId] <p>The ID of the LAG with which to associate the connection.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @param connectionId [ConnectionId] <p>The ID of the connection.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: lagId
function M.AssociateConnectionWithLagRequest(lagId, connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateConnectionWithLagRequest")
	local t = { 
		["lagId"] = lagId,
		["connectionId"] = connectionId,
	}
	M.AssertAssociateConnectionWithLagRequest(t)
	return t
end

local DeleteInterconnectResponse_keys = { "interconnectState" = true, nil }

function M.AssertDeleteInterconnectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInterconnectResponse to be of type 'table'")
	if struct["interconnectState"] then M.AssertInterconnectState(struct["interconnectState"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInterconnectResponse_keys[k], "DeleteInterconnectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInterconnectResponse
-- <p>The response received when DeleteInterconnect is called.</p>
-- @param interconnectState [InterconnectState] <p>The response received when DeleteInterconnect is called.</p>
function M.DeleteInterconnectResponse(interconnectState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInterconnectResponse")
	local t = { 
		["interconnectState"] = interconnectState,
	}
	M.AssertDeleteInterconnectResponse(t)
	return t
end

local DescribeVirtualInterfacesRequest_keys = { "connectionId" = true, "virtualInterfaceId" = true, nil }

function M.AssertDescribeVirtualInterfacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVirtualInterfacesRequest to be of type 'table'")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVirtualInterfacesRequest_keys[k], "DescribeVirtualInterfacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVirtualInterfacesRequest
-- <p>Container for the parameters to the DescribeVirtualInterfaces operation.</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the DescribeVirtualInterfaces operation.</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>Container for the parameters to the DescribeVirtualInterfaces operation.</p>
function M.DescribeVirtualInterfacesRequest(connectionId, virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVirtualInterfacesRequest")
	local t = { 
		["connectionId"] = connectionId,
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertDescribeVirtualInterfacesRequest(t)
	return t
end

local DescribeLagsRequest_keys = { "lagId" = true, nil }

function M.AssertDescribeLagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLagsRequest to be of type 'table'")
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLagsRequest_keys[k], "DescribeLagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLagsRequest
-- <p>Container for the parameters to the DescribeLags operation.</p>
-- @param lagId [LagId] <p>The ID of the LAG.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
function M.DescribeLagsRequest(lagId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLagsRequest")
	local t = { 
		["lagId"] = lagId,
	}
	M.AssertDescribeLagsRequest(t)
	return t
end

local Interconnects_keys = { "interconnects" = true, nil }

function M.AssertInterconnects(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Interconnects to be of type 'table'")
	if struct["interconnects"] then M.AssertInterconnectList(struct["interconnects"]) end
	for k,_ in pairs(struct) do
		assert(Interconnects_keys[k], "Interconnects contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Interconnects
-- <p>A structure containing a list of interconnects.</p>
-- @param interconnects [InterconnectList] <p>A list of interconnects.</p>
function M.Interconnects(interconnects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Interconnects")
	local t = { 
		["interconnects"] = interconnects,
	}
	M.AssertInterconnects(t)
	return t
end

local DescribeInterconnectLoaResponse_keys = { "loa" = true, nil }

function M.AssertDescribeInterconnectLoaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInterconnectLoaResponse to be of type 'table'")
	if struct["loa"] then M.AssertLoa(struct["loa"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInterconnectLoaResponse_keys[k], "DescribeInterconnectLoaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInterconnectLoaResponse
-- <p>The response received when DescribeInterconnectLoa is called.</p>
-- @param loa [Loa] <p>The response received when DescribeInterconnectLoa is called.</p>
function M.DescribeInterconnectLoaResponse(loa, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInterconnectLoaResponse")
	local t = { 
		["loa"] = loa,
	}
	M.AssertDescribeInterconnectLoaResponse(t)
	return t
end

local DisassociateConnectionFromLagRequest_keys = { "lagId" = true, "connectionId" = true, nil }

function M.AssertDisassociateConnectionFromLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConnectionFromLagRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateConnectionFromLagRequest_keys[k], "DisassociateConnectionFromLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConnectionFromLagRequest
-- <p>Container for the parameters to the DisassociateConnectionFromLag operation.</p>
-- @param lagId [LagId] <p>The ID of the LAG.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @param connectionId [ConnectionId] <p>The ID of the connection to disassociate from the LAG.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: lagId
function M.DisassociateConnectionFromLagRequest(lagId, connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConnectionFromLagRequest")
	local t = { 
		["lagId"] = lagId,
		["connectionId"] = connectionId,
	}
	M.AssertDisassociateConnectionFromLagRequest(t)
	return t
end

local CreateLagRequest_keys = { "connectionId" = true, "lagName" = true, "numberOfConnections" = true, "location" = true, "connectionsBandwidth" = true, nil }

function M.AssertCreateLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLagRequest to be of type 'table'")
	assert(struct["numberOfConnections"], "Expected key numberOfConnections to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	assert(struct["connectionsBandwidth"], "Expected key connectionsBandwidth to exist in table")
	assert(struct["lagName"], "Expected key lagName to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["lagName"] then M.AssertLagName(struct["lagName"]) end
	if struct["numberOfConnections"] then M.AssertCount(struct["numberOfConnections"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	if struct["connectionsBandwidth"] then M.AssertBandwidth(struct["connectionsBandwidth"]) end
	for k,_ in pairs(struct) do
		assert(CreateLagRequest_keys[k], "CreateLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLagRequest
-- <p>Container for the parameters to the CreateLag operation.</p>
-- @param connectionId [ConnectionId] <p>The ID of an existing connection to migrate to the LAG.</p> <p>Default: None</p>
-- @param lagName [LagName] <p>The name of the LAG.</p> <p>Example: "<code>3x10G LAG to AWS</code>"</p> <p>Default: None</p>
-- @param numberOfConnections [Count] <p>The number of physical connections initially provisioned and bundled by the LAG.</p> <p>Default: None</p>
-- @param location [LocationCode] <p>The AWS Direct Connect location in which the LAG should be allocated.</p> <p>Example: EqSV5</p> <p>Default: None</p>
-- @param connectionsBandwidth [Bandwidth] <p>The bandwidth of the individual physical connections bundled by the LAG.</p> <p>Default: None</p> <p>Available values: 1Gbps, 10Gbps</p>
-- Required parameter: numberOfConnections
-- Required parameter: location
-- Required parameter: connectionsBandwidth
-- Required parameter: lagName
function M.CreateLagRequest(connectionId, lagName, numberOfConnections, location, connectionsBandwidth, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLagRequest")
	local t = { 
		["connectionId"] = connectionId,
		["lagName"] = lagName,
		["numberOfConnections"] = numberOfConnections,
		["location"] = location,
		["connectionsBandwidth"] = connectionsBandwidth,
	}
	M.AssertCreateLagRequest(t)
	return t
end

local Connections_keys = { "connections" = true, nil }

function M.AssertConnections(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connections to be of type 'table'")
	if struct["connections"] then M.AssertConnectionList(struct["connections"]) end
	for k,_ in pairs(struct) do
		assert(Connections_keys[k], "Connections contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connections
-- <p>A structure containing a list of connections.</p>
-- @param connections [ConnectionList] <p>A list of connections.</p>
function M.Connections(connections, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connections")
	local t = { 
		["connections"] = connections,
	}
	M.AssertConnections(t)
	return t
end

local Tag_keys = { "value" = true, "key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then M.AssertTagValue(struct["value"]) end
	if struct["key"] then M.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Information about a tag.</p>
-- @param value [TagValue] <p>The value of the tag.</p>
-- @param key [TagKey] <p>The key of the tag.</p>
-- Required parameter: key
function M.Tag(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertTag(t)
	return t
end

local DescribeConnectionsOnInterconnectRequest_keys = { "interconnectId" = true, nil }

function M.AssertDescribeConnectionsOnInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsOnInterconnectRequest to be of type 'table'")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	if struct["interconnectId"] then M.AssertInterconnectId(struct["interconnectId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConnectionsOnInterconnectRequest_keys[k], "DescribeConnectionsOnInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsOnInterconnectRequest
-- <p>Container for the parameters to the DescribeConnectionsOnInterconnect operation.</p>
-- @param interconnectId [InterconnectId] <p>ID of the interconnect on which a list of connection is provisioned.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required parameter: interconnectId
function M.DescribeConnectionsOnInterconnectRequest(interconnectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsOnInterconnectRequest")
	local t = { 
		["interconnectId"] = interconnectId,
	}
	M.AssertDescribeConnectionsOnInterconnectRequest(t)
	return t
end

local Lags_keys = { "lags" = true, nil }

function M.AssertLags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lags to be of type 'table'")
	if struct["lags"] then M.AssertLagList(struct["lags"]) end
	for k,_ in pairs(struct) do
		assert(Lags_keys[k], "Lags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lags
-- <p>A structure containing a list of LAGs.</p>
-- @param lags [LagList] <p>A list of LAGs.</p>
function M.Lags(lags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Lags")
	local t = { 
		["lags"] = lags,
	}
	M.AssertLags(t)
	return t
end

local DeleteBGPPeerResponse_keys = { "virtualInterface" = true, nil }

function M.AssertDeleteBGPPeerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBGPPeerResponse to be of type 'table'")
	if struct["virtualInterface"] then M.AssertVirtualInterface(struct["virtualInterface"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBGPPeerResponse_keys[k], "DeleteBGPPeerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBGPPeerResponse
-- <p>The response received when DeleteBGPPeer is called.</p>
-- @param virtualInterface [VirtualInterface] <p>The response received when DeleteBGPPeer is called.</p>
function M.DeleteBGPPeerResponse(virtualInterface, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBGPPeerResponse")
	local t = { 
		["virtualInterface"] = virtualInterface,
	}
	M.AssertDeleteBGPPeerResponse(t)
	return t
end

local ConfirmPrivateVirtualInterfaceRequest_keys = { "virtualGatewayId" = true, "virtualInterfaceId" = true, nil }

function M.AssertConfirmPrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	assert(struct["virtualGatewayId"], "Expected key virtualGatewayId to exist in table")
	if struct["virtualGatewayId"] then M.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmPrivateVirtualInterfaceRequest_keys[k], "ConfirmPrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPrivateVirtualInterfaceRequest
-- <p>Container for the parameters to the ConfirmPrivateVirtualInterface operation.</p>
-- @param virtualGatewayId [VirtualGatewayId] <p>ID of the virtual private gateway that will be attached to the virtual interface.</p> <p> A virtual private gateway can be managed via the Amazon Virtual Private Cloud (VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">EC2 CreateVpnGateway</a> action.</p> <p>Default: None</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>Container for the parameters to the ConfirmPrivateVirtualInterface operation.</p>
-- Required parameter: virtualInterfaceId
-- Required parameter: virtualGatewayId
function M.ConfirmPrivateVirtualInterfaceRequest(virtualGatewayId, virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPrivateVirtualInterfaceRequest")
	local t = { 
		["virtualGatewayId"] = virtualGatewayId,
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertConfirmPrivateVirtualInterfaceRequest(t)
	return t
end

local Location_keys = { "locationName" = true, "locationCode" = true, nil }

function M.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	if struct["locationName"] then M.AssertLocationName(struct["locationName"]) end
	if struct["locationCode"] then M.AssertLocationCode(struct["locationCode"]) end
	for k,_ in pairs(struct) do
		assert(Location_keys[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>An AWS Direct Connect location where connections and interconnects can be requested.</p>
-- @param locationName [LocationName] <p>The name of the AWS Direct Connect location. The name includes the colocation partner name and the physical site of the lit building.</p>
-- @param locationCode [LocationCode] <p>The code used to indicate the AWS Direct Connect location.</p>
function M.Location(locationName, locationCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Location")
	local t = { 
		["locationName"] = locationName,
		["locationCode"] = locationCode,
	}
	M.AssertLocation(t)
	return t
end

local DescribeConnectionLoaResponse_keys = { "loa" = true, nil }

function M.AssertDescribeConnectionLoaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionLoaResponse to be of type 'table'")
	if struct["loa"] then M.AssertLoa(struct["loa"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConnectionLoaResponse_keys[k], "DescribeConnectionLoaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionLoaResponse
-- <p>The response received when DescribeConnectionLoa is called.</p>
-- @param loa [Loa] <p>The response received when DescribeConnectionLoa is called.</p>
function M.DescribeConnectionLoaResponse(loa, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionLoaResponse")
	local t = { 
		["loa"] = loa,
	}
	M.AssertDescribeConnectionLoaResponse(t)
	return t
end

local ConfirmConnectionRequest_keys = { "connectionId" = true, nil }

function M.AssertConfirmConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmConnectionRequest_keys[k], "ConfirmConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmConnectionRequest
-- <p>Container for the parameters to the ConfirmConnection operation.</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the ConfirmConnection operation.</p>
-- Required parameter: connectionId
function M.ConfirmConnectionRequest(connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmConnectionRequest")
	local t = { 
		["connectionId"] = connectionId,
	}
	M.AssertConfirmConnectionRequest(t)
	return t
end

local VirtualInterface_keys = { "virtualInterfaceState" = true, "asn" = true, "vlan" = true, "customerAddress" = true, "ownerAccount" = true, "connectionId" = true, "addressFamily" = true, "virtualGatewayId" = true, "virtualInterfaceId" = true, "authKey" = true, "routeFilterPrefixes" = true, "location" = true, "bgpPeers" = true, "customerRouterConfig" = true, "amazonAddress" = true, "virtualInterfaceType" = true, "virtualInterfaceName" = true, nil }

function M.AssertVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualInterface to be of type 'table'")
	if struct["virtualInterfaceState"] then M.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	if struct["virtualGatewayId"] then M.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["routeFilterPrefixes"] then M.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	if struct["bgpPeers"] then M.AssertBGPPeerList(struct["bgpPeers"]) end
	if struct["customerRouterConfig"] then M.AssertRouterConfig(struct["customerRouterConfig"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["virtualInterfaceType"] then M.AssertVirtualInterfaceType(struct["virtualInterfaceType"]) end
	if struct["virtualInterfaceName"] then M.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(VirtualInterface_keys[k], "VirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualInterface
-- <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param virtualInterfaceState [VirtualInterfaceState] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param asn [ASN] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param vlan [VLAN] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param customerAddress [CustomerAddress] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param ownerAccount [OwnerAccount] <p>The AWS account that will own the new virtual interface.</p>
-- @param connectionId [ConnectionId] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param addressFamily [AddressFamily] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param virtualGatewayId [VirtualGatewayId] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param authKey [BGPAuthKey] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param routeFilterPrefixes [RouteFilterPrefixList] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param location [LocationCode] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param bgpPeers [BGPPeerList] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param customerRouterConfig [RouterConfig] <p>Information for generating the customer router configuration.</p>
-- @param amazonAddress [AmazonAddress] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param virtualInterfaceType [VirtualInterfaceType] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
-- @param virtualInterfaceName [VirtualInterfaceName] <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p>
function M.VirtualInterface(virtualInterfaceState, asn, vlan, customerAddress, ownerAccount, connectionId, addressFamily, virtualGatewayId, virtualInterfaceId, authKey, routeFilterPrefixes, location, bgpPeers, customerRouterConfig, amazonAddress, virtualInterfaceType, virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualInterface")
	local t = { 
		["virtualInterfaceState"] = virtualInterfaceState,
		["asn"] = asn,
		["vlan"] = vlan,
		["customerAddress"] = customerAddress,
		["ownerAccount"] = ownerAccount,
		["connectionId"] = connectionId,
		["addressFamily"] = addressFamily,
		["virtualGatewayId"] = virtualGatewayId,
		["virtualInterfaceId"] = virtualInterfaceId,
		["authKey"] = authKey,
		["routeFilterPrefixes"] = routeFilterPrefixes,
		["location"] = location,
		["bgpPeers"] = bgpPeers,
		["customerRouterConfig"] = customerRouterConfig,
		["amazonAddress"] = amazonAddress,
		["virtualInterfaceType"] = virtualInterfaceType,
		["virtualInterfaceName"] = virtualInterfaceName,
	}
	M.AssertVirtualInterface(t)
	return t
end

local DeleteVirtualInterfaceRequest_keys = { "virtualInterfaceId" = true, nil }

function M.AssertDeleteVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVirtualInterfaceRequest_keys[k], "DeleteVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVirtualInterfaceRequest
-- <p>Container for the parameters to the DeleteVirtualInterface operation.</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>Container for the parameters to the DeleteVirtualInterface operation.</p>
-- Required parameter: virtualInterfaceId
function M.DeleteVirtualInterfaceRequest(virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVirtualInterfaceRequest")
	local t = { 
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertDeleteVirtualInterfaceRequest(t)
	return t
end

local AllocateHostedConnectionRequest_keys = { "ownerAccount" = true, "connectionId" = true, "bandwidth" = true, "vlan" = true, "connectionName" = true, nil }

function M.AssertAllocateHostedConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateHostedConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["connectionName"], "Expected key connectionName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["bandwidth"] then M.AssertBandwidth(struct["bandwidth"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["connectionName"] then M.AssertConnectionName(struct["connectionName"]) end
	for k,_ in pairs(struct) do
		assert(AllocateHostedConnectionRequest_keys[k], "AllocateHostedConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateHostedConnectionRequest
-- <p>Container for the parameters to theHostedConnection operation.</p>
-- @param ownerAccount [OwnerAccount] <p>The numeric account ID of the customer for whom the connection will be provisioned.</p> <p>Example: 123443215678</p> <p>Default: None</p>
-- @param connectionId [ConnectionId] <p>The ID of the interconnect or LAG on which the connection will be provisioned.</p> <p>Example: dxcon-456abc78 or dxlag-abc123</p> <p>Default: None</p>
-- @param bandwidth [Bandwidth] <p>The bandwidth of the connection.</p> <p>Example: <code>500Mbps</code> </p> <p>Default: None</p> <p>Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps</p>
-- @param vlan [VLAN] <p>The dedicated VLAN provisioned to the hosted connection.</p> <p>Example: 101</p> <p>Default: None</p>
-- @param connectionName [ConnectionName] <p>The name of the provisioned connection.</p> <p>Example: "<code>500M Connection to AWS</code>"</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: ownerAccount
-- Required parameter: bandwidth
-- Required parameter: connectionName
-- Required parameter: vlan
function M.AllocateHostedConnectionRequest(ownerAccount, connectionId, bandwidth, vlan, connectionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateHostedConnectionRequest")
	local t = { 
		["ownerAccount"] = ownerAccount,
		["connectionId"] = connectionId,
		["bandwidth"] = bandwidth,
		["vlan"] = vlan,
		["connectionName"] = connectionName,
	}
	M.AssertAllocateHostedConnectionRequest(t)
	return t
end

local BGPPeer_keys = { "bgpStatus" = true, "customerAddress" = true, "addressFamily" = true, "authKey" = true, "bgpPeerState" = true, "amazonAddress" = true, "asn" = true, nil }

function M.AssertBGPPeer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BGPPeer to be of type 'table'")
	if struct["bgpStatus"] then M.AssertBGPStatus(struct["bgpStatus"]) end
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["bgpPeerState"] then M.AssertBGPPeerState(struct["bgpPeerState"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	for k,_ in pairs(struct) do
		assert(BGPPeer_keys[k], "BGPPeer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BGPPeer
-- <p>A structure containing information about a BGP peer.</p>
-- @param bgpStatus [BGPStatus] <p>A structure containing information about a BGP peer.</p>
-- @param customerAddress [CustomerAddress] <p>A structure containing information about a BGP peer.</p>
-- @param addressFamily [AddressFamily] <p>A structure containing information about a BGP peer.</p>
-- @param authKey [BGPAuthKey] <p>A structure containing information about a BGP peer.</p>
-- @param bgpPeerState [BGPPeerState] <p>A structure containing information about a BGP peer.</p>
-- @param amazonAddress [AmazonAddress] <p>A structure containing information about a BGP peer.</p>
-- @param asn [ASN] <p>A structure containing information about a BGP peer.</p>
function M.BGPPeer(bgpStatus, customerAddress, addressFamily, authKey, bgpPeerState, amazonAddress, asn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BGPPeer")
	local t = { 
		["bgpStatus"] = bgpStatus,
		["customerAddress"] = customerAddress,
		["addressFamily"] = addressFamily,
		["authKey"] = authKey,
		["bgpPeerState"] = bgpPeerState,
		["amazonAddress"] = amazonAddress,
		["asn"] = asn,
	}
	M.AssertBGPPeer(t)
	return t
end

local CreateBGPPeerRequest_keys = { "newBGPPeer" = true, "virtualInterfaceId" = true, nil }

function M.AssertCreateBGPPeerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBGPPeerRequest to be of type 'table'")
	if struct["newBGPPeer"] then M.AssertNewBGPPeer(struct["newBGPPeer"]) end
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(CreateBGPPeerRequest_keys[k], "CreateBGPPeerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBGPPeerRequest
-- <p>Container for the parameters to the CreateBGPPeer operation.</p>
-- @param newBGPPeer [NewBGPPeer] <p>Detailed information for the BGP peer to be created.</p> <p>Default: None</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface on which the BGP peer will be provisioned.</p> <p>Example: dxvif-456abc78</p> <p>Default: None</p>
function M.CreateBGPPeerRequest(newBGPPeer, virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBGPPeerRequest")
	local t = { 
		["newBGPPeer"] = newBGPPeer,
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertCreateBGPPeerRequest(t)
	return t
end

local AllocatePrivateVirtualInterfaceRequest_keys = { "ownerAccount" = true, "connectionId" = true, "newPrivateVirtualInterfaceAllocation" = true, nil }

function M.AssertAllocatePrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocatePrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["newPrivateVirtualInterfaceAllocation"], "Expected key newPrivateVirtualInterfaceAllocation to exist in table")
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["newPrivateVirtualInterfaceAllocation"] then M.AssertNewPrivateVirtualInterfaceAllocation(struct["newPrivateVirtualInterfaceAllocation"]) end
	for k,_ in pairs(struct) do
		assert(AllocatePrivateVirtualInterfaceRequest_keys[k], "AllocatePrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocatePrivateVirtualInterfaceRequest
-- <p>Container for the parameters to the AllocatePrivateVirtualInterface operation.</p>
-- @param ownerAccount [OwnerAccount] <p>The AWS account that will own the new private virtual interface.</p> <p>Default: None</p>
-- @param connectionId [ConnectionId] <p>The connection ID on which the private virtual interface is provisioned.</p> <p>Default: None</p>
-- @param newPrivateVirtualInterfaceAllocation [NewPrivateVirtualInterfaceAllocation] <p>Detailed information for the private virtual interface to be provisioned.</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: ownerAccount
-- Required parameter: newPrivateVirtualInterfaceAllocation
function M.AllocatePrivateVirtualInterfaceRequest(ownerAccount, connectionId, newPrivateVirtualInterfaceAllocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocatePrivateVirtualInterfaceRequest")
	local t = { 
		["ownerAccount"] = ownerAccount,
		["connectionId"] = connectionId,
		["newPrivateVirtualInterfaceAllocation"] = newPrivateVirtualInterfaceAllocation,
	}
	M.AssertAllocatePrivateVirtualInterfaceRequest(t)
	return t
end

local UntagResourceRequest_keys = { "resourceArn" = true, "tagKeys" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tagKeys"], "Expected key tagKeys to exist in table")
	if struct["resourceArn"] then M.AssertResourceArn(struct["resourceArn"]) end
	if struct["tagKeys"] then M.AssertTagKeyList(struct["tagKeys"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
-- <p>Container for the parameters to the UntagResource operation.</p>
-- @param resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p>
-- @param tagKeys [TagKeyList] <p>The list of tag keys to remove.</p>
-- Required parameter: resourceArn
-- Required parameter: tagKeys
function M.UntagResourceRequest(resourceArn, tagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["resourceArn"] = resourceArn,
		["tagKeys"] = tagKeys,
	}
	M.AssertUntagResourceRequest(t)
	return t
end

local DescribeInterconnectLoaRequest_keys = { "interconnectId" = true, "providerName" = true, "loaContentType" = true, nil }

function M.AssertDescribeInterconnectLoaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInterconnectLoaRequest to be of type 'table'")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	if struct["interconnectId"] then M.AssertInterconnectId(struct["interconnectId"]) end
	if struct["providerName"] then M.AssertProviderName(struct["providerName"]) end
	if struct["loaContentType"] then M.AssertLoaContentType(struct["loaContentType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInterconnectLoaRequest_keys[k], "DescribeInterconnectLoaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInterconnectLoaRequest
-- <p>Container for the parameters to the DescribeInterconnectLoa operation.</p>
-- @param interconnectId [InterconnectId] <p>Container for the parameters to the DescribeInterconnectLoa operation.</p>
-- @param providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- @param loaContentType [LoaContentType] <p>Container for the parameters to the DescribeInterconnectLoa operation.</p>
-- Required parameter: interconnectId
function M.DescribeInterconnectLoaRequest(interconnectId, providerName, loaContentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInterconnectLoaRequest")
	local t = { 
		["interconnectId"] = interconnectId,
		["providerName"] = providerName,
		["loaContentType"] = loaContentType,
	}
	M.AssertDescribeInterconnectLoaRequest(t)
	return t
end

local Loa_keys = { "loaContentType" = true, "loaContent" = true, nil }

function M.AssertLoa(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Loa to be of type 'table'")
	if struct["loaContentType"] then M.AssertLoaContentType(struct["loaContentType"]) end
	if struct["loaContent"] then M.AssertLoaContent(struct["loaContent"]) end
	for k,_ in pairs(struct) do
		assert(Loa_keys[k], "Loa contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Loa
-- <p>A structure containing the Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
-- @param loaContentType [LoaContentType] <p>A structure containing the Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
-- @param loaContent [LoaContent] <p>A structure containing the Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
function M.Loa(loaContentType, loaContent, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Loa")
	local t = { 
		["loaContentType"] = loaContentType,
		["loaContent"] = loaContent,
	}
	M.AssertLoa(t)
	return t
end

local DescribeInterconnectsRequest_keys = { "interconnectId" = true, nil }

function M.AssertDescribeInterconnectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInterconnectsRequest to be of type 'table'")
	if struct["interconnectId"] then M.AssertInterconnectId(struct["interconnectId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInterconnectsRequest_keys[k], "DescribeInterconnectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInterconnectsRequest
-- <p>Container for the parameters to the DescribeInterconnects operation.</p>
-- @param interconnectId [InterconnectId] <p>Container for the parameters to the DescribeInterconnects operation.</p>
function M.DescribeInterconnectsRequest(interconnectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInterconnectsRequest")
	local t = { 
		["interconnectId"] = interconnectId,
	}
	M.AssertDescribeInterconnectsRequest(t)
	return t
end

local AssociateVirtualInterfaceRequest_keys = { "connectionId" = true, "virtualInterfaceId" = true, nil }

function M.AssertAssociateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["virtualInterfaceId"], "Expected key virtualInterfaceId to exist in table")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateVirtualInterfaceRequest_keys[k], "AssociateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateVirtualInterfaceRequest
-- <p>Container for the parameters to the AssociateVirtualInterface operation.</p>
-- @param connectionId [ConnectionId] <p>The ID of the LAG or connection with which to associate the virtual interface.</p> <p>Example: dxlag-abc123 or dxcon-abc123</p> <p>Default: None</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p> <p>Example: dxvif-123dfg56</p> <p>Default: None</p>
-- Required parameter: virtualInterfaceId
-- Required parameter: connectionId
function M.AssociateVirtualInterfaceRequest(connectionId, virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateVirtualInterfaceRequest")
	local t = { 
		["connectionId"] = connectionId,
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertAssociateVirtualInterfaceRequest(t)
	return t
end

local AllocatePublicVirtualInterfaceRequest_keys = { "ownerAccount" = true, "connectionId" = true, "newPublicVirtualInterfaceAllocation" = true, nil }

function M.AssertAllocatePublicVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocatePublicVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["newPublicVirtualInterfaceAllocation"], "Expected key newPublicVirtualInterfaceAllocation to exist in table")
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["newPublicVirtualInterfaceAllocation"] then M.AssertNewPublicVirtualInterfaceAllocation(struct["newPublicVirtualInterfaceAllocation"]) end
	for k,_ in pairs(struct) do
		assert(AllocatePublicVirtualInterfaceRequest_keys[k], "AllocatePublicVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocatePublicVirtualInterfaceRequest
-- <p>Container for the parameters to the AllocatePublicVirtualInterface operation.</p>
-- @param ownerAccount [OwnerAccount] <p>The AWS account that will own the new public virtual interface.</p> <p>Default: None</p>
-- @param connectionId [ConnectionId] <p>The connection ID on which the public virtual interface is provisioned.</p> <p>Default: None</p>
-- @param newPublicVirtualInterfaceAllocation [NewPublicVirtualInterfaceAllocation] <p>Detailed information for the public virtual interface to be provisioned.</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: ownerAccount
-- Required parameter: newPublicVirtualInterfaceAllocation
function M.AllocatePublicVirtualInterfaceRequest(ownerAccount, connectionId, newPublicVirtualInterfaceAllocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocatePublicVirtualInterfaceRequest")
	local t = { 
		["ownerAccount"] = ownerAccount,
		["connectionId"] = connectionId,
		["newPublicVirtualInterfaceAllocation"] = newPublicVirtualInterfaceAllocation,
	}
	M.AssertAllocatePublicVirtualInterfaceRequest(t)
	return t
end

local DescribeConnectionsRequest_keys = { "connectionId" = true, nil }

function M.AssertDescribeConnectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConnectionsRequest to be of type 'table'")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConnectionsRequest_keys[k], "DescribeConnectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConnectionsRequest
-- <p>Container for the parameters to the DescribeConnections operation.</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the DescribeConnections operation.</p>
function M.DescribeConnectionsRequest(connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsRequest")
	local t = { 
		["connectionId"] = connectionId,
	}
	M.AssertDescribeConnectionsRequest(t)
	return t
end

local ConfirmPublicVirtualInterfaceResponse_keys = { "virtualInterfaceState" = true, nil }

function M.AssertConfirmPublicVirtualInterfaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPublicVirtualInterfaceResponse to be of type 'table'")
	if struct["virtualInterfaceState"] then M.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmPublicVirtualInterfaceResponse_keys[k], "ConfirmPublicVirtualInterfaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPublicVirtualInterfaceResponse
-- <p>The response received when ConfirmPublicVirtualInterface is called.</p>
-- @param virtualInterfaceState [VirtualInterfaceState] <p>The response received when ConfirmPublicVirtualInterface is called.</p>
function M.ConfirmPublicVirtualInterfaceResponse(virtualInterfaceState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPublicVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = virtualInterfaceState,
	}
	M.AssertConfirmPublicVirtualInterfaceResponse(t)
	return t
end

local RouteFilterPrefix_keys = { "cidr" = true, nil }

function M.AssertRouteFilterPrefix(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RouteFilterPrefix to be of type 'table'")
	if struct["cidr"] then M.AssertCIDR(struct["cidr"]) end
	for k,_ in pairs(struct) do
		assert(RouteFilterPrefix_keys[k], "RouteFilterPrefix contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RouteFilterPrefix
-- <p>A route filter prefix that the customer can advertise through Border Gateway Protocol (BGP) over a public virtual interface.</p>
-- @param cidr [CIDR] <p>CIDR notation for the advertised route. Multiple routes are separated by commas.</p> <p>IPv6 CIDRs must be at least a /64 or shorter</p> <p>Example: 10.10.10.0/24,10.10.11.0/24,2001:db8::/64</p>
function M.RouteFilterPrefix(cidr, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RouteFilterPrefix")
	local t = { 
		["cidr"] = cidr,
	}
	M.AssertRouteFilterPrefix(t)
	return t
end

local VirtualGateway_keys = { "virtualGatewayId" = true, "virtualGatewayState" = true, nil }

function M.AssertVirtualGateway(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualGateway to be of type 'table'")
	if struct["virtualGatewayId"] then M.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["virtualGatewayState"] then M.AssertVirtualGatewayState(struct["virtualGatewayState"]) end
	for k,_ in pairs(struct) do
		assert(VirtualGateway_keys[k], "VirtualGateway contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualGateway
-- <p>You can create one or more AWS Direct Connect private virtual interfaces linking to your virtual private gateway.</p> <p>Virtual private gateways can be managed using the Amazon Virtual Private Cloud (Amazon VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">Amazon EC2 CreateVpnGateway action</a>.</p>
-- @param virtualGatewayId [VirtualGatewayId] <p>You can create one or more AWS Direct Connect private virtual interfaces linking to your virtual private gateway.</p> <p>Virtual private gateways can be managed using the Amazon Virtual Private Cloud (Amazon VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">Amazon EC2 CreateVpnGateway action</a>.</p>
-- @param virtualGatewayState [VirtualGatewayState] <p>You can create one or more AWS Direct Connect private virtual interfaces linking to your virtual private gateway.</p> <p>Virtual private gateways can be managed using the Amazon Virtual Private Cloud (Amazon VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">Amazon EC2 CreateVpnGateway action</a>.</p>
function M.VirtualGateway(virtualGatewayId, virtualGatewayState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualGateway")
	local t = { 
		["virtualGatewayId"] = virtualGatewayId,
		["virtualGatewayState"] = virtualGatewayState,
	}
	M.AssertVirtualGateway(t)
	return t
end

local NewBGPPeer_keys = { "authKey" = true, "amazonAddress" = true, "customerAddress" = true, "asn" = true, "addressFamily" = true, nil }

function M.AssertNewBGPPeer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewBGPPeer to be of type 'table'")
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	for k,_ in pairs(struct) do
		assert(NewBGPPeer_keys[k], "NewBGPPeer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewBGPPeer
-- <p>A structure containing information about a new BGP peer.</p>
-- @param authKey [BGPAuthKey] <p>A structure containing information about a new BGP peer.</p>
-- @param amazonAddress [AmazonAddress] <p>A structure containing information about a new BGP peer.</p>
-- @param customerAddress [CustomerAddress] <p>A structure containing information about a new BGP peer.</p>
-- @param asn [ASN] <p>A structure containing information about a new BGP peer.</p>
-- @param addressFamily [AddressFamily] <p>A structure containing information about a new BGP peer.</p>
function M.NewBGPPeer(authKey, amazonAddress, customerAddress, asn, addressFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewBGPPeer")
	local t = { 
		["authKey"] = authKey,
		["amazonAddress"] = amazonAddress,
		["customerAddress"] = customerAddress,
		["asn"] = asn,
		["addressFamily"] = addressFamily,
	}
	M.AssertNewBGPPeer(t)
	return t
end

local DescribeLoaRequest_keys = { "loaContentType" = true, "connectionId" = true, "providerName" = true, nil }

function M.AssertDescribeLoaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoaRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["loaContentType"] then M.AssertLoaContentType(struct["loaContentType"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["providerName"] then M.AssertProviderName(struct["providerName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoaRequest_keys[k], "DescribeLoaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoaRequest
-- <p>Container for the parameters to the DescribeLoa operation.</p>
-- @param loaContentType [LoaContentType] <p>A standard media type indicating the content type of the LOA-CFA document. Currently, the only supported value is "application/pdf".</p> <p>Default: application/pdf</p>
-- @param connectionId [ConnectionId] <p>The ID of a connection, LAG, or interconnect for which to get the LOA-CFA information.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- @param providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- Required parameter: connectionId
function M.DescribeLoaRequest(loaContentType, connectionId, providerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoaRequest")
	local t = { 
		["loaContentType"] = loaContentType,
		["connectionId"] = connectionId,
		["providerName"] = providerName,
	}
	M.AssertDescribeLoaRequest(t)
	return t
end

local UntagResourceResponse_keys = { nil }

function M.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UntagResourceResponse_keys[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
-- <p>The response received when UntagResource is called.</p>
function M.UntagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceResponse")
	local t = { 
	}
	M.AssertUntagResourceResponse(t)
	return t
end

local DeleteBGPPeerRequest_keys = { "customerAddress" = true, "asn" = true, "virtualInterfaceId" = true, nil }

function M.AssertDeleteBGPPeerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBGPPeerRequest to be of type 'table'")
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceId"] then M.AssertVirtualInterfaceId(struct["virtualInterfaceId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBGPPeerRequest_keys[k], "DeleteBGPPeerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBGPPeerRequest
-- <p>Container for the parameters to the DeleteBGPPeer operation.</p>
-- @param customerAddress [CustomerAddress] <p>Container for the parameters to the DeleteBGPPeer operation.</p>
-- @param asn [ASN] <p>Container for the parameters to the DeleteBGPPeer operation.</p>
-- @param virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface from which the BGP peer will be deleted.</p> <p>Example: dxvif-456abc78</p> <p>Default: None</p>
function M.DeleteBGPPeerRequest(customerAddress, asn, virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBGPPeerRequest")
	local t = { 
		["customerAddress"] = customerAddress,
		["asn"] = asn,
		["virtualInterfaceId"] = virtualInterfaceId,
	}
	M.AssertDeleteBGPPeerRequest(t)
	return t
end

local Connection_keys = { "partnerName" = true, "awsDevice" = true, "vlan" = true, "ownerAccount" = true, "connectionId" = true, "lagId" = true, "connectionState" = true, "bandwidth" = true, "location" = true, "connectionName" = true, "loaIssueTime" = true, "region" = true, nil }

function M.AssertConnection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connection to be of type 'table'")
	if struct["partnerName"] then M.AssertPartnerName(struct["partnerName"]) end
	if struct["awsDevice"] then M.AssertAwsDevice(struct["awsDevice"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["connectionState"] then M.AssertConnectionState(struct["connectionState"]) end
	if struct["bandwidth"] then M.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	if struct["connectionName"] then M.AssertConnectionName(struct["connectionName"]) end
	if struct["loaIssueTime"] then M.AssertLoaIssueTime(struct["loaIssueTime"]) end
	if struct["region"] then M.AssertRegion(struct["region"]) end
	for k,_ in pairs(struct) do
		assert(Connection_keys[k], "Connection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connection
-- <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param partnerName [PartnerName] <p>The name of the AWS Direct Connect service provider associated with the connection.</p>
-- @param awsDevice [AwsDevice] <p>The Direct Connection endpoint which the physical connection terminates on.</p>
-- @param vlan [VLAN] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param ownerAccount [OwnerAccount] <p>The AWS account that will own the new connection.</p>
-- @param connectionId [ConnectionId] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param lagId [LagId] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param connectionState [ConnectionState] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param bandwidth [Bandwidth] <p>Bandwidth of the connection.</p> <p>Example: 1Gbps (for regular connections), or 500Mbps (for hosted connections)</p> <p>Default: None</p>
-- @param location [LocationCode] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param connectionName [ConnectionName] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
-- @param loaIssueTime [LoaIssueTime] <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
-- @param region [Region] <p>A connection represents the physical network connection between the AWS Direct Connect location and the customer.</p>
function M.Connection(partnerName, awsDevice, vlan, ownerAccount, connectionId, lagId, connectionState, bandwidth, location, connectionName, loaIssueTime, region, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connection")
	local t = { 
		["partnerName"] = partnerName,
		["awsDevice"] = awsDevice,
		["vlan"] = vlan,
		["ownerAccount"] = ownerAccount,
		["connectionId"] = connectionId,
		["lagId"] = lagId,
		["connectionState"] = connectionState,
		["bandwidth"] = bandwidth,
		["location"] = location,
		["connectionName"] = connectionName,
		["loaIssueTime"] = loaIssueTime,
		["region"] = region,
	}
	M.AssertConnection(t)
	return t
end

local NewPrivateVirtualInterfaceAllocation_keys = { "customerAddress" = true, "vlan" = true, "asn" = true, "authKey" = true, "amazonAddress" = true, "addressFamily" = true, "virtualInterfaceName" = true, nil }

function M.AssertNewPrivateVirtualInterfaceAllocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPrivateVirtualInterfaceAllocation to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	if struct["virtualInterfaceName"] then M.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(NewPrivateVirtualInterfaceAllocation_keys[k], "NewPrivateVirtualInterfaceAllocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPrivateVirtualInterfaceAllocation
-- <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param customerAddress [CustomerAddress] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param vlan [VLAN] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param asn [ASN] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param authKey [BGPAuthKey] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param amazonAddress [AmazonAddress] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param addressFamily [AddressFamily] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- @param virtualInterfaceName [VirtualInterfaceName] <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
function M.NewPrivateVirtualInterfaceAllocation(customerAddress, vlan, asn, authKey, amazonAddress, addressFamily, virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPrivateVirtualInterfaceAllocation")
	local t = { 
		["customerAddress"] = customerAddress,
		["vlan"] = vlan,
		["asn"] = asn,
		["authKey"] = authKey,
		["amazonAddress"] = amazonAddress,
		["addressFamily"] = addressFamily,
		["virtualInterfaceName"] = virtualInterfaceName,
	}
	M.AssertNewPrivateVirtualInterfaceAllocation(t)
	return t
end

local DeleteConnectionRequest_keys = { "connectionId" = true, nil }

function M.AssertDeleteConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConnectionRequest_keys[k], "DeleteConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConnectionRequest
-- <p>Container for the parameters to the DeleteConnection operation.</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the DeleteConnection operation.</p>
-- Required parameter: connectionId
function M.DeleteConnectionRequest(connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConnectionRequest")
	local t = { 
		["connectionId"] = connectionId,
	}
	M.AssertDeleteConnectionRequest(t)
	return t
end

local DescribeTagsRequest_keys = { "resourceArns" = true, nil }

function M.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	assert(struct["resourceArns"], "Expected key resourceArns to exist in table")
	if struct["resourceArns"] then M.AssertResourceArnList(struct["resourceArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsRequest_keys[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
-- <p>Container for the parameters to the DescribeTags operation.</p>
-- @param resourceArns [ResourceArnList] <p>The Amazon Resource Names (ARNs) of the Direct Connect resources.</p>
-- Required parameter: resourceArns
function M.DescribeTagsRequest(resourceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["resourceArns"] = resourceArns,
	}
	M.AssertDescribeTagsRequest(t)
	return t
end

local NewPublicVirtualInterface_keys = { "customerAddress" = true, "vlan" = true, "addressFamily" = true, "authKey" = true, "routeFilterPrefixes" = true, "amazonAddress" = true, "asn" = true, "virtualInterfaceName" = true, nil }

function M.AssertNewPublicVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPublicVirtualInterface to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["routeFilterPrefixes"] then M.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then M.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(NewPublicVirtualInterface_keys[k], "NewPublicVirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPublicVirtualInterface
-- <p>A structure containing information about a new public virtual interface.</p>
-- @param customerAddress [CustomerAddress] <p>A structure containing information about a new public virtual interface.</p>
-- @param vlan [VLAN] <p>A structure containing information about a new public virtual interface.</p>
-- @param addressFamily [AddressFamily] <p>A structure containing information about a new public virtual interface.</p>
-- @param authKey [BGPAuthKey] <p>A structure containing information about a new public virtual interface.</p>
-- @param routeFilterPrefixes [RouteFilterPrefixList] <p>A structure containing information about a new public virtual interface.</p>
-- @param amazonAddress [AmazonAddress] <p>A structure containing information about a new public virtual interface.</p>
-- @param asn [ASN] <p>A structure containing information about a new public virtual interface.</p>
-- @param virtualInterfaceName [VirtualInterfaceName] <p>A structure containing information about a new public virtual interface.</p>
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
function M.NewPublicVirtualInterface(customerAddress, vlan, addressFamily, authKey, routeFilterPrefixes, amazonAddress, asn, virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPublicVirtualInterface")
	local t = { 
		["customerAddress"] = customerAddress,
		["vlan"] = vlan,
		["addressFamily"] = addressFamily,
		["authKey"] = authKey,
		["routeFilterPrefixes"] = routeFilterPrefixes,
		["amazonAddress"] = amazonAddress,
		["asn"] = asn,
		["virtualInterfaceName"] = virtualInterfaceName,
	}
	M.AssertNewPublicVirtualInterface(t)
	return t
end

local Locations_keys = { "locations" = true, nil }

function M.AssertLocations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Locations to be of type 'table'")
	if struct["locations"] then M.AssertLocationList(struct["locations"]) end
	for k,_ in pairs(struct) do
		assert(Locations_keys[k], "Locations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Locations
-- <p>A location is a network facility where AWS Direct Connect routers are available to be connected. Generally, these are colocation hubs where many network providers have equipment, and where cross connects can be delivered. Locations include a name and facility code, and must be provided when creating a connection.</p>
-- @param locations [LocationList] <p>A list of colocation hubs where network providers have equipment. Most regions have multiple locations available.</p>
function M.Locations(locations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Locations")
	local t = { 
		["locations"] = locations,
	}
	M.AssertLocations(t)
	return t
end

local AllocateConnectionOnInterconnectRequest_keys = { "interconnectId" = true, "bandwidth" = true, "vlan" = true, "ownerAccount" = true, "connectionName" = true, nil }

function M.AssertAllocateConnectionOnInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllocateConnectionOnInterconnectRequest to be of type 'table'")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["connectionName"], "Expected key connectionName to exist in table")
	assert(struct["ownerAccount"], "Expected key ownerAccount to exist in table")
	assert(struct["interconnectId"], "Expected key interconnectId to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	if struct["interconnectId"] then M.AssertInterconnectId(struct["interconnectId"]) end
	if struct["bandwidth"] then M.AssertBandwidth(struct["bandwidth"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["connectionName"] then M.AssertConnectionName(struct["connectionName"]) end
	for k,_ in pairs(struct) do
		assert(AllocateConnectionOnInterconnectRequest_keys[k], "AllocateConnectionOnInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllocateConnectionOnInterconnectRequest
-- <p>Container for the parameters to the AllocateConnectionOnInterconnect operation.</p>
-- @param interconnectId [InterconnectId] <p>ID of the interconnect on which the connection will be provisioned.</p> <p>Example: dxcon-456abc78</p> <p>Default: None</p>
-- @param bandwidth [Bandwidth] <p>Bandwidth of the connection.</p> <p>Example: "<i>500Mbps</i>"</p> <p>Default: None</p> <p>Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps</p>
-- @param vlan [VLAN] <p>The dedicated VLAN provisioned to the connection.</p> <p>Example: 101</p> <p>Default: None</p>
-- @param ownerAccount [OwnerAccount] <p>Numeric account Id of the customer for whom the connection will be provisioned.</p> <p>Example: 123443215678</p> <p>Default: None</p>
-- @param connectionName [ConnectionName] <p>Name of the provisioned connection.</p> <p>Example: "<i>500M Connection to AWS</i>"</p> <p>Default: None</p>
-- Required parameter: bandwidth
-- Required parameter: connectionName
-- Required parameter: ownerAccount
-- Required parameter: interconnectId
-- Required parameter: vlan
function M.AllocateConnectionOnInterconnectRequest(interconnectId, bandwidth, vlan, ownerAccount, connectionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateConnectionOnInterconnectRequest")
	local t = { 
		["interconnectId"] = interconnectId,
		["bandwidth"] = bandwidth,
		["vlan"] = vlan,
		["ownerAccount"] = ownerAccount,
		["connectionName"] = connectionName,
	}
	M.AssertAllocateConnectionOnInterconnectRequest(t)
	return t
end

local ResourceTag_keys = { "resourceArn" = true, "tags" = true, nil }

function M.AssertResourceTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTag to be of type 'table'")
	if struct["resourceArn"] then M.AssertResourceArn(struct["resourceArn"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(ResourceTag_keys[k], "ResourceTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTag
-- <p>The tags associated with a Direct Connect resource.</p>
-- @param resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p>
-- @param tags [TagList] <p>The tags.</p>
function M.ResourceTag(resourceArn, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTag")
	local t = { 
		["resourceArn"] = resourceArn,
		["tags"] = tags,
	}
	M.AssertResourceTag(t)
	return t
end

local UpdateLagRequest_keys = { "lagId" = true, "minimumLinks" = true, "lagName" = true, nil }

function M.AssertUpdateLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLagRequest to be of type 'table'")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["minimumLinks"] then M.AssertCount(struct["minimumLinks"]) end
	if struct["lagName"] then M.AssertLagName(struct["lagName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateLagRequest_keys[k], "UpdateLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLagRequest
-- <p>Container for the parameters to the UpdateLag operation.</p>
-- @param lagId [LagId] <p>The ID of the LAG to update.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @param minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p> <p>Default: None</p>
-- @param lagName [LagName] <p>The name for the LAG.</p> <p>Example: "<code>3x10G LAG to AWS</code>"</p> <p>Default: None</p>
-- Required parameter: lagId
function M.UpdateLagRequest(lagId, minimumLinks, lagName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLagRequest")
	local t = { 
		["lagId"] = lagId,
		["minimumLinks"] = minimumLinks,
		["lagName"] = lagName,
	}
	M.AssertUpdateLagRequest(t)
	return t
end

local CreatePublicVirtualInterfaceRequest_keys = { "newPublicVirtualInterface" = true, "connectionId" = true, nil }

function M.AssertCreatePublicVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePublicVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["newPublicVirtualInterface"], "Expected key newPublicVirtualInterface to exist in table")
	if struct["newPublicVirtualInterface"] then M.AssertNewPublicVirtualInterface(struct["newPublicVirtualInterface"]) end
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(CreatePublicVirtualInterfaceRequest_keys[k], "CreatePublicVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePublicVirtualInterfaceRequest
-- <p>Container for the parameters to the CreatePublicVirtualInterface operation.</p>
-- @param newPublicVirtualInterface [NewPublicVirtualInterface] <p>Detailed information for the public virtual interface to be created.</p> <p>Default: None</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the CreatePublicVirtualInterface operation.</p>
-- Required parameter: connectionId
-- Required parameter: newPublicVirtualInterface
function M.CreatePublicVirtualInterfaceRequest(newPublicVirtualInterface, connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePublicVirtualInterfaceRequest")
	local t = { 
		["newPublicVirtualInterface"] = newPublicVirtualInterface,
		["connectionId"] = connectionId,
	}
	M.AssertCreatePublicVirtualInterfaceRequest(t)
	return t
end

local DescribeTagsResponse_keys = { "resourceTags" = true, nil }

function M.AssertDescribeTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResponse to be of type 'table'")
	if struct["resourceTags"] then M.AssertResourceTagList(struct["resourceTags"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsResponse_keys[k], "DescribeTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResponse
-- <p>The response received when DescribeTags is called.</p>
-- @param resourceTags [ResourceTagList] <p>Information about the tags.</p>
function M.DescribeTagsResponse(resourceTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResponse")
	local t = { 
		["resourceTags"] = resourceTags,
	}
	M.AssertDescribeTagsResponse(t)
	return t
end

local TooManyTagsException_keys = { nil }

function M.AssertTooManyTagsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyTagsException_keys[k], "TooManyTagsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsException
-- <p>You have reached the limit on the number of tags that can be assigned to a Direct Connect resource.</p>
function M.TooManyTagsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTagsException")
	local t = { 
	}
	M.AssertTooManyTagsException(t)
	return t
end

local CreateBGPPeerResponse_keys = { "virtualInterface" = true, nil }

function M.AssertCreateBGPPeerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBGPPeerResponse to be of type 'table'")
	if struct["virtualInterface"] then M.AssertVirtualInterface(struct["virtualInterface"]) end
	for k,_ in pairs(struct) do
		assert(CreateBGPPeerResponse_keys[k], "CreateBGPPeerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBGPPeerResponse
-- <p>The response received when CreateBGPPeer is called.</p>
-- @param virtualInterface [VirtualInterface] <p>The response received when CreateBGPPeer is called.</p>
function M.CreateBGPPeerResponse(virtualInterface, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBGPPeerResponse")
	local t = { 
		["virtualInterface"] = virtualInterface,
	}
	M.AssertCreateBGPPeerResponse(t)
	return t
end

local TagResourceResponse_keys = { nil }

function M.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagResourceResponse_keys[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
-- <p>The response received when TagResource is called.</p>
function M.TagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceResponse")
	local t = { 
	}
	M.AssertTagResourceResponse(t)
	return t
end

local DeleteVirtualInterfaceResponse_keys = { "virtualInterfaceState" = true, nil }

function M.AssertDeleteVirtualInterfaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVirtualInterfaceResponse to be of type 'table'")
	if struct["virtualInterfaceState"] then M.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVirtualInterfaceResponse_keys[k], "DeleteVirtualInterfaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVirtualInterfaceResponse
-- <p>The response received when DeleteVirtualInterface is called.</p>
-- @param virtualInterfaceState [VirtualInterfaceState] <p>The response received when DeleteVirtualInterface is called.</p>
function M.DeleteVirtualInterfaceResponse(virtualInterfaceState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = virtualInterfaceState,
	}
	M.AssertDeleteVirtualInterfaceResponse(t)
	return t
end

local NewPublicVirtualInterfaceAllocation_keys = { "customerAddress" = true, "vlan" = true, "addressFamily" = true, "authKey" = true, "routeFilterPrefixes" = true, "amazonAddress" = true, "asn" = true, "virtualInterfaceName" = true, nil }

function M.AssertNewPublicVirtualInterfaceAllocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPublicVirtualInterfaceAllocation to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["routeFilterPrefixes"] then M.AssertRouteFilterPrefixList(struct["routeFilterPrefixes"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then M.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(NewPublicVirtualInterfaceAllocation_keys[k], "NewPublicVirtualInterfaceAllocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPublicVirtualInterfaceAllocation
-- <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param customerAddress [CustomerAddress] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param vlan [VLAN] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param addressFamily [AddressFamily] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param authKey [BGPAuthKey] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param routeFilterPrefixes [RouteFilterPrefixList] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param amazonAddress [AmazonAddress] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param asn [ASN] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- @param virtualInterfaceName [VirtualInterfaceName] <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
function M.NewPublicVirtualInterfaceAllocation(customerAddress, vlan, addressFamily, authKey, routeFilterPrefixes, amazonAddress, asn, virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPublicVirtualInterfaceAllocation")
	local t = { 
		["customerAddress"] = customerAddress,
		["vlan"] = vlan,
		["addressFamily"] = addressFamily,
		["authKey"] = authKey,
		["routeFilterPrefixes"] = routeFilterPrefixes,
		["amazonAddress"] = amazonAddress,
		["asn"] = asn,
		["virtualInterfaceName"] = virtualInterfaceName,
	}
	M.AssertNewPublicVirtualInterfaceAllocation(t)
	return t
end

local Lag_keys = { "awsDevice" = true, "allowsHostedConnections" = true, "numberOfConnections" = true, "lagState" = true, "ownerAccount" = true, "lagName" = true, "connections" = true, "lagId" = true, "minimumLinks" = true, "connectionsBandwidth" = true, "region" = true, "location" = true, nil }

function M.AssertLag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lag to be of type 'table'")
	if struct["awsDevice"] then M.AssertAwsDevice(struct["awsDevice"]) end
	if struct["allowsHostedConnections"] then M.AssertBooleanFlag(struct["allowsHostedConnections"]) end
	if struct["numberOfConnections"] then M.AssertCount(struct["numberOfConnections"]) end
	if struct["lagState"] then M.AssertLagState(struct["lagState"]) end
	if struct["ownerAccount"] then M.AssertOwnerAccount(struct["ownerAccount"]) end
	if struct["lagName"] then M.AssertLagName(struct["lagName"]) end
	if struct["connections"] then M.AssertConnectionList(struct["connections"]) end
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["minimumLinks"] then M.AssertCount(struct["minimumLinks"]) end
	if struct["connectionsBandwidth"] then M.AssertBandwidth(struct["connectionsBandwidth"]) end
	if struct["region"] then M.AssertRegion(struct["region"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(Lag_keys[k], "Lag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lag
-- <p>Describes a link aggregation group (LAG). A LAG is a connection that uses the Link Aggregation Control Protocol (LACP) to logically aggregate a bundle of physical connections. Like an interconnect, it can host other connections. All connections in a LAG must terminate on the same physical AWS Direct Connect endpoint, and must be the same bandwidth.</p>
-- @param awsDevice [AwsDevice] <p>The AWS Direct Connection endpoint that hosts the LAG.</p>
-- @param allowsHostedConnections [BooleanFlag] <p>Indicates whether the LAG can host other connections.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>
-- @param numberOfConnections [Count] <p>The number of physical connections bundled by the LAG, up to a maximum of 10.</p>
-- @param lagState [LagState] <p>Describes a link aggregation group (LAG). A LAG is a connection that uses the Link Aggregation Control Protocol (LACP) to logically aggregate a bundle of physical connections. Like an interconnect, it can host other connections. All connections in a LAG must terminate on the same physical AWS Direct Connect endpoint, and must be the same bandwidth.</p>
-- @param ownerAccount [OwnerAccount] <p>The owner of the LAG.</p>
-- @param lagName [LagName] <p>The name of the LAG.</p>
-- @param connections [ConnectionList] <p>A list of connections bundled by this LAG.</p>
-- @param lagId [LagId] <p>Describes a link aggregation group (LAG). A LAG is a connection that uses the Link Aggregation Control Protocol (LACP) to logically aggregate a bundle of physical connections. Like an interconnect, it can host other connections. All connections in a LAG must terminate on the same physical AWS Direct Connect endpoint, and must be the same bandwidth.</p>
-- @param minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational. If the number of operational connections drops below this setting, the LAG state changes to <code>down</code>. This value can help to ensure that a LAG is not overutilized if a significant number of its bundled connections go down.</p>
-- @param connectionsBandwidth [Bandwidth] <p>The individual bandwidth of the physical connections bundled by the LAG.</p> <p>Available values: 1Gbps, 10Gbps</p>
-- @param region [Region] <p>Describes a link aggregation group (LAG). A LAG is a connection that uses the Link Aggregation Control Protocol (LACP) to logically aggregate a bundle of physical connections. Like an interconnect, it can host other connections. All connections in a LAG must terminate on the same physical AWS Direct Connect endpoint, and must be the same bandwidth.</p>
-- @param location [LocationCode] <p>Describes a link aggregation group (LAG). A LAG is a connection that uses the Link Aggregation Control Protocol (LACP) to logically aggregate a bundle of physical connections. Like an interconnect, it can host other connections. All connections in a LAG must terminate on the same physical AWS Direct Connect endpoint, and must be the same bandwidth.</p>
function M.Lag(awsDevice, allowsHostedConnections, numberOfConnections, lagState, ownerAccount, lagName, connections, lagId, minimumLinks, connectionsBandwidth, region, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Lag")
	local t = { 
		["awsDevice"] = awsDevice,
		["allowsHostedConnections"] = allowsHostedConnections,
		["numberOfConnections"] = numberOfConnections,
		["lagState"] = lagState,
		["ownerAccount"] = ownerAccount,
		["lagName"] = lagName,
		["connections"] = connections,
		["lagId"] = lagId,
		["minimumLinks"] = minimumLinks,
		["connectionsBandwidth"] = connectionsBandwidth,
		["region"] = region,
		["location"] = location,
	}
	M.AssertLag(t)
	return t
end

local ConfirmPrivateVirtualInterfaceResponse_keys = { "virtualInterfaceState" = true, nil }

function M.AssertConfirmPrivateVirtualInterfaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmPrivateVirtualInterfaceResponse to be of type 'table'")
	if struct["virtualInterfaceState"] then M.AssertVirtualInterfaceState(struct["virtualInterfaceState"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmPrivateVirtualInterfaceResponse_keys[k], "ConfirmPrivateVirtualInterfaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmPrivateVirtualInterfaceResponse
-- <p>The response received when ConfirmPrivateVirtualInterface is called.</p>
-- @param virtualInterfaceState [VirtualInterfaceState] <p>The response received when ConfirmPrivateVirtualInterface is called.</p>
function M.ConfirmPrivateVirtualInterfaceResponse(virtualInterfaceState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPrivateVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = virtualInterfaceState,
	}
	M.AssertConfirmPrivateVirtualInterfaceResponse(t)
	return t
end

local AssociateHostedConnectionRequest_keys = { "connectionId" = true, "parentConnectionId" = true, nil }

function M.AssertAssociateHostedConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateHostedConnectionRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["parentConnectionId"], "Expected key parentConnectionId to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["parentConnectionId"] then M.AssertConnectionId(struct["parentConnectionId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateHostedConnectionRequest_keys[k], "AssociateHostedConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateHostedConnectionRequest
-- <p>Container for the parameters to the AssociateHostedConnection operation.</p>
-- @param connectionId [ConnectionId] <p>The ID of the hosted connection.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- @param parentConnectionId [ConnectionId] <p>The ID of the interconnect or the LAG.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: parentConnectionId
function M.AssociateHostedConnectionRequest(connectionId, parentConnectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateHostedConnectionRequest")
	local t = { 
		["connectionId"] = connectionId,
		["parentConnectionId"] = parentConnectionId,
	}
	M.AssertAssociateHostedConnectionRequest(t)
	return t
end

local CreateInterconnectRequest_keys = { "interconnectName" = true, "bandwidth" = true, "lagId" = true, "location" = true, nil }

function M.AssertCreateInterconnectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInterconnectRequest to be of type 'table'")
	assert(struct["interconnectName"], "Expected key interconnectName to exist in table")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	if struct["interconnectName"] then M.AssertInterconnectName(struct["interconnectName"]) end
	if struct["bandwidth"] then M.AssertBandwidth(struct["bandwidth"]) end
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(CreateInterconnectRequest_keys[k], "CreateInterconnectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInterconnectRequest
-- <p>Container for the parameters to the CreateInterconnect operation.</p>
-- @param interconnectName [InterconnectName] <p>The name of the interconnect.</p> <p>Example: "<i>1G Interconnect to AWS</i>"</p> <p>Default: None</p>
-- @param bandwidth [Bandwidth] <p>The port bandwidth</p> <p>Example: 1Gbps</p> <p>Default: None</p> <p>Available values: 1Gbps,10Gbps</p>
-- @param lagId [LagId] <p>Container for the parameters to the CreateInterconnect operation.</p>
-- @param location [LocationCode] <p>Where the interconnect is located</p> <p>Example: EqSV5</p> <p>Default: None</p>
-- Required parameter: interconnectName
-- Required parameter: bandwidth
-- Required parameter: location
function M.CreateInterconnectRequest(interconnectName, bandwidth, lagId, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInterconnectRequest")
	local t = { 
		["interconnectName"] = interconnectName,
		["bandwidth"] = bandwidth,
		["lagId"] = lagId,
		["location"] = location,
	}
	M.AssertCreateInterconnectRequest(t)
	return t
end

local DirectConnectClientException_keys = { "message" = true, nil }

function M.AssertDirectConnectClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectClientException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DirectConnectClientException_keys[k], "DirectConnectClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectClientException
-- <p>The API was called with invalid parameters. The error message will contain additional details about the cause.</p>
-- @param message [ErrorMessage] <p>This is an exception thrown when there is an issue with the input provided by the API call. For example, the name provided for a connection contains a pound sign (#). This can also occur when a valid value is provided, but is otherwise constrained. For example, the valid VLAN tag range is 1-4096 but each can only be used once per connection.</p>
function M.DirectConnectClientException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectConnectClientException")
	local t = { 
		["message"] = message,
	}
	M.AssertDirectConnectClientException(t)
	return t
end

local VirtualGateways_keys = { "virtualGateways" = true, nil }

function M.AssertVirtualGateways(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualGateways to be of type 'table'")
	if struct["virtualGateways"] then M.AssertVirtualGatewayList(struct["virtualGateways"]) end
	for k,_ in pairs(struct) do
		assert(VirtualGateways_keys[k], "VirtualGateways contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualGateways
-- <p>A structure containing a list of virtual private gateways.</p>
-- @param virtualGateways [VirtualGatewayList] <p>A list of virtual private gateways.</p>
function M.VirtualGateways(virtualGateways, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualGateways")
	local t = { 
		["virtualGateways"] = virtualGateways,
	}
	M.AssertVirtualGateways(t)
	return t
end

local CreateConnectionRequest_keys = { "lagId" = true, "bandwidth" = true, "location" = true, "connectionName" = true, nil }

function M.AssertCreateConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConnectionRequest to be of type 'table'")
	assert(struct["location"], "Expected key location to exist in table")
	assert(struct["bandwidth"], "Expected key bandwidth to exist in table")
	assert(struct["connectionName"], "Expected key connectionName to exist in table")
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	if struct["bandwidth"] then M.AssertBandwidth(struct["bandwidth"]) end
	if struct["location"] then M.AssertLocationCode(struct["location"]) end
	if struct["connectionName"] then M.AssertConnectionName(struct["connectionName"]) end
	for k,_ in pairs(struct) do
		assert(CreateConnectionRequest_keys[k], "CreateConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConnectionRequest
-- <p>Container for the parameters to the CreateConnection operation.</p>
-- @param lagId [LagId] <p>Container for the parameters to the CreateConnection operation.</p>
-- @param bandwidth [Bandwidth] <p>Container for the parameters to the CreateConnection operation.</p>
-- @param location [LocationCode] <p>Container for the parameters to the CreateConnection operation.</p>
-- @param connectionName [ConnectionName] <p>Container for the parameters to the CreateConnection operation.</p>
-- Required parameter: location
-- Required parameter: bandwidth
-- Required parameter: connectionName
function M.CreateConnectionRequest(lagId, bandwidth, location, connectionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConnectionRequest")
	local t = { 
		["lagId"] = lagId,
		["bandwidth"] = bandwidth,
		["location"] = location,
		["connectionName"] = connectionName,
	}
	M.AssertCreateConnectionRequest(t)
	return t
end

local NewPrivateVirtualInterface_keys = { "virtualGatewayId" = true, "customerAddress" = true, "vlan" = true, "addressFamily" = true, "authKey" = true, "amazonAddress" = true, "asn" = true, "virtualInterfaceName" = true, nil }

function M.AssertNewPrivateVirtualInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewPrivateVirtualInterface to be of type 'table'")
	assert(struct["virtualInterfaceName"], "Expected key virtualInterfaceName to exist in table")
	assert(struct["vlan"], "Expected key vlan to exist in table")
	assert(struct["asn"], "Expected key asn to exist in table")
	assert(struct["virtualGatewayId"], "Expected key virtualGatewayId to exist in table")
	if struct["virtualGatewayId"] then M.AssertVirtualGatewayId(struct["virtualGatewayId"]) end
	if struct["customerAddress"] then M.AssertCustomerAddress(struct["customerAddress"]) end
	if struct["vlan"] then M.AssertVLAN(struct["vlan"]) end
	if struct["addressFamily"] then M.AssertAddressFamily(struct["addressFamily"]) end
	if struct["authKey"] then M.AssertBGPAuthKey(struct["authKey"]) end
	if struct["amazonAddress"] then M.AssertAmazonAddress(struct["amazonAddress"]) end
	if struct["asn"] then M.AssertASN(struct["asn"]) end
	if struct["virtualInterfaceName"] then M.AssertVirtualInterfaceName(struct["virtualInterfaceName"]) end
	for k,_ in pairs(struct) do
		assert(NewPrivateVirtualInterface_keys[k], "NewPrivateVirtualInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewPrivateVirtualInterface
-- <p>A structure containing information about a new private virtual interface.</p>
-- @param virtualGatewayId [VirtualGatewayId] <p>A structure containing information about a new private virtual interface.</p>
-- @param customerAddress [CustomerAddress] <p>A structure containing information about a new private virtual interface.</p>
-- @param vlan [VLAN] <p>A structure containing information about a new private virtual interface.</p>
-- @param addressFamily [AddressFamily] <p>A structure containing information about a new private virtual interface.</p>
-- @param authKey [BGPAuthKey] <p>A structure containing information about a new private virtual interface.</p>
-- @param amazonAddress [AmazonAddress] <p>A structure containing information about a new private virtual interface.</p>
-- @param asn [ASN] <p>A structure containing information about a new private virtual interface.</p>
-- @param virtualInterfaceName [VirtualInterfaceName] <p>A structure containing information about a new private virtual interface.</p>
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
-- Required parameter: virtualGatewayId
function M.NewPrivateVirtualInterface(virtualGatewayId, customerAddress, vlan, addressFamily, authKey, amazonAddress, asn, virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPrivateVirtualInterface")
	local t = { 
		["virtualGatewayId"] = virtualGatewayId,
		["customerAddress"] = customerAddress,
		["vlan"] = vlan,
		["addressFamily"] = addressFamily,
		["authKey"] = authKey,
		["amazonAddress"] = amazonAddress,
		["asn"] = asn,
		["virtualInterfaceName"] = virtualInterfaceName,
	}
	M.AssertNewPrivateVirtualInterface(t)
	return t
end

local DirectConnectServerException_keys = { "message" = true, nil }

function M.AssertDirectConnectServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectConnectServerException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DirectConnectServerException_keys[k], "DirectConnectServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectConnectServerException
-- <p>A server-side error occurred during the API call. The error message will contain additional details about the cause.</p>
-- @param message [ErrorMessage] <p>This is an exception thrown when there is a backend issue on the server side.</p>
function M.DirectConnectServerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectConnectServerException")
	local t = { 
		["message"] = message,
	}
	M.AssertDirectConnectServerException(t)
	return t
end

local VirtualInterfaces_keys = { "virtualInterfaces" = true, nil }

function M.AssertVirtualInterfaces(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualInterfaces to be of type 'table'")
	if struct["virtualInterfaces"] then M.AssertVirtualInterfaceList(struct["virtualInterfaces"]) end
	for k,_ in pairs(struct) do
		assert(VirtualInterfaces_keys[k], "VirtualInterfaces contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualInterfaces
-- <p>A structure containing a list of virtual interfaces.</p>
-- @param virtualInterfaces [VirtualInterfaceList] <p>A list of virtual interfaces.</p>
function M.VirtualInterfaces(virtualInterfaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualInterfaces")
	local t = { 
		["virtualInterfaces"] = virtualInterfaces,
	}
	M.AssertVirtualInterfaces(t)
	return t
end

local TagResourceRequest_keys = { "resourceArn" = true, "tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["resourceArn"] then M.AssertResourceArn(struct["resourceArn"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
-- <p>Container for the parameters to the TagResource operation.</p>
-- @param resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p> <p>Example: arn:aws:directconnect:us-east-1:123456789012:dxcon/dxcon-fg5678gh</p>
-- @param tags [TagList] <p>The list of tags to add.</p>
-- Required parameter: resourceArn
-- Required parameter: tags
function M.TagResourceRequest(resourceArn, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["resourceArn"] = resourceArn,
		["tags"] = tags,
	}
	M.AssertTagResourceRequest(t)
	return t
end

local DeleteLagRequest_keys = { "lagId" = true, nil }

function M.AssertDeleteLagRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLagRequest to be of type 'table'")
	assert(struct["lagId"], "Expected key lagId to exist in table")
	if struct["lagId"] then M.AssertLagId(struct["lagId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLagRequest_keys[k], "DeleteLagRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLagRequest
-- <p>Container for the parameters to the DeleteLag operation.</p>
-- @param lagId [LagId] <p>The ID of the LAG to delete.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- Required parameter: lagId
function M.DeleteLagRequest(lagId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLagRequest")
	local t = { 
		["lagId"] = lagId,
	}
	M.AssertDeleteLagRequest(t)
	return t
end

local DescribeHostedConnectionsRequest_keys = { "connectionId" = true, nil }

function M.AssertDescribeHostedConnectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHostedConnectionsRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHostedConnectionsRequest_keys[k], "DescribeHostedConnectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHostedConnectionsRequest
-- <p>Container for the parameters to the DescribeHostedConnections operation.</p>
-- @param connectionId [ConnectionId] <p>The ID of the interconnect or LAG on which the hosted connections are provisioned.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
function M.DescribeHostedConnectionsRequest(connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHostedConnectionsRequest")
	local t = { 
		["connectionId"] = connectionId,
	}
	M.AssertDescribeHostedConnectionsRequest(t)
	return t
end

local ConfirmConnectionResponse_keys = { "connectionState" = true, nil }

function M.AssertConfirmConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmConnectionResponse to be of type 'table'")
	if struct["connectionState"] then M.AssertConnectionState(struct["connectionState"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmConnectionResponse_keys[k], "ConfirmConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmConnectionResponse
-- <p>The response received when ConfirmConnection is called.</p>
-- @param connectionState [ConnectionState] <p>The response received when ConfirmConnection is called.</p>
function M.ConfirmConnectionResponse(connectionState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmConnectionResponse")
	local t = { 
		["connectionState"] = connectionState,
	}
	M.AssertConfirmConnectionResponse(t)
	return t
end

local CreatePrivateVirtualInterfaceRequest_keys = { "connectionId" = true, "newPrivateVirtualInterface" = true, nil }

function M.AssertCreatePrivateVirtualInterfaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePrivateVirtualInterfaceRequest to be of type 'table'")
	assert(struct["connectionId"], "Expected key connectionId to exist in table")
	assert(struct["newPrivateVirtualInterface"], "Expected key newPrivateVirtualInterface to exist in table")
	if struct["connectionId"] then M.AssertConnectionId(struct["connectionId"]) end
	if struct["newPrivateVirtualInterface"] then M.AssertNewPrivateVirtualInterface(struct["newPrivateVirtualInterface"]) end
	for k,_ in pairs(struct) do
		assert(CreatePrivateVirtualInterfaceRequest_keys[k], "CreatePrivateVirtualInterfaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePrivateVirtualInterfaceRequest
-- <p>Container for the parameters to the CreatePrivateVirtualInterface operation.</p>
-- @param connectionId [ConnectionId] <p>Container for the parameters to the CreatePrivateVirtualInterface operation.</p>
-- @param newPrivateVirtualInterface [NewPrivateVirtualInterface] <p>Detailed information for the private virtual interface to be created.</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: newPrivateVirtualInterface
function M.CreatePrivateVirtualInterfaceRequest(connectionId, newPrivateVirtualInterface, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePrivateVirtualInterfaceRequest")
	local t = { 
		["connectionId"] = connectionId,
		["newPrivateVirtualInterface"] = newPrivateVirtualInterface,
	}
	M.AssertCreatePrivateVirtualInterfaceRequest(t)
	return t
end

function M.AssertVirtualGatewayState(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayState to be of type 'string'")
end

-- <p>State of the virtual private gateway.</p> <ul> <li> <p> <b>Pending</b>: This is the initial state after calling <i>CreateVpnGateway</i>.</p> </li> <li> <p> <b>Available</b>: Ready for use by a private virtual interface.</p> </li> <li> <p> <b>Deleting</b>: This is the initial state after calling <i>DeleteVpnGateway</i>.</p> </li> <li> <p> <b>Deleted</b>: In this state, a private virtual interface is unable to send traffic over this gateway.</p> </li> </ul>
function M.VirtualGatewayState(str)
	M.AssertVirtualGatewayState(str)
	return str
end

function M.AssertLocationName(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationName to be of type 'string'")
end

--  
function M.LocationName(str)
	M.AssertLocationName(str)
	return str
end

function M.AssertAmazonAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonAddress to be of type 'string'")
end

-- <p>IP address assigned to the Amazon interface.</p> <p>Example: 192.168.1.1/30 or 2001:db8::1/125</p>
function M.AmazonAddress(str)
	M.AssertAmazonAddress(str)
	return str
end

function M.AssertVirtualGatewayId(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualGatewayId to be of type 'string'")
end

-- <p>The ID of the virtual private gateway to a VPC. This only applies to private virtual interfaces.</p> <p>Example: vgw-123er56</p>
function M.VirtualGatewayId(str)
	M.AssertVirtualGatewayId(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertLagState(str)
	assert(str)
	assert(type(str) == "string", "Expected LagState to be of type 'string'")
end

-- <p>The state of the LAG.</p> <ul> <li> <p> <b>Requested</b>: The initial state of a LAG. The LAG stays in the requested state until the Letter of Authorization (LOA) is available.</p> </li> <li> <p> <b>Pending</b>: The LAG has been approved, and is being initialized.</p> </li> <li> <p> <b>Available</b>: The network link is established, and the LAG is ready for use.</p> </li> <li> <p> <b>Down</b>: The network link is down.</p> </li> <li> <p> <b>Deleting</b>: The LAG is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The LAG has been deleted.</p> </li> </ul>
function M.LagState(str)
	M.AssertLagState(str)
	return str
end

function M.AssertBGPStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPStatus to be of type 'string'")
end

-- <p>The Up/Down state of the BGP peer.</p> <ul> <li> <p> <b>Up</b>: The BGP peer is established.</p> </li> <li> <p> <b>Down</b>: The BGP peer is down.</p> </li> </ul>
function M.BGPStatus(str)
	M.AssertBGPStatus(str)
	return str
end

function M.AssertLagId(str)
	assert(str)
	assert(type(str) == "string", "Expected LagId to be of type 'string'")
end

-- <p>The ID of the LAG.</p> <p>Example: dxlag-fg5678gh</p>
function M.LagId(str)
	M.AssertLagId(str)
	return str
end

function M.AssertPartnerName(str)
	assert(str)
	assert(type(str) == "string", "Expected PartnerName to be of type 'string'")
end

--  
function M.PartnerName(str)
	M.AssertPartnerName(str)
	return str
end

function M.AssertRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected Region to be of type 'string'")
end

-- <p>The AWS region where the connection is located.</p> <p>Example: us-east-1</p> <p>Default: None</p>
function M.Region(str)
	M.AssertRegion(str)
	return str
end

function M.AssertLagName(str)
	assert(str)
	assert(type(str) == "string", "Expected LagName to be of type 'string'")
end

--  
function M.LagName(str)
	M.AssertLagName(str)
	return str
end

function M.AssertAwsDevice(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsDevice to be of type 'string'")
end

-- <p>An abstract ID for the physical Direct Connect endpoint.</p> <p>Example: EQC50-abcdef123456</p>
function M.AwsDevice(str)
	M.AssertAwsDevice(str)
	return str
end

function M.AssertLoaContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected LoaContentType to be of type 'string'")
end

-- <p>A standard media type indicating the content type of the LOA-CFA document. Currently, the only supported value is "application/pdf".</p> <p>Default: application/pdf</p>
function M.LoaContentType(str)
	M.AssertLoaContentType(str)
	return str
end

function M.AssertInterconnectName(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectName to be of type 'string'")
end

-- <p>The name of the interconnect.</p> <p>Example: "<i>1G Interconnect to AWS</i>"</p>
function M.InterconnectName(str)
	M.AssertInterconnectName(str)
	return str
end

function M.AssertOwnerAccount(str)
	assert(str)
	assert(type(str) == "string", "Expected OwnerAccount to be of type 'string'")
end

--  
function M.OwnerAccount(str)
	M.AssertOwnerAccount(str)
	return str
end

function M.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	M.AssertResourceArn(str)
	return str
end

function M.AssertInterconnectState(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectState to be of type 'string'")
end

-- <p>State of the interconnect.</p> <ul> <li> <p> <b>Requested</b>: The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <b>Pending</b>: The interconnect has been approved, and is being initialized.</p> </li> <li> <p> <b>Available</b>: The network link is up, and the interconnect is ready for use.</p> </li> <li> <p> <b>Down</b>: The network link is down.</p> </li> <li> <p> <b>Deleting</b>: The interconnect is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The interconnect has been deleted.</p> </li> </ul>
function M.InterconnectState(str)
	M.AssertInterconnectState(str)
	return str
end

function M.AssertVirtualInterfaceType(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceType to be of type 'string'")
end

-- <p>The type of virtual interface.</p> <p>Example: private (Amazon VPC) or public (Amazon S3, Amazon DynamoDB, and so on.)</p>
function M.VirtualInterfaceType(str)
	M.AssertVirtualInterfaceType(str)
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

function M.AssertVirtualInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceId to be of type 'string'")
end

-- <p>The ID of the virtual interface.</p> <p>Example: dxvif-123dfg56</p> <p>Default: None</p>
function M.VirtualInterfaceId(str)
	M.AssertVirtualInterfaceId(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertConnectionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionName to be of type 'string'")
end

-- <p>The name of the connection.</p> <p>Example: "<i>My Connection to AWS</i>"</p> <p>Default: None</p>
function M.ConnectionName(str)
	M.AssertConnectionName(str)
	return str
end

function M.AssertVirtualInterfaceState(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceState to be of type 'string'")
end

-- <p>State of the virtual interface.</p> <ul> <li> <p> <b>Confirming</b>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <b>Verifying</b>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <b>Pending</b>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <b>Available</b>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <b>Down</b>: A virtual interface that is BGP down.</p> </li> <li> <p> <b>Deleting</b>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <b>Deleted</b>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <b>Rejected</b>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the 'Confirming' state is deleted by the virtual interface owner, the virtual interface will enter the 'Rejected' state.</p> </li> </ul>
function M.VirtualInterfaceState(str)
	M.AssertVirtualInterfaceState(str)
	return str
end

function M.AssertBGPAuthKey(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPAuthKey to be of type 'string'")
end

-- <p>The authentication key for BGP configuration.</p> <p>Example: asdf34example</p>
function M.BGPAuthKey(str)
	M.AssertBGPAuthKey(str)
	return str
end

function M.AssertInterconnectId(str)
	assert(str)
	assert(type(str) == "string", "Expected InterconnectId to be of type 'string'")
end

-- <p>The ID of the interconnect.</p> <p>Example: dxcon-abc123</p>
function M.InterconnectId(str)
	M.AssertInterconnectId(str)
	return str
end

function M.AssertConnectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionId to be of type 'string'")
end

-- <p>The ID of the connection. This field is also used as the ID type for operations that use multiple connection types (LAG, interconnect, and/or connection).</p> <p>Example: dxcon-fg5678gh</p> <p>Default: None</p>
function M.ConnectionId(str)
	M.AssertConnectionId(str)
	return str
end

function M.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
end

--  
function M.ProviderName(str)
	M.AssertProviderName(str)
	return str
end

function M.AssertConnectionState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionState to be of type 'string'")
end

-- <p>State of the connection.</p> <ul> <li> <p> <b>Ordering</b>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p> </li> <li> <p> <b>Requested</b>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <b>Pending</b>: The connection has been approved, and is being initialized.</p> </li> <li> <p> <b>Available</b>: The network link is up, and the connection is ready for use.</p> </li> <li> <p> <b>Down</b>: The network link is down.</p> </li> <li> <p> <b>Deleting</b>: The connection is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The connection has been deleted.</p> </li> <li> <p> <b>Rejected</b>: A hosted connection in the 'Ordering' state will enter the 'Rejected' state if it is deleted by the end customer.</p> </li> </ul>
function M.ConnectionState(str)
	M.AssertConnectionState(str)
	return str
end

function M.AssertAddressFamily(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressFamily to be of type 'string'")
end

-- <p>Indicates the address family for the BGP peer.</p> <ul> <li> <p> <b>ipv4</b>: IPv4 address family</p> </li> <li> <p> <b>ipv6</b>: IPv6 address family</p> </li> </ul>
function M.AddressFamily(str)
	M.AssertAddressFamily(str)
	return str
end

function M.AssertVirtualInterfaceName(str)
	assert(str)
	assert(type(str) == "string", "Expected VirtualInterfaceName to be of type 'string'")
end

-- <p>The name of the virtual interface assigned by the customer.</p> <p>Example: "My VPC"</p>
function M.VirtualInterfaceName(str)
	M.AssertVirtualInterfaceName(str)
	return str
end

function M.AssertRouterConfig(str)
	assert(str)
	assert(type(str) == "string", "Expected RouterConfig to be of type 'string'")
end

--  
function M.RouterConfig(str)
	M.AssertRouterConfig(str)
	return str
end

function M.AssertBGPPeerState(str)
	assert(str)
	assert(type(str) == "string", "Expected BGPPeerState to be of type 'string'")
end

-- <p>The state of the BGP peer.</p> <ul> <li> <p> <b>Verifying</b>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state only applies to BGP peers on a public virtual interface. </p> </li> <li> <p> <b>Pending</b>: The BGP peer has been created, and is in this state until it is ready to be established.</p> </li> <li> <p> <b>Available</b>: The BGP peer can be established.</p> </li> <li> <p> <b>Deleting</b>: The BGP peer is in the process of being deleted.</p> </li> <li> <p> <b>Deleted</b>: The BGP peer has been deleted and cannot be established.</p> </li> </ul>
function M.BGPPeerState(str)
	M.AssertBGPPeerState(str)
	return str
end

function M.AssertCIDR(str)
	assert(str)
	assert(type(str) == "string", "Expected CIDR to be of type 'string'")
end

--  
function M.CIDR(str)
	M.AssertCIDR(str)
	return str
end

function M.AssertCustomerAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomerAddress to be of type 'string'")
end

-- <p>IP address assigned to the customer interface.</p> <p>Example: 192.168.1.2/30 or 2001:db8::2/125</p>
function M.CustomerAddress(str)
	M.AssertCustomerAddress(str)
	return str
end

function M.AssertBandwidth(str)
	assert(str)
	assert(type(str) == "string", "Expected Bandwidth to be of type 'string'")
end

-- <p>Bandwidth of the connection.</p> <p>Example: 1Gbps</p> <p>Default: None</p>
function M.Bandwidth(str)
	M.AssertBandwidth(str)
	return str
end

function M.AssertLocationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationCode to be of type 'string'")
end

-- <p>Where the connection is located.</p> <p>Example: EqSV5</p> <p>Default: None</p>
function M.LocationCode(str)
	M.AssertLocationCode(str)
	return str
end

function M.AssertVLAN(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected VLAN to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.VLAN(integer)
	M.AssertVLAN(integer)
	return integer
end

function M.AssertASN(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ASN to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ASN(integer)
	M.AssertASN(integer)
	return integer
end

function M.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Count(integer)
	M.AssertCount(integer)
	return integer
end

function M.AssertBooleanFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanFlag to be of type 'boolean'")
end

function M.BooleanFlag(boolean)
	M.AssertBooleanFlag(boolean)
	return boolean
end

function M.AssertLoaIssueTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LoaIssueTime to be of type 'string'")
end

function M.LoaIssueTime(timestamp)
	M.AssertLoaIssueTime(timestamp)
	return timestamp
end

function M.AssertLoaContent(blob)
	assert(blob)
	assert(type(string) == "string", "Expected LoaContent to be of type 'string'")
end

function M.LoaContent(blob)
	M.AssertLoaContent(blob)
	return blob
end

function M.AssertVirtualGatewayList(list)
	assert(list)
	assert(type(list) == "table", "Expected VirtualGatewayList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVirtualGateway(v)
	end
end

-- <p>A list of virtual private gateways.</p>
-- List of VirtualGateway objects
function M.VirtualGatewayList(list)
	M.AssertVirtualGatewayList(list)
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

function M.AssertConnectionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConnection(v)
	end
end

-- <p>A list of connections.</p>
-- List of Connection objects
function M.ConnectionList(list)
	M.AssertConnectionList(list)
	return list
end

function M.AssertResourceArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArnList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArnList(list)
	M.AssertResourceArnList(list)
	return list
end

function M.AssertLagList(list)
	assert(list)
	assert(type(list) == "table", "Expected LagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLag(v)
	end
end

-- <p>A list of LAGs.</p>
-- List of Lag objects
function M.LagList(list)
	M.AssertLagList(list)
	return list
end

function M.AssertResourceTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceTag(v)
	end
end

--  
-- List of ResourceTag objects
function M.ResourceTagList(list)
	M.AssertResourceTagList(list)
	return list
end

function M.AssertRouteFilterPrefixList(list)
	assert(list)
	assert(type(list) == "table", "Expected RouteFilterPrefixList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRouteFilterPrefix(v)
	end
end

-- <p>A list of routes to be advertised to the AWS network in this region (public virtual interface).</p>
-- List of RouteFilterPrefix objects
function M.RouteFilterPrefixList(list)
	M.AssertRouteFilterPrefixList(list)
	return list
end

function M.AssertVirtualInterfaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected VirtualInterfaceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVirtualInterface(v)
	end
end

-- <p>A list of virtual interfaces.</p>
-- List of VirtualInterface objects
function M.VirtualInterfaceList(list)
	M.AssertVirtualInterfaceList(list)
	return list
end

function M.AssertBGPPeerList(list)
	assert(list)
	assert(type(list) == "table", "Expected BGPPeerList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBGPPeer(v)
	end
end

-- <p>A list of the BGP peers configured on this virtual interface.</p>
-- List of BGPPeer objects
function M.BGPPeerList(list)
	M.AssertBGPPeerList(list)
	return list
end

function M.AssertLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLocation(v)
	end
end

--  
-- List of Location objects
function M.LocationList(list)
	M.AssertLocationList(list)
	return list
end

function M.AssertInterconnectList(list)
	assert(list)
	assert(type(list) == "table", "Expected InterconnectList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInterconnect(v)
	end
end

-- <p>A list of interconnects.</p>
-- List of Interconnect objects
function M.InterconnectList(list)
	M.AssertInterconnectList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DescribeVirtualGateways
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVirtualGatewaysAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualGateways",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBGPPeer
-- @param CreateBGPPeerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBGPPeerAsync(CreateBGPPeerRequest, cb)
	assert(CreateBGPPeerRequest, "You must provide a CreateBGPPeerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.CreateBGPPeer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateBGPPeerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AllocateHostedConnection
-- @param AllocateHostedConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocateHostedConnectionAsync(AllocateHostedConnectionRequest, cb)
	assert(AllocateHostedConnectionRequest, "You must provide a AllocateHostedConnectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AllocateHostedConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AllocateHostedConnectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateHostedConnection
-- @param AssociateHostedConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateHostedConnectionAsync(AssociateHostedConnectionRequest, cb)
	assert(AssociateHostedConnectionRequest, "You must provide a AssociateHostedConnectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateHostedConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateHostedConnectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AllocatePublicVirtualInterface
-- @param AllocatePublicVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocatePublicVirtualInterfaceAsync(AllocatePublicVirtualInterfaceRequest, cb)
	assert(AllocatePublicVirtualInterfaceRequest, "You must provide a AllocatePublicVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AllocatePublicVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AllocatePublicVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVirtualInterface
-- @param DeleteVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVirtualInterfaceAsync(DeleteVirtualInterfaceRequest, cb)
	assert(DeleteVirtualInterfaceRequest, "You must provide a DeleteVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInterconnect
-- @param CreateInterconnectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInterconnectAsync(CreateInterconnectRequest, cb)
	assert(CreateInterconnectRequest, "You must provide a CreateInterconnectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.CreateInterconnect",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateInterconnectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLags
-- @param DescribeLagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLagsAsync(DescribeLagsRequest, cb)
	assert(DescribeLagsRequest, "You must provide a DescribeLagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBGPPeer
-- @param DeleteBGPPeerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBGPPeerAsync(DeleteBGPPeerRequest, cb)
	assert(DeleteBGPPeerRequest, "You must provide a DeleteBGPPeerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteBGPPeer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteBGPPeerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInterconnectLoa
-- @param DescribeInterconnectLoaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInterconnectLoaAsync(DescribeInterconnectLoaRequest, cb)
	assert(DescribeInterconnectLoaRequest, "You must provide a DescribeInterconnectLoaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeInterconnectLoa",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInterconnectLoaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AllocatePrivateVirtualInterface
-- @param AllocatePrivateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocatePrivateVirtualInterfaceAsync(AllocatePrivateVirtualInterfaceRequest, cb)
	assert(AllocatePrivateVirtualInterfaceRequest, "You must provide a AllocatePrivateVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AllocatePrivateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AllocatePrivateVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateConnectionWithLag
-- @param AssociateConnectionWithLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateConnectionWithLagAsync(AssociateConnectionWithLagRequest, cb)
	assert(AssociateConnectionWithLagRequest, "You must provide a AssociateConnectionWithLagRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateConnectionWithLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateConnectionWithLagRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLag
-- @param CreateLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLagAsync(CreateLagRequest, cb)
	assert(CreateLagRequest, "You must provide a CreateLagRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.CreateLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLagRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmPublicVirtualInterface
-- @param ConfirmPublicVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmPublicVirtualInterfaceAsync(ConfirmPublicVirtualInterfaceRequest, cb)
	assert(ConfirmPublicVirtualInterfaceRequest, "You must provide a ConfirmPublicVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmPublicVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmPublicVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoa
-- @param DescribeLoaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoaAsync(DescribeLoaRequest, cb)
	assert(DescribeLoaRequest, "You must provide a DescribeLoaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLoa",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHostedConnections
-- @param DescribeHostedConnectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHostedConnectionsAsync(DescribeHostedConnectionsRequest, cb)
	assert(DescribeHostedConnectionsRequest, "You must provide a DescribeHostedConnectionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeHostedConnections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHostedConnectionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteInterconnect
-- @param DeleteInterconnectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInterconnectAsync(DeleteInterconnectRequest, cb)
	assert(DeleteInterconnectRequest, "You must provide a DeleteInterconnectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteInterconnect",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteInterconnectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeVirtualInterfaces
-- @param DescribeVirtualInterfacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVirtualInterfacesAsync(DescribeVirtualInterfacesRequest, cb)
	assert(DescribeVirtualInterfacesRequest, "You must provide a DescribeVirtualInterfacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualInterfaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeVirtualInterfacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateLag
-- @param UpdateLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateLagAsync(UpdateLagRequest, cb)
	assert(UpdateLagRequest, "You must provide a UpdateLagRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.UpdateLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateLagRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmPrivateVirtualInterface
-- @param ConfirmPrivateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmPrivateVirtualInterfaceAsync(ConfirmPrivateVirtualInterfaceRequest, cb)
	assert(ConfirmPrivateVirtualInterfaceRequest, "You must provide a ConfirmPrivateVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmPrivateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmPrivateVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConnectionLoa
-- @param DescribeConnectionLoaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConnectionLoaAsync(DescribeConnectionLoaRequest, cb)
	assert(DescribeConnectionLoaRequest, "You must provide a DescribeConnectionLoaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeConnectionLoa",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConnectionLoaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConnectionsOnInterconnect
-- @param DescribeConnectionsOnInterconnectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConnectionsOnInterconnectAsync(DescribeConnectionsOnInterconnectRequest, cb)
	assert(DescribeConnectionsOnInterconnectRequest, "You must provide a DescribeConnectionsOnInterconnectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeConnectionsOnInterconnect",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConnectionsOnInterconnectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateConnectionFromLag
-- @param DisassociateConnectionFromLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateConnectionFromLagAsync(DisassociateConnectionFromLagRequest, cb)
	assert(DisassociateConnectionFromLagRequest, "You must provide a DisassociateConnectionFromLagRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DisassociateConnectionFromLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateConnectionFromLagRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AllocateConnectionOnInterconnect
-- @param AllocateConnectionOnInterconnectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AllocateConnectionOnInterconnectAsync(AllocateConnectionOnInterconnectRequest, cb)
	assert(AllocateConnectionOnInterconnectRequest, "You must provide a AllocateConnectionOnInterconnectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AllocateConnectionOnInterconnect",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AllocateConnectionOnInterconnectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmConnection
-- @param ConfirmConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmConnectionAsync(ConfirmConnectionRequest, cb)
	assert(ConfirmConnectionRequest, "You must provide a ConfirmConnectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.ConfirmConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmConnectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInterconnects
-- @param DescribeInterconnectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInterconnectsAsync(DescribeInterconnectsRequest, cb)
	assert(DescribeInterconnectsRequest, "You must provide a DescribeInterconnectsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeInterconnects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInterconnectsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConnections
-- @param DescribeConnectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConnectionsAsync(DescribeConnectionsRequest, cb)
	assert(DescribeConnectionsRequest, "You must provide a DescribeConnectionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeConnections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConnectionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePublicVirtualInterface
-- @param CreatePublicVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePublicVirtualInterfaceAsync(CreatePublicVirtualInterfaceRequest, cb)
	assert(CreatePublicVirtualInterfaceRequest, "You must provide a CreatePublicVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.CreatePublicVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePublicVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateConnection
-- @param CreateConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConnectionAsync(CreateConnectionRequest, cb)
	assert(CreateConnectionRequest, "You must provide a CreateConnectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.CreateConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateConnectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLocations
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLocationsAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePrivateVirtualInterface
-- @param CreatePrivateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePrivateVirtualInterfaceAsync(CreatePrivateVirtualInterfaceRequest, cb)
	assert(CreatePrivateVirtualInterfaceRequest, "You must provide a CreatePrivateVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.CreatePrivateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePrivateVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConnection
-- @param DeleteConnectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConnectionAsync(DeleteConnectionRequest, cb)
	assert(DeleteConnectionRequest, "You must provide a DeleteConnectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteConnection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConnectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLag
-- @param DeleteLagRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLagAsync(DeleteLagRequest, cb)
	assert(DeleteLagRequest, "You must provide a DeleteLagRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DeleteLag",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLagRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateVirtualInterface
-- @param AssociateVirtualInterfaceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateVirtualInterfaceAsync(AssociateVirtualInterfaceRequest, cb)
	assert(AssociateVirtualInterfaceRequest, "You must provide a AssociateVirtualInterfaceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.AssociateVirtualInterface",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateVirtualInterfaceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
