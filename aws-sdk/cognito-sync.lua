--- GENERATED CODE - DO NOT MODIFY
-- Amazon Cognito Sync (cognito-sync-2014-06-30)

local M = {}

M.metadata = {
	api_version = "2014-06-30",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "cognito-sync",
	service_abbreviation = "",
	service_full_name = "Amazon Cognito Sync",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cognito-sync-2014-06-30",
}

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- Thrown when the limit on the number of objects or operations has been exceeded.
-- @param _message [ExceptionMessage] Message returned by LimitExceededException.
-- Required parameter: message
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.GetIdentityPoolConfigurationResponse = { ["IdentityPoolId"] = true, ["PushSync"] = true, ["CognitoStreams"] = true, nil }

function asserts.AssertGetIdentityPoolConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolConfigurationResponse to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["PushSync"] then asserts.AssertPushSync(struct["PushSync"]) end
	if struct["CognitoStreams"] then asserts.AssertCognitoStreams(struct["CognitoStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityPoolConfigurationResponse[k], "GetIdentityPoolConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolConfigurationResponse
-- <p>The output for the GetIdentityPoolConfiguration operation.</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.</p>
-- @param _PushSync [PushSync] <p>Options to apply to this identity pool for push synchronization.</p>
-- @param _CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
function M.GetIdentityPoolConfigurationResponse(_IdentityPoolId, _PushSync, _CognitoStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoolConfigurationResponse")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["PushSync"] = _PushSync,
		["CognitoStreams"] = _CognitoStreams,
	}
	asserts.AssertGetIdentityPoolConfigurationResponse(t)
	return t
end

keys.ConcurrentModificationException = { ["message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>Thrown if there are parallel requests to modify a resource.</p>
-- @param _message [String] <p>The message returned by a ConcurrentModicationException.</p>
-- Required parameter: message
function M.ConcurrentModificationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.DeleteDatasetResponse = { ["Dataset"] = true, nil }

function asserts.AssertDeleteDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatasetResponse to be of type 'table'")
	if struct["Dataset"] then asserts.AssertDataset(struct["Dataset"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatasetResponse[k], "DeleteDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatasetResponse
-- Response to a successful DeleteDataset request.
-- @param _Dataset [Dataset] A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
function M.DeleteDatasetResponse(_Dataset, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDatasetResponse")
	local t = { 
		["Dataset"] = _Dataset,
	}
	asserts.AssertDeleteDatasetResponse(t)
	return t
end

keys.InternalErrorException = { ["message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- Indicates an internal service error.
-- @param _message [ExceptionMessage] Message returned by InternalErrorException.
-- Required parameter: message
function M.InternalErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalErrorException(t)
	return t
end

keys.DescribeIdentityUsageRequest = { ["IdentityPoolId"] = true, ["IdentityId"] = true, nil }

function asserts.AssertDescribeIdentityUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityUsageRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityUsageRequest[k], "DescribeIdentityUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityUsageRequest
-- A request for information about the usage of an identity pool.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
function M.DescribeIdentityUsageRequest(_IdentityPoolId, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityUsageRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertDescribeIdentityUsageRequest(t)
	return t
end

keys.GetBulkPublishDetailsRequest = { ["IdentityPoolId"] = true, nil }

function asserts.AssertGetBulkPublishDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBulkPublishDetailsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBulkPublishDetailsRequest[k], "GetBulkPublishDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBulkPublishDetailsRequest
-- The input for the GetBulkPublishDetails operation.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
function M.GetBulkPublishDetailsRequest(_IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBulkPublishDetailsRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
	}
	asserts.AssertGetBulkPublishDetailsRequest(t)
	return t
end

keys.ListRecordsResponse = { ["Count"] = true, ["DatasetExists"] = true, ["DatasetSyncCount"] = true, ["LastModifiedBy"] = true, ["Records"] = true, ["MergedDatasetNames"] = true, ["SyncSessionToken"] = true, ["DatasetDeletedAfterRequestedSyncCount"] = true, ["NextToken"] = true, nil }

function asserts.AssertListRecordsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordsResponse to be of type 'table'")
	if struct["Count"] then asserts.AssertInteger(struct["Count"]) end
	if struct["DatasetExists"] then asserts.AssertBoolean(struct["DatasetExists"]) end
	if struct["DatasetSyncCount"] then asserts.AssertLong(struct["DatasetSyncCount"]) end
	if struct["LastModifiedBy"] then asserts.AssertString(struct["LastModifiedBy"]) end
	if struct["Records"] then asserts.AssertRecordList(struct["Records"]) end
	if struct["MergedDatasetNames"] then asserts.AssertMergedDatasetNameList(struct["MergedDatasetNames"]) end
	if struct["SyncSessionToken"] then asserts.AssertString(struct["SyncSessionToken"]) end
	if struct["DatasetDeletedAfterRequestedSyncCount"] then asserts.AssertBoolean(struct["DatasetDeletedAfterRequestedSyncCount"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRecordsResponse[k], "ListRecordsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordsResponse
-- Returned for a successful ListRecordsRequest.
-- @param _Count [Integer] Total number of records.
-- @param _DatasetExists [Boolean] Indicates whether the dataset exists.
-- @param _DatasetSyncCount [Long] Server sync count for this dataset.
-- @param _LastModifiedBy [String] The user/device that made the last change to this record.
-- @param _Records [RecordList] A list of all records.
-- @param _MergedDatasetNames [MergedDatasetNameList] Names of merged datasets.
-- @param _SyncSessionToken [String] A token containing a session ID, identity ID, and expiration.
-- @param _DatasetDeletedAfterRequestedSyncCount [Boolean] A boolean value specifying whether to delete the dataset locally.
-- @param _NextToken [String] A pagination token for obtaining the next page of results.
function M.ListRecordsResponse(_Count, _DatasetExists, _DatasetSyncCount, _LastModifiedBy, _Records, _MergedDatasetNames, _SyncSessionToken, _DatasetDeletedAfterRequestedSyncCount, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordsResponse")
	local t = { 
		["Count"] = _Count,
		["DatasetExists"] = _DatasetExists,
		["DatasetSyncCount"] = _DatasetSyncCount,
		["LastModifiedBy"] = _LastModifiedBy,
		["Records"] = _Records,
		["MergedDatasetNames"] = _MergedDatasetNames,
		["SyncSessionToken"] = _SyncSessionToken,
		["DatasetDeletedAfterRequestedSyncCount"] = _DatasetDeletedAfterRequestedSyncCount,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListRecordsResponse(t)
	return t
end

keys.SetIdentityPoolConfigurationResponse = { ["IdentityPoolId"] = true, ["PushSync"] = true, ["CognitoStreams"] = true, nil }

function asserts.AssertSetIdentityPoolConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityPoolConfigurationResponse to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["PushSync"] then asserts.AssertPushSync(struct["PushSync"]) end
	if struct["CognitoStreams"] then asserts.AssertCognitoStreams(struct["CognitoStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityPoolConfigurationResponse[k], "SetIdentityPoolConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityPoolConfigurationResponse
-- <p>The output for the SetIdentityPoolConfiguration operation</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.</p>
-- @param _PushSync [PushSync] <p>Options to apply to this identity pool for push synchronization.</p>
-- @param _CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
function M.SetIdentityPoolConfigurationResponse(_IdentityPoolId, _PushSync, _CognitoStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityPoolConfigurationResponse")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["PushSync"] = _PushSync,
		["CognitoStreams"] = _CognitoStreams,
	}
	asserts.AssertSetIdentityPoolConfigurationResponse(t)
	return t
end

keys.SubscribeToDatasetRequest = { ["IdentityPoolId"] = true, ["DatasetName"] = true, ["DeviceId"] = true, ["IdentityId"] = true, nil }

function asserts.AssertSubscribeToDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["DeviceId"] then asserts.AssertDeviceId(struct["DeviceId"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToDatasetRequest[k], "SubscribeToDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToDatasetRequest
-- <p>A request to SubscribeToDatasetRequest.</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.</p>
-- @param _DatasetName [DatasetName] <p>The name of the dataset to subcribe to.</p>
-- @param _DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- @param _IdentityId [IdentityId] <p>Unique ID for this identity.</p>
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
-- Required parameter: DeviceId
function M.SubscribeToDatasetRequest(_IdentityPoolId, _DatasetName, _DeviceId, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeToDatasetRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["DatasetName"] = _DatasetName,
		["DeviceId"] = _DeviceId,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertSubscribeToDatasetRequest(t)
	return t
end

keys.UnsubscribeFromDatasetResponse = { nil }

function asserts.AssertUnsubscribeFromDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeFromDatasetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsubscribeFromDatasetResponse[k], "UnsubscribeFromDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeFromDatasetResponse
-- <p>Response to an UnsubscribeFromDataset request.</p>
function M.UnsubscribeFromDatasetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeFromDatasetResponse")
	local t = { 
	}
	asserts.AssertUnsubscribeFromDatasetResponse(t)
	return t
end

keys.SetIdentityPoolConfigurationRequest = { ["IdentityPoolId"] = true, ["PushSync"] = true, ["CognitoStreams"] = true, nil }

function asserts.AssertSetIdentityPoolConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityPoolConfigurationRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["PushSync"] then asserts.AssertPushSync(struct["PushSync"]) end
	if struct["CognitoStreams"] then asserts.AssertCognitoStreams(struct["CognitoStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityPoolConfigurationRequest[k], "SetIdentityPoolConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityPoolConfigurationRequest
-- <p>The input for the SetIdentityPoolConfiguration operation.</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.</p>
-- @param _PushSync [PushSync] <p>Options to apply to this identity pool for push synchronization.</p>
-- @param _CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
-- Required parameter: IdentityPoolId
function M.SetIdentityPoolConfigurationRequest(_IdentityPoolId, _PushSync, _CognitoStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityPoolConfigurationRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["PushSync"] = _PushSync,
		["CognitoStreams"] = _CognitoStreams,
	}
	asserts.AssertSetIdentityPoolConfigurationRequest(t)
	return t
end

keys.ListIdentityPoolUsageResponse = { ["Count"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["IdentityPoolUsages"] = true, nil }

function asserts.AssertListIdentityPoolUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolUsageResponse to be of type 'table'")
	if struct["Count"] then asserts.AssertInteger(struct["Count"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertInteger(struct["MaxResults"]) end
	if struct["IdentityPoolUsages"] then asserts.AssertIdentityPoolUsageList(struct["IdentityPoolUsages"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityPoolUsageResponse[k], "ListIdentityPoolUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolUsageResponse
-- Returned for a successful ListIdentityPoolUsage request.
-- @param _Count [Integer] Total number of identities for the identity pool.
-- @param _NextToken [String] A pagination token for obtaining the next page of results.
-- @param _MaxResults [Integer] The maximum number of results to be returned.
-- @param _IdentityPoolUsages [IdentityPoolUsageList] Usage information for the identity pools.
function M.ListIdentityPoolUsageResponse(_Count, _NextToken, _MaxResults, _IdentityPoolUsages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoolUsageResponse")
	local t = { 
		["Count"] = _Count,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["IdentityPoolUsages"] = _IdentityPoolUsages,
	}
	asserts.AssertListIdentityPoolUsageResponse(t)
	return t
end

keys.GetCognitoEventsRequest = { ["IdentityPoolId"] = true, nil }

function asserts.AssertGetCognitoEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCognitoEventsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCognitoEventsRequest[k], "GetCognitoEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCognitoEventsRequest
-- <p>A request for a list of the configured Cognito Events</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>The Cognito Identity Pool ID for the request</p>
-- Required parameter: IdentityPoolId
function M.GetCognitoEventsRequest(_IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCognitoEventsRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
	}
	asserts.AssertGetCognitoEventsRequest(t)
	return t
end

keys.DescribeIdentityPoolUsageRequest = { ["IdentityPoolId"] = true, nil }

function asserts.AssertDescribeIdentityPoolUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityPoolUsageRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityPoolUsageRequest[k], "DescribeIdentityPoolUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityPoolUsageRequest
-- A request for usage information about the identity pool.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
function M.DescribeIdentityPoolUsageRequest(_IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityPoolUsageRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
	}
	asserts.AssertDescribeIdentityPoolUsageRequest(t)
	return t
end

keys.IdentityPoolUsage = { ["DataStorage"] = true, ["IdentityPoolId"] = true, ["SyncSessionsCount"] = true, ["LastModifiedDate"] = true, nil }

function asserts.AssertIdentityPoolUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityPoolUsage to be of type 'table'")
	if struct["DataStorage"] then asserts.AssertLong(struct["DataStorage"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["SyncSessionsCount"] then asserts.AssertLong(struct["SyncSessionsCount"]) end
	if struct["LastModifiedDate"] then asserts.AssertDate(struct["LastModifiedDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityPoolUsage[k], "IdentityPoolUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityPoolUsage
-- Usage information for the identity pool.
-- @param _DataStorage [Long] Data storage information for the identity pool.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _SyncSessionsCount [Long] Number of sync sessions for the identity pool.
-- @param _LastModifiedDate [Date] Date on which the identity pool was last modified.
function M.IdentityPoolUsage(_DataStorage, _IdentityPoolId, _SyncSessionsCount, _LastModifiedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityPoolUsage")
	local t = { 
		["DataStorage"] = _DataStorage,
		["IdentityPoolId"] = _IdentityPoolId,
		["SyncSessionsCount"] = _SyncSessionsCount,
		["LastModifiedDate"] = _LastModifiedDate,
	}
	asserts.AssertIdentityPoolUsage(t)
	return t
end

keys.GetBulkPublishDetailsResponse = { ["BulkPublishStartTime"] = true, ["IdentityPoolId"] = true, ["BulkPublishStatus"] = true, ["BulkPublishCompleteTime"] = true, ["FailureMessage"] = true, nil }

function asserts.AssertGetBulkPublishDetailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBulkPublishDetailsResponse to be of type 'table'")
	if struct["BulkPublishStartTime"] then asserts.AssertDate(struct["BulkPublishStartTime"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["BulkPublishStatus"] then asserts.AssertBulkPublishStatus(struct["BulkPublishStatus"]) end
	if struct["BulkPublishCompleteTime"] then asserts.AssertDate(struct["BulkPublishCompleteTime"]) end
	if struct["FailureMessage"] then asserts.AssertString(struct["FailureMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBulkPublishDetailsResponse[k], "GetBulkPublishDetailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBulkPublishDetailsResponse
-- The output for the GetBulkPublishDetails operation.
-- @param _BulkPublishStartTime [Date] The date/time at which the last bulk publish was initiated.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _BulkPublishStatus [BulkPublishStatus] Status of the last bulk publish operation, valid values are: <p>NOT_STARTED - No bulk publish has been requested for this identity pool</p> <p>IN_PROGRESS - Data is being published to the configured stream</p> <p>SUCCEEDED - All data for the identity pool has been published to the configured stream</p> <p>FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.</p>
-- @param _BulkPublishCompleteTime [Date] If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
-- @param _FailureMessage [String] If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
function M.GetBulkPublishDetailsResponse(_BulkPublishStartTime, _IdentityPoolId, _BulkPublishStatus, _BulkPublishCompleteTime, _FailureMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBulkPublishDetailsResponse")
	local t = { 
		["BulkPublishStartTime"] = _BulkPublishStartTime,
		["IdentityPoolId"] = _IdentityPoolId,
		["BulkPublishStatus"] = _BulkPublishStatus,
		["BulkPublishCompleteTime"] = _BulkPublishCompleteTime,
		["FailureMessage"] = _FailureMessage,
	}
	asserts.AssertGetBulkPublishDetailsResponse(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- Thrown when a request parameter does not comply with the associated constraints.
-- @param _message [ExceptionMessage] Message returned by InvalidParameterException.
-- Required parameter: message
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.UnsubscribeFromDatasetRequest = { ["IdentityPoolId"] = true, ["DatasetName"] = true, ["DeviceId"] = true, ["IdentityId"] = true, nil }

function asserts.AssertUnsubscribeFromDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeFromDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["DeviceId"] then asserts.AssertDeviceId(struct["DeviceId"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsubscribeFromDatasetRequest[k], "UnsubscribeFromDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeFromDatasetRequest
-- <p>A request to UnsubscribeFromDataset.</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.</p>
-- @param _DatasetName [DatasetName] <p>The name of the dataset from which to unsubcribe.</p>
-- @param _DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- @param _IdentityId [IdentityId] <p>Unique ID for this identity.</p>
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
-- Required parameter: DeviceId
function M.UnsubscribeFromDatasetRequest(_IdentityPoolId, _DatasetName, _DeviceId, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeFromDatasetRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["DatasetName"] = _DatasetName,
		["DeviceId"] = _DeviceId,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertUnsubscribeFromDatasetRequest(t)
	return t
end

keys.CognitoStreams = { ["StreamingStatus"] = true, ["RoleArn"] = true, ["StreamName"] = true, nil }

function asserts.AssertCognitoStreams(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CognitoStreams to be of type 'table'")
	if struct["StreamingStatus"] then asserts.AssertStreamingStatus(struct["StreamingStatus"]) end
	if struct["RoleArn"] then asserts.AssertAssumeRoleArn(struct["RoleArn"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CognitoStreams[k], "CognitoStreams contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CognitoStreams
-- Configuration options for configure Cognito streams.
-- @param _StreamingStatus [StreamingStatus] Status of the Cognito streams. Valid values are: <p>ENABLED - Streaming of updates to identity pool is enabled.</p> <p>DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.</p>
-- @param _RoleArn [AssumeRoleArn] The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
-- @param _StreamName [StreamName] The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
function M.CognitoStreams(_StreamingStatus, _RoleArn, _StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CognitoStreams")
	local t = { 
		["StreamingStatus"] = _StreamingStatus,
		["RoleArn"] = _RoleArn,
		["StreamName"] = _StreamName,
	}
	asserts.AssertCognitoStreams(t)
	return t
end

keys.ListDatasetsRequest = { ["IdentityPoolId"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["IdentityId"] = true, nil }

function asserts.AssertListDatasetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetsRequest to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertIntegerString(struct["MaxResults"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatasetsRequest[k], "ListDatasetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetsRequest
-- Request for a list of datasets for an identity.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _NextToken [String] A pagination token for obtaining the next page of results.
-- @param _MaxResults [IntegerString] The maximum number of results to be returned.
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityId
-- Required parameter: IdentityPoolId
function M.ListDatasetsRequest(_IdentityPoolId, _NextToken, _MaxResults, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDatasetsRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertListDatasetsRequest(t)
	return t
end

keys.ListIdentityPoolUsageRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListIdentityPoolUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolUsageRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertIntegerString(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityPoolUsageRequest[k], "ListIdentityPoolUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolUsageRequest
-- A request for usage information on an identity pool.
-- @param _NextToken [String] A pagination token for obtaining the next page of results.
-- @param _MaxResults [IntegerString] The maximum number of results to be returned.
function M.ListIdentityPoolUsageRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoolUsageRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListIdentityPoolUsageRequest(t)
	return t
end

keys.NotAuthorizedException = { ["message"] = true, nil }

function asserts.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- Thrown when a user is not authorized to access the requested resource.
-- @param _message [ExceptionMessage] The message returned by a NotAuthorizedException.
-- Required parameter: message
function M.NotAuthorizedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotAuthorizedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertNotAuthorizedException(t)
	return t
end

keys.ListRecordsRequest = { ["DatasetName"] = true, ["MaxResults"] = true, ["IdentityId"] = true, ["IdentityPoolId"] = true, ["LastSyncCount"] = true, ["SyncSessionToken"] = true, ["NextToken"] = true, nil }

function asserts.AssertListRecordsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["MaxResults"] then asserts.AssertIntegerString(struct["MaxResults"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["LastSyncCount"] then asserts.AssertLong(struct["LastSyncCount"]) end
	if struct["SyncSessionToken"] then asserts.AssertSyncSessionToken(struct["SyncSessionToken"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRecordsRequest[k], "ListRecordsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordsRequest
-- A request for a list of records.
-- @param _DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param _MaxResults [IntegerString] The maximum number of results to be returned.
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _LastSyncCount [Long] The last server sync count for this record.
-- @param _SyncSessionToken [SyncSessionToken] A token containing a session ID, identity ID, and expiration.
-- @param _NextToken [String] A pagination token for obtaining the next page of results.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
function M.ListRecordsRequest(_DatasetName, _MaxResults, _IdentityId, _IdentityPoolId, _LastSyncCount, _SyncSessionToken, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordsRequest")
	local t = { 
		["DatasetName"] = _DatasetName,
		["MaxResults"] = _MaxResults,
		["IdentityId"] = _IdentityId,
		["IdentityPoolId"] = _IdentityPoolId,
		["LastSyncCount"] = _LastSyncCount,
		["SyncSessionToken"] = _SyncSessionToken,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListRecordsRequest(t)
	return t
end

keys.IdentityUsage = { ["DatasetCount"] = true, ["IdentityPoolId"] = true, ["DataStorage"] = true, ["LastModifiedDate"] = true, ["IdentityId"] = true, nil }

function asserts.AssertIdentityUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityUsage to be of type 'table'")
	if struct["DatasetCount"] then asserts.AssertInteger(struct["DatasetCount"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DataStorage"] then asserts.AssertLong(struct["DataStorage"]) end
	if struct["LastModifiedDate"] then asserts.AssertDate(struct["LastModifiedDate"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityUsage[k], "IdentityUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityUsage
-- Usage information for the identity.
-- @param _DatasetCount [Integer] Number of datasets for the identity.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _DataStorage [Long] Total data storage for this identity.
-- @param _LastModifiedDate [Date] Date on which the identity was last modified.
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
function M.IdentityUsage(_DatasetCount, _IdentityPoolId, _DataStorage, _LastModifiedDate, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityUsage")
	local t = { 
		["DatasetCount"] = _DatasetCount,
		["IdentityPoolId"] = _IdentityPoolId,
		["DataStorage"] = _DataStorage,
		["LastModifiedDate"] = _LastModifiedDate,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertIdentityUsage(t)
	return t
end

keys.DescribeDatasetResponse = { ["Dataset"] = true, nil }

function asserts.AssertDescribeDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatasetResponse to be of type 'table'")
	if struct["Dataset"] then asserts.AssertDataset(struct["Dataset"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDatasetResponse[k], "DescribeDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatasetResponse
-- Response to a successful DescribeDataset request.
-- @param _Dataset [Dataset] Meta data for a collection of data for an identity. An identity can have multiple datasets. A dataset can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
function M.DescribeDatasetResponse(_Dataset, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDatasetResponse")
	local t = { 
		["Dataset"] = _Dataset,
	}
	asserts.AssertDescribeDatasetResponse(t)
	return t
end

keys.DeleteDatasetRequest = { ["IdentityPoolId"] = true, ["DatasetName"] = true, ["IdentityId"] = true, nil }

function asserts.AssertDeleteDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatasetRequest[k], "DeleteDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatasetRequest
-- A request to delete the specific dataset.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
function M.DeleteDatasetRequest(_IdentityPoolId, _DatasetName, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDatasetRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["DatasetName"] = _DatasetName,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertDeleteDatasetRequest(t)
	return t
end

keys.BulkPublishResponse = { ["IdentityPoolId"] = true, nil }

function asserts.AssertBulkPublishResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BulkPublishResponse to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BulkPublishResponse[k], "BulkPublishResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BulkPublishResponse
-- The output for the BulkPublish operation.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
function M.BulkPublishResponse(_IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BulkPublishResponse")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
	}
	asserts.AssertBulkPublishResponse(t)
	return t
end

keys.SubscribeToDatasetResponse = { nil }

function asserts.AssertSubscribeToDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToDatasetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToDatasetResponse[k], "SubscribeToDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToDatasetResponse
-- <p>Response to a SubscribeToDataset request.</p>
function M.SubscribeToDatasetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeToDatasetResponse")
	local t = { 
	}
	asserts.AssertSubscribeToDatasetResponse(t)
	return t
end

keys.InvalidLambdaFunctionOutputException = { ["message"] = true, nil }

function asserts.AssertInvalidLambdaFunctionOutputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaFunctionOutputException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLambdaFunctionOutputException[k], "InvalidLambdaFunctionOutputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaFunctionOutputException
-- <p>The AWS Lambda function returned invalid output or an exception.</p>
-- @param _message [ExceptionMessage] <p>A message returned when an InvalidLambdaFunctionOutputException occurs</p>
-- Required parameter: message
function M.InvalidLambdaFunctionOutputException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaFunctionOutputException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidLambdaFunctionOutputException(t)
	return t
end

keys.TooManyRequestsException = { ["message"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- Thrown if the request is throttled.
-- @param _message [ExceptionMessage] Message returned by a TooManyRequestsException.
-- Required parameter: message
function M.TooManyRequestsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTooManyRequestsException(t)
	return t
end

keys.DescribeIdentityUsageResponse = { ["IdentityUsage"] = true, nil }

function asserts.AssertDescribeIdentityUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityUsageResponse to be of type 'table'")
	if struct["IdentityUsage"] then asserts.AssertIdentityUsage(struct["IdentityUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityUsageResponse[k], "DescribeIdentityUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityUsageResponse
-- The response to a successful DescribeIdentityUsage request.
-- @param _IdentityUsage [IdentityUsage] Usage information for the identity.
function M.DescribeIdentityUsageResponse(_IdentityUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityUsageResponse")
	local t = { 
		["IdentityUsage"] = _IdentityUsage,
	}
	asserts.AssertDescribeIdentityUsageResponse(t)
	return t
end

keys.PushSync = { ["RoleArn"] = true, ["ApplicationArns"] = true, nil }

function asserts.AssertPushSync(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PushSync to be of type 'table'")
	if struct["RoleArn"] then asserts.AssertAssumeRoleArn(struct["RoleArn"]) end
	if struct["ApplicationArns"] then asserts.AssertApplicationArnList(struct["ApplicationArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.PushSync[k], "PushSync contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PushSync
-- <p>Configuration options to be applied to the identity pool.</p>
-- @param _RoleArn [AssumeRoleArn] <p>A role configured to allow Cognito to call SNS on behalf of the developer.</p>
-- @param _ApplicationArns [ApplicationArnList] <p>List of SNS platform application ARNs that could be used by clients.</p>
function M.PushSync(_RoleArn, _ApplicationArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PushSync")
	local t = { 
		["RoleArn"] = _RoleArn,
		["ApplicationArns"] = _ApplicationArns,
	}
	asserts.AssertPushSync(t)
	return t
end

keys.Record = { ["DeviceLastModifiedDate"] = true, ["LastModifiedDate"] = true, ["Value"] = true, ["LastModifiedBy"] = true, ["Key"] = true, ["SyncCount"] = true, nil }

function asserts.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	if struct["DeviceLastModifiedDate"] then asserts.AssertDate(struct["DeviceLastModifiedDate"]) end
	if struct["LastModifiedDate"] then asserts.AssertDate(struct["LastModifiedDate"]) end
	if struct["Value"] then asserts.AssertRecordValue(struct["Value"]) end
	if struct["LastModifiedBy"] then asserts.AssertString(struct["LastModifiedBy"]) end
	if struct["Key"] then asserts.AssertRecordKey(struct["Key"]) end
	if struct["SyncCount"] then asserts.AssertLong(struct["SyncCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.Record[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- The basic data structure of a dataset.
-- @param _DeviceLastModifiedDate [Date] The last modified date of the client device.
-- @param _LastModifiedDate [Date] The date on which the record was last modified.
-- @param _Value [RecordValue] The value for the record.
-- @param _LastModifiedBy [String] The user/device that made the last change to this record.
-- @param _Key [RecordKey] The key for the record.
-- @param _SyncCount [Long] The server sync count for this record.
function M.Record(_DeviceLastModifiedDate, _LastModifiedDate, _Value, _LastModifiedBy, _Key, _SyncCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["DeviceLastModifiedDate"] = _DeviceLastModifiedDate,
		["LastModifiedDate"] = _LastModifiedDate,
		["Value"] = _Value,
		["LastModifiedBy"] = _LastModifiedBy,
		["Key"] = _Key,
		["SyncCount"] = _SyncCount,
	}
	asserts.AssertRecord(t)
	return t
end

keys.BulkPublishRequest = { ["IdentityPoolId"] = true, nil }

function asserts.AssertBulkPublishRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BulkPublishRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BulkPublishRequest[k], "BulkPublishRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BulkPublishRequest
-- The input for the BulkPublish operation.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
function M.BulkPublishRequest(_IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BulkPublishRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
	}
	asserts.AssertBulkPublishRequest(t)
	return t
end

keys.UpdateRecordsResponse = { ["Records"] = true, nil }

function asserts.AssertUpdateRecordsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRecordsResponse to be of type 'table'")
	if struct["Records"] then asserts.AssertRecordList(struct["Records"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRecordsResponse[k], "UpdateRecordsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRecordsResponse
-- Returned for a successful UpdateRecordsRequest.
-- @param _Records [RecordList] A list of records that have been updated.
function M.UpdateRecordsResponse(_Records, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRecordsResponse")
	local t = { 
		["Records"] = _Records,
	}
	asserts.AssertUpdateRecordsResponse(t)
	return t
end

keys.DescribeIdentityPoolUsageResponse = { ["IdentityPoolUsage"] = true, nil }

function asserts.AssertDescribeIdentityPoolUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityPoolUsageResponse to be of type 'table'")
	if struct["IdentityPoolUsage"] then asserts.AssertIdentityPoolUsage(struct["IdentityPoolUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityPoolUsageResponse[k], "DescribeIdentityPoolUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityPoolUsageResponse
-- Response to a successful DescribeIdentityPoolUsage request.
-- @param _IdentityPoolUsage [IdentityPoolUsage] Information about the usage of the identity pool.
function M.DescribeIdentityPoolUsageResponse(_IdentityPoolUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityPoolUsageResponse")
	local t = { 
		["IdentityPoolUsage"] = _IdentityPoolUsage,
	}
	asserts.AssertDescribeIdentityPoolUsageResponse(t)
	return t
end

keys.UpdateRecordsRequest = { ["DatasetName"] = true, ["RecordPatches"] = true, ["IdentityId"] = true, ["IdentityPoolId"] = true, ["DeviceId"] = true, ["SyncSessionToken"] = true, ["ClientContext"] = true, nil }

function asserts.AssertUpdateRecordsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRecordsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	assert(struct["SyncSessionToken"], "Expected key SyncSessionToken to exist in table")
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["RecordPatches"] then asserts.AssertRecordPatchList(struct["RecordPatches"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DeviceId"] then asserts.AssertDeviceId(struct["DeviceId"]) end
	if struct["SyncSessionToken"] then asserts.AssertSyncSessionToken(struct["SyncSessionToken"]) end
	if struct["ClientContext"] then asserts.AssertClientContext(struct["ClientContext"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRecordsRequest[k], "UpdateRecordsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRecordsRequest
-- A request to post updates to records or add and delete records for a dataset and user.
-- @param _DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param _RecordPatches [RecordPatchList] A list of patch operations.
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- @param _SyncSessionToken [SyncSessionToken] The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity.
-- @param _ClientContext [ClientContext] Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
-- Required parameter: SyncSessionToken
function M.UpdateRecordsRequest(_DatasetName, _RecordPatches, _IdentityId, _IdentityPoolId, _DeviceId, _SyncSessionToken, _ClientContext, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRecordsRequest")
	local t = { 
		["DatasetName"] = _DatasetName,
		["RecordPatches"] = _RecordPatches,
		["IdentityId"] = _IdentityId,
		["IdentityPoolId"] = _IdentityPoolId,
		["DeviceId"] = _DeviceId,
		["SyncSessionToken"] = _SyncSessionToken,
		["ClientContext"] = _ClientContext,
	}
	asserts.AssertUpdateRecordsRequest(t)
	return t
end

keys.DescribeDatasetRequest = { ["IdentityPoolId"] = true, ["DatasetName"] = true, ["IdentityId"] = true, nil }

function asserts.AssertDescribeDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDatasetRequest[k], "DescribeDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatasetRequest
-- A request for meta data about a dataset (creation date, number of records, size) by owner and dataset name.
-- @param _IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
function M.DescribeDatasetRequest(_IdentityPoolId, _DatasetName, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDatasetRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["DatasetName"] = _DatasetName,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertDescribeDatasetRequest(t)
	return t
end

keys.GetCognitoEventsResponse = { ["Events"] = true, nil }

function asserts.AssertGetCognitoEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCognitoEventsResponse to be of type 'table'")
	if struct["Events"] then asserts.AssertEvents(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCognitoEventsResponse[k], "GetCognitoEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCognitoEventsResponse
-- <p>The response from the GetCognitoEvents request</p>
-- @param _Events [Events] <p>The Cognito Events returned from the GetCognitoEvents request</p>
function M.GetCognitoEventsResponse(_Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCognitoEventsResponse")
	local t = { 
		["Events"] = _Events,
	}
	asserts.AssertGetCognitoEventsResponse(t)
	return t
end

keys.SetCognitoEventsRequest = { ["IdentityPoolId"] = true, ["Events"] = true, nil }

function asserts.AssertSetCognitoEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetCognitoEventsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Events"] then asserts.AssertEvents(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetCognitoEventsRequest[k], "SetCognitoEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetCognitoEventsRequest
-- <p>A request to configure Cognito Events"</p>"
-- @param _IdentityPoolId [IdentityPoolId] <p>The Cognito Identity Pool to use when configuring Cognito Events</p>
-- @param _Events [Events] <p>The events to configure</p>
-- Required parameter: IdentityPoolId
-- Required parameter: Events
function M.SetCognitoEventsRequest(_IdentityPoolId, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetCognitoEventsRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
		["Events"] = _Events,
	}
	asserts.AssertSetCognitoEventsRequest(t)
	return t
end

keys.ListDatasetsResponse = { ["Count"] = true, ["Datasets"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDatasetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetsResponse to be of type 'table'")
	if struct["Count"] then asserts.AssertInteger(struct["Count"]) end
	if struct["Datasets"] then asserts.AssertDatasetList(struct["Datasets"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatasetsResponse[k], "ListDatasetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetsResponse
-- Returned for a successful ListDatasets request.
-- @param _Count [Integer] Number of datasets returned.
-- @param _Datasets [DatasetList] A set of datasets.
-- @param _NextToken [String] A pagination token for obtaining the next page of results.
function M.ListDatasetsResponse(_Count, _Datasets, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDatasetsResponse")
	local t = { 
		["Count"] = _Count,
		["Datasets"] = _Datasets,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListDatasetsResponse(t)
	return t
end

keys.LambdaThrottledException = { ["message"] = true, nil }

function asserts.AssertLambdaThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaThrottledException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaThrottledException[k], "LambdaThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaThrottledException
-- <p>AWS Lambda throttled your account, please contact AWS Support</p>
-- @param _message [ExceptionMessage] <p>A message returned when an LambdaThrottledException is thrown</p>
-- Required parameter: message
function M.LambdaThrottledException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaThrottledException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLambdaThrottledException(t)
	return t
end

keys.ResourceConflictException = { ["message"] = true, nil }

function asserts.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConflictException[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.
-- @param _message [ExceptionMessage] The message returned by a ResourceConflictException.
-- Required parameter: message
function M.ResourceConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceConflictException(t)
	return t
end

keys.AlreadyStreamedException = { ["message"] = true, nil }

function asserts.AssertAlreadyStreamedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyStreamedException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyStreamedException[k], "AlreadyStreamedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyStreamedException
-- An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
-- @param _message [ExceptionMessage] The message associated with the AlreadyStreamedException exception.
-- Required parameter: message
function M.AlreadyStreamedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyStreamedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAlreadyStreamedException(t)
	return t
end

keys.Dataset = { ["DatasetName"] = true, ["DataStorage"] = true, ["LastModifiedDate"] = true, ["NumRecords"] = true, ["IdentityId"] = true, ["LastModifiedBy"] = true, ["CreationDate"] = true, nil }

function asserts.AssertDataset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dataset to be of type 'table'")
	if struct["DatasetName"] then asserts.AssertDatasetName(struct["DatasetName"]) end
	if struct["DataStorage"] then asserts.AssertLong(struct["DataStorage"]) end
	if struct["LastModifiedDate"] then asserts.AssertDate(struct["LastModifiedDate"]) end
	if struct["NumRecords"] then asserts.AssertLong(struct["NumRecords"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	if struct["LastModifiedBy"] then asserts.AssertString(struct["LastModifiedBy"]) end
	if struct["CreationDate"] then asserts.AssertDate(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Dataset[k], "Dataset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dataset
-- A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
-- @param _DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param _DataStorage [Long] Total size in bytes of the records in this dataset.
-- @param _LastModifiedDate [Date] Date when the dataset was last modified.
-- @param _NumRecords [Long] Number of records in this dataset.
-- @param _IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param _LastModifiedBy [String] The device that made the last change to this dataset.
-- @param _CreationDate [Date] Date on which the dataset was created.
function M.Dataset(_DatasetName, _DataStorage, _LastModifiedDate, _NumRecords, _IdentityId, _LastModifiedBy, _CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Dataset")
	local t = { 
		["DatasetName"] = _DatasetName,
		["DataStorage"] = _DataStorage,
		["LastModifiedDate"] = _LastModifiedDate,
		["NumRecords"] = _NumRecords,
		["IdentityId"] = _IdentityId,
		["LastModifiedBy"] = _LastModifiedBy,
		["CreationDate"] = _CreationDate,
	}
	asserts.AssertDataset(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- Thrown if the resource doesn't exist.
-- @param _message [ExceptionMessage] Message returned by a ResourceNotFoundException.
-- Required parameter: message
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.RecordPatch = { ["SyncCount"] = true, ["DeviceLastModifiedDate"] = true, ["Value"] = true, ["Key"] = true, ["Op"] = true, nil }

function asserts.AssertRecordPatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordPatch to be of type 'table'")
	assert(struct["Op"], "Expected key Op to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["SyncCount"], "Expected key SyncCount to exist in table")
	if struct["SyncCount"] then asserts.AssertLong(struct["SyncCount"]) end
	if struct["DeviceLastModifiedDate"] then asserts.AssertDate(struct["DeviceLastModifiedDate"]) end
	if struct["Value"] then asserts.AssertRecordValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertRecordKey(struct["Key"]) end
	if struct["Op"] then asserts.AssertOperation(struct["Op"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordPatch[k], "RecordPatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordPatch
-- An update operation for a record.
-- @param _SyncCount [Long] Last known server sync count for this record. Set to 0 if unknown.
-- @param _DeviceLastModifiedDate [Date] The last modified date of the client device.
-- @param _Value [RecordValue] The value associated with the record patch.
-- @param _Key [RecordKey] The key associated with the record patch.
-- @param _Op [Operation] An operation, either replace or remove.
-- Required parameter: Op
-- Required parameter: Key
-- Required parameter: SyncCount
function M.RecordPatch(_SyncCount, _DeviceLastModifiedDate, _Value, _Key, _Op, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordPatch")
	local t = { 
		["SyncCount"] = _SyncCount,
		["DeviceLastModifiedDate"] = _DeviceLastModifiedDate,
		["Value"] = _Value,
		["Key"] = _Key,
		["Op"] = _Op,
	}
	asserts.AssertRecordPatch(t)
	return t
end

keys.RegisterDeviceResponse = { ["DeviceId"] = true, nil }

function asserts.AssertRegisterDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDeviceResponse to be of type 'table'")
	if struct["DeviceId"] then asserts.AssertDeviceId(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDeviceResponse[k], "RegisterDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDeviceResponse
-- <p>Response to a RegisterDevice request.</p>
-- @param _DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
function M.RegisterDeviceResponse(_DeviceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDeviceResponse")
	local t = { 
		["DeviceId"] = _DeviceId,
	}
	asserts.AssertRegisterDeviceResponse(t)
	return t
end

keys.RegisterDeviceRequest = { ["Platform"] = true, ["IdentityPoolId"] = true, ["Token"] = true, ["IdentityId"] = true, nil }

function asserts.AssertRegisterDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDeviceRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["Platform"], "Expected key Platform to exist in table")
	assert(struct["Token"], "Expected key Token to exist in table")
	if struct["Platform"] then asserts.AssertPlatform(struct["Platform"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Token"] then asserts.AssertPushToken(struct["Token"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDeviceRequest[k], "RegisterDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDeviceRequest
-- <p>A request to RegisterDevice.</p>
-- @param _Platform [Platform] <p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>
-- @param _Token [PushToken] <p>The push token.</p>
-- @param _IdentityId [IdentityId] <p>The unique ID for this identity.</p>
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: Platform
-- Required parameter: Token
function M.RegisterDeviceRequest(_Platform, _IdentityPoolId, _Token, _IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDeviceRequest")
	local t = { 
		["Platform"] = _Platform,
		["IdentityPoolId"] = _IdentityPoolId,
		["Token"] = _Token,
		["IdentityId"] = _IdentityId,
	}
	asserts.AssertRegisterDeviceRequest(t)
	return t
end

keys.InvalidConfigurationException = { ["message"] = true, nil }

function asserts.AssertInvalidConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidConfigurationException[k], "InvalidConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationException
--  
-- @param _message [ExceptionMessage] Message returned by InvalidConfigurationException.
-- Required parameter: message
function M.InvalidConfigurationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidConfigurationException(t)
	return t
end

keys.GetIdentityPoolConfigurationRequest = { ["IdentityPoolId"] = true, nil }

function asserts.AssertGetIdentityPoolConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolConfigurationRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityPoolConfigurationRequest[k], "GetIdentityPoolConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolConfigurationRequest
-- <p>The input for the GetIdentityPoolConfiguration operation.</p>
-- @param _IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>
-- Required parameter: IdentityPoolId
function M.GetIdentityPoolConfigurationRequest(_IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoolConfigurationRequest")
	local t = { 
		["IdentityPoolId"] = _IdentityPoolId,
	}
	asserts.AssertGetIdentityPoolConfigurationRequest(t)
	return t
end

keys.DuplicateRequestException = { ["message"] = true, nil }

function asserts.AssertDuplicateRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequestException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateRequestException[k], "DuplicateRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequestException
-- An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
-- @param _message [ExceptionMessage] The message associated with the DuplicateRequestException exception.
-- Required parameter: message
function M.DuplicateRequestException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRequestException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDuplicateRequestException(t)
	return t
end

function asserts.AssertDatasetName(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DatasetName(str)
	asserts.AssertDatasetName(str)
	return str
end

function asserts.AssertSyncSessionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SyncSessionToken to be of type 'string'")
end

--  
function M.SyncSessionToken(str)
	asserts.AssertSyncSessionToken(str)
	return str
end

function asserts.AssertIdentityPoolId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityPoolId(str)
	asserts.AssertIdentityPoolId(str)
	return str
end

function asserts.AssertCognitoEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected CognitoEventType to be of type 'string'")
end

--  
function M.CognitoEventType(str)
	asserts.AssertCognitoEventType(str)
	return str
end

function asserts.AssertRecordKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordKey(str)
	asserts.AssertRecordKey(str)
	return str
end

function asserts.AssertIdentityId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityId(str)
	asserts.AssertIdentityId(str)
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

function asserts.AssertBulkPublishStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BulkPublishStatus to be of type 'string'")
end

--  
function M.BulkPublishStatus(str)
	asserts.AssertBulkPublishStatus(str)
	return str
end

function asserts.AssertAssumeRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AssumeRoleArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.AssumeRoleArn(str)
	asserts.AssertAssumeRoleArn(str)
	return str
end

function asserts.AssertDeviceId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceId(str)
	asserts.AssertDeviceId(str)
	return str
end

function asserts.AssertStreamingStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamingStatus to be of type 'string'")
end

--  
function M.StreamingStatus(str)
	asserts.AssertStreamingStatus(str)
	return str
end

function asserts.AssertLambdaFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaFunctionArn to be of type 'string'")
end

--  
function M.LambdaFunctionArn(str)
	asserts.AssertLambdaFunctionArn(str)
	return str
end

function asserts.AssertPushToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PushToken to be of type 'string'")
end

--  
function M.PushToken(str)
	asserts.AssertPushToken(str)
	return str
end

function asserts.AssertOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected Operation to be of type 'string'")
end

--  
function M.Operation(str)
	asserts.AssertOperation(str)
	return str
end

function asserts.AssertRecordValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordValue to be of type 'string'")
	assert(#str <= 1048575, "Expected string to be max 1048575 characters")
end

--  
function M.RecordValue(str)
	asserts.AssertRecordValue(str)
	return str
end

function asserts.AssertPlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected Platform to be of type 'string'")
end

--  
function M.Platform(str)
	asserts.AssertPlatform(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamName(str)
	asserts.AssertStreamName(str)
	return str
end

function asserts.AssertApplicationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationArn to be of type 'string'")
end

--  
function M.ApplicationArn(str)
	asserts.AssertApplicationArn(str)
	return str
end

function asserts.AssertClientContext(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientContext to be of type 'string'")
end

--  
function M.ClientContext(str)
	asserts.AssertClientContext(str)
	return str
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
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

function asserts.AssertIntegerString(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerString to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerString(integer)
	asserts.AssertIntegerString(integer)
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

function asserts.AssertEvents(map)
	assert(map)
	assert(type(map) == "table", "Expected Events to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertCognitoEventType(k)
		asserts.AssertLambdaFunctionArn(v)
	end
end

function M.Events(map)
	asserts.AssertEvents(map)
	return map
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertIdentityPoolUsageList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityPoolUsageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIdentityPoolUsage(v)
	end
end

--  
-- List of IdentityPoolUsage objects
function M.IdentityPoolUsageList(list)
	asserts.AssertIdentityPoolUsageList(list)
	return list
end

function asserts.AssertMergedDatasetNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MergedDatasetNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.MergedDatasetNameList(list)
	asserts.AssertMergedDatasetNameList(list)
	return list
end

function asserts.AssertRecordPatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordPatchList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecordPatch(v)
	end
end

--  
-- List of RecordPatch objects
function M.RecordPatchList(list)
	asserts.AssertRecordPatchList(list)
	return list
end

function asserts.AssertRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.RecordList(list)
	asserts.AssertRecordList(list)
	return list
end

function asserts.AssertApplicationArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationArnList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationArn(v)
	end
end

--  
-- List of ApplicationArn objects
function M.ApplicationArnList(list)
	asserts.AssertApplicationArnList(list)
	return list
end

function asserts.AssertDatasetList(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataset(v)
	end
end

--  
-- List of Dataset objects
function M.DatasetList(list)
	asserts.AssertDatasetList(list)
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
			return "cognito-sync.amazonaws.com"
		end
	end
	local ss = { "cognito-sync" }
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
--- SetCognitoEvents
-- @param SetCognitoEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetCognitoEventsAsync(SetCognitoEventsRequest, cb)
	assert(SetCognitoEventsRequest, "You must provide a SetCognitoEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetCognitoEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/events", SetCognitoEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeIdentityUsage
-- @param DescribeIdentityUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityUsageAsync(DescribeIdentityUsageRequest, cb)
	assert(DescribeIdentityUsageRequest, "You must provide a DescribeIdentityUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeIdentityUsage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}", DescribeIdentityUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRecords
-- @param ListRecordsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRecordsAsync(ListRecordsRequest, cb)
	assert(ListRecordsRequest, "You must provide a ListRecordsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListRecords",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", ListRecordsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDataset
-- @param DescribeDatasetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDatasetAsync(DescribeDatasetRequest, cb)
	assert(DescribeDatasetRequest, "You must provide a DescribeDatasetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDataset",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", DescribeDatasetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BulkPublish
-- @param BulkPublishRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BulkPublishAsync(BulkPublishRequest, cb)
	assert(BulkPublishRequest, "You must provide a BulkPublishRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BulkPublish",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/bulkpublish", BulkPublishRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnsubscribeFromDataset
-- @param UnsubscribeFromDatasetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnsubscribeFromDatasetAsync(UnsubscribeFromDatasetRequest, cb)
	assert(UnsubscribeFromDatasetRequest, "You must provide a UnsubscribeFromDatasetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UnsubscribeFromDataset",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", UnsubscribeFromDatasetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIdentityPoolUsage
-- @param ListIdentityPoolUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentityPoolUsageAsync(ListIdentityPoolUsageRequest, cb)
	assert(ListIdentityPoolUsageRequest, "You must provide a ListIdentityPoolUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListIdentityPoolUsage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools", ListIdentityPoolUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterDevice
-- @param RegisterDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterDeviceAsync(RegisterDeviceRequest, cb)
	assert(RegisterDeviceRequest, "You must provide a RegisterDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RegisterDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", RegisterDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBulkPublishDetails
-- @param GetBulkPublishDetailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBulkPublishDetailsAsync(GetBulkPublishDetailsRequest, cb)
	assert(GetBulkPublishDetailsRequest, "You must provide a GetBulkPublishDetailsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBulkPublishDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/getBulkPublishDetails", GetBulkPublishDetailsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCognitoEvents
-- @param GetCognitoEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCognitoEventsAsync(GetCognitoEventsRequest, cb)
	assert(GetCognitoEventsRequest, "You must provide a GetCognitoEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCognitoEvents",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/events", GetCognitoEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDataset
-- @param DeleteDatasetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDatasetAsync(DeleteDatasetRequest, cb)
	assert(DeleteDatasetRequest, "You must provide a DeleteDatasetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDataset",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", DeleteDatasetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeIdentityPoolUsage
-- @param DescribeIdentityPoolUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityPoolUsageAsync(DescribeIdentityPoolUsageRequest, cb)
	assert(DescribeIdentityPoolUsageRequest, "You must provide a DescribeIdentityPoolUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeIdentityPoolUsage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}", DescribeIdentityPoolUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRecords
-- @param UpdateRecordsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRecordsAsync(UpdateRecordsRequest, cb)
	assert(UpdateRecordsRequest, "You must provide a UpdateRecordsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateRecords",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", UpdateRecordsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SubscribeToDataset
-- @param SubscribeToDatasetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubscribeToDatasetAsync(SubscribeToDatasetRequest, cb)
	assert(SubscribeToDatasetRequest, "You must provide a SubscribeToDatasetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SubscribeToDataset",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", SubscribeToDatasetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityPoolConfiguration
-- @param SetIdentityPoolConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityPoolConfigurationAsync(SetIdentityPoolConfigurationRequest, cb)
	assert(SetIdentityPoolConfigurationRequest, "You must provide a SetIdentityPoolConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIdentityPoolConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/configuration", SetIdentityPoolConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityPoolConfiguration
-- @param GetIdentityPoolConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityPoolConfigurationAsync(GetIdentityPoolConfigurationRequest, cb)
	assert(GetIdentityPoolConfigurationRequest, "You must provide a GetIdentityPoolConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIdentityPoolConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/configuration", GetIdentityPoolConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDatasets
-- @param ListDatasetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDatasetsAsync(ListDatasetsRequest, cb)
	assert(ListDatasetsRequest, "You must provide a ListDatasetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDatasets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", ListDatasetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
