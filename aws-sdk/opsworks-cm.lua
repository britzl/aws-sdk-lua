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
-- &lt;p&gt;The limit of servers or backups has been reached. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Error or informational message that the maximum allowed number of servers or backups has been exceeded. &lt;/p&gt;
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
-- @param Server [Server] &lt;p&gt;Contains the response to an &lt;code&gt;UpdateServerEngineAttributes&lt;/code&gt; request. &lt;/p&gt;
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
-- &lt;p&gt;One or more of the provided request parameters are not valid. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Error or informational message that can contain more detail about a validation failure. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server that you want to back up. &lt;/p&gt;
-- @param Description [String] &lt;p&gt; A user-defined description of the backup. &lt;/p&gt;
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
-- @param Attributes [AccountAttributes] &lt;p&gt; The attributes that are currently set for the account. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The ID of the server to delete.&lt;/p&gt;
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
-- @param Server [Server] &lt;p&gt;Contains the response to a &lt;code&gt;StartMaintenance&lt;/code&gt; request. &lt;/p&gt;
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
-- &lt;p&gt;Stores account attributes. &lt;/p&gt;
-- @param Used [Integer] &lt;p&gt; The current usage, such as the current number of servers that are associated with the account. &lt;/p&gt;
-- @param Name [String] &lt;p&gt; The attribute name. The following are supported attribute names. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;ServerLimit:&lt;/i&gt; The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;ManualBackupLimit:&lt;/i&gt; The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum of 50 manual backups saved. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Maximum [Integer] &lt;p&gt; The maximum allowed value. &lt;/p&gt;
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
-- @param Server [Server] &lt;p&gt;The server that is created by the request. &lt;/p&gt;
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
-- &lt;p&gt;This occurs when the provided nextToken is not valid. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Error or informational message that can contain more detail about a nextToken failure. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server from which to disassociate the node. &lt;/p&gt;
-- @param NodeName [NodeName] &lt;p&gt;The name of the Chef client node. &lt;/p&gt;
-- @param EngineAttributes [EngineAttributes] &lt;p&gt;Engine attributes used for disassociating the node. &lt;/p&gt; &lt;p class=&quot;title&quot;&gt; &lt;b&gt;Attributes accepted in a DisassociateNode request:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_ORGANIZATION&lt;/code&gt;: The Chef organization with which the node was associated. By default only one organization named &lt;code&gt;default&lt;/code&gt; can exist. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- @param NextToken [String] &lt;p&gt;NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call &lt;code&gt;DescribeEvents&lt;/code&gt; again, and assign the token from the previous results as the value of the &lt;code&gt;nextToken&lt;/code&gt; parameter. If there are no more results, the response object's &lt;code&gt;nextToken&lt;/code&gt; parameter value is &lt;code&gt;null&lt;/code&gt;. Setting a &lt;code&gt;nextToken&lt;/code&gt; value that was not returned in your previous results causes an &lt;code&gt;InvalidNextTokenException&lt;/code&gt; to occur. &lt;/p&gt;
-- @param ServerEvents [ServerEvents] &lt;p&gt;Contains the response to a &lt;code&gt;DescribeEvents&lt;/code&gt; request. &lt;/p&gt;
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
-- &lt;p&gt;A name and value pair that is specific to the engine of the server. &lt;/p&gt;
-- @param Name [EngineAttributeName] &lt;p&gt;The name of the engine attribute. &lt;/p&gt;
-- @param Value [EngineAttributeValue] &lt;p&gt;The value of the engine attribute. &lt;/p&gt;
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
-- @param Server [Server] &lt;p&gt;Contains the response to a &lt;code&gt;UpdateServer&lt;/code&gt; request. &lt;/p&gt;
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
-- @param KeyPair [KeyPair] &lt;p&gt; The name of the key pair to set on the new EC2 instance. This can be helpful if the administrator no longer has the SSH key. &lt;/p&gt;
-- @param BackupId [BackupId] &lt;p&gt; The ID of the backup that you want to use to restore a server. &lt;/p&gt;
-- @param ServerName [ServerName] &lt;p&gt; The name of the server that you want to restore. &lt;/p&gt;
-- @param InstanceType [String] &lt;p&gt; The type of the instance to create. Valid values must be specified in the following format: &lt;code&gt;^([cm][34]|t2).*&lt;/code&gt; For example, &lt;code&gt;m4.large&lt;/code&gt;. Valid values are &lt;code&gt;t2.medium&lt;/code&gt;, &lt;code&gt;m4.large&lt;/code&gt;, and &lt;code&gt;m4.2xlarge&lt;/code&gt;. If you do not specify this parameter, RestoreServer uses the instance type from the specified backup. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server to update. &lt;/p&gt;
-- @param BackupRetentionCount [Integer] &lt;p&gt;Sets the number of automated backups that you want to keep. &lt;/p&gt;
-- @param DisableAutomatedBackup [Boolean] &lt;p&gt;Setting DisableAutomatedBackup to &lt;code&gt;true&lt;/code&gt; disables automated or scheduled backups. Automated backups are enabled by default. &lt;/p&gt;
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
-- @param Backup [Backup] &lt;p&gt;Backup created by request.&lt;/p&gt;
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
-- &lt;p&gt;The requested resource does not exist, or access was denied. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Error or informational message that can contain more detail about problems locating or accessing a resource. &lt;/p&gt;
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
-- @param NodeAssociationStatusToken [NodeAssociationStatusToken] &lt;p&gt;Contains a token which can be passed to the &lt;code&gt;DescribeNodeAssociationStatus&lt;/code&gt; API call to get the status of the disassociation request. &lt;/p&gt;
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
-- @param NextToken [String] &lt;p&gt;NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call &lt;code&gt;DescribeServers&lt;/code&gt; again, and assign the token from the previous results as the value of the &lt;code&gt;nextToken&lt;/code&gt; parameter. If there are no more results, the response object's &lt;code&gt;nextToken&lt;/code&gt; parameter value is &lt;code&gt;null&lt;/code&gt;. Setting a &lt;code&gt;nextToken&lt;/code&gt; value that was not returned in your previous results causes an &lt;code&gt;InvalidNextTokenException&lt;/code&gt; to occur. &lt;/p&gt;
-- @param Servers [Servers] &lt;p&gt;Contains the response to a &lt;code&gt;DescribeServers&lt;/code&gt; request. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;Describes the server with the specified ServerName.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call &lt;code&gt;DescribeServers&lt;/code&gt; again, and assign the token from the previous results as the value of the &lt;code&gt;nextToken&lt;/code&gt; parameter. If there are no more results, the response object's &lt;code&gt;nextToken&lt;/code&gt; parameter value is &lt;code&gt;null&lt;/code&gt;. Setting a &lt;code&gt;nextToken&lt;/code&gt; value that was not returned in your previous results causes an &lt;code&gt;InvalidNextTokenException&lt;/code&gt; to occur. &lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a &lt;code&gt;NextToken&lt;/code&gt; value that you can assign to the &lt;code&gt;NextToken&lt;/code&gt; request parameter to get the next set of results. &lt;/p&gt;
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
-- &lt;p&gt;Describes a configuration management server. &lt;/p&gt;
-- @param MaintenanceStatus [MaintenanceStatus] &lt;p&gt;The status of the most recent server maintenance run. Shows &lt;code&gt;SUCCESS&lt;/code&gt; or &lt;code&gt;FAILED&lt;/code&gt;. &lt;/p&gt;
-- @param ServerArn [String] &lt;p&gt;The ARN of the server. &lt;/p&gt;
-- @param EngineAttributes [EngineAttributes] &lt;p&gt;The response of a createServer() request returns the master credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks for Chef Automate; they are returned only as part of the result of createServer(). &lt;/p&gt; &lt;p class=&quot;title&quot;&gt; &lt;b&gt;Attributes returned in a createServer response:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_PIVOTAL_KEY&lt;/code&gt;: A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_STARTER_KIT&lt;/code&gt;: A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EngineModel [String] &lt;p&gt;The engine model of the server. The valid value in this release is &lt;code&gt;Single&lt;/code&gt;. &lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The engine type of the server. The valid value in this release is &lt;code&gt;Chef&lt;/code&gt;. &lt;/p&gt;
-- @param CloudFormationStackArn [String] &lt;p&gt;The ARN of the CloudFormation stack that was used to create the server. &lt;/p&gt;
-- @param DisableAutomatedBackup [Boolean] &lt;p&gt;Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount. &lt;/p&gt;
-- @param BackupRetentionCount [Integer] &lt;p&gt;The number of automated backups to keep. &lt;/p&gt;
-- @param StatusReason [String] &lt;p&gt; Depending on the server status, this field has either a human-readable message (such as a create or backup error), or an escaped block of JSON (used for health check results). &lt;/p&gt;
-- @param PreferredBackupWindow [TimeWindowDefinition] &lt;p&gt;The preferred backup period specified for the server. &lt;/p&gt;
-- @param InstanceProfileArn [String] &lt;p&gt;The instance profile ARN of the server. &lt;/p&gt;
-- @param InstanceType [String] &lt;p&gt; The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console. &lt;/p&gt;
-- @param PreferredMaintenanceWindow [TimeWindowDefinition] &lt;p&gt;The preferred maintenance period specified for the server. &lt;/p&gt;
-- @param Status [ServerStatus] &lt;p&gt; The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server, as well as the server's health state. &lt;/p&gt;
-- @param Endpoint [String] &lt;p&gt; A DNS name that can be used to access the engine. Example: &lt;code&gt;myserver-asdfghjkl.us-east-1.opsworks.io&lt;/code&gt; &lt;/p&gt;
-- @param ServerName [String] &lt;p&gt;The name of the server. &lt;/p&gt;
-- @param SecurityGroupIds [Strings] &lt;p&gt; The security group IDs for the server, as specified in the CloudFormation stack. These might not be the same security groups that are shown in the EC2 console. &lt;/p&gt;
-- @param KeyPair [String] &lt;p&gt;The key pair associated with the server. &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The engine version of the server. Because Chef is the engine available in this release, the valid value for EngineVersion is &lt;code&gt;12&lt;/code&gt;. &lt;/p&gt;
-- @param AssociatePublicIpAddress [Boolean] &lt;p&gt;Associate a public IP address with a server that you are launching. &lt;/p&gt;
-- @param SubnetIds [Strings] &lt;p&gt; The subnet IDs specified in a CreateServer request. &lt;/p&gt;
-- @param CreatedAt [Timestamp] &lt;p&gt;Time stamp of server creation. Example &lt;code&gt;2016-07-29T13:38:47.520Z&lt;/code&gt; &lt;/p&gt;
-- @param ServiceRoleArn [String] &lt;p&gt;The service role ARN used to create the server. &lt;/p&gt;
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
-- @param NodeAssociationStatus [NodeAssociationStatus] &lt;p&gt;The status of the association or disassociation request. &lt;/p&gt; &lt;p class=&quot;title&quot;&gt; &lt;b&gt;Possible values:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SUCCESS&lt;/code&gt;: The association or disassociation succeeded. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FAILED&lt;/code&gt;: The association or disassociation failed. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;IN_PROGRESS&lt;/code&gt;: The association or disassociation is still in progress. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- @param BackupId [BackupId] &lt;p&gt;Describes a single backup. &lt;/p&gt;
-- @param ServerName [ServerName] &lt;p&gt;Returns backups for the server with the specified ServerName. &lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call &lt;code&gt;DescribeBackups&lt;/code&gt; again, and assign the token from the previous results as the value of the &lt;code&gt;nextToken&lt;/code&gt; parameter. If there are no more results, the response object's &lt;code&gt;nextToken&lt;/code&gt; parameter value is &lt;code&gt;null&lt;/code&gt;. Setting a &lt;code&gt;nextToken&lt;/code&gt; value that was not returned in your previous results causes an &lt;code&gt;InvalidNextTokenException&lt;/code&gt; to occur.&lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a &lt;code&gt;NextToken&lt;/code&gt; value that you can assign to the &lt;code&gt;NextToken&lt;/code&gt; request parameter to get the next set of results. &lt;/p&gt;
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
-- @param NodeAssociationStatusToken [NodeAssociationStatusToken] &lt;p&gt;Contains a token which can be passed to the &lt;code&gt;DescribeNodeAssociationStatus&lt;/code&gt; API call to get the status of the association request. &lt;/p&gt;
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
-- &lt;p&gt;An event that is related to the server, such as the start of maintenance or backup. &lt;/p&gt;
-- @param ServerName [String] &lt;p&gt;The name of the server on or for which the event occurred. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;A human-readable informational or status message.&lt;/p&gt;
-- @param CreatedAt [Timestamp] &lt;p&gt;The time when the event occurred. &lt;/p&gt;
-- @param LogUrl [String] &lt;p&gt;The Amazon S3 URL of the event's log file.&lt;/p&gt;
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
-- @param BackupId [BackupId] &lt;p&gt;The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format &lt;code&gt;ServerName-yyyyMMddHHmmssSSS&lt;/code&gt;. &lt;/p&gt;
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
-- @param Engine [String] &lt;p&gt; The configuration management engine to use. Valid values include &lt;code&gt;Chef&lt;/code&gt;. &lt;/p&gt;
-- @param ServiceRoleArn [ServiceRoleArn] &lt;p&gt; The service role that the AWS OpsWorks for Chef Automate service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-stuff/latest/service-role-creation.yaml. This template creates a CloudFormation stack that includes the service role that you need. &lt;/p&gt;
-- @param SubnetIds [Strings] &lt;p&gt; The IDs of subnets in which to launch the server EC2 instance. &lt;/p&gt; &lt;p&gt; Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have &quot;Auto Assign Public IP&quot; enabled. &lt;/p&gt; &lt;p&gt; EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have &quot;Auto Assign Public IP&quot; enabled. &lt;/p&gt; &lt;p&gt;For more information about supported Amazon EC2 platforms, see &lt;a href=&quot;http://docs.aws.amazon.com/https:/docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html&quot;&gt;Supported Platforms&lt;/a&gt;.&lt;/p&gt;
-- @param DisableAutomatedBackup [Boolean] &lt;p&gt; Enable or disable scheduled backups. Valid values are &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;. The default value is &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param PreferredMaintenanceWindow [TimeWindowDefinition] &lt;p&gt; The start time for a one-hour period each week during which AWS OpsWorks for Chef Automate performs maintenance on the instance. Valid values must be specified in the following format: &lt;code&gt;DDD:HH:MM&lt;/code&gt;. The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See &lt;code&gt;TimeWindowDefinition&lt;/code&gt; for more information. &lt;/p&gt; &lt;p&gt; &lt;b&gt;Example:&lt;/b&gt; &lt;code&gt;Mon:08:00&lt;/code&gt;, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.) &lt;/p&gt;
-- @param ServerName [ServerName] &lt;p&gt; The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters. &lt;/p&gt;
-- @param BackupRetentionCount [BackupRetentionCountDefinition] &lt;p&gt; The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks for Chef Automate deletes the oldest backups if this number is exceeded. The default value is &lt;code&gt;1&lt;/code&gt;. &lt;/p&gt;
-- @param InstanceType [String] &lt;p&gt; The Amazon EC2 instance type to use. Valid values must be specified in the following format: &lt;code&gt;^([cm][34]|t2).*&lt;/code&gt; For example, &lt;code&gt;m4.large&lt;/code&gt;. Valid values are &lt;code&gt;t2.medium&lt;/code&gt;, &lt;code&gt;m4.large&lt;/code&gt;, or &lt;code&gt;m4.2xlarge&lt;/code&gt;. &lt;/p&gt;
-- @param PreferredBackupWindow [TimeWindowDefinition] &lt;p&gt; The start time for a one-hour period during which AWS OpsWorks for Chef Automate backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;HH:MM&lt;/code&gt; for daily backups&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DDD:HH:MM&lt;/code&gt; for weekly backups&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Example:&lt;/b&gt; &lt;code&gt;08:00&lt;/code&gt;, which represents a daily start time of 08:00 UTC.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Example:&lt;/b&gt; &lt;code&gt;Mon:08:00&lt;/code&gt;, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)&lt;/p&gt;
-- @param KeyPair [KeyPair] &lt;p&gt; The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH. &lt;/p&gt;
-- @param AssociatePublicIpAddress [Boolean] &lt;p&gt; Associate a public IP address with a server that you are launching. Valid values are &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt;. The default value is &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
-- @param SecurityGroupIds [Strings] &lt;p&gt; A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by &lt;code&gt;SubnetIds&lt;/code&gt;. &lt;/p&gt; &lt;p&gt; If you do not specify this parameter, AWS OpsWorks for Chef Automate creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone). &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt; The major release version of the engine that you want to use. Values depend on the engine that you choose. &lt;/p&gt;
-- @param BackupId [BackupId] &lt;p&gt; If you specify this field, AWS OpsWorks for Chef Automate creates the server by using the backup represented by BackupId. &lt;/p&gt;
-- @param InstanceProfileArn [InstanceProfileArn] &lt;p&gt; The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need. &lt;/p&gt;
-- @param EngineAttributes [EngineAttributes] &lt;p&gt;Optional engine attributes on a specified server. &lt;/p&gt; &lt;p class=&quot;title&quot;&gt; &lt;b&gt;Attributes accepted in a createServer request:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_PIVOTAL_KEY&lt;/code&gt;: A base64-encoded RSA private key that is not stored by AWS OpsWorks for Chef. This private key is required to access the Chef API. When no CHEF_PIVOTAL_KEY is set, one is generated and returned in the response. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_DELIVERY_ADMIN_PASSWORD&lt;/code&gt;: The password for the administrative user in the Chef Automate GUI. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#$%^&amp;amp;+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_DELIVERY_ADMIN_PASSWORD is set, one is generated and returned in the response.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EngineModel [String] &lt;p&gt; The engine model, or option. Valid values include &lt;code&gt;Single&lt;/code&gt;. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server for which you want to view events.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call &lt;code&gt;DescribeEvents&lt;/code&gt; again, and assign the token from the previous results as the value of the &lt;code&gt;nextToken&lt;/code&gt; parameter. If there are no more results, the response object's &lt;code&gt;nextToken&lt;/code&gt; parameter value is &lt;code&gt;null&lt;/code&gt;. Setting a &lt;code&gt;nextToken&lt;/code&gt; value that was not returned in your previous results causes an &lt;code&gt;InvalidNextTokenException&lt;/code&gt; to occur. &lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a &lt;code&gt;NextToken&lt;/code&gt; value that you can assign to the &lt;code&gt;NextToken&lt;/code&gt; request parameter to get the next set of results. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server on which to run maintenance. &lt;/p&gt;
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
-- &lt;p&gt;Describes a single backup. &lt;/p&gt;
-- @param ToolsVersion [String] &lt;p&gt; The version of AWS OpsWorks for Chef Automate-specific tools that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param S3DataUrl [String] &lt;p&gt; This field is deprecated and is no longer used. &lt;/p&gt;
-- @param EngineModel [String] &lt;p&gt; The engine model that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param S3DataSize [Integer] &lt;p&gt; This field is deprecated and is no longer used. &lt;/p&gt;
-- @param Engine [String] &lt;p&gt; The engine type that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param Description [String] &lt;p&gt; A user-provided description for a manual backup. This field is empty for automated backups. &lt;/p&gt;
-- @param S3LogUrl [String] &lt;p&gt; The Amazon S3 URL of the backup's log file. &lt;/p&gt;
-- @param PreferredBackupWindow [TimeWindowDefinition] &lt;p&gt; The preferred backup period that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param BackupArn [String] &lt;p&gt;The ARN of the backup. &lt;/p&gt;
-- @param InstanceProfileArn [String] &lt;p&gt; The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored, you are not required to provide the InstanceProfileArn again if you restore a backup. &lt;/p&gt;
-- @param InstanceType [String] &lt;p&gt; The instance type that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param PreferredMaintenanceWindow [TimeWindowDefinition] &lt;p&gt; The preferred maintenance period that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param Status [BackupStatus] &lt;p&gt;The status of a backup while in progress. &lt;/p&gt;
-- @param ServerName [ServerName] &lt;p&gt; The name of the server from which the backup was made. &lt;/p&gt;
-- @param SecurityGroupIds [Strings] &lt;p&gt; The security group IDs that are obtained from the server when the backup is created. &lt;/p&gt;
-- @param BackupType [BackupType] &lt;p&gt; The backup type. Valid values are &lt;code&gt;automated&lt;/code&gt; or &lt;code&gt;manual&lt;/code&gt;. &lt;/p&gt;
-- @param KeyPair [String] &lt;p&gt; The key pair that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt; The engine version that is obtained from the server when the backup is created. &lt;/p&gt;
-- @param StatusDescription [String] &lt;p&gt; An informational message about backup status. &lt;/p&gt;
-- @param UserArn [String] &lt;p&gt; The IAM user ARN of the requester for manual backups. This field is empty for automated backups. &lt;/p&gt;
-- @param SubnetIds [Strings] &lt;p&gt; The subnet IDs that are obtained from the server when the backup is created. &lt;/p&gt;
-- @param CreatedAt [Timestamp] &lt;p&gt; The time stamp when the backup was created in the database. Example: &lt;code&gt;2016-07-29T13:38:47.520Z&lt;/code&gt; &lt;/p&gt;
-- @param BackupId [BackupId] &lt;p&gt; The generated ID of the backup. Example: &lt;code&gt;myServerName-yyyyMMddHHmmssSSS&lt;/code&gt; &lt;/p&gt;
-- @param ServiceRoleArn [String] &lt;p&gt; The service role ARN that is obtained from the server when the backup is created. &lt;/p&gt;
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
-- @param Backups [Backups] &lt;p&gt;Contains the response to a &lt;code&gt;DescribeBackups&lt;/code&gt; request. &lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call &lt;code&gt;DescribeBackups&lt;/code&gt; again, and assign the token from the previous results as the value of the &lt;code&gt;nextToken&lt;/code&gt; parameter. If there are no more results, the response object's &lt;code&gt;nextToken&lt;/code&gt; parameter value is &lt;code&gt;null&lt;/code&gt;. Setting a &lt;code&gt;nextToken&lt;/code&gt; value that was not returned in your previous results causes an &lt;code&gt;InvalidNextTokenException&lt;/code&gt; to occur. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server with which to associate the node. &lt;/p&gt;
-- @param NodeName [NodeName] &lt;p&gt;The name of the Chef client node. &lt;/p&gt;
-- @param EngineAttributes [EngineAttributes] &lt;p&gt;Engine attributes used for associating the node. &lt;/p&gt; &lt;p class=&quot;title&quot;&gt; &lt;b&gt;Attributes accepted in a AssociateNode request:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_ORGANIZATION&lt;/code&gt;: The Chef organization with which the node is associated. By default only one organization named &lt;code&gt;default&lt;/code&gt; can exist. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CHEF_NODE_PUBLIC_KEY&lt;/code&gt;: A PEM-formatted public key. This key is required for the &lt;code&gt;chef-client&lt;/code&gt; agent to access the Chef API. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server from which to disassociate the node. &lt;/p&gt;
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
-- @param ServerName [ServerName] &lt;p&gt;The name of the server to update. &lt;/p&gt;
-- @param AttributeName [AttributeName] &lt;p&gt;The name of the engine attribute to update. &lt;/p&gt;
-- @param AttributeValue [AttributeValue] &lt;p&gt;The value to set for the attribute. &lt;/p&gt;
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
-- &lt;p&gt;The resource is in a state that does not allow you to perform a specified action. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Error or informational message that provides more detail if a resource is in a state that is not valid for performing a specified action. &lt;/p&gt;
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
-- &lt;p&gt;The requested resource cannot be created because it already exists. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Error or informational message in response to a CreateServer request that a resource cannot be created because it already exists. &lt;/p&gt;
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

