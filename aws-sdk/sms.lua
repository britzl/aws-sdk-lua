--- GENERATED CODE - DO NOT MODIFY
-- AWS Server Migration Service (sms-2016-10-24)

local M = {}

M.metadata = {
	api_version = "2016-10-24",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "sms",
	service_abbreviation = "SMS",
	service_full_name = "AWS Server Migration Service",
	signature_version = "v4",
	target_prefix = "AWSServerMigrationService_V2016_10_24",
	timestamp_format = "",
	global_endpoint = "",
	uid = "sms-2016-10-24",
}

local keys = {}
local asserts = {}

keys.StartOnDemandReplicationRunRequest = { ["replicationJobId"] = true, ["description"] = true, nil }

function asserts.AssertStartOnDemandReplicationRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartOnDemandReplicationRunRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartOnDemandReplicationRunRequest[k], "StartOnDemandReplicationRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartOnDemandReplicationRunRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * replicationJobId [ReplicationJobId] 
-- * description [Description] 
-- Required key: replicationJobId
-- @return StartOnDemandReplicationRunRequest structure as a key-value pair table
function M.StartOnDemandReplicationRunRequest(args)
	assert(args, "You must provide an argument table when creating StartOnDemandReplicationRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["replicationJobId"] = args["replicationJobId"],
		["description"] = args["description"],
	}
	asserts.AssertStartOnDemandReplicationRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationJobNotFoundException = { ["message"] = true, nil }

