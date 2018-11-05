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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Server [Server] <p>Contains the response to an <code>UpdateServerEngineAttributes</code> request. </p>
-- @return UpdateServerEngineAttributesResponse structure as a key-value pair table
function M.UpdateServerEngineAttributesResponse(args)
	assert(args, "You must provide an argument table when creating UpdateServerEngineAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Server"] = args["Server"],
	}
	asserts.AssertUpdateServerEngineAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportServerEngineAttributeResponse = { ["ServerName"] = true, ["EngineAttribute"] = true, nil }

function asserts.AssertExportServerEngineAttributeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportServerEngineAttributeResponse to be of type 'table'")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["EngineAttribute"] then asserts.AssertEngineAttribute(struct["EngineAttribute"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportServerEngineAttributeResponse[k], "ExportServerEngineAttributeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportServerEngineAttributeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The requested ServerName. </p>
-- * EngineAttribute [EngineAttribute] <p>The requested engine attribute pair with attribute name and value. </p>
-- @return ExportServerEngineAttributeResponse structure as a key-value pair table
function M.ExportServerEngineAttributeResponse(args)
	assert(args, "You must provide an argument table when creating ExportServerEngineAttributeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["EngineAttribute"] = args["EngineAttribute"],
	}
	asserts.AssertExportServerEngineAttributeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server that you want to back up. </p>
-- * Description [String] <p> A user-defined description of the backup. </p>
-- Required key: ServerName
-- @return CreateBackupRequest structure as a key-value pair table
function M.CreateBackupRequest(args)
	assert(args, "You must provide an argument table when creating CreateBackupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateBackupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AccountAttributes] <p> The attributes that are currently set for the account. </p>
-- @return DescribeAccountAttributesResponse structure as a key-value pair table
function M.DescribeAccountAttributesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAccountAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertDescribeAccountAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The ID of the server to delete.</p>
-- Required key: ServerName
-- @return DeleteServerRequest structure as a key-value pair table
function M.DeleteServerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
	}
	asserts.AssertDeleteServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Server [Server] <p>Contains the response to a <code>StartMaintenance</code> request. </p>
-- @return StartMaintenanceResponse structure as a key-value pair table
function M.StartMaintenanceResponse(args)
	assert(args, "You must provide an argument table when creating StartMaintenanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Server"] = args["Server"],
	}
	asserts.AssertStartMaintenanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Used [Integer] <p> The current usage, such as the current number of servers that are associated with the account. </p>
-- * Name [String] <p> The attribute name. The following are supported attribute names. </p> <ul> <li> <p> <i>ServerLimit:</i> The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers. </p> </li> <li> <p> <i>ManualBackupLimit:</i> The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum of 50 manual backups saved. </p> </li> </ul>
-- * Maximum [Integer] <p> The maximum allowed value. </p>
-- @return AccountAttribute structure as a key-value pair table
function M.AccountAttribute(args)
	assert(args, "You must provide an argument table when creating AccountAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Used"] = args["Used"],
		["Name"] = args["Name"],
		["Maximum"] = args["Maximum"],
	}
	asserts.AssertAccountAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Server [Server] <p>The server that is created by the request. </p>
-- @return CreateServerResponse structure as a key-value pair table
function M.CreateServerResponse(args)
	assert(args, "You must provide an argument table when creating CreateServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Server"] = args["Server"],
	}
	asserts.AssertCreateServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server from which to disassociate the node. </p>
-- * NodeName [NodeName] <p>The name of the client node. </p>
-- * EngineAttributes [EngineAttributes] <p>Engine attributes that are used for disassociating the node. No attributes are required for Puppet. </p> <p class="title"> <b>Attributes required in a DisassociateNode request for Chef</b> </p> <ul> <li> <p> <code>CHEF_ORGANIZATION</code>: The Chef organization with which the node was associated. By default only one organization named <code>default</code> can exist. </p> </li> </ul>
-- Required key: ServerName
-- Required key: NodeName
-- @return DisassociateNodeRequest structure as a key-value pair table
function M.DisassociateNodeRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateNodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["NodeName"] = args["NodeName"],
		["EngineAttributes"] = args["EngineAttributes"],
	}
	asserts.AssertDisassociateNodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- * ServerEvents [ServerEvents] <p>Contains the response to a <code>DescribeEvents</code> request. </p>
-- @return DescribeEventsResponse structure as a key-value pair table
function M.DescribeEventsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ServerEvents"] = args["ServerEvents"],
	}
	asserts.AssertDescribeEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [EngineAttributeName] <p>The name of the engine attribute. </p>
