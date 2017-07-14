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

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- Thrown when the limit on the number of objects or operations has been exceeded.
-- @param message [ExceptionMessage] Message returned by LimitExceededException.
-- Required parameter: message
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local GetIdentityPoolConfigurationResponse_keys = { "IdentityPoolId" = true, "PushSync" = true, "CognitoStreams" = true, nil }

function M.AssertGetIdentityPoolConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolConfigurationResponse to be of type 'table'")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["PushSync"] then M.AssertPushSync(struct["PushSync"]) end
	if struct["CognitoStreams"] then M.AssertCognitoStreams(struct["CognitoStreams"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityPoolConfigurationResponse_keys[k], "GetIdentityPoolConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolConfigurationResponse
-- &lt;p&gt;The output for the GetIdentityPoolConfiguration operation.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.&lt;/p&gt;
-- @param PushSync [PushSync] &lt;p&gt;Options to apply to this identity pool for push synchronization.&lt;/p&gt;
-- @param CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
function M.GetIdentityPoolConfigurationResponse(IdentityPoolId, PushSync, CognitoStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoolConfigurationResponse")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["PushSync"] = PushSync,
		["CognitoStreams"] = CognitoStreams,
	}
	M.AssertGetIdentityPoolConfigurationResponse(t)
	return t
end

local ConcurrentModificationException_keys = { "message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- &lt;p&gt;Thrown if there are parallel requests to modify a resource.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by a ConcurrentModicationException.&lt;/p&gt;
-- Required parameter: message
function M.ConcurrentModificationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local DeleteDatasetResponse_keys = { "Dataset" = true, nil }

function M.AssertDeleteDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatasetResponse to be of type 'table'")
	if struct["Dataset"] then M.AssertDataset(struct["Dataset"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDatasetResponse_keys[k], "DeleteDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatasetResponse
-- Response to a successful DeleteDataset request.
-- @param Dataset [Dataset] A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
function M.DeleteDatasetResponse(Dataset, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDatasetResponse")
	local t = { 
		["Dataset"] = Dataset,
	}
	M.AssertDeleteDatasetResponse(t)
	return t
end

local InternalErrorException_keys = { "message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- Indicates an internal service error.
-- @param message [ExceptionMessage] Message returned by InternalErrorException.
-- Required parameter: message
function M.InternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local DescribeIdentityUsageRequest_keys = { "IdentityPoolId" = true, "IdentityId" = true, nil }

function M.AssertDescribeIdentityUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityUsageRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityUsageRequest_keys[k], "DescribeIdentityUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityUsageRequest
-- A request for information about the usage of an identity pool.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
function M.DescribeIdentityUsageRequest(IdentityPoolId, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityUsageRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["IdentityId"] = IdentityId,
	}
	M.AssertDescribeIdentityUsageRequest(t)
	return t
end

local GetBulkPublishDetailsRequest_keys = { "IdentityPoolId" = true, nil }

function M.AssertGetBulkPublishDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBulkPublishDetailsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetBulkPublishDetailsRequest_keys[k], "GetBulkPublishDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBulkPublishDetailsRequest
-- The input for the GetBulkPublishDetails operation.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
function M.GetBulkPublishDetailsRequest(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBulkPublishDetailsRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertGetBulkPublishDetailsRequest(t)
	return t
end

local ListRecordsResponse_keys = { "Count" = true, "DatasetExists" = true, "DatasetSyncCount" = true, "LastModifiedBy" = true, "Records" = true, "MergedDatasetNames" = true, "SyncSessionToken" = true, "DatasetDeletedAfterRequestedSyncCount" = true, "NextToken" = true, nil }

function M.AssertListRecordsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordsResponse to be of type 'table'")
	if struct["Count"] then M.AssertInteger(struct["Count"]) end
	if struct["DatasetExists"] then M.AssertBoolean(struct["DatasetExists"]) end
	if struct["DatasetSyncCount"] then M.AssertLong(struct["DatasetSyncCount"]) end
	if struct["LastModifiedBy"] then M.AssertString(struct["LastModifiedBy"]) end
	if struct["Records"] then M.AssertRecordList(struct["Records"]) end
	if struct["MergedDatasetNames"] then M.AssertMergedDatasetNameList(struct["MergedDatasetNames"]) end
	if struct["SyncSessionToken"] then M.AssertString(struct["SyncSessionToken"]) end
	if struct["DatasetDeletedAfterRequestedSyncCount"] then M.AssertBoolean(struct["DatasetDeletedAfterRequestedSyncCount"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListRecordsResponse_keys[k], "ListRecordsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordsResponse
-- Returned for a successful ListRecordsRequest.
-- @param Count [Integer] Total number of records.
-- @param DatasetExists [Boolean] Indicates whether the dataset exists.
-- @param DatasetSyncCount [Long] Server sync count for this dataset.
-- @param LastModifiedBy [String] The user/device that made the last change to this record.
-- @param Records [RecordList] A list of all records.
-- @param MergedDatasetNames [MergedDatasetNameList] Names of merged datasets.
-- @param SyncSessionToken [String] A token containing a session ID, identity ID, and expiration.
-- @param DatasetDeletedAfterRequestedSyncCount [Boolean] A boolean value specifying whether to delete the dataset locally.
-- @param NextToken [String] A pagination token for obtaining the next page of results.
function M.ListRecordsResponse(Count, DatasetExists, DatasetSyncCount, LastModifiedBy, Records, MergedDatasetNames, SyncSessionToken, DatasetDeletedAfterRequestedSyncCount, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordsResponse")
	local t = { 
		["Count"] = Count,
		["DatasetExists"] = DatasetExists,
		["DatasetSyncCount"] = DatasetSyncCount,
		["LastModifiedBy"] = LastModifiedBy,
		["Records"] = Records,
		["MergedDatasetNames"] = MergedDatasetNames,
		["SyncSessionToken"] = SyncSessionToken,
		["DatasetDeletedAfterRequestedSyncCount"] = DatasetDeletedAfterRequestedSyncCount,
		["NextToken"] = NextToken,
	}
	M.AssertListRecordsResponse(t)
	return t
end

local SetIdentityPoolConfigurationResponse_keys = { "IdentityPoolId" = true, "PushSync" = true, "CognitoStreams" = true, nil }

function M.AssertSetIdentityPoolConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityPoolConfigurationResponse to be of type 'table'")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["PushSync"] then M.AssertPushSync(struct["PushSync"]) end
	if struct["CognitoStreams"] then M.AssertCognitoStreams(struct["CognitoStreams"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityPoolConfigurationResponse_keys[k], "SetIdentityPoolConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityPoolConfigurationResponse
-- &lt;p&gt;The output for the SetIdentityPoolConfiguration operation&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.&lt;/p&gt;
-- @param PushSync [PushSync] &lt;p&gt;Options to apply to this identity pool for push synchronization.&lt;/p&gt;
-- @param CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
function M.SetIdentityPoolConfigurationResponse(IdentityPoolId, PushSync, CognitoStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityPoolConfigurationResponse")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["PushSync"] = PushSync,
		["CognitoStreams"] = CognitoStreams,
	}
	M.AssertSetIdentityPoolConfigurationResponse(t)
	return t
end

local SubscribeToDatasetRequest_keys = { "IdentityPoolId" = true, "DatasetName" = true, "DeviceId" = true, "IdentityId" = true, nil }

function M.AssertSubscribeToDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["DeviceId"] then M.AssertDeviceId(struct["DeviceId"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(SubscribeToDatasetRequest_keys[k], "SubscribeToDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToDatasetRequest
-- &lt;p&gt;A request to SubscribeToDatasetRequest.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.&lt;/p&gt;
-- @param DatasetName [DatasetName] &lt;p&gt;The name of the dataset to subcribe to.&lt;/p&gt;
-- @param DeviceId [DeviceId] &lt;p&gt;The unique ID generated for this device by Cognito.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;Unique ID for this identity.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
-- Required parameter: DeviceId
function M.SubscribeToDatasetRequest(IdentityPoolId, DatasetName, DeviceId, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeToDatasetRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["DatasetName"] = DatasetName,
		["DeviceId"] = DeviceId,
		["IdentityId"] = IdentityId,
	}
	M.AssertSubscribeToDatasetRequest(t)
	return t
end

local UnsubscribeFromDatasetResponse_keys = { nil }

function M.AssertUnsubscribeFromDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeFromDatasetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsubscribeFromDatasetResponse_keys[k], "UnsubscribeFromDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeFromDatasetResponse
-- &lt;p&gt;Response to an UnsubscribeFromDataset request.&lt;/p&gt;
function M.UnsubscribeFromDatasetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeFromDatasetResponse")
	local t = { 
	}
	M.AssertUnsubscribeFromDatasetResponse(t)
	return t
end

local SetIdentityPoolConfigurationRequest_keys = { "IdentityPoolId" = true, "PushSync" = true, "CognitoStreams" = true, nil }

function M.AssertSetIdentityPoolConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityPoolConfigurationRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["PushSync"] then M.AssertPushSync(struct["PushSync"]) end
	if struct["CognitoStreams"] then M.AssertCognitoStreams(struct["CognitoStreams"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityPoolConfigurationRequest_keys[k], "SetIdentityPoolConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityPoolConfigurationRequest
-- &lt;p&gt;The input for the SetIdentityPoolConfiguration operation.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.&lt;/p&gt;
-- @param PushSync [PushSync] &lt;p&gt;Options to apply to this identity pool for push synchronization.&lt;/p&gt;
-- @param CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
-- Required parameter: IdentityPoolId
function M.SetIdentityPoolConfigurationRequest(IdentityPoolId, PushSync, CognitoStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityPoolConfigurationRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["PushSync"] = PushSync,
		["CognitoStreams"] = CognitoStreams,
	}
	M.AssertSetIdentityPoolConfigurationRequest(t)
	return t
end

local ListIdentityPoolUsageResponse_keys = { "Count" = true, "NextToken" = true, "MaxResults" = true, "IdentityPoolUsages" = true, nil }

function M.AssertListIdentityPoolUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolUsageResponse to be of type 'table'")
	if struct["Count"] then M.AssertInteger(struct["Count"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertInteger(struct["MaxResults"]) end
	if struct["IdentityPoolUsages"] then M.AssertIdentityPoolUsageList(struct["IdentityPoolUsages"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityPoolUsageResponse_keys[k], "ListIdentityPoolUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolUsageResponse
-- Returned for a successful ListIdentityPoolUsage request.
-- @param Count [Integer] Total number of identities for the identity pool.
-- @param NextToken [String] A pagination token for obtaining the next page of results.
-- @param MaxResults [Integer] The maximum number of results to be returned.
-- @param IdentityPoolUsages [IdentityPoolUsageList] Usage information for the identity pools.
function M.ListIdentityPoolUsageResponse(Count, NextToken, MaxResults, IdentityPoolUsages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoolUsageResponse")
	local t = { 
		["Count"] = Count,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["IdentityPoolUsages"] = IdentityPoolUsages,
	}
	M.AssertListIdentityPoolUsageResponse(t)
	return t
end

local GetCognitoEventsRequest_keys = { "IdentityPoolId" = true, nil }

function M.AssertGetCognitoEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCognitoEventsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetCognitoEventsRequest_keys[k], "GetCognitoEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCognitoEventsRequest
-- &lt;p&gt;A request for a list of the configured Cognito Events&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;The Cognito Identity Pool ID for the request&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.GetCognitoEventsRequest(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCognitoEventsRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertGetCognitoEventsRequest(t)
	return t
end

local DescribeIdentityPoolUsageRequest_keys = { "IdentityPoolId" = true, nil }

function M.AssertDescribeIdentityPoolUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityPoolUsageRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityPoolUsageRequest_keys[k], "DescribeIdentityPoolUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityPoolUsageRequest
-- A request for usage information about the identity pool.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
function M.DescribeIdentityPoolUsageRequest(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityPoolUsageRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertDescribeIdentityPoolUsageRequest(t)
	return t
end

local IdentityPoolUsage_keys = { "DataStorage" = true, "IdentityPoolId" = true, "SyncSessionsCount" = true, "LastModifiedDate" = true, nil }

function M.AssertIdentityPoolUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityPoolUsage to be of type 'table'")
	if struct["DataStorage"] then M.AssertLong(struct["DataStorage"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["SyncSessionsCount"] then M.AssertLong(struct["SyncSessionsCount"]) end
	if struct["LastModifiedDate"] then M.AssertDate(struct["LastModifiedDate"]) end
	for k,_ in pairs(struct) do
		assert(IdentityPoolUsage_keys[k], "IdentityPoolUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityPoolUsage
-- Usage information for the identity pool.
-- @param DataStorage [Long] Data storage information for the identity pool.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param SyncSessionsCount [Long] Number of sync sessions for the identity pool.
-- @param LastModifiedDate [Date] Date on which the identity pool was last modified.
function M.IdentityPoolUsage(DataStorage, IdentityPoolId, SyncSessionsCount, LastModifiedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityPoolUsage")
	local t = { 
		["DataStorage"] = DataStorage,
		["IdentityPoolId"] = IdentityPoolId,
		["SyncSessionsCount"] = SyncSessionsCount,
		["LastModifiedDate"] = LastModifiedDate,
	}
	M.AssertIdentityPoolUsage(t)
	return t
end

local GetBulkPublishDetailsResponse_keys = { "BulkPublishStartTime" = true, "IdentityPoolId" = true, "BulkPublishStatus" = true, "BulkPublishCompleteTime" = true, "FailureMessage" = true, nil }

function M.AssertGetBulkPublishDetailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBulkPublishDetailsResponse to be of type 'table'")
	if struct["BulkPublishStartTime"] then M.AssertDate(struct["BulkPublishStartTime"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["BulkPublishStatus"] then M.AssertBulkPublishStatus(struct["BulkPublishStatus"]) end
	if struct["BulkPublishCompleteTime"] then M.AssertDate(struct["BulkPublishCompleteTime"]) end
	if struct["FailureMessage"] then M.AssertString(struct["FailureMessage"]) end
	for k,_ in pairs(struct) do
		assert(GetBulkPublishDetailsResponse_keys[k], "GetBulkPublishDetailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBulkPublishDetailsResponse
-- The output for the GetBulkPublishDetails operation.
-- @param BulkPublishStartTime [Date] The date/time at which the last bulk publish was initiated.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param BulkPublishStatus [BulkPublishStatus] Status of the last bulk publish operation, valid values are: &lt;p&gt;NOT_STARTED - No bulk publish has been requested for this identity pool&lt;/p&gt; &lt;p&gt;IN_PROGRESS - Data is being published to the configured stream&lt;/p&gt; &lt;p&gt;SUCCEEDED - All data for the identity pool has been published to the configured stream&lt;/p&gt; &lt;p&gt;FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.&lt;/p&gt;
-- @param BulkPublishCompleteTime [Date] If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
-- @param FailureMessage [String] If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
function M.GetBulkPublishDetailsResponse(BulkPublishStartTime, IdentityPoolId, BulkPublishStatus, BulkPublishCompleteTime, FailureMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBulkPublishDetailsResponse")
	local t = { 
		["BulkPublishStartTime"] = BulkPublishStartTime,
		["IdentityPoolId"] = IdentityPoolId,
		["BulkPublishStatus"] = BulkPublishStatus,
		["BulkPublishCompleteTime"] = BulkPublishCompleteTime,
		["FailureMessage"] = FailureMessage,
	}
	M.AssertGetBulkPublishDetailsResponse(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- Thrown when a request parameter does not comply with the associated constraints.
-- @param message [ExceptionMessage] Message returned by InvalidParameterException.
-- Required parameter: message
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local UnsubscribeFromDatasetRequest_keys = { "IdentityPoolId" = true, "DatasetName" = true, "DeviceId" = true, "IdentityId" = true, nil }

function M.AssertUnsubscribeFromDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeFromDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	assert(struct["DeviceId"], "Expected key DeviceId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["DeviceId"] then M.AssertDeviceId(struct["DeviceId"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(UnsubscribeFromDatasetRequest_keys[k], "UnsubscribeFromDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeFromDatasetRequest
-- &lt;p&gt;A request to UnsubscribeFromDataset.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.&lt;/p&gt;
-- @param DatasetName [DatasetName] &lt;p&gt;The name of the dataset from which to unsubcribe.&lt;/p&gt;
-- @param DeviceId [DeviceId] &lt;p&gt;The unique ID generated for this device by Cognito.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;Unique ID for this identity.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
-- Required parameter: DeviceId
function M.UnsubscribeFromDatasetRequest(IdentityPoolId, DatasetName, DeviceId, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeFromDatasetRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["DatasetName"] = DatasetName,
		["DeviceId"] = DeviceId,
		["IdentityId"] = IdentityId,
	}
	M.AssertUnsubscribeFromDatasetRequest(t)
	return t
end

local CognitoStreams_keys = { "StreamingStatus" = true, "RoleArn" = true, "StreamName" = true, nil }

function M.AssertCognitoStreams(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CognitoStreams to be of type 'table'")
	if struct["StreamingStatus"] then M.AssertStreamingStatus(struct["StreamingStatus"]) end
	if struct["RoleArn"] then M.AssertAssumeRoleArn(struct["RoleArn"]) end
	if struct["StreamName"] then M.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(CognitoStreams_keys[k], "CognitoStreams contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CognitoStreams
-- Configuration options for configure Cognito streams.
-- @param StreamingStatus [StreamingStatus] Status of the Cognito streams. Valid values are: &lt;p&gt;ENABLED - Streaming of updates to identity pool is enabled.&lt;/p&gt; &lt;p&gt;DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.&lt;/p&gt;
-- @param RoleArn [AssumeRoleArn] The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
-- @param StreamName [StreamName] The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
function M.CognitoStreams(StreamingStatus, RoleArn, StreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CognitoStreams")
	local t = { 
		["StreamingStatus"] = StreamingStatus,
		["RoleArn"] = RoleArn,
		["StreamName"] = StreamName,
	}
	M.AssertCognitoStreams(t)
	return t
end

local ListDatasetsRequest_keys = { "IdentityPoolId" = true, "NextToken" = true, "MaxResults" = true, "IdentityId" = true, nil }

function M.AssertListDatasetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetsRequest to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertIntegerString(struct["MaxResults"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(ListDatasetsRequest_keys[k], "ListDatasetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetsRequest
-- Request for a list of datasets for an identity.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param NextToken [String] A pagination token for obtaining the next page of results.
-- @param MaxResults [IntegerString] The maximum number of results to be returned.
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityId
-- Required parameter: IdentityPoolId
function M.ListDatasetsRequest(IdentityPoolId, NextToken, MaxResults, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDatasetsRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["IdentityId"] = IdentityId,
	}
	M.AssertListDatasetsRequest(t)
	return t
end

local ListIdentityPoolUsageRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListIdentityPoolUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolUsageRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertIntegerString(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityPoolUsageRequest_keys[k], "ListIdentityPoolUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolUsageRequest
-- A request for usage information on an identity pool.
-- @param NextToken [String] A pagination token for obtaining the next page of results.
-- @param MaxResults [IntegerString] The maximum number of results to be returned.
function M.ListIdentityPoolUsageRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoolUsageRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListIdentityPoolUsageRequest(t)
	return t
end

local NotAuthorizedException_keys = { "message" = true, nil }

function M.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotAuthorizedException_keys[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- Thrown when a user is not authorized to access the requested resource.
-- @param message [ExceptionMessage] The message returned by a NotAuthorizedException.
-- Required parameter: message
function M.NotAuthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotAuthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotAuthorizedException(t)
	return t
end

local ListRecordsRequest_keys = { "DatasetName" = true, "MaxResults" = true, "IdentityId" = true, "IdentityPoolId" = true, "LastSyncCount" = true, "SyncSessionToken" = true, "NextToken" = true, nil }

function M.AssertListRecordsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRecordsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["MaxResults"] then M.AssertIntegerString(struct["MaxResults"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["LastSyncCount"] then M.AssertLong(struct["LastSyncCount"]) end
	if struct["SyncSessionToken"] then M.AssertSyncSessionToken(struct["SyncSessionToken"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListRecordsRequest_keys[k], "ListRecordsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRecordsRequest
-- A request for a list of records.
-- @param DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param MaxResults [IntegerString] The maximum number of results to be returned.
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param LastSyncCount [Long] The last server sync count for this record.
-- @param SyncSessionToken [SyncSessionToken] A token containing a session ID, identity ID, and expiration.
-- @param NextToken [String] A pagination token for obtaining the next page of results.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
function M.ListRecordsRequest(DatasetName, MaxResults, IdentityId, IdentityPoolId, LastSyncCount, SyncSessionToken, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRecordsRequest")
	local t = { 
		["DatasetName"] = DatasetName,
		["MaxResults"] = MaxResults,
		["IdentityId"] = IdentityId,
		["IdentityPoolId"] = IdentityPoolId,
		["LastSyncCount"] = LastSyncCount,
		["SyncSessionToken"] = SyncSessionToken,
		["NextToken"] = NextToken,
	}
	M.AssertListRecordsRequest(t)
	return t
end

local IdentityUsage_keys = { "DatasetCount" = true, "IdentityPoolId" = true, "DataStorage" = true, "LastModifiedDate" = true, "IdentityId" = true, nil }

function M.AssertIdentityUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityUsage to be of type 'table'")
	if struct["DatasetCount"] then M.AssertInteger(struct["DatasetCount"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DataStorage"] then M.AssertLong(struct["DataStorage"]) end
	if struct["LastModifiedDate"] then M.AssertDate(struct["LastModifiedDate"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(IdentityUsage_keys[k], "IdentityUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityUsage
-- Usage information for the identity.
-- @param DatasetCount [Integer] Number of datasets for the identity.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param DataStorage [Long] Total data storage for this identity.
-- @param LastModifiedDate [Date] Date on which the identity was last modified.
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
function M.IdentityUsage(DatasetCount, IdentityPoolId, DataStorage, LastModifiedDate, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityUsage")
	local t = { 
		["DatasetCount"] = DatasetCount,
		["IdentityPoolId"] = IdentityPoolId,
		["DataStorage"] = DataStorage,
		["LastModifiedDate"] = LastModifiedDate,
		["IdentityId"] = IdentityId,
	}
	M.AssertIdentityUsage(t)
	return t
end

local DescribeDatasetResponse_keys = { "Dataset" = true, nil }

function M.AssertDescribeDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatasetResponse to be of type 'table'")
	if struct["Dataset"] then M.AssertDataset(struct["Dataset"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDatasetResponse_keys[k], "DescribeDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatasetResponse
-- Response to a successful DescribeDataset request.
-- @param Dataset [Dataset] Meta data for a collection of data for an identity. An identity can have multiple datasets. A dataset can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
function M.DescribeDatasetResponse(Dataset, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDatasetResponse")
	local t = { 
		["Dataset"] = Dataset,
	}
	M.AssertDescribeDatasetResponse(t)
	return t
end

local DeleteDatasetRequest_keys = { "IdentityPoolId" = true, "DatasetName" = true, "IdentityId" = true, nil }

function M.AssertDeleteDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDatasetRequest_keys[k], "DeleteDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatasetRequest
-- A request to delete the specific dataset.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
function M.DeleteDatasetRequest(IdentityPoolId, DatasetName, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDatasetRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["DatasetName"] = DatasetName,
		["IdentityId"] = IdentityId,
	}
	M.AssertDeleteDatasetRequest(t)
	return t
end

local BulkPublishResponse_keys = { "IdentityPoolId" = true, nil }

function M.AssertBulkPublishResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BulkPublishResponse to be of type 'table'")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(BulkPublishResponse_keys[k], "BulkPublishResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BulkPublishResponse
-- The output for the BulkPublish operation.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
function M.BulkPublishResponse(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BulkPublishResponse")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertBulkPublishResponse(t)
	return t
end

local SubscribeToDatasetResponse_keys = { nil }

function M.AssertSubscribeToDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToDatasetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubscribeToDatasetResponse_keys[k], "SubscribeToDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToDatasetResponse
-- &lt;p&gt;Response to a SubscribeToDataset request.&lt;/p&gt;
function M.SubscribeToDatasetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeToDatasetResponse")
	local t = { 
	}
	M.AssertSubscribeToDatasetResponse(t)
	return t
end

local InvalidLambdaFunctionOutputException_keys = { "message" = true, nil }

function M.AssertInvalidLambdaFunctionOutputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaFunctionOutputException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLambdaFunctionOutputException_keys[k], "InvalidLambdaFunctionOutputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaFunctionOutputException
-- &lt;p&gt;The AWS Lambda function returned invalid output or an exception.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;A message returned when an InvalidLambdaFunctionOutputException occurs&lt;/p&gt;
-- Required parameter: message
function M.InvalidLambdaFunctionOutputException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaFunctionOutputException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidLambdaFunctionOutputException(t)
	return t
end

local TooManyRequestsException_keys = { "message" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- Thrown if the request is throttled.
-- @param message [ExceptionMessage] Message returned by a TooManyRequestsException.
-- Required parameter: message
function M.TooManyRequestsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local DescribeIdentityUsageResponse_keys = { "IdentityUsage" = true, nil }

function M.AssertDescribeIdentityUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityUsageResponse to be of type 'table'")
	if struct["IdentityUsage"] then M.AssertIdentityUsage(struct["IdentityUsage"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityUsageResponse_keys[k], "DescribeIdentityUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityUsageResponse
-- The response to a successful DescribeIdentityUsage request.
-- @param IdentityUsage [IdentityUsage] Usage information for the identity.
function M.DescribeIdentityUsageResponse(IdentityUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityUsageResponse")
	local t = { 
		["IdentityUsage"] = IdentityUsage,
	}
	M.AssertDescribeIdentityUsageResponse(t)
	return t
end

local PushSync_keys = { "RoleArn" = true, "ApplicationArns" = true, nil }

function M.AssertPushSync(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PushSync to be of type 'table'")
	if struct["RoleArn"] then M.AssertAssumeRoleArn(struct["RoleArn"]) end
	if struct["ApplicationArns"] then M.AssertApplicationArnList(struct["ApplicationArns"]) end
	for k,_ in pairs(struct) do
		assert(PushSync_keys[k], "PushSync contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PushSync
-- &lt;p&gt;Configuration options to be applied to the identity pool.&lt;/p&gt;
-- @param RoleArn [AssumeRoleArn] &lt;p&gt;A role configured to allow Cognito to call SNS on behalf of the developer.&lt;/p&gt;
-- @param ApplicationArns [ApplicationArnList] &lt;p&gt;List of SNS platform application ARNs that could be used by clients.&lt;/p&gt;
function M.PushSync(RoleArn, ApplicationArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PushSync")
	local t = { 
		["RoleArn"] = RoleArn,
		["ApplicationArns"] = ApplicationArns,
	}
	M.AssertPushSync(t)
	return t
end

local Record_keys = { "DeviceLastModifiedDate" = true, "LastModifiedDate" = true, "Value" = true, "LastModifiedBy" = true, "Key" = true, "SyncCount" = true, nil }

function M.AssertRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Record to be of type 'table'")
	if struct["DeviceLastModifiedDate"] then M.AssertDate(struct["DeviceLastModifiedDate"]) end
	if struct["LastModifiedDate"] then M.AssertDate(struct["LastModifiedDate"]) end
	if struct["Value"] then M.AssertRecordValue(struct["Value"]) end
	if struct["LastModifiedBy"] then M.AssertString(struct["LastModifiedBy"]) end
	if struct["Key"] then M.AssertRecordKey(struct["Key"]) end
	if struct["SyncCount"] then M.AssertLong(struct["SyncCount"]) end
	for k,_ in pairs(struct) do
		assert(Record_keys[k], "Record contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Record
-- The basic data structure of a dataset.
-- @param DeviceLastModifiedDate [Date] The last modified date of the client device.
-- @param LastModifiedDate [Date] The date on which the record was last modified.
-- @param Value [RecordValue] The value for the record.
-- @param LastModifiedBy [String] The user/device that made the last change to this record.
-- @param Key [RecordKey] The key for the record.
-- @param SyncCount [Long] The server sync count for this record.
function M.Record(DeviceLastModifiedDate, LastModifiedDate, Value, LastModifiedBy, Key, SyncCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Record")
	local t = { 
		["DeviceLastModifiedDate"] = DeviceLastModifiedDate,
		["LastModifiedDate"] = LastModifiedDate,
		["Value"] = Value,
		["LastModifiedBy"] = LastModifiedBy,
		["Key"] = Key,
		["SyncCount"] = SyncCount,
	}
	M.AssertRecord(t)
	return t
end

local BulkPublishRequest_keys = { "IdentityPoolId" = true, nil }

function M.AssertBulkPublishRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BulkPublishRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(BulkPublishRequest_keys[k], "BulkPublishRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BulkPublishRequest
-- The input for the BulkPublish operation.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
function M.BulkPublishRequest(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BulkPublishRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertBulkPublishRequest(t)
	return t
end

local UpdateRecordsResponse_keys = { "Records" = true, nil }

function M.AssertUpdateRecordsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRecordsResponse to be of type 'table'")
	if struct["Records"] then M.AssertRecordList(struct["Records"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRecordsResponse_keys[k], "UpdateRecordsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRecordsResponse
-- Returned for a successful UpdateRecordsRequest.
-- @param Records [RecordList] A list of records that have been updated.
function M.UpdateRecordsResponse(Records, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRecordsResponse")
	local t = { 
		["Records"] = Records,
	}
	M.AssertUpdateRecordsResponse(t)
	return t
end

local DescribeIdentityPoolUsageResponse_keys = { "IdentityPoolUsage" = true, nil }

function M.AssertDescribeIdentityPoolUsageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityPoolUsageResponse to be of type 'table'")
	if struct["IdentityPoolUsage"] then M.AssertIdentityPoolUsage(struct["IdentityPoolUsage"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityPoolUsageResponse_keys[k], "DescribeIdentityPoolUsageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityPoolUsageResponse
-- Response to a successful DescribeIdentityPoolUsage request.
-- @param IdentityPoolUsage [IdentityPoolUsage] Information about the usage of the identity pool.
function M.DescribeIdentityPoolUsageResponse(IdentityPoolUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityPoolUsageResponse")
	local t = { 
		["IdentityPoolUsage"] = IdentityPoolUsage,
	}
	M.AssertDescribeIdentityPoolUsageResponse(t)
	return t
end

local UpdateRecordsRequest_keys = { "DatasetName" = true, "RecordPatches" = true, "IdentityId" = true, "IdentityPoolId" = true, "DeviceId" = true, "SyncSessionToken" = true, "ClientContext" = true, nil }

function M.AssertUpdateRecordsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRecordsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	assert(struct["SyncSessionToken"], "Expected key SyncSessionToken to exist in table")
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["RecordPatches"] then M.AssertRecordPatchList(struct["RecordPatches"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DeviceId"] then M.AssertDeviceId(struct["DeviceId"]) end
	if struct["SyncSessionToken"] then M.AssertSyncSessionToken(struct["SyncSessionToken"]) end
	if struct["ClientContext"] then M.AssertClientContext(struct["ClientContext"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRecordsRequest_keys[k], "UpdateRecordsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRecordsRequest
-- A request to post updates to records or add and delete records for a dataset and user.
-- @param DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param RecordPatches [RecordPatchList] A list of patch operations.
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param DeviceId [DeviceId] &lt;p&gt;The unique ID generated for this device by Cognito.&lt;/p&gt;
-- @param SyncSessionToken [SyncSessionToken] The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity.
-- @param ClientContext [ClientContext] Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
-- Required parameter: SyncSessionToken
function M.UpdateRecordsRequest(DatasetName, RecordPatches, IdentityId, IdentityPoolId, DeviceId, SyncSessionToken, ClientContext, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRecordsRequest")
	local t = { 
		["DatasetName"] = DatasetName,
		["RecordPatches"] = RecordPatches,
		["IdentityId"] = IdentityId,
		["IdentityPoolId"] = IdentityPoolId,
		["DeviceId"] = DeviceId,
		["SyncSessionToken"] = SyncSessionToken,
		["ClientContext"] = ClientContext,
	}
	M.AssertUpdateRecordsRequest(t)
	return t
end

local DescribeDatasetRequest_keys = { "IdentityPoolId" = true, "DatasetName" = true, "IdentityId" = true, nil }

function M.AssertDescribeDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatasetRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["DatasetName"], "Expected key DatasetName to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDatasetRequest_keys[k], "DescribeDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatasetRequest
-- A request for meta data about a dataset (creation date, number of records, size) by owner and dataset name.
-- @param IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: DatasetName
function M.DescribeDatasetRequest(IdentityPoolId, DatasetName, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDatasetRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["DatasetName"] = DatasetName,
		["IdentityId"] = IdentityId,
	}
	M.AssertDescribeDatasetRequest(t)
	return t
end

local GetCognitoEventsResponse_keys = { "Events" = true, nil }

function M.AssertGetCognitoEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCognitoEventsResponse to be of type 'table'")
	if struct["Events"] then M.AssertEvents(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(GetCognitoEventsResponse_keys[k], "GetCognitoEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCognitoEventsResponse
-- &lt;p&gt;The response from the GetCognitoEvents request&lt;/p&gt;
-- @param Events [Events] &lt;p&gt;The Cognito Events returned from the GetCognitoEvents request&lt;/p&gt;
function M.GetCognitoEventsResponse(Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCognitoEventsResponse")
	local t = { 
		["Events"] = Events,
	}
	M.AssertGetCognitoEventsResponse(t)
	return t
end

local SetCognitoEventsRequest_keys = { "IdentityPoolId" = true, "Events" = true, nil }

function M.AssertSetCognitoEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetCognitoEventsRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Events"] then M.AssertEvents(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(SetCognitoEventsRequest_keys[k], "SetCognitoEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetCognitoEventsRequest
-- &lt;p&gt;A request to configure Cognito Events&quot;&lt;/p&gt;&quot;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;The Cognito Identity Pool to use when configuring Cognito Events&lt;/p&gt;
-- @param Events [Events] &lt;p&gt;The events to configure&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: Events
function M.SetCognitoEventsRequest(IdentityPoolId, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetCognitoEventsRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["Events"] = Events,
	}
	M.AssertSetCognitoEventsRequest(t)
	return t
end

local ListDatasetsResponse_keys = { "Count" = true, "Datasets" = true, "NextToken" = true, nil }

function M.AssertListDatasetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetsResponse to be of type 'table'")
	if struct["Count"] then M.AssertInteger(struct["Count"]) end
	if struct["Datasets"] then M.AssertDatasetList(struct["Datasets"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDatasetsResponse_keys[k], "ListDatasetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetsResponse
-- Returned for a successful ListDatasets request.
-- @param Count [Integer] Number of datasets returned.
-- @param Datasets [DatasetList] A set of datasets.
-- @param NextToken [String] A pagination token for obtaining the next page of results.
function M.ListDatasetsResponse(Count, Datasets, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDatasetsResponse")
	local t = { 
		["Count"] = Count,
		["Datasets"] = Datasets,
		["NextToken"] = NextToken,
	}
	M.AssertListDatasetsResponse(t)
	return t
end

local LambdaThrottledException_keys = { "message" = true, nil }

function M.AssertLambdaThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaThrottledException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LambdaThrottledException_keys[k], "LambdaThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaThrottledException
-- &lt;p&gt;AWS Lambda throttled your account, please contact AWS Support&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;A message returned when an LambdaThrottledException is thrown&lt;/p&gt;
-- Required parameter: message
function M.LambdaThrottledException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaThrottledException")
	local t = { 
		["message"] = message,
	}
	M.AssertLambdaThrottledException(t)
	return t
end

local ResourceConflictException_keys = { "message" = true, nil }

function M.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceConflictException_keys[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.
-- @param message [ExceptionMessage] The message returned by a ResourceConflictException.
-- Required parameter: message
function M.ResourceConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceConflictException(t)
	return t
end

local AlreadyStreamedException_keys = { "message" = true, nil }

function M.AssertAlreadyStreamedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyStreamedException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AlreadyStreamedException_keys[k], "AlreadyStreamedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyStreamedException
-- An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
-- @param message [ExceptionMessage] The message associated with the AlreadyStreamedException exception.
-- Required parameter: message
function M.AlreadyStreamedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyStreamedException")
	local t = { 
		["message"] = message,
	}
	M.AssertAlreadyStreamedException(t)
	return t
end

local Dataset_keys = { "DatasetName" = true, "DataStorage" = true, "LastModifiedDate" = true, "NumRecords" = true, "IdentityId" = true, "LastModifiedBy" = true, "CreationDate" = true, nil }

function M.AssertDataset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dataset to be of type 'table'")
	if struct["DatasetName"] then M.AssertDatasetName(struct["DatasetName"]) end
	if struct["DataStorage"] then M.AssertLong(struct["DataStorage"]) end
	if struct["LastModifiedDate"] then M.AssertDate(struct["LastModifiedDate"]) end
	if struct["NumRecords"] then M.AssertLong(struct["NumRecords"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	if struct["LastModifiedBy"] then M.AssertString(struct["LastModifiedBy"]) end
	if struct["CreationDate"] then M.AssertDate(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(Dataset_keys[k], "Dataset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dataset
-- A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
-- @param DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- @param DataStorage [Long] Total size in bytes of the records in this dataset.
-- @param LastModifiedDate [Date] Date when the dataset was last modified.
-- @param NumRecords [Long] Number of records in this dataset.
-- @param IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @param LastModifiedBy [String] The device that made the last change to this dataset.
-- @param CreationDate [Date] Date on which the dataset was created.
function M.Dataset(DatasetName, DataStorage, LastModifiedDate, NumRecords, IdentityId, LastModifiedBy, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Dataset")
	local t = { 
		["DatasetName"] = DatasetName,
		["DataStorage"] = DataStorage,
		["LastModifiedDate"] = LastModifiedDate,
		["NumRecords"] = NumRecords,
		["IdentityId"] = IdentityId,
		["LastModifiedBy"] = LastModifiedBy,
		["CreationDate"] = CreationDate,
	}
	M.AssertDataset(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- Thrown if the resource doesn't exist.
-- @param message [ExceptionMessage] Message returned by a ResourceNotFoundException.
-- Required parameter: message
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local RecordPatch_keys = { "SyncCount" = true, "DeviceLastModifiedDate" = true, "Value" = true, "Key" = true, "Op" = true, nil }

function M.AssertRecordPatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordPatch to be of type 'table'")
	assert(struct["Op"], "Expected key Op to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["SyncCount"], "Expected key SyncCount to exist in table")
	if struct["SyncCount"] then M.AssertLong(struct["SyncCount"]) end
	if struct["DeviceLastModifiedDate"] then M.AssertDate(struct["DeviceLastModifiedDate"]) end
	if struct["Value"] then M.AssertRecordValue(struct["Value"]) end
	if struct["Key"] then M.AssertRecordKey(struct["Key"]) end
	if struct["Op"] then M.AssertOperation(struct["Op"]) end
	for k,_ in pairs(struct) do
		assert(RecordPatch_keys[k], "RecordPatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordPatch
-- An update operation for a record.
-- @param SyncCount [Long] Last known server sync count for this record. Set to 0 if unknown.
-- @param DeviceLastModifiedDate [Date] The last modified date of the client device.
-- @param Value [RecordValue] The value associated with the record patch.
-- @param Key [RecordKey] The key associated with the record patch.
-- @param Op [Operation] An operation, either replace or remove.
-- Required parameter: Op
-- Required parameter: Key
-- Required parameter: SyncCount
function M.RecordPatch(SyncCount, DeviceLastModifiedDate, Value, Key, Op, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordPatch")
	local t = { 
		["SyncCount"] = SyncCount,
		["DeviceLastModifiedDate"] = DeviceLastModifiedDate,
		["Value"] = Value,
		["Key"] = Key,
		["Op"] = Op,
	}
	M.AssertRecordPatch(t)
	return t
end

local RegisterDeviceResponse_keys = { "DeviceId" = true, nil }

function M.AssertRegisterDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDeviceResponse to be of type 'table'")
	if struct["DeviceId"] then M.AssertDeviceId(struct["DeviceId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDeviceResponse_keys[k], "RegisterDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDeviceResponse
-- &lt;p&gt;Response to a RegisterDevice request.&lt;/p&gt;
-- @param DeviceId [DeviceId] &lt;p&gt;The unique ID generated for this device by Cognito.&lt;/p&gt;
function M.RegisterDeviceResponse(DeviceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDeviceResponse")
	local t = { 
		["DeviceId"] = DeviceId,
	}
	M.AssertRegisterDeviceResponse(t)
	return t
end

local RegisterDeviceRequest_keys = { "Platform" = true, "IdentityPoolId" = true, "Token" = true, "IdentityId" = true, nil }

function M.AssertRegisterDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDeviceRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["Platform"], "Expected key Platform to exist in table")
	assert(struct["Token"], "Expected key Token to exist in table")
	if struct["Platform"] then M.AssertPlatform(struct["Platform"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Token"] then M.AssertPushToken(struct["Token"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDeviceRequest_keys[k], "RegisterDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDeviceRequest
-- &lt;p&gt;A request to RegisterDevice.&lt;/p&gt;
-- @param Platform [Platform] &lt;p&gt;The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.&lt;/p&gt;
-- @param Token [PushToken] &lt;p&gt;The push token.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;The unique ID for this identity.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityId
-- Required parameter: Platform
-- Required parameter: Token
function M.RegisterDeviceRequest(Platform, IdentityPoolId, Token, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDeviceRequest")
	local t = { 
		["Platform"] = Platform,
		["IdentityPoolId"] = IdentityPoolId,
		["Token"] = Token,
		["IdentityId"] = IdentityId,
	}
	M.AssertRegisterDeviceRequest(t)
	return t
end

local InvalidConfigurationException_keys = { "message" = true, nil }

function M.AssertInvalidConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidConfigurationException_keys[k], "InvalidConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationException
--  
-- @param message [ExceptionMessage] Message returned by InvalidConfigurationException.
-- Required parameter: message
function M.InvalidConfigurationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidConfigurationException(t)
	return t
end

local GetIdentityPoolConfigurationRequest_keys = { "IdentityPoolId" = true, nil }

function M.AssertGetIdentityPoolConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolConfigurationRequest to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityPoolConfigurationRequest_keys[k], "GetIdentityPoolConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolConfigurationRequest
-- &lt;p&gt;The input for the GetIdentityPoolConfiguration operation.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.GetIdentityPoolConfigurationRequest(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoolConfigurationRequest")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertGetIdentityPoolConfigurationRequest(t)
	return t
end

local DuplicateRequestException_keys = { "message" = true, nil }

function M.AssertDuplicateRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequestException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateRequestException_keys[k], "DuplicateRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequestException
-- An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
-- @param message [ExceptionMessage] The message associated with the DuplicateRequestException exception.
-- Required parameter: message
function M.DuplicateRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertDuplicateRequestException(t)
	return t
end

function M.AssertDatasetName(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_.:-]+"), "Expected string to match pattern '[a-zA-Z0-9_.:-]+'")
end

--  
function M.DatasetName(str)
	M.AssertDatasetName(str)
	return str
end

function M.AssertSyncSessionToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SyncSessionToken to be of type 'string'")
end

--  
function M.SyncSessionToken(str)
	M.AssertSyncSessionToken(str)
	return str
end

function M.AssertIdentityPoolId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+:[0-9a-f-]+"), "Expected string to match pattern '[%w-]+:[0-9a-f-]+'")
end

--  
function M.IdentityPoolId(str)
	M.AssertIdentityPoolId(str)
	return str
end

function M.AssertCognitoEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected CognitoEventType to be of type 'string'")
end

--  
function M.CognitoEventType(str)
	M.AssertCognitoEventType(str)
	return str
end

function M.AssertRecordKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RecordKey(str)
	M.AssertRecordKey(str)
	return str
end

function M.AssertIdentityId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+:[0-9a-f-]+"), "Expected string to match pattern '[%w-]+:[0-9a-f-]+'")
end

--  
function M.IdentityId(str)
	M.AssertIdentityId(str)
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

function M.AssertBulkPublishStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BulkPublishStatus to be of type 'string'")
end

--  
function M.BulkPublishStatus(str)
	M.AssertBulkPublishStatus(str)
	return str
end

function M.AssertAssumeRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AssumeRoleArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("arn:aws:iam::%d+:role/.*"), "Expected string to match pattern 'arn:aws:iam::%d+:role/.*'")
end

--  
function M.AssumeRoleArn(str)
	M.AssertAssumeRoleArn(str)
	return str
end

function M.AssertDeviceId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceId(str)
	M.AssertDeviceId(str)
	return str
end

function M.AssertStreamingStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamingStatus to be of type 'string'")
end

--  
function M.StreamingStatus(str)
	M.AssertStreamingStatus(str)
	return str
end

function M.AssertLambdaFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaFunctionArn to be of type 'string'")
end

--  
function M.LambdaFunctionArn(str)
	M.AssertLambdaFunctionArn(str)
	return str
end

function M.AssertPushToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PushToken to be of type 'string'")
end

--  
function M.PushToken(str)
	M.AssertPushToken(str)
	return str
end

function M.AssertOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected Operation to be of type 'string'")
end

--  
function M.Operation(str)
	M.AssertOperation(str)
	return str
end

function M.AssertRecordValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordValue to be of type 'string'")
	assert(#str <= 1048575, "Expected string to be max 1048575 characters")
end

--  
function M.RecordValue(str)
	M.AssertRecordValue(str)
	return str
end

function M.AssertPlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected Platform to be of type 'string'")
end

--  
function M.Platform(str)
	M.AssertPlatform(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamName(str)
	M.AssertStreamName(str)
	return str
end

function M.AssertApplicationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplicationArn to be of type 'string'")
	assert(str:match("arn:aws:sns:[-0-9a-z]+:%d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+"), "Expected string to match pattern 'arn:aws:sns:[-0-9a-z]+:%d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+'")
end

--  
function M.ApplicationArn(str)
	M.AssertApplicationArn(str)
	return str
end

function M.AssertClientContext(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientContext to be of type 'string'")
end

--  
function M.ClientContext(str)
	M.AssertClientContext(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
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

function M.AssertIntegerString(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerString to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerString(integer)
	M.AssertIntegerString(integer)
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

function M.AssertEvents(map)
	assert(map)
	assert(type(map) == "table", "Expected Events to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertCognitoEventType(k)
		M.AssertLambdaFunctionArn(v)
	end
end

function M.Events(map)
	M.AssertEvents(map)
	return map
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertIdentityPoolUsageList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityPoolUsageList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIdentityPoolUsage(v)
	end
end

--  
-- List of IdentityPoolUsage objects
function M.IdentityPoolUsageList(list)
	M.AssertIdentityPoolUsageList(list)
	return list
end

function M.AssertMergedDatasetNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MergedDatasetNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.MergedDatasetNameList(list)
	M.AssertMergedDatasetNameList(list)
	return list
end

function M.AssertRecordPatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordPatchList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecordPatch(v)
	end
end

--  
-- List of RecordPatch objects
function M.RecordPatchList(list)
	M.AssertRecordPatchList(list)
	return list
end

function M.AssertRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecord(v)
	end
end

--  
-- List of Record objects
function M.RecordList(list)
	M.AssertRecordList(list)
	return list
end

function M.AssertApplicationArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationArnList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApplicationArn(v)
	end
end

--  
-- List of ApplicationArn objects
function M.ApplicationArnList(list)
	M.AssertApplicationArnList(list)
	return list
end

function M.AssertDatasetList(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDataset(v)
	end
end

--  
-- List of Dataset objects
function M.DatasetList(list)
	M.AssertDatasetList(list)
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