-- &lt;p&gt;The status of the association or disassociation request. &lt;/p&gt; &lt;p class=&quot;title&quot;&gt; &lt;b&gt;Possible values:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SUCCESS&lt;/code&gt;: The association or disassociation succeeded. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FAILED&lt;/code&gt;: The association or disassociation failed. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;IN_PROGRESS&lt;/code&gt;: The association or disassociation is still in progress. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
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

-- &lt;p&gt; &lt;code&gt;DDD:HH:MM&lt;/code&gt; (weekly start time) or &lt;code&gt;HH:MM&lt;/code&gt; (daily start time). &lt;/p&gt; &lt;p&gt; Time windows always use coordinated universal time (UTC). Valid strings for day of week (&lt;code&gt;DDD&lt;/code&gt;) are: &lt;code&gt;Mon&lt;/code&gt;, &lt;code&gt;Tue&lt;/code&gt;, &lt;code&gt;Wed&lt;/code&gt;, &lt;code&gt;Thr&lt;/code&gt;, &lt;code&gt;Fri&lt;/code&gt;, &lt;code&gt;Sat&lt;/code&gt;, or &lt;code&gt;Sun&lt;/code&gt;.&lt;/p&gt;
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

-- &lt;p&gt;The node name that is used by &lt;code&gt;chef-client&lt;/code&gt; for a new node. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names&quot;&gt;Chef Documentation&lt;/a&gt;. &lt;/p&gt;
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

-- &lt;p&gt; A list of individual account attributes. &lt;/p&gt;
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