function asserts.AssertReplicationJobNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationJobNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationJobNotFoundException[k], "ReplicationJobNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationJobNotFoundException
-- The specified Replication Job cannot be found.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ReplicationJobNotFoundException structure as a key-value pair table
function M.ReplicationJobNotFoundException(args)
	assert(args, "You must provide an argument table when creating ReplicationJobNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertReplicationJobNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalError = { ["message"] = true, nil }

function asserts.AssertInternalError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalError to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalError[k], "InternalError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalError
-- An internal error has occured.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InternalError structure as a key-value pair table
function M.InternalError(args)
	assert(args, "You must provide an argument table when creating InternalError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportServerCatalogResponse = { nil }

function asserts.AssertImportServerCatalogResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportServerCatalogResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImportServerCatalogResponse[k], "ImportServerCatalogResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportServerCatalogResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ImportServerCatalogResponse structure as a key-value pair table
function M.ImportServerCatalogResponse(args)
	assert(args, "You must provide an argument table when creating ImportServerCatalogResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertImportServerCatalogResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoConnectorsAvailableException = { ["message"] = true, nil }

function asserts.AssertNoConnectorsAvailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoConnectorsAvailableException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoConnectorsAvailableException[k], "NoConnectorsAvailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoConnectorsAvailableException
-- No connectors are available to handle this request. Please associate connector(s) and verify any existing connectors are healthy and can respond to requests.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return NoConnectorsAvailableException structure as a key-value pair table
function M.NoConnectorsAvailableException(args)
	assert(args, "You must provide an argument table when creating NoConnectorsAvailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNoConnectorsAvailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Connector = { ["status"] = true, ["capabilityList"] = true, ["macAddress"] = true, ["vmManagerName"] = true, ["connectorId"] = true, ["associatedOn"] = true, ["version"] = true, ["vmManagerId"] = true, ["vmManagerType"] = true, ["ipAddress"] = true, nil }

function asserts.AssertConnector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connector to be of type 'table'")
	if struct["status"] then asserts.AssertConnectorStatus(struct["status"]) end
	if struct["capabilityList"] then asserts.AssertConnectorCapabilityList(struct["capabilityList"]) end
	if struct["macAddress"] then asserts.AssertMacAddress(struct["macAddress"]) end
	if struct["vmManagerName"] then asserts.AssertVmManagerName(struct["vmManagerName"]) end
	if struct["connectorId"] then asserts.AssertConnectorId(struct["connectorId"]) end
	if struct["associatedOn"] then asserts.AssertTimestamp(struct["associatedOn"]) end
	if struct["version"] then asserts.AssertConnectorVersion(struct["version"]) end
	if struct["vmManagerId"] then asserts.AssertVmManagerId(struct["vmManagerId"]) end
	if struct["vmManagerType"] then asserts.AssertVmManagerType(struct["vmManagerType"]) end
	if struct["ipAddress"] then asserts.AssertIpAddress(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.Connector[k], "Connector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connector
-- Object representing a Connector
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ConnectorStatus] 
-- * capabilityList [ConnectorCapabilityList] 
-- * macAddress [MacAddress] 
-- * vmManagerName [VmManagerName] 
-- * connectorId [ConnectorId] 
-- * associatedOn [Timestamp] 
-- * version [ConnectorVersion] 
-- * vmManagerId [VmManagerId] 
-- * vmManagerType [VmManagerType] 
-- * ipAddress [IpAddress] 
-- @return Connector structure as a key-value pair table
function M.Connector(args)
	assert(args, "You must provide an argument table when creating Connector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["capabilityList"] = args["capabilityList"],
		["macAddress"] = args["macAddress"],
		["vmManagerName"] = args["vmManagerName"],
		["connectorId"] = args["connectorId"],
		["associatedOn"] = args["associatedOn"],
		["version"] = args["version"],
		["vmManagerId"] = args["vmManagerId"],
		["vmManagerType"] = args["vmManagerType"],
		["ipAddress"] = args["ipAddress"],
	}
	asserts.AssertConnector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReplicationJobsResponse = { ["nextToken"] = true, ["replicationJobList"] = true, nil }

function asserts.AssertGetReplicationJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationJobsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJobList"] then asserts.AssertReplicationJobList(struct["replicationJobList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReplicationJobsResponse[k], "GetReplicationJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * replicationJobList [ReplicationJobList] 
-- @return GetReplicationJobsResponse structure as a key-value pair table
function M.GetReplicationJobsResponse(args)
	assert(args, "You must provide an argument table when creating GetReplicationJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["replicationJobList"] = args["replicationJobList"],
	}
	asserts.AssertGetReplicationJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServerCannotBeReplicatedException = { ["message"] = true, nil }

function asserts.AssertServerCannotBeReplicatedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerCannotBeReplicatedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerCannotBeReplicatedException[k], "ServerCannotBeReplicatedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerCannotBeReplicatedException
-- The provided server cannot be replicated.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ServerCannotBeReplicatedException structure as a key-value pair table
function M.ServerCannotBeReplicatedException(args)
	assert(args, "You must provide an argument table when creating ServerCannotBeReplicatedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServerCannotBeReplicatedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportServerCatalogRequest = { nil }

function asserts.AssertImportServerCatalogRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportServerCatalogRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImportServerCatalogRequest[k], "ImportServerCatalogRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportServerCatalogRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ImportServerCatalogRequest structure as a key-value pair table
function M.ImportServerCatalogRequest(args)
	assert(args, "You must provide an argument table when creating ImportServerCatalogRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertImportServerCatalogRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServerCatalogRequest = { nil }

function asserts.AssertDeleteServerCatalogRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerCatalogRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteServerCatalogRequest[k], "DeleteServerCatalogRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerCatalogRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteServerCatalogRequest structure as a key-value pair table
function M.DeleteServerCatalogRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServerCatalogRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteServerCatalogRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationRun = { ["amiId"] = true, ["description"] = true, ["state"] = true, ["completedTime"] = true, ["scheduledStartTime"] = true, ["replicationRunId"] = true, ["type"] = true, ["statusMessage"] = true, nil }

function asserts.AssertReplicationRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRun to be of type 'table'")
	if struct["amiId"] then asserts.AssertAmiId(struct["amiId"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["state"] then asserts.AssertReplicationRunState(struct["state"]) end
	if struct["completedTime"] then asserts.AssertTimestamp(struct["completedTime"]) end
	if struct["scheduledStartTime"] then asserts.AssertTimestamp(struct["scheduledStartTime"]) end
	if struct["replicationRunId"] then asserts.AssertReplicationRunId(struct["replicationRunId"]) end
	if struct["type"] then asserts.AssertReplicationRunType(struct["type"]) end
	if struct["statusMessage"] then asserts.AssertReplicationRunStatusMessage(struct["statusMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationRun[k], "ReplicationRun contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRun
-- Object representing a Replication Run
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * amiId [AmiId] 
-- * description [Description] 
-- * state [ReplicationRunState] 
-- * completedTime [Timestamp] 
-- * scheduledStartTime [Timestamp] 
-- * replicationRunId [ReplicationRunId] 
-- * type [ReplicationRunType] 
-- * statusMessage [ReplicationRunStatusMessage] 
-- @return ReplicationRun structure as a key-value pair table
function M.ReplicationRun(args)
	assert(args, "You must provide an argument table when creating ReplicationRun")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["amiId"] = args["amiId"],
		["description"] = args["description"],
		["state"] = args["state"],
		["completedTime"] = args["completedTime"],
		["scheduledStartTime"] = args["scheduledStartTime"],
		["replicationRunId"] = args["replicationRunId"],
		["type"] = args["type"],
		["statusMessage"] = args["statusMessage"],
	}
	asserts.AssertReplicationRun(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServerCatalogResponse = { nil }

function asserts.AssertDeleteServerCatalogResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerCatalogResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteServerCatalogResponse[k], "DeleteServerCatalogResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerCatalogResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteServerCatalogResponse structure as a key-value pair table
function M.DeleteServerCatalogResponse(args)
	assert(args, "You must provide an argument table when creating DeleteServerCatalogResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteServerCatalogResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReplicationRunsRequest = { ["nextToken"] = true, ["replicationJobId"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetReplicationRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationRunsRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReplicationRunsRequest[k], "GetReplicationRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationRunsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * replicationJobId [ReplicationJobId] 
-- * maxResults [MaxResults] 
-- Required key: replicationJobId
-- @return GetReplicationRunsRequest structure as a key-value pair table
function M.GetReplicationRunsRequest(args)
	assert(args, "You must provide an argument table when creating GetReplicationRunsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["replicationJobId"] = args["replicationJobId"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetReplicationRunsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectorsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetConnectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectorsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectorsRequest[k], "GetConnectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * maxResults [MaxResults] 
-- @return GetConnectorsRequest structure as a key-value pair table
function M.GetConnectorsRequest(args)
	assert(args, "You must provide an argument table when creating GetConnectorsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetConnectorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateConnectorRequest = { ["connectorId"] = true, nil }

function asserts.AssertDisassociateConnectorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConnectorRequest to be of type 'table'")
	assert(struct["connectorId"], "Expected key connectorId to exist in table")
	if struct["connectorId"] then asserts.AssertConnectorId(struct["connectorId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateConnectorRequest[k], "DisassociateConnectorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConnectorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * connectorId [ConnectorId] 
-- Required key: connectorId
-- @return DisassociateConnectorRequest structure as a key-value pair table
function M.DisassociateConnectorRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateConnectorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["connectorId"] = args["connectorId"],
	}
	asserts.AssertDisassociateConnectorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- A parameter specified in the request is not valid, is unsupported, or cannot be used.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetServersResponse = { ["lastModifiedOn"] = true, ["nextToken"] = true, ["serverCatalogStatus"] = true, ["serverList"] = true, nil }

function asserts.AssertGetServersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServersResponse to be of type 'table'")
	if struct["lastModifiedOn"] then asserts.AssertTimestamp(struct["lastModifiedOn"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["serverCatalogStatus"] then asserts.AssertServerCatalogStatus(struct["serverCatalogStatus"]) end
	if struct["serverList"] then asserts.AssertServerList(struct["serverList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServersResponse[k], "GetServersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lastModifiedOn [Timestamp] 
-- * nextToken [NextToken] 
-- * serverCatalogStatus [ServerCatalogStatus] 
-- * serverList [ServerList] 
-- @return GetServersResponse structure as a key-value pair table
function M.GetServersResponse(args)
	assert(args, "You must provide an argument table when creating GetServersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lastModifiedOn"] = args["lastModifiedOn"],
		["nextToken"] = args["nextToken"],
		["serverCatalogStatus"] = args["serverCatalogStatus"],
		["serverList"] = args["serverList"],
	}
	asserts.AssertGetServersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationRunLimitExceededException = { ["message"] = true, nil }

function asserts.AssertReplicationRunLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRunLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationRunLimitExceededException[k], "ReplicationRunLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRunLimitExceededException
-- This user has exceeded the maximum allowed Replication Run limit.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ReplicationRunLimitExceededException structure as a key-value pair table
function M.ReplicationRunLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ReplicationRunLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertReplicationRunLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedOperationException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedOperationException[k], "UnauthorizedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperationException
-- This user does not have permissions to perform this operation.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return UnauthorizedOperationException structure as a key-value pair table
function M.UnauthorizedOperationException(args)
	assert(args, "You must provide an argument table when creating UnauthorizedOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnauthorizedOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationJobResponse = { nil }

function asserts.AssertDeleteReplicationJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationJobResponse[k], "DeleteReplicationJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteReplicationJobResponse structure as a key-value pair table
function M.DeleteReplicationJobResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteReplicationJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationNotPermittedException = { ["message"] = true, nil }

function asserts.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationNotPermittedException[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- The specified operation is not allowed. This error can occur for a number of reasons; for example, you might be trying to start a Replication Run before seed Replication Run.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return OperationNotPermittedException structure as a key-value pair table
function M.OperationNotPermittedException(args)
	assert(args, "You must provide an argument table when creating OperationNotPermittedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertOperationNotPermittedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationJobResponse = { ["replicationJobId"] = true, nil }

function asserts.AssertCreateReplicationJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationJobResponse to be of type 'table'")
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationJobResponse[k], "CreateReplicationJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * replicationJobId [ReplicationJobId] 
-- @return CreateReplicationJobResponse structure as a key-value pair table
function M.CreateReplicationJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateReplicationJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["replicationJobId"] = args["replicationJobId"],
	}
	asserts.AssertCreateReplicationJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateReplicationJobRequest = { ["licenseType"] = true, ["description"] = true, ["nextReplicationRunStartTime"] = true, ["replicationJobId"] = true, ["frequency"] = true, ["roleName"] = true, nil }

function asserts.AssertUpdateReplicationJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReplicationJobRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["licenseType"] then asserts.AssertLicenseType(struct["licenseType"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["nextReplicationRunStartTime"] then asserts.AssertTimestamp(struct["nextReplicationRunStartTime"]) end
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["frequency"] then asserts.AssertFrequency(struct["frequency"]) end
	if struct["roleName"] then asserts.AssertRoleName(struct["roleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateReplicationJobRequest[k], "UpdateReplicationJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReplicationJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * licenseType [LicenseType] 
-- * description [Description] 
-- * nextReplicationRunStartTime [Timestamp] 
-- * replicationJobId [ReplicationJobId] 
-- * frequency [Frequency] 
-- * roleName [RoleName] 
-- Required key: replicationJobId
-- @return UpdateReplicationJobRequest structure as a key-value pair table
function M.UpdateReplicationJobRequest(args)
	assert(args, "You must provide an argument table when creating UpdateReplicationJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["licenseType"] = args["licenseType"],
		["description"] = args["description"],
		["nextReplicationRunStartTime"] = args["nextReplicationRunStartTime"],
		["replicationJobId"] = args["replicationJobId"],
		["frequency"] = args["frequency"],
		["roleName"] = args["roleName"],
	}
	asserts.AssertUpdateReplicationJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingRequiredParameterException = { ["message"] = true, nil }

function asserts.AssertMissingRequiredParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingRequiredParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingRequiredParameterException[k], "MissingRequiredParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingRequiredParameterException
-- The request is missing a required parameter. Ensure that you have supplied all the required parameters for the request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MissingRequiredParameterException structure as a key-value pair table
function M.MissingRequiredParameterException(args)
	assert(args, "You must provide an argument table when creating MissingRequiredParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMissingRequiredParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Server = { ["replicationJobTerminated"] = true, ["serverId"] = true, ["serverType"] = true, ["replicationJobId"] = true, ["vmServer"] = true, nil }

function asserts.AssertServer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Server to be of type 'table'")
	if struct["replicationJobTerminated"] then asserts.AssertReplicationJobTerminated(struct["replicationJobTerminated"]) end
	if struct["serverId"] then asserts.AssertServerId(struct["serverId"]) end
	if struct["serverType"] then asserts.AssertServerType(struct["serverType"]) end
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["vmServer"] then asserts.AssertVmServer(struct["vmServer"]) end
	for k,_ in pairs(struct) do
		assert(keys.Server[k], "Server contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Server
-- Object representing a server
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * replicationJobTerminated [ReplicationJobTerminated] 
-- * serverId [ServerId] 
-- * serverType [ServerType] 
-- * replicationJobId [ReplicationJobId] 
-- * vmServer [VmServer] 
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
		["replicationJobTerminated"] = args["replicationJobTerminated"],
		["serverId"] = args["serverId"],
		["serverType"] = args["serverType"],
		["replicationJobId"] = args["replicationJobId"],
		["vmServer"] = args["vmServer"],
	}
	asserts.AssertServer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationJobAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertReplicationJobAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationJobAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationJobAlreadyExistsException[k], "ReplicationJobAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationJobAlreadyExistsException
-- An active Replication Job already exists for the specified server.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ReplicationJobAlreadyExistsException structure as a key-value pair table
function M.ReplicationJobAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating ReplicationJobAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertReplicationJobAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartOnDemandReplicationRunResponse = { ["replicationRunId"] = true, nil }

function asserts.AssertStartOnDemandReplicationRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartOnDemandReplicationRunResponse to be of type 'table'")
	if struct["replicationRunId"] then asserts.AssertReplicationRunId(struct["replicationRunId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartOnDemandReplicationRunResponse[k], "StartOnDemandReplicationRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartOnDemandReplicationRunResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * replicationRunId [ReplicationRunId] 
-- @return StartOnDemandReplicationRunResponse structure as a key-value pair table
function M.StartOnDemandReplicationRunResponse(args)
	assert(args, "You must provide an argument table when creating StartOnDemandReplicationRunResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["replicationRunId"] = args["replicationRunId"],
	}
	asserts.AssertStartOnDemandReplicationRunResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationJobRequest = { ["licenseType"] = true, ["description"] = true, ["seedReplicationTime"] = true, ["frequency"] = true, ["roleName"] = true, ["serverId"] = true, nil }

function asserts.AssertCreateReplicationJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationJobRequest to be of type 'table'")
	assert(struct["serverId"], "Expected key serverId to exist in table")
	assert(struct["seedReplicationTime"], "Expected key seedReplicationTime to exist in table")
	assert(struct["frequency"], "Expected key frequency to exist in table")
	if struct["licenseType"] then asserts.AssertLicenseType(struct["licenseType"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["seedReplicationTime"] then asserts.AssertTimestamp(struct["seedReplicationTime"]) end
	if struct["frequency"] then asserts.AssertFrequency(struct["frequency"]) end
	if struct["roleName"] then asserts.AssertRoleName(struct["roleName"]) end
	if struct["serverId"] then asserts.AssertServerId(struct["serverId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationJobRequest[k], "CreateReplicationJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * licenseType [LicenseType] 
-- * description [Description] 
-- * seedReplicationTime [Timestamp] 
-- * frequency [Frequency] 
-- * roleName [RoleName] 
-- * serverId [ServerId] 
-- Required key: serverId
-- Required key: seedReplicationTime
-- Required key: frequency
-- @return CreateReplicationJobRequest structure as a key-value pair table
function M.CreateReplicationJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateReplicationJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["licenseType"] = args["licenseType"],
		["description"] = args["description"],
		["seedReplicationTime"] = args["seedReplicationTime"],
		["frequency"] = args["frequency"],
		["roleName"] = args["roleName"],
		["serverId"] = args["serverId"],
	}
	asserts.AssertCreateReplicationJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationJobRequest = { ["replicationJobId"] = true, nil }

function asserts.AssertDeleteReplicationJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationJobRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationJobRequest[k], "DeleteReplicationJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * replicationJobId [ReplicationJobId] 
-- Required key: replicationJobId
-- @return DeleteReplicationJobRequest structure as a key-value pair table
function M.DeleteReplicationJobRequest(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["replicationJobId"] = args["replicationJobId"],
	}
	asserts.AssertDeleteReplicationJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateConnectorResponse = { nil }

function asserts.AssertDisassociateConnectorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConnectorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateConnectorResponse[k], "DisassociateConnectorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConnectorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateConnectorResponse structure as a key-value pair table
function M.DisassociateConnectorResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateConnectorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateConnectorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReplicationJobsRequest = { ["nextToken"] = true, ["replicationJobId"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetReplicationJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationJobsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReplicationJobsRequest[k], "GetReplicationJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * replicationJobId [ReplicationJobId] 
-- * maxResults [MaxResults] 
-- @return GetReplicationJobsRequest structure as a key-value pair table
function M.GetReplicationJobsRequest(args)
	assert(args, "You must provide an argument table when creating GetReplicationJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["replicationJobId"] = args["replicationJobId"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetReplicationJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationJob = { ["licenseType"] = true, ["latestAmiId"] = true, ["description"] = true, ["vmServer"] = true, ["replicationRunList"] = true, ["nextReplicationRunStartTime"] = true, ["serverType"] = true, ["replicationJobId"] = true, ["state"] = true, ["seedReplicationTime"] = true, ["frequency"] = true, ["roleName"] = true, ["serverId"] = true, ["statusMessage"] = true, nil }

function asserts.AssertReplicationJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationJob to be of type 'table'")
	if struct["licenseType"] then asserts.AssertLicenseType(struct["licenseType"]) end
	if struct["latestAmiId"] then asserts.AssertAmiId(struct["latestAmiId"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["vmServer"] then asserts.AssertVmServer(struct["vmServer"]) end
	if struct["replicationRunList"] then asserts.AssertReplicationRunList(struct["replicationRunList"]) end
	if struct["nextReplicationRunStartTime"] then asserts.AssertTimestamp(struct["nextReplicationRunStartTime"]) end
	if struct["serverType"] then asserts.AssertServerType(struct["serverType"]) end
	if struct["replicationJobId"] then asserts.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["state"] then asserts.AssertReplicationJobState(struct["state"]) end
	if struct["seedReplicationTime"] then asserts.AssertTimestamp(struct["seedReplicationTime"]) end
	if struct["frequency"] then asserts.AssertFrequency(struct["frequency"]) end
	if struct["roleName"] then asserts.AssertRoleName(struct["roleName"]) end
	if struct["serverId"] then asserts.AssertServerId(struct["serverId"]) end
	if struct["statusMessage"] then asserts.AssertReplicationJobStatusMessage(struct["statusMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationJob[k], "ReplicationJob contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationJob
-- Object representing a Replication Job
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * licenseType [LicenseType] 
-- * latestAmiId [AmiId] 
-- * description [Description] 
-- * vmServer [VmServer] 
-- * replicationRunList [ReplicationRunList] 
-- * nextReplicationRunStartTime [Timestamp] 
-- * serverType [ServerType] 
-- * replicationJobId [ReplicationJobId] 
-- * state [ReplicationJobState] 
-- * seedReplicationTime [Timestamp] 
-- * frequency [Frequency] 
-- * roleName [RoleName] 
-- * serverId [ServerId] 
-- * statusMessage [ReplicationJobStatusMessage] 
-- @return ReplicationJob structure as a key-value pair table
function M.ReplicationJob(args)
	assert(args, "You must provide an argument table when creating ReplicationJob")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["licenseType"] = args["licenseType"],
		["latestAmiId"] = args["latestAmiId"],
		["description"] = args["description"],
		["vmServer"] = args["vmServer"],
		["replicationRunList"] = args["replicationRunList"],
		["nextReplicationRunStartTime"] = args["nextReplicationRunStartTime"],
		["serverType"] = args["serverType"],
		["replicationJobId"] = args["replicationJobId"],
		["state"] = args["state"],
		["seedReplicationTime"] = args["seedReplicationTime"],
		["frequency"] = args["frequency"],
		["roleName"] = args["roleName"],
		["serverId"] = args["serverId"],
		["statusMessage"] = args["statusMessage"],
	}
	asserts.AssertReplicationJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VmServer = { ["vmManagerName"] = true, ["vmServerAddress"] = true, ["vmName"] = true, ["vmPath"] = true, ["vmManagerType"] = true, nil }

function asserts.AssertVmServer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VmServer to be of type 'table'")
	if struct["vmManagerName"] then asserts.AssertVmManagerName(struct["vmManagerName"]) end
	if struct["vmServerAddress"] then asserts.AssertVmServerAddress(struct["vmServerAddress"]) end
	if struct["vmName"] then asserts.AssertVmName(struct["vmName"]) end
	if struct["vmPath"] then asserts.AssertVmPath(struct["vmPath"]) end
	if struct["vmManagerType"] then asserts.AssertVmManagerType(struct["vmManagerType"]) end
	for k,_ in pairs(struct) do
		assert(keys.VmServer[k], "VmServer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VmServer
-- Object representing a VM server
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vmManagerName [VmManagerName] 
-- * vmServerAddress [VmServerAddress] 
-- * vmName [VmName] 
-- * vmPath [VmPath] 
-- * vmManagerType [VmManagerType] 
-- @return VmServer structure as a key-value pair table
function M.VmServer(args)
	assert(args, "You must provide an argument table when creating VmServer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vmManagerName"] = args["vmManagerName"],
		["vmServerAddress"] = args["vmServerAddress"],
		["vmName"] = args["vmName"],
		["vmPath"] = args["vmPath"],
		["vmManagerType"] = args["vmManagerType"],
	}
	asserts.AssertVmServer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VmServerAddress = { ["vmManagerId"] = true, ["vmId"] = true, nil }

function asserts.AssertVmServerAddress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VmServerAddress to be of type 'table'")
	if struct["vmManagerId"] then asserts.AssertVmManagerId(struct["vmManagerId"]) end
	if struct["vmId"] then asserts.AssertVmId(struct["vmId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VmServerAddress[k], "VmServerAddress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VmServerAddress
-- Object representing a server's location
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vmManagerId [VmManagerId] 
-- * vmId [VmId] 
-- @return VmServerAddress structure as a key-value pair table
function M.VmServerAddress(args)
	assert(args, "You must provide an argument table when creating VmServerAddress")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vmManagerId"] = args["vmManagerId"],
		["vmId"] = args["vmId"],
	}
	asserts.AssertVmServerAddress(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetServersRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetServersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServersRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServersRequest[k], "GetServersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * maxResults [MaxResults] 
-- @return GetServersRequest structure as a key-value pair table
function M.GetServersRequest(args)
	assert(args, "You must provide an argument table when creating GetServersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetServersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectorsResponse = { ["nextToken"] = true, ["connectorList"] = true, nil }

function asserts.AssertGetConnectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectorsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["connectorList"] then asserts.AssertConnectorList(struct["connectorList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectorsResponse[k], "GetConnectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectorsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * connectorList [ConnectorList] 
-- @return GetConnectorsResponse structure as a key-value pair table
function M.GetConnectorsResponse(args)
	assert(args, "You must provide an argument table when creating GetConnectorsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["connectorList"] = args["connectorList"],
	}
	asserts.AssertGetConnectorsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReplicationRunsResponse = { ["nextToken"] = true, ["replicationJob"] = true, ["replicationRunList"] = true, nil }

function asserts.AssertGetReplicationRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationRunsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJob"] then asserts.AssertReplicationJob(struct["replicationJob"]) end
	if struct["replicationRunList"] then asserts.AssertReplicationRunList(struct["replicationRunList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReplicationRunsResponse[k], "GetReplicationRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationRunsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * replicationJob [ReplicationJob] 
-- * replicationRunList [ReplicationRunList] 
-- @return GetReplicationRunsResponse structure as a key-value pair table
function M.GetReplicationRunsResponse(args)
	assert(args, "You must provide an argument table when creating GetReplicationRunsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["replicationJob"] = args["replicationJob"],
		["replicationRunList"] = args["replicationRunList"],
	}
	asserts.AssertGetReplicationRunsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateReplicationJobResponse = { nil }

function asserts.AssertUpdateReplicationJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReplicationJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateReplicationJobResponse[k], "UpdateReplicationJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReplicationJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateReplicationJobResponse structure as a key-value pair table
function M.UpdateReplicationJobResponse(args)
	assert(args, "You must provide an argument table when creating UpdateReplicationJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateReplicationJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertReplicationRunState(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunState to be of type 'string'")
end

-- Current state of Replication Run
function M.ReplicationRunState(str)
	asserts.AssertReplicationRunState(str)
	return str
end

function asserts.AssertConnectorCapability(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorCapability to be of type 'string'")
end

-- Capabilities for a Connector
function M.ConnectorCapability(str)
	asserts.AssertConnectorCapability(str)
	return str
end

function asserts.AssertReplicationJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationJobId to be of type 'string'")
end

-- The unique identifier for a Replication Job.
function M.ReplicationJobId(str)
	asserts.AssertReplicationJobId(str)
	return str
end

function asserts.AssertServerCatalogStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerCatalogStatus to be of type 'string'")
end

-- Status of Server catalog
function M.ServerCatalogStatus(str)
	asserts.AssertServerCatalogStatus(str)
	return str
end

function asserts.AssertReplicationRunType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunType to be of type 'string'")
end

-- Type of Replication Run
function M.ReplicationRunType(str)
	asserts.AssertReplicationRunType(str)
	return str
end

function asserts.AssertRoleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleName to be of type 'string'")
end

-- Name of service role in customer's account to be used by SMS service.
function M.RoleName(str)
	asserts.AssertRoleName(str)
	return str
end

function asserts.AssertServerId(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerId to be of type 'string'")
end

-- Unique Identifier for a server
function M.ServerId(str)
	asserts.AssertServerId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

-- Pagination token to pass as input to API call
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

-- Internet Protocol (IP) Address
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertMacAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected MacAddress to be of type 'string'")
end

-- Hardware (MAC) address
function M.MacAddress(str)
	asserts.AssertMacAddress(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

-- The description for a Replication Job/Run.
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertConnectorId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorId to be of type 'string'")
end

-- Unique Identifier for Connector
function M.ConnectorId(str)
	asserts.AssertConnectorId(str)
	return str
end

function asserts.AssertReplicationRunId(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunId to be of type 'string'")
end

-- The unique identifier for a Replication Run.
function M.ReplicationRunId(str)
	asserts.AssertReplicationRunId(str)
	return str
end

function asserts.AssertVmId(str)
	assert(str)
	assert(type(str) == "string", "Expected VmId to be of type 'string'")
end

-- Unique Identifier for a VM
function M.VmId(str)
	asserts.AssertVmId(str)
	return str
end

function asserts.AssertReplicationJobState(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationJobState to be of type 'string'")
end

-- Current state of Replication Job
function M.ReplicationJobState(str)
	asserts.AssertReplicationJobState(str)
	return str
end

function asserts.AssertConnectorStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorStatus to be of type 'string'")
end

-- Status of on-premise Connector
function M.ConnectorStatus(str)
	asserts.AssertConnectorStatus(str)
	return str
end

function asserts.AssertAmiId(str)
	assert(str)
	assert(type(str) == "string", "Expected AmiId to be of type 'string'")
end

-- The AMI id for the image resulting from a Replication Run.
function M.AmiId(str)
	asserts.AssertAmiId(str)
	return str
end

function asserts.AssertVmPath(str)
	assert(str)
	assert(type(str) == "string", "Expected VmPath to be of type 'string'")
end

-- Path to VM
function M.VmPath(str)
	asserts.AssertVmPath(str)
	return str
end

function asserts.AssertVmManagerName(str)
	assert(str)
	assert(type(str) == "string", "Expected VmManagerName to be of type 'string'")
end

-- VM Manager Name
function M.VmManagerName(str)
	asserts.AssertVmManagerName(str)
	return str
end

function asserts.AssertServerType(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerType to be of type 'string'")
end

-- Type of server.
function M.ServerType(str)
	asserts.AssertServerType(str)
	return str
end

function asserts.AssertLicenseType(str)
	assert(str)
	assert(type(str) == "string", "Expected LicenseType to be of type 'string'")
end

-- The license type to be used for the Amazon Machine Image (AMI) created after a successful ReplicationRun.
function M.LicenseType(str)
	asserts.AssertLicenseType(str)
	return str
end

function asserts.AssertReplicationRunStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunStatusMessage to be of type 'string'")
end

-- String describing current status of Replication Run
function M.ReplicationRunStatusMessage(str)
	asserts.AssertReplicationRunStatusMessage(str)
	return str
end

function asserts.AssertReplicationJobStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationJobStatusMessage to be of type 'string'")
end

-- String describing current status of Replication Job
function M.ReplicationJobStatusMessage(str)
	asserts.AssertReplicationJobStatusMessage(str)
	return str
end

function asserts.AssertVmManagerId(str)
	assert(str)
	assert(type(str) == "string", "Expected VmManagerId to be of type 'string'")
end

-- Unique Identifier for VM Manager
function M.VmManagerId(str)
	asserts.AssertVmManagerId(str)
	return str
end

function asserts.AssertVmName(str)
	assert(str)
	assert(type(str) == "string", "Expected VmName to be of type 'string'")
end

-- Name of Virtual Machine
function M.VmName(str)
	asserts.AssertVmName(str)
	return str
end

function asserts.AssertConnectorVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorVersion to be of type 'string'")
end

-- Connector version string
function M.ConnectorVersion(str)
	asserts.AssertConnectorVersion(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- Error Message string
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertVmManagerType(str)
	assert(str)
	assert(type(str) == "string", "Expected VmManagerType to be of type 'string'")
end

-- VM Management Product
function M.VmManagerType(str)
	asserts.AssertVmManagerType(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertFrequency(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Frequency to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Frequency(integer)
	asserts.AssertFrequency(integer)
	return integer
end

function asserts.AssertReplicationJobTerminated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ReplicationJobTerminated to be of type 'boolean'")
end

function M.ReplicationJobTerminated(boolean)
	asserts.AssertReplicationJobTerminated(boolean)
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

function asserts.AssertReplicationRunList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationRunList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationRun(v)
	end
end

-- List of Replication Runs
-- List of ReplicationRun objects
function M.ReplicationRunList(list)
	asserts.AssertReplicationRunList(list)
	return list
end

function asserts.AssertConnectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConnector(v)
	end
end

-- List of connectors
-- List of Connector objects
function M.ConnectorList(list)
	asserts.AssertConnectorList(list)
	return list
end

function asserts.AssertConnectorCapabilityList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectorCapabilityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConnectorCapability(v)
	end
end

-- List of Connector Capabilities
-- List of ConnectorCapability objects
function M.ConnectorCapabilityList(list)
	asserts.AssertConnectorCapabilityList(list)
	return list
end

function asserts.AssertServerList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServer(v)
	end
end

-- List of servers from catalog
-- List of Server objects
function M.ServerList(list)
	asserts.AssertServerList(list)
	return list
end

function asserts.AssertReplicationJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationJobList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationJob(v)
	end
end

-- List of Replication Jobs
-- List of ReplicationJob objects
function M.ReplicationJobList(list)
	asserts.AssertReplicationJobList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "sms.amazonaws.com"
		end
	end
	local ss = { "sms" }
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
--- Call ImportServerCatalog asynchronously, invoking a callback when done
-- @param ImportServerCatalogRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportServerCatalogAsync(ImportServerCatalogRequest, cb)
	assert(ImportServerCatalogRequest, "You must provide a ImportServerCatalogRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.ImportServerCatalog",
	}
	for header,value in pairs(ImportServerCatalogRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportServerCatalogRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportServerCatalog synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportServerCatalogRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ImportServerCatalogSync(ImportServerCatalogRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportServerCatalogAsync(ImportServerCatalogRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConnectors asynchronously, invoking a callback when done
-- @param GetConnectorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetConnectorsAsync(GetConnectorsRequest, cb)
	assert(GetConnectorsRequest, "You must provide a GetConnectorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetConnectors",
	}
	for header,value in pairs(GetConnectorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetConnectorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConnectors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConnectorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetConnectorsSync(GetConnectorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConnectorsAsync(GetConnectorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationJob asynchronously, invoking a callback when done
-- @param DeleteReplicationJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReplicationJobAsync(DeleteReplicationJobRequest, cb)
	assert(DeleteReplicationJobRequest, "You must provide a DeleteReplicationJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.DeleteReplicationJob",
	}
	for header,value in pairs(DeleteReplicationJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReplicationJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReplicationJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReplicationJobSync(DeleteReplicationJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationJobAsync(DeleteReplicationJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartOnDemandReplicationRun asynchronously, invoking a callback when done
-- @param StartOnDemandReplicationRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartOnDemandReplicationRunAsync(StartOnDemandReplicationRunRequest, cb)
	assert(StartOnDemandReplicationRunRequest, "You must provide a StartOnDemandReplicationRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.StartOnDemandReplicationRun",
	}
	for header,value in pairs(StartOnDemandReplicationRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartOnDemandReplicationRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartOnDemandReplicationRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartOnDemandReplicationRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartOnDemandReplicationRunSync(StartOnDemandReplicationRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartOnDemandReplicationRunAsync(StartOnDemandReplicationRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetServers asynchronously, invoking a callback when done
-- @param GetServersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetServersAsync(GetServersRequest, cb)
	assert(GetServersRequest, "You must provide a GetServersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetServers",
	}
	for header,value in pairs(GetServersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetServersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetServers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetServersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetServersSync(GetServersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetServersAsync(GetServersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReplicationRuns asynchronously, invoking a callback when done
-- @param GetReplicationRunsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetReplicationRunsAsync(GetReplicationRunsRequest, cb)
	assert(GetReplicationRunsRequest, "You must provide a GetReplicationRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetReplicationRuns",
	}
	for header,value in pairs(GetReplicationRunsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetReplicationRunsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReplicationRuns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReplicationRunsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetReplicationRunsSync(GetReplicationRunsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReplicationRunsAsync(GetReplicationRunsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReplicationJobs asynchronously, invoking a callback when done
-- @param GetReplicationJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetReplicationJobsAsync(GetReplicationJobsRequest, cb)
	assert(GetReplicationJobsRequest, "You must provide a GetReplicationJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetReplicationJobs",
	}
	for header,value in pairs(GetReplicationJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetReplicationJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReplicationJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReplicationJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetReplicationJobsSync(GetReplicationJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReplicationJobsAsync(GetReplicationJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateConnector asynchronously, invoking a callback when done
-- @param DisassociateConnectorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateConnectorAsync(DisassociateConnectorRequest, cb)
	assert(DisassociateConnectorRequest, "You must provide a DisassociateConnectorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.DisassociateConnector",
	}
	for header,value in pairs(DisassociateConnectorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateConnectorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateConnector synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateConnectorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateConnectorSync(DisassociateConnectorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateConnectorAsync(DisassociateConnectorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReplicationJob asynchronously, invoking a callback when done
-- @param CreateReplicationJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReplicationJobAsync(CreateReplicationJobRequest, cb)
	assert(CreateReplicationJobRequest, "You must provide a CreateReplicationJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.CreateReplicationJob",
	}
	for header,value in pairs(CreateReplicationJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReplicationJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReplicationJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReplicationJobSync(CreateReplicationJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationJobAsync(CreateReplicationJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateReplicationJob asynchronously, invoking a callback when done
-- @param UpdateReplicationJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateReplicationJobAsync(UpdateReplicationJobRequest, cb)
	assert(UpdateReplicationJobRequest, "You must provide a UpdateReplicationJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.UpdateReplicationJob",
	}
	for header,value in pairs(UpdateReplicationJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateReplicationJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateReplicationJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateReplicationJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateReplicationJobSync(UpdateReplicationJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateReplicationJobAsync(UpdateReplicationJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteServerCatalog asynchronously, invoking a callback when done
-- @param DeleteServerCatalogRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServerCatalogAsync(DeleteServerCatalogRequest, cb)
	assert(DeleteServerCatalogRequest, "You must provide a DeleteServerCatalogRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.DeleteServerCatalog",
	}
	for header,value in pairs(DeleteServerCatalogRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServerCatalogRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteServerCatalog synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServerCatalogRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServerCatalogSync(DeleteServerCatalogRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServerCatalogAsync(DeleteServerCatalogRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
