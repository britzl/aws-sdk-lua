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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] Message returned by LimitExceededException.
-- Required key: message
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.</p>
-- * PushSync [PushSync] <p>Options to apply to this identity pool for push synchronization.</p>
-- * CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
-- @return GetIdentityPoolConfigurationResponse structure as a key-value pair table
function M.GetIdentityPoolConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityPoolConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["PushSync"] = args["PushSync"],
		["CognitoStreams"] = args["CognitoStreams"],
	}
	asserts.AssertGetIdentityPoolConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by a ConcurrentModicationException.</p>
-- Required key: message
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provide an argument table when creating ConcurrentModificationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModificationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Dataset [Dataset] A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
-- @return DeleteDatasetResponse structure as a key-value pair table
function M.DeleteDatasetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDatasetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Dataset"] = args["Dataset"],
	}
	asserts.AssertDeleteDatasetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] Message returned by InternalErrorException.
-- Required key: message
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provide an argument table when creating InternalErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- @return DescribeIdentityUsageRequest structure as a key-value pair table
function M.DescribeIdentityUsageRequest(args)
	assert(args, "You must provide an argument table when creating DescribeIdentityUsageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertDescribeIdentityUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityPoolId
-- @return GetBulkPublishDetailsRequest structure as a key-value pair table
function M.GetBulkPublishDetailsRequest(args)
	assert(args, "You must provide an argument table when creating GetBulkPublishDetailsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertGetBulkPublishDetailsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [Integer] Total number of records.
-- * DatasetExists [Boolean] Indicates whether the dataset exists.
-- * DatasetSyncCount [Long] Server sync count for this dataset.
-- * LastModifiedBy [String] The user/device that made the last change to this record.
-- * Records [RecordList] A list of all records.
-- * MergedDatasetNames [MergedDatasetNameList] Names of merged datasets.
-- * SyncSessionToken [String] A token containing a session ID, identity ID, and expiration.
-- * DatasetDeletedAfterRequestedSyncCount [Boolean] A boolean value specifying whether to delete the dataset locally.
-- * NextToken [String] A pagination token for obtaining the next page of results.
-- @return ListRecordsResponse structure as a key-value pair table
function M.ListRecordsResponse(args)
	assert(args, "You must provide an argument table when creating ListRecordsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["DatasetExists"] = args["DatasetExists"],
		["DatasetSyncCount"] = args["DatasetSyncCount"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Records"] = args["Records"],
		["MergedDatasetNames"] = args["MergedDatasetNames"],
		["SyncSessionToken"] = args["SyncSessionToken"],
		["DatasetDeletedAfterRequestedSyncCount"] = args["DatasetDeletedAfterRequestedSyncCount"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListRecordsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.</p>
-- * PushSync [PushSync] <p>Options to apply to this identity pool for push synchronization.</p>
-- * CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
-- @return SetIdentityPoolConfigurationResponse structure as a key-value pair table
function M.SetIdentityPoolConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating SetIdentityPoolConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["PushSync"] = args["PushSync"],
		["CognitoStreams"] = args["CognitoStreams"],
	}
	asserts.AssertSetIdentityPoolConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.</p>
-- * DatasetName [DatasetName] <p>The name of the dataset to subcribe to.</p>
-- * DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- * IdentityId [IdentityId] <p>Unique ID for this identity.</p>
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: DatasetName
-- Required key: DeviceId
-- @return SubscribeToDatasetRequest structure as a key-value pair table
function M.SubscribeToDatasetRequest(args)
	assert(args, "You must provide an argument table when creating SubscribeToDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{DatasetName}"] = args["DatasetName"],
        ["{DeviceId}"] = args["DeviceId"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DatasetName"] = args["DatasetName"],
		["DeviceId"] = args["DeviceId"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertSubscribeToDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnsubscribeFromDatasetResponse structure as a key-value pair table
function M.UnsubscribeFromDatasetResponse(args)
	assert(args, "You must provide an argument table when creating UnsubscribeFromDatasetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUnsubscribeFromDatasetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.</p>
-- * PushSync [PushSync] <p>Options to apply to this identity pool for push synchronization.</p>
-- * CognitoStreams [CognitoStreams] Options to apply to this identity pool for Amazon Cognito streams.
-- Required key: IdentityPoolId
-- @return SetIdentityPoolConfigurationRequest structure as a key-value pair table
function M.SetIdentityPoolConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating SetIdentityPoolConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["PushSync"] = args["PushSync"],
		["CognitoStreams"] = args["CognitoStreams"],
	}
	asserts.AssertSetIdentityPoolConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [Integer] Total number of identities for the identity pool.
-- * NextToken [String] A pagination token for obtaining the next page of results.
-- * MaxResults [Integer] The maximum number of results to be returned.
-- * IdentityPoolUsages [IdentityPoolUsageList] Usage information for the identity pools.
-- @return ListIdentityPoolUsageResponse structure as a key-value pair table
function M.ListIdentityPoolUsageResponse(args)
	assert(args, "You must provide an argument table when creating ListIdentityPoolUsageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["IdentityPoolUsages"] = args["IdentityPoolUsages"],
	}
	asserts.AssertListIdentityPoolUsageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>The Cognito Identity Pool ID for the request</p>
-- Required key: IdentityPoolId
-- @return GetCognitoEventsRequest structure as a key-value pair table
function M.GetCognitoEventsRequest(args)
	assert(args, "You must provide an argument table when creating GetCognitoEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertGetCognitoEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityPoolId
-- @return DescribeIdentityPoolUsageRequest structure as a key-value pair table
function M.DescribeIdentityPoolUsageRequest(args)
	assert(args, "You must provide an argument table when creating DescribeIdentityPoolUsageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertDescribeIdentityPoolUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataStorage [Long] Data storage information for the identity pool.
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * SyncSessionsCount [Long] Number of sync sessions for the identity pool.
-- * LastModifiedDate [Date] Date on which the identity pool was last modified.
-- @return IdentityPoolUsage structure as a key-value pair table
function M.IdentityPoolUsage(args)
	assert(args, "You must provide an argument table when creating IdentityPoolUsage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataStorage"] = args["DataStorage"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["SyncSessionsCount"] = args["SyncSessionsCount"],
		["LastModifiedDate"] = args["LastModifiedDate"],
	}
	asserts.AssertIdentityPoolUsage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BulkPublishStartTime [Date] The date/time at which the last bulk publish was initiated.
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * BulkPublishStatus [BulkPublishStatus] Status of the last bulk publish operation, valid values are: <p>NOT_STARTED - No bulk publish has been requested for this identity pool</p> <p>IN_PROGRESS - Data is being published to the configured stream</p> <p>SUCCEEDED - All data for the identity pool has been published to the configured stream</p> <p>FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.</p>
-- * BulkPublishCompleteTime [Date] If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
-- * FailureMessage [String] If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
-- @return GetBulkPublishDetailsResponse structure as a key-value pair table
function M.GetBulkPublishDetailsResponse(args)
	assert(args, "You must provide an argument table when creating GetBulkPublishDetailsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BulkPublishStartTime"] = args["BulkPublishStartTime"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["BulkPublishStatus"] = args["BulkPublishStatus"],
		["BulkPublishCompleteTime"] = args["BulkPublishCompleteTime"],
		["FailureMessage"] = args["FailureMessage"],
	}
	asserts.AssertGetBulkPublishDetailsResponse(all_args)
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
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- Thrown when a request parameter does not comply with the associated constraints.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] Message returned by InvalidParameterException.
-- Required key: message
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.</p>
-- * DatasetName [DatasetName] <p>The name of the dataset from which to unsubcribe.</p>
-- * DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- * IdentityId [IdentityId] <p>Unique ID for this identity.</p>
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: DatasetName
-- Required key: DeviceId
-- @return UnsubscribeFromDatasetRequest structure as a key-value pair table
function M.UnsubscribeFromDatasetRequest(args)
	assert(args, "You must provide an argument table when creating UnsubscribeFromDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{DatasetName}"] = args["DatasetName"],
        ["{DeviceId}"] = args["DeviceId"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DatasetName"] = args["DatasetName"],
		["DeviceId"] = args["DeviceId"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertUnsubscribeFromDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingStatus [StreamingStatus] Status of the Cognito streams. Valid values are: <p>ENABLED - Streaming of updates to identity pool is enabled.</p> <p>DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.</p>
-- * RoleArn [AssumeRoleArn] The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
-- * StreamName [StreamName] The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
-- @return CognitoStreams structure as a key-value pair table
function M.CognitoStreams(args)
	assert(args, "You must provide an argument table when creating CognitoStreams")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamingStatus"] = args["StreamingStatus"],
		["RoleArn"] = args["RoleArn"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertCognitoStreams(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * NextToken [String] A pagination token for obtaining the next page of results.
-- * MaxResults [IntegerString] The maximum number of results to be returned.
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityId
-- Required key: IdentityPoolId
-- @return ListDatasetsRequest structure as a key-value pair table
function M.ListDatasetsRequest(args)
	assert(args, "You must provide an argument table when creating ListDatasetsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertListDatasetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] A pagination token for obtaining the next page of results.
-- * MaxResults [IntegerString] The maximum number of results to be returned.
-- @return ListIdentityPoolUsageRequest structure as a key-value pair table
function M.ListIdentityPoolUsageRequest(args)
	assert(args, "You must provide an argument table when creating ListIdentityPoolUsageRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListIdentityPoolUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] The message returned by a NotAuthorizedException.
-- Required key: message
-- @return NotAuthorizedException structure as a key-value pair table
function M.NotAuthorizedException(args)
	assert(args, "You must provide an argument table when creating NotAuthorizedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNotAuthorizedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- * MaxResults [IntegerString] The maximum number of results to be returned.
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * LastSyncCount [Long] The last server sync count for this record.
-- * SyncSessionToken [SyncSessionToken] A token containing a session ID, identity ID, and expiration.
-- * NextToken [String] A pagination token for obtaining the next page of results.
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: DatasetName
-- @return ListRecordsRequest structure as a key-value pair table
function M.ListRecordsRequest(args)
	assert(args, "You must provide an argument table when creating ListRecordsRequest")
    local query_args = { 
        ["maxResults"] = args["MaxResults"],
        ["lastSyncCount"] = args["LastSyncCount"],
        ["syncSessionToken"] = args["SyncSessionToken"],
        ["nextToken"] = args["NextToken"],
    }
    local uri_args = { 
        ["{DatasetName}"] = args["DatasetName"],
        ["{IdentityId}"] = args["IdentityId"],
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DatasetName"] = args["DatasetName"],
		["MaxResults"] = args["MaxResults"],
		["IdentityId"] = args["IdentityId"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["LastSyncCount"] = args["LastSyncCount"],
		["SyncSessionToken"] = args["SyncSessionToken"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListRecordsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatasetCount [Integer] Number of datasets for the identity.
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * DataStorage [Long] Total data storage for this identity.
-- * LastModifiedDate [Date] Date on which the identity was last modified.
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @return IdentityUsage structure as a key-value pair table
function M.IdentityUsage(args)
	assert(args, "You must provide an argument table when creating IdentityUsage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatasetCount"] = args["DatasetCount"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DataStorage"] = args["DataStorage"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertIdentityUsage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Dataset [Dataset] Meta data for a collection of data for an identity. An identity can have multiple datasets. A dataset can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
-- @return DescribeDatasetResponse structure as a key-value pair table
function M.DescribeDatasetResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDatasetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Dataset"] = args["Dataset"],
	}
	asserts.AssertDescribeDatasetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: DatasetName
-- @return DeleteDatasetRequest structure as a key-value pair table
function M.DeleteDatasetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{DatasetName}"] = args["DatasetName"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DatasetName"] = args["DatasetName"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertDeleteDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- @return BulkPublishResponse structure as a key-value pair table
function M.BulkPublishResponse(args)
	assert(args, "You must provide an argument table when creating BulkPublishResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertBulkPublishResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscribeToDatasetResponse structure as a key-value pair table
function M.SubscribeToDatasetResponse(args)
	assert(args, "You must provide an argument table when creating SubscribeToDatasetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscribeToDatasetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>A message returned when an InvalidLambdaFunctionOutputException occurs</p>
-- Required key: message
-- @return InvalidLambdaFunctionOutputException structure as a key-value pair table
function M.InvalidLambdaFunctionOutputException(args)
	assert(args, "You must provide an argument table when creating InvalidLambdaFunctionOutputException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidLambdaFunctionOutputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] Message returned by a TooManyRequestsException.
-- Required key: message
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityUsage [IdentityUsage] Usage information for the identity.
-- @return DescribeIdentityUsageResponse structure as a key-value pair table
function M.DescribeIdentityUsageResponse(args)
	assert(args, "You must provide an argument table when creating DescribeIdentityUsageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityUsage"] = args["IdentityUsage"],
	}
	asserts.AssertDescribeIdentityUsageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [AssumeRoleArn] <p>A role configured to allow Cognito to call SNS on behalf of the developer.</p>
-- * ApplicationArns [ApplicationArnList] <p>List of SNS platform application ARNs that could be used by clients.</p>
-- @return PushSync structure as a key-value pair table
function M.PushSync(args)
	assert(args, "You must provide an argument table when creating PushSync")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["ApplicationArns"] = args["ApplicationArns"],
	}
	asserts.AssertPushSync(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceLastModifiedDate [Date] The last modified date of the client device.
-- * LastModifiedDate [Date] The date on which the record was last modified.
-- * Value [RecordValue] The value for the record.
-- * LastModifiedBy [String] The user/device that made the last change to this record.
-- * Key [RecordKey] The key for the record.
-- * SyncCount [Long] The server sync count for this record.
-- @return Record structure as a key-value pair table
function M.Record(args)
	assert(args, "You must provide an argument table when creating Record")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceLastModifiedDate"] = args["DeviceLastModifiedDate"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Value"] = args["Value"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Key"] = args["Key"],
		["SyncCount"] = args["SyncCount"],
	}
	asserts.AssertRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityPoolId
-- @return BulkPublishRequest structure as a key-value pair table
function M.BulkPublishRequest(args)
	assert(args, "You must provide an argument table when creating BulkPublishRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertBulkPublishRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Records [RecordList] A list of records that have been updated.
-- @return UpdateRecordsResponse structure as a key-value pair table
function M.UpdateRecordsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRecordsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Records"] = args["Records"],
	}
	asserts.AssertUpdateRecordsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolUsage [IdentityPoolUsage] Information about the usage of the identity pool.
-- @return DescribeIdentityPoolUsageResponse structure as a key-value pair table
function M.DescribeIdentityPoolUsageResponse(args)
	assert(args, "You must provide an argument table when creating DescribeIdentityPoolUsageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolUsage"] = args["IdentityPoolUsage"],
	}
	asserts.AssertDescribeIdentityPoolUsageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- * RecordPatches [RecordPatchList] A list of patch operations.
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- * SyncSessionToken [SyncSessionToken] The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity.
-- * ClientContext [ClientContext] Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: DatasetName
-- Required key: SyncSessionToken
-- @return UpdateRecordsRequest structure as a key-value pair table
function M.UpdateRecordsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRecordsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DatasetName}"] = args["DatasetName"],
        ["{IdentityId}"] = args["IdentityId"],
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
        ["x-amz-Client-Context"] = args["ClientContext"],
    }
	local all_args = { 
		["DatasetName"] = args["DatasetName"],
		["RecordPatches"] = args["RecordPatches"],
		["IdentityId"] = args["IdentityId"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DeviceId"] = args["DeviceId"],
		["SyncSessionToken"] = args["SyncSessionToken"],
		["ClientContext"] = args["ClientContext"],
	}
	asserts.AssertUpdateRecordsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: DatasetName
-- @return DescribeDatasetRequest structure as a key-value pair table
function M.DescribeDatasetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{DatasetName}"] = args["DatasetName"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DatasetName"] = args["DatasetName"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertDescribeDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Events [Events] <p>The Cognito Events returned from the GetCognitoEvents request</p>
-- @return GetCognitoEventsResponse structure as a key-value pair table
function M.GetCognitoEventsResponse(args)
	assert(args, "You must provide an argument table when creating GetCognitoEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Events"] = args["Events"],
	}
	asserts.AssertGetCognitoEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>The Cognito Identity Pool to use when configuring Cognito Events</p>
-- * Events [Events] <p>The events to configure</p>
-- Required key: IdentityPoolId
-- Required key: Events
-- @return SetCognitoEventsRequest structure as a key-value pair table
function M.SetCognitoEventsRequest(args)
	assert(args, "You must provide an argument table when creating SetCognitoEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["Events"] = args["Events"],
	}
	asserts.AssertSetCognitoEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [Integer] Number of datasets returned.
-- * Datasets [DatasetList] A set of datasets.
-- * NextToken [String] A pagination token for obtaining the next page of results.
-- @return ListDatasetsResponse structure as a key-value pair table
function M.ListDatasetsResponse(args)
	assert(args, "You must provide an argument table when creating ListDatasetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["Datasets"] = args["Datasets"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDatasetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>A message returned when an LambdaThrottledException is thrown</p>
-- Required key: message
-- @return LambdaThrottledException structure as a key-value pair table
function M.LambdaThrottledException(args)
	assert(args, "You must provide an argument table when creating LambdaThrottledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLambdaThrottledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] The message returned by a ResourceConflictException.
-- Required key: message
-- @return ResourceConflictException structure as a key-value pair table
function M.ResourceConflictException(args)
	assert(args, "You must provide an argument table when creating ResourceConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] The message associated with the AlreadyStreamedException exception.
-- Required key: message
-- @return AlreadyStreamedException structure as a key-value pair table
function M.AlreadyStreamedException(args)
	assert(args, "You must provide an argument table when creating AlreadyStreamedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAlreadyStreamedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatasetName [DatasetName] A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
-- * DataStorage [Long] Total size in bytes of the records in this dataset.
-- * LastModifiedDate [Date] Date when the dataset was last modified.
-- * NumRecords [Long] Number of records in this dataset.
-- * IdentityId [IdentityId] A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
-- * LastModifiedBy [String] The device that made the last change to this dataset.
-- * CreationDate [Date] Date on which the dataset was created.
-- @return Dataset structure as a key-value pair table
function M.Dataset(args)
	assert(args, "You must provide an argument table when creating Dataset")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatasetName"] = args["DatasetName"],
		["DataStorage"] = args["DataStorage"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["NumRecords"] = args["NumRecords"],
		["IdentityId"] = args["IdentityId"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertDataset(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] Message returned by a ResourceNotFoundException.
-- Required key: message
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SyncCount [Long] Last known server sync count for this record. Set to 0 if unknown.
-- * DeviceLastModifiedDate [Date] The last modified date of the client device.
-- * Value [RecordValue] The value associated with the record patch.
-- * Key [RecordKey] The key associated with the record patch.
-- * Op [Operation] An operation, either replace or remove.
-- Required key: Op
-- Required key: Key
-- Required key: SyncCount
-- @return RecordPatch structure as a key-value pair table
function M.RecordPatch(args)
	assert(args, "You must provide an argument table when creating RecordPatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SyncCount"] = args["SyncCount"],
		["DeviceLastModifiedDate"] = args["DeviceLastModifiedDate"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["Op"] = args["Op"],
	}
	asserts.AssertRecordPatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceId [DeviceId] <p>The unique ID generated for this device by Cognito.</p>
-- @return RegisterDeviceResponse structure as a key-value pair table
function M.RegisterDeviceResponse(args)
	assert(args, "You must provide an argument table when creating RegisterDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceId"] = args["DeviceId"],
	}
	asserts.AssertRegisterDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Platform [Platform] <p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>
-- * Token [PushToken] <p>The push token.</p>
-- * IdentityId [IdentityId] <p>The unique ID for this identity.</p>
-- Required key: IdentityPoolId
-- Required key: IdentityId
-- Required key: Platform
-- Required key: Token
-- @return RegisterDeviceRequest structure as a key-value pair table
function M.RegisterDeviceRequest(args)
	assert(args, "You must provide an argument table when creating RegisterDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
        ["{IdentityId}"] = args["IdentityId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Platform"] = args["Platform"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["Token"] = args["Token"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertRegisterDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] Message returned by InvalidConfigurationException.
-- Required key: message
-- @return InvalidConfigurationException structure as a key-value pair table
function M.InvalidConfigurationException(args)
	assert(args, "You must provide an argument table when creating InvalidConfigurationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidConfigurationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>
-- Required key: IdentityPoolId
-- @return GetIdentityPoolConfigurationRequest structure as a key-value pair table
function M.GetIdentityPoolConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityPoolConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{IdentityPoolId}"] = args["IdentityPoolId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertGetIdentityPoolConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] The message associated with the DuplicateRequestException exception.
-- Required key: message
-- @return DuplicateRequestException structure as a key-value pair table
function M.DuplicateRequestException(args)
	assert(args, "You must provide an argument table when creating DuplicateRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDuplicateRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call SetCognitoEvents asynchronously, invoking a callback when done
-- @param SetCognitoEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetCognitoEventsAsync(SetCognitoEventsRequest, cb)
	assert(SetCognitoEventsRequest, "You must provide a SetCognitoEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetCognitoEvents",
	}
	for header,value in pairs(SetCognitoEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/events", SetCognitoEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetCognitoEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetCognitoEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetCognitoEventsSync(SetCognitoEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetCognitoEventsAsync(SetCognitoEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIdentityUsage asynchronously, invoking a callback when done
-- @param DescribeIdentityUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeIdentityUsageAsync(DescribeIdentityUsageRequest, cb)
	assert(DescribeIdentityUsageRequest, "You must provide a DescribeIdentityUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeIdentityUsage",
	}
	for header,value in pairs(DescribeIdentityUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}", DescribeIdentityUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIdentityUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIdentityUsageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeIdentityUsageSync(DescribeIdentityUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIdentityUsageAsync(DescribeIdentityUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRecords asynchronously, invoking a callback when done
-- @param ListRecordsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRecordsAsync(ListRecordsRequest, cb)
	assert(ListRecordsRequest, "You must provide a ListRecordsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListRecords",
	}
	for header,value in pairs(ListRecordsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", ListRecordsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRecords synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRecordsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRecordsSync(ListRecordsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRecordsAsync(ListRecordsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDataset asynchronously, invoking a callback when done
-- @param DescribeDatasetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDatasetAsync(DescribeDatasetRequest, cb)
	assert(DescribeDatasetRequest, "You must provide a DescribeDatasetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDataset",
	}
	for header,value in pairs(DescribeDatasetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", DescribeDatasetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDataset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDatasetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDatasetSync(DescribeDatasetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDatasetAsync(DescribeDatasetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BulkPublish asynchronously, invoking a callback when done
-- @param BulkPublishRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BulkPublishAsync(BulkPublishRequest, cb)
	assert(BulkPublishRequest, "You must provide a BulkPublishRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BulkPublish",
	}
	for header,value in pairs(BulkPublishRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/bulkpublish", BulkPublishRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BulkPublish synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BulkPublishRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BulkPublishSync(BulkPublishRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BulkPublishAsync(BulkPublishRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnsubscribeFromDataset asynchronously, invoking a callback when done
-- @param UnsubscribeFromDatasetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnsubscribeFromDatasetAsync(UnsubscribeFromDatasetRequest, cb)
	assert(UnsubscribeFromDatasetRequest, "You must provide a UnsubscribeFromDatasetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UnsubscribeFromDataset",
	}
	for header,value in pairs(UnsubscribeFromDatasetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", UnsubscribeFromDatasetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnsubscribeFromDataset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnsubscribeFromDatasetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UnsubscribeFromDatasetSync(UnsubscribeFromDatasetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnsubscribeFromDatasetAsync(UnsubscribeFromDatasetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentityPoolUsage asynchronously, invoking a callback when done
-- @param ListIdentityPoolUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIdentityPoolUsageAsync(ListIdentityPoolUsageRequest, cb)
	assert(ListIdentityPoolUsageRequest, "You must provide a ListIdentityPoolUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListIdentityPoolUsage",
	}
	for header,value in pairs(ListIdentityPoolUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools", ListIdentityPoolUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIdentityPoolUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentityPoolUsageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIdentityPoolUsageSync(ListIdentityPoolUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentityPoolUsageAsync(ListIdentityPoolUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterDevice asynchronously, invoking a callback when done
-- @param RegisterDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterDeviceAsync(RegisterDeviceRequest, cb)
	assert(RegisterDeviceRequest, "You must provide a RegisterDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RegisterDevice",
	}
	for header,value in pairs(RegisterDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", RegisterDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterDeviceSync(RegisterDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterDeviceAsync(RegisterDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBulkPublishDetails asynchronously, invoking a callback when done
-- @param GetBulkPublishDetailsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBulkPublishDetailsAsync(GetBulkPublishDetailsRequest, cb)
	assert(GetBulkPublishDetailsRequest, "You must provide a GetBulkPublishDetailsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBulkPublishDetails",
	}
	for header,value in pairs(GetBulkPublishDetailsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/getBulkPublishDetails", GetBulkPublishDetailsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBulkPublishDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBulkPublishDetailsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBulkPublishDetailsSync(GetBulkPublishDetailsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBulkPublishDetailsAsync(GetBulkPublishDetailsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCognitoEvents asynchronously, invoking a callback when done
-- @param GetCognitoEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCognitoEventsAsync(GetCognitoEventsRequest, cb)
	assert(GetCognitoEventsRequest, "You must provide a GetCognitoEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCognitoEvents",
	}
	for header,value in pairs(GetCognitoEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/events", GetCognitoEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCognitoEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCognitoEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCognitoEventsSync(GetCognitoEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCognitoEventsAsync(GetCognitoEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDataset asynchronously, invoking a callback when done
-- @param DeleteDatasetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDatasetAsync(DeleteDatasetRequest, cb)
	assert(DeleteDatasetRequest, "You must provide a DeleteDatasetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDataset",
	}
	for header,value in pairs(DeleteDatasetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", DeleteDatasetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDataset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDatasetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDatasetSync(DeleteDatasetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDatasetAsync(DeleteDatasetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIdentityPoolUsage asynchronously, invoking a callback when done
-- @param DescribeIdentityPoolUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeIdentityPoolUsageAsync(DescribeIdentityPoolUsageRequest, cb)
	assert(DescribeIdentityPoolUsageRequest, "You must provide a DescribeIdentityPoolUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeIdentityPoolUsage",
	}
	for header,value in pairs(DescribeIdentityPoolUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}", DescribeIdentityPoolUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIdentityPoolUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIdentityPoolUsageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeIdentityPoolUsageSync(DescribeIdentityPoolUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIdentityPoolUsageAsync(DescribeIdentityPoolUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRecords asynchronously, invoking a callback when done
-- @param UpdateRecordsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRecordsAsync(UpdateRecordsRequest, cb)
	assert(UpdateRecordsRequest, "You must provide a UpdateRecordsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRecords",
	}
	for header,value in pairs(UpdateRecordsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", UpdateRecordsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRecords synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRecordsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRecordsSync(UpdateRecordsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRecordsAsync(UpdateRecordsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SubscribeToDataset asynchronously, invoking a callback when done
-- @param SubscribeToDatasetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SubscribeToDatasetAsync(SubscribeToDatasetRequest, cb)
	assert(SubscribeToDatasetRequest, "You must provide a SubscribeToDatasetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SubscribeToDataset",
	}
	for header,value in pairs(SubscribeToDatasetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", SubscribeToDatasetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SubscribeToDataset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SubscribeToDatasetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SubscribeToDatasetSync(SubscribeToDatasetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubscribeToDatasetAsync(SubscribeToDatasetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityPoolConfiguration asynchronously, invoking a callback when done
-- @param SetIdentityPoolConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIdentityPoolConfigurationAsync(SetIdentityPoolConfigurationRequest, cb)
	assert(SetIdentityPoolConfigurationRequest, "You must provide a SetIdentityPoolConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIdentityPoolConfiguration",
	}
	for header,value in pairs(SetIdentityPoolConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/configuration", SetIdentityPoolConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityPoolConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityPoolConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetIdentityPoolConfigurationSync(SetIdentityPoolConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityPoolConfigurationAsync(SetIdentityPoolConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityPoolConfiguration asynchronously, invoking a callback when done
-- @param GetIdentityPoolConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityPoolConfigurationAsync(GetIdentityPoolConfigurationRequest, cb)
	assert(GetIdentityPoolConfigurationRequest, "You must provide a GetIdentityPoolConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIdentityPoolConfiguration",
	}
	for header,value in pairs(GetIdentityPoolConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/configuration", GetIdentityPoolConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityPoolConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityPoolConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityPoolConfigurationSync(GetIdentityPoolConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityPoolConfigurationAsync(GetIdentityPoolConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDatasets asynchronously, invoking a callback when done
-- @param ListDatasetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDatasetsAsync(ListDatasetsRequest, cb)
	assert(ListDatasetsRequest, "You must provide a ListDatasetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDatasets",
	}
	for header,value in pairs(ListDatasetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", ListDatasetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDatasets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDatasetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDatasetsSync(ListDatasetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDatasetsAsync(ListDatasetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
