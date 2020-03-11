--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT Analytics (iotanalytics-2017-11-27)

local M = {}

M.metadata = {
	api_version = "2017-11-27",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "iotanalytics",
	service_abbreviation = "",
	service_full_name = "AWS IoT Analytics",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "iotanalytics-2017-11-27",
}

local keys = {}
local asserts = {}

keys.ReprocessingSummary = { ["status"] = true, ["creationTime"] = true, ["id"] = true, nil }

function asserts.AssertReprocessingSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReprocessingSummary to be of type 'table'")
	if struct["status"] then asserts.AssertReprocessingStatus(struct["status"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["id"] then asserts.AssertReprocessingId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReprocessingSummary[k], "ReprocessingSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReprocessingSummary
-- <p>Information about pipeline reprocessing.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ReprocessingStatus] <p>The status of the pipeline reprocessing.</p>
-- * creationTime [Timestamp] <p>The time the pipeline reprocessing was created.</p>
-- * id [ReprocessingId] <p>The 'reprocessingId' returned by "StartPipelineReprocessing".</p>
-- @return ReprocessingSummary structure as a key-value pair table
function M.ReprocessingSummary(args)
	assert(args, "You must provide an argument table when creating ReprocessingSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["creationTime"] = args["creationTime"],
		["id"] = args["id"],
	}
	asserts.AssertReprocessingSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetContentStatus = { ["state"] = true, ["reason"] = true, nil }

function asserts.AssertDatasetContentStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetContentStatus to be of type 'table'")
	if struct["state"] then asserts.AssertDatasetContentState(struct["state"]) end
	if struct["reason"] then asserts.AssertReason(struct["reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetContentStatus[k], "DatasetContentStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetContentStatus
-- <p>The state of the data set contents and the reason they are in this state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * state [DatasetContentState] <p>The state of the data set contents. Can be one of "READY", "CREATING", "SUCCEEDED" or "FAILED".</p>
-- * reason [Reason] <p>The reason the data set contents are in this state.</p>
-- @return DatasetContentStatus structure as a key-value pair table
function M.DatasetContentStatus(args)
	assert(args, "You must provide an argument table when creating DatasetContentStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["state"] = args["state"],
		["reason"] = args["reason"],
	}
	asserts.AssertDatasetContentStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDatastoresRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListDatastoresRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatastoresRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatastoresRequest[k], "ListDatastoresRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatastoresRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in this request.</p> <p>The default value is 100.</p>
-- @return ListDatastoresRequest structure as a key-value pair table
function M.ListDatastoresRequest(args)
	assert(args, "You must provide an argument table when creating ListDatastoresRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListDatastoresRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDatasetContentsResponse = { ["nextToken"] = true, ["datasetContentSummaries"] = true, nil }

function asserts.AssertListDatasetContentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetContentsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["datasetContentSummaries"] then asserts.AssertDatasetContentSummaries(struct["datasetContentSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatasetContentsResponse[k], "ListDatasetContentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetContentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token to retrieve the next set of results, or <code>null</code> if there are no more results.</p>
-- * datasetContentSummaries [DatasetContentSummaries] <p>Summary information about data set contents that have been created.</p>
-- @return ListDatasetContentsResponse structure as a key-value pair table
function M.ListDatasetContentsResponse(args)
	assert(args, "You must provide an argument table when creating ListDatasetContentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["datasetContentSummaries"] = args["datasetContentSummaries"],
	}
	asserts.AssertListDatasetContentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatasetResponse = { ["datasetName"] = true, ["retentionPeriod"] = true, ["datasetArn"] = true, nil }

function asserts.AssertCreateDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatasetResponse to be of type 'table'")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["datasetArn"] then asserts.AssertDatasetArn(struct["datasetArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatasetResponse[k], "CreateDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatasetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the data set.</p>
-- * datasetArn [DatasetArn] <p>The ARN of the data set.</p>
-- @return CreateDatasetResponse structure as a key-value pair table
function M.CreateDatasetResponse(args)
	assert(args, "You must provide an argument table when creating CreateDatasetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
		["retentionPeriod"] = args["retentionPeriod"],
		["datasetArn"] = args["datasetArn"],
	}
	asserts.AssertCreateDatasetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelActivity = { ["channelName"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertChannelActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelActivity[k], "ChannelActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelActivity
-- <p>The activity that determines the source of the messages to be processed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel from which the messages are processed.</p>
-- * name [ActivityName] <p>The name of the 'channel' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: channelName
-- @return ChannelActivity structure as a key-value pair table
function M.ChannelActivity(args)
	assert(args, "You must provide an argument table when creating ChannelActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertChannelActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatasetContentResponse = { ["versionId"] = true, nil }

function asserts.AssertCreateDatasetContentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatasetContentResponse to be of type 'table'")
	if struct["versionId"] then asserts.AssertDatasetContentVersion(struct["versionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatasetContentResponse[k], "CreateDatasetContentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatasetContentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * versionId [DatasetContentVersion] <p>The version ID of the data set contents which are being created.</p>
-- @return CreateDatasetContentResponse structure as a key-value pair table
function M.CreateDatasetContentResponse(args)
	assert(args, "You must provide an argument table when creating CreateDatasetContentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["versionId"] = args["versionId"],
	}
	asserts.AssertCreateDatasetContentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetContentSummary = { ["status"] = true, ["scheduleTime"] = true, ["version"] = true, ["creationTime"] = true, nil }

function asserts.AssertDatasetContentSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetContentSummary to be of type 'table'")
	if struct["status"] then asserts.AssertDatasetContentStatus(struct["status"]) end
	if struct["scheduleTime"] then asserts.AssertTimestamp(struct["scheduleTime"]) end
	if struct["version"] then asserts.AssertDatasetContentVersion(struct["version"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetContentSummary[k], "DatasetContentSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetContentSummary
-- <p>Summary information about data set contents.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DatasetContentStatus] <p>The status of the data set contents.</p>
-- * scheduleTime [Timestamp] <p>The time the creation of the data set contents was scheduled to start.</p>
-- * version [DatasetContentVersion] <p>The version of the data set contents.</p>
-- * creationTime [Timestamp] <p>The actual time the creation of the data set contents was started.</p>
-- @return DatasetContentSummary structure as a key-value pair table
function M.DatasetContentSummary(args)
	assert(args, "You must provide an argument table when creating DatasetContentSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["scheduleTime"] = args["scheduleTime"],
		["version"] = args["version"],
		["creationTime"] = args["creationTime"],
	}
	asserts.AssertDatasetContentSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EstimatedResourceSize = { ["estimatedSizeInBytes"] = true, ["estimatedOn"] = true, nil }

function asserts.AssertEstimatedResourceSize(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EstimatedResourceSize to be of type 'table'")
	if struct["estimatedSizeInBytes"] then asserts.AssertSizeInBytes(struct["estimatedSizeInBytes"]) end
	if struct["estimatedOn"] then asserts.AssertTimestamp(struct["estimatedOn"]) end
	for k,_ in pairs(struct) do
		assert(keys.EstimatedResourceSize[k], "EstimatedResourceSize contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EstimatedResourceSize
-- <p>The estimated size of the resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * estimatedSizeInBytes [SizeInBytes] <p>The estimated size of the resource in bytes.</p>
-- * estimatedOn [Timestamp] <p>The time when the estimate of the size of the resource was made.</p>
-- @return EstimatedResourceSize structure as a key-value pair table
function M.EstimatedResourceSize(args)
	assert(args, "You must provide an argument table when creating EstimatedResourceSize")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["estimatedSizeInBytes"] = args["estimatedSizeInBytes"],
		["estimatedOn"] = args["estimatedOn"],
	}
	asserts.AssertEstimatedResourceSize(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["resourceArn"] = true, ["tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["resourceArn"] then asserts.AssertResourceArn(struct["resourceArn"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The ARN of the resource whose tags will be modified.</p>
-- * tags [TagList] <p>The new or modified tags for the resource.</p>
-- Required key: resourceArn
-- Required key: tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
        ["resourceArn"] = args["resourceArn"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceConfiguration = { ["computeType"] = true, ["volumeSizeInGB"] = true, nil }

function asserts.AssertResourceConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConfiguration to be of type 'table'")
	assert(struct["computeType"], "Expected key computeType to exist in table")
	assert(struct["volumeSizeInGB"], "Expected key volumeSizeInGB to exist in table")
	if struct["computeType"] then asserts.AssertComputeType(struct["computeType"]) end
	if struct["volumeSizeInGB"] then asserts.AssertVolumeSizeInGB(struct["volumeSizeInGB"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConfiguration[k], "ResourceConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConfiguration
-- <p>The configuration of the resource used to execute the "containerAction".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeType [ComputeType] <p>The type of the compute resource used to execute the "containerAction". Possible values are: ACU_1 (vCPU=4, memory=16GiB) or ACU_2 (vCPU=8, memory=32GiB).</p>
-- * volumeSizeInGB [VolumeSizeInGB] <p>The size (in GB) of the persistent storage available to the resource instance used to execute the "containerAction" (min: 1, max: 50).</p>
-- Required key: computeType
-- Required key: volumeSizeInGB
-- @return ResourceConfiguration structure as a key-value pair table
function M.ResourceConfiguration(args)
	assert(args, "You must provide an argument table when creating ResourceConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeType"] = args["computeType"],
		["volumeSizeInGB"] = args["volumeSizeInGB"],
	}
	asserts.AssertResourceConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDatasetsResponse = { ["nextToken"] = true, ["datasetSummaries"] = true, nil }

function asserts.AssertListDatasetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["datasetSummaries"] then asserts.AssertDatasetSummaries(struct["datasetSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatasetsResponse[k], "ListDatasetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token to retrieve the next set of results, or <code>null</code> if there are no more results.</p>
-- * datasetSummaries [DatasetSummaries] <p>A list of "DatasetSummary" objects.</p>
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
		["nextToken"] = args["nextToken"],
		["datasetSummaries"] = args["datasetSummaries"],
	}
	asserts.AssertListDatasetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDatastoreRequest = { ["datastoreName"] = true, ["retentionPeriod"] = true, nil }

function asserts.AssertUpdateDatastoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDatastoreRequest to be of type 'table'")
	assert(struct["datastoreName"], "Expected key datastoreName to exist in table")
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDatastoreRequest[k], "UpdateDatastoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDatastoreRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastoreName [DatastoreName] <p>The name of the data store to be updated.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the data store.</p>
-- Required key: datastoreName
-- @return UpdateDatastoreRequest structure as a key-value pair table
function M.UpdateDatastoreRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDatastoreRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{datastoreName}"] = args["datastoreName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datastoreName"] = args["datastoreName"],
		["retentionPeriod"] = args["retentionPeriod"],
	}
	asserts.AssertUpdateDatastoreRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceShadowEnrichActivity = { ["attribute"] = true, ["roleArn"] = true, ["thingName"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertDeviceShadowEnrichActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceShadowEnrichActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["attribute"], "Expected key attribute to exist in table")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["attribute"] then asserts.AssertAttributeName(struct["attribute"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["thingName"] then asserts.AssertAttributeName(struct["thingName"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceShadowEnrichActivity[k], "DeviceShadowEnrichActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceShadowEnrichActivity
-- <p>An activity that adds information from the AWS IoT Device Shadows service to a message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attribute [AttributeName] <p>The name of the attribute that is added to the message.</p>
-- * roleArn [RoleArn] <p>The ARN of the role that allows access to the device's shadow.</p>
-- * thingName [AttributeName] <p>The name of the IoT device whose shadow information is added to the message.</p>
-- * name [ActivityName] <p>The name of the 'deviceShadowEnrich' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: attribute
-- Required key: thingName
-- Required key: roleArn
-- @return DeviceShadowEnrichActivity structure as a key-value pair table
function M.DeviceShadowEnrichActivity(args)
	assert(args, "You must provide an argument table when creating DeviceShadowEnrichActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attribute"] = args["attribute"],
		["roleArn"] = args["roleArn"],
		["thingName"] = args["thingName"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertDeviceShadowEnrichActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetActionSummary = { ["actionName"] = true, ["actionType"] = true, nil }

function asserts.AssertDatasetActionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetActionSummary to be of type 'table'")
	if struct["actionName"] then asserts.AssertDatasetActionName(struct["actionName"]) end
	if struct["actionType"] then asserts.AssertDatasetActionType(struct["actionType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetActionSummary[k], "DatasetActionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetActionSummary
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actionName [DatasetActionName] <p>The name of the action which automatically creates the data set's contents.</p>
-- * actionType [DatasetActionType] <p>The type of action by which the data set's contents are automatically created.</p>
-- @return DatasetActionSummary structure as a key-value pair table
function M.DatasetActionSummary(args)
	assert(args, "You must provide an argument table when creating DatasetActionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actionName"] = args["actionName"],
		["actionType"] = args["actionType"],
	}
	asserts.AssertDatasetActionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AssertTagValue(struct["value"]) end
	if struct["key"] then asserts.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A set of key/value pairs which are used to manage the resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [TagValue] <p>The tag's value.</p>
-- * key [TagKey] <p>The tag's key.</p>
-- Required key: key
-- Required key: value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunPipelineActivityRequest = { ["pipelineActivity"] = true, ["payloads"] = true, nil }

function asserts.AssertRunPipelineActivityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunPipelineActivityRequest to be of type 'table'")
	assert(struct["pipelineActivity"], "Expected key pipelineActivity to exist in table")
	assert(struct["payloads"], "Expected key payloads to exist in table")
	if struct["pipelineActivity"] then asserts.AssertPipelineActivity(struct["pipelineActivity"]) end
	if struct["payloads"] then asserts.AssertMessagePayloads(struct["payloads"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunPipelineActivityRequest[k], "RunPipelineActivityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunPipelineActivityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineActivity [PipelineActivity] <p>The pipeline activity that is run. This must not be a 'channel' activity or a 'datastore' activity because these activities are used in a pipeline only to load the original message and to store the (possibly) transformed message. If a 'lambda' activity is specified, only short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be used.</p>
-- * payloads [MessagePayloads] <p>The sample message payloads on which the pipeline activity is run.</p>
-- Required key: pipelineActivity
-- Required key: payloads
-- @return RunPipelineActivityRequest structure as a key-value pair table
function M.RunPipelineActivityRequest(args)
	assert(args, "You must provide an argument table when creating RunPipelineActivityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineActivity"] = args["pipelineActivity"],
		["payloads"] = args["payloads"],
	}
	asserts.AssertRunPipelineActivityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Datastore = { ["status"] = true, ["name"] = true, ["lastUpdateTime"] = true, ["creationTime"] = true, ["retentionPeriod"] = true, ["arn"] = true, nil }

function asserts.AssertDatastore(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Datastore to be of type 'table'")
	if struct["status"] then asserts.AssertDatastoreStatus(struct["status"]) end
	if struct["name"] then asserts.AssertDatastoreName(struct["name"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["arn"] then asserts.AssertDatastoreArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Datastore[k], "Datastore contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Datastore
-- <p>Information about a data store.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DatastoreStatus] <p>The status of a data store:</p> <dl> <dt>CREATING</dt> <dd> <p>The data store is being created.</p> </dd> <dt>ACTIVE</dt> <dd> <p>The data store has been created and can be used.</p> </dd> <dt>DELETING</dt> <dd> <p>The data store is being deleted.</p> </dd> </dl>
-- * name [DatastoreName] <p>The name of the data store.</p>
-- * lastUpdateTime [Timestamp] <p>The last time the data store was updated.</p>
-- * creationTime [Timestamp] <p>When the data store was created.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the data store.</p>
-- * arn [DatastoreArn] <p>The ARN of the data store.</p>
-- @return Datastore structure as a key-value pair table
function M.Datastore(args)
	assert(args, "You must provide an argument table when creating Datastore")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["name"] = args["name"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["creationTime"] = args["creationTime"],
		["retentionPeriod"] = args["retentionPeriod"],
		["arn"] = args["arn"],
	}
	asserts.AssertDatastore(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MathActivity = { ["attribute"] = true, ["name"] = true, ["math"] = true, ["next"] = true, nil }

function asserts.AssertMathActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MathActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["attribute"], "Expected key attribute to exist in table")
	assert(struct["math"], "Expected key math to exist in table")
	if struct["attribute"] then asserts.AssertAttributeName(struct["attribute"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["math"] then asserts.AssertMathExpression(struct["math"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.MathActivity[k], "MathActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MathActivity
-- <p>An activity that computes an arithmetic expression using the message's attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attribute [AttributeName] <p>The name of the attribute that will contain the result of the math operation.</p>
-- * name [ActivityName] <p>The name of the 'math' activity.</p>
-- * math [MathExpression] <p>An expression that uses one or more existing attributes and must return an integer value.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: attribute
-- Required key: math
-- @return MathActivity structure as a key-value pair table
function M.MathActivity(args)
	assert(args, "You must provide an argument table when creating MathActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attribute"] = args["attribute"],
		["name"] = args["name"],
		["math"] = args["math"],
		["next"] = args["next"],
	}
	asserts.AssertMathActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePipelineRequest = { ["pipelineName"] = true, nil }

function asserts.AssertDescribePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePipelineRequest to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePipelineRequest[k], "DescribePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePipelineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline whose information is retrieved.</p>
-- Required key: pipelineName
-- @return DescribePipelineRequest structure as a key-value pair table
function M.DescribePipelineRequest(args)
	assert(args, "You must provide an argument table when creating DescribePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{pipelineName}"] = args["pipelineName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
	}
	asserts.AssertDescribePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoggingOptionsRequest = { nil }

function asserts.AssertDescribeLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoggingOptionsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoggingOptionsRequest[k], "DescribeLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoggingOptionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeLoggingOptionsRequest structure as a key-value pair table
function M.DescribeLoggingOptionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLoggingOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeLoggingOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePipelineRequest = { ["pipelineName"] = true, nil }

function asserts.AssertDeletePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineRequest to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePipelineRequest[k], "DeletePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline to delete.</p>
-- Required key: pipelineName
-- @return DeletePipelineRequest structure as a key-value pair table
function M.DeletePipelineRequest(args)
	assert(args, "You must provide an argument table when creating DeletePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{pipelineName}"] = args["pipelineName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
	}
	asserts.AssertDeletePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Channel = { ["status"] = true, ["name"] = true, ["lastUpdateTime"] = true, ["creationTime"] = true, ["retentionPeriod"] = true, ["arn"] = true, nil }

function asserts.AssertChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Channel to be of type 'table'")
	if struct["status"] then asserts.AssertChannelStatus(struct["status"]) end
	if struct["name"] then asserts.AssertChannelName(struct["name"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["arn"] then asserts.AssertChannelArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Channel[k], "Channel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Channel
-- <p>A collection of data from an MQTT topic. Channels archive the raw, unprocessed messages before publishing the data to a pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ChannelStatus] <p>The status of the channel.</p>
-- * name [ChannelName] <p>The name of the channel.</p>
-- * lastUpdateTime [Timestamp] <p>When the channel was last updated.</p>
-- * creationTime [Timestamp] <p>When the channel was created.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the channel.</p>
-- * arn [ChannelArn] <p>The ARN of the channel.</p>
-- @return Channel structure as a key-value pair table
function M.Channel(args)
	assert(args, "You must provide an argument table when creating Channel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["name"] = args["name"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["creationTime"] = args["creationTime"],
		["retentionPeriod"] = args["retentionPeriod"],
		["arn"] = args["arn"],
	}
	asserts.AssertChannel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelinesResponse = { ["nextToken"] = true, ["pipelineSummaries"] = true, nil }

function asserts.AssertListPipelinesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["pipelineSummaries"] then asserts.AssertPipelineSummaries(struct["pipelineSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesResponse[k], "ListPipelinesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token to retrieve the next set of results, or <code>null</code> if there are no more results.</p>
-- * pipelineSummaries [PipelineSummaries] <p>A list of "PipelineSummary" objects.</p>
-- @return ListPipelinesResponse structure as a key-value pair table
function M.ListPipelinesResponse(args)
	assert(args, "You must provide an argument table when creating ListPipelinesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["pipelineSummaries"] = args["pipelineSummaries"],
	}
	asserts.AssertListPipelinesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddAttributesActivity = { ["attributes"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertAddAttributesActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttributesActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then asserts.AssertAttributeNameMapping(struct["attributes"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAttributesActivity[k], "AddAttributesActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttributesActivity
-- <p>An activity that adds other attributes based on existing attributes in the message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [AttributeNameMapping] <p>A list of 1-50 "AttributeNameMapping" objects that map an existing attribute to a new attribute.</p> <note> <p>The existing attributes remain in the message, so if you want to remove the originals, use "RemoveAttributeActivity".</p> </note>
-- * name [ActivityName] <p>The name of the 'addAttributes' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: attributes
-- @return AddAttributesActivity structure as a key-value pair table
function M.AddAttributesActivity(args)
	assert(args, "You must provide an argument table when creating AddAttributesActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertAddAttributesActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelPipelineReprocessingRequest = { ["reprocessingId"] = true, ["pipelineName"] = true, nil }

function asserts.AssertCancelPipelineReprocessingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelPipelineReprocessingRequest to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["reprocessingId"], "Expected key reprocessingId to exist in table")
	if struct["reprocessingId"] then asserts.AssertReprocessingId(struct["reprocessingId"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelPipelineReprocessingRequest[k], "CancelPipelineReprocessingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelPipelineReprocessingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reprocessingId [ReprocessingId] <p>The ID of the reprocessing task (returned by "StartPipelineReprocessing").</p>
-- * pipelineName [PipelineName] <p>The name of pipeline for which data reprocessing is canceled.</p>
-- Required key: pipelineName
-- Required key: reprocessingId
-- @return CancelPipelineReprocessingRequest structure as a key-value pair table
function M.CancelPipelineReprocessingRequest(args)
	assert(args, "You must provide an argument table when creating CancelPipelineReprocessingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{reprocessingId}"] = args["reprocessingId"],
        ["{pipelineName}"] = args["pipelineName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["reprocessingId"] = args["reprocessingId"],
		["pipelineName"] = args["pipelineName"],
	}
	asserts.AssertCancelPipelineReprocessingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDatastoreResponse = { ["datastore"] = true, ["statistics"] = true, nil }

function asserts.AssertDescribeDatastoreResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatastoreResponse to be of type 'table'")
	if struct["datastore"] then asserts.AssertDatastore(struct["datastore"]) end
	if struct["statistics"] then asserts.AssertDatastoreStatistics(struct["statistics"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDatastoreResponse[k], "DescribeDatastoreResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatastoreResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastore [Datastore] <p>Information about the data store.</p>
-- * statistics [DatastoreStatistics] <p>Additional statistical information about the data store. Included if the 'includeStatistics' parameter is set to true in the request.</p>
-- @return DescribeDatastoreResponse structure as a key-value pair table
function M.DescribeDatastoreResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDatastoreResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datastore"] = args["datastore"],
		["statistics"] = args["statistics"],
	}
	asserts.AssertDescribeDatastoreResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPipelinesRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListPipelinesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPipelinesRequest[k], "ListPipelinesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in this request.</p> <p>The default value is 100.</p>
-- @return ListPipelinesRequest structure as a key-value pair table
function M.ListPipelinesRequest(args)
	assert(args, "You must provide an argument table when creating ListPipelinesRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListPipelinesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatastoreResponse = { ["datastoreName"] = true, ["datastoreArn"] = true, ["retentionPeriod"] = true, nil }

function asserts.AssertCreateDatastoreResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatastoreResponse to be of type 'table'")
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	if struct["datastoreArn"] then asserts.AssertDatastoreArn(struct["datastoreArn"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatastoreResponse[k], "CreateDatastoreResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatastoreResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastoreName [DatastoreName] <p>The name of the data store.</p>
-- * datastoreArn [DatastoreArn] <p>The ARN of the data store.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the data store.</p>
-- @return CreateDatastoreResponse structure as a key-value pair table
function M.CreateDatastoreResponse(args)
	assert(args, "You must provide an argument table when creating CreateDatastoreResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datastoreName"] = args["datastoreName"],
		["datastoreArn"] = args["datastoreArn"],
		["retentionPeriod"] = args["retentionPeriod"],
	}
	asserts.AssertCreateDatastoreResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDatasetContentsRequest = { ["datasetName"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListDatasetContentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetContentsRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatasetContentsRequest[k], "ListDatasetContentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetContentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set whose contents information you want to list.</p>
-- * nextToken [NextToken] <p>The token for the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in this request.</p>
-- Required key: datasetName
-- @return ListDatasetContentsRequest structure as a key-value pair table
function M.ListDatasetContentsRequest(args)
	assert(args, "You must provide an argument table when creating ListDatasetContentsRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListDatasetContentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListChannelsResponse = { ["nextToken"] = true, ["channelSummaries"] = true, nil }

function asserts.AssertListChannelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChannelsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["channelSummaries"] then asserts.AssertChannelSummaries(struct["channelSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChannelsResponse[k], "ListChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChannelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token to retrieve the next set of results, or <code>null</code> if there are no more results.</p>
-- * channelSummaries [ChannelSummaries] <p>A list of "ChannelSummary" objects.</p>
-- @return ListChannelsResponse structure as a key-value pair table
function M.ListChannelsResponse(args)
	assert(args, "You must provide an argument table when creating ListChannelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["channelSummaries"] = args["channelSummaries"],
	}
	asserts.AssertListChannelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteChannelRequest = { ["channelName"] = true, nil }

function asserts.AssertDeleteChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChannelRequest to be of type 'table'")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChannelRequest[k], "DeleteChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel to delete.</p>
-- Required key: channelName
-- @return DeleteChannelRequest structure as a key-value pair table
function M.DeleteChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelName}"] = args["channelName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
	}
	asserts.AssertDeleteChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateChannelRequest = { ["channelName"] = true, ["retentionPeriod"] = true, nil }

function asserts.AssertUpdateChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChannelRequest to be of type 'table'")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChannelRequest[k], "UpdateChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel to be updated.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the channel.</p>
-- Required key: channelName
-- @return UpdateChannelRequest structure as a key-value pair table
function M.UpdateChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelName}"] = args["channelName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
		["retentionPeriod"] = args["retentionPeriod"],
	}
	asserts.AssertUpdateChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChannelRequest = { ["channelName"] = true, ["includeStatistics"] = true, nil }

function asserts.AssertDescribeChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChannelRequest to be of type 'table'")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["includeStatistics"] then asserts.AssertIncludeStatisticsFlag(struct["includeStatistics"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChannelRequest[k], "DescribeChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel whose information is retrieved.</p>
-- * includeStatistics [IncludeStatisticsFlag] <p>If true, additional statistical information about the channel is included in the response.</p>
-- Required key: channelName
-- @return DescribeChannelRequest structure as a key-value pair table
function M.DescribeChannelRequest(args)
	assert(args, "You must provide an argument table when creating DescribeChannelRequest")
    local query_args = { 
        ["includeStatistics"] = args["includeStatistics"],
    }
    local uri_args = { 
        ["{channelName}"] = args["channelName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
		["includeStatistics"] = args["includeStatistics"],
	}
	asserts.AssertDescribeChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDatasetContentResponse = { ["status"] = true, ["timestamp"] = true, ["entries"] = true, nil }

function asserts.AssertGetDatasetContentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDatasetContentResponse to be of type 'table'")
	if struct["status"] then asserts.AssertDatasetContentStatus(struct["status"]) end
	if struct["timestamp"] then asserts.AssertTimestamp(struct["timestamp"]) end
	if struct["entries"] then asserts.AssertDatasetEntries(struct["entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDatasetContentResponse[k], "GetDatasetContentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDatasetContentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DatasetContentStatus] <p>The status of the data set content.</p>
-- * timestamp [Timestamp] <p>The time when the request was made.</p>
-- * entries [DatasetEntries] <p>A list of "DatasetEntry" objects.</p>
-- @return GetDatasetContentResponse structure as a key-value pair table
function M.GetDatasetContentResponse(args)
	assert(args, "You must provide an argument table when creating GetDatasetContentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["timestamp"] = args["timestamp"],
		["entries"] = args["entries"],
	}
	asserts.AssertGetDatasetContentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDatasetRequest = { ["datasetName"] = true, nil }

function asserts.AssertDescribeDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatasetRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDatasetRequest[k], "DescribeDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatasetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set whose information is retrieved.</p>
-- Required key: datasetName
-- @return DescribeDatasetRequest structure as a key-value pair table
function M.DescribeDatasetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
	}
	asserts.AssertDescribeDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDatasetRequest = { ["datasetName"] = true, ["retentionPeriod"] = true, ["actions"] = true, ["triggers"] = true, nil }

function asserts.AssertUpdateDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDatasetRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["actions"] then asserts.AssertDatasetActions(struct["actions"]) end
	if struct["triggers"] then asserts.AssertDatasetTriggers(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDatasetRequest[k], "UpdateDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDatasetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set to update.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the data set.</p>
-- * actions [DatasetActions] <p>A list of "DatasetAction" objects.</p>
-- * triggers [DatasetTriggers] <p>A list of "DatasetTrigger" objects. The list can be empty or can contain up to five <b>DataSetTrigger</b> objects.</p>
-- Required key: datasetName
-- Required key: actions
-- @return UpdateDatasetRequest structure as a key-value pair table
function M.UpdateDatasetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
		["retentionPeriod"] = args["retentionPeriod"],
		["actions"] = args["actions"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertUpdateDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatastoreSummary = { ["status"] = true, ["datastoreName"] = true, ["creationTime"] = true, ["lastUpdateTime"] = true, nil }

function asserts.AssertDatastoreSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatastoreSummary to be of type 'table'")
	if struct["status"] then asserts.AssertDatastoreStatus(struct["status"]) end
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatastoreSummary[k], "DatastoreSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatastoreSummary
-- <p>A summary of information about a data store.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DatastoreStatus] <p>The status of the data store.</p>
-- * datastoreName [DatastoreName] <p>The name of the data store.</p>
-- * creationTime [Timestamp] <p>When the data store was created.</p>
-- * lastUpdateTime [Timestamp] <p>The last time the data store was updated.</p>
-- @return DatastoreSummary structure as a key-value pair table
function M.DatastoreSummary(args)
	assert(args, "You must provide an argument table when creating DatastoreSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["datastoreName"] = args["datastoreName"],
		["creationTime"] = args["creationTime"],
		["lastUpdateTime"] = args["lastUpdateTime"],
	}
	asserts.AssertDatastoreSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetSummary = { ["status"] = true, ["datasetName"] = true, ["lastUpdateTime"] = true, ["triggers"] = true, ["creationTime"] = true, ["actions"] = true, nil }

function asserts.AssertDatasetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetSummary to be of type 'table'")
	if struct["status"] then asserts.AssertDatasetStatus(struct["status"]) end
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["triggers"] then asserts.AssertDatasetTriggers(struct["triggers"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["actions"] then asserts.AssertDatasetActionSummaries(struct["actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetSummary[k], "DatasetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetSummary
-- <p>A summary of information about a data set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DatasetStatus] <p>The status of the data set.</p>
-- * datasetName [DatasetName] <p>The name of the data set.</p>
-- * lastUpdateTime [Timestamp] <p>The last time the data set was updated.</p>
-- * triggers [DatasetTriggers] <p>A list of triggers. A trigger causes data set content to be populated at a specified time interval or when another data set is populated. The list of triggers can be empty or contain up to five DataSetTrigger objects</p>
-- * creationTime [Timestamp] <p>The time the data set was created.</p>
-- * actions [DatasetActionSummaries] <p>A list of "DataActionSummary" objects.</p>
-- @return DatasetSummary structure as a key-value pair table
function M.DatasetSummary(args)
	assert(args, "You must provide an argument table when creating DatasetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["datasetName"] = args["datasetName"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["triggers"] = args["triggers"],
		["creationTime"] = args["creationTime"],
		["actions"] = args["actions"],
	}
	asserts.AssertDatasetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelPipelineReprocessingResponse = { nil }

function asserts.AssertCancelPipelineReprocessingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelPipelineReprocessingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelPipelineReprocessingResponse[k], "CancelPipelineReprocessingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelPipelineReprocessingResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelPipelineReprocessingResponse structure as a key-value pair table
function M.CancelPipelineReprocessingResponse(args)
	assert(args, "You must provide an argument table when creating CancelPipelineReprocessingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelPipelineReprocessingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListChannelsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListChannelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChannelsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChannelsRequest[k], "ListChannelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChannelsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in this request.</p> <p>The default value is 100.</p>
-- @return ListChannelsRequest structure as a key-value pair table
function M.ListChannelsRequest(args)
	assert(args, "You must provide an argument table when creating ListChannelsRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListChannelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateChannelResponse = { ["channelArn"] = true, ["channelName"] = true, ["retentionPeriod"] = true, nil }

function asserts.AssertCreateChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChannelResponse to be of type 'table'")
	if struct["channelArn"] then asserts.AssertChannelArn(struct["channelArn"]) end
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChannelResponse[k], "CreateChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelArn [ChannelArn] <p>The ARN of the channel.</p>
-- * channelName [ChannelName] <p>The name of the channel.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the channel.</p>
-- @return CreateChannelResponse structure as a key-value pair table
function M.CreateChannelResponse(args)
	assert(args, "You must provide an argument table when creating CreateChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["channelArn"] = args["channelArn"],
		["channelName"] = args["channelName"],
		["retentionPeriod"] = args["retentionPeriod"],
	}
	asserts.AssertCreateChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Message = { ["payload"] = true, ["messageId"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	assert(struct["messageId"], "Expected key messageId to exist in table")
	assert(struct["payload"], "Expected key payload to exist in table")
	if struct["payload"] then asserts.AssertMessagePayload(struct["payload"]) end
	if struct["messageId"] then asserts.AssertMessageId(struct["messageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- <p>Information about a message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * payload [MessagePayload] <p>The payload of the message. This may be a JSON string or a Base64-encoded string representing binary data (in which case you must decode it by means of a pipeline activity).</p>
-- * messageId [MessageId] <p>The ID you wish to assign to the message. Each "messageId" must be unique within each batch sent.</p>
-- Required key: messageId
-- Required key: payload
-- @return Message structure as a key-value pair table
function M.Message(args)
	assert(args, "You must provide an argument table when creating Message")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["payload"] = args["payload"],
		["messageId"] = args["messageId"],
	}
	asserts.AssertMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeltaTime = { ["timeExpression"] = true, ["offsetSeconds"] = true, nil }

function asserts.AssertDeltaTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeltaTime to be of type 'table'")
	assert(struct["offsetSeconds"], "Expected key offsetSeconds to exist in table")
	assert(struct["timeExpression"], "Expected key timeExpression to exist in table")
	if struct["timeExpression"] then asserts.AssertTimeExpression(struct["timeExpression"]) end
	if struct["offsetSeconds"] then asserts.AssertOffsetSeconds(struct["offsetSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeltaTime[k], "DeltaTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeltaTime
-- <p>When you create data set contents using message data from a specified time frame, some message data may still be "in flight" when processing begins, and so will not arrive in time to be processed. Use this field to make allowances for the "in flight" time of your message data, so that data not processed from the previous time frame will be included with the next time frame. Without this, missed message data would be excluded from processing during the next time frame as well, because its timestamp places it within the previous time frame.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timeExpression [TimeExpression] <p>An expression by which the time of the message data may be determined. This may be the name of a timestamp field, or a SQL expression which is used to derive the time the message data was generated.</p>
-- * offsetSeconds [OffsetSeconds] <p>The number of seconds of estimated "in flight" lag time of message data.</p>
-- Required key: offsetSeconds
-- Required key: timeExpression
-- @return DeltaTime structure as a key-value pair table
function M.DeltaTime(args)
	assert(args, "You must provide an argument table when creating DeltaTime")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timeExpression"] = args["timeExpression"],
		["offsetSeconds"] = args["offsetSeconds"],
	}
	asserts.AssertDeltaTime(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDatastoreRequest = { ["datastoreName"] = true, ["includeStatistics"] = true, nil }

function asserts.AssertDescribeDatastoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatastoreRequest to be of type 'table'")
	assert(struct["datastoreName"], "Expected key datastoreName to exist in table")
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	if struct["includeStatistics"] then asserts.AssertIncludeStatisticsFlag(struct["includeStatistics"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDatastoreRequest[k], "DescribeDatastoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatastoreRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastoreName [DatastoreName] <p>The name of the data store</p>
-- * includeStatistics [IncludeStatisticsFlag] <p>If true, additional statistical information about the datastore is included in the response.</p>
-- Required key: datastoreName
-- @return DescribeDatastoreRequest structure as a key-value pair table
function M.DescribeDatastoreRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDatastoreRequest")
    local query_args = { 
        ["includeStatistics"] = args["includeStatistics"],
    }
    local uri_args = { 
        ["{datastoreName}"] = args["datastoreName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datastoreName"] = args["datastoreName"],
		["includeStatistics"] = args["includeStatistics"],
	}
	asserts.AssertDescribeDatastoreRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChannelResponse = { ["statistics"] = true, ["channel"] = true, nil }

function asserts.AssertDescribeChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChannelResponse to be of type 'table'")
	if struct["statistics"] then asserts.AssertChannelStatistics(struct["statistics"]) end
	if struct["channel"] then asserts.AssertChannel(struct["channel"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChannelResponse[k], "DescribeChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statistics [ChannelStatistics] <p>Statistics about the channel. Included if the 'includeStatistics' parameter is set to true in the request.</p>
-- * channel [Channel] <p>An object that contains information about the channel.</p>
-- @return DescribeChannelResponse structure as a key-value pair table
function M.DescribeChannelResponse(args)
	assert(args, "You must provide an argument table when creating DescribeChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["statistics"] = args["statistics"],
		["channel"] = args["channel"],
	}
	asserts.AssertDescribeChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceRequest = { ["resourceArn"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	if struct["resourceArn"] then asserts.AssertResourceArn(struct["resourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The ARN of the resource whose tags you want to list.</p>
-- Required key: resourceArn
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
        ["resourceArn"] = args["resourceArn"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchPutMessageResponse = { ["batchPutMessageErrorEntries"] = true, nil }

function asserts.AssertBatchPutMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutMessageResponse to be of type 'table'")
	if struct["batchPutMessageErrorEntries"] then asserts.AssertBatchPutMessageErrorEntries(struct["batchPutMessageErrorEntries"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPutMessageResponse[k], "BatchPutMessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutMessageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * batchPutMessageErrorEntries [BatchPutMessageErrorEntries] <p>A list of any errors encountered when sending the messages to the channel.</p>
-- @return BatchPutMessageResponse structure as a key-value pair table
function M.BatchPutMessageResponse(args)
	assert(args, "You must provide an argument table when creating BatchPutMessageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["batchPutMessageErrorEntries"] = args["batchPutMessageErrorEntries"],
	}
	asserts.AssertBatchPutMessageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetAction = { ["containerAction"] = true, ["actionName"] = true, ["queryAction"] = true, nil }

function asserts.AssertDatasetAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetAction to be of type 'table'")
	if struct["containerAction"] then asserts.AssertContainerDatasetAction(struct["containerAction"]) end
	if struct["actionName"] then asserts.AssertDatasetActionName(struct["actionName"]) end
	if struct["queryAction"] then asserts.AssertSqlQueryDatasetAction(struct["queryAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetAction[k], "DatasetAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetAction
-- <p>A "DatasetAction" object specifying the query that creates the data set content.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * containerAction [ContainerDatasetAction] <p>Information which allows the system to run a containerized application in order to create the data set contents. The application must be in a Docker container along with any needed support libraries.</p>
-- * actionName [DatasetActionName] <p>The name of the data set action by which data set contents are automatically created.</p>
-- * queryAction [SqlQueryDatasetAction] <p>An "SqlQueryDatasetAction" object that contains the SQL query to modify the message.</p>
-- @return DatasetAction structure as a key-value pair table
function M.DatasetAction(args)
	assert(args, "You must provide an argument table when creating DatasetAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["containerAction"] = args["containerAction"],
		["actionName"] = args["actionName"],
		["queryAction"] = args["queryAction"],
	}
	asserts.AssertDatasetAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePipelineRequest = { ["pipelineName"] = true, ["tags"] = true, ["pipelineActivities"] = true, nil }

function asserts.AssertCreatePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineRequest to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["pipelineActivities"], "Expected key pipelineActivities to exist in table")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["pipelineActivities"] then asserts.AssertPipelineActivities(struct["pipelineActivities"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineRequest[k], "CreatePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline.</p>
-- * tags [TagList] <p>Metadata which can be used to manage the pipeline.</p>
-- * pipelineActivities [PipelineActivities] <p>A list of pipeline activities.</p> <p>The list can be 1-25 <b>PipelineActivity</b> objects. Activities perform transformations on your messages, such as removing, renaming, or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data.</p>
-- Required key: pipelineName
-- Required key: pipelineActivities
-- @return CreatePipelineRequest structure as a key-value pair table
function M.CreatePipelineRequest(args)
	assert(args, "You must provide an argument table when creating CreatePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
		["tags"] = args["tags"],
		["pipelineActivities"] = args["pipelineActivities"],
	}
	asserts.AssertCreatePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputFileUriValue = { ["fileName"] = true, nil }

function asserts.AssertOutputFileUriValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputFileUriValue to be of type 'table'")
	assert(struct["fileName"], "Expected key fileName to exist in table")
	if struct["fileName"] then asserts.AssertOutputFileName(struct["fileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputFileUriValue[k], "OutputFileUriValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputFileUriValue
-- <p>The URI of the location where data set contents are stored, usually the URI of a file in an S3 bucket.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fileName [OutputFileName] <p>The URI of the location where data set contents are stored, usually the URI of a file in an S3 bucket.</p>
-- Required key: fileName
-- @return OutputFileUriValue structure as a key-value pair table
function M.OutputFileUriValue(args)
	assert(args, "You must provide an argument table when creating OutputFileUriValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fileName"] = args["fileName"],
	}
	asserts.AssertOutputFileUriValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePipelineResponse = { ["pipeline"] = true, nil }

function asserts.AssertDescribePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePipelineResponse to be of type 'table'")
	if struct["pipeline"] then asserts.AssertPipeline(struct["pipeline"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePipelineResponse[k], "DescribePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePipelineResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipeline [Pipeline] <p>A "Pipeline" object that contains information about the pipeline.</p>
-- @return DescribePipelineResponse structure as a key-value pair table
function M.DescribePipelineResponse(args)
	assert(args, "You must provide an argument table when creating DescribePipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipeline"] = args["pipeline"],
	}
	asserts.AssertDescribePipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Variable = { ["stringValue"] = true, ["outputFileUriValue"] = true, ["name"] = true, ["datasetContentVersionValue"] = true, ["doubleValue"] = true, nil }

function asserts.AssertVariable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Variable to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["stringValue"] then asserts.AssertStringValue(struct["stringValue"]) end
	if struct["outputFileUriValue"] then asserts.AssertOutputFileUriValue(struct["outputFileUriValue"]) end
	if struct["name"] then asserts.AssertVariableName(struct["name"]) end
	if struct["datasetContentVersionValue"] then asserts.AssertDatasetContentVersionValue(struct["datasetContentVersionValue"]) end
	if struct["doubleValue"] then asserts.AssertDoubleValue(struct["doubleValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Variable[k], "Variable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Variable
-- <p>An instance of a variable to be passed to the "containerAction" execution. Each variable must have a name and a value given by one of "stringValue", "datasetContentVersionValue", or "outputFileUriValue".</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stringValue [StringValue] <p>The value of the variable as a string.</p>
-- * outputFileUriValue [OutputFileUriValue] <p>The value of the variable as a structure that specifies an output file URI.</p>
-- * name [VariableName] <p>The name of the variable.</p>
-- * datasetContentVersionValue [DatasetContentVersionValue] <p>The value of the variable as a structure that specifies a data set content version.</p>
-- * doubleValue [DoubleValue] <p>The value of the variable as a double (numeric).</p>
-- Required key: name
-- @return Variable structure as a key-value pair table
function M.Variable(args)
	assert(args, "You must provide an argument table when creating Variable")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stringValue"] = args["stringValue"],
		["outputFileUriValue"] = args["outputFileUriValue"],
		["name"] = args["name"],
		["datasetContentVersionValue"] = args["datasetContentVersionValue"],
		["doubleValue"] = args["doubleValue"],
	}
	asserts.AssertVariable(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SqlQueryDatasetAction = { ["sqlQuery"] = true, ["filters"] = true, nil }

function asserts.AssertSqlQueryDatasetAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlQueryDatasetAction to be of type 'table'")
	assert(struct["sqlQuery"], "Expected key sqlQuery to exist in table")
	if struct["sqlQuery"] then asserts.AssertSqlQuery(struct["sqlQuery"]) end
	if struct["filters"] then asserts.AssertQueryFilters(struct["filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlQueryDatasetAction[k], "SqlQueryDatasetAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlQueryDatasetAction
-- <p>The SQL query to modify the message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sqlQuery [SqlQuery] <p>A SQL query string.</p>
-- * filters [QueryFilters] <p>Pre-filters applied to message data.</p>
-- Required key: sqlQuery
-- @return SqlQueryDatasetAction structure as a key-value pair table
function M.SqlQueryDatasetAction(args)
	assert(args, "You must provide an argument table when creating SqlQueryDatasetAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sqlQuery"] = args["sqlQuery"],
		["filters"] = args["filters"],
	}
	asserts.AssertSqlQueryDatasetAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateChannelRequest = { ["channelName"] = true, ["retentionPeriod"] = true, ["tags"] = true, nil }

function asserts.AssertCreateChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChannelRequest to be of type 'table'")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChannelRequest[k], "CreateChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the channel.</p>
-- * tags [TagList] <p>Metadata which can be used to manage the channel.</p>
-- Required key: channelName
-- @return CreateChannelRequest structure as a key-value pair table
function M.CreateChannelRequest(args)
	assert(args, "You must provide an argument table when creating CreateChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
		["retentionPeriod"] = args["retentionPeriod"],
		["tags"] = args["tags"],
	}
	asserts.AssertCreateChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceRegistryEnrichActivity = { ["attribute"] = true, ["roleArn"] = true, ["thingName"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertDeviceRegistryEnrichActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceRegistryEnrichActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["attribute"], "Expected key attribute to exist in table")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["attribute"] then asserts.AssertAttributeName(struct["attribute"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["thingName"] then asserts.AssertAttributeName(struct["thingName"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceRegistryEnrichActivity[k], "DeviceRegistryEnrichActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceRegistryEnrichActivity
-- <p>An activity that adds data from the AWS IoT device registry to your message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attribute [AttributeName] <p>The name of the attribute that is added to the message.</p>
-- * roleArn [RoleArn] <p>The ARN of the role that allows access to the device's registry information.</p>
-- * thingName [AttributeName] <p>The name of the IoT device whose registry information is added to the message.</p>
-- * name [ActivityName] <p>The name of the 'deviceRegistryEnrich' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: attribute
-- Required key: thingName
-- Required key: roleArn
-- @return DeviceRegistryEnrichActivity structure as a key-value pair table
function M.DeviceRegistryEnrichActivity(args)
	assert(args, "You must provide an argument table when creating DeviceRegistryEnrichActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attribute"] = args["attribute"],
		["roleArn"] = args["roleArn"],
		["thingName"] = args["thingName"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertDeviceRegistryEnrichActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDatasetContentRequest = { ["datasetName"] = true, ["versionId"] = true, nil }

function asserts.AssertDeleteDatasetContentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatasetContentRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["versionId"] then asserts.AssertDatasetContentVersion(struct["versionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatasetContentRequest[k], "DeleteDatasetContentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatasetContentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set whose content is deleted.</p>
-- * versionId [DatasetContentVersion] <p>The version of the data set whose content is deleted. You can also use the strings "$LATEST" or "$LATEST_SUCCEEDED" to delete the latest or latest successfully completed data set. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
-- Required key: datasetName
-- @return DeleteDatasetContentRequest structure as a key-value pair table
function M.DeleteDatasetContentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDatasetContentRequest")
    local query_args = { 
        ["versionId"] = args["versionId"],
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
		["versionId"] = args["versionId"],
	}
	asserts.AssertDeleteDatasetContentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDatasetResponse = { ["dataset"] = true, nil }

function asserts.AssertDescribeDatasetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDatasetResponse to be of type 'table'")
	if struct["dataset"] then asserts.AssertDataset(struct["dataset"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDatasetResponse[k], "DescribeDatasetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDatasetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataset [Dataset] <p>An object that contains information about the data set.</p>
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
		["dataset"] = args["dataset"],
	}
	asserts.AssertDescribeDatasetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelSummary = { ["status"] = true, ["channelName"] = true, ["creationTime"] = true, ["lastUpdateTime"] = true, nil }

function asserts.AssertChannelSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelSummary to be of type 'table'")
	if struct["status"] then asserts.AssertChannelStatus(struct["status"]) end
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelSummary[k], "ChannelSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelSummary
-- <p>A summary of information about a channel.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ChannelStatus] <p>The status of the channel.</p>
-- * channelName [ChannelName] <p>The name of the channel.</p>
-- * creationTime [Timestamp] <p>When the channel was created.</p>
-- * lastUpdateTime [Timestamp] <p>The last time the channel was updated.</p>
-- @return ChannelSummary structure as a key-value pair table
function M.ChannelSummary(args)
	assert(args, "You must provide an argument table when creating ChannelSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["channelName"] = args["channelName"],
		["creationTime"] = args["creationTime"],
		["lastUpdateTime"] = args["lastUpdateTime"],
	}
	asserts.AssertChannelSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePipelineRequest = { ["pipelineName"] = true, ["pipelineActivities"] = true, nil }

function asserts.AssertUpdatePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineRequest to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	assert(struct["pipelineActivities"], "Expected key pipelineActivities to exist in table")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["pipelineActivities"] then asserts.AssertPipelineActivities(struct["pipelineActivities"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePipelineRequest[k], "UpdatePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline to update.</p>
-- * pipelineActivities [PipelineActivities] <p>A list of "PipelineActivity" objects.</p> <p>The list can be 1-25 <b>PipelineActivity</b> objects. Activities perform transformations on your messages, such as removing, renaming or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data.</p>
-- Required key: pipelineName
-- Required key: pipelineActivities
-- @return UpdatePipelineRequest structure as a key-value pair table
function M.UpdatePipelineRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePipelineRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{pipelineName}"] = args["pipelineName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
		["pipelineActivities"] = args["pipelineActivities"],
	}
	asserts.AssertUpdatePipelineRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatasetRequest = { ["datasetName"] = true, ["tags"] = true, ["retentionPeriod"] = true, ["actions"] = true, ["triggers"] = true, nil }

function asserts.AssertCreateDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatasetRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["actions"] then asserts.AssertDatasetActions(struct["actions"]) end
	if struct["triggers"] then asserts.AssertDatasetTriggers(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatasetRequest[k], "CreateDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatasetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set.</p>
-- * tags [TagList] <p>Metadata which can be used to manage the data set.</p>
-- * retentionPeriod [RetentionPeriod] <p>[Optional] How long, in days, message data is kept for the data set. If not given or set to null, the latest version of the dataset content plus the latest succeeded version (if they are different) are retained for at most 90 days.</p>
-- * actions [DatasetActions] <p>A list of actions that create the data set contents.</p>
-- * triggers [DatasetTriggers] <p>A list of triggers. A trigger causes data set contents to be populated at a specified time interval or when another data set's contents are created. The list of triggers can be empty or contain up to five <b>DataSetTrigger</b> objects.</p>
-- Required key: datasetName
-- Required key: actions
-- @return CreateDatasetRequest structure as a key-value pair table
function M.CreateDatasetRequest(args)
	assert(args, "You must provide an argument table when creating CreateDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
		["tags"] = args["tags"],
		["retentionPeriod"] = args["retentionPeriod"],
		["actions"] = args["actions"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertCreateDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLoggingOptionsResponse = { ["loggingOptions"] = true, nil }

function asserts.AssertDescribeLoggingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoggingOptionsResponse to be of type 'table'")
	if struct["loggingOptions"] then asserts.AssertLoggingOptions(struct["loggingOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoggingOptionsResponse[k], "DescribeLoggingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoggingOptionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loggingOptions [LoggingOptions] <p>The current settings of the AWS IoT Analytics logging options.</p>
-- @return DescribeLoggingOptionsResponse structure as a key-value pair table
function M.DescribeLoggingOptionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeLoggingOptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loggingOptions"] = args["loggingOptions"],
	}
	asserts.AssertDescribeLoggingOptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatastoreStatistics = { ["size"] = true, nil }

function asserts.AssertDatastoreStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatastoreStatistics to be of type 'table'")
	if struct["size"] then asserts.AssertEstimatedResourceSize(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatastoreStatistics[k], "DatastoreStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatastoreStatistics
-- <p>Statistical information about the data store.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * size [EstimatedResourceSize] <p>The estimated size of the data store.</p>
-- @return DatastoreStatistics structure as a key-value pair table
function M.DatastoreStatistics(args)
	assert(args, "You must provide an argument table when creating DatastoreStatistics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["size"] = args["size"],
	}
	asserts.AssertDatastoreStatistics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDatasetContentRequest = { ["datasetName"] = true, ["versionId"] = true, nil }

function asserts.AssertGetDatasetContentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDatasetContentRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	if struct["versionId"] then asserts.AssertDatasetContentVersion(struct["versionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDatasetContentRequest[k], "GetDatasetContentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDatasetContentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set whose contents are retrieved.</p>
-- * versionId [DatasetContentVersion] <p>The version of the data set whose contents are retrieved. You can also use the strings "$LATEST" or "$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully completed data set. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
-- Required key: datasetName
-- @return GetDatasetContentRequest structure as a key-value pair table
function M.GetDatasetContentRequest(args)
	assert(args, "You must provide an argument table when creating GetDatasetContentRequest")
    local query_args = { 
        ["versionId"] = args["versionId"],
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
		["versionId"] = args["versionId"],
	}
	asserts.AssertGetDatasetContentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TriggeringDataset = { ["name"] = true, nil }

function asserts.AssertTriggeringDataset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TriggeringDataset to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertDatasetName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TriggeringDataset[k], "TriggeringDataset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TriggeringDataset
-- <p>Information about the data set whose content generation will trigger the new data set content generation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [DatasetName] <p>The name of the data set whose content generation will trigger the new data set content generation.</p>
-- Required key: name
-- @return TriggeringDataset structure as a key-value pair table
function M.TriggeringDataset(args)
	assert(args, "You must provide an argument table when creating TriggeringDataset")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertTriggeringDataset(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDatastoreRequest = { ["datastoreName"] = true, nil }

function asserts.AssertDeleteDatastoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatastoreRequest to be of type 'table'")
	assert(struct["datastoreName"], "Expected key datastoreName to exist in table")
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatastoreRequest[k], "DeleteDatastoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatastoreRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastoreName [DatastoreName] <p>The name of the data store to delete.</p>
-- Required key: datastoreName
-- @return DeleteDatastoreRequest structure as a key-value pair table
function M.DeleteDatastoreRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDatastoreRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{datastoreName}"] = args["datastoreName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datastoreName"] = args["datastoreName"],
	}
	asserts.AssertDeleteDatastoreRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Schedule = { ["expression"] = true, nil }

function asserts.AssertSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Schedule to be of type 'table'")
	if struct["expression"] then asserts.AssertScheduleExpression(struct["expression"]) end
	for k,_ in pairs(struct) do
		assert(keys.Schedule[k], "Schedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Schedule
-- <p>The schedule for when to trigger an update.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expression [ScheduleExpression] <p>The expression that defines when to trigger an update. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"> Schedule Expressions for Rules</a> in the Amazon CloudWatch documentation.</p>
-- @return Schedule structure as a key-value pair table
function M.Schedule(args)
	assert(args, "You must provide an argument table when creating Schedule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["expression"] = args["expression"],
	}
	asserts.AssertSchedule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineActivity = { ["deviceRegistryEnrich"] = true, ["selectAttributes"] = true, ["filter"] = true, ["deviceShadowEnrich"] = true, ["math"] = true, ["addAttributes"] = true, ["datastore"] = true, ["removeAttributes"] = true, ["channel"] = true, ["lambda"] = true, nil }

function asserts.AssertPipelineActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineActivity to be of type 'table'")
	if struct["deviceRegistryEnrich"] then asserts.AssertDeviceRegistryEnrichActivity(struct["deviceRegistryEnrich"]) end
	if struct["selectAttributes"] then asserts.AssertSelectAttributesActivity(struct["selectAttributes"]) end
	if struct["filter"] then asserts.AssertFilterActivity(struct["filter"]) end
	if struct["deviceShadowEnrich"] then asserts.AssertDeviceShadowEnrichActivity(struct["deviceShadowEnrich"]) end
	if struct["math"] then asserts.AssertMathActivity(struct["math"]) end
	if struct["addAttributes"] then asserts.AssertAddAttributesActivity(struct["addAttributes"]) end
	if struct["datastore"] then asserts.AssertDatastoreActivity(struct["datastore"]) end
	if struct["removeAttributes"] then asserts.AssertRemoveAttributesActivity(struct["removeAttributes"]) end
	if struct["channel"] then asserts.AssertChannelActivity(struct["channel"]) end
	if struct["lambda"] then asserts.AssertLambdaActivity(struct["lambda"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineActivity[k], "PipelineActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineActivity
-- <p>An activity that performs a transformation on a message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deviceRegistryEnrich [DeviceRegistryEnrichActivity] <p>Adds data from the AWS IoT device registry to your message.</p>
-- * selectAttributes [SelectAttributesActivity] <p>Creates a new message using only the specified attributes from the original message. </p>
-- * filter [FilterActivity] <p>Filters a message based on its attributes.</p>
-- * deviceShadowEnrich [DeviceShadowEnrichActivity] <p>Adds information from the AWS IoT Device Shadows service to a message.</p>
-- * math [MathActivity] <p>Computes an arithmetic expression using the message's attributes and adds it to the message.</p>
-- * addAttributes [AddAttributesActivity] <p>Adds other attributes based on existing attributes in the message.</p>
-- * datastore [DatastoreActivity] <p>Specifies where to store the processed message data.</p>
-- * removeAttributes [RemoveAttributesActivity] <p>Removes attributes from a message.</p>
-- * channel [ChannelActivity] <p>Determines the source of the messages to be processed.</p>
-- * lambda [LambdaActivity] <p>Runs a Lambda function to modify the message.</p>
-- @return PipelineActivity structure as a key-value pair table
function M.PipelineActivity(args)
	assert(args, "You must provide an argument table when creating PipelineActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deviceRegistryEnrich"] = args["deviceRegistryEnrich"],
		["selectAttributes"] = args["selectAttributes"],
		["filter"] = args["filter"],
		["deviceShadowEnrich"] = args["deviceShadowEnrich"],
		["math"] = args["math"],
		["addAttributes"] = args["addAttributes"],
		["datastore"] = args["datastore"],
		["removeAttributes"] = args["removeAttributes"],
		["channel"] = args["channel"],
		["lambda"] = args["lambda"],
	}
	asserts.AssertPipelineActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDatasetsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListDatasetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatasetsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatasetsRequest[k], "ListDatasetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatasetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in this request.</p> <p>The default value is 100.</p>
-- @return ListDatasetsRequest structure as a key-value pair table
function M.ListDatasetsRequest(args)
	assert(args, "You must provide an argument table when creating ListDatasetsRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListDatasetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Pipeline = { ["activities"] = true, ["name"] = true, ["lastUpdateTime"] = true, ["creationTime"] = true, ["reprocessingSummaries"] = true, ["arn"] = true, nil }

function asserts.AssertPipeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Pipeline to be of type 'table'")
	if struct["activities"] then asserts.AssertPipelineActivities(struct["activities"]) end
	if struct["name"] then asserts.AssertPipelineName(struct["name"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["reprocessingSummaries"] then asserts.AssertReprocessingSummaries(struct["reprocessingSummaries"]) end
	if struct["arn"] then asserts.AssertPipelineArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Pipeline[k], "Pipeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Pipeline
-- <p>Contains information about a pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activities [PipelineActivities] <p>The activities that perform transformations on the messages.</p>
-- * name [PipelineName] <p>The name of the pipeline.</p>
-- * lastUpdateTime [Timestamp] <p>The last time the pipeline was updated.</p>
-- * creationTime [Timestamp] <p>When the pipeline was created.</p>
-- * reprocessingSummaries [ReprocessingSummaries] <p>A summary of information about the pipeline reprocessing.</p>
-- * arn [PipelineArn] <p>The ARN of the pipeline.</p>
-- @return Pipeline structure as a key-value pair table
function M.Pipeline(args)
	assert(args, "You must provide an argument table when creating Pipeline")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activities"] = args["activities"],
		["name"] = args["name"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["creationTime"] = args["creationTime"],
		["reprocessingSummaries"] = args["reprocessingSummaries"],
		["arn"] = args["arn"],
	}
	asserts.AssertPipeline(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartPipelineReprocessingResponse = { ["reprocessingId"] = true, nil }

function asserts.AssertStartPipelineReprocessingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPipelineReprocessingResponse to be of type 'table'")
	if struct["reprocessingId"] then asserts.AssertReprocessingId(struct["reprocessingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartPipelineReprocessingResponse[k], "StartPipelineReprocessingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPipelineReprocessingResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reprocessingId [ReprocessingId] <p>The ID of the pipeline reprocessing activity that was started.</p>
-- @return StartPipelineReprocessingResponse structure as a key-value pair table
function M.StartPipelineReprocessingResponse(args)
	assert(args, "You must provide an argument table when creating StartPipelineReprocessingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reprocessingId"] = args["reprocessingId"],
	}
	asserts.AssertStartPipelineReprocessingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePipelineResponse = { ["pipelineArn"] = true, ["pipelineName"] = true, nil }

function asserts.AssertCreatePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineResponse to be of type 'table'")
	if struct["pipelineArn"] then asserts.AssertPipelineArn(struct["pipelineArn"]) end
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePipelineResponse[k], "CreatePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineArn [PipelineArn] <p>The ARN of the pipeline.</p>
-- * pipelineName [PipelineName] <p>The name of the pipeline.</p>
-- @return CreatePipelineResponse structure as a key-value pair table
function M.CreatePipelineResponse(args)
	assert(args, "You must provide an argument table when creating CreatePipelineResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineArn"] = args["pipelineArn"],
		["pipelineName"] = args["pipelineName"],
	}
	asserts.AssertCreatePipelineResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoggingOptions = { ["roleArn"] = true, ["enabled"] = true, ["level"] = true, nil }

function asserts.AssertLoggingOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingOptions to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["level"], "Expected key level to exist in table")
	assert(struct["enabled"], "Expected key enabled to exist in table")
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["enabled"] then asserts.AssertLoggingEnabled(struct["enabled"]) end
	if struct["level"] then asserts.AssertLoggingLevel(struct["level"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingOptions[k], "LoggingOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingOptions
-- <p>Information about logging options.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [RoleArn] <p>The ARN of the role that grants permission to AWS IoT Analytics to perform logging.</p>
-- * enabled [LoggingEnabled] <p>If true, logging is enabled for AWS IoT Analytics.</p>
-- * level [LoggingLevel] <p>The logging level. Currently, only "ERROR" is supported.</p>
-- Required key: roleArn
-- Required key: level
-- Required key: enabled
-- @return LoggingOptions structure as a key-value pair table
function M.LoggingOptions(args)
	assert(args, "You must provide an argument table when creating LoggingOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleArn"] = args["roleArn"],
		["enabled"] = args["enabled"],
		["level"] = args["level"],
	}
	asserts.AssertLoggingOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetEntry = { ["dataURI"] = true, ["entryName"] = true, nil }

function asserts.AssertDatasetEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetEntry to be of type 'table'")
	if struct["dataURI"] then asserts.AssertPresignedURI(struct["dataURI"]) end
	if struct["entryName"] then asserts.AssertEntryName(struct["entryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetEntry[k], "DatasetEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetEntry
-- <p>The reference to a data set entry.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataURI [PresignedURI] <p>The pre-signed URI of the data set item.</p>
-- * entryName [EntryName] <p>The name of the data set item.</p>
-- @return DatasetEntry structure as a key-value pair table
function M.DatasetEntry(args)
	assert(args, "You must provide an argument table when creating DatasetEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataURI"] = args["dataURI"],
		["entryName"] = args["entryName"],
	}
	asserts.AssertDatasetEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartPipelineReprocessingRequest = { ["pipelineName"] = true, ["startTime"] = true, ["endTime"] = true, nil }

function asserts.AssertStartPipelineReprocessingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPipelineReprocessingRequest to be of type 'table'")
	assert(struct["pipelineName"], "Expected key pipelineName to exist in table")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["startTime"] then asserts.AssertStartTime(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertEndTime(struct["endTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartPipelineReprocessingRequest[k], "StartPipelineReprocessingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPipelineReprocessingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline on which to start reprocessing.</p>
-- * startTime [StartTime] <p>The start time (inclusive) of raw message data that is reprocessed.</p>
-- * endTime [EndTime] <p>The end time (exclusive) of raw message data that is reprocessed.</p>
-- Required key: pipelineName
-- @return StartPipelineReprocessingRequest structure as a key-value pair table
function M.StartPipelineReprocessingRequest(args)
	assert(args, "You must provide an argument table when creating StartPipelineReprocessingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{pipelineName}"] = args["pipelineName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
	}
	asserts.AssertStartPipelineReprocessingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelStatistics = { ["size"] = true, nil }

function asserts.AssertChannelStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelStatistics to be of type 'table'")
	if struct["size"] then asserts.AssertEstimatedResourceSize(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelStatistics[k], "ChannelStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelStatistics
-- <p>Statistics information about the channel.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * size [EstimatedResourceSize] <p>The estimated size of the channel.</p>
-- @return ChannelStatistics structure as a key-value pair table
function M.ChannelStatistics(args)
	assert(args, "You must provide an argument table when creating ChannelStatistics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["size"] = args["size"],
	}
	asserts.AssertChannelStatistics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchPutMessageErrorEntry = { ["errorCode"] = true, ["errorMessage"] = true, ["messageId"] = true, nil }

function asserts.AssertBatchPutMessageErrorEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutMessageErrorEntry to be of type 'table'")
	if struct["errorCode"] then asserts.AssertErrorCode(struct["errorCode"]) end
	if struct["errorMessage"] then asserts.AssertErrorMessage(struct["errorMessage"]) end
	if struct["messageId"] then asserts.AssertMessageId(struct["messageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPutMessageErrorEntry[k], "BatchPutMessageErrorEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutMessageErrorEntry
-- <p>Contains informations about errors.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorCode [ErrorCode] <p>The code associated with the error.</p>
-- * errorMessage [ErrorMessage] <p>The message associated with the error.</p>
-- * messageId [MessageId] <p>The ID of the message that caused the error. (See the value corresponding to the "messageId" key in the message object.)</p>
-- @return BatchPutMessageErrorEntry structure as a key-value pair table
function M.BatchPutMessageErrorEntry(args)
	assert(args, "You must provide an argument table when creating BatchPutMessageErrorEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorCode"] = args["errorCode"],
		["errorMessage"] = args["errorMessage"],
		["messageId"] = args["messageId"],
	}
	asserts.AssertBatchPutMessageErrorEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceResponse = { ["tags"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tags [TagList] <p>The tags (metadata) which you have assigned to the resource.</p>
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tags"] = args["tags"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatastoreRequest = { ["datastoreName"] = true, ["retentionPeriod"] = true, ["tags"] = true, nil }

function asserts.AssertCreateDatastoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatastoreRequest to be of type 'table'")
	assert(struct["datastoreName"], "Expected key datastoreName to exist in table")
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatastoreRequest[k], "CreateDatastoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatastoreRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastoreName [DatastoreName] <p>The name of the data store.</p>
-- * retentionPeriod [RetentionPeriod] <p>How long, in days, message data is kept for the data store.</p>
-- * tags [TagList] <p>Metadata which can be used to manage the data store.</p>
-- Required key: datastoreName
-- @return CreateDatastoreRequest structure as a key-value pair table
function M.CreateDatastoreRequest(args)
	assert(args, "You must provide an argument table when creating CreateDatastoreRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datastoreName"] = args["datastoreName"],
		["retentionPeriod"] = args["retentionPeriod"],
		["tags"] = args["tags"],
	}
	asserts.AssertCreateDatastoreRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetentionPeriod = { ["numberOfDays"] = true, ["unlimited"] = true, nil }

function asserts.AssertRetentionPeriod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetentionPeriod to be of type 'table'")
	if struct["numberOfDays"] then asserts.AssertRetentionPeriodInDays(struct["numberOfDays"]) end
	if struct["unlimited"] then asserts.AssertUnlimitedRetentionPeriod(struct["unlimited"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetentionPeriod[k], "RetentionPeriod contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetentionPeriod
-- <p>How long, in days, message data is kept.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * numberOfDays [RetentionPeriodInDays] <p>The number of days that message data is kept. The "unlimited" parameter must be false.</p>
-- * unlimited [UnlimitedRetentionPeriod] <p>If true, message data is kept indefinitely.</p>
-- @return RetentionPeriod structure as a key-value pair table
function M.RetentionPeriod(args)
	assert(args, "You must provide an argument table when creating RetentionPeriod")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["numberOfDays"] = args["numberOfDays"],
		["unlimited"] = args["unlimited"],
	}
	asserts.AssertRetentionPeriod(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SelectAttributesActivity = { ["attributes"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertSelectAttributesActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectAttributesActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then asserts.AssertAttributeNames(struct["attributes"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectAttributesActivity[k], "SelectAttributesActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectAttributesActivity
-- <p>Creates a new message using only the specified attributes from the original message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [AttributeNames] <p>A list of the attributes to select from the message.</p>
-- * name [ActivityName] <p>The name of the 'selectAttributes' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: attributes
-- @return SelectAttributesActivity structure as a key-value pair table
function M.SelectAttributesActivity(args)
	assert(args, "You must provide an argument table when creating SelectAttributesActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertSelectAttributesActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SampleChannelDataResponse = { ["payloads"] = true, nil }

function asserts.AssertSampleChannelDataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SampleChannelDataResponse to be of type 'table'")
	if struct["payloads"] then asserts.AssertMessagePayloads(struct["payloads"]) end
	for k,_ in pairs(struct) do
		assert(keys.SampleChannelDataResponse[k], "SampleChannelDataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SampleChannelDataResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * payloads [MessagePayloads] <p>The list of message samples. Each sample message is returned as a base64-encoded string.</p>
-- @return SampleChannelDataResponse structure as a key-value pair table
function M.SampleChannelDataResponse(args)
	assert(args, "You must provide an argument table when creating SampleChannelDataResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["payloads"] = args["payloads"],
	}
	asserts.AssertSampleChannelDataResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryFilter = { ["deltaTime"] = true, nil }

function asserts.AssertQueryFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryFilter to be of type 'table'")
	if struct["deltaTime"] then asserts.AssertDeltaTime(struct["deltaTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryFilter[k], "QueryFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryFilter
-- <p>Information which is used to filter message data, to segregate it according to the time frame in which it arrives.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deltaTime [DeltaTime] <p>Used to limit data to that which has arrived since the last execution of the action. When you create data set contents using message data from a specified time frame, some message data may still be "in flight" when processing begins, and so will not arrive in time to be processed. Use this field to make allowances for the "in flight" time of you message data, so that data not processed from a previous time frame will be included with the next time frame. Without this, missed message data would be excluded from processing during the next time frame as well, because its timestamp places it within the previous time frame.</p>
-- @return QueryFilter structure as a key-value pair table
function M.QueryFilter(args)
	assert(args, "You must provide an argument table when creating QueryFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deltaTime"] = args["deltaTime"],
	}
	asserts.AssertQueryFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FilterActivity = { ["filter"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertFilterActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["filter"], "Expected key filter to exist in table")
	if struct["filter"] then asserts.AssertFilterExpression(struct["filter"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.FilterActivity[k], "FilterActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterActivity
-- <p>An activity that filters a message based on its attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [FilterExpression] <p>An expression that looks like a SQL WHERE clause that must return a Boolean value.</p>
-- * name [ActivityName] <p>The name of the 'filter' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: filter
-- @return FilterActivity structure as a key-value pair table
function M.FilterActivity(args)
	assert(args, "You must provide an argument table when creating FilterActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertFilterActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["resourceArn"] = true, ["tagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tagKeys"], "Expected key tagKeys to exist in table")
	if struct["resourceArn"] then asserts.AssertResourceArn(struct["resourceArn"]) end
	if struct["tagKeys"] then asserts.AssertTagKeyList(struct["tagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [ResourceArn] <p>The ARN of the resource whose tags will be removed.</p>
-- * tagKeys [TagKeyList] <p>The keys of those tags which will be removed.</p>
-- Required key: resourceArn
-- Required key: tagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
        ["resourceArn"] = args["resourceArn"],
        ["tagKeys"] = args["tagKeys"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tagKeys"] = args["tagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDatasetRequest = { ["datasetName"] = true, nil }

function asserts.AssertDeleteDatasetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatasetRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatasetRequest[k], "DeleteDatasetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatasetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set to delete.</p>
-- Required key: datasetName
-- @return DeleteDatasetRequest structure as a key-value pair table
function M.DeleteDatasetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDatasetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
	}
	asserts.AssertDeleteDatasetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatastoreActivity = { ["datastoreName"] = true, ["name"] = true, nil }

function asserts.AssertDatastoreActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatastoreActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["datastoreName"], "Expected key datastoreName to exist in table")
	if struct["datastoreName"] then asserts.AssertDatastoreName(struct["datastoreName"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatastoreActivity[k], "DatastoreActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatastoreActivity
-- <p>The 'datastore' activity that specifies where to store the processed data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datastoreName [DatastoreName] <p>The name of the data store where processed messages are stored.</p>
-- * name [ActivityName] <p>The name of the 'datastore' activity.</p>
-- Required key: name
-- Required key: datastoreName
-- @return DatastoreActivity structure as a key-value pair table
function M.DatastoreActivity(args)
	assert(args, "You must provide an argument table when creating DatastoreActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datastoreName"] = args["datastoreName"],
		["name"] = args["name"],
	}
	asserts.AssertDatastoreActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PipelineSummary = { ["pipelineName"] = true, ["creationTime"] = true, ["lastUpdateTime"] = true, ["reprocessingSummaries"] = true, nil }

function asserts.AssertPipelineSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineSummary to be of type 'table'")
	if struct["pipelineName"] then asserts.AssertPipelineName(struct["pipelineName"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["reprocessingSummaries"] then asserts.AssertReprocessingSummaries(struct["reprocessingSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.PipelineSummary[k], "PipelineSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineSummary
-- <p>A summary of information about a pipeline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pipelineName [PipelineName] <p>The name of the pipeline.</p>
-- * creationTime [Timestamp] <p>When the pipeline was created.</p>
-- * lastUpdateTime [Timestamp] <p>When the pipeline was last updated.</p>
-- * reprocessingSummaries [ReprocessingSummaries] <p>A summary of information about the pipeline reprocessing.</p>
-- @return PipelineSummary structure as a key-value pair table
function M.PipelineSummary(args)
	assert(args, "You must provide an argument table when creating PipelineSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pipelineName"] = args["pipelineName"],
		["creationTime"] = args["creationTime"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["reprocessingSummaries"] = args["reprocessingSummaries"],
	}
	asserts.AssertPipelineSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetTrigger = { ["dataset"] = true, ["schedule"] = true, nil }

function asserts.AssertDatasetTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetTrigger to be of type 'table'")
	if struct["dataset"] then asserts.AssertTriggeringDataset(struct["dataset"]) end
	if struct["schedule"] then asserts.AssertSchedule(struct["schedule"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetTrigger[k], "DatasetTrigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetTrigger
-- <p>The "DatasetTrigger" that specifies when the data set is automatically updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataset [TriggeringDataset] <p>The data set whose content creation will trigger the creation of this data set's contents.</p>
-- * schedule [Schedule] <p>The "Schedule" when the trigger is initiated.</p>
-- @return DatasetTrigger structure as a key-value pair table
function M.DatasetTrigger(args)
	assert(args, "You must provide an argument table when creating DatasetTrigger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataset"] = args["dataset"],
		["schedule"] = args["schedule"],
	}
	asserts.AssertDatasetTrigger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerDatasetAction = { ["image"] = true, ["executionRoleArn"] = true, ["variables"] = true, ["resourceConfiguration"] = true, nil }

function asserts.AssertContainerDatasetAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerDatasetAction to be of type 'table'")
	assert(struct["image"], "Expected key image to exist in table")
	assert(struct["executionRoleArn"], "Expected key executionRoleArn to exist in table")
	assert(struct["resourceConfiguration"], "Expected key resourceConfiguration to exist in table")
	if struct["image"] then asserts.AssertImage(struct["image"]) end
	if struct["executionRoleArn"] then asserts.AssertRoleArn(struct["executionRoleArn"]) end
	if struct["variables"] then asserts.AssertVariables(struct["variables"]) end
	if struct["resourceConfiguration"] then asserts.AssertResourceConfiguration(struct["resourceConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerDatasetAction[k], "ContainerDatasetAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerDatasetAction
-- <p>Information needed to run the "containerAction" to produce data set contents.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * image [Image] <p>The ARN of the Docker container stored in your account. The Docker container contains an application and needed support libraries and is used to generate data set contents.</p>
-- * executionRoleArn [RoleArn] <p>The ARN of the role which gives permission to the system to access needed resources in order to run the "containerAction". This includes, at minimum, permission to retrieve the data set contents which are the input to the containerized application.</p>
-- * variables [Variables] <p>The values of variables used within the context of the execution of the containerized application (basically, parameters passed to the application). Each variable must have a name and a value given by one of "stringValue", "datasetContentVersionValue", or "outputFileUriValue".</p>
-- * resourceConfiguration [ResourceConfiguration] <p>Configuration of the resource which executes the "containerAction".</p>
-- Required key: image
-- Required key: executionRoleArn
-- Required key: resourceConfiguration
-- @return ContainerDatasetAction structure as a key-value pair table
function M.ContainerDatasetAction(args)
	assert(args, "You must provide an argument table when creating ContainerDatasetAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["image"] = args["image"],
		["executionRoleArn"] = args["executionRoleArn"],
		["variables"] = args["variables"],
		["resourceConfiguration"] = args["resourceConfiguration"],
	}
	asserts.AssertContainerDatasetAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SampleChannelDataRequest = { ["channelName"] = true, ["maxMessages"] = true, ["startTime"] = true, ["endTime"] = true, nil }

function asserts.AssertSampleChannelDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SampleChannelDataRequest to be of type 'table'")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["maxMessages"] then asserts.AssertMaxMessages(struct["maxMessages"]) end
	if struct["startTime"] then asserts.AssertStartTime(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertEndTime(struct["endTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.SampleChannelDataRequest[k], "SampleChannelDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SampleChannelDataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel whose message samples are retrieved.</p>
-- * maxMessages [MaxMessages] <p>The number of sample messages to be retrieved. The limit is 10, the default is also 10.</p>
-- * startTime [StartTime] <p>The start of the time window from which sample messages are retrieved.</p>
-- * endTime [EndTime] <p>The end of the time window from which sample messages are retrieved.</p>
-- Required key: channelName
-- @return SampleChannelDataRequest structure as a key-value pair table
function M.SampleChannelDataRequest(args)
	assert(args, "You must provide an argument table when creating SampleChannelDataRequest")
    local query_args = { 
        ["maxMessages"] = args["maxMessages"],
        ["startTime"] = args["startTime"],
        ["endTime"] = args["endTime"],
    }
    local uri_args = { 
        ["{channelName}"] = args["channelName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
		["maxMessages"] = args["maxMessages"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
	}
	asserts.AssertSampleChannelDataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunPipelineActivityResponse = { ["logResult"] = true, ["payloads"] = true, nil }

function asserts.AssertRunPipelineActivityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunPipelineActivityResponse to be of type 'table'")
	if struct["logResult"] then asserts.AssertLogResult(struct["logResult"]) end
	if struct["payloads"] then asserts.AssertMessagePayloads(struct["payloads"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunPipelineActivityResponse[k], "RunPipelineActivityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunPipelineActivityResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logResult [LogResult] <p>In case the pipeline activity fails, the log message that is generated.</p>
-- * payloads [MessagePayloads] <p>The enriched or transformed sample message payloads as base64-encoded strings. (The results of running the pipeline activity on each input sample message payload, encoded in base64.)</p>
-- @return RunPipelineActivityResponse structure as a key-value pair table
function M.RunPipelineActivityResponse(args)
	assert(args, "You must provide an argument table when creating RunPipelineActivityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logResult"] = args["logResult"],
		["payloads"] = args["payloads"],
	}
	asserts.AssertRunPipelineActivityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchPutMessageRequest = { ["channelName"] = true, ["messages"] = true, nil }

function asserts.AssertBatchPutMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchPutMessageRequest to be of type 'table'")
	assert(struct["channelName"], "Expected key channelName to exist in table")
	assert(struct["messages"], "Expected key messages to exist in table")
	if struct["channelName"] then asserts.AssertChannelName(struct["channelName"]) end
	if struct["messages"] then asserts.AssertMessages(struct["messages"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchPutMessageRequest[k], "BatchPutMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchPutMessageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * channelName [ChannelName] <p>The name of the channel where the messages are sent.</p>
-- * messages [Messages] <p>The list of messages to be sent. Each message has format: '{ "messageId": "string", "payload": "string"}'.</p>
-- Required key: channelName
-- Required key: messages
-- @return BatchPutMessageRequest structure as a key-value pair table
function M.BatchPutMessageRequest(args)
	assert(args, "You must provide an argument table when creating BatchPutMessageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["channelName"] = args["channelName"],
		["messages"] = args["messages"],
	}
	asserts.AssertBatchPutMessageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaActivity = { ["lambdaName"] = true, ["batchSize"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertLambdaActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["lambdaName"], "Expected key lambdaName to exist in table")
	assert(struct["batchSize"], "Expected key batchSize to exist in table")
	if struct["lambdaName"] then asserts.AssertLambdaName(struct["lambdaName"]) end
	if struct["batchSize"] then asserts.AssertActivityBatchSize(struct["batchSize"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaActivity[k], "LambdaActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaActivity
-- <p>An activity that runs a Lambda function to modify the message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lambdaName [LambdaName] <p>The name of the Lambda function that is run on the message.</p>
-- * batchSize [ActivityBatchSize] <p>The number of messages passed to the Lambda function for processing.</p> <p>The AWS Lambda function must be able to process all of these messages within five minutes, which is the maximum timeout duration for Lambda functions.</p>
-- * name [ActivityName] <p>The name of the 'lambda' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: lambdaName
-- Required key: batchSize
-- @return LambdaActivity structure as a key-value pair table
function M.LambdaActivity(args)
	assert(args, "You must provide an argument table when creating LambdaActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lambdaName"] = args["lambdaName"],
		["batchSize"] = args["batchSize"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertLambdaActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Dataset = { ["status"] = true, ["name"] = true, ["lastUpdateTime"] = true, ["triggers"] = true, ["creationTime"] = true, ["actions"] = true, ["retentionPeriod"] = true, ["arn"] = true, nil }

function asserts.AssertDataset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dataset to be of type 'table'")
	if struct["status"] then asserts.AssertDatasetStatus(struct["status"]) end
	if struct["name"] then asserts.AssertDatasetName(struct["name"]) end
	if struct["lastUpdateTime"] then asserts.AssertTimestamp(struct["lastUpdateTime"]) end
	if struct["triggers"] then asserts.AssertDatasetTriggers(struct["triggers"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["actions"] then asserts.AssertDatasetActions(struct["actions"]) end
	if struct["retentionPeriod"] then asserts.AssertRetentionPeriod(struct["retentionPeriod"]) end
	if struct["arn"] then asserts.AssertDatasetArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Dataset[k], "Dataset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dataset
-- <p>Information about a data set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [DatasetStatus] <p>The status of the data set.</p>
-- * name [DatasetName] <p>The name of the data set.</p>
-- * lastUpdateTime [Timestamp] <p>The last time the data set was updated.</p>
-- * triggers [DatasetTriggers] <p>The "DatasetTrigger" objects that specify when the data set is automatically updated.</p>
-- * creationTime [Timestamp] <p>When the data set was created.</p>
-- * actions [DatasetActions] <p>The "DatasetAction" objects that automatically create the data set contents.</p>
-- * retentionPeriod [RetentionPeriod] <p>[Optional] How long, in days, message data is kept for the data set.</p>
-- * arn [DatasetArn] <p>The ARN of the data set.</p>
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
		["status"] = args["status"],
		["name"] = args["name"],
		["lastUpdateTime"] = args["lastUpdateTime"],
		["triggers"] = args["triggers"],
		["creationTime"] = args["creationTime"],
		["actions"] = args["actions"],
		["retentionPeriod"] = args["retentionPeriod"],
		["arn"] = args["arn"],
	}
	asserts.AssertDataset(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDatastoresResponse = { ["nextToken"] = true, ["datastoreSummaries"] = true, nil }

function asserts.AssertListDatastoresResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDatastoresResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["datastoreSummaries"] then asserts.AssertDatastoreSummaries(struct["datastoreSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDatastoresResponse[k], "ListDatastoresResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDatastoresResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token to retrieve the next set of results, or <code>null</code> if there are no more results.</p>
-- * datastoreSummaries [DatastoreSummaries] <p>A list of "DatastoreSummary" objects.</p>
-- @return ListDatastoresResponse structure as a key-value pair table
function M.ListDatastoresResponse(args)
	assert(args, "You must provide an argument table when creating ListDatastoresResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["datastoreSummaries"] = args["datastoreSummaries"],
	}
	asserts.AssertListDatastoresResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatasetContentVersionValue = { ["datasetName"] = true, nil }

function asserts.AssertDatasetContentVersionValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatasetContentVersionValue to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatasetContentVersionValue[k], "DatasetContentVersionValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatasetContentVersionValue
-- <p>The data set whose latest contents will be used as input to the notebook or application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set whose latest contents will be used as input to the notebook or application.</p>
-- Required key: datasetName
-- @return DatasetContentVersionValue structure as a key-value pair table
function M.DatasetContentVersionValue(args)
	assert(args, "You must provide an argument table when creating DatasetContentVersionValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
	}
	asserts.AssertDatasetContentVersionValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAttributesActivity = { ["attributes"] = true, ["name"] = true, ["next"] = true, nil }

function asserts.AssertRemoveAttributesActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesActivity to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then asserts.AssertAttributeNames(struct["attributes"]) end
	if struct["name"] then asserts.AssertActivityName(struct["name"]) end
	if struct["next"] then asserts.AssertActivityName(struct["next"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAttributesActivity[k], "RemoveAttributesActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesActivity
-- <p>An activity that removes attributes from a message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [AttributeNames] <p>A list of 1-50 attributes to remove from the message.</p>
-- * name [ActivityName] <p>The name of the 'removeAttributes' activity.</p>
-- * next [ActivityName] <p>The next activity in the pipeline.</p>
-- Required key: name
-- Required key: attributes
-- @return RemoveAttributesActivity structure as a key-value pair table
function M.RemoveAttributesActivity(args)
	assert(args, "You must provide an argument table when creating RemoveAttributesActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["name"] = args["name"],
		["next"] = args["next"],
	}
	asserts.AssertRemoveAttributesActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatasetContentRequest = { ["datasetName"] = true, nil }

function asserts.AssertCreateDatasetContentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatasetContentRequest to be of type 'table'")
	assert(struct["datasetName"], "Expected key datasetName to exist in table")
	if struct["datasetName"] then asserts.AssertDatasetName(struct["datasetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatasetContentRequest[k], "CreateDatasetContentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatasetContentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * datasetName [DatasetName] <p>The name of the data set.</p>
-- Required key: datasetName
-- @return CreateDatasetContentRequest structure as a key-value pair table
function M.CreateDatasetContentRequest(args)
	assert(args, "You must provide an argument table when creating CreateDatasetContentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{datasetName}"] = args["datasetName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["datasetName"] = args["datasetName"],
	}
	asserts.AssertCreateDatasetContentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLoggingOptionsRequest = { ["loggingOptions"] = true, nil }

function asserts.AssertPutLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLoggingOptionsRequest to be of type 'table'")
	assert(struct["loggingOptions"], "Expected key loggingOptions to exist in table")
	if struct["loggingOptions"] then asserts.AssertLoggingOptions(struct["loggingOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLoggingOptionsRequest[k], "PutLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLoggingOptionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loggingOptions [LoggingOptions] <p>The new values of the AWS IoT Analytics logging options.</p>
-- Required key: loggingOptions
-- @return PutLoggingOptionsRequest structure as a key-value pair table
function M.PutLoggingOptionsRequest(args)
	assert(args, "You must provide an argument table when creating PutLoggingOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loggingOptions"] = args["loggingOptions"],
	}
	asserts.AssertPutLoggingOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDatasetActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetActionName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DatasetActionName(str)
	asserts.AssertDatasetActionName(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertTimeExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeExpression to be of type 'string'")
end

--  
function M.TimeExpression(str)
	asserts.AssertTimeExpression(str)
	return str
end

function asserts.AssertSqlQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected SqlQuery to be of type 'string'")
end

--  
function M.SqlQuery(str)
	asserts.AssertSqlQuery(str)
	return str
end

function asserts.AssertDatastoreArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DatastoreArn to be of type 'string'")
end

--  
function M.DatastoreArn(str)
	asserts.AssertDatastoreArn(str)
	return str
end

function asserts.AssertScheduleExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleExpression to be of type 'string'")
end

--  
function M.ScheduleExpression(str)
	asserts.AssertScheduleExpression(str)
	return str
end

function asserts.AssertMessageId(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MessageId(str)
	asserts.AssertMessageId(str)
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

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertChannelStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelStatus to be of type 'string'")
end

--  
function M.ChannelStatus(str)
	asserts.AssertChannelStatus(str)
	return str
end

function asserts.AssertReprocessingId(str)
	assert(str)
	assert(type(str) == "string", "Expected ReprocessingId to be of type 'string'")
end

--  
function M.ReprocessingId(str)
	asserts.AssertReprocessingId(str)
	return str
end

function asserts.AssertStringValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.StringValue(str)
	asserts.AssertStringValue(str)
	return str
end

function asserts.AssertChannelArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelArn to be of type 'string'")
end

--  
function M.ChannelArn(str)
	asserts.AssertChannelArn(str)
	return str
end

function asserts.AssertImage(str)
	assert(str)
	assert(type(str) == "string", "Expected Image to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Image(str)
	asserts.AssertImage(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertVariableName(str)
	assert(str)
	assert(type(str) == "string", "Expected VariableName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.VariableName(str)
	asserts.AssertVariableName(str)
	return str
end

function asserts.AssertDatasetActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetActionType to be of type 'string'")
end

--  
function M.DatasetActionType(str)
	asserts.AssertDatasetActionType(str)
	return str
end

function asserts.AssertDatasetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetStatus to be of type 'string'")
end

--  
function M.DatasetStatus(str)
	asserts.AssertDatasetStatus(str)
	return str
end

function asserts.AssertComputeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputeType to be of type 'string'")
end

--  
function M.ComputeType(str)
	asserts.AssertComputeType(str)
	return str
end

function asserts.AssertLogResult(str)
	assert(str)
	assert(type(str) == "string", "Expected LogResult to be of type 'string'")
end

--  
function M.LogResult(str)
	asserts.AssertLogResult(str)
	return str
end

function asserts.AssertFilterExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterExpression to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FilterExpression(str)
	asserts.AssertFilterExpression(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertReason(str)
	assert(str)
	assert(type(str) == "string", "Expected Reason to be of type 'string'")
end

--  
function M.Reason(str)
	asserts.AssertReason(str)
	return str
end

function asserts.AssertOutputFileName(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputFileName to be of type 'string'")
end

--  
function M.OutputFileName(str)
	asserts.AssertOutputFileName(str)
	return str
end

function asserts.AssertDatasetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetArn to be of type 'string'")
end

--  
function M.DatasetArn(str)
	asserts.AssertDatasetArn(str)
	return str
end

function asserts.AssertPresignedURI(str)
	assert(str)
	assert(type(str) == "string", "Expected PresignedURI to be of type 'string'")
end

--  
function M.PresignedURI(str)
	asserts.AssertPresignedURI(str)
	return str
end

function asserts.AssertActivityName(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActivityName(str)
	asserts.AssertActivityName(str)
	return str
end

function asserts.AssertEntryName(str)
	assert(str)
	assert(type(str) == "string", "Expected EntryName to be of type 'string'")
end

--  
function M.EntryName(str)
	asserts.AssertEntryName(str)
	return str
end

function asserts.AssertDatasetContentVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetContentVersion to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 7, "Expected string to be min 7 characters")
end

--  
function M.DatasetContentVersion(str)
	asserts.AssertDatasetContentVersion(str)
	return str
end

function asserts.AssertDatastoreStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DatastoreStatus to be of type 'string'")
end

--  
function M.DatastoreStatus(str)
	asserts.AssertDatastoreStatus(str)
	return str
end

function asserts.AssertReprocessingStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReprocessingStatus to be of type 'string'")
end

--  
function M.ReprocessingStatus(str)
	asserts.AssertReprocessingStatus(str)
	return str
end

function asserts.AssertPipelineArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineArn to be of type 'string'")
end

--  
function M.PipelineArn(str)
	asserts.AssertPipelineArn(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertMathExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected MathExpression to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MathExpression(str)
	asserts.AssertMathExpression(str)
	return str
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

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertLoggingLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggingLevel to be of type 'string'")
end

--  
function M.LoggingLevel(str)
	asserts.AssertLoggingLevel(str)
	return str
end

function asserts.AssertLambdaName(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LambdaName(str)
	asserts.AssertLambdaName(str)
	return str
end

function asserts.AssertDatastoreName(str)
	assert(str)
	assert(type(str) == "string", "Expected DatastoreName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DatastoreName(str)
	asserts.AssertDatastoreName(str)
	return str
end

function asserts.AssertDatasetContentState(str)
	assert(str)
	assert(type(str) == "string", "Expected DatasetContentState to be of type 'string'")
end

--  
function M.DatasetContentState(str)
	asserts.AssertDatasetContentState(str)
	return str
end

function asserts.AssertChannelName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChannelName(str)
	asserts.AssertChannelName(str)
	return str
end

function asserts.AssertPipelineName(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PipelineName(str)
	asserts.AssertPipelineName(str)
	return str
end

function asserts.AssertDoubleValue(double)
	assert(double)
	assert(type(double) == "number", "Expected DoubleValue to be of type 'number'")
end

function M.DoubleValue(double)
	asserts.AssertDoubleValue(double)
	return double
end

function asserts.AssertSizeInBytes(double)
	assert(double)
	assert(type(double) == "number", "Expected SizeInBytes to be of type 'number'")
end

function M.SizeInBytes(double)
	asserts.AssertSizeInBytes(double)
	return double
end

function asserts.AssertActivityBatchSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ActivityBatchSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ActivityBatchSize(integer)
	asserts.AssertActivityBatchSize(integer)
	return integer
end

function asserts.AssertRetentionPeriodInDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RetentionPeriodInDays to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RetentionPeriodInDays(integer)
	asserts.AssertRetentionPeriodInDays(integer)
	return integer
end

function asserts.AssertVolumeSizeInGB(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected VolumeSizeInGB to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.VolumeSizeInGB(integer)
	asserts.AssertVolumeSizeInGB(integer)
	return integer
end

function asserts.AssertMaxMessages(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxMessages to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxMessages(integer)
	asserts.AssertMaxMessages(integer)
	return integer
end

function asserts.AssertOffsetSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OffsetSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.OffsetSeconds(integer)
	asserts.AssertOffsetSeconds(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertIncludeStatisticsFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeStatisticsFlag to be of type 'boolean'")
end

function M.IncludeStatisticsFlag(boolean)
	asserts.AssertIncludeStatisticsFlag(boolean)
	return boolean
end

function asserts.AssertUnlimitedRetentionPeriod(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UnlimitedRetentionPeriod to be of type 'boolean'")
end

function M.UnlimitedRetentionPeriod(boolean)
	asserts.AssertUnlimitedRetentionPeriod(boolean)
	return boolean
end

function asserts.AssertLoggingEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected LoggingEnabled to be of type 'boolean'")
end

function M.LoggingEnabled(boolean)
	asserts.AssertLoggingEnabled(boolean)
	return boolean
end

function asserts.AssertAttributeNameMapping(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeNameMapping to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeName(v)
	end
end

function M.AttributeNameMapping(map)
	asserts.AssertAttributeNameMapping(map)
	return map
end

function asserts.AssertStartTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected StartTime to be of type 'string'")
end

function M.StartTime(timestamp)
	asserts.AssertStartTime(timestamp)
	return timestamp
end

function asserts.AssertEndTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EndTime to be of type 'string'")
end

function M.EndTime(timestamp)
	asserts.AssertEndTime(timestamp)
	return timestamp
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertMessagePayload(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected MessagePayload to be of type 'string'")
end

function M.MessagePayload(blob)
	asserts.AssertMessagePayload(blob)
	return blob
end

function asserts.AssertPipelineActivities(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineActivities to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPipelineActivity(v)
	end
end

--  
-- List of PipelineActivity objects
function M.PipelineActivities(list)
	asserts.AssertPipelineActivities(list)
	return list
end

function asserts.AssertAttributeNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNames to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.AttributeNames(list)
	asserts.AssertAttributeNames(list)
	return list
end

function asserts.AssertDatasetActionSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetActionSummaries to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDatasetActionSummary(v)
	end
end

--  
-- List of DatasetActionSummary objects
function M.DatasetActionSummaries(list)
	asserts.AssertDatasetActionSummaries(list)
	return list
end

function asserts.AssertMessagePayloads(list)
	assert(list)
	assert(type(list) == "table", "Expected MessagePayloads to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMessagePayload(v)
	end
end

--  
-- List of MessagePayload objects
function M.MessagePayloads(list)
	asserts.AssertMessagePayloads(list)
	return list
end

function asserts.AssertMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected Messages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessage(v)
	end
end

--  
-- List of Message objects
function M.Messages(list)
	asserts.AssertMessages(list)
	return list
end

function asserts.AssertReprocessingSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ReprocessingSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReprocessingSummary(v)
	end
end

--  
-- List of ReprocessingSummary objects
function M.ReprocessingSummaries(list)
	asserts.AssertReprocessingSummaries(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertBatchPutMessageErrorEntries(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchPutMessageErrorEntries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchPutMessageErrorEntry(v)
	end
end

--  
-- List of BatchPutMessageErrorEntry objects
function M.BatchPutMessageErrorEntries(list)
	asserts.AssertBatchPutMessageErrorEntries(list)
	return list
end

function asserts.AssertChannelSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ChannelSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChannelSummary(v)
	end
end

--  
-- List of ChannelSummary objects
function M.ChannelSummaries(list)
	asserts.AssertChannelSummaries(list)
	return list
end

function asserts.AssertQueryFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryFilters to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertQueryFilter(v)
	end
end

--  
-- List of QueryFilter objects
function M.QueryFilters(list)
	asserts.AssertQueryFilters(list)
	return list
end

function asserts.AssertDatasetTriggers(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetTriggers to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertDatasetTrigger(v)
	end
end

--  
-- List of DatasetTrigger objects
function M.DatasetTriggers(list)
	asserts.AssertDatasetTriggers(list)
	return list
end

function asserts.AssertPipelineSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected PipelineSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPipelineSummary(v)
	end
end

--  
-- List of PipelineSummary objects
function M.PipelineSummaries(list)
	asserts.AssertPipelineSummaries(list)
	return list
end

function asserts.AssertDatasetContentSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetContentSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatasetContentSummary(v)
	end
end

--  
-- List of DatasetContentSummary objects
function M.DatasetContentSummaries(list)
	asserts.AssertDatasetContentSummaries(list)
	return list
end

function asserts.AssertDatasetActions(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetActions to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDatasetAction(v)
	end
end

--  
-- List of DatasetAction objects
function M.DatasetActions(list)
	asserts.AssertDatasetActions(list)
	return list
end

function asserts.AssertDatasetEntries(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetEntries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatasetEntry(v)
	end
end

--  
-- List of DatasetEntry objects
function M.DatasetEntries(list)
	asserts.AssertDatasetEntries(list)
	return list
end

function asserts.AssertDatasetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected DatasetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatasetSummary(v)
	end
end

--  
-- List of DatasetSummary objects
function M.DatasetSummaries(list)
	asserts.AssertDatasetSummaries(list)
	return list
end

function asserts.AssertVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected Variables to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertVariable(v)
	end
end

--  
-- List of Variable objects
function M.Variables(list)
	asserts.AssertVariables(list)
	return list
end

function asserts.AssertDatastoreSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected DatastoreSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatastoreSummary(v)
	end
end

--  
-- List of DatastoreSummary objects
function M.DatastoreSummaries(list)
	asserts.AssertDatastoreSummaries(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "iotanalytics.amazonaws.com"
		end
	end
	local ss = { "iotanalytics" }
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
--- Call DeleteChannel asynchronously, invoking a callback when done
-- @param DeleteChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteChannelAsync(DeleteChannelRequest, cb)
	assert(DeleteChannelRequest, "You must provide a DeleteChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteChannel",
	}
	for header,value in pairs(DeleteChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/channels/{channelName}", DeleteChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteChannelSync(DeleteChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteChannelAsync(DeleteChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateChannel asynchronously, invoking a callback when done
-- @param UpdateChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateChannelAsync(UpdateChannelRequest, cb)
	assert(UpdateChannelRequest, "You must provide a UpdateChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateChannel",
	}
	for header,value in pairs(UpdateChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/channels/{channelName}", UpdateChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateChannelSync(UpdateChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateChannelAsync(UpdateChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelPipelineReprocessing asynchronously, invoking a callback when done
-- @param CancelPipelineReprocessingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelPipelineReprocessingAsync(CancelPipelineReprocessingRequest, cb)
	assert(CancelPipelineReprocessingRequest, "You must provide a CancelPipelineReprocessingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelPipelineReprocessing",
	}
	for header,value in pairs(CancelPipelineReprocessingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", CancelPipelineReprocessingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelPipelineReprocessing synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelPipelineReprocessingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelPipelineReprocessingSync(CancelPipelineReprocessingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelPipelineReprocessingAsync(CancelPipelineReprocessingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchPutMessage asynchronously, invoking a callback when done
-- @param BatchPutMessageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchPutMessageAsync(BatchPutMessageRequest, cb)
	assert(BatchPutMessageRequest, "You must provide a BatchPutMessageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchPutMessage",
	}
	for header,value in pairs(BatchPutMessageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/messages/batch", BatchPutMessageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchPutMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchPutMessageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchPutMessageSync(BatchPutMessageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchPutMessageAsync(BatchPutMessageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateChannel asynchronously, invoking a callback when done
-- @param CreateChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateChannelAsync(CreateChannelRequest, cb)
	assert(CreateChannelRequest, "You must provide a CreateChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateChannel",
	}
	for header,value in pairs(CreateChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/channels", CreateChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateChannelSync(CreateChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateChannelAsync(CreateChannelRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/datasets/{datasetName}", DeleteDatasetRequest, headers, settings, cb)
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

--- Call DescribeLoggingOptions asynchronously, invoking a callback when done
-- @param DescribeLoggingOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoggingOptionsAsync(DescribeLoggingOptionsRequest, cb)
	assert(DescribeLoggingOptionsRequest, "You must provide a DescribeLoggingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoggingOptions",
	}
	for header,value in pairs(DescribeLoggingOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/logging", DescribeLoggingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoggingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoggingOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLoggingOptionsSync(DescribeLoggingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoggingOptionsAsync(DescribeLoggingOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RunPipelineActivity asynchronously, invoking a callback when done
-- @param RunPipelineActivityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RunPipelineActivityAsync(RunPipelineActivityRequest, cb)
	assert(RunPipelineActivityRequest, "You must provide a RunPipelineActivityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RunPipelineActivity",
	}
	for header,value in pairs(RunPipelineActivityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/pipelineactivities/run", RunPipelineActivityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RunPipelineActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RunPipelineActivityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RunPipelineActivitySync(RunPipelineActivityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RunPipelineActivityAsync(RunPipelineActivityRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/datasets", ListDatasetsRequest, headers, settings, cb)
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

--- Call CreateDatastore asynchronously, invoking a callback when done
-- @param CreateDatastoreRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDatastoreAsync(CreateDatastoreRequest, cb)
	assert(CreateDatastoreRequest, "You must provide a CreateDatastoreRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDatastore",
	}
	for header,value in pairs(CreateDatastoreRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/datastores", CreateDatastoreRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDatastore synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDatastoreRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDatastoreSync(CreateDatastoreRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDatastoreAsync(CreateDatastoreRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDatasetContent asynchronously, invoking a callback when done
-- @param GetDatasetContentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDatasetContentAsync(GetDatasetContentRequest, cb)
	assert(GetDatasetContentRequest, "You must provide a GetDatasetContentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDatasetContent",
	}
	for header,value in pairs(GetDatasetContentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/datasets/{datasetName}/content", GetDatasetContentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDatasetContent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDatasetContentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDatasetContentSync(GetDatasetContentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDatasetContentAsync(GetDatasetContentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartPipelineReprocessing asynchronously, invoking a callback when done
-- @param StartPipelineReprocessingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartPipelineReprocessingAsync(StartPipelineReprocessingRequest, cb)
	assert(StartPipelineReprocessingRequest, "You must provide a StartPipelineReprocessingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartPipelineReprocessing",
	}
	for header,value in pairs(StartPipelineReprocessingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/pipelines/{pipelineName}/reprocessing", StartPipelineReprocessingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartPipelineReprocessing synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartPipelineReprocessingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartPipelineReprocessingSync(StartPipelineReprocessingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartPipelineReprocessingAsync(StartPipelineReprocessingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SampleChannelData asynchronously, invoking a callback when done
-- @param SampleChannelDataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SampleChannelDataAsync(SampleChannelDataRequest, cb)
	assert(SampleChannelDataRequest, "You must provide a SampleChannelDataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SampleChannelData",
	}
	for header,value in pairs(SampleChannelDataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/channels/{channelName}/sample", SampleChannelDataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SampleChannelData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SampleChannelDataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SampleChannelDataSync(SampleChannelDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SampleChannelDataAsync(SampleChannelDataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePipeline asynchronously, invoking a callback when done
-- @param DeletePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePipelineAsync(DeletePipelineRequest, cb)
	assert(DeletePipelineRequest, "You must provide a DeletePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePipeline",
	}
	for header,value in pairs(DeletePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/pipelines/{pipelineName}", DeletePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePipelineSync(DeletePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePipelineAsync(DeletePipelineRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/datasets/{datasetName}", DescribeDatasetRequest, headers, settings, cb)
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

--- Call DeleteDatastore asynchronously, invoking a callback when done
-- @param DeleteDatastoreRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDatastoreAsync(DeleteDatastoreRequest, cb)
	assert(DeleteDatastoreRequest, "You must provide a DeleteDatastoreRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDatastore",
	}
	for header,value in pairs(DeleteDatastoreRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/datastores/{datastoreName}", DeleteDatastoreRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDatastore synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDatastoreRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDatastoreSync(DeleteDatastoreRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDatastoreAsync(DeleteDatastoreRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDatastores asynchronously, invoking a callback when done
-- @param ListDatastoresRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDatastoresAsync(ListDatastoresRequest, cb)
	assert(ListDatastoresRequest, "You must provide a ListDatastoresRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDatastores",
	}
	for header,value in pairs(ListDatastoresRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/datastores", ListDatastoresRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDatastores synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDatastoresRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDatastoresSync(ListDatastoresRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDatastoresAsync(ListDatastoresRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataset asynchronously, invoking a callback when done
-- @param CreateDatasetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDatasetAsync(CreateDatasetRequest, cb)
	assert(CreateDatasetRequest, "You must provide a CreateDatasetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDataset",
	}
	for header,value in pairs(CreateDatasetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/datasets", CreateDatasetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDataset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDatasetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDatasetSync(CreateDatasetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDatasetAsync(CreateDatasetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/tags", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeChannel asynchronously, invoking a callback when done
-- @param DescribeChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeChannelAsync(DescribeChannelRequest, cb)
	assert(DescribeChannelRequest, "You must provide a DescribeChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeChannel",
	}
	for header,value in pairs(DescribeChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/channels/{channelName}", DescribeChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeChannelSync(DescribeChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeChannelAsync(DescribeChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDatastore asynchronously, invoking a callback when done
-- @param UpdateDatastoreRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDatastoreAsync(UpdateDatastoreRequest, cb)
	assert(UpdateDatastoreRequest, "You must provide a UpdateDatastoreRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDatastore",
	}
	for header,value in pairs(UpdateDatastoreRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/datastores/{datastoreName}", UpdateDatastoreRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDatastore synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDatastoreRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDatastoreSync(UpdateDatastoreRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDatastoreAsync(UpdateDatastoreRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDatasetContents asynchronously, invoking a callback when done
-- @param ListDatasetContentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDatasetContentsAsync(ListDatasetContentsRequest, cb)
	assert(ListDatasetContentsRequest, "You must provide a ListDatasetContentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDatasetContents",
	}
	for header,value in pairs(ListDatasetContentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/datasets/{datasetName}/contents", ListDatasetContentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDatasetContents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDatasetContentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDatasetContentsSync(ListDatasetContentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDatasetContentsAsync(ListDatasetContentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPipelines asynchronously, invoking a callback when done
-- @param ListPipelinesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPipelinesAsync(ListPipelinesRequest, cb)
	assert(ListPipelinesRequest, "You must provide a ListPipelinesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPipelines",
	}
	for header,value in pairs(ListPipelinesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/pipelines", ListPipelinesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPipelines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPipelinesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPipelinesSync(ListPipelinesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPipelinesAsync(ListPipelinesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePipeline asynchronously, invoking a callback when done
-- @param DescribePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePipelineAsync(DescribePipelineRequest, cb)
	assert(DescribePipelineRequest, "You must provide a DescribePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePipeline",
	}
	for header,value in pairs(DescribePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/pipelines/{pipelineName}", DescribePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePipelineSync(DescribePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePipelineAsync(DescribePipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLoggingOptions asynchronously, invoking a callback when done
-- @param PutLoggingOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLoggingOptionsAsync(PutLoggingOptionsRequest, cb)
	assert(PutLoggingOptionsRequest, "You must provide a PutLoggingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutLoggingOptions",
	}
	for header,value in pairs(PutLoggingOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/logging", PutLoggingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLoggingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLoggingOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutLoggingOptionsSync(PutLoggingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLoggingOptionsAsync(PutLoggingOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDatastore asynchronously, invoking a callback when done
-- @param DescribeDatastoreRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDatastoreAsync(DescribeDatastoreRequest, cb)
	assert(DescribeDatastoreRequest, "You must provide a DescribeDatastoreRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDatastore",
	}
	for header,value in pairs(DescribeDatastoreRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/datastores/{datastoreName}", DescribeDatastoreRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDatastore synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDatastoreRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDatastoreSync(DescribeDatastoreRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDatastoreAsync(DescribeDatastoreRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePipeline asynchronously, invoking a callback when done
-- @param CreatePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePipelineAsync(CreatePipelineRequest, cb)
	assert(CreatePipelineRequest, "You must provide a CreatePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePipeline",
	}
	for header,value in pairs(CreatePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/pipelines", CreatePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePipelineSync(CreatePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePipelineAsync(CreatePipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/tags", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListChannels asynchronously, invoking a callback when done
-- @param ListChannelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListChannelsAsync(ListChannelsRequest, cb)
	assert(ListChannelsRequest, "You must provide a ListChannelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListChannels",
	}
	for header,value in pairs(ListChannelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/channels", ListChannelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListChannels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListChannelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListChannelsSync(ListChannelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListChannelsAsync(ListChannelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDataset asynchronously, invoking a callback when done
-- @param UpdateDatasetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDatasetAsync(UpdateDatasetRequest, cb)
	assert(UpdateDatasetRequest, "You must provide a UpdateDatasetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDataset",
	}
	for header,value in pairs(UpdateDatasetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/datasets/{datasetName}", UpdateDatasetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDataset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDatasetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDatasetSync(UpdateDatasetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDatasetAsync(UpdateDatasetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePipeline asynchronously, invoking a callback when done
-- @param UpdatePipelineRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePipelineAsync(UpdatePipelineRequest, cb)
	assert(UpdatePipelineRequest, "You must provide a UpdatePipelineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePipeline",
	}
	for header,value in pairs(UpdatePipelineRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/pipelines/{pipelineName}", UpdatePipelineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePipeline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePipelineRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePipelineSync(UpdatePipelineRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePipelineAsync(UpdatePipelineRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDatasetContent asynchronously, invoking a callback when done
-- @param DeleteDatasetContentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDatasetContentAsync(DeleteDatasetContentRequest, cb)
	assert(DeleteDatasetContentRequest, "You must provide a DeleteDatasetContentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDatasetContent",
	}
	for header,value in pairs(DeleteDatasetContentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/datasets/{datasetName}/content", DeleteDatasetContentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDatasetContent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDatasetContentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDatasetContentSync(DeleteDatasetContentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDatasetContentAsync(DeleteDatasetContentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/tags", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDatasetContent asynchronously, invoking a callback when done
-- @param CreateDatasetContentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDatasetContentAsync(CreateDatasetContentRequest, cb)
	assert(CreateDatasetContentRequest, "You must provide a CreateDatasetContentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDatasetContent",
	}
	for header,value in pairs(CreateDatasetContentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/datasets/{datasetName}/content", CreateDatasetContentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDatasetContent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDatasetContentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDatasetContentSync(CreateDatasetContentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDatasetContentAsync(CreateDatasetContentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
