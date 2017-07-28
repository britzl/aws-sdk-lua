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
-- @param _awsDevice [AwsDevice] <p>The Direct Connection endpoint which the physical connection terminates on.</p>
-- @param _region [Region] 
-- @param _lagId [LagId] 
-- @param _bandwidth [Bandwidth] 
-- @param _location [LocationCode] 
-- @param _interconnectName [InterconnectName] 
-- @param _interconnectId [InterconnectId] 
-- @param _loaIssueTime [LoaIssueTime] <p>The time of the most recent call to DescribeInterconnectLoa for this Interconnect.</p>
-- @param _interconnectState [InterconnectState] 
function M.Interconnect(_awsDevice, _region, _lagId, _bandwidth, _location, _interconnectName, _interconnectId, _loaIssueTime, _interconnectState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Interconnect")
	local t = { 
		["awsDevice"] = _awsDevice,
		["region"] = _region,
		["lagId"] = _lagId,
		["bandwidth"] = _bandwidth,
		["location"] = _location,
		["interconnectName"] = _interconnectName,
		["interconnectId"] = _interconnectId,
		["loaIssueTime"] = _loaIssueTime,
		["interconnectState"] = _interconnectState,
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
function M.DuplicateTagKeysException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateTagKeysException")
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
-- @param _interconnectId [InterconnectId] 
-- Required parameter: interconnectId
function M.DeleteInterconnectRequest(_interconnectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInterconnectRequest")
	local t = { 
		["interconnectId"] = _interconnectId,
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
-- @param _virtualInterfaceId [VirtualInterfaceId] 
-- Required parameter: virtualInterfaceId
function M.ConfirmPublicVirtualInterfaceRequest(_virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPublicVirtualInterfaceRequest")
	local t = { 
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _loaContentType [LoaContentType] 
-- @param _connectionId [ConnectionId] 
-- @param _providerName [ProviderName] <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- Required parameter: connectionId
function M.DescribeConnectionLoaRequest(_loaContentType, _connectionId, _providerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionLoaRequest")
	local t = { 
		["loaContentType"] = _loaContentType,
		["connectionId"] = _connectionId,
		["providerName"] = _providerName,
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
-- @param _lagId [LagId] <p>The ID of the LAG with which to associate the connection.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @param _connectionId [ConnectionId] <p>The ID of the connection.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: lagId
function M.AssociateConnectionWithLagRequest(_lagId, _connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateConnectionWithLagRequest")
	local t = { 
		["lagId"] = _lagId,
		["connectionId"] = _connectionId,
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
-- @param _interconnectState [InterconnectState] 
function M.DeleteInterconnectResponse(_interconnectState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInterconnectResponse")
	local t = { 
		["interconnectState"] = _interconnectState,
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
-- @param _connectionId [ConnectionId] 
-- @param _virtualInterfaceId [VirtualInterfaceId] 
function M.DescribeVirtualInterfacesRequest(_connectionId, _virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVirtualInterfacesRequest")
	local t = { 
		["connectionId"] = _connectionId,
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _lagId [LagId] <p>The ID of the LAG.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
function M.DescribeLagsRequest(_lagId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLagsRequest")
	local t = { 
		["lagId"] = _lagId,
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
-- @param _interconnects [InterconnectList] <p>A list of interconnects.</p>
function M.Interconnects(_interconnects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Interconnects")
	local t = { 
		["interconnects"] = _interconnects,
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
-- @param _loa [Loa] 
function M.DescribeInterconnectLoaResponse(_loa, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInterconnectLoaResponse")
	local t = { 
		["loa"] = _loa,
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
-- @param _lagId [LagId] <p>The ID of the LAG.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @param _connectionId [ConnectionId] <p>The ID of the connection to disassociate from the LAG.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: lagId
function M.DisassociateConnectionFromLagRequest(_lagId, _connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConnectionFromLagRequest")
	local t = { 
		["lagId"] = _lagId,
		["connectionId"] = _connectionId,
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
-- @param _connectionId [ConnectionId] <p>The ID of an existing connection to migrate to the LAG.</p> <p>Default: None</p>
-- @param _lagName [LagName] <p>The name of the LAG.</p> <p>Example: "<code>3x10G LAG to AWS</code>"</p> <p>Default: None</p>
-- @param _numberOfConnections [Count] <p>The number of physical connections initially provisioned and bundled by the LAG.</p> <p>Default: None</p>
-- @param _location [LocationCode] <p>The AWS Direct Connect location in which the LAG should be allocated.</p> <p>Example: EqSV5</p> <p>Default: None</p>
-- @param _connectionsBandwidth [Bandwidth] <p>The bandwidth of the individual physical connections bundled by the LAG.</p> <p>Default: None</p> <p>Available values: 1Gbps, 10Gbps</p>
-- Required parameter: numberOfConnections
-- Required parameter: location
-- Required parameter: connectionsBandwidth
-- Required parameter: lagName
function M.CreateLagRequest(_connectionId, _lagName, _numberOfConnections, _location, _connectionsBandwidth, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLagRequest")
	local t = { 
		["connectionId"] = _connectionId,
		["lagName"] = _lagName,
		["numberOfConnections"] = _numberOfConnections,
		["location"] = _location,
		["connectionsBandwidth"] = _connectionsBandwidth,
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
-- @param _connections [ConnectionList] <p>A list of connections.</p>
function M.Connections(_connections, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connections")
	local t = { 
		["connections"] = _connections,
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
-- @param _value [TagValue] <p>The value of the tag.</p>
-- @param _key [TagKey] <p>The key of the tag.</p>
-- Required parameter: key
function M.Tag(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = _value,
		["key"] = _key,
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
-- @param _interconnectId [InterconnectId] <p>ID of the interconnect on which a list of connection is provisioned.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- Required parameter: interconnectId
function M.DescribeConnectionsOnInterconnectRequest(_interconnectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsOnInterconnectRequest")
	local t = { 
		["interconnectId"] = _interconnectId,
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
-- @param _lags [LagList] <p>A list of LAGs.</p>
function M.Lags(_lags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Lags")
	local t = { 
		["lags"] = _lags,
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
-- @param _virtualInterface [VirtualInterface] 
function M.DeleteBGPPeerResponse(_virtualInterface, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBGPPeerResponse")
	local t = { 
		["virtualInterface"] = _virtualInterface,
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
-- @param _virtualGatewayId [VirtualGatewayId] <p>ID of the virtual private gateway that will be attached to the virtual interface.</p> <p> A virtual private gateway can be managed via the Amazon Virtual Private Cloud (VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">EC2 CreateVpnGateway</a> action.</p> <p>Default: None</p>
-- @param _virtualInterfaceId [VirtualInterfaceId] 
-- Required parameter: virtualInterfaceId
-- Required parameter: virtualGatewayId
function M.ConfirmPrivateVirtualInterfaceRequest(_virtualGatewayId, _virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPrivateVirtualInterfaceRequest")
	local t = { 
		["virtualGatewayId"] = _virtualGatewayId,
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _locationName [LocationName] <p>The name of the AWS Direct Connect location. The name includes the colocation partner name and the physical site of the lit building.</p>
-- @param _locationCode [LocationCode] <p>The code used to indicate the AWS Direct Connect location.</p>
function M.Location(_locationName, _locationCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Location")
	local t = { 
		["locationName"] = _locationName,
		["locationCode"] = _locationCode,
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
-- @param _loa [Loa] 
function M.DescribeConnectionLoaResponse(_loa, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionLoaResponse")
	local t = { 
		["loa"] = _loa,
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
-- @param _connectionId [ConnectionId] 
-- Required parameter: connectionId
function M.ConfirmConnectionRequest(_connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmConnectionRequest")
	local t = { 
		["connectionId"] = _connectionId,
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
-- @param _virtualInterfaceState [VirtualInterfaceState] 
-- @param _asn [ASN] 
-- @param _vlan [VLAN] 
-- @param _customerAddress [CustomerAddress] 
-- @param _ownerAccount [OwnerAccount] <p>The AWS account that will own the new virtual interface.</p>
-- @param _connectionId [ConnectionId] 
-- @param _addressFamily [AddressFamily] 
-- @param _virtualGatewayId [VirtualGatewayId] 
-- @param _virtualInterfaceId [VirtualInterfaceId] 
-- @param _authKey [BGPAuthKey] 
-- @param _routeFilterPrefixes [RouteFilterPrefixList] 
-- @param _location [LocationCode] 
-- @param _bgpPeers [BGPPeerList] 
-- @param _customerRouterConfig [RouterConfig] <p>Information for generating the customer router configuration.</p>
-- @param _amazonAddress [AmazonAddress] 
-- @param _virtualInterfaceType [VirtualInterfaceType] 
-- @param _virtualInterfaceName [VirtualInterfaceName] 
function M.VirtualInterface(_virtualInterfaceState, _asn, _vlan, _customerAddress, _ownerAccount, _connectionId, _addressFamily, _virtualGatewayId, _virtualInterfaceId, _authKey, _routeFilterPrefixes, _location, _bgpPeers, _customerRouterConfig, _amazonAddress, _virtualInterfaceType, _virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualInterface")
	local t = { 
		["virtualInterfaceState"] = _virtualInterfaceState,
		["asn"] = _asn,
		["vlan"] = _vlan,
		["customerAddress"] = _customerAddress,
		["ownerAccount"] = _ownerAccount,
		["connectionId"] = _connectionId,
		["addressFamily"] = _addressFamily,
		["virtualGatewayId"] = _virtualGatewayId,
		["virtualInterfaceId"] = _virtualInterfaceId,
		["authKey"] = _authKey,
		["routeFilterPrefixes"] = _routeFilterPrefixes,
		["location"] = _location,
		["bgpPeers"] = _bgpPeers,
		["customerRouterConfig"] = _customerRouterConfig,
		["amazonAddress"] = _amazonAddress,
		["virtualInterfaceType"] = _virtualInterfaceType,
		["virtualInterfaceName"] = _virtualInterfaceName,
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
-- @param _virtualInterfaceId [VirtualInterfaceId] 
-- Required parameter: virtualInterfaceId
function M.DeleteVirtualInterfaceRequest(_virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVirtualInterfaceRequest")
	local t = { 
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _ownerAccount [OwnerAccount] <p>The numeric account ID of the customer for whom the connection will be provisioned.</p> <p>Example: 123443215678</p> <p>Default: None</p>
-- @param _connectionId [ConnectionId] <p>The ID of the interconnect or LAG on which the connection will be provisioned.</p> <p>Example: dxcon-456abc78 or dxlag-abc123</p> <p>Default: None</p>
-- @param _bandwidth [Bandwidth] <p>The bandwidth of the connection.</p> <p>Example: <code>500Mbps</code> </p> <p>Default: None</p> <p>Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps</p>
-- @param _vlan [VLAN] <p>The dedicated VLAN provisioned to the hosted connection.</p> <p>Example: 101</p> <p>Default: None</p>
-- @param _connectionName [ConnectionName] <p>The name of the provisioned connection.</p> <p>Example: "<code>500M Connection to AWS</code>"</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: ownerAccount
-- Required parameter: bandwidth
-- Required parameter: connectionName
-- Required parameter: vlan
function M.AllocateHostedConnectionRequest(_ownerAccount, _connectionId, _bandwidth, _vlan, _connectionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateHostedConnectionRequest")
	local t = { 
		["ownerAccount"] = _ownerAccount,
		["connectionId"] = _connectionId,
		["bandwidth"] = _bandwidth,
		["vlan"] = _vlan,
		["connectionName"] = _connectionName,
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
-- @param _bgpStatus [BGPStatus] 
-- @param _customerAddress [CustomerAddress] 
-- @param _addressFamily [AddressFamily] 
-- @param _authKey [BGPAuthKey] 
-- @param _bgpPeerState [BGPPeerState] 
-- @param _amazonAddress [AmazonAddress] 
-- @param _asn [ASN] 
function M.BGPPeer(_bgpStatus, _customerAddress, _addressFamily, _authKey, _bgpPeerState, _amazonAddress, _asn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BGPPeer")
	local t = { 
		["bgpStatus"] = _bgpStatus,
		["customerAddress"] = _customerAddress,
		["addressFamily"] = _addressFamily,
		["authKey"] = _authKey,
		["bgpPeerState"] = _bgpPeerState,
		["amazonAddress"] = _amazonAddress,
		["asn"] = _asn,
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
-- @param _newBGPPeer [NewBGPPeer] <p>Detailed information for the BGP peer to be created.</p> <p>Default: None</p>
-- @param _virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface on which the BGP peer will be provisioned.</p> <p>Example: dxvif-456abc78</p> <p>Default: None</p>
function M.CreateBGPPeerRequest(_newBGPPeer, _virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBGPPeerRequest")
	local t = { 
		["newBGPPeer"] = _newBGPPeer,
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _ownerAccount [OwnerAccount] <p>The AWS account that will own the new private virtual interface.</p> <p>Default: None</p>
-- @param _connectionId [ConnectionId] <p>The connection ID on which the private virtual interface is provisioned.</p> <p>Default: None</p>
-- @param _newPrivateVirtualInterfaceAllocation [NewPrivateVirtualInterfaceAllocation] <p>Detailed information for the private virtual interface to be provisioned.</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: ownerAccount
-- Required parameter: newPrivateVirtualInterfaceAllocation
function M.AllocatePrivateVirtualInterfaceRequest(_ownerAccount, _connectionId, _newPrivateVirtualInterfaceAllocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocatePrivateVirtualInterfaceRequest")
	local t = { 
		["ownerAccount"] = _ownerAccount,
		["connectionId"] = _connectionId,
		["newPrivateVirtualInterfaceAllocation"] = _newPrivateVirtualInterfaceAllocation,
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
-- @param _resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p>
-- @param _tagKeys [TagKeyList] <p>The list of tag keys to remove.</p>
-- Required parameter: resourceArn
-- Required parameter: tagKeys
function M.UntagResourceRequest(_resourceArn, _tagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
		["tagKeys"] = _tagKeys,
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
-- @param _interconnectId [InterconnectId] 
-- @param _providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- @param _loaContentType [LoaContentType] 
-- Required parameter: interconnectId
function M.DescribeInterconnectLoaRequest(_interconnectId, _providerName, _loaContentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInterconnectLoaRequest")
	local t = { 
		["interconnectId"] = _interconnectId,
		["providerName"] = _providerName,
		["loaContentType"] = _loaContentType,
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
-- @param _loaContentType [LoaContentType] 
-- @param _loaContent [LoaContent] 
function M.Loa(_loaContentType, _loaContent, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Loa")
	local t = { 
		["loaContentType"] = _loaContentType,
		["loaContent"] = _loaContent,
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
-- @param _interconnectId [InterconnectId] 
function M.DescribeInterconnectsRequest(_interconnectId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInterconnectsRequest")
	local t = { 
		["interconnectId"] = _interconnectId,
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
-- @param _connectionId [ConnectionId] <p>The ID of the LAG or connection with which to associate the virtual interface.</p> <p>Example: dxlag-abc123 or dxcon-abc123</p> <p>Default: None</p>
-- @param _virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface.</p> <p>Example: dxvif-123dfg56</p> <p>Default: None</p>
-- Required parameter: virtualInterfaceId
-- Required parameter: connectionId
function M.AssociateVirtualInterfaceRequest(_connectionId, _virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateVirtualInterfaceRequest")
	local t = { 
		["connectionId"] = _connectionId,
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _ownerAccount [OwnerAccount] <p>The AWS account that will own the new public virtual interface.</p> <p>Default: None</p>
-- @param _connectionId [ConnectionId] <p>The connection ID on which the public virtual interface is provisioned.</p> <p>Default: None</p>
-- @param _newPublicVirtualInterfaceAllocation [NewPublicVirtualInterfaceAllocation] <p>Detailed information for the public virtual interface to be provisioned.</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: ownerAccount
-- Required parameter: newPublicVirtualInterfaceAllocation
function M.AllocatePublicVirtualInterfaceRequest(_ownerAccount, _connectionId, _newPublicVirtualInterfaceAllocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocatePublicVirtualInterfaceRequest")
	local t = { 
		["ownerAccount"] = _ownerAccount,
		["connectionId"] = _connectionId,
		["newPublicVirtualInterfaceAllocation"] = _newPublicVirtualInterfaceAllocation,
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
-- @param _connectionId [ConnectionId] 
function M.DescribeConnectionsRequest(_connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConnectionsRequest")
	local t = { 
		["connectionId"] = _connectionId,
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
-- @param _virtualInterfaceState [VirtualInterfaceState] 
function M.ConfirmPublicVirtualInterfaceResponse(_virtualInterfaceState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPublicVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = _virtualInterfaceState,
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
-- @param _cidr [CIDR] <p>CIDR notation for the advertised route. Multiple routes are separated by commas.</p> <p>IPv6 CIDRs must be at least a /64 or shorter</p> <p>Example: 10.10.10.0/24,10.10.11.0/24,2001:db8::/64</p>
function M.RouteFilterPrefix(_cidr, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RouteFilterPrefix")
	local t = { 
		["cidr"] = _cidr,
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
-- @param _virtualGatewayId [VirtualGatewayId] 
-- @param _virtualGatewayState [VirtualGatewayState] 
function M.VirtualGateway(_virtualGatewayId, _virtualGatewayState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualGateway")
	local t = { 
		["virtualGatewayId"] = _virtualGatewayId,
		["virtualGatewayState"] = _virtualGatewayState,
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
-- @param _authKey [BGPAuthKey] 
-- @param _amazonAddress [AmazonAddress] 
-- @param _customerAddress [CustomerAddress] 
-- @param _asn [ASN] 
-- @param _addressFamily [AddressFamily] 
function M.NewBGPPeer(_authKey, _amazonAddress, _customerAddress, _asn, _addressFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewBGPPeer")
	local t = { 
		["authKey"] = _authKey,
		["amazonAddress"] = _amazonAddress,
		["customerAddress"] = _customerAddress,
		["asn"] = _asn,
		["addressFamily"] = _addressFamily,
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
-- @param _loaContentType [LoaContentType] <p>A standard media type indicating the content type of the LOA-CFA document. Currently, the only supported value is "application/pdf".</p> <p>Default: application/pdf</p>
-- @param _connectionId [ConnectionId] <p>The ID of a connection, LAG, or interconnect for which to get the LOA-CFA information.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- @param _providerName [ProviderName] <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p> <p>Default: None</p>
-- Required parameter: connectionId
function M.DescribeLoaRequest(_loaContentType, _connectionId, _providerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoaRequest")
	local t = { 
		["loaContentType"] = _loaContentType,
		["connectionId"] = _connectionId,
		["providerName"] = _providerName,
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
function M.UntagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceResponse")
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
-- @param _customerAddress [CustomerAddress] 
-- @param _asn [ASN] 
-- @param _virtualInterfaceId [VirtualInterfaceId] <p>The ID of the virtual interface from which the BGP peer will be deleted.</p> <p>Example: dxvif-456abc78</p> <p>Default: None</p>
function M.DeleteBGPPeerRequest(_customerAddress, _asn, _virtualInterfaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBGPPeerRequest")
	local t = { 
		["customerAddress"] = _customerAddress,
		["asn"] = _asn,
		["virtualInterfaceId"] = _virtualInterfaceId,
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
-- @param _partnerName [PartnerName] <p>The name of the AWS Direct Connect service provider associated with the connection.</p>
-- @param _awsDevice [AwsDevice] <p>The Direct Connection endpoint which the physical connection terminates on.</p>
-- @param _vlan [VLAN] 
-- @param _ownerAccount [OwnerAccount] <p>The AWS account that will own the new connection.</p>
-- @param _connectionId [ConnectionId] 
-- @param _lagId [LagId] 
-- @param _connectionState [ConnectionState] 
-- @param _bandwidth [Bandwidth] <p>Bandwidth of the connection.</p> <p>Example: 1Gbps (for regular connections), or 500Mbps (for hosted connections)</p> <p>Default: None</p>
-- @param _location [LocationCode] 
-- @param _connectionName [ConnectionName] 
-- @param _loaIssueTime [LoaIssueTime] <p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>
-- @param _region [Region] 
function M.Connection(_partnerName, _awsDevice, _vlan, _ownerAccount, _connectionId, _lagId, _connectionState, _bandwidth, _location, _connectionName, _loaIssueTime, _region, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connection")
	local t = { 
		["partnerName"] = _partnerName,
		["awsDevice"] = _awsDevice,
		["vlan"] = _vlan,
		["ownerAccount"] = _ownerAccount,
		["connectionId"] = _connectionId,
		["lagId"] = _lagId,
		["connectionState"] = _connectionState,
		["bandwidth"] = _bandwidth,
		["location"] = _location,
		["connectionName"] = _connectionName,
		["loaIssueTime"] = _loaIssueTime,
		["region"] = _region,
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
-- @param _customerAddress [CustomerAddress] 
-- @param _vlan [VLAN] 
-- @param _asn [ASN] 
-- @param _authKey [BGPAuthKey] 
-- @param _amazonAddress [AmazonAddress] 
-- @param _addressFamily [AddressFamily] 
-- @param _virtualInterfaceName [VirtualInterfaceName] 
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
function M.NewPrivateVirtualInterfaceAllocation(_customerAddress, _vlan, _asn, _authKey, _amazonAddress, _addressFamily, _virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPrivateVirtualInterfaceAllocation")
	local t = { 
		["customerAddress"] = _customerAddress,
		["vlan"] = _vlan,
		["asn"] = _asn,
		["authKey"] = _authKey,
		["amazonAddress"] = _amazonAddress,
		["addressFamily"] = _addressFamily,
		["virtualInterfaceName"] = _virtualInterfaceName,
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
-- @param _connectionId [ConnectionId] 
-- Required parameter: connectionId
function M.DeleteConnectionRequest(_connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConnectionRequest")
	local t = { 
		["connectionId"] = _connectionId,
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
-- @param _resourceArns [ResourceArnList] <p>The Amazon Resource Names (ARNs) of the Direct Connect resources.</p>
-- Required parameter: resourceArns
function M.DescribeTagsRequest(_resourceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["resourceArns"] = _resourceArns,
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
-- @param _customerAddress [CustomerAddress] 
-- @param _vlan [VLAN] 
-- @param _addressFamily [AddressFamily] 
-- @param _authKey [BGPAuthKey] 
-- @param _routeFilterPrefixes [RouteFilterPrefixList] 
-- @param _amazonAddress [AmazonAddress] 
-- @param _asn [ASN] 
-- @param _virtualInterfaceName [VirtualInterfaceName] 
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
function M.NewPublicVirtualInterface(_customerAddress, _vlan, _addressFamily, _authKey, _routeFilterPrefixes, _amazonAddress, _asn, _virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPublicVirtualInterface")
	local t = { 
		["customerAddress"] = _customerAddress,
		["vlan"] = _vlan,
		["addressFamily"] = _addressFamily,
		["authKey"] = _authKey,
		["routeFilterPrefixes"] = _routeFilterPrefixes,
		["amazonAddress"] = _amazonAddress,
		["asn"] = _asn,
		["virtualInterfaceName"] = _virtualInterfaceName,
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
-- @param _locations [LocationList] <p>A list of colocation hubs where network providers have equipment. Most regions have multiple locations available.</p>
function M.Locations(_locations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Locations")
	local t = { 
		["locations"] = _locations,
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
-- @param _interconnectId [InterconnectId] <p>ID of the interconnect on which the connection will be provisioned.</p> <p>Example: dxcon-456abc78</p> <p>Default: None</p>
-- @param _bandwidth [Bandwidth] <p>Bandwidth of the connection.</p> <p>Example: "<i>500Mbps</i>"</p> <p>Default: None</p> <p>Values: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps</p>
-- @param _vlan [VLAN] <p>The dedicated VLAN provisioned to the connection.</p> <p>Example: 101</p> <p>Default: None</p>
-- @param _ownerAccount [OwnerAccount] <p>Numeric account Id of the customer for whom the connection will be provisioned.</p> <p>Example: 123443215678</p> <p>Default: None</p>
-- @param _connectionName [ConnectionName] <p>Name of the provisioned connection.</p> <p>Example: "<i>500M Connection to AWS</i>"</p> <p>Default: None</p>
-- Required parameter: bandwidth
-- Required parameter: connectionName
-- Required parameter: ownerAccount
-- Required parameter: interconnectId
-- Required parameter: vlan
function M.AllocateConnectionOnInterconnectRequest(_interconnectId, _bandwidth, _vlan, _ownerAccount, _connectionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllocateConnectionOnInterconnectRequest")
	local t = { 
		["interconnectId"] = _interconnectId,
		["bandwidth"] = _bandwidth,
		["vlan"] = _vlan,
		["ownerAccount"] = _ownerAccount,
		["connectionName"] = _connectionName,
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
-- @param _resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p>
-- @param _tags [TagList] <p>The tags.</p>
function M.ResourceTag(_resourceArn, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTag")
	local t = { 
		["resourceArn"] = _resourceArn,
		["tags"] = _tags,
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
-- @param _lagId [LagId] <p>The ID of the LAG to update.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- @param _minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p> <p>Default: None</p>
-- @param _lagName [LagName] <p>The name for the LAG.</p> <p>Example: "<code>3x10G LAG to AWS</code>"</p> <p>Default: None</p>
-- Required parameter: lagId
function M.UpdateLagRequest(_lagId, _minimumLinks, _lagName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLagRequest")
	local t = { 
		["lagId"] = _lagId,
		["minimumLinks"] = _minimumLinks,
		["lagName"] = _lagName,
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
-- @param _newPublicVirtualInterface [NewPublicVirtualInterface] <p>Detailed information for the public virtual interface to be created.</p> <p>Default: None</p>
-- @param _connectionId [ConnectionId] 
-- Required parameter: connectionId
-- Required parameter: newPublicVirtualInterface
function M.CreatePublicVirtualInterfaceRequest(_newPublicVirtualInterface, _connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePublicVirtualInterfaceRequest")
	local t = { 
		["newPublicVirtualInterface"] = _newPublicVirtualInterface,
		["connectionId"] = _connectionId,
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
-- @param _resourceTags [ResourceTagList] <p>Information about the tags.</p>
function M.DescribeTagsResponse(_resourceTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResponse")
	local t = { 
		["resourceTags"] = _resourceTags,
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
function M.TooManyTagsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTagsException")
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
-- @param _virtualInterface [VirtualInterface] 
function M.CreateBGPPeerResponse(_virtualInterface, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBGPPeerResponse")
	local t = { 
		["virtualInterface"] = _virtualInterface,
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
function M.TagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceResponse")
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
-- @param _virtualInterfaceState [VirtualInterfaceState] 
function M.DeleteVirtualInterfaceResponse(_virtualInterfaceState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = _virtualInterfaceState,
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
-- @param _customerAddress [CustomerAddress] 
-- @param _vlan [VLAN] 
-- @param _addressFamily [AddressFamily] 
-- @param _authKey [BGPAuthKey] 
-- @param _routeFilterPrefixes [RouteFilterPrefixList] 
-- @param _amazonAddress [AmazonAddress] 
-- @param _asn [ASN] 
-- @param _virtualInterfaceName [VirtualInterfaceName] 
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
function M.NewPublicVirtualInterfaceAllocation(_customerAddress, _vlan, _addressFamily, _authKey, _routeFilterPrefixes, _amazonAddress, _asn, _virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPublicVirtualInterfaceAllocation")
	local t = { 
		["customerAddress"] = _customerAddress,
		["vlan"] = _vlan,
		["addressFamily"] = _addressFamily,
		["authKey"] = _authKey,
		["routeFilterPrefixes"] = _routeFilterPrefixes,
		["amazonAddress"] = _amazonAddress,
		["asn"] = _asn,
		["virtualInterfaceName"] = _virtualInterfaceName,
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
-- @param _awsDevice [AwsDevice] <p>The AWS Direct Connection endpoint that hosts the LAG.</p>
-- @param _allowsHostedConnections [BooleanFlag] <p>Indicates whether the LAG can host other connections.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>
-- @param _numberOfConnections [Count] <p>The number of physical connections bundled by the LAG, up to a maximum of 10.</p>
-- @param _lagState [LagState] 
-- @param _ownerAccount [OwnerAccount] <p>The owner of the LAG.</p>
-- @param _lagName [LagName] <p>The name of the LAG.</p>
-- @param _connections [ConnectionList] <p>A list of connections bundled by this LAG.</p>
-- @param _lagId [LagId] 
-- @param _minimumLinks [Count] <p>The minimum number of physical connections that must be operational for the LAG itself to be operational. If the number of operational connections drops below this setting, the LAG state changes to <code>down</code>. This value can help to ensure that a LAG is not overutilized if a significant number of its bundled connections go down.</p>
-- @param _connectionsBandwidth [Bandwidth] <p>The individual bandwidth of the physical connections bundled by the LAG.</p> <p>Available values: 1Gbps, 10Gbps</p>
-- @param _region [Region] 
-- @param _location [LocationCode] 
function M.Lag(_awsDevice, _allowsHostedConnections, _numberOfConnections, _lagState, _ownerAccount, _lagName, _connections, _lagId, _minimumLinks, _connectionsBandwidth, _region, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Lag")
	local t = { 
		["awsDevice"] = _awsDevice,
		["allowsHostedConnections"] = _allowsHostedConnections,
		["numberOfConnections"] = _numberOfConnections,
		["lagState"] = _lagState,
		["ownerAccount"] = _ownerAccount,
		["lagName"] = _lagName,
		["connections"] = _connections,
		["lagId"] = _lagId,
		["minimumLinks"] = _minimumLinks,
		["connectionsBandwidth"] = _connectionsBandwidth,
		["region"] = _region,
		["location"] = _location,
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
-- @param _virtualInterfaceState [VirtualInterfaceState] 
function M.ConfirmPrivateVirtualInterfaceResponse(_virtualInterfaceState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmPrivateVirtualInterfaceResponse")
	local t = { 
		["virtualInterfaceState"] = _virtualInterfaceState,
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
-- @param _connectionId [ConnectionId] <p>The ID of the hosted connection.</p> <p>Example: dxcon-abc123</p> <p>Default: None</p>
-- @param _parentConnectionId [ConnectionId] <p>The ID of the interconnect or the LAG.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: parentConnectionId
function M.AssociateHostedConnectionRequest(_connectionId, _parentConnectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateHostedConnectionRequest")
	local t = { 
		["connectionId"] = _connectionId,
		["parentConnectionId"] = _parentConnectionId,
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
-- @param _interconnectName [InterconnectName] <p>The name of the interconnect.</p> <p>Example: "<i>1G Interconnect to AWS</i>"</p> <p>Default: None</p>
-- @param _bandwidth [Bandwidth] <p>The port bandwidth</p> <p>Example: 1Gbps</p> <p>Default: None</p> <p>Available values: 1Gbps,10Gbps</p>
-- @param _lagId [LagId] 
-- @param _location [LocationCode] <p>Where the interconnect is located</p> <p>Example: EqSV5</p> <p>Default: None</p>
-- Required parameter: interconnectName
-- Required parameter: bandwidth
-- Required parameter: location
function M.CreateInterconnectRequest(_interconnectName, _bandwidth, _lagId, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInterconnectRequest")
	local t = { 
		["interconnectName"] = _interconnectName,
		["bandwidth"] = _bandwidth,
		["lagId"] = _lagId,
		["location"] = _location,
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
-- @param _message [ErrorMessage] <p>This is an exception thrown when there is an issue with the input provided by the API call. For example, the name provided for a connection contains a pound sign (#). This can also occur when a valid value is provided, but is otherwise constrained. For example, the valid VLAN tag range is 1-4096 but each can only be used once per connection.</p>
function M.DirectConnectClientException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectConnectClientException")
	local t = { 
		["message"] = _message,
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
-- @param _virtualGateways [VirtualGatewayList] <p>A list of virtual private gateways.</p>
function M.VirtualGateways(_virtualGateways, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualGateways")
	local t = { 
		["virtualGateways"] = _virtualGateways,
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
-- @param _lagId [LagId] 
-- @param _bandwidth [Bandwidth] 
-- @param _location [LocationCode] 
-- @param _connectionName [ConnectionName] 
-- Required parameter: location
-- Required parameter: bandwidth
-- Required parameter: connectionName
function M.CreateConnectionRequest(_lagId, _bandwidth, _location, _connectionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConnectionRequest")
	local t = { 
		["lagId"] = _lagId,
		["bandwidth"] = _bandwidth,
		["location"] = _location,
		["connectionName"] = _connectionName,
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
-- @param _virtualGatewayId [VirtualGatewayId] 
-- @param _customerAddress [CustomerAddress] 
-- @param _vlan [VLAN] 
-- @param _addressFamily [AddressFamily] 
-- @param _authKey [BGPAuthKey] 
-- @param _amazonAddress [AmazonAddress] 
-- @param _asn [ASN] 
-- @param _virtualInterfaceName [VirtualInterfaceName] 
-- Required parameter: virtualInterfaceName
-- Required parameter: vlan
-- Required parameter: asn
-- Required parameter: virtualGatewayId
function M.NewPrivateVirtualInterface(_virtualGatewayId, _customerAddress, _vlan, _addressFamily, _authKey, _amazonAddress, _asn, _virtualInterfaceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewPrivateVirtualInterface")
	local t = { 
		["virtualGatewayId"] = _virtualGatewayId,
		["customerAddress"] = _customerAddress,
		["vlan"] = _vlan,
		["addressFamily"] = _addressFamily,
		["authKey"] = _authKey,
		["amazonAddress"] = _amazonAddress,
		["asn"] = _asn,
		["virtualInterfaceName"] = _virtualInterfaceName,
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
-- @param _message [ErrorMessage] <p>This is an exception thrown when there is a backend issue on the server side.</p>
function M.DirectConnectServerException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectConnectServerException")
	local t = { 
		["message"] = _message,
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
-- @param _virtualInterfaces [VirtualInterfaceList] <p>A list of virtual interfaces.</p>
function M.VirtualInterfaces(_virtualInterfaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualInterfaces")
	local t = { 
		["virtualInterfaces"] = _virtualInterfaces,
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
-- @param _resourceArn [ResourceArn] <p>The Amazon Resource Name (ARN) of the Direct Connect resource.</p> <p>Example: arn:aws:directconnect:us-east-1:123456789012:dxcon/dxcon-fg5678gh</p>
-- @param _tags [TagList] <p>The list of tags to add.</p>
-- Required parameter: resourceArn
-- Required parameter: tags
function M.TagResourceRequest(_resourceArn, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
		["tags"] = _tags,
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
-- @param _lagId [LagId] <p>The ID of the LAG to delete.</p> <p>Example: dxlag-abc123</p> <p>Default: None</p>
-- Required parameter: lagId
function M.DeleteLagRequest(_lagId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLagRequest")
	local t = { 
		["lagId"] = _lagId,
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
-- @param _connectionId [ConnectionId] <p>The ID of the interconnect or LAG on which the hosted connections are provisioned.</p> <p>Example: dxcon-abc123 or dxlag-abc123</p> <p>Default: None</p>
-- Required parameter: connectionId
function M.DescribeHostedConnectionsRequest(_connectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHostedConnectionsRequest")
	local t = { 
		["connectionId"] = _connectionId,
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
-- @param _connectionState [ConnectionState] 
function M.ConfirmConnectionResponse(_connectionState, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmConnectionResponse")
	local t = { 
		["connectionState"] = _connectionState,
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
-- @param _connectionId [ConnectionId] 
-- @param _newPrivateVirtualInterface [NewPrivateVirtualInterface] <p>Detailed information for the private virtual interface to be created.</p> <p>Default: None</p>
-- Required parameter: connectionId
-- Required parameter: newPrivateVirtualInterface
function M.CreatePrivateVirtualInterfaceRequest(_connectionId, _newPrivateVirtualInterface, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePrivateVirtualInterfaceRequest")
	local t = { 
		["connectionId"] = _connectionId,
		["newPrivateVirtualInterface"] = _newPrivateVirtualInterface,
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
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVirtualGatewaysAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeVirtualGateways",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLocationsAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OvertureService.DescribeLocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
