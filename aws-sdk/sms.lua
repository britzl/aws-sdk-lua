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

local StartOnDemandReplicationRunRequest_keys = { "replicationJobId" = true, "description" = true, nil }

function M.AssertStartOnDemandReplicationRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartOnDemandReplicationRunRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(StartOnDemandReplicationRunRequest_keys[k], "StartOnDemandReplicationRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartOnDemandReplicationRunRequest
--  
-- @param replicationJobId [ReplicationJobId]  
-- @param description [Description]  
-- Required parameter: replicationJobId
function M.StartOnDemandReplicationRunRequest(replicationJobId, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartOnDemandReplicationRunRequest")
	local t = { 
		["replicationJobId"] = replicationJobId,
		["description"] = description,
	}
	M.AssertStartOnDemandReplicationRunRequest(t)
	return t
end

local ReplicationJobNotFoundException_keys = { "message" = true, nil }

function M.AssertReplicationJobNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationJobNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationJobNotFoundException_keys[k], "ReplicationJobNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationJobNotFoundException
-- The specified Replication Job cannot be found.
-- @param message [ErrorMessage] The specified Replication Job cannot be found.
function M.ReplicationJobNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationJobNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertReplicationJobNotFoundException(t)
	return t
end

local InternalError_keys = { "message" = true, nil }

function M.AssertInternalError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalError to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalError_keys[k], "InternalError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalError
-- An internal error has occured.
-- @param message [ErrorMessage] An internal error has occured.
function M.InternalError(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalError")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalError(t)
	return t
end

local ImportServerCatalogResponse_keys = { nil }

function M.AssertImportServerCatalogResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportServerCatalogResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ImportServerCatalogResponse_keys[k], "ImportServerCatalogResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportServerCatalogResponse
--  
function M.ImportServerCatalogResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportServerCatalogResponse")
	local t = { 
	}
	M.AssertImportServerCatalogResponse(t)
	return t
end

local NoConnectorsAvailableException_keys = { "message" = true, nil }

function M.AssertNoConnectorsAvailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoConnectorsAvailableException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoConnectorsAvailableException_keys[k], "NoConnectorsAvailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoConnectorsAvailableException
-- No connectors are available to handle this request. Please associate connector(s) and verify any existing connectors are healthy and can respond to requests.
-- @param message [ErrorMessage] No connectors are available to handle this request. Please associate connector(s) and verify any existing connectors are healthy and can respond to requests.
function M.NoConnectorsAvailableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoConnectorsAvailableException")
	local t = { 
		["message"] = message,
	}
	M.AssertNoConnectorsAvailableException(t)
	return t
end

local Connector_keys = { "status" = true, "capabilityList" = true, "macAddress" = true, "vmManagerName" = true, "connectorId" = true, "associatedOn" = true, "version" = true, "vmManagerId" = true, "vmManagerType" = true, "ipAddress" = true, nil }

function M.AssertConnector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connector to be of type 'table'")
	if struct["status"] then M.AssertConnectorStatus(struct["status"]) end
	if struct["capabilityList"] then M.AssertConnectorCapabilityList(struct["capabilityList"]) end
	if struct["macAddress"] then M.AssertMacAddress(struct["macAddress"]) end
	if struct["vmManagerName"] then M.AssertVmManagerName(struct["vmManagerName"]) end
	if struct["connectorId"] then M.AssertConnectorId(struct["connectorId"]) end
	if struct["associatedOn"] then M.AssertTimestamp(struct["associatedOn"]) end
	if struct["version"] then M.AssertConnectorVersion(struct["version"]) end
	if struct["vmManagerId"] then M.AssertVmManagerId(struct["vmManagerId"]) end
	if struct["vmManagerType"] then M.AssertVmManagerType(struct["vmManagerType"]) end
	if struct["ipAddress"] then M.AssertIpAddress(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(Connector_keys[k], "Connector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connector
-- Object representing a Connector
-- @param status [ConnectorStatus] Object representing a Connector
-- @param capabilityList [ConnectorCapabilityList] Object representing a Connector
-- @param macAddress [MacAddress] Object representing a Connector
-- @param vmManagerName [VmManagerName] Object representing a Connector
-- @param connectorId [ConnectorId] Object representing a Connector
-- @param associatedOn [Timestamp] Object representing a Connector
-- @param version [ConnectorVersion] Object representing a Connector
-- @param vmManagerId [VmManagerId] Object representing a Connector
-- @param vmManagerType [VmManagerType] Object representing a Connector
-- @param ipAddress [IpAddress] Object representing a Connector
function M.Connector(status, capabilityList, macAddress, vmManagerName, connectorId, associatedOn, version, vmManagerId, vmManagerType, ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Connector")
	local t = { 
		["status"] = status,
		["capabilityList"] = capabilityList,
		["macAddress"] = macAddress,
		["vmManagerName"] = vmManagerName,
		["connectorId"] = connectorId,
		["associatedOn"] = associatedOn,
		["version"] = version,
		["vmManagerId"] = vmManagerId,
		["vmManagerType"] = vmManagerType,
		["ipAddress"] = ipAddress,
	}
	M.AssertConnector(t)
	return t
end

local GetReplicationJobsResponse_keys = { "nextToken" = true, "replicationJobList" = true, nil }

function M.AssertGetReplicationJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationJobsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJobList"] then M.AssertReplicationJobList(struct["replicationJobList"]) end
	for k,_ in pairs(struct) do
		assert(GetReplicationJobsResponse_keys[k], "GetReplicationJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationJobsResponse
--  
-- @param nextToken [NextToken]  
-- @param replicationJobList [ReplicationJobList]  
function M.GetReplicationJobsResponse(nextToken, replicationJobList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationJobsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["replicationJobList"] = replicationJobList,
	}
	M.AssertGetReplicationJobsResponse(t)
	return t
end

local ServerCannotBeReplicatedException_keys = { "message" = true, nil }

function M.AssertServerCannotBeReplicatedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerCannotBeReplicatedException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServerCannotBeReplicatedException_keys[k], "ServerCannotBeReplicatedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerCannotBeReplicatedException
-- The provided server cannot be replicated.
-- @param message [ErrorMessage] The provided server cannot be replicated.
function M.ServerCannotBeReplicatedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerCannotBeReplicatedException")
	local t = { 
		["message"] = message,
	}
	M.AssertServerCannotBeReplicatedException(t)
	return t
end

local ImportServerCatalogRequest_keys = { nil }

function M.AssertImportServerCatalogRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportServerCatalogRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ImportServerCatalogRequest_keys[k], "ImportServerCatalogRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportServerCatalogRequest
--  
function M.ImportServerCatalogRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportServerCatalogRequest")
	local t = { 
	}
	M.AssertImportServerCatalogRequest(t)
	return t
end

local DeleteServerCatalogRequest_keys = { nil }

function M.AssertDeleteServerCatalogRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerCatalogRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteServerCatalogRequest_keys[k], "DeleteServerCatalogRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerCatalogRequest
--  
function M.DeleteServerCatalogRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerCatalogRequest")
	local t = { 
	}
	M.AssertDeleteServerCatalogRequest(t)
	return t
end

local ReplicationRun_keys = { "amiId" = true, "description" = true, "state" = true, "completedTime" = true, "scheduledStartTime" = true, "replicationRunId" = true, "type" = true, "statusMessage" = true, nil }

function M.AssertReplicationRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRun to be of type 'table'")
	if struct["amiId"] then M.AssertAmiId(struct["amiId"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["state"] then M.AssertReplicationRunState(struct["state"]) end
	if struct["completedTime"] then M.AssertTimestamp(struct["completedTime"]) end
	if struct["scheduledStartTime"] then M.AssertTimestamp(struct["scheduledStartTime"]) end
	if struct["replicationRunId"] then M.AssertReplicationRunId(struct["replicationRunId"]) end
	if struct["type"] then M.AssertReplicationRunType(struct["type"]) end
	if struct["statusMessage"] then M.AssertReplicationRunStatusMessage(struct["statusMessage"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationRun_keys[k], "ReplicationRun contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRun
-- Object representing a Replication Run
-- @param amiId [AmiId] Object representing a Replication Run
-- @param description [Description] Object representing a Replication Run
-- @param state [ReplicationRunState] Object representing a Replication Run
-- @param completedTime [Timestamp] Object representing a Replication Run
-- @param scheduledStartTime [Timestamp] Object representing a Replication Run
-- @param replicationRunId [ReplicationRunId] Object representing a Replication Run
-- @param type [ReplicationRunType] Object representing a Replication Run
-- @param statusMessage [ReplicationRunStatusMessage] Object representing a Replication Run
function M.ReplicationRun(amiId, description, state, completedTime, scheduledStartTime, replicationRunId, type, statusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationRun")
	local t = { 
		["amiId"] = amiId,
		["description"] = description,
		["state"] = state,
		["completedTime"] = completedTime,
		["scheduledStartTime"] = scheduledStartTime,
		["replicationRunId"] = replicationRunId,
		["type"] = type,
		["statusMessage"] = statusMessage,
	}
	M.AssertReplicationRun(t)
	return t
end

local DeleteServerCatalogResponse_keys = { nil }

function M.AssertDeleteServerCatalogResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerCatalogResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteServerCatalogResponse_keys[k], "DeleteServerCatalogResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerCatalogResponse
--  
function M.DeleteServerCatalogResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerCatalogResponse")
	local t = { 
	}
	M.AssertDeleteServerCatalogResponse(t)
	return t
end

local GetReplicationRunsRequest_keys = { "nextToken" = true, "replicationJobId" = true, "maxResults" = true, nil }

function M.AssertGetReplicationRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationRunsRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetReplicationRunsRequest_keys[k], "GetReplicationRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationRunsRequest
--  
-- @param nextToken [NextToken]  
-- @param replicationJobId [ReplicationJobId]  
-- @param maxResults [MaxResults]  
-- Required parameter: replicationJobId
function M.GetReplicationRunsRequest(nextToken, replicationJobId, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationRunsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["replicationJobId"] = replicationJobId,
		["maxResults"] = maxResults,
	}
	M.AssertGetReplicationRunsRequest(t)
	return t
end

local GetConnectorsRequest_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertGetConnectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectorsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetConnectorsRequest_keys[k], "GetConnectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectorsRequest
--  
-- @param nextToken [NextToken]  
-- @param maxResults [MaxResults]  
function M.GetConnectorsRequest(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectorsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertGetConnectorsRequest(t)
	return t
end

local DisassociateConnectorRequest_keys = { "connectorId" = true, nil }

function M.AssertDisassociateConnectorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConnectorRequest to be of type 'table'")
	assert(struct["connectorId"], "Expected key connectorId to exist in table")
	if struct["connectorId"] then M.AssertConnectorId(struct["connectorId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateConnectorRequest_keys[k], "DisassociateConnectorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConnectorRequest
--  
-- @param connectorId [ConnectorId]  
-- Required parameter: connectorId
function M.DisassociateConnectorRequest(connectorId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConnectorRequest")
	local t = { 
		["connectorId"] = connectorId,
	}
	M.AssertDisassociateConnectorRequest(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- A parameter specified in the request is not valid, is unsupported, or cannot be used.
-- @param message [ErrorMessage] A parameter specified in the request is not valid, is unsupported, or cannot be used.
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local GetServersResponse_keys = { "lastModifiedOn" = true, "nextToken" = true, "serverCatalogStatus" = true, "serverList" = true, nil }

function M.AssertGetServersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServersResponse to be of type 'table'")
	if struct["lastModifiedOn"] then M.AssertTimestamp(struct["lastModifiedOn"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["serverCatalogStatus"] then M.AssertServerCatalogStatus(struct["serverCatalogStatus"]) end
	if struct["serverList"] then M.AssertServerList(struct["serverList"]) end
	for k,_ in pairs(struct) do
		assert(GetServersResponse_keys[k], "GetServersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServersResponse
--  
-- @param lastModifiedOn [Timestamp]  
-- @param nextToken [NextToken]  
-- @param serverCatalogStatus [ServerCatalogStatus]  
-- @param serverList [ServerList]  
function M.GetServersResponse(lastModifiedOn, nextToken, serverCatalogStatus, serverList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServersResponse")
	local t = { 
		["lastModifiedOn"] = lastModifiedOn,
		["nextToken"] = nextToken,
		["serverCatalogStatus"] = serverCatalogStatus,
		["serverList"] = serverList,
	}
	M.AssertGetServersResponse(t)
	return t
end

local ReplicationRunLimitExceededException_keys = { "message" = true, nil }

function M.AssertReplicationRunLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRunLimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationRunLimitExceededException_keys[k], "ReplicationRunLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRunLimitExceededException
-- This user has exceeded the maximum allowed Replication Run limit.
-- @param message [ErrorMessage] This user has exceeded the maximum allowed Replication Run limit.
function M.ReplicationRunLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationRunLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertReplicationRunLimitExceededException(t)
	return t
end

local UnauthorizedOperationException_keys = { "message" = true, nil }

function M.AssertUnauthorizedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperationException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnauthorizedOperationException_keys[k], "UnauthorizedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperationException
-- This user does not have permissions to perform this operation.
-- @param message [ErrorMessage] This user does not have permissions to perform this operation.
function M.UnauthorizedOperationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedOperationException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnauthorizedOperationException(t)
	return t
end

local DeleteReplicationJobResponse_keys = { nil }

function M.AssertDeleteReplicationJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteReplicationJobResponse_keys[k], "DeleteReplicationJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationJobResponse
--  
function M.DeleteReplicationJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationJobResponse")
	local t = { 
	}
	M.AssertDeleteReplicationJobResponse(t)
	return t
end

local OperationNotPermittedException_keys = { "message" = true, nil }

function M.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OperationNotPermittedException_keys[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- The specified operation is not allowed. This error can occur for a number of reasons; for example, you might be trying to start a Replication Run before seed Replication Run.
-- @param message [ErrorMessage] The specified operation is not allowed. This error can occur for a number of reasons; for example, you might be trying to start a Replication Run before seed Replication Run.
function M.OperationNotPermittedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
		["message"] = message,
	}
	M.AssertOperationNotPermittedException(t)
	return t
end

local CreateReplicationJobResponse_keys = { "replicationJobId" = true, nil }

function M.AssertCreateReplicationJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationJobResponse to be of type 'table'")
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationJobResponse_keys[k], "CreateReplicationJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationJobResponse
--  
-- @param replicationJobId [ReplicationJobId]  
function M.CreateReplicationJobResponse(replicationJobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationJobResponse")
	local t = { 
		["replicationJobId"] = replicationJobId,
	}
	M.AssertCreateReplicationJobResponse(t)
	return t
end

local UpdateReplicationJobRequest_keys = { "licenseType" = true, "description" = true, "nextReplicationRunStartTime" = true, "replicationJobId" = true, "frequency" = true, "roleName" = true, nil }

function M.AssertUpdateReplicationJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReplicationJobRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["licenseType"] then M.AssertLicenseType(struct["licenseType"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["nextReplicationRunStartTime"] then M.AssertTimestamp(struct["nextReplicationRunStartTime"]) end
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["frequency"] then M.AssertFrequency(struct["frequency"]) end
	if struct["roleName"] then M.AssertRoleName(struct["roleName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateReplicationJobRequest_keys[k], "UpdateReplicationJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReplicationJobRequest
--  
-- @param licenseType [LicenseType]  
-- @param description [Description]  
-- @param nextReplicationRunStartTime [Timestamp]  
-- @param replicationJobId [ReplicationJobId]  
-- @param frequency [Frequency]  
-- @param roleName [RoleName]  
-- Required parameter: replicationJobId
function M.UpdateReplicationJobRequest(licenseType, description, nextReplicationRunStartTime, replicationJobId, frequency, roleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReplicationJobRequest")
	local t = { 
		["licenseType"] = licenseType,
		["description"] = description,
		["nextReplicationRunStartTime"] = nextReplicationRunStartTime,
		["replicationJobId"] = replicationJobId,
		["frequency"] = frequency,
		["roleName"] = roleName,
	}
	M.AssertUpdateReplicationJobRequest(t)
	return t
end

local MissingRequiredParameterException_keys = { "message" = true, nil }

function M.AssertMissingRequiredParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingRequiredParameterException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MissingRequiredParameterException_keys[k], "MissingRequiredParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingRequiredParameterException
-- The request is missing a required parameter. Ensure that you have supplied all the required parameters for the request.
-- @param message [ErrorMessage] The request is missing a required parameter. Ensure that you have supplied all the required parameters for the request.
function M.MissingRequiredParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingRequiredParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertMissingRequiredParameterException(t)
	return t
end

local Server_keys = { "replicationJobTerminated" = true, "serverId" = true, "serverType" = true, "replicationJobId" = true, "vmServer" = true, nil }

function M.AssertServer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Server to be of type 'table'")
	if struct["replicationJobTerminated"] then M.AssertReplicationJobTerminated(struct["replicationJobTerminated"]) end
	if struct["serverId"] then M.AssertServerId(struct["serverId"]) end
	if struct["serverType"] then M.AssertServerType(struct["serverType"]) end
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["vmServer"] then M.AssertVmServer(struct["vmServer"]) end
	for k,_ in pairs(struct) do
		assert(Server_keys[k], "Server contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Server
-- Object representing a server
-- @param replicationJobTerminated [ReplicationJobTerminated] Object representing a server
-- @param serverId [ServerId] Object representing a server
-- @param serverType [ServerType] Object representing a server
-- @param replicationJobId [ReplicationJobId] Object representing a server
-- @param vmServer [VmServer] Object representing a server
function M.Server(replicationJobTerminated, serverId, serverType, replicationJobId, vmServer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Server")
	local t = { 
		["replicationJobTerminated"] = replicationJobTerminated,
		["serverId"] = serverId,
		["serverType"] = serverType,
		["replicationJobId"] = replicationJobId,
		["vmServer"] = vmServer,
	}
	M.AssertServer(t)
	return t
end

local ReplicationJobAlreadyExistsException_keys = { "message" = true, nil }

function M.AssertReplicationJobAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationJobAlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationJobAlreadyExistsException_keys[k], "ReplicationJobAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationJobAlreadyExistsException
-- An active Replication Job already exists for the specified server.
-- @param message [ErrorMessage] An active Replication Job already exists for the specified server.
function M.ReplicationJobAlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationJobAlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertReplicationJobAlreadyExistsException(t)
	return t
end

local StartOnDemandReplicationRunResponse_keys = { "replicationRunId" = true, nil }

function M.AssertStartOnDemandReplicationRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartOnDemandReplicationRunResponse to be of type 'table'")
	if struct["replicationRunId"] then M.AssertReplicationRunId(struct["replicationRunId"]) end
	for k,_ in pairs(struct) do
		assert(StartOnDemandReplicationRunResponse_keys[k], "StartOnDemandReplicationRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartOnDemandReplicationRunResponse
--  
-- @param replicationRunId [ReplicationRunId]  
function M.StartOnDemandReplicationRunResponse(replicationRunId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartOnDemandReplicationRunResponse")
	local t = { 
		["replicationRunId"] = replicationRunId,
	}
	M.AssertStartOnDemandReplicationRunResponse(t)
	return t
end

local CreateReplicationJobRequest_keys = { "licenseType" = true, "description" = true, "seedReplicationTime" = true, "frequency" = true, "roleName" = true, "serverId" = true, nil }

function M.AssertCreateReplicationJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationJobRequest to be of type 'table'")
	assert(struct["serverId"], "Expected key serverId to exist in table")
	assert(struct["seedReplicationTime"], "Expected key seedReplicationTime to exist in table")
	assert(struct["frequency"], "Expected key frequency to exist in table")
	if struct["licenseType"] then M.AssertLicenseType(struct["licenseType"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["seedReplicationTime"] then M.AssertTimestamp(struct["seedReplicationTime"]) end
	if struct["frequency"] then M.AssertFrequency(struct["frequency"]) end
	if struct["roleName"] then M.AssertRoleName(struct["roleName"]) end
	if struct["serverId"] then M.AssertServerId(struct["serverId"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationJobRequest_keys[k], "CreateReplicationJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationJobRequest
--  
-- @param licenseType [LicenseType]  
-- @param description [Description]  
-- @param seedReplicationTime [Timestamp]  
-- @param frequency [Frequency]  
-- @param roleName [RoleName]  
-- @param serverId [ServerId]  
-- Required parameter: serverId
-- Required parameter: seedReplicationTime
-- Required parameter: frequency
function M.CreateReplicationJobRequest(licenseType, description, seedReplicationTime, frequency, roleName, serverId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationJobRequest")
	local t = { 
		["licenseType"] = licenseType,
		["description"] = description,
		["seedReplicationTime"] = seedReplicationTime,
		["frequency"] = frequency,
		["roleName"] = roleName,
		["serverId"] = serverId,
	}
	M.AssertCreateReplicationJobRequest(t)
	return t
end

local DeleteReplicationJobRequest_keys = { "replicationJobId" = true, nil }

function M.AssertDeleteReplicationJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationJobRequest to be of type 'table'")
	assert(struct["replicationJobId"], "Expected key replicationJobId to exist in table")
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationJobRequest_keys[k], "DeleteReplicationJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationJobRequest
--  
-- @param replicationJobId [ReplicationJobId]  
-- Required parameter: replicationJobId
function M.DeleteReplicationJobRequest(replicationJobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationJobRequest")
	local t = { 
		["replicationJobId"] = replicationJobId,
	}
	M.AssertDeleteReplicationJobRequest(t)
	return t
end

local DisassociateConnectorResponse_keys = { nil }

function M.AssertDisassociateConnectorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateConnectorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateConnectorResponse_keys[k], "DisassociateConnectorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateConnectorResponse
--  
function M.DisassociateConnectorResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateConnectorResponse")
	local t = { 
	}
	M.AssertDisassociateConnectorResponse(t)
	return t
end

local GetReplicationJobsRequest_keys = { "nextToken" = true, "replicationJobId" = true, "maxResults" = true, nil }

function M.AssertGetReplicationJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationJobsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetReplicationJobsRequest_keys[k], "GetReplicationJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationJobsRequest
--  
-- @param nextToken [NextToken]  
-- @param replicationJobId [ReplicationJobId]  
-- @param maxResults [MaxResults]  
function M.GetReplicationJobsRequest(nextToken, replicationJobId, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationJobsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["replicationJobId"] = replicationJobId,
		["maxResults"] = maxResults,
	}
	M.AssertGetReplicationJobsRequest(t)
	return t
end

local ReplicationJob_keys = { "licenseType" = true, "latestAmiId" = true, "description" = true, "vmServer" = true, "replicationRunList" = true, "nextReplicationRunStartTime" = true, "serverType" = true, "replicationJobId" = true, "state" = true, "seedReplicationTime" = true, "frequency" = true, "roleName" = true, "serverId" = true, "statusMessage" = true, nil }

function M.AssertReplicationJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationJob to be of type 'table'")
	if struct["licenseType"] then M.AssertLicenseType(struct["licenseType"]) end
	if struct["latestAmiId"] then M.AssertAmiId(struct["latestAmiId"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["vmServer"] then M.AssertVmServer(struct["vmServer"]) end
	if struct["replicationRunList"] then M.AssertReplicationRunList(struct["replicationRunList"]) end
	if struct["nextReplicationRunStartTime"] then M.AssertTimestamp(struct["nextReplicationRunStartTime"]) end
	if struct["serverType"] then M.AssertServerType(struct["serverType"]) end
	if struct["replicationJobId"] then M.AssertReplicationJobId(struct["replicationJobId"]) end
	if struct["state"] then M.AssertReplicationJobState(struct["state"]) end
	if struct["seedReplicationTime"] then M.AssertTimestamp(struct["seedReplicationTime"]) end
	if struct["frequency"] then M.AssertFrequency(struct["frequency"]) end
	if struct["roleName"] then M.AssertRoleName(struct["roleName"]) end
	if struct["serverId"] then M.AssertServerId(struct["serverId"]) end
	if struct["statusMessage"] then M.AssertReplicationJobStatusMessage(struct["statusMessage"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationJob_keys[k], "ReplicationJob contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationJob
-- Object representing a Replication Job
-- @param licenseType [LicenseType] Object representing a Replication Job
-- @param latestAmiId [AmiId] Object representing a Replication Job
-- @param description [Description] Object representing a Replication Job
-- @param vmServer [VmServer] Object representing a Replication Job
-- @param replicationRunList [ReplicationRunList] Object representing a Replication Job
-- @param nextReplicationRunStartTime [Timestamp] Object representing a Replication Job
-- @param serverType [ServerType] Object representing a Replication Job
-- @param replicationJobId [ReplicationJobId] Object representing a Replication Job
-- @param state [ReplicationJobState] Object representing a Replication Job
-- @param seedReplicationTime [Timestamp] Object representing a Replication Job
-- @param frequency [Frequency] Object representing a Replication Job
-- @param roleName [RoleName] Object representing a Replication Job
-- @param serverId [ServerId] Object representing a Replication Job
-- @param statusMessage [ReplicationJobStatusMessage] Object representing a Replication Job
function M.ReplicationJob(licenseType, latestAmiId, description, vmServer, replicationRunList, nextReplicationRunStartTime, serverType, replicationJobId, state, seedReplicationTime, frequency, roleName, serverId, statusMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationJob")
	local t = { 
		["licenseType"] = licenseType,
		["latestAmiId"] = latestAmiId,
		["description"] = description,
		["vmServer"] = vmServer,
		["replicationRunList"] = replicationRunList,
		["nextReplicationRunStartTime"] = nextReplicationRunStartTime,
		["serverType"] = serverType,
		["replicationJobId"] = replicationJobId,
		["state"] = state,
		["seedReplicationTime"] = seedReplicationTime,
		["frequency"] = frequency,
		["roleName"] = roleName,
		["serverId"] = serverId,
		["statusMessage"] = statusMessage,
	}
	M.AssertReplicationJob(t)
	return t
end

local VmServer_keys = { "vmManagerName" = true, "vmServerAddress" = true, "vmName" = true, "vmPath" = true, "vmManagerType" = true, nil }

function M.AssertVmServer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VmServer to be of type 'table'")
	if struct["vmManagerName"] then M.AssertVmManagerName(struct["vmManagerName"]) end
	if struct["vmServerAddress"] then M.AssertVmServerAddress(struct["vmServerAddress"]) end
	if struct["vmName"] then M.AssertVmName(struct["vmName"]) end
	if struct["vmPath"] then M.AssertVmPath(struct["vmPath"]) end
	if struct["vmManagerType"] then M.AssertVmManagerType(struct["vmManagerType"]) end
	for k,_ in pairs(struct) do
		assert(VmServer_keys[k], "VmServer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VmServer
-- Object representing a VM server
-- @param vmManagerName [VmManagerName] Object representing a VM server
-- @param vmServerAddress [VmServerAddress] Object representing a VM server
-- @param vmName [VmName] Object representing a VM server
-- @param vmPath [VmPath] Object representing a VM server
-- @param vmManagerType [VmManagerType] Object representing a VM server
function M.VmServer(vmManagerName, vmServerAddress, vmName, vmPath, vmManagerType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VmServer")
	local t = { 
		["vmManagerName"] = vmManagerName,
		["vmServerAddress"] = vmServerAddress,
		["vmName"] = vmName,
		["vmPath"] = vmPath,
		["vmManagerType"] = vmManagerType,
	}
	M.AssertVmServer(t)
	return t
end

local VmServerAddress_keys = { "vmManagerId" = true, "vmId" = true, nil }

function M.AssertVmServerAddress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VmServerAddress to be of type 'table'")
	if struct["vmManagerId"] then M.AssertVmManagerId(struct["vmManagerId"]) end
	if struct["vmId"] then M.AssertVmId(struct["vmId"]) end
	for k,_ in pairs(struct) do
		assert(VmServerAddress_keys[k], "VmServerAddress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VmServerAddress
-- Object representing a server's location
-- @param vmManagerId [VmManagerId] Object representing a server's location
-- @param vmId [VmId] Object representing a server's location
function M.VmServerAddress(vmManagerId, vmId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VmServerAddress")
	local t = { 
		["vmManagerId"] = vmManagerId,
		["vmId"] = vmId,
	}
	M.AssertVmServerAddress(t)
	return t
end

local GetServersRequest_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertGetServersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServersRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetServersRequest_keys[k], "GetServersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServersRequest
--  
-- @param nextToken [NextToken]  
-- @param maxResults [MaxResults]  
function M.GetServersRequest(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServersRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertGetServersRequest(t)
	return t
end

local GetConnectorsResponse_keys = { "nextToken" = true, "connectorList" = true, nil }

function M.AssertGetConnectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectorsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["connectorList"] then M.AssertConnectorList(struct["connectorList"]) end
	for k,_ in pairs(struct) do
		assert(GetConnectorsResponse_keys[k], "GetConnectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectorsResponse
--  
-- @param nextToken [NextToken]  
-- @param connectorList [ConnectorList]  
function M.GetConnectorsResponse(nextToken, connectorList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectorsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["connectorList"] = connectorList,
	}
	M.AssertGetConnectorsResponse(t)
	return t
end

local GetReplicationRunsResponse_keys = { "nextToken" = true, "replicationJob" = true, "replicationRunList" = true, nil }

function M.AssertGetReplicationRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReplicationRunsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["replicationJob"] then M.AssertReplicationJob(struct["replicationJob"]) end
	if struct["replicationRunList"] then M.AssertReplicationRunList(struct["replicationRunList"]) end
	for k,_ in pairs(struct) do
		assert(GetReplicationRunsResponse_keys[k], "GetReplicationRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReplicationRunsResponse
--  
-- @param nextToken [NextToken]  
-- @param replicationJob [ReplicationJob]  
-- @param replicationRunList [ReplicationRunList]  
function M.GetReplicationRunsResponse(nextToken, replicationJob, replicationRunList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReplicationRunsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["replicationJob"] = replicationJob,
		["replicationRunList"] = replicationRunList,
	}
	M.AssertGetReplicationRunsResponse(t)
	return t
end

local UpdateReplicationJobResponse_keys = { nil }

function M.AssertUpdateReplicationJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReplicationJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateReplicationJobResponse_keys[k], "UpdateReplicationJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReplicationJobResponse
--  
function M.UpdateReplicationJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReplicationJobResponse")
	local t = { 
	}
	M.AssertUpdateReplicationJobResponse(t)
	return t
end

function M.AssertReplicationRunState(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunState to be of type 'string'")
end

-- Current state of Replication Run
function M.ReplicationRunState(str)
	M.AssertReplicationRunState(str)
	return str
end

function M.AssertConnectorCapability(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorCapability to be of type 'string'")
end

-- Capabilities for a Connector
function M.ConnectorCapability(str)
	M.AssertConnectorCapability(str)
	return str
end

function M.AssertReplicationJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationJobId to be of type 'string'")
end

-- The unique identifier for a Replication Job.
function M.ReplicationJobId(str)
	M.AssertReplicationJobId(str)
	return str
end

function M.AssertServerCatalogStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerCatalogStatus to be of type 'string'")
end

-- Status of Server catalog
function M.ServerCatalogStatus(str)
	M.AssertServerCatalogStatus(str)
	return str
end

function M.AssertReplicationRunType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunType to be of type 'string'")
end

-- Type of Replication Run
function M.ReplicationRunType(str)
	M.AssertReplicationRunType(str)
	return str
end

function M.AssertRoleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleName to be of type 'string'")
end

-- Name of service role in customer's account to be used by SMS service.
function M.RoleName(str)
	M.AssertRoleName(str)
	return str
end

function M.AssertServerId(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerId to be of type 'string'")
end

-- Unique Identifier for a server
function M.ServerId(str)
	M.AssertServerId(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

-- Pagination token to pass as input to API call
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

-- Internet Protocol (IP) Address
function M.IpAddress(str)
	M.AssertIpAddress(str)
	return str
end

function M.AssertMacAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected MacAddress to be of type 'string'")
end

-- Hardware (MAC) address
function M.MacAddress(str)
	M.AssertMacAddress(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

-- The description for a Replication Job/Run.
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertConnectorId(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorId to be of type 'string'")
end

-- Unique Identifier for Connector
function M.ConnectorId(str)
	M.AssertConnectorId(str)
	return str
end

function M.AssertReplicationRunId(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunId to be of type 'string'")
end

-- The unique identifier for a Replication Run.
function M.ReplicationRunId(str)
	M.AssertReplicationRunId(str)
	return str
end

function M.AssertVmId(str)
	assert(str)
	assert(type(str) == "string", "Expected VmId to be of type 'string'")
end

-- Unique Identifier for a VM
function M.VmId(str)
	M.AssertVmId(str)
	return str
end

function M.AssertReplicationJobState(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationJobState to be of type 'string'")
end

-- Current state of Replication Job
function M.ReplicationJobState(str)
	M.AssertReplicationJobState(str)
	return str
end

function M.AssertConnectorStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorStatus to be of type 'string'")
end

-- Status of on-premise Connector
function M.ConnectorStatus(str)
	M.AssertConnectorStatus(str)
	return str
end

function M.AssertAmiId(str)
	assert(str)
	assert(type(str) == "string", "Expected AmiId to be of type 'string'")
end

-- The AMI id for the image resulting from a Replication Run.
function M.AmiId(str)
	M.AssertAmiId(str)
	return str
end

function M.AssertVmPath(str)
	assert(str)
	assert(type(str) == "string", "Expected VmPath to be of type 'string'")
end

-- Path to VM
function M.VmPath(str)
	M.AssertVmPath(str)
	return str
end

function M.AssertVmManagerName(str)
	assert(str)
	assert(type(str) == "string", "Expected VmManagerName to be of type 'string'")
end

-- VM Manager Name
function M.VmManagerName(str)
	M.AssertVmManagerName(str)
	return str
end

function M.AssertServerType(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerType to be of type 'string'")
end

-- Type of server.
function M.ServerType(str)
	M.AssertServerType(str)
	return str
end

function M.AssertLicenseType(str)
	assert(str)
	assert(type(str) == "string", "Expected LicenseType to be of type 'string'")
end

-- The license type to be used for the Amazon Machine Image (AMI) created after a successful ReplicationRun.
function M.LicenseType(str)
	M.AssertLicenseType(str)
	return str
end

function M.AssertReplicationRunStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRunStatusMessage to be of type 'string'")
end

-- String describing current status of Replication Run
function M.ReplicationRunStatusMessage(str)
	M.AssertReplicationRunStatusMessage(str)
	return str
end

function M.AssertReplicationJobStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationJobStatusMessage to be of type 'string'")
end

-- String describing current status of Replication Job
function M.ReplicationJobStatusMessage(str)
	M.AssertReplicationJobStatusMessage(str)
	return str
end

function M.AssertVmManagerId(str)
	assert(str)
	assert(type(str) == "string", "Expected VmManagerId to be of type 'string'")
end

-- Unique Identifier for VM Manager
function M.VmManagerId(str)
	M.AssertVmManagerId(str)
	return str
end

function M.AssertVmName(str)
	assert(str)
	assert(type(str) == "string", "Expected VmName to be of type 'string'")
end

-- Name of Virtual Machine
function M.VmName(str)
	M.AssertVmName(str)
	return str
end

function M.AssertConnectorVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectorVersion to be of type 'string'")
end

-- Connector version string
function M.ConnectorVersion(str)
	M.AssertConnectorVersion(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- Error Message string
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertVmManagerType(str)
	assert(str)
	assert(type(str) == "string", "Expected VmManagerType to be of type 'string'")
end

-- VM Management Product
function M.VmManagerType(str)
	M.AssertVmManagerType(str)
	return str
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertFrequency(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Frequency to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Frequency(integer)
	M.AssertFrequency(integer)
	return integer
end

function M.AssertReplicationJobTerminated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ReplicationJobTerminated to be of type 'boolean'")
end

function M.ReplicationJobTerminated(boolean)
	M.AssertReplicationJobTerminated(boolean)
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

function M.AssertReplicationRunList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationRunList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationRun(v)
	end
end

-- List of Replication Runs
-- List of ReplicationRun objects
function M.ReplicationRunList(list)
	M.AssertReplicationRunList(list)
	return list
end

function M.AssertConnectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectorList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConnector(v)
	end
end

-- List of connectors
-- List of Connector objects
function M.ConnectorList(list)
	M.AssertConnectorList(list)
	return list
end

function M.AssertConnectorCapabilityList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectorCapabilityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConnectorCapability(v)
	end
end

-- List of Connector Capabilities
-- List of ConnectorCapability objects
function M.ConnectorCapabilityList(list)
	M.AssertConnectorCapabilityList(list)
	return list
end

function M.AssertServerList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServer(v)
	end
end

-- List of servers from catalog
-- List of Server objects
function M.ServerList(list)
	M.AssertServerList(list)
	return list
end

function M.AssertReplicationJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationJobList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationJob(v)
	end
end

-- List of Replication Jobs
-- List of ReplicationJob objects
function M.ReplicationJobList(list)
	M.AssertReplicationJobList(list)
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
