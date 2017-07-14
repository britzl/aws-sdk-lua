--- GENERATED CODE - DO NOT MODIFY
-- AWS OpsWorks for Chef Automate (opsworkscm-2016-11-01)

local M = {}

M.metadata = {
	api_version = "2016-11-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "opsworks-cm",
	service_abbreviation = "OpsWorksCM",
	service_full_name = "AWS OpsWorks for Chef Automate",
	signature_version = "v4",
	target_prefix = "OpsWorksCM_V2016_11_01",
	timestamp_format = "",
	global_endpoint = "",
	uid = "opsworkscm-2016-11-01",
}

local LimitExceededException_keys = { "Message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The limit of servers or backups has been reached. </p>
-- @param Message [String] <p>Error or informational message that the maximum allowed number of servers or backups has been exceeded. </p>
function M.LimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local UpdateServerEngineAttributesResponse_keys = { "Server" = true, nil }

function M.AssertUpdateServerEngineAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerEngineAttributesResponse to be of type 'table'")
	if struct["Server"] then M.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServerEngineAttributesResponse_keys[k], "UpdateServerEngineAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerEngineAttributesResponse
--  
-- @param Server [Server] <p>Contains the response to an <code>UpdateServerEngineAttributes</code> request. </p>
function M.UpdateServerEngineAttributesResponse(Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerEngineAttributesResponse")
	local t = { 
		["Server"] = Server,
	}
	M.AssertUpdateServerEngineAttributesResponse(t)
	return t
end

local ValidationException_keys = { "Message" = true, nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>One or more of the provided request parameters are not valid. </p>
-- @param Message [String] <p>Error or informational message that can contain more detail about a validation failure. </p>
function M.ValidationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertValidationException(t)
	return t
end

local CreateBackupRequest_keys = { "ServerName" = true, "Description" = true, nil }

function M.AssertCreateBackupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBackupRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateBackupRequest_keys[k], "CreateBackupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBackupRequest
--  
-- @param ServerName [ServerName] <p>The name of the server that you want to back up. </p>
-- @param Description [String] <p> A user-defined description of the backup. </p>
-- Required parameter: ServerName
function M.CreateBackupRequest(ServerName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBackupRequest")
	local t = { 
		["ServerName"] = ServerName,
		["Description"] = Description,
	}
	M.AssertCreateBackupRequest(t)
	return t
end

local DescribeAccountAttributesResponse_keys = { "Attributes" = true, nil }

function M.AssertDescribeAccountAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertAccountAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountAttributesResponse_keys[k], "DescribeAccountAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesResponse
--  
-- @param Attributes [AccountAttributes] <p> The attributes that are currently set for the account. </p>
function M.DescribeAccountAttributesResponse(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertDescribeAccountAttributesResponse(t)
	return t
end

local DeleteServerRequest_keys = { "ServerName" = true, nil }

function M.AssertDeleteServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteServerRequest_keys[k], "DeleteServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerRequest
--  
-- @param ServerName [ServerName] <p>The ID of the server to delete.</p>
-- Required parameter: ServerName
function M.DeleteServerRequest(ServerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerRequest")
	local t = { 
		["ServerName"] = ServerName,
	}
	M.AssertDeleteServerRequest(t)
	return t
end

local StartMaintenanceResponse_keys = { "Server" = true, nil }

function M.AssertStartMaintenanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMaintenanceResponse to be of type 'table'")
	if struct["Server"] then M.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(StartMaintenanceResponse_keys[k], "StartMaintenanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMaintenanceResponse
--  
-- @param Server [Server] <p>Contains the response to a <code>StartMaintenance</code> request. </p>
function M.StartMaintenanceResponse(Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartMaintenanceResponse")
	local t = { 
		["Server"] = Server,
	}
	M.AssertStartMaintenanceResponse(t)
	return t
end

local AccountAttribute_keys = { "Used" = true, "Name" = true, "Maximum" = true, nil }

function M.AssertAccountAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountAttribute to be of type 'table'")
	if struct["Used"] then M.AssertInteger(struct["Used"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Maximum"] then M.AssertInteger(struct["Maximum"]) end
	for k,_ in pairs(struct) do
		assert(AccountAttribute_keys[k], "AccountAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountAttribute
-- <p>Stores account attributes. </p>
-- @param Used [Integer] <p> The current usage, such as the current number of servers that are associated with the account. </p>
-- @param Name [String] <p> The attribute name. The following are supported attribute names. </p> <ul> <li> <p> <i>ServerLimit:</i> The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers. </p> </li> <li> <p> <i>ManualBackupLimit:</i> The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum of 50 manual backups saved. </p> </li> </ul>
-- @param Maximum [Integer] <p> The maximum allowed value. </p>
function M.AccountAttribute(Used, Name, Maximum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountAttribute")
	local t = { 
		["Used"] = Used,
		["Name"] = Name,
		["Maximum"] = Maximum,
	}
	M.AssertAccountAttribute(t)
	return t
end

local CreateServerResponse_keys = { "Server" = true, nil }

function M.AssertCreateServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServerResponse to be of type 'table'")
	if struct["Server"] then M.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(CreateServerResponse_keys[k], "CreateServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServerResponse
--  
-- @param Server [Server] <p>The server that is created by the request. </p>
function M.CreateServerResponse(Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServerResponse")
	local t = { 
		["Server"] = Server,
	}
	M.AssertCreateServerResponse(t)
	return t
end

local InvalidNextTokenException_keys = { "Message" = true, nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>This occurs when the provided nextToken is not valid. </p>
-- @param Message [String] <p>Error or informational message that can contain more detail about a nextToken failure. </p>
function M.InvalidNextTokenException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local DisassociateNodeRequest_keys = { "ServerName" = true, "NodeName" = true, "EngineAttributes" = true, nil }

function M.AssertDisassociateNodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateNodeRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["NodeName"], "Expected key NodeName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["NodeName"] then M.AssertNodeName(struct["NodeName"]) end
	if struct["EngineAttributes"] then M.AssertEngineAttributes(struct["EngineAttributes"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateNodeRequest_keys[k], "DisassociateNodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateNodeRequest
--  
-- @param ServerName [ServerName] <p>The name of the server from which to disassociate the node. </p>
-- @param NodeName [NodeName] <p>The name of the Chef client node. </p>
-- @param EngineAttributes [EngineAttributes] <p>Engine attributes used for disassociating the node. </p> <p class="title"> <b>Attributes accepted in a DisassociateNode request:</b> </p> <ul> <li> <p> <code>CHEF_ORGANIZATION</code>: The Chef organization with which the node was associated. By default only one organization named <code>default</code> can exist. </p> </li> </ul>
-- Required parameter: ServerName
-- Required parameter: NodeName
function M.DisassociateNodeRequest(ServerName, NodeName, EngineAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateNodeRequest")
	local t = { 
		["ServerName"] = ServerName,
		["NodeName"] = NodeName,
		["EngineAttributes"] = EngineAttributes,
	}
	M.AssertDisassociateNodeRequest(t)
	return t
end

local DescribeEventsResponse_keys = { "NextToken" = true, "ServerEvents" = true, nil }

function M.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ServerEvents"] then M.AssertServerEvents(struct["ServerEvents"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsResponse_keys[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
--  
-- @param NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param ServerEvents [ServerEvents] <p>Contains the response to a <code>DescribeEvents</code> request. </p>
function M.DescribeEventsResponse(NextToken, ServerEvents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["ServerEvents"] = ServerEvents,
	}
	M.AssertDescribeEventsResponse(t)
	return t
end

local EngineAttribute_keys = { "Name" = true, "Value" = true, nil }

function M.AssertEngineAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineAttribute to be of type 'table'")
	if struct["Name"] then M.AssertEngineAttributeName(struct["Name"]) end
	if struct["Value"] then M.AssertEngineAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(EngineAttribute_keys[k], "EngineAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineAttribute
-- <p>A name and value pair that is specific to the engine of the server. </p>
-- @param Name [EngineAttributeName] <p>The name of the engine attribute. </p>
-- @param Value [EngineAttributeValue] <p>The value of the engine attribute. </p>
function M.EngineAttribute(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EngineAttribute")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertEngineAttribute(t)
	return t
end

local DeleteServerResponse_keys = { nil }

function M.AssertDeleteServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteServerResponse_keys[k], "DeleteServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerResponse
--  
function M.DeleteServerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerResponse")
	local t = { 
	}
	M.AssertDeleteServerResponse(t)
	return t
end

local UpdateServerResponse_keys = { "Server" = true, nil }

function M.AssertUpdateServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerResponse to be of type 'table'")
	if struct["Server"] then M.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServerResponse_keys[k], "UpdateServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerResponse
--  
-- @param Server [Server] <p>Contains the response to a <code>UpdateServer</code> request. </p>
function M.UpdateServerResponse(Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerResponse")
	local t = { 
		["Server"] = Server,
	}
	M.AssertUpdateServerResponse(t)
	return t
end

local RestoreServerRequest_keys = { "KeyPair" = true, "BackupId" = true, "ServerName" = true, "InstanceType" = true, nil }

function M.AssertRestoreServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreServerRequest to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["KeyPair"] then M.AssertKeyPair(struct["KeyPair"]) end
	if struct["BackupId"] then M.AssertBackupId(struct["BackupId"]) end
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(RestoreServerRequest_keys[k], "RestoreServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreServerRequest
--  
-- @param KeyPair [KeyPair] <p> The name of the key pair to set on the new EC2 instance. This can be helpful if the administrator no longer has the SSH key. </p>
-- @param BackupId [BackupId] <p> The ID of the backup that you want to use to restore a server. </p>
-- @param ServerName [ServerName] <p> The name of the server that you want to restore. </p>
-- @param InstanceType [String] <p> The type of the instance to create. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code> For example, <code>m4.large</code>. Valid values are <code>t2.medium</code>, <code>m4.large</code>, and <code>m4.2xlarge</code>. If you do not specify this parameter, RestoreServer uses the instance type from the specified backup. </p>
-- Required parameter: BackupId
-- Required parameter: ServerName
function M.RestoreServerRequest(KeyPair, BackupId, ServerName, InstanceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreServerRequest")
	local t = { 
		["KeyPair"] = KeyPair,
		["BackupId"] = BackupId,
		["ServerName"] = ServerName,
		["InstanceType"] = InstanceType,
	}
	M.AssertRestoreServerRequest(t)
	return t
end

local UpdateServerRequest_keys = { "PreferredBackupWindow" = true, "ServerName" = true, "BackupRetentionCount" = true, "DisableAutomatedBackup" = true, "PreferredMaintenanceWindow" = true, nil }

function M.AssertUpdateServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["PreferredBackupWindow"] then M.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["BackupRetentionCount"] then M.AssertInteger(struct["BackupRetentionCount"]) end
	if struct["DisableAutomatedBackup"] then M.AssertBoolean(struct["DisableAutomatedBackup"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServerRequest_keys[k], "UpdateServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerRequest
--  
-- @param PreferredBackupWindow [TimeWindowDefinition]  
-- @param ServerName [ServerName] <p>The name of the server to update. </p>
-- @param BackupRetentionCount [Integer] <p>Sets the number of automated backups that you want to keep. </p>
-- @param DisableAutomatedBackup [Boolean] <p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. Automated backups are enabled by default. </p>
-- @param PreferredMaintenanceWindow [TimeWindowDefinition]  
-- Required parameter: ServerName
function M.UpdateServerRequest(PreferredBackupWindow, ServerName, BackupRetentionCount, DisableAutomatedBackup, PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerRequest")
	local t = { 
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["ServerName"] = ServerName,
		["BackupRetentionCount"] = BackupRetentionCount,
		["DisableAutomatedBackup"] = DisableAutomatedBackup,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
	}
	M.AssertUpdateServerRequest(t)
	return t
end

local RestoreServerResponse_keys = { nil }

function M.AssertRestoreServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreServerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RestoreServerResponse_keys[k], "RestoreServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreServerResponse
--  
function M.RestoreServerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreServerResponse")
	local t = { 
	}
	M.AssertRestoreServerResponse(t)
	return t
end

local DeleteBackupResponse_keys = { nil }

function M.AssertDeleteBackupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteBackupResponse_keys[k], "DeleteBackupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupResponse
--  
function M.DeleteBackupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBackupResponse")
	local t = { 
	}
	M.AssertDeleteBackupResponse(t)
	return t
end

local CreateBackupResponse_keys = { "Backup" = true, nil }

function M.AssertCreateBackupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBackupResponse to be of type 'table'")
	if struct["Backup"] then M.AssertBackup(struct["Backup"]) end
	for k,_ in pairs(struct) do
		assert(CreateBackupResponse_keys[k], "CreateBackupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBackupResponse
--  
-- @param Backup [Backup] <p>Backup created by request.</p>
function M.CreateBackupResponse(Backup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBackupResponse")
	local t = { 
		["Backup"] = Backup,
	}
	M.AssertCreateBackupResponse(t)
	return t
end

local ResourceNotFoundException_keys = { "Message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The requested resource does not exist, or access was denied. </p>
-- @param Message [String] <p>Error or informational message that can contain more detail about problems locating or accessing a resource. </p>
function M.ResourceNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local DescribeAccountAttributesRequest_keys = { nil }

function M.AssertDescribeAccountAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeAccountAttributesRequest_keys[k], "DescribeAccountAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesRequest
--  
function M.DescribeAccountAttributesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesRequest")
	local t = { 
	}
	M.AssertDescribeAccountAttributesRequest(t)
	return t
end

local DisassociateNodeResponse_keys = { "NodeAssociationStatusToken" = true, nil }

function M.AssertDisassociateNodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateNodeResponse to be of type 'table'")
	if struct["NodeAssociationStatusToken"] then M.AssertNodeAssociationStatusToken(struct["NodeAssociationStatusToken"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateNodeResponse_keys[k], "DisassociateNodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateNodeResponse
--  
-- @param NodeAssociationStatusToken [NodeAssociationStatusToken] <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the disassociation request. </p>
function M.DisassociateNodeResponse(NodeAssociationStatusToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateNodeResponse")
	local t = { 
		["NodeAssociationStatusToken"] = NodeAssociationStatusToken,
	}
	M.AssertDisassociateNodeResponse(t)
	return t
end

local DescribeServersResponse_keys = { "NextToken" = true, "Servers" = true, nil }

function M.AssertDescribeServersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServersResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Servers"] then M.AssertServers(struct["Servers"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServersResponse_keys[k], "DescribeServersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServersResponse
--  
-- @param NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeServers</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param Servers [Servers] <p>Contains the response to a <code>DescribeServers</code> request. </p>
function M.DescribeServersResponse(NextToken, Servers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServersResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Servers"] = Servers,
	}
	M.AssertDescribeServersResponse(t)
	return t
end

local DescribeServersRequest_keys = { "ServerName" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeServersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServersRequest to be of type 'table'")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServersRequest_keys[k], "DescribeServersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServersRequest
--  
-- @param ServerName [ServerName] <p>Describes the server with the specified ServerName.</p>
-- @param NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeServers</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
function M.DescribeServersRequest(ServerName, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServersRequest")
	local t = { 
		["ServerName"] = ServerName,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeServersRequest(t)
	return t
end

local Server_keys = { "MaintenanceStatus" = true, "ServerArn" = true, "EngineAttributes" = true, "EngineModel" = true, "Engine" = true, "CloudFormationStackArn" = true, "DisableAutomatedBackup" = true, "BackupRetentionCount" = true, "StatusReason" = true, "PreferredBackupWindow" = true, "InstanceProfileArn" = true, "InstanceType" = true, "PreferredMaintenanceWindow" = true, "Status" = true, "Endpoint" = true, "ServerName" = true, "SecurityGroupIds" = true, "KeyPair" = true, "EngineVersion" = true, "AssociatePublicIpAddress" = true, "SubnetIds" = true, "CreatedAt" = true, "ServiceRoleArn" = true, nil }

function M.AssertServer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Server to be of type 'table'")
	if struct["MaintenanceStatus"] then M.AssertMaintenanceStatus(struct["MaintenanceStatus"]) end
	if struct["ServerArn"] then M.AssertString(struct["ServerArn"]) end
	if struct["EngineAttributes"] then M.AssertEngineAttributes(struct["EngineAttributes"]) end
	if struct["EngineModel"] then M.AssertString(struct["EngineModel"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["CloudFormationStackArn"] then M.AssertString(struct["CloudFormationStackArn"]) end
	if struct["DisableAutomatedBackup"] then M.AssertBoolean(struct["DisableAutomatedBackup"]) end
	if struct["BackupRetentionCount"] then M.AssertInteger(struct["BackupRetentionCount"]) end
	if struct["StatusReason"] then M.AssertString(struct["StatusReason"]) end
	if struct["PreferredBackupWindow"] then M.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["InstanceProfileArn"] then M.AssertString(struct["InstanceProfileArn"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	if struct["Status"] then M.AssertServerStatus(struct["Status"]) end
	if struct["Endpoint"] then M.AssertString(struct["Endpoint"]) end
	if struct["ServerName"] then M.AssertString(struct["ServerName"]) end
	if struct["SecurityGroupIds"] then M.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["KeyPair"] then M.AssertString(struct["KeyPair"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["AssociatePublicIpAddress"] then M.AssertBoolean(struct["AssociatePublicIpAddress"]) end
	if struct["SubnetIds"] then M.AssertStrings(struct["SubnetIds"]) end
	if struct["CreatedAt"] then M.AssertTimestamp(struct["CreatedAt"]) end
	if struct["ServiceRoleArn"] then M.AssertString(struct["ServiceRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(Server_keys[k], "Server contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Server
-- <p>Describes a configuration management server. </p>
-- @param MaintenanceStatus [MaintenanceStatus] <p>The status of the most recent server maintenance run. Shows <code>SUCCESS</code> or <code>FAILED</code>. </p>
-- @param ServerArn [String] <p>The ARN of the server. </p>
-- @param EngineAttributes [EngineAttributes] <p>The response of a createServer() request returns the master credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks for Chef Automate; they are returned only as part of the result of createServer(). </p> <p class="title"> <b>Attributes returned in a createServer response:</b> </p> <ul> <li> <p> <code>CHEF_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.</p> </li> <li> <p> <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands.</p> </li> </ul>
-- @param EngineModel [String] <p>The engine model of the server. The valid value in this release is <code>Single</code>. </p>
-- @param Engine [String] <p>The engine type of the server. The valid value in this release is <code>Chef</code>. </p>
-- @param CloudFormationStackArn [String] <p>The ARN of the CloudFormation stack that was used to create the server. </p>
-- @param DisableAutomatedBackup [Boolean] <p>Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount. </p>
-- @param BackupRetentionCount [Integer] <p>The number of automated backups to keep. </p>
-- @param StatusReason [String] <p> Depending on the server status, this field has either a human-readable message (such as a create or backup error), or an escaped block of JSON (used for health check results). </p>
-- @param PreferredBackupWindow [TimeWindowDefinition] <p>The preferred backup period specified for the server. </p>
-- @param InstanceProfileArn [String] <p>The instance profile ARN of the server. </p>
-- @param InstanceType [String] <p> The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console. </p>
-- @param PreferredMaintenanceWindow [TimeWindowDefinition] <p>The preferred maintenance period specified for the server. </p>
-- @param Status [ServerStatus] <p> The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server, as well as the server's health state. </p>
-- @param Endpoint [String] <p> A DNS name that can be used to access the engine. Example: <code>myserver-asdfghjkl.us-east-1.opsworks.io</code> </p>
-- @param ServerName [String] <p>The name of the server. </p>
-- @param SecurityGroupIds [Strings] <p> The security group IDs for the server, as specified in the CloudFormation stack. These might not be the same security groups that are shown in the EC2 console. </p>
-- @param KeyPair [String] <p>The key pair associated with the server. </p>
-- @param EngineVersion [String] <p>The engine version of the server. Because Chef is the engine available in this release, the valid value for EngineVersion is <code>12</code>. </p>
-- @param AssociatePublicIpAddress [Boolean] <p>Associate a public IP address with a server that you are launching. </p>
-- @param SubnetIds [Strings] <p> The subnet IDs specified in a CreateServer request. </p>
-- @param CreatedAt [Timestamp] <p>Time stamp of server creation. Example <code>2016-07-29T13:38:47.520Z</code> </p>
-- @param ServiceRoleArn [String] <p>The service role ARN used to create the server. </p>
function M.Server(MaintenanceStatus, ServerArn, EngineAttributes, EngineModel, Engine, CloudFormationStackArn, DisableAutomatedBackup, BackupRetentionCount, StatusReason, PreferredBackupWindow, InstanceProfileArn, InstanceType, PreferredMaintenanceWindow, Status, Endpoint, ServerName, SecurityGroupIds, KeyPair, EngineVersion, AssociatePublicIpAddress, SubnetIds, CreatedAt, ServiceRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Server")
	local t = { 
		["MaintenanceStatus"] = MaintenanceStatus,
		["ServerArn"] = ServerArn,
		["EngineAttributes"] = EngineAttributes,
		["EngineModel"] = EngineModel,
		["Engine"] = Engine,
		["CloudFormationStackArn"] = CloudFormationStackArn,
		["DisableAutomatedBackup"] = DisableAutomatedBackup,
		["BackupRetentionCount"] = BackupRetentionCount,
		["StatusReason"] = StatusReason,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["InstanceProfileArn"] = InstanceProfileArn,
		["InstanceType"] = InstanceType,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["Status"] = Status,
		["Endpoint"] = Endpoint,
		["ServerName"] = ServerName,
		["SecurityGroupIds"] = SecurityGroupIds,
		["KeyPair"] = KeyPair,
		["EngineVersion"] = EngineVersion,
		["AssociatePublicIpAddress"] = AssociatePublicIpAddress,
		["SubnetIds"] = SubnetIds,
		["CreatedAt"] = CreatedAt,
		["ServiceRoleArn"] = ServiceRoleArn,
	}
	M.AssertServer(t)
	return t
end

local DescribeNodeAssociationStatusResponse_keys = { "NodeAssociationStatus" = true, nil }

function M.AssertDescribeNodeAssociationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNodeAssociationStatusResponse to be of type 'table'")
	if struct["NodeAssociationStatus"] then M.AssertNodeAssociationStatus(struct["NodeAssociationStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNodeAssociationStatusResponse_keys[k], "DescribeNodeAssociationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNodeAssociationStatusResponse
--  
-- @param NodeAssociationStatus [NodeAssociationStatus] <p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>
function M.DescribeNodeAssociationStatusResponse(NodeAssociationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNodeAssociationStatusResponse")
	local t = { 
		["NodeAssociationStatus"] = NodeAssociationStatus,
	}
	M.AssertDescribeNodeAssociationStatusResponse(t)
	return t
end

local DescribeBackupsRequest_keys = { "BackupId" = true, "ServerName" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeBackupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupsRequest to be of type 'table'")
	if struct["BackupId"] then M.AssertBackupId(struct["BackupId"]) end
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBackupsRequest_keys[k], "DescribeBackupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupsRequest
--  
-- @param BackupId [BackupId] <p>Describes a single backup. </p>
-- @param ServerName [ServerName] <p>Returns backups for the server with the specified ServerName. </p>
-- @param NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeBackups</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>
-- @param MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
function M.DescribeBackupsRequest(BackupId, ServerName, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBackupsRequest")
	local t = { 
		["BackupId"] = BackupId,
		["ServerName"] = ServerName,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeBackupsRequest(t)
	return t
end

local AssociateNodeResponse_keys = { "NodeAssociationStatusToken" = true, nil }

function M.AssertAssociateNodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateNodeResponse to be of type 'table'")
	if struct["NodeAssociationStatusToken"] then M.AssertNodeAssociationStatusToken(struct["NodeAssociationStatusToken"]) end
	for k,_ in pairs(struct) do
		assert(AssociateNodeResponse_keys[k], "AssociateNodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateNodeResponse
--  
-- @param NodeAssociationStatusToken [NodeAssociationStatusToken] <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the association request. </p>
function M.AssociateNodeResponse(NodeAssociationStatusToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateNodeResponse")
	local t = { 
		["NodeAssociationStatusToken"] = NodeAssociationStatusToken,
	}
	M.AssertAssociateNodeResponse(t)
	return t
end

local ServerEvent_keys = { "ServerName" = true, "Message" = true, "CreatedAt" = true, "LogUrl" = true, nil }

function M.AssertServerEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerEvent to be of type 'table'")
	if struct["ServerName"] then M.AssertString(struct["ServerName"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["CreatedAt"] then M.AssertTimestamp(struct["CreatedAt"]) end
	if struct["LogUrl"] then M.AssertString(struct["LogUrl"]) end
	for k,_ in pairs(struct) do
		assert(ServerEvent_keys[k], "ServerEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerEvent
-- <p>An event that is related to the server, such as the start of maintenance or backup. </p>
-- @param ServerName [String] <p>The name of the server on or for which the event occurred. </p>
-- @param Message [String] <p>A human-readable informational or status message.</p>
-- @param CreatedAt [Timestamp] <p>The time when the event occurred. </p>
-- @param LogUrl [String] <p>The Amazon S3 URL of the event's log file.</p>
function M.ServerEvent(ServerName, Message, CreatedAt, LogUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerEvent")
	local t = { 
		["ServerName"] = ServerName,
		["Message"] = Message,
		["CreatedAt"] = CreatedAt,
		["LogUrl"] = LogUrl,
	}
	M.AssertServerEvent(t)
	return t
end

local DeleteBackupRequest_keys = { "BackupId" = true, nil }

function M.AssertDeleteBackupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupRequest to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	if struct["BackupId"] then M.AssertBackupId(struct["BackupId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBackupRequest_keys[k], "DeleteBackupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupRequest
--  
-- @param BackupId [BackupId] <p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>. </p>
-- Required parameter: BackupId
function M.DeleteBackupRequest(BackupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBackupRequest")
	local t = { 
		["BackupId"] = BackupId,
	}
	M.AssertDeleteBackupRequest(t)
	return t
end

local CreateServerRequest_keys = { "Engine" = true, "ServiceRoleArn" = true, "SubnetIds" = true, "DisableAutomatedBackup" = true, "PreferredMaintenanceWindow" = true, "ServerName" = true, "BackupRetentionCount" = true, "InstanceType" = true, "PreferredBackupWindow" = true, "KeyPair" = true, "AssociatePublicIpAddress" = true, "SecurityGroupIds" = true, "EngineVersion" = true, "BackupId" = true, "InstanceProfileArn" = true, "EngineAttributes" = true, "EngineModel" = true, nil }

function M.AssertCreateServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServerRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["InstanceProfileArn"], "Expected key InstanceProfileArn to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["ServiceRoleArn"] then M.AssertServiceRoleArn(struct["ServiceRoleArn"]) end
	if struct["SubnetIds"] then M.AssertStrings(struct["SubnetIds"]) end
	if struct["DisableAutomatedBackup"] then M.AssertBoolean(struct["DisableAutomatedBackup"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["BackupRetentionCount"] then M.AssertBackupRetentionCountDefinition(struct["BackupRetentionCount"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["PreferredBackupWindow"] then M.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["KeyPair"] then M.AssertKeyPair(struct["KeyPair"]) end
	if struct["AssociatePublicIpAddress"] then M.AssertBoolean(struct["AssociatePublicIpAddress"]) end
	if struct["SecurityGroupIds"] then M.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["BackupId"] then M.AssertBackupId(struct["BackupId"]) end
	if struct["InstanceProfileArn"] then M.AssertInstanceProfileArn(struct["InstanceProfileArn"]) end
	if struct["EngineAttributes"] then M.AssertEngineAttributes(struct["EngineAttributes"]) end
	if struct["EngineModel"] then M.AssertString(struct["EngineModel"]) end
	for k,_ in pairs(struct) do
		assert(CreateServerRequest_keys[k], "CreateServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServerRequest
--  
-- @param Engine [String] <p> The configuration management engine to use. Valid values include <code>Chef</code>. </p>
-- @param ServiceRoleArn [ServiceRoleArn] <p> The service role that the AWS OpsWorks for Chef Automate service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-stuff/latest/service-role-creation.yaml. This template creates a CloudFormation stack that includes the service role that you need. </p>
-- @param SubnetIds [Strings] <p> The IDs of subnets in which to launch the server EC2 instance. </p> <p> Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled. </p> <p> EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled. </p> <p>For more information about supported Amazon EC2 platforms, see <a href="http://docs.aws.amazon.com/https:/docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
-- @param DisableAutomatedBackup [Boolean] <p> Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>. </p>
-- @param PreferredMaintenanceWindow [TimeWindowDefinition] <p> The start time for a one-hour period each week during which AWS OpsWorks for Chef Automate performs maintenance on the instance. Valid values must be specified in the following format: <code>DDD:HH:MM</code>. The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information. </p> <p> <b>Example:</b> <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.) </p>
-- @param ServerName [ServerName] <p> The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters. </p>
-- @param BackupRetentionCount [BackupRetentionCountDefinition] <p> The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks for Chef Automate deletes the oldest backups if this number is exceeded. The default value is <code>1</code>. </p>
-- @param InstanceType [String] <p> The Amazon EC2 instance type to use. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code> For example, <code>m4.large</code>. Valid values are <code>t2.medium</code>, <code>m4.large</code>, or <code>m4.2xlarge</code>. </p>
-- @param PreferredBackupWindow [TimeWindowDefinition] <p> The start time for a one-hour period during which AWS OpsWorks for Chef Automate backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats: </p> <ul> <li> <p> <code>HH:MM</code> for daily backups</p> </li> <li> <p> <code>DDD:HH:MM</code> for weekly backups</p> </li> </ul> <p>The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p> <p> <b>Example:</b> <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p> <p> <b>Example:</b> <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
-- @param KeyPair [KeyPair] <p> The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH. </p>
-- @param AssociatePublicIpAddress [Boolean] <p> Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>. </p>
-- @param SecurityGroupIds [Strings] <p> A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by <code>SubnetIds</code>. </p> <p> If you do not specify this parameter, AWS OpsWorks for Chef Automate creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone). </p>
-- @param EngineVersion [String] <p> The major release version of the engine that you want to use. Values depend on the engine that you choose. </p>
-- @param BackupId [BackupId] <p> If you specify this field, AWS OpsWorks for Chef Automate creates the server by using the backup represented by BackupId. </p>
-- @param InstanceProfileArn [InstanceProfileArn] <p> The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need. </p>
-- @param EngineAttributes [EngineAttributes] <p>Optional engine attributes on a specified server. </p> <p class="title"> <b>Attributes accepted in a createServer request:</b> </p> <ul> <li> <p> <code>CHEF_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is not stored by AWS OpsWorks for Chef. This private key is required to access the Chef API. When no CHEF_PIVOTAL_KEY is set, one is generated and returned in the response. </p> </li> <li> <p> <code>CHEF_DELIVERY_ADMIN_PASSWORD</code>: The password for the administrative user in the Chef Automate GUI. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#$%^&amp;+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_DELIVERY_ADMIN_PASSWORD is set, one is generated and returned in the response.</p> </li> </ul>
-- @param EngineModel [String] <p> The engine model, or option. Valid values include <code>Single</code>. </p>
-- Required parameter: ServerName
-- Required parameter: InstanceProfileArn
-- Required parameter: InstanceType
-- Required parameter: ServiceRoleArn
function M.CreateServerRequest(Engine, ServiceRoleArn, SubnetIds, DisableAutomatedBackup, PreferredMaintenanceWindow, ServerName, BackupRetentionCount, InstanceType, PreferredBackupWindow, KeyPair, AssociatePublicIpAddress, SecurityGroupIds, EngineVersion, BackupId, InstanceProfileArn, EngineAttributes, EngineModel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServerRequest")
	local t = { 
		["Engine"] = Engine,
		["ServiceRoleArn"] = ServiceRoleArn,
		["SubnetIds"] = SubnetIds,
		["DisableAutomatedBackup"] = DisableAutomatedBackup,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["ServerName"] = ServerName,
		["BackupRetentionCount"] = BackupRetentionCount,
		["InstanceType"] = InstanceType,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["KeyPair"] = KeyPair,
		["AssociatePublicIpAddress"] = AssociatePublicIpAddress,
		["SecurityGroupIds"] = SecurityGroupIds,
		["EngineVersion"] = EngineVersion,
		["BackupId"] = BackupId,
		["InstanceProfileArn"] = InstanceProfileArn,
		["EngineAttributes"] = EngineAttributes,
		["EngineModel"] = EngineModel,
	}
	M.AssertCreateServerRequest(t)
	return t
end

local DescribeEventsRequest_keys = { "ServerName" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsRequest_keys[k], "DescribeEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsRequest
--  
-- @param ServerName [ServerName] <p>The name of the server for which you want to view events.</p>
-- @param NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
-- Required parameter: ServerName
function M.DescribeEventsRequest(ServerName, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsRequest")
	local t = { 
		["ServerName"] = ServerName,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeEventsRequest(t)
	return t
end

local StartMaintenanceRequest_keys = { "ServerName" = true, nil }

function M.AssertStartMaintenanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMaintenanceRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	for k,_ in pairs(struct) do
		assert(StartMaintenanceRequest_keys[k], "StartMaintenanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMaintenanceRequest
--  
-- @param ServerName [ServerName] <p>The name of the server on which to run maintenance. </p>
-- Required parameter: ServerName
function M.StartMaintenanceRequest(ServerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartMaintenanceRequest")
	local t = { 
		["ServerName"] = ServerName,
	}
	M.AssertStartMaintenanceRequest(t)
	return t
end

local Backup_keys = { "ToolsVersion" = true, "S3DataUrl" = true, "EngineModel" = true, "S3DataSize" = true, "Engine" = true, "Description" = true, "S3LogUrl" = true, "PreferredBackupWindow" = true, "BackupArn" = true, "InstanceProfileArn" = true, "InstanceType" = true, "PreferredMaintenanceWindow" = true, "Status" = true, "ServerName" = true, "SecurityGroupIds" = true, "BackupType" = true, "KeyPair" = true, "EngineVersion" = true, "StatusDescription" = true, "UserArn" = true, "SubnetIds" = true, "CreatedAt" = true, "BackupId" = true, "ServiceRoleArn" = true, nil }

function M.AssertBackup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Backup to be of type 'table'")
	if struct["ToolsVersion"] then M.AssertString(struct["ToolsVersion"]) end
	if struct["S3DataUrl"] then M.AssertString(struct["S3DataUrl"]) end
	if struct["EngineModel"] then M.AssertString(struct["EngineModel"]) end
	if struct["S3DataSize"] then M.AssertInteger(struct["S3DataSize"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["S3LogUrl"] then M.AssertString(struct["S3LogUrl"]) end
	if struct["PreferredBackupWindow"] then M.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["BackupArn"] then M.AssertString(struct["BackupArn"]) end
	if struct["InstanceProfileArn"] then M.AssertString(struct["InstanceProfileArn"]) end
	if struct["InstanceType"] then M.AssertString(struct["InstanceType"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	if struct["Status"] then M.AssertBackupStatus(struct["Status"]) end
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["SecurityGroupIds"] then M.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["BackupType"] then M.AssertBackupType(struct["BackupType"]) end
	if struct["KeyPair"] then M.AssertString(struct["KeyPair"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["StatusDescription"] then M.AssertString(struct["StatusDescription"]) end
	if struct["UserArn"] then M.AssertString(struct["UserArn"]) end
	if struct["SubnetIds"] then M.AssertStrings(struct["SubnetIds"]) end
	if struct["CreatedAt"] then M.AssertTimestamp(struct["CreatedAt"]) end
	if struct["BackupId"] then M.AssertBackupId(struct["BackupId"]) end
	if struct["ServiceRoleArn"] then M.AssertString(struct["ServiceRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(Backup_keys[k], "Backup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Backup
-- <p>Describes a single backup. </p>
-- @param ToolsVersion [String] <p> The version of AWS OpsWorks for Chef Automate-specific tools that is obtained from the server when the backup is created. </p>
-- @param S3DataUrl [String] <p> This field is deprecated and is no longer used. </p>
-- @param EngineModel [String] <p> The engine model that is obtained from the server when the backup is created. </p>
-- @param S3DataSize [Integer] <p> This field is deprecated and is no longer used. </p>
-- @param Engine [String] <p> The engine type that is obtained from the server when the backup is created. </p>
-- @param Description [String] <p> A user-provided description for a manual backup. This field is empty for automated backups. </p>
-- @param S3LogUrl [String] <p> The Amazon S3 URL of the backup's log file. </p>
-- @param PreferredBackupWindow [TimeWindowDefinition] <p> The preferred backup period that is obtained from the server when the backup is created. </p>
-- @param BackupArn [String] <p>The ARN of the backup. </p>
-- @param InstanceProfileArn [String] <p> The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored, you are not required to provide the InstanceProfileArn again if you restore a backup. </p>
-- @param InstanceType [String] <p> The instance type that is obtained from the server when the backup is created. </p>
-- @param PreferredMaintenanceWindow [TimeWindowDefinition] <p> The preferred maintenance period that is obtained from the server when the backup is created. </p>
-- @param Status [BackupStatus] <p>The status of a backup while in progress. </p>
-- @param ServerName [ServerName] <p> The name of the server from which the backup was made. </p>
-- @param SecurityGroupIds [Strings] <p> The security group IDs that are obtained from the server when the backup is created. </p>
-- @param BackupType [BackupType] <p> The backup type. Valid values are <code>automated</code> or <code>manual</code>. </p>
-- @param KeyPair [String] <p> The key pair that is obtained from the server when the backup is created. </p>
-- @param EngineVersion [String] <p> The engine version that is obtained from the server when the backup is created. </p>
-- @param StatusDescription [String] <p> An informational message about backup status. </p>
-- @param UserArn [String] <p> The IAM user ARN of the requester for manual backups. This field is empty for automated backups. </p>
-- @param SubnetIds [Strings] <p> The subnet IDs that are obtained from the server when the backup is created. </p>
-- @param CreatedAt [Timestamp] <p> The time stamp when the backup was created in the database. Example: <code>2016-07-29T13:38:47.520Z</code> </p>
-- @param BackupId [BackupId] <p> The generated ID of the backup. Example: <code>myServerName-yyyyMMddHHmmssSSS</code> </p>
-- @param ServiceRoleArn [String] <p> The service role ARN that is obtained from the server when the backup is created. </p>
function M.Backup(ToolsVersion, S3DataUrl, EngineModel, S3DataSize, Engine, Description, S3LogUrl, PreferredBackupWindow, BackupArn, InstanceProfileArn, InstanceType, PreferredMaintenanceWindow, Status, ServerName, SecurityGroupIds, BackupType, KeyPair, EngineVersion, StatusDescription, UserArn, SubnetIds, CreatedAt, BackupId, ServiceRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Backup")
	local t = { 
		["ToolsVersion"] = ToolsVersion,
		["S3DataUrl"] = S3DataUrl,
		["EngineModel"] = EngineModel,
		["S3DataSize"] = S3DataSize,
		["Engine"] = Engine,
		["Description"] = Description,
		["S3LogUrl"] = S3LogUrl,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["BackupArn"] = BackupArn,
		["InstanceProfileArn"] = InstanceProfileArn,
		["InstanceType"] = InstanceType,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["Status"] = Status,
		["ServerName"] = ServerName,
		["SecurityGroupIds"] = SecurityGroupIds,
		["BackupType"] = BackupType,
		["KeyPair"] = KeyPair,
		["EngineVersion"] = EngineVersion,
		["StatusDescription"] = StatusDescription,
		["UserArn"] = UserArn,
		["SubnetIds"] = SubnetIds,
		["CreatedAt"] = CreatedAt,
		["BackupId"] = BackupId,
		["ServiceRoleArn"] = ServiceRoleArn,
	}
	M.AssertBackup(t)
	return t
end

local DescribeBackupsResponse_keys = { "Backups" = true, "NextToken" = true, nil }

function M.AssertDescribeBackupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupsResponse to be of type 'table'")
	if struct["Backups"] then M.AssertBackups(struct["Backups"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBackupsResponse_keys[k], "DescribeBackupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupsResponse
--  
-- @param Backups [Backups] <p>Contains the response to a <code>DescribeBackups</code> request. </p>
-- @param NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeBackups</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
function M.DescribeBackupsResponse(Backups, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBackupsResponse")
	local t = { 
		["Backups"] = Backups,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeBackupsResponse(t)
	return t
end

local AssociateNodeRequest_keys = { "ServerName" = true, "NodeName" = true, "EngineAttributes" = true, nil }

function M.AssertAssociateNodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateNodeRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["NodeName"], "Expected key NodeName to exist in table")
	assert(struct["EngineAttributes"], "Expected key EngineAttributes to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["NodeName"] then M.AssertNodeName(struct["NodeName"]) end
	if struct["EngineAttributes"] then M.AssertEngineAttributes(struct["EngineAttributes"]) end
	for k,_ in pairs(struct) do
		assert(AssociateNodeRequest_keys[k], "AssociateNodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateNodeRequest
--  
-- @param ServerName [ServerName] <p>The name of the server with which to associate the node. </p>
-- @param NodeName [NodeName] <p>The name of the Chef client node. </p>
-- @param EngineAttributes [EngineAttributes] <p>Engine attributes used for associating the node. </p> <p class="title"> <b>Attributes accepted in a AssociateNode request:</b> </p> <ul> <li> <p> <code>CHEF_ORGANIZATION</code>: The Chef organization with which the node is associated. By default only one organization named <code>default</code> can exist. </p> </li> <li> <p> <code>CHEF_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API. </p> </li> </ul>
-- Required parameter: ServerName
-- Required parameter: NodeName
-- Required parameter: EngineAttributes
function M.AssociateNodeRequest(ServerName, NodeName, EngineAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateNodeRequest")
	local t = { 
		["ServerName"] = ServerName,
		["NodeName"] = NodeName,
		["EngineAttributes"] = EngineAttributes,
	}
	M.AssertAssociateNodeRequest(t)
	return t
end

local DescribeNodeAssociationStatusRequest_keys = { "ServerName" = true, "NodeAssociationStatusToken" = true, nil }

function M.AssertDescribeNodeAssociationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNodeAssociationStatusRequest to be of type 'table'")
	assert(struct["NodeAssociationStatusToken"], "Expected key NodeAssociationStatusToken to exist in table")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["NodeAssociationStatusToken"] then M.AssertNodeAssociationStatusToken(struct["NodeAssociationStatusToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNodeAssociationStatusRequest_keys[k], "DescribeNodeAssociationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNodeAssociationStatusRequest
--  
-- @param ServerName [ServerName] <p>The name of the server from which to disassociate the node. </p>
-- @param NodeAssociationStatusToken [NodeAssociationStatusToken]  
-- Required parameter: NodeAssociationStatusToken
-- Required parameter: ServerName
function M.DescribeNodeAssociationStatusRequest(ServerName, NodeAssociationStatusToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNodeAssociationStatusRequest")
	local t = { 
		["ServerName"] = ServerName,
		["NodeAssociationStatusToken"] = NodeAssociationStatusToken,
	}
	M.AssertDescribeNodeAssociationStatusRequest(t)
	return t
end

local UpdateServerEngineAttributesRequest_keys = { "ServerName" = true, "AttributeName" = true, "AttributeValue" = true, nil }

function M.AssertUpdateServerEngineAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerEngineAttributesRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ServerName"] then M.AssertServerName(struct["ServerName"]) end
	if struct["AttributeName"] then M.AssertAttributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then M.AssertAttributeValue(struct["AttributeValue"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServerEngineAttributesRequest_keys[k], "UpdateServerEngineAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerEngineAttributesRequest
--  
-- @param ServerName [ServerName] <p>The name of the server to update. </p>
-- @param AttributeName [AttributeName] <p>The name of the engine attribute to update. </p>
-- @param AttributeValue [AttributeValue] <p>The value to set for the attribute. </p>
-- Required parameter: ServerName
-- Required parameter: AttributeName
function M.UpdateServerEngineAttributesRequest(ServerName, AttributeName, AttributeValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerEngineAttributesRequest")
	local t = { 
		["ServerName"] = ServerName,
		["AttributeName"] = AttributeName,
		["AttributeValue"] = AttributeValue,
	}
	M.AssertUpdateServerEngineAttributesRequest(t)
	return t
end

local InvalidStateException_keys = { "Message" = true, nil }

function M.AssertInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStateException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidStateException_keys[k], "InvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStateException
-- <p>The resource is in a state that does not allow you to perform a specified action. </p>
-- @param Message [String] <p>Error or informational message that provides more detail if a resource is in a state that is not valid for performing a specified action. </p>
function M.InvalidStateException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStateException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidStateException(t)
	return t
end

local ResourceAlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The requested resource cannot be created because it already exists. </p>
-- @param Message [String] <p>Error or informational message in response to a CreateServer request that a resource cannot be created because it already exists. </p>
function M.ResourceAlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

function M.AssertBackupStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupStatus to be of type 'string'")
end

--  
function M.BackupStatus(str)
	M.AssertBackupStatus(str)
	return str
end

function M.AssertMaintenanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceStatus to be of type 'string'")
end

--  
function M.MaintenanceStatus(str)
	M.AssertMaintenanceStatus(str)
	return str
end

function M.AssertEngineAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected EngineAttributeName to be of type 'string'")
end

--  
function M.EngineAttributeName(str)
	M.AssertEngineAttributeName(str)
	return str
end

function M.AssertNodeAssociationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected NodeAssociationStatus to be of type 'string'")
end

-- <p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>
function M.NodeAssociationStatus(str)
	M.AssertNodeAssociationStatus(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertServiceRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceRoleArn to be of type 'string'")
	assert(str:match("arn:aws:iam::[0-9]{12}:role/.*"), "Expected string to match pattern 'arn:aws:iam::[0-9]{12}:role/.*'")
end

--  
function M.ServiceRoleArn(str)
	M.AssertServiceRoleArn(str)
	return str
end

function M.AssertTimeWindowDefinition(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeWindowDefinition to be of type 'string'")
	assert(str:match("^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"), "Expected string to match pattern '^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$'")
end

-- <p> <code>DDD:HH:MM</code> (weekly start time) or <code>HH:MM</code> (daily start time). </p> <p> Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>, <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
function M.TimeWindowDefinition(str)
	M.AssertTimeWindowDefinition(str)
	return str
end

function M.AssertEngineAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EngineAttributeValue to be of type 'string'")
end

--  
function M.EngineAttributeValue(str)
	M.AssertEngineAttributeValue(str)
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

function M.AssertNodeAssociationStatusToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NodeAssociationStatusToken to be of type 'string'")
end

--  
function M.NodeAssociationStatusToken(str)
	M.AssertNodeAssociationStatusToken(str)
	return str
end

function M.AssertNodeName(str)
	assert(str)
	assert(type(str) == "string", "Expected NodeName to be of type 'string'")
	assert(str:match("^[%-%p{Alnum}_:.]+$"), "Expected string to match pattern '^[%-%p{Alnum}_:.]+$'")
end

-- <p>The node name that is used by <code>chef-client</code> for a new node. For more information, see the <a href="http://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names">Chef Documentation</a>. </p>
function M.NodeName(str)
	M.AssertNodeName(str)
	return str
end

function M.AssertServerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerName to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z][a-zA-Z0-9%-]*"), "Expected string to match pattern '[a-zA-Z][a-zA-Z0-9%-]*'")
end

--  
function M.ServerName(str)
	M.AssertServerName(str)
	return str
end

function M.AssertBackupType(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupType to be of type 'string'")
end

--  
function M.BackupType(str)
	M.AssertBackupType(str)
	return str
end

function M.AssertServerStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerStatus to be of type 'string'")
end

--  
function M.ServerStatus(str)
	M.AssertServerStatus(str)
	return str
end

function M.AssertInstanceProfileArn(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceProfileArn to be of type 'string'")
	assert(str:match("arn:aws:iam::[0-9]{12}:instance-profile/.*"), "Expected string to match pattern 'arn:aws:iam::[0-9]{12}:instance-profile/.*'")
end

--  
function M.InstanceProfileArn(str)
	M.AssertInstanceProfileArn(str)
	return str
end

function M.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	M.AssertAttributeValue(str)
	return str
end

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[A-Z][A-Z0-9_]*"), "Expected string to match pattern '[A-Z][A-Z0-9_]*'")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertKeyPair(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyPair to be of type 'string'")
end

--  
function M.KeyPair(str)
	M.AssertKeyPair(str)
	return str
end

function M.AssertBackupId(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupId to be of type 'string'")
	assert(#str <= 79, "Expected string to be max 79 characters")
end

--  
function M.BackupId(str)
	M.AssertBackupId(str)
	return str
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

function M.AssertBackupRetentionCountDefinition(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BackupRetentionCountDefinition to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BackupRetentionCountDefinition(integer)
	M.AssertBackupRetentionCountDefinition(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
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

function M.AssertEngineAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected EngineAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEngineAttribute(v)
	end
end

--  
-- List of EngineAttribute objects
function M.EngineAttributes(list)
	M.AssertEngineAttributes(list)
	return list
end

function M.AssertAccountAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccountAttribute(v)
	end
end

-- <p> A list of individual account attributes. </p>
-- List of AccountAttribute objects
function M.AccountAttributes(list)
	M.AssertAccountAttributes(list)
	return list
end

function M.AssertServerEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerEvents to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServerEvent(v)
	end
end

--  
-- List of ServerEvent objects
function M.ServerEvents(list)
	M.AssertServerEvents(list)
	return list
end

function M.AssertStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected Strings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.Strings(list)
	M.AssertStrings(list)
	return list
end

function M.AssertServers(list)
	assert(list)
	assert(type(list) == "table", "Expected Servers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServer(v)
	end
end

--  
-- List of Server objects
function M.Servers(list)
	M.AssertServers(list)
	return list
end

function M.AssertBackups(list)
	assert(list)
	assert(type(list) == "table", "Expected Backups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBackup(v)
	end
end

--  
-- List of Backup objects
function M.Backups(list)
	M.AssertBackups(list)
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
			return "opsworks-cm.amazonaws.com"
		end
	end
	local ss = { "opsworks-cm" }
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
--- DescribeServers
-- @param DescribeServersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServersAsync(DescribeServersRequest, cb)
	assert(DescribeServersRequest, "You must provide a DescribeServersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeServers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeServersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeNodeAssociationStatus
-- @param DescribeNodeAssociationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeNodeAssociationStatusAsync(DescribeNodeAssociationStatusRequest, cb)
	assert(DescribeNodeAssociationStatusRequest, "You must provide a DescribeNodeAssociationStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeNodeAssociationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeNodeAssociationStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteServer
-- @param DeleteServerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteServerAsync(DeleteServerRequest, cb)
	assert(DeleteServerRequest, "You must provide a DeleteServerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DeleteServer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteServerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeBackups
-- @param DescribeBackupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBackupsAsync(DescribeBackupsRequest, cb)
	assert(DescribeBackupsRequest, "You must provide a DescribeBackupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeBackups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeBackupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreServer
-- @param RestoreServerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreServerAsync(RestoreServerRequest, cb)
	assert(RestoreServerRequest, "You must provide a RestoreServerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.RestoreServer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreServerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateServerEngineAttributes
-- @param UpdateServerEngineAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServerEngineAttributesAsync(UpdateServerEngineAttributesRequest, cb)
	assert(UpdateServerEngineAttributesRequest, "You must provide a UpdateServerEngineAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.UpdateServerEngineAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateServerEngineAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccountAttributes
-- @param DescribeAccountAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountAttributesAsync(DescribeAccountAttributesRequest, cb)
	assert(DescribeAccountAttributesRequest, "You must provide a DescribeAccountAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeAccountAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEvents
-- @param DescribeEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBackup
-- @param DeleteBackupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBackupAsync(DeleteBackupRequest, cb)
	assert(DeleteBackupRequest, "You must provide a DeleteBackupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DeleteBackup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteBackupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateServer
-- @param CreateServerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateServerAsync(CreateServerRequest, cb)
	assert(CreateServerRequest, "You must provide a CreateServerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.CreateServer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateServerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBackup
-- @param CreateBackupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBackupAsync(CreateBackupRequest, cb)
	assert(CreateBackupRequest, "You must provide a CreateBackupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.CreateBackup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateBackupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartMaintenance
-- @param StartMaintenanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartMaintenanceAsync(StartMaintenanceRequest, cb)
	assert(StartMaintenanceRequest, "You must provide a StartMaintenanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.StartMaintenance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartMaintenanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateServer
-- @param UpdateServerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServerAsync(UpdateServerRequest, cb)
	assert(UpdateServerRequest, "You must provide a UpdateServerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.UpdateServer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateServerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateNode
-- @param AssociateNodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateNodeAsync(AssociateNodeRequest, cb)
	assert(AssociateNodeRequest, "You must provide a AssociateNodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.AssociateNode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateNodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateNode
-- @param DisassociateNodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateNodeAsync(DisassociateNodeRequest, cb)
	assert(DisassociateNodeRequest, "You must provide a DisassociateNodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DisassociateNode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateNodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