-- * Value [EngineAttributeValue] <p>The value of the engine attribute. </p>
-- @return EngineAttribute structure as a key-value pair table
function M.EngineAttribute(args)
	assert(args, "You must provide an argument table when creating EngineAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertEngineAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteServerResponse structure as a key-value pair table
function M.DeleteServerResponse(args)
	assert(args, "You must provide an argument table when creating DeleteServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Server [Server] <p>Contains the response to a <code>UpdateServer</code> request. </p>
-- @return UpdateServerResponse structure as a key-value pair table
function M.UpdateServerResponse(args)
	assert(args, "You must provide an argument table when creating UpdateServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Server"] = args["Server"],
	}
	asserts.AssertUpdateServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyPair [KeyPair] <p> The name of the key pair to set on the new EC2 instance. This can be helpful if the administrator no longer has the SSH key. </p>
-- * BackupId [BackupId] <p> The ID of the backup that you want to use to restore a server. </p>
-- * ServerName [ServerName] <p> The name of the server that you want to restore. </p>
-- * InstanceType [String] <p> The type of the instance to create. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code> For example, <code>m4.large</code>. Valid values are <code>t2.medium</code>, <code>m4.large</code>, and <code>m4.2xlarge</code>. If you do not specify this parameter, RestoreServer uses the instance type from the specified backup. </p>
-- Required key: BackupId
-- Required key: ServerName
-- @return RestoreServerRequest structure as a key-value pair table
function M.RestoreServerRequest(args)
	assert(args, "You must provide an argument table when creating RestoreServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyPair"] = args["KeyPair"],
		["BackupId"] = args["BackupId"],
		["ServerName"] = args["ServerName"],
		["InstanceType"] = args["InstanceType"],
	}
	asserts.AssertRestoreServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RestoreServerResponse structure as a key-value pair table
function M.RestoreServerResponse(args)
	assert(args, "You must provide an argument table when creating RestoreServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRestoreServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteBackupResponse structure as a key-value pair table
function M.DeleteBackupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteBackupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteBackupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Backup [Backup] <p>Backup created by request.</p>
-- @return CreateBackupResponse structure as a key-value pair table
function M.CreateBackupResponse(args)
	assert(args, "You must provide an argument table when creating CreateBackupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Backup"] = args["Backup"],
	}
	asserts.AssertCreateBackupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeAccountAttributesRequest structure as a key-value pair table
function M.DescribeAccountAttributesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAccountAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeAccountAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeAssociationStatusToken [NodeAssociationStatusToken] <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the disassociation request. </p>
-- @return DisassociateNodeResponse structure as a key-value pair table
function M.DisassociateNodeResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateNodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeAssociationStatusToken"] = args["NodeAssociationStatusToken"],
	}
	asserts.AssertDisassociateNodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>This is not currently implemented for <code>DescribeServers</code> requests. </p>
-- * Servers [Servers] <p>Contains the response to a <code>DescribeServers</code> request.</p> <p> <i>For Puppet Server:</i> <code>DescribeServersResponse$Servers$EngineAttributes</code> contains PUPPET_API_CA_CERT. This is the PEM-encoded CA certificate that is used by the Puppet API over TCP port number 8140. The CA certificate is also used to sign node certificates.</p>
-- @return DescribeServersResponse structure as a key-value pair table
function M.DescribeServersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeServersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Servers"] = args["Servers"],
	}
	asserts.AssertDescribeServersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>Describes the server with the specified ServerName.</p>
