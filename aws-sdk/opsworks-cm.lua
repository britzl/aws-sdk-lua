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

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The limit of servers or backups has been reached. </p>
-- @param _Message [String] <p>Error or informational message that the maximum allowed number of servers or backups has been exceeded. </p>
function M.LimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.UpdateServerEngineAttributesResponse = { ["Server"] = true, nil }

function asserts.AssertUpdateServerEngineAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerEngineAttributesResponse to be of type 'table'")
	if struct["Server"] then asserts.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServerEngineAttributesResponse[k], "UpdateServerEngineAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerEngineAttributesResponse
--  
-- @param _Server [Server] <p>Contains the response to an <code>UpdateServerEngineAttributes</code> request. </p>
function M.UpdateServerEngineAttributesResponse(_Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerEngineAttributesResponse")
	local t = { 
		["Server"] = _Server,
	}
	asserts.AssertUpdateServerEngineAttributesResponse(t)
	return t
end

keys.ValidationException = { ["Message"] = true, nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>One or more of the provided request parameters are not valid. </p>
-- @param _Message [String] <p>Error or informational message that can contain more detail about a validation failure. </p>
function M.ValidationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertValidationException(t)
	return t
end

keys.CreateBackupRequest = { ["ServerName"] = true, ["Description"] = true, nil }

function asserts.AssertCreateBackupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBackupRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBackupRequest[k], "CreateBackupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBackupRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server that you want to back up. </p>
-- @param _Description [String] <p> A user-defined description of the backup. </p>
-- Required parameter: ServerName
function M.CreateBackupRequest(_ServerName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBackupRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["Description"] = _Description,
	}
	asserts.AssertCreateBackupRequest(t)
	return t
end

keys.DescribeAccountAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertDescribeAccountAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAccountAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountAttributesResponse[k], "DescribeAccountAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesResponse
--  
-- @param _Attributes [AccountAttributes] <p> The attributes that are currently set for the account. </p>
function M.DescribeAccountAttributesResponse(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertDescribeAccountAttributesResponse(t)
	return t
end

keys.DeleteServerRequest = { ["ServerName"] = true, nil }

function asserts.AssertDeleteServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServerRequest[k], "DeleteServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerRequest
--  
-- @param _ServerName [ServerName] <p>The ID of the server to delete.</p>
-- Required parameter: ServerName
function M.DeleteServerRequest(_ServerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerRequest")
	local t = { 
		["ServerName"] = _ServerName,
	}
	asserts.AssertDeleteServerRequest(t)
	return t
end

keys.StartMaintenanceResponse = { ["Server"] = true, nil }

function asserts.AssertStartMaintenanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMaintenanceResponse to be of type 'table'")
	if struct["Server"] then asserts.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartMaintenanceResponse[k], "StartMaintenanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMaintenanceResponse
--  
-- @param _Server [Server] <p>Contains the response to a <code>StartMaintenance</code> request. </p>
function M.StartMaintenanceResponse(_Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartMaintenanceResponse")
	local t = { 
		["Server"] = _Server,
	}
	asserts.AssertStartMaintenanceResponse(t)
	return t
end

keys.AccountAttribute = { ["Used"] = true, ["Name"] = true, ["Maximum"] = true, nil }

function asserts.AssertAccountAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountAttribute to be of type 'table'")
	if struct["Used"] then asserts.AssertInteger(struct["Used"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Maximum"] then asserts.AssertInteger(struct["Maximum"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountAttribute[k], "AccountAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountAttribute
-- <p>Stores account attributes. </p>
-- @param _Used [Integer] <p> The current usage, such as the current number of servers that are associated with the account. </p>
-- @param _Name [String] <p> The attribute name. The following are supported attribute names. </p> <ul> <li> <p> <i>ServerLimit:</i> The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers. </p> </li> <li> <p> <i>ManualBackupLimit:</i> The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum of 50 manual backups saved. </p> </li> </ul>
-- @param _Maximum [Integer] <p> The maximum allowed value. </p>
function M.AccountAttribute(_Used, _Name, _Maximum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountAttribute")
	local t = { 
		["Used"] = _Used,
		["Name"] = _Name,
		["Maximum"] = _Maximum,
	}
	asserts.AssertAccountAttribute(t)
	return t
end

keys.CreateServerResponse = { ["Server"] = true, nil }

function asserts.AssertCreateServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServerResponse to be of type 'table'")
	if struct["Server"] then asserts.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServerResponse[k], "CreateServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServerResponse
--  
-- @param _Server [Server] <p>The server that is created by the request. </p>
function M.CreateServerResponse(_Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServerResponse")
	local t = { 
		["Server"] = _Server,
	}
	asserts.AssertCreateServerResponse(t)
	return t
end

keys.InvalidNextTokenException = { ["Message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>This occurs when the provided nextToken is not valid. </p>
-- @param _Message [String] <p>Error or informational message that can contain more detail about a nextToken failure. </p>
function M.InvalidNextTokenException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
end

keys.DisassociateNodeRequest = { ["ServerName"] = true, ["NodeName"] = true, ["EngineAttributes"] = true, nil }

function asserts.AssertDisassociateNodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateNodeRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["NodeName"], "Expected key NodeName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["NodeName"] then asserts.AssertNodeName(struct["NodeName"]) end
	if struct["EngineAttributes"] then asserts.AssertEngineAttributes(struct["EngineAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateNodeRequest[k], "DisassociateNodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateNodeRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server from which to disassociate the node. </p>
-- @param _NodeName [NodeName] <p>The name of the Chef client node. </p>
-- @param _EngineAttributes [EngineAttributes] <p>Engine attributes used for disassociating the node. </p> <p class="title"> <b>Attributes accepted in a DisassociateNode request:</b> </p> <ul> <li> <p> <code>CHEF_ORGANIZATION</code>: The Chef organization with which the node was associated. By default only one organization named <code>default</code> can exist. </p> </li> </ul>
-- Required parameter: ServerName
-- Required parameter: NodeName
function M.DisassociateNodeRequest(_ServerName, _NodeName, _EngineAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateNodeRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["NodeName"] = _NodeName,
		["EngineAttributes"] = _EngineAttributes,
	}
	asserts.AssertDisassociateNodeRequest(t)
	return t
end

keys.DescribeEventsResponse = { ["NextToken"] = true, ["ServerEvents"] = true, nil }

function asserts.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ServerEvents"] then asserts.AssertServerEvents(struct["ServerEvents"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsResponse[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
--  
-- @param _NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param _ServerEvents [ServerEvents] <p>Contains the response to a <code>DescribeEvents</code> request. </p>
function M.DescribeEventsResponse(_NextToken, _ServerEvents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["ServerEvents"] = _ServerEvents,
	}
	asserts.AssertDescribeEventsResponse(t)
	return t
end

keys.EngineAttribute = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertEngineAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineAttribute to be of type 'table'")
	if struct["Name"] then asserts.AssertEngineAttributeName(struct["Name"]) end
	if struct["Value"] then asserts.AssertEngineAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.EngineAttribute[k], "EngineAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineAttribute
-- <p>A name and value pair that is specific to the engine of the server. </p>
-- @param _Name [EngineAttributeName] <p>The name of the engine attribute. </p>
-- @param _Value [EngineAttributeValue] <p>The value of the engine attribute. </p>
function M.EngineAttribute(_Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EngineAttribute")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertEngineAttribute(t)
	return t
end

keys.DeleteServerResponse = { nil }

function asserts.AssertDeleteServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteServerResponse[k], "DeleteServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerResponse
--  
function M.DeleteServerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerResponse")
	local t = { 
	}
	asserts.AssertDeleteServerResponse(t)
	return t
end

keys.UpdateServerResponse = { ["Server"] = true, nil }

function asserts.AssertUpdateServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerResponse to be of type 'table'")
	if struct["Server"] then asserts.AssertServer(struct["Server"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServerResponse[k], "UpdateServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerResponse
--  
-- @param _Server [Server] <p>Contains the response to a <code>UpdateServer</code> request. </p>
function M.UpdateServerResponse(_Server, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerResponse")
	local t = { 
		["Server"] = _Server,
	}
	asserts.AssertUpdateServerResponse(t)
	return t
end

keys.RestoreServerRequest = { ["KeyPair"] = true, ["BackupId"] = true, ["ServerName"] = true, ["InstanceType"] = true, nil }

function asserts.AssertRestoreServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreServerRequest to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["KeyPair"] then asserts.AssertKeyPair(struct["KeyPair"]) end
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreServerRequest[k], "RestoreServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreServerRequest
--  
-- @param _KeyPair [KeyPair] <p> The name of the key pair to set on the new EC2 instance. This can be helpful if the administrator no longer has the SSH key. </p>
-- @param _BackupId [BackupId] <p> The ID of the backup that you want to use to restore a server. </p>
-- @param _ServerName [ServerName] <p> The name of the server that you want to restore. </p>
-- @param _InstanceType [String] <p> The type of the instance to create. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code> For example, <code>m4.large</code>. Valid values are <code>t2.medium</code>, <code>m4.large</code>, and <code>m4.2xlarge</code>. If you do not specify this parameter, RestoreServer uses the instance type from the specified backup. </p>
-- Required parameter: BackupId
-- Required parameter: ServerName
function M.RestoreServerRequest(_KeyPair, _BackupId, _ServerName, _InstanceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreServerRequest")
	local t = { 
		["KeyPair"] = _KeyPair,
		["BackupId"] = _BackupId,
		["ServerName"] = _ServerName,
		["InstanceType"] = _InstanceType,
	}
	asserts.AssertRestoreServerRequest(t)
	return t
end

keys.UpdateServerRequest = { ["PreferredBackupWindow"] = true, ["ServerName"] = true, ["BackupRetentionCount"] = true, ["DisableAutomatedBackup"] = true, ["PreferredMaintenanceWindow"] = true, nil }

function asserts.AssertUpdateServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["PreferredBackupWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["BackupRetentionCount"] then asserts.AssertInteger(struct["BackupRetentionCount"]) end
	if struct["DisableAutomatedBackup"] then asserts.AssertBoolean(struct["DisableAutomatedBackup"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServerRequest[k], "UpdateServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerRequest
--  
-- @param _PreferredBackupWindow [TimeWindowDefinition] 
-- @param _ServerName [ServerName] <p>The name of the server to update. </p>
-- @param _BackupRetentionCount [Integer] <p>Sets the number of automated backups that you want to keep. </p>
-- @param _DisableAutomatedBackup [Boolean] <p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. Automated backups are enabled by default. </p>
-- @param _PreferredMaintenanceWindow [TimeWindowDefinition] 
-- Required parameter: ServerName
function M.UpdateServerRequest(_PreferredBackupWindow, _ServerName, _BackupRetentionCount, _DisableAutomatedBackup, _PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerRequest")
	local t = { 
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["ServerName"] = _ServerName,
		["BackupRetentionCount"] = _BackupRetentionCount,
		["DisableAutomatedBackup"] = _DisableAutomatedBackup,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
	}
	asserts.AssertUpdateServerRequest(t)
	return t
end

keys.RestoreServerResponse = { nil }

function asserts.AssertRestoreServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreServerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RestoreServerResponse[k], "RestoreServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreServerResponse
--  
function M.RestoreServerResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreServerResponse")
	local t = { 
	}
	asserts.AssertRestoreServerResponse(t)
	return t
end

keys.DeleteBackupResponse = { nil }

function asserts.AssertDeleteBackupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteBackupResponse[k], "DeleteBackupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupResponse
--  
function M.DeleteBackupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBackupResponse")
	local t = { 
	}
	asserts.AssertDeleteBackupResponse(t)
	return t
end

keys.CreateBackupResponse = { ["Backup"] = true, nil }

function asserts.AssertCreateBackupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBackupResponse to be of type 'table'")
	if struct["Backup"] then asserts.AssertBackup(struct["Backup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBackupResponse[k], "CreateBackupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBackupResponse
--  
-- @param _Backup [Backup] <p>Backup created by request.</p>
function M.CreateBackupResponse(_Backup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBackupResponse")
	local t = { 
		["Backup"] = _Backup,
	}
	asserts.AssertCreateBackupResponse(t)
	return t
end

keys.ResourceNotFoundException = { ["Message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The requested resource does not exist, or access was denied. </p>
-- @param _Message [String] <p>Error or informational message that can contain more detail about problems locating or accessing a resource. </p>
function M.ResourceNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.DescribeAccountAttributesRequest = { nil }

function asserts.AssertDescribeAccountAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountAttributesRequest[k], "DescribeAccountAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesRequest
--  
function M.DescribeAccountAttributesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesRequest")
	local t = { 
	}
	asserts.AssertDescribeAccountAttributesRequest(t)
	return t
end

keys.DisassociateNodeResponse = { ["NodeAssociationStatusToken"] = true, nil }

function asserts.AssertDisassociateNodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateNodeResponse to be of type 'table'")
	if struct["NodeAssociationStatusToken"] then asserts.AssertNodeAssociationStatusToken(struct["NodeAssociationStatusToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateNodeResponse[k], "DisassociateNodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateNodeResponse
--  
-- @param _NodeAssociationStatusToken [NodeAssociationStatusToken] <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the disassociation request. </p>
function M.DisassociateNodeResponse(_NodeAssociationStatusToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateNodeResponse")
	local t = { 
		["NodeAssociationStatusToken"] = _NodeAssociationStatusToken,
	}
	asserts.AssertDisassociateNodeResponse(t)
	return t
end

keys.DescribeServersResponse = { ["NextToken"] = true, ["Servers"] = true, nil }

function asserts.AssertDescribeServersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Servers"] then asserts.AssertServers(struct["Servers"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServersResponse[k], "DescribeServersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServersResponse
--  
-- @param _NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeServers</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param _Servers [Servers] <p>Contains the response to a <code>DescribeServers</code> request. </p>
function M.DescribeServersResponse(_NextToken, _Servers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServersResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Servers"] = _Servers,
	}
	asserts.AssertDescribeServersResponse(t)
	return t
end

keys.DescribeServersRequest = { ["ServerName"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeServersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServersRequest to be of type 'table'")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServersRequest[k], "DescribeServersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServersRequest
--  
-- @param _ServerName [ServerName] <p>Describes the server with the specified ServerName.</p>
-- @param _NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeServers</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param _MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
function M.DescribeServersRequest(_ServerName, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServersRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeServersRequest(t)
	return t
end

keys.Server = { ["MaintenanceStatus"] = true, ["ServerArn"] = true, ["EngineAttributes"] = true, ["EngineModel"] = true, ["Engine"] = true, ["CloudFormationStackArn"] = true, ["DisableAutomatedBackup"] = true, ["BackupRetentionCount"] = true, ["StatusReason"] = true, ["PreferredBackupWindow"] = true, ["InstanceProfileArn"] = true, ["InstanceType"] = true, ["PreferredMaintenanceWindow"] = true, ["Status"] = true, ["Endpoint"] = true, ["ServerName"] = true, ["SecurityGroupIds"] = true, ["KeyPair"] = true, ["EngineVersion"] = true, ["AssociatePublicIpAddress"] = true, ["SubnetIds"] = true, ["CreatedAt"] = true, ["ServiceRoleArn"] = true, nil }

function asserts.AssertServer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Server to be of type 'table'")
	if struct["MaintenanceStatus"] then asserts.AssertMaintenanceStatus(struct["MaintenanceStatus"]) end
	if struct["ServerArn"] then asserts.AssertString(struct["ServerArn"]) end
	if struct["EngineAttributes"] then asserts.AssertEngineAttributes(struct["EngineAttributes"]) end
	if struct["EngineModel"] then asserts.AssertString(struct["EngineModel"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["CloudFormationStackArn"] then asserts.AssertString(struct["CloudFormationStackArn"]) end
	if struct["DisableAutomatedBackup"] then asserts.AssertBoolean(struct["DisableAutomatedBackup"]) end
	if struct["BackupRetentionCount"] then asserts.AssertInteger(struct["BackupRetentionCount"]) end
	if struct["StatusReason"] then asserts.AssertString(struct["StatusReason"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["InstanceProfileArn"] then asserts.AssertString(struct["InstanceProfileArn"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	if struct["Status"] then asserts.AssertServerStatus(struct["Status"]) end
	if struct["Endpoint"] then asserts.AssertString(struct["Endpoint"]) end
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["KeyPair"] then asserts.AssertString(struct["KeyPair"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["AssociatePublicIpAddress"] then asserts.AssertBoolean(struct["AssociatePublicIpAddress"]) end
	if struct["SubnetIds"] then asserts.AssertStrings(struct["SubnetIds"]) end
	if struct["CreatedAt"] then asserts.AssertTimestamp(struct["CreatedAt"]) end
	if struct["ServiceRoleArn"] then asserts.AssertString(struct["ServiceRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Server[k], "Server contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Server
-- <p>Describes a configuration management server. </p>
-- @param _MaintenanceStatus [MaintenanceStatus] <p>The status of the most recent server maintenance run. Shows <code>SUCCESS</code> or <code>FAILED</code>. </p>
-- @param _ServerArn [String] <p>The ARN of the server. </p>
-- @param _EngineAttributes [EngineAttributes] <p>The response of a createServer() request returns the master credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks for Chef Automate; they are returned only as part of the result of createServer(). </p> <p class="title"> <b>Attributes returned in a createServer response:</b> </p> <ul> <li> <p> <code>CHEF_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.</p> </li> <li> <p> <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands.</p> </li> </ul>
-- @param _EngineModel [String] <p>The engine model of the server. The valid value in this release is <code>Single</code>. </p>
-- @param _Engine [String] <p>The engine type of the server. The valid value in this release is <code>Chef</code>. </p>
-- @param _CloudFormationStackArn [String] <p>The ARN of the CloudFormation stack that was used to create the server. </p>
-- @param _DisableAutomatedBackup [Boolean] <p>Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount. </p>
-- @param _BackupRetentionCount [Integer] <p>The number of automated backups to keep. </p>
-- @param _StatusReason [String] <p> Depending on the server status, this field has either a human-readable message (such as a create or backup error), or an escaped block of JSON (used for health check results). </p>
-- @param _PreferredBackupWindow [TimeWindowDefinition] <p>The preferred backup period specified for the server. </p>
-- @param _InstanceProfileArn [String] <p>The instance profile ARN of the server. </p>
-- @param _InstanceType [String] <p> The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console. </p>
-- @param _PreferredMaintenanceWindow [TimeWindowDefinition] <p>The preferred maintenance period specified for the server. </p>
-- @param _Status [ServerStatus] <p> The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server, as well as the server's health state. </p>
-- @param _Endpoint [String] <p> A DNS name that can be used to access the engine. Example: <code>myserver-asdfghjkl.us-east-1.opsworks.io</code> </p>
-- @param _ServerName [String] <p>The name of the server. </p>
-- @param _SecurityGroupIds [Strings] <p> The security group IDs for the server, as specified in the CloudFormation stack. These might not be the same security groups that are shown in the EC2 console. </p>
-- @param _KeyPair [String] <p>The key pair associated with the server. </p>
-- @param _EngineVersion [String] <p>The engine version of the server. Because Chef is the engine available in this release, the valid value for EngineVersion is <code>12</code>. </p>
-- @param _AssociatePublicIpAddress [Boolean] <p>Associate a public IP address with a server that you are launching. </p>
-- @param _SubnetIds [Strings] <p> The subnet IDs specified in a CreateServer request. </p>
-- @param _CreatedAt [Timestamp] <p>Time stamp of server creation. Example <code>2016-07-29T13:38:47.520Z</code> </p>
-- @param _ServiceRoleArn [String] <p>The service role ARN used to create the server. </p>
function M.Server(_MaintenanceStatus, _ServerArn, _EngineAttributes, _EngineModel, _Engine, _CloudFormationStackArn, _DisableAutomatedBackup, _BackupRetentionCount, _StatusReason, _PreferredBackupWindow, _InstanceProfileArn, _InstanceType, _PreferredMaintenanceWindow, _Status, _Endpoint, _ServerName, _SecurityGroupIds, _KeyPair, _EngineVersion, _AssociatePublicIpAddress, _SubnetIds, _CreatedAt, _ServiceRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Server")
	local t = { 
		["MaintenanceStatus"] = _MaintenanceStatus,
		["ServerArn"] = _ServerArn,
		["EngineAttributes"] = _EngineAttributes,
		["EngineModel"] = _EngineModel,
		["Engine"] = _Engine,
		["CloudFormationStackArn"] = _CloudFormationStackArn,
		["DisableAutomatedBackup"] = _DisableAutomatedBackup,
		["BackupRetentionCount"] = _BackupRetentionCount,
		["StatusReason"] = _StatusReason,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["InstanceProfileArn"] = _InstanceProfileArn,
		["InstanceType"] = _InstanceType,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["Status"] = _Status,
		["Endpoint"] = _Endpoint,
		["ServerName"] = _ServerName,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["KeyPair"] = _KeyPair,
		["EngineVersion"] = _EngineVersion,
		["AssociatePublicIpAddress"] = _AssociatePublicIpAddress,
		["SubnetIds"] = _SubnetIds,
		["CreatedAt"] = _CreatedAt,
		["ServiceRoleArn"] = _ServiceRoleArn,
	}
	asserts.AssertServer(t)
	return t
end

keys.DescribeNodeAssociationStatusResponse = { ["NodeAssociationStatus"] = true, nil }

function asserts.AssertDescribeNodeAssociationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNodeAssociationStatusResponse to be of type 'table'")
	if struct["NodeAssociationStatus"] then asserts.AssertNodeAssociationStatus(struct["NodeAssociationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNodeAssociationStatusResponse[k], "DescribeNodeAssociationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNodeAssociationStatusResponse
--  
-- @param _NodeAssociationStatus [NodeAssociationStatus] <p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>
function M.DescribeNodeAssociationStatusResponse(_NodeAssociationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNodeAssociationStatusResponse")
	local t = { 
		["NodeAssociationStatus"] = _NodeAssociationStatus,
	}
	asserts.AssertDescribeNodeAssociationStatusResponse(t)
	return t
end

keys.DescribeBackupsRequest = { ["BackupId"] = true, ["ServerName"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeBackupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupsRequest to be of type 'table'")
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBackupsRequest[k], "DescribeBackupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupsRequest
--  
-- @param _BackupId [BackupId] <p>Describes a single backup. </p>
-- @param _ServerName [ServerName] <p>Returns backups for the server with the specified ServerName. </p>
-- @param _NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeBackups</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>
-- @param _MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
function M.DescribeBackupsRequest(_BackupId, _ServerName, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBackupsRequest")
	local t = { 
		["BackupId"] = _BackupId,
		["ServerName"] = _ServerName,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeBackupsRequest(t)
	return t
end

keys.AssociateNodeResponse = { ["NodeAssociationStatusToken"] = true, nil }

function asserts.AssertAssociateNodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateNodeResponse to be of type 'table'")
	if struct["NodeAssociationStatusToken"] then asserts.AssertNodeAssociationStatusToken(struct["NodeAssociationStatusToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateNodeResponse[k], "AssociateNodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateNodeResponse
--  
-- @param _NodeAssociationStatusToken [NodeAssociationStatusToken] <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the association request. </p>
function M.AssociateNodeResponse(_NodeAssociationStatusToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateNodeResponse")
	local t = { 
		["NodeAssociationStatusToken"] = _NodeAssociationStatusToken,
	}
	asserts.AssertAssociateNodeResponse(t)
	return t
end

keys.ServerEvent = { ["ServerName"] = true, ["Message"] = true, ["CreatedAt"] = true, ["LogUrl"] = true, nil }

function asserts.AssertServerEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerEvent to be of type 'table'")
	if struct["ServerName"] then asserts.AssertString(struct["ServerName"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["CreatedAt"] then asserts.AssertTimestamp(struct["CreatedAt"]) end
	if struct["LogUrl"] then asserts.AssertString(struct["LogUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerEvent[k], "ServerEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerEvent
-- <p>An event that is related to the server, such as the start of maintenance or backup. </p>
-- @param _ServerName [String] <p>The name of the server on or for which the event occurred. </p>
-- @param _Message [String] <p>A human-readable informational or status message.</p>
-- @param _CreatedAt [Timestamp] <p>The time when the event occurred. </p>
-- @param _LogUrl [String] <p>The Amazon S3 URL of the event's log file.</p>
function M.ServerEvent(_ServerName, _Message, _CreatedAt, _LogUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerEvent")
	local t = { 
		["ServerName"] = _ServerName,
		["Message"] = _Message,
		["CreatedAt"] = _CreatedAt,
		["LogUrl"] = _LogUrl,
	}
	asserts.AssertServerEvent(t)
	return t
end

keys.DeleteBackupRequest = { ["BackupId"] = true, nil }

function asserts.AssertDeleteBackupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupRequest to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBackupRequest[k], "DeleteBackupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupRequest
--  
-- @param _BackupId [BackupId] <p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>. </p>
-- Required parameter: BackupId
function M.DeleteBackupRequest(_BackupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBackupRequest")
	local t = { 
		["BackupId"] = _BackupId,
	}
	asserts.AssertDeleteBackupRequest(t)
	return t
end

keys.CreateServerRequest = { ["Engine"] = true, ["ServiceRoleArn"] = true, ["SubnetIds"] = true, ["DisableAutomatedBackup"] = true, ["PreferredMaintenanceWindow"] = true, ["ServerName"] = true, ["BackupRetentionCount"] = true, ["InstanceType"] = true, ["PreferredBackupWindow"] = true, ["KeyPair"] = true, ["AssociatePublicIpAddress"] = true, ["SecurityGroupIds"] = true, ["EngineVersion"] = true, ["BackupId"] = true, ["InstanceProfileArn"] = true, ["EngineAttributes"] = true, ["EngineModel"] = true, nil }

function asserts.AssertCreateServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServerRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["InstanceProfileArn"], "Expected key InstanceProfileArn to exist in table")
	assert(struct["InstanceType"], "Expected key InstanceType to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["ServiceRoleArn"] then asserts.AssertServiceRoleArn(struct["ServiceRoleArn"]) end
	if struct["SubnetIds"] then asserts.AssertStrings(struct["SubnetIds"]) end
	if struct["DisableAutomatedBackup"] then asserts.AssertBoolean(struct["DisableAutomatedBackup"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["BackupRetentionCount"] then asserts.AssertBackupRetentionCountDefinition(struct["BackupRetentionCount"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["KeyPair"] then asserts.AssertKeyPair(struct["KeyPair"]) end
	if struct["AssociatePublicIpAddress"] then asserts.AssertBoolean(struct["AssociatePublicIpAddress"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	if struct["InstanceProfileArn"] then asserts.AssertInstanceProfileArn(struct["InstanceProfileArn"]) end
	if struct["EngineAttributes"] then asserts.AssertEngineAttributes(struct["EngineAttributes"]) end
	if struct["EngineModel"] then asserts.AssertString(struct["EngineModel"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServerRequest[k], "CreateServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServerRequest
--  
-- @param _Engine [String] <p> The configuration management engine to use. Valid values include <code>Chef</code>. </p>
-- @param _ServiceRoleArn [ServiceRoleArn] <p> The service role that the AWS OpsWorks for Chef Automate service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-stuff/latest/service-role-creation.yaml. This template creates a CloudFormation stack that includes the service role that you need. </p>
-- @param _SubnetIds [Strings] <p> The IDs of subnets in which to launch the server EC2 instance. </p> <p> Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled. </p> <p> EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled. </p> <p>For more information about supported Amazon EC2 platforms, see <a href="http://docs.aws.amazon.com/https:/docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
-- @param _DisableAutomatedBackup [Boolean] <p> Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>. </p>
-- @param _PreferredMaintenanceWindow [TimeWindowDefinition] <p> The start time for a one-hour period each week during which AWS OpsWorks for Chef Automate performs maintenance on the instance. Valid values must be specified in the following format: <code>DDD:HH:MM</code>. The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information. </p> <p> <b>Example:</b> <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.) </p>
-- @param _ServerName [ServerName] <p> The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters. </p>
-- @param _BackupRetentionCount [BackupRetentionCountDefinition] <p> The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks for Chef Automate deletes the oldest backups if this number is exceeded. The default value is <code>1</code>. </p>
-- @param _InstanceType [String] <p> The Amazon EC2 instance type to use. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code> For example, <code>m4.large</code>. Valid values are <code>t2.medium</code>, <code>m4.large</code>, or <code>m4.2xlarge</code>. </p>
-- @param _PreferredBackupWindow [TimeWindowDefinition] <p> The start time for a one-hour period during which AWS OpsWorks for Chef Automate backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats: </p> <ul> <li> <p> <code>HH:MM</code> for daily backups</p> </li> <li> <p> <code>DDD:HH:MM</code> for weekly backups</p> </li> </ul> <p>The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p> <p> <b>Example:</b> <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p> <p> <b>Example:</b> <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
-- @param _KeyPair [KeyPair] <p> The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH. </p>
-- @param _AssociatePublicIpAddress [Boolean] <p> Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>. </p>
-- @param _SecurityGroupIds [Strings] <p> A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by <code>SubnetIds</code>. </p> <p> If you do not specify this parameter, AWS OpsWorks for Chef Automate creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone). </p>
-- @param _EngineVersion [String] <p> The major release version of the engine that you want to use. Values depend on the engine that you choose. </p>
-- @param _BackupId [BackupId] <p> If you specify this field, AWS OpsWorks for Chef Automate creates the server by using the backup represented by BackupId. </p>
-- @param _InstanceProfileArn [InstanceProfileArn] <p> The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need. </p>
-- @param _EngineAttributes [EngineAttributes] <p>Optional engine attributes on a specified server. </p> <p class="title"> <b>Attributes accepted in a createServer request:</b> </p> <ul> <li> <p> <code>CHEF_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is not stored by AWS OpsWorks for Chef. This private key is required to access the Chef API. When no CHEF_PIVOTAL_KEY is set, one is generated and returned in the response. </p> </li> <li> <p> <code>CHEF_DELIVERY_ADMIN_PASSWORD</code>: The password for the administrative user in the Chef Automate GUI. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#$%^&amp;+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_DELIVERY_ADMIN_PASSWORD is set, one is generated and returned in the response.</p> </li> </ul>
-- @param _EngineModel [String] <p> The engine model, or option. Valid values include <code>Single</code>. </p>
-- Required parameter: ServerName
-- Required parameter: InstanceProfileArn
-- Required parameter: InstanceType
-- Required parameter: ServiceRoleArn
function M.CreateServerRequest(_Engine, _ServiceRoleArn, _SubnetIds, _DisableAutomatedBackup, _PreferredMaintenanceWindow, _ServerName, _BackupRetentionCount, _InstanceType, _PreferredBackupWindow, _KeyPair, _AssociatePublicIpAddress, _SecurityGroupIds, _EngineVersion, _BackupId, _InstanceProfileArn, _EngineAttributes, _EngineModel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServerRequest")
	local t = { 
		["Engine"] = _Engine,
		["ServiceRoleArn"] = _ServiceRoleArn,
		["SubnetIds"] = _SubnetIds,
		["DisableAutomatedBackup"] = _DisableAutomatedBackup,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["ServerName"] = _ServerName,
		["BackupRetentionCount"] = _BackupRetentionCount,
		["InstanceType"] = _InstanceType,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["KeyPair"] = _KeyPair,
		["AssociatePublicIpAddress"] = _AssociatePublicIpAddress,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["EngineVersion"] = _EngineVersion,
		["BackupId"] = _BackupId,
		["InstanceProfileArn"] = _InstanceProfileArn,
		["EngineAttributes"] = _EngineAttributes,
		["EngineModel"] = _EngineModel,
	}
	asserts.AssertCreateServerRequest(t)
	return t
end

keys.DescribeEventsRequest = { ["ServerName"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsRequest[k], "DescribeEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server for which you want to view events.</p>
-- @param _NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- @param _MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
-- Required parameter: ServerName
function M.DescribeEventsRequest(_ServerName, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeEventsRequest(t)
	return t
end

keys.StartMaintenanceRequest = { ["ServerName"] = true, nil }

function asserts.AssertStartMaintenanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMaintenanceRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartMaintenanceRequest[k], "StartMaintenanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMaintenanceRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server on which to run maintenance. </p>
-- Required parameter: ServerName
function M.StartMaintenanceRequest(_ServerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartMaintenanceRequest")
	local t = { 
		["ServerName"] = _ServerName,
	}
	asserts.AssertStartMaintenanceRequest(t)
	return t
end

keys.Backup = { ["ToolsVersion"] = true, ["S3DataUrl"] = true, ["EngineModel"] = true, ["S3DataSize"] = true, ["Engine"] = true, ["Description"] = true, ["S3LogUrl"] = true, ["PreferredBackupWindow"] = true, ["BackupArn"] = true, ["InstanceProfileArn"] = true, ["InstanceType"] = true, ["PreferredMaintenanceWindow"] = true, ["Status"] = true, ["ServerName"] = true, ["SecurityGroupIds"] = true, ["BackupType"] = true, ["KeyPair"] = true, ["EngineVersion"] = true, ["StatusDescription"] = true, ["UserArn"] = true, ["SubnetIds"] = true, ["CreatedAt"] = true, ["BackupId"] = true, ["ServiceRoleArn"] = true, nil }

function asserts.AssertBackup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Backup to be of type 'table'")
	if struct["ToolsVersion"] then asserts.AssertString(struct["ToolsVersion"]) end
	if struct["S3DataUrl"] then asserts.AssertString(struct["S3DataUrl"]) end
	if struct["EngineModel"] then asserts.AssertString(struct["EngineModel"]) end
	if struct["S3DataSize"] then asserts.AssertInteger(struct["S3DataSize"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["S3LogUrl"] then asserts.AssertString(struct["S3LogUrl"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredBackupWindow"]) end
	if struct["BackupArn"] then asserts.AssertString(struct["BackupArn"]) end
	if struct["InstanceProfileArn"] then asserts.AssertString(struct["InstanceProfileArn"]) end
	if struct["InstanceType"] then asserts.AssertString(struct["InstanceType"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertTimeWindowDefinition(struct["PreferredMaintenanceWindow"]) end
	if struct["Status"] then asserts.AssertBackupStatus(struct["Status"]) end
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStrings(struct["SecurityGroupIds"]) end
	if struct["BackupType"] then asserts.AssertBackupType(struct["BackupType"]) end
	if struct["KeyPair"] then asserts.AssertString(struct["KeyPair"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["StatusDescription"] then asserts.AssertString(struct["StatusDescription"]) end
	if struct["UserArn"] then asserts.AssertString(struct["UserArn"]) end
	if struct["SubnetIds"] then asserts.AssertStrings(struct["SubnetIds"]) end
	if struct["CreatedAt"] then asserts.AssertTimestamp(struct["CreatedAt"]) end
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	if struct["ServiceRoleArn"] then asserts.AssertString(struct["ServiceRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Backup[k], "Backup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Backup
-- <p>Describes a single backup. </p>
-- @param _ToolsVersion [String] <p> The version of AWS OpsWorks for Chef Automate-specific tools that is obtained from the server when the backup is created. </p>
-- @param _S3DataUrl [String] <p> This field is deprecated and is no longer used. </p>
-- @param _EngineModel [String] <p> The engine model that is obtained from the server when the backup is created. </p>
-- @param _S3DataSize [Integer] <p> This field is deprecated and is no longer used. </p>
-- @param _Engine [String] <p> The engine type that is obtained from the server when the backup is created. </p>
-- @param _Description [String] <p> A user-provided description for a manual backup. This field is empty for automated backups. </p>
-- @param _S3LogUrl [String] <p> The Amazon S3 URL of the backup's log file. </p>
-- @param _PreferredBackupWindow [TimeWindowDefinition] <p> The preferred backup period that is obtained from the server when the backup is created. </p>
-- @param _BackupArn [String] <p>The ARN of the backup. </p>
-- @param _InstanceProfileArn [String] <p> The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored, you are not required to provide the InstanceProfileArn again if you restore a backup. </p>
-- @param _InstanceType [String] <p> The instance type that is obtained from the server when the backup is created. </p>
-- @param _PreferredMaintenanceWindow [TimeWindowDefinition] <p> The preferred maintenance period that is obtained from the server when the backup is created. </p>
-- @param _Status [BackupStatus] <p>The status of a backup while in progress. </p>
-- @param _ServerName [ServerName] <p> The name of the server from which the backup was made. </p>
-- @param _SecurityGroupIds [Strings] <p> The security group IDs that are obtained from the server when the backup is created. </p>
-- @param _BackupType [BackupType] <p> The backup type. Valid values are <code>automated</code> or <code>manual</code>. </p>
-- @param _KeyPair [String] <p> The key pair that is obtained from the server when the backup is created. </p>
-- @param _EngineVersion [String] <p> The engine version that is obtained from the server when the backup is created. </p>
-- @param _StatusDescription [String] <p> An informational message about backup status. </p>
-- @param _UserArn [String] <p> The IAM user ARN of the requester for manual backups. This field is empty for automated backups. </p>
-- @param _SubnetIds [Strings] <p> The subnet IDs that are obtained from the server when the backup is created. </p>
-- @param _CreatedAt [Timestamp] <p> The time stamp when the backup was created in the database. Example: <code>2016-07-29T13:38:47.520Z</code> </p>
-- @param _BackupId [BackupId] <p> The generated ID of the backup. Example: <code>myServerName-yyyyMMddHHmmssSSS</code> </p>
-- @param _ServiceRoleArn [String] <p> The service role ARN that is obtained from the server when the backup is created. </p>
function M.Backup(_ToolsVersion, _S3DataUrl, _EngineModel, _S3DataSize, _Engine, _Description, _S3LogUrl, _PreferredBackupWindow, _BackupArn, _InstanceProfileArn, _InstanceType, _PreferredMaintenanceWindow, _Status, _ServerName, _SecurityGroupIds, _BackupType, _KeyPair, _EngineVersion, _StatusDescription, _UserArn, _SubnetIds, _CreatedAt, _BackupId, _ServiceRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Backup")
	local t = { 
		["ToolsVersion"] = _ToolsVersion,
		["S3DataUrl"] = _S3DataUrl,
		["EngineModel"] = _EngineModel,
		["S3DataSize"] = _S3DataSize,
		["Engine"] = _Engine,
		["Description"] = _Description,
		["S3LogUrl"] = _S3LogUrl,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["BackupArn"] = _BackupArn,
		["InstanceProfileArn"] = _InstanceProfileArn,
		["InstanceType"] = _InstanceType,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["Status"] = _Status,
		["ServerName"] = _ServerName,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["BackupType"] = _BackupType,
		["KeyPair"] = _KeyPair,
		["EngineVersion"] = _EngineVersion,
		["StatusDescription"] = _StatusDescription,
		["UserArn"] = _UserArn,
		["SubnetIds"] = _SubnetIds,
		["CreatedAt"] = _CreatedAt,
		["BackupId"] = _BackupId,
		["ServiceRoleArn"] = _ServiceRoleArn,
	}
	asserts.AssertBackup(t)
	return t
end

keys.DescribeBackupsResponse = { ["Backups"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeBackupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupsResponse to be of type 'table'")
	if struct["Backups"] then asserts.AssertBackups(struct["Backups"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBackupsResponse[k], "DescribeBackupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupsResponse
--  
-- @param _Backups [Backups] <p>Contains the response to a <code>DescribeBackups</code> request. </p>
-- @param _NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeBackups</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
function M.DescribeBackupsResponse(_Backups, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBackupsResponse")
	local t = { 
		["Backups"] = _Backups,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeBackupsResponse(t)
	return t
end

keys.AssociateNodeRequest = { ["ServerName"] = true, ["NodeName"] = true, ["EngineAttributes"] = true, nil }

function asserts.AssertAssociateNodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateNodeRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["NodeName"], "Expected key NodeName to exist in table")
	assert(struct["EngineAttributes"], "Expected key EngineAttributes to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["NodeName"] then asserts.AssertNodeName(struct["NodeName"]) end
	if struct["EngineAttributes"] then asserts.AssertEngineAttributes(struct["EngineAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateNodeRequest[k], "AssociateNodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateNodeRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server with which to associate the node. </p>
-- @param _NodeName [NodeName] <p>The name of the Chef client node. </p>
-- @param _EngineAttributes [EngineAttributes] <p>Engine attributes used for associating the node. </p> <p class="title"> <b>Attributes accepted in a AssociateNode request:</b> </p> <ul> <li> <p> <code>CHEF_ORGANIZATION</code>: The Chef organization with which the node is associated. By default only one organization named <code>default</code> can exist. </p> </li> <li> <p> <code>CHEF_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API. </p> </li> </ul>
-- Required parameter: ServerName
-- Required parameter: NodeName
-- Required parameter: EngineAttributes
function M.AssociateNodeRequest(_ServerName, _NodeName, _EngineAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateNodeRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["NodeName"] = _NodeName,
		["EngineAttributes"] = _EngineAttributes,
	}
	asserts.AssertAssociateNodeRequest(t)
	return t
end

keys.DescribeNodeAssociationStatusRequest = { ["ServerName"] = true, ["NodeAssociationStatusToken"] = true, nil }

function asserts.AssertDescribeNodeAssociationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNodeAssociationStatusRequest to be of type 'table'")
	assert(struct["NodeAssociationStatusToken"], "Expected key NodeAssociationStatusToken to exist in table")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["NodeAssociationStatusToken"] then asserts.AssertNodeAssociationStatusToken(struct["NodeAssociationStatusToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNodeAssociationStatusRequest[k], "DescribeNodeAssociationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNodeAssociationStatusRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server from which to disassociate the node. </p>
-- @param _NodeAssociationStatusToken [NodeAssociationStatusToken] 
-- Required parameter: NodeAssociationStatusToken
-- Required parameter: ServerName
function M.DescribeNodeAssociationStatusRequest(_ServerName, _NodeAssociationStatusToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNodeAssociationStatusRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["NodeAssociationStatusToken"] = _NodeAssociationStatusToken,
	}
	asserts.AssertDescribeNodeAssociationStatusRequest(t)
	return t
end

keys.UpdateServerEngineAttributesRequest = { ["ServerName"] = true, ["AttributeName"] = true, ["AttributeValue"] = true, nil }

function asserts.AssertUpdateServerEngineAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerEngineAttributesRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["AttributeName"] then asserts.AssertAttributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then asserts.AssertAttributeValue(struct["AttributeValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServerEngineAttributesRequest[k], "UpdateServerEngineAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerEngineAttributesRequest
--  
-- @param _ServerName [ServerName] <p>The name of the server to update. </p>
-- @param _AttributeName [AttributeName] <p>The name of the engine attribute to update. </p>
-- @param _AttributeValue [AttributeValue] <p>The value to set for the attribute. </p>
-- Required parameter: ServerName
-- Required parameter: AttributeName
function M.UpdateServerEngineAttributesRequest(_ServerName, _AttributeName, _AttributeValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerEngineAttributesRequest")
	local t = { 
		["ServerName"] = _ServerName,
		["AttributeName"] = _AttributeName,
		["AttributeValue"] = _AttributeValue,
	}
	asserts.AssertUpdateServerEngineAttributesRequest(t)
	return t
end

keys.InvalidStateException = { ["Message"] = true, nil }

function asserts.AssertInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidStateException[k], "InvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidStateException
-- <p>The resource is in a state that does not allow you to perform a specified action. </p>
-- @param _Message [String] <p>Error or informational message that provides more detail if a resource is in a state that is not valid for performing a specified action. </p>
function M.InvalidStateException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidStateException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidStateException(t)
	return t
end

keys.ResourceAlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The requested resource cannot be created because it already exists. </p>
-- @param _Message [String] <p>Error or informational message in response to a CreateServer request that a resource cannot be created because it already exists. </p>
function M.ResourceAlreadyExistsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

function asserts.AssertBackupStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupStatus to be of type 'string'")
end

--  
function M.BackupStatus(str)
	asserts.AssertBackupStatus(str)
	return str
end

function asserts.AssertMaintenanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceStatus to be of type 'string'")
end

--  
function M.MaintenanceStatus(str)
	asserts.AssertMaintenanceStatus(str)
	return str
end

function asserts.AssertEngineAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected EngineAttributeName to be of type 'string'")
end

--  
function M.EngineAttributeName(str)
	asserts.AssertEngineAttributeName(str)
	return str
end

function asserts.AssertNodeAssociationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected NodeAssociationStatus to be of type 'string'")
end

-- <p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>
function M.NodeAssociationStatus(str)
	asserts.AssertNodeAssociationStatus(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertServiceRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceRoleArn to be of type 'string'")
end

--  
function M.ServiceRoleArn(str)
	asserts.AssertServiceRoleArn(str)
	return str
end

function asserts.AssertTimeWindowDefinition(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeWindowDefinition to be of type 'string'")
end

-- <p> <code>DDD:HH:MM</code> (weekly start time) or <code>HH:MM</code> (daily start time). </p> <p> Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>, <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
function M.TimeWindowDefinition(str)
	asserts.AssertTimeWindowDefinition(str)
	return str
end

function asserts.AssertEngineAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EngineAttributeValue to be of type 'string'")
end

--  
function M.EngineAttributeValue(str)
	asserts.AssertEngineAttributeValue(str)
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

function asserts.AssertNodeAssociationStatusToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NodeAssociationStatusToken to be of type 'string'")
end

--  
function M.NodeAssociationStatusToken(str)
	asserts.AssertNodeAssociationStatusToken(str)
	return str
end

function asserts.AssertNodeName(str)
	assert(str)
	assert(type(str) == "string", "Expected NodeName to be of type 'string'")
end

-- <p>The node name that is used by <code>chef-client</code> for a new node. For more information, see the <a href="http://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names">Chef Documentation</a>. </p>
function M.NodeName(str)
	asserts.AssertNodeName(str)
	return str
end

function asserts.AssertServerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerName to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ServerName(str)
	asserts.AssertServerName(str)
	return str
end

function asserts.AssertBackupType(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupType to be of type 'string'")
end

--  
function M.BackupType(str)
	asserts.AssertBackupType(str)
	return str
end

function asserts.AssertServerStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerStatus to be of type 'string'")
end

--  
function M.ServerStatus(str)
	asserts.AssertServerStatus(str)
	return str
end

function asserts.AssertInstanceProfileArn(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceProfileArn to be of type 'string'")
end

--  
function M.InstanceProfileArn(str)
	asserts.AssertInstanceProfileArn(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertKeyPair(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyPair to be of type 'string'")
end

--  
function M.KeyPair(str)
	asserts.AssertKeyPair(str)
	return str
end

function asserts.AssertBackupId(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupId to be of type 'string'")
	assert(#str <= 79, "Expected string to be max 79 characters")
end

--  
function M.BackupId(str)
	asserts.AssertBackupId(str)
	return str
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

function asserts.AssertBackupRetentionCountDefinition(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BackupRetentionCountDefinition to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BackupRetentionCountDefinition(integer)
	asserts.AssertBackupRetentionCountDefinition(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
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

function asserts.AssertEngineAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected EngineAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEngineAttribute(v)
	end
end

--  
-- List of EngineAttribute objects
function M.EngineAttributes(list)
	asserts.AssertEngineAttributes(list)
	return list
end

function asserts.AssertAccountAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountAttribute(v)
	end
end

-- <p> A list of individual account attributes. </p>
-- List of AccountAttribute objects
function M.AccountAttributes(list)
	asserts.AssertAccountAttributes(list)
	return list
end

function asserts.AssertServerEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerEvents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServerEvent(v)
	end
end

--  
-- List of ServerEvent objects
function M.ServerEvents(list)
	asserts.AssertServerEvents(list)
	return list
end

function asserts.AssertStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected Strings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.Strings(list)
	asserts.AssertStrings(list)
	return list
end

function asserts.AssertServers(list)
	assert(list)
	assert(type(list) == "table", "Expected Servers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServer(v)
	end
end

--  
-- List of Server objects
function M.Servers(list)
	asserts.AssertServers(list)
	return list
end

function asserts.AssertBackups(list)
	assert(list)
	assert(type(list) == "table", "Expected Backups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBackup(v)
	end
end

--  
-- List of Backup objects
function M.Backups(list)
	asserts.AssertBackups(list)
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
