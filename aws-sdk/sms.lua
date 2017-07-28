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
-- @param _replicationJobId [ReplicationJobId] 
-- @param _description [Description] 
-- Required parameter: replicationJobId
function M.StartOnDemandReplicationRunRequest(_replicationJobId, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartOnDemandReplicationRunRequest")
	local t = { 
		["replicationJobId"] = _replicationJobId,
		["description"] = _description,
	}
	asserts.AssertStartOnDemandReplicationRunRequest(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ReplicationJobNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationJobNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertReplicationJobNotFoundException(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InternalError(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalError")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalError(t)
	return t
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
function M.ImportServerCatalogResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportServerCatalogResponse")
	local t = { 
	}
	asserts.AssertImportServerCatalogResponse(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.NoConnectorsAvailableException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoConnectorsAvailableException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertNoConnectorsAvailableException(t)
	return t
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
-- @param _status [ConnectorStatus] 
-- @param _capabilityList [ConnectorCapabilityList] 
-- @param _macAddress [MacAddress] 
-- @param _vmManagerName [VmManagerName] 
-- @param _connectorId [ConnectorId] 
-- @param _associatedOn [Timestamp] 
-- @param _version [ConnectorVersion] 
-- @param _vmManagerId [VmManagerId] 
-- @param _vmManagerType [VmManagerType] 
-- @param _ipAddress [IpAddress] 
function M.Connector(_status, _capabilityList, _macAddress, _vmManagerName, _connectorId, _associatedOn, _version, _vmManagerId, _vmManagerType, _ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connector")
	local t = { 
		["status"] = _status,
		["capabilityList"] = _capabilityList,
		["macAddress"] = _macAddress,
		["vmManagerName"] = _vmManagerName,
		["connectorId"] = _connectorId,
		["associatedOn"] = _associatedOn,
		["version"] = _version,
		["vmManagerId"] = _vmManagerId,
		["vmManagerType"] = _vmManagerType,
		["ipAddress"] = _ipAddress,
	}
	asserts.AssertConnector(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _replicationJobList [ReplicationJobList] 
function M.GetReplicationJobsResponse(_nextToken, _replicationJobList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationJobsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["replicationJobList"] = _replicationJobList,
	}
	asserts.AssertGetReplicationJobsResponse(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ServerCannotBeReplicatedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerCannotBeReplicatedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServerCannotBeReplicatedException(t)
	return t
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
function M.ImportServerCatalogRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportServerCatalogRequest")
	local t = { 
	}
	asserts.AssertImportServerCatalogRequest(t)
	return t
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
function M.DeleteServerCatalogRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerCatalogRequest")
	local t = { 
	}
	asserts.AssertDeleteServerCatalogRequest(t)
	return t
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
-- @param _amiId [AmiId] 
-- @param _description [Description] 
-- @param _state [ReplicationRunState] 
-- @param _completedTime [Timestamp] 
-- @param _scheduledStartTime [Timestamp] 
-- @param _replicationRunId [ReplicationRunId] 
-- @param _type [ReplicationRunType] 
-- @param _statusMessage [ReplicationRunStatusMessage] 
function M.ReplicationRun(_amiId, _description, _state, _completedTime, _scheduledStartTime, _replicationRunId, _type, _statusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationRun")
	local t = { 
		["amiId"] = _amiId,
		["description"] = _description,
		["state"] = _state,
		["completedTime"] = _completedTime,
		["scheduledStartTime"] = _scheduledStartTime,
		["replicationRunId"] = _replicationRunId,
		["type"] = _type,
		["statusMessage"] = _statusMessage,
	}
	asserts.AssertReplicationRun(t)
	return t
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
function M.DeleteServerCatalogResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerCatalogResponse")
	local t = { 
	}
	asserts.AssertDeleteServerCatalogResponse(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _replicationJobId [ReplicationJobId] 
-- @param _maxResults [MaxResults] 
-- Required parameter: replicationJobId
function M.GetReplicationRunsRequest(_nextToken, _replicationJobId, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationRunsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["replicationJobId"] = _replicationJobId,
		["maxResults"] = _maxResults,
	}
	asserts.AssertGetReplicationRunsRequest(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _maxResults [MaxResults] 
function M.GetConnectorsRequest(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectorsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertGetConnectorsRequest(t)
	return t
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
-- @param _connectorId [ConnectorId] 
-- Required parameter: connectorId
function M.DisassociateConnectorRequest(_connectorId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConnectorRequest")
	local t = { 
		["connectorId"] = _connectorId,
	}
	asserts.AssertDisassociateConnectorRequest(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
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
-- @param _lastModifiedOn [Timestamp] 
-- @param _nextToken [NextToken] 
-- @param _serverCatalogStatus [ServerCatalogStatus] 
-- @param _serverList [ServerList] 
function M.GetServersResponse(_lastModifiedOn, _nextToken, _serverCatalogStatus, _serverList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServersResponse")
	local t = { 
		["lastModifiedOn"] = _lastModifiedOn,
		["nextToken"] = _nextToken,
		["serverCatalogStatus"] = _serverCatalogStatus,
		["serverList"] = _serverList,
	}
	asserts.AssertGetServersResponse(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ReplicationRunLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationRunLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertReplicationRunLimitExceededException(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.UnauthorizedOperationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedOperationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnauthorizedOperationException(t)
	return t
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
function M.DeleteReplicationJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationJobResponse")
	local t = { 
	}
	asserts.AssertDeleteReplicationJobResponse(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.OperationNotPermittedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertOperationNotPermittedException(t)
	return t
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
-- @param _replicationJobId [ReplicationJobId] 
function M.CreateReplicationJobResponse(_replicationJobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationJobResponse")
	local t = { 
		["replicationJobId"] = _replicationJobId,
	}
	asserts.AssertCreateReplicationJobResponse(t)
	return t
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
-- @param _licenseType [LicenseType] 
-- @param _description [Description] 
-- @param _nextReplicationRunStartTime [Timestamp] 
-- @param _replicationJobId [ReplicationJobId] 
-- @param _frequency [Frequency] 
-- @param _roleName [RoleName] 
-- Required parameter: replicationJobId
function M.UpdateReplicationJobRequest(_licenseType, _description, _nextReplicationRunStartTime, _replicationJobId, _frequency, _roleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReplicationJobRequest")
	local t = { 
		["licenseType"] = _licenseType,
		["description"] = _description,
		["nextReplicationRunStartTime"] = _nextReplicationRunStartTime,
		["replicationJobId"] = _replicationJobId,
		["frequency"] = _frequency,
		["roleName"] = _roleName,
	}
	asserts.AssertUpdateReplicationJobRequest(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.MissingRequiredParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingRequiredParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMissingRequiredParameterException(t)
	return t
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
-- @param _replicationJobTerminated [ReplicationJobTerminated] 
-- @param _serverId [ServerId] 
-- @param _serverType [ServerType] 
-- @param _replicationJobId [ReplicationJobId] 
-- @param _vmServer [VmServer] 
function M.Server(_replicationJobTerminated, _serverId, _serverType, _replicationJobId, _vmServer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Server")
	local t = { 
		["replicationJobTerminated"] = _replicationJobTerminated,
		["serverId"] = _serverId,
		["serverType"] = _serverType,
		["replicationJobId"] = _replicationJobId,
		["vmServer"] = _vmServer,
	}
	asserts.AssertServer(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ReplicationJobAlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationJobAlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertReplicationJobAlreadyExistsException(t)
	return t
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
-- @param _replicationRunId [ReplicationRunId] 
function M.StartOnDemandReplicationRunResponse(_replicationRunId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartOnDemandReplicationRunResponse")
	local t = { 
		["replicationRunId"] = _replicationRunId,
	}
	asserts.AssertStartOnDemandReplicationRunResponse(t)
	return t
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
-- @param _licenseType [LicenseType] 
-- @param _description [Description] 
-- @param _seedReplicationTime [Timestamp] 
-- @param _frequency [Frequency] 
-- @param _roleName [RoleName] 
-- @param _serverId [ServerId] 
-- Required parameter: serverId
-- Required parameter: seedReplicationTime
-- Required parameter: frequency
function M.CreateReplicationJobRequest(_licenseType, _description, _seedReplicationTime, _frequency, _roleName, _serverId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationJobRequest")
	local t = { 
		["licenseType"] = _licenseType,
		["description"] = _description,
		["seedReplicationTime"] = _seedReplicationTime,
		["frequency"] = _frequency,
		["roleName"] = _roleName,
		["serverId"] = _serverId,
	}
	asserts.AssertCreateReplicationJobRequest(t)
	return t
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
-- @param _replicationJobId [ReplicationJobId] 
-- Required parameter: replicationJobId
function M.DeleteReplicationJobRequest(_replicationJobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationJobRequest")
	local t = { 
		["replicationJobId"] = _replicationJobId,
	}
	asserts.AssertDeleteReplicationJobRequest(t)
	return t
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
function M.DisassociateConnectorResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConnectorResponse")
	local t = { 
	}
	asserts.AssertDisassociateConnectorResponse(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _replicationJobId [ReplicationJobId] 
-- @param _maxResults [MaxResults] 
function M.GetReplicationJobsRequest(_nextToken, _replicationJobId, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationJobsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["replicationJobId"] = _replicationJobId,
		["maxResults"] = _maxResults,
	}
	asserts.AssertGetReplicationJobsRequest(t)
	return t
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
-- @param _licenseType [LicenseType] 
-- @param _latestAmiId [AmiId] 
-- @param _description [Description] 
-- @param _vmServer [VmServer] 
-- @param _replicationRunList [ReplicationRunList] 
-- @param _nextReplicationRunStartTime [Timestamp] 
-- @param _serverType [ServerType] 
-- @param _replicationJobId [ReplicationJobId] 
-- @param _state [ReplicationJobState] 
-- @param _seedReplicationTime [Timestamp] 
-- @param _frequency [Frequency] 
-- @param _roleName [RoleName] 
-- @param _serverId [ServerId] 
-- @param _statusMessage [ReplicationJobStatusMessage] 
function M.ReplicationJob(_licenseType, _latestAmiId, _description, _vmServer, _replicationRunList, _nextReplicationRunStartTime, _serverType, _replicationJobId, _state, _seedReplicationTime, _frequency, _roleName, _serverId, _statusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationJob")
	local t = { 
		["licenseType"] = _licenseType,
		["latestAmiId"] = _latestAmiId,
		["description"] = _description,
		["vmServer"] = _vmServer,
		["replicationRunList"] = _replicationRunList,
		["nextReplicationRunStartTime"] = _nextReplicationRunStartTime,
		["serverType"] = _serverType,
		["replicationJobId"] = _replicationJobId,
		["state"] = _state,
		["seedReplicationTime"] = _seedReplicationTime,
		["frequency"] = _frequency,
		["roleName"] = _roleName,
		["serverId"] = _serverId,
		["statusMessage"] = _statusMessage,
	}
	asserts.AssertReplicationJob(t)
	return t
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
-- @param _vmManagerName [VmManagerName] 
-- @param _vmServerAddress [VmServerAddress] 
-- @param _vmName [VmName] 
-- @param _vmPath [VmPath] 
-- @param _vmManagerType [VmManagerType] 
function M.VmServer(_vmManagerName, _vmServerAddress, _vmName, _vmPath, _vmManagerType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VmServer")
	local t = { 
		["vmManagerName"] = _vmManagerName,
		["vmServerAddress"] = _vmServerAddress,
		["vmName"] = _vmName,
		["vmPath"] = _vmPath,
		["vmManagerType"] = _vmManagerType,
	}
	asserts.AssertVmServer(t)
	return t
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
-- @param _vmManagerId [VmManagerId] 
-- @param _vmId [VmId] 
function M.VmServerAddress(_vmManagerId, _vmId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VmServerAddress")
	local t = { 
		["vmManagerId"] = _vmManagerId,
		["vmId"] = _vmId,
	}
	asserts.AssertVmServerAddress(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _maxResults [MaxResults] 
function M.GetServersRequest(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServersRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertGetServersRequest(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _connectorList [ConnectorList] 
function M.GetConnectorsResponse(_nextToken, _connectorList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectorsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["connectorList"] = _connectorList,
	}
	asserts.AssertGetConnectorsResponse(t)
	return t
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
-- @param _nextToken [NextToken] 
-- @param _replicationJob [ReplicationJob] 
-- @param _replicationRunList [ReplicationRunList] 
function M.GetReplicationRunsResponse(_nextToken, _replicationJob, _replicationRunList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationRunsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["replicationJob"] = _replicationJob,
		["replicationRunList"] = _replicationRunList,
	}
	asserts.AssertGetReplicationRunsResponse(t)
	return t
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
function M.UpdateReplicationJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReplicationJobResponse")
	local t = { 
	}
	asserts.AssertUpdateReplicationJobResponse(t)
	return t
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ImportServerCatalog
-- @param ImportServerCatalogRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportServerCatalogAsync(ImportServerCatalogRequest, cb)
	assert(ImportServerCatalogRequest, "You must provide a ImportServerCatalogRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.ImportServerCatalog",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ImportServerCatalogRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetConnectors
-- @param GetConnectorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetConnectorsAsync(GetConnectorsRequest, cb)
	assert(GetConnectorsRequest, "You must provide a GetConnectorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetConnectors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetConnectorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReplicationJob
-- @param DeleteReplicationJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReplicationJobAsync(DeleteReplicationJobRequest, cb)
	assert(DeleteReplicationJobRequest, "You must provide a DeleteReplicationJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.DeleteReplicationJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReplicationJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartOnDemandReplicationRun
-- @param StartOnDemandReplicationRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartOnDemandReplicationRunAsync(StartOnDemandReplicationRunRequest, cb)
	assert(StartOnDemandReplicationRunRequest, "You must provide a StartOnDemandReplicationRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.StartOnDemandReplicationRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartOnDemandReplicationRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetServers
-- @param GetServersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetServersAsync(GetServersRequest, cb)
	assert(GetServersRequest, "You must provide a GetServersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetServers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetServersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetReplicationRuns
-- @param GetReplicationRunsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetReplicationRunsAsync(GetReplicationRunsRequest, cb)
	assert(GetReplicationRunsRequest, "You must provide a GetReplicationRunsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetReplicationRuns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetReplicationRunsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetReplicationJobs
-- @param GetReplicationJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetReplicationJobsAsync(GetReplicationJobsRequest, cb)
	assert(GetReplicationJobsRequest, "You must provide a GetReplicationJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.GetReplicationJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetReplicationJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateConnector
-- @param DisassociateConnectorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateConnectorAsync(DisassociateConnectorRequest, cb)
	assert(DisassociateConnectorRequest, "You must provide a DisassociateConnectorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.DisassociateConnector",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateConnectorRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReplicationJob
-- @param CreateReplicationJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReplicationJobAsync(CreateReplicationJobRequest, cb)
	assert(CreateReplicationJobRequest, "You must provide a CreateReplicationJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.CreateReplicationJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReplicationJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateReplicationJob
-- @param UpdateReplicationJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateReplicationJobAsync(UpdateReplicationJobRequest, cb)
	assert(UpdateReplicationJobRequest, "You must provide a UpdateReplicationJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.UpdateReplicationJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateReplicationJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteServerCatalog
-- @param DeleteServerCatalogRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteServerCatalogAsync(DeleteServerCatalogRequest, cb)
	assert(DeleteServerCatalogRequest, "You must provide a DeleteServerCatalogRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSServerMigrationService_V2016_10_24.DeleteServerCatalog",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteServerCatalogRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