-- * NextToken [NextToken] <p>This is not currently implemented for <code>DescribeServers</code> requests. </p>
-- * MaxResults [MaxResults] <p>This is not currently implemented for <code>DescribeServers</code> requests. </p>
-- @return DescribeServersRequest structure as a key-value pair table
function M.DescribeServersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeServersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeServersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaintenanceStatus [MaintenanceStatus] <p>The status of the most recent server maintenance run. Shows <code>SUCCESS</code> or <code>FAILED</code>. </p>
-- * ServerArn [String] <p>The ARN of the server. </p>
-- * EngineAttributes [EngineAttributes] <p>The response of a createServer() request returns the master credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks CM; they are returned only as part of the result of createServer(). </p> <p class="title"> <b>Attributes returned in a createServer response for Chef</b> </p> <ul> <li> <p> <code>CHEF_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.</p> </li> <li> <p> <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands.</p> </li> </ul> <p class="title"> <b>Attributes returned in a createServer response for Puppet</b> </p> <ul> <li> <p> <code>PUPPET_STARTER_KIT</code>: A base64-encoded ZIP file. The ZIP file contains a Puppet starter kit, including a README and a required private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents.</p> </li> <li> <p> <code>PUPPET_ADMIN_PASSWORD</code>: An administrator password that you can use to sign in to the Puppet Enterprise console after the server is online.</p> </li> </ul>
-- * EngineModel [String] <p>The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef. </p>
-- * Engine [String] <p>The engine type of the server. Valid values in this release include <code>Chef</code> and <code>Puppet</code>. </p>
-- * CloudFormationStackArn [String] <p>The ARN of the CloudFormation stack that was used to create the server. </p>
-- * DisableAutomatedBackup [Boolean] <p>Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount. </p>
-- * BackupRetentionCount [Integer] <p>The number of automated backups to keep. </p>
-- * StatusReason [String] <p> Depending on the server status, this field has either a human-readable message (such as a create or backup error), or an escaped block of JSON (used for health check results). </p>
-- * PreferredBackupWindow [TimeWindowDefinition] <p>The preferred backup period specified for the server. </p>
-- * InstanceProfileArn [String] <p>The instance profile ARN of the server. </p>
-- * InstanceType [String] <p> The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console. </p>
-- * PreferredMaintenanceWindow [TimeWindowDefinition] <p>The preferred maintenance period specified for the server. </p>
-- * Status [ServerStatus] <p> The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server, as well as the server's health state. </p>
-- * Endpoint [String] <p> A DNS name that can be used to access the engine. Example: <code>myserver-asdfghjkl.us-east-1.opsworks.io</code> </p>
-- * ServerName [String] <p>The name of the server. </p>
-- * SecurityGroupIds [Strings] <p> The security group IDs for the server, as specified in the CloudFormation stack. These might not be the same security groups that are shown in the EC2 console. </p>
-- * KeyPair [String] <p>The key pair associated with the server. </p>
-- * EngineVersion [String] <p>The engine version of the server. For a Chef server, the valid value for EngineVersion is currently <code>12</code>. For a Puppet server, the valid value is <code>2017</code>. </p>
-- * AssociatePublicIpAddress [Boolean] <p>Associate a public IP address with a server that you are launching. </p>
-- * SubnetIds [Strings] <p> The subnet IDs specified in a CreateServer request. </p>
-- * CreatedAt [Timestamp] <p>Time stamp of server creation. Example <code>2016-07-29T13:38:47.520Z</code> </p>
-- * ServiceRoleArn [String] <p>The service role ARN used to create the server. </p>
-- @return Server structure as a key-value pair table
function M.Server(args)
	assert(args, "You must provide an argument table when creating Server")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaintenanceStatus"] = args["MaintenanceStatus"],
		["ServerArn"] = args["ServerArn"],
		["EngineAttributes"] = args["EngineAttributes"],
		["EngineModel"] = args["EngineModel"],
		["Engine"] = args["Engine"],
		["CloudFormationStackArn"] = args["CloudFormationStackArn"],
		["DisableAutomatedBackup"] = args["DisableAutomatedBackup"],
		["BackupRetentionCount"] = args["BackupRetentionCount"],
		["StatusReason"] = args["StatusReason"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["InstanceProfileArn"] = args["InstanceProfileArn"],
		["InstanceType"] = args["InstanceType"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Status"] = args["Status"],
		["Endpoint"] = args["Endpoint"],
		["ServerName"] = args["ServerName"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["KeyPair"] = args["KeyPair"],
		["EngineVersion"] = args["EngineVersion"],
		["AssociatePublicIpAddress"] = args["AssociatePublicIpAddress"],
		["SubnetIds"] = args["SubnetIds"],
		["CreatedAt"] = args["CreatedAt"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
	}
	asserts.AssertServer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNodeAssociationStatusResponse = { ["NodeAssociationStatus"] = true, ["EngineAttributes"] = true, nil }

function asserts.AssertDescribeNodeAssociationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNodeAssociationStatusResponse to be of type 'table'")
	if struct["NodeAssociationStatus"] then asserts.AssertNodeAssociationStatus(struct["NodeAssociationStatus"]) end
	if struct["EngineAttributes"] then asserts.AssertEngineAttributes(struct["EngineAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNodeAssociationStatusResponse[k], "DescribeNodeAssociationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNodeAssociationStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeAssociationStatus [NodeAssociationStatus] <p>The status of the association or disassociation request. </p> <p class="title"> <b>Possible values:</b> </p> <ul> <li> <p> <code>SUCCESS</code>: The association or disassociation succeeded. </p> </li> <li> <p> <code>FAILED</code>: The association or disassociation failed. </p> </li> <li> <p> <code>IN_PROGRESS</code>: The association or disassociation is still in progress. </p> </li> </ul>
-- * EngineAttributes [EngineAttributes] <p>Attributes specific to the node association. In Puppet, the attibute PUPPET_NODE_CERT contains the signed certificate (the result of the CSR). </p>
-- @return DescribeNodeAssociationStatusResponse structure as a key-value pair table
function M.DescribeNodeAssociationStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeNodeAssociationStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeAssociationStatus"] = args["NodeAssociationStatus"],
		["EngineAttributes"] = args["EngineAttributes"],
	}
	asserts.AssertDescribeNodeAssociationStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupId [BackupId] <p>Describes a single backup. </p>
-- * ServerName [ServerName] <p>Returns backups for the server with the specified ServerName. </p>
-- * NextToken [NextToken] <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
-- * MaxResults [MaxResults] <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
-- @return DescribeBackupsRequest structure as a key-value pair table
function M.DescribeBackupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeBackupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupId"] = args["BackupId"],
		["ServerName"] = args["ServerName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeBackupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeAssociationStatusToken [NodeAssociationStatusToken] <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the association request. </p>
-- @return AssociateNodeResponse structure as a key-value pair table
function M.AssociateNodeResponse(args)
	assert(args, "You must provide an argument table when creating AssociateNodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeAssociationStatusToken"] = args["NodeAssociationStatusToken"],
	}
	asserts.AssertAssociateNodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [String] <p>The name of the server on or for which the event occurred. </p>
-- * Message [String] <p>A human-readable informational or status message.</p>
-- * CreatedAt [Timestamp] <p>The time when the event occurred. </p>
-- * LogUrl [String] <p>The Amazon S3 URL of the event's log file.</p>
-- @return ServerEvent structure as a key-value pair table
function M.ServerEvent(args)
	assert(args, "You must provide an argument table when creating ServerEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["Message"] = args["Message"],
		["CreatedAt"] = args["CreatedAt"],
		["LogUrl"] = args["LogUrl"],
	}
	asserts.AssertServerEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupId [BackupId] <p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>. </p>
-- Required key: BackupId
-- @return DeleteBackupRequest structure as a key-value pair table
function M.DeleteBackupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBackupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupId"] = args["BackupId"],
	}
	asserts.AssertDeleteBackupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p> The configuration management engine to use. Valid values include <code>Chef</code> and <code>Puppet</code>. </p>
-- * ServiceRoleArn [ServiceRoleArn] <p> The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the service role and instance profile that you need. </p>
-- * SubnetIds [Strings] <p> The IDs of subnets in which to launch the server EC2 instance. </p> <p> Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled. </p> <p> EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled. </p> <p>For more information about supported Amazon EC2 platforms, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
-- * DisableAutomatedBackup [Boolean] <p> Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>. </p>
-- * PreferredMaintenanceWindow [TimeWindowDefinition] <p> The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance. Valid values must be specified in the following format: <code>DDD:HH:MM</code>. The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information. </p> <p> <b>Example:</b> <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.) </p>
-- * ServerName [ServerName] <p> The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters. </p>
-- * BackupRetentionCount [BackupRetentionCountDefinition] <p> The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded. The default value is <code>1</code>. </p>
-- * InstanceType [String] <p> The Amazon EC2 instance type to use. For example, <code>m4.large</code>. Recommended instance types include <code>t2.medium</code> and greater, <code>m4.*</code>, or <code>c4.xlarge</code> and greater. </p>
-- * PreferredBackupWindow [TimeWindowDefinition] <p> The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats: </p> <ul> <li> <p> <code>HH:MM</code> for daily backups</p> </li> <li> <p> <code>DDD:HH:MM</code> for weekly backups</p> </li> </ul> <p>The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p> <p> <b>Example:</b> <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p> <p> <b>Example:</b> <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
-- * KeyPair [KeyPair] <p> The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH. </p>
-- * AssociatePublicIpAddress [Boolean] <p> Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>. </p>
-- * SecurityGroupIds [Strings] <p> A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by <code>SubnetIds</code>. </p> <p> If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone). </p>
-- * EngineVersion [String] <p> The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion is currently <code>12</code>. For a Puppet server, the valid value is <code>2017</code>. </p>
-- * BackupId [BackupId] <p> If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId. </p>
-- * InstanceProfileArn [InstanceProfileArn] <p> The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need. </p>
-- * EngineAttributes [EngineAttributes] <p>Optional engine attributes on a specified server. </p> <p class="title"> <b>Attributes accepted in a Chef createServer request:</b> </p> <ul> <li> <p> <code>CHEF_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is not stored by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API. When no CHEF_PIVOTAL_KEY is set, one is generated and returned in the response. </p> </li> <li> <p> <code>CHEF_DELIVERY_ADMIN_PASSWORD</code>: The password for the administrative user in the Chef Automate GUI. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#$%^&amp;+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_DELIVERY_ADMIN_PASSWORD is set, one is generated and returned in the response.</p> </li> </ul> <p class="title"> <b>Attributes accepted in a Puppet createServer request:</b> </p> <ul> <li> <p> <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p> </li> </ul>
-- * EngineModel [String] <p> The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef. </p>
-- Required key: ServerName
-- Required key: InstanceProfileArn
-- Required key: InstanceType
-- Required key: ServiceRoleArn
-- @return CreateServerRequest structure as a key-value pair table
function M.CreateServerRequest(args)
	assert(args, "You must provide an argument table when creating CreateServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["SubnetIds"] = args["SubnetIds"],
		["DisableAutomatedBackup"] = args["DisableAutomatedBackup"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["ServerName"] = args["ServerName"],
		["BackupRetentionCount"] = args["BackupRetentionCount"],
		["InstanceType"] = args["InstanceType"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["KeyPair"] = args["KeyPair"],
		["AssociatePublicIpAddress"] = args["AssociatePublicIpAddress"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["EngineVersion"] = args["EngineVersion"],
		["BackupId"] = args["BackupId"],
		["InstanceProfileArn"] = args["InstanceProfileArn"],
		["EngineAttributes"] = args["EngineAttributes"],
		["EngineModel"] = args["EngineModel"],
	}
	asserts.AssertCreateServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server for which you want to view events.</p>
-- * NextToken [NextToken] <p>NextToken is a string that is returned in some command responses. It indicates that not all entries have been returned, and that you must run at least one more request to get remaining items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous results as the value of the <code>nextToken</code> parameter. If there are no more results, the response object's <code>nextToken</code> parameter value is <code>null</code>. Setting a <code>nextToken</code> value that was not returned in your previous results causes an <code>InvalidNextTokenException</code> to occur. </p>
-- * MaxResults [MaxResults] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results. </p>
-- Required key: ServerName
-- @return DescribeEventsRequest structure as a key-value pair table
function M.DescribeEventsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartMaintenanceRequest = { ["ServerName"] = true, ["EngineAttributes"] = true, nil }

function asserts.AssertStartMaintenanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartMaintenanceRequest to be of type 'table'")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	if struct["EngineAttributes"] then asserts.AssertEngineAttributes(struct["EngineAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartMaintenanceRequest[k], "StartMaintenanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartMaintenanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server on which to run maintenance. </p>
-- * EngineAttributes [EngineAttributes] <p>Engine attributes that are specific to the server on which you want to run maintenance. </p>
-- Required key: ServerName
-- @return StartMaintenanceRequest structure as a key-value pair table
function M.StartMaintenanceRequest(args)
	assert(args, "You must provide an argument table when creating StartMaintenanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["EngineAttributes"] = args["EngineAttributes"],
	}
	asserts.AssertStartMaintenanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ToolsVersion [String] <p> The version of AWS OpsWorks CM-specific tools that is obtained from the server when the backup is created. </p>
-- * S3DataUrl [String] <p> This field is deprecated and is no longer used. </p>
-- * EngineModel [String] <p> The engine model that is obtained from the server when the backup is created. </p>
-- * S3DataSize [Integer] <p> This field is deprecated and is no longer used. </p>
-- * Engine [String] <p> The engine type that is obtained from the server when the backup is created. </p>
-- * Description [String] <p> A user-provided description for a manual backup. This field is empty for automated backups. </p>
-- * S3LogUrl [String] <p> The Amazon S3 URL of the backup's log file. </p>
-- * PreferredBackupWindow [TimeWindowDefinition] <p> The preferred backup period that is obtained from the server when the backup is created. </p>
-- * BackupArn [String] <p>The ARN of the backup. </p>
-- * InstanceProfileArn [String] <p> The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored, you are not required to provide the InstanceProfileArn again if you restore a backup. </p>
-- * InstanceType [String] <p> The instance type that is obtained from the server when the backup is created. </p>
-- * PreferredMaintenanceWindow [TimeWindowDefinition] <p> The preferred maintenance period that is obtained from the server when the backup is created. </p>
-- * Status [BackupStatus] <p>The status of a backup while in progress. </p>
-- * ServerName [ServerName] <p> The name of the server from which the backup was made. </p>
-- * SecurityGroupIds [Strings] <p> The security group IDs that are obtained from the server when the backup is created. </p>
-- * BackupType [BackupType] <p> The backup type. Valid values are <code>automated</code> or <code>manual</code>. </p>
-- * KeyPair [String] <p> The key pair that is obtained from the server when the backup is created. </p>
-- * EngineVersion [String] <p> The engine version that is obtained from the server when the backup is created. </p>
-- * StatusDescription [String] <p> An informational message about backup status. </p>
-- * UserArn [String] <p> The IAM user ARN of the requester for manual backups. This field is empty for automated backups. </p>
-- * SubnetIds [Strings] <p> The subnet IDs that are obtained from the server when the backup is created. </p>
-- * CreatedAt [Timestamp] <p> The time stamp when the backup was created in the database. Example: <code>2016-07-29T13:38:47.520Z</code> </p>
-- * BackupId [BackupId] <p> The generated ID of the backup. Example: <code>myServerName-yyyyMMddHHmmssSSS</code> </p>
-- * ServiceRoleArn [String] <p> The service role ARN that is obtained from the server when the backup is created. </p>
-- @return Backup structure as a key-value pair table
function M.Backup(args)
	assert(args, "You must provide an argument table when creating Backup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ToolsVersion"] = args["ToolsVersion"],
		["S3DataUrl"] = args["S3DataUrl"],
		["EngineModel"] = args["EngineModel"],
		["S3DataSize"] = args["S3DataSize"],
		["Engine"] = args["Engine"],
		["Description"] = args["Description"],
		["S3LogUrl"] = args["S3LogUrl"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["BackupArn"] = args["BackupArn"],
		["InstanceProfileArn"] = args["InstanceProfileArn"],
		["InstanceType"] = args["InstanceType"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Status"] = args["Status"],
		["ServerName"] = args["ServerName"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["BackupType"] = args["BackupType"],
		["KeyPair"] = args["KeyPair"],
		["EngineVersion"] = args["EngineVersion"],
		["StatusDescription"] = args["StatusDescription"],
		["UserArn"] = args["UserArn"],
		["SubnetIds"] = args["SubnetIds"],
		["CreatedAt"] = args["CreatedAt"],
		["BackupId"] = args["BackupId"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
	}
	asserts.AssertBackup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Backups [Backups] <p>Contains the response to a <code>DescribeBackups</code> request. </p>
-- * NextToken [String] <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
-- @return DescribeBackupsResponse structure as a key-value pair table
function M.DescribeBackupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeBackupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Backups"] = args["Backups"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeBackupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server with which to associate the node. </p>
-- * NodeName [NodeName] <p>The name of the node. </p>
-- * EngineAttributes [EngineAttributes] <p>Engine attributes used for associating the node. </p> <p class="title"> <b>Attributes accepted in a AssociateNode request for Chef</b> </p> <ul> <li> <p> <code>CHEF_ORGANIZATION</code>: The Chef organization with which the node is associated. By default only one organization named <code>default</code> can exist. </p> </li> <li> <p> <code>CHEF_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API. </p> </li> </ul> <p class="title"> <b>Attributes accepted in a AssociateNode request for Puppet</b> </p> <ul> <li> <p> <code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing request (CSR) that is created by the node. </p> </li> </ul>
-- Required key: ServerName
-- Required key: NodeName
-- Required key: EngineAttributes
-- @return AssociateNodeRequest structure as a key-value pair table
function M.AssociateNodeRequest(args)
	assert(args, "You must provide an argument table when creating AssociateNodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["NodeName"] = args["NodeName"],
		["EngineAttributes"] = args["EngineAttributes"],
	}
	asserts.AssertAssociateNodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server from which to disassociate the node. </p>
-- * NodeAssociationStatusToken [NodeAssociationStatusToken] <p>The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse. </p>
-- Required key: NodeAssociationStatusToken
-- Required key: ServerName
-- @return DescribeNodeAssociationStatusRequest structure as a key-value pair table
function M.DescribeNodeAssociationStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeNodeAssociationStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["NodeAssociationStatusToken"] = args["NodeAssociationStatusToken"],
	}
	asserts.AssertDescribeNodeAssociationStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportServerEngineAttributeRequest = { ["ExportAttributeName"] = true, ["InputAttributes"] = true, ["ServerName"] = true, nil }

function asserts.AssertExportServerEngineAttributeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportServerEngineAttributeRequest to be of type 'table'")
	assert(struct["ExportAttributeName"], "Expected key ExportAttributeName to exist in table")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	if struct["ExportAttributeName"] then asserts.AssertString(struct["ExportAttributeName"]) end
	if struct["InputAttributes"] then asserts.AssertEngineAttributes(struct["InputAttributes"]) end
	if struct["ServerName"] then asserts.AssertServerName(struct["ServerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportServerEngineAttributeRequest[k], "ExportServerEngineAttributeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportServerEngineAttributeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportAttributeName [String] <p>The name of the export attribute. Currently supported export attribute is "Userdata" which exports a userdata script filled out with parameters provided in the <code>InputAttributes</code> list.</p>
-- * InputAttributes [EngineAttributes] <p>The list of engine attributes. The list type is <code>EngineAttribute</code>. <code>EngineAttribute</code> is a pair of attribute name and value. For <code>ExportAttributeName</code> "Userdata", currently supported input attribute names are: - "RunList": For Chef, an ordered list of roles and/or recipes that are run in the exact order. For Puppet, this parameter is ignored. - "OrganizationName": For Chef, an organization name. AWS OpsWorks for Chef Server always creates the organization "default". For Puppet, this parameter is ignored. - "NodeEnvironment": For Chef, a node environment (eg. development, staging, onebox). For Puppet, this parameter is ignored. - "NodeClientVersion": For Chef, version of Chef Engine (3 numbers separated by dots, eg. "13.8.5"). If empty, it uses the latest one. For Puppet, this parameter is ignored. </p>
-- * ServerName [ServerName] <p>The name of the Server to which the attribute is being exported from </p>
-- Required key: ExportAttributeName
-- Required key: ServerName
-- @return ExportServerEngineAttributeRequest structure as a key-value pair table
function M.ExportServerEngineAttributeRequest(args)
	assert(args, "You must provide an argument table when creating ExportServerEngineAttributeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportAttributeName"] = args["ExportAttributeName"],
		["InputAttributes"] = args["InputAttributes"],
		["ServerName"] = args["ServerName"],
	}
	asserts.AssertExportServerEngineAttributeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [ServerName] <p>The name of the server to update. </p>
-- * AttributeName [AttributeName] <p>The name of the engine attribute to update. </p>
-- * AttributeValue [AttributeValue] <p>The value to set for the attribute. </p>
-- Required key: ServerName
-- Required key: AttributeName
-- @return UpdateServerEngineAttributesRequest structure as a key-value pair table
function M.UpdateServerEngineAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServerEngineAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["AttributeName"] = args["AttributeName"],
		["AttributeValue"] = args["AttributeValue"],
	}
	asserts.AssertUpdateServerEngineAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PreferredBackupWindow [TimeWindowDefinition] 
-- * ServerName [ServerName] <p>The name of the server to update. </p>
-- * BackupRetentionCount [Integer] <p>Sets the number of automated backups that you want to keep. </p>
-- * DisableAutomatedBackup [Boolean] <p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. Automated backups are enabled by default. </p>
-- * PreferredMaintenanceWindow [TimeWindowDefinition] 
-- Required key: ServerName
-- @return UpdateServerRequest structure as a key-value pair table
function M.UpdateServerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["ServerName"] = args["ServerName"],
		["BackupRetentionCount"] = args["BackupRetentionCount"],
		["DisableAutomatedBackup"] = args["DisableAutomatedBackup"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
	}
	asserts.AssertUpdateServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

-- <p>The node name that is used by <code>chef-client</code> or <code>puppet-agent</code>for a new node. We recommend to use a unique FQDN as hostname. For more information, see the <a href="http://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names">Chef</a> or <a href="http://docs.aws.amazon.com/https:/docs.puppet.com/puppet/4.10/man/agent.html">Puppet</a> documentation. </p>
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DescribeServers asynchronously, invoking a callback when done
-- @param DescribeServersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeServersAsync(DescribeServersRequest, cb)
	assert(DescribeServersRequest, "You must provide a DescribeServersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeServers",
	}
	for header,value in pairs(DescribeServersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeServersSync(DescribeServersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServersAsync(DescribeServersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNodeAssociationStatus asynchronously, invoking a callback when done
-- @param DescribeNodeAssociationStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNodeAssociationStatusAsync(DescribeNodeAssociationStatusRequest, cb)
	assert(DescribeNodeAssociationStatusRequest, "You must provide a DescribeNodeAssociationStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeNodeAssociationStatus",
	}
	for header,value in pairs(DescribeNodeAssociationStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeNodeAssociationStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNodeAssociationStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNodeAssociationStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNodeAssociationStatusSync(DescribeNodeAssociationStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNodeAssociationStatusAsync(DescribeNodeAssociationStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteServer asynchronously, invoking a callback when done
-- @param DeleteServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServerAsync(DeleteServerRequest, cb)
	assert(DeleteServerRequest, "You must provide a DeleteServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DeleteServer",
	}
	for header,value in pairs(DeleteServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServerSync(DeleteServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServerAsync(DeleteServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBackups asynchronously, invoking a callback when done
-- @param DescribeBackupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBackupsAsync(DescribeBackupsRequest, cb)
	assert(DescribeBackupsRequest, "You must provide a DescribeBackupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeBackups",
	}
	for header,value in pairs(DescribeBackupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBackupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBackups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBackupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBackupsSync(DescribeBackupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBackupsAsync(DescribeBackupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreServer asynchronously, invoking a callback when done
-- @param RestoreServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreServerAsync(RestoreServerRequest, cb)
	assert(RestoreServerRequest, "You must provide a RestoreServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.RestoreServer",
	}
	for header,value in pairs(RestoreServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreServerSync(RestoreServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreServerAsync(RestoreServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateServerEngineAttributes asynchronously, invoking a callback when done
-- @param UpdateServerEngineAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServerEngineAttributesAsync(UpdateServerEngineAttributesRequest, cb)
	assert(UpdateServerEngineAttributesRequest, "You must provide a UpdateServerEngineAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.UpdateServerEngineAttributes",
	}
	for header,value in pairs(UpdateServerEngineAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServerEngineAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateServerEngineAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServerEngineAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServerEngineAttributesSync(UpdateServerEngineAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServerEngineAttributesAsync(UpdateServerEngineAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExportServerEngineAttribute asynchronously, invoking a callback when done
-- @param ExportServerEngineAttributeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExportServerEngineAttributeAsync(ExportServerEngineAttributeRequest, cb)
	assert(ExportServerEngineAttributeRequest, "You must provide a ExportServerEngineAttributeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.ExportServerEngineAttribute",
	}
	for header,value in pairs(ExportServerEngineAttributeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ExportServerEngineAttributeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExportServerEngineAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExportServerEngineAttributeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ExportServerEngineAttributeSync(ExportServerEngineAttributeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExportServerEngineAttributeAsync(ExportServerEngineAttributeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountAttributes asynchronously, invoking a callback when done
-- @param DescribeAccountAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountAttributesAsync(DescribeAccountAttributesRequest, cb)
	assert(DescribeAccountAttributesRequest, "You must provide a DescribeAccountAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeAccountAttributes",
	}
	for header,value in pairs(DescribeAccountAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccountAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccountAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAccountAttributesSync(DescribeAccountAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountAttributesAsync(DescribeAccountAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DescribeEvents",
	}
	for header,value in pairs(DescribeEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEventsSync(DescribeEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(DescribeEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBackup asynchronously, invoking a callback when done
-- @param DeleteBackupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBackupAsync(DeleteBackupRequest, cb)
	assert(DeleteBackupRequest, "You must provide a DeleteBackupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DeleteBackup",
	}
	for header,value in pairs(DeleteBackupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBackupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBackupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBackupSync(DeleteBackupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBackupAsync(DeleteBackupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateServer asynchronously, invoking a callback when done
-- @param CreateServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateServerAsync(CreateServerRequest, cb)
	assert(CreateServerRequest, "You must provide a CreateServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.CreateServer",
	}
	for header,value in pairs(CreateServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateServerSync(CreateServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateServerAsync(CreateServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBackup asynchronously, invoking a callback when done
-- @param CreateBackupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBackupAsync(CreateBackupRequest, cb)
	assert(CreateBackupRequest, "You must provide a CreateBackupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.CreateBackup",
	}
	for header,value in pairs(CreateBackupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBackupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBackupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBackupSync(CreateBackupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBackupAsync(CreateBackupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartMaintenance asynchronously, invoking a callback when done
-- @param StartMaintenanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartMaintenanceAsync(StartMaintenanceRequest, cb)
	assert(StartMaintenanceRequest, "You must provide a StartMaintenanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.StartMaintenance",
	}
	for header,value in pairs(StartMaintenanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartMaintenanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartMaintenance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartMaintenanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartMaintenanceSync(StartMaintenanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartMaintenanceAsync(StartMaintenanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateServer asynchronously, invoking a callback when done
-- @param UpdateServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServerAsync(UpdateServerRequest, cb)
	assert(UpdateServerRequest, "You must provide a UpdateServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.UpdateServer",
	}
	for header,value in pairs(UpdateServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServerSync(UpdateServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServerAsync(UpdateServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateNode asynchronously, invoking a callback when done
-- @param AssociateNodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateNodeAsync(AssociateNodeRequest, cb)
	assert(AssociateNodeRequest, "You must provide a AssociateNodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.AssociateNode",
	}
	for header,value in pairs(AssociateNodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateNodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateNode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateNodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateNodeSync(AssociateNodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateNodeAsync(AssociateNodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateNode asynchronously, invoking a callback when done
-- @param DisassociateNodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateNodeAsync(DisassociateNodeRequest, cb)
	assert(DisassociateNodeRequest, "You must provide a DisassociateNodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorksCM_V2016_11_01.DisassociateNode",
	}
	for header,value in pairs(DisassociateNodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateNodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateNode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateNodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateNodeSync(DisassociateNodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateNodeAsync(DisassociateNodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
