--- GENERATED CODE - DO NOT MODIFY
-- AWS Storage Gateway (storagegateway-2013-06-30)

local M = {}

M.metadata = {
	api_version = "2013-06-30",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "storagegateway",
	service_abbreviation = "",
	service_full_name = "AWS Storage Gateway",
	signature_version = "v4",
	target_prefix = "StorageGateway_20130630",
	timestamp_format = "",
	global_endpoint = "",
	uid = "storagegateway-2013-06-30",
}

local keys = {}
local asserts = {}

keys.StorageGatewayError = { ["errorCode"] = true, ["errorDetails"] = true, nil }

function asserts.AssertStorageGatewayError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageGatewayError to be of type 'table'")
	if struct["errorCode"] then asserts.AssertErrorCode(struct["errorCode"]) end
	if struct["errorDetails"] then asserts.AsserterrorDetails(struct["errorDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageGatewayError[k], "StorageGatewayError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageGatewayError
-- <p>Provides additional information about an error that was returned by the service as an or. See the <code>errorCode</code> and <code>errorDetails</code> members for more information about the error.</p>
-- @param _errorCode [ErrorCode] <p>Additional information about the error.</p>
-- @param _errorDetails [errorDetails] <p>Human-readable text that provides detail about the error that occurred.</p>
function M.StorageGatewayError(_errorCode, _errorDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageGatewayError")
	local t = { 
		["errorCode"] = _errorCode,
		["errorDetails"] = _errorDetails,
	}
	asserts.AssertStorageGatewayError(t)
	return t
end

keys.ResetCacheInput = { ["GatewayARN"] = true, nil }

function asserts.AssertResetCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetCacheInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetCacheInput[k], "ResetCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetCacheInput
--  
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.ResetCacheInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetCacheInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertResetCacheInput(t)
	return t
end

keys.ShutdownGatewayOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertShutdownGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShutdownGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShutdownGatewayOutput[k], "ShutdownGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShutdownGatewayOutput
-- <p>A JSON object containing the of the gateway that was shut down.</p>
-- @param _GatewayARN [GatewayARN] 
function M.ShutdownGatewayOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShutdownGatewayOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertShutdownGatewayOutput(t)
	return t
end

keys.StorediSCSIVolume = { ["VolumeSizeInBytes"] = true, ["VolumeProgress"] = true, ["VolumeDiskId"] = true, ["PreservedExistingData"] = true, ["VolumeiSCSIAttributes"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["SourceSnapshotId"] = true, ["VolumeARN"] = true, ["CreatedDate"] = true, ["VolumeStatus"] = true, nil }

function asserts.AssertStorediSCSIVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorediSCSIVolume to be of type 'table'")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeProgress"] then asserts.AssertDoubleObject(struct["VolumeProgress"]) end
	if struct["VolumeDiskId"] then asserts.AssertDiskId(struct["VolumeDiskId"]) end
	if struct["PreservedExistingData"] then asserts.Assertboolean(struct["PreservedExistingData"]) end
	if struct["VolumeiSCSIAttributes"] then asserts.AssertVolumeiSCSIAttributes(struct["VolumeiSCSIAttributes"]) end
	if struct["VolumeType"] then asserts.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then asserts.AssertVolumeId(struct["VolumeId"]) end
	if struct["SourceSnapshotId"] then asserts.AssertSnapshotId(struct["SourceSnapshotId"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["VolumeStatus"] then asserts.AssertVolumeStatus(struct["VolumeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorediSCSIVolume[k], "StorediSCSIVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorediSCSIVolume
-- <p>Describes an iSCSI stored volume.</p>
-- @param _VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- @param _VolumeProgress [DoubleObject] <p>Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the stored volume is not restoring or bootstrapping.</p>
-- @param _VolumeDiskId [DiskId] <p>The ID of the local disk that was specified in the <a>CreateStorediSCSIVolume</a> operation.</p>
-- @param _PreservedExistingData [boolean] <p>Indicates if when the stored volume was created, existing data on the underlying local disk was preserved.</p> <p> Valid Values: true, false</p>
-- @param _VolumeiSCSIAttributes [VolumeiSCSIAttributes] <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI attributes for one stored volume.</p>
-- @param _VolumeType [VolumeType] <p>One of the VolumeType enumeration values describing the type of the volume.</p>
-- @param _VolumeId [VolumeId] <p>The unique identifier of the volume, e.g. vol-AE4B946D.</p>
-- @param _SourceSnapshotId [SnapshotId] <p>If the stored volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume.</p>
-- @param _CreatedDate [CreatedDate] <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.</p>
-- @param _VolumeStatus [VolumeStatus] <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
function M.StorediSCSIVolume(_VolumeSizeInBytes, _VolumeProgress, _VolumeDiskId, _PreservedExistingData, _VolumeiSCSIAttributes, _VolumeType, _VolumeId, _SourceSnapshotId, _VolumeARN, _CreatedDate, _VolumeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorediSCSIVolume")
	local t = { 
		["VolumeSizeInBytes"] = _VolumeSizeInBytes,
		["VolumeProgress"] = _VolumeProgress,
		["VolumeDiskId"] = _VolumeDiskId,
		["PreservedExistingData"] = _PreservedExistingData,
		["VolumeiSCSIAttributes"] = _VolumeiSCSIAttributes,
		["VolumeType"] = _VolumeType,
		["VolumeId"] = _VolumeId,
		["SourceSnapshotId"] = _SourceSnapshotId,
		["VolumeARN"] = _VolumeARN,
		["CreatedDate"] = _CreatedDate,
		["VolumeStatus"] = _VolumeStatus,
	}
	asserts.AssertStorediSCSIVolume(t)
	return t
end

keys.CancelRetrievalOutput = { ["TapeARN"] = true, nil }

function asserts.AssertCancelRetrievalOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelRetrievalOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelRetrievalOutput[k], "CancelRetrievalOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelRetrievalOutput
-- <p>CancelRetrievalOutput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which retrieval was canceled.</p>
function M.CancelRetrievalOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelRetrievalOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertCancelRetrievalOutput(t)
	return t
end

keys.DeleteTapeInput = { ["GatewayARN"] = true, ["TapeARN"] = true, nil }

function asserts.AssertDeleteTapeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTapeInput[k], "DeleteTapeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeInput
-- <p>DeleteTapeInput</p>
-- @param _GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is associated with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeARN
function M.DeleteTapeInput(_GatewayARN, _TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertDeleteTapeInput(t)
	return t
end

keys.DescribeTapeRecoveryPointsInput = { ["Marker"] = true, ["GatewayARN"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeTapeRecoveryPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeRecoveryPointsInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTapeRecoveryPointsInput[k], "DescribeTapeRecoveryPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeRecoveryPointsInput
-- <p>DescribeTapeRecoveryPointsInput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which to begin describing the virtual tape recovery points.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _Limit [PositiveIntObject] <p>Specifies that the number of virtual tape recovery points that are described be limited to the specified number.</p>
-- Required parameter: GatewayARN
function M.DescribeTapeRecoveryPointsInput(_Marker, _GatewayARN, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeRecoveryPointsInput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeTapeRecoveryPointsInput(t)
	return t
end

keys.CachediSCSIVolume = { ["VolumeSizeInBytes"] = true, ["VolumeProgress"] = true, ["VolumeiSCSIAttributes"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["SourceSnapshotId"] = true, ["VolumeARN"] = true, ["CreatedDate"] = true, ["VolumeStatus"] = true, nil }

function asserts.AssertCachediSCSIVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CachediSCSIVolume to be of type 'table'")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeProgress"] then asserts.AssertDoubleObject(struct["VolumeProgress"]) end
	if struct["VolumeiSCSIAttributes"] then asserts.AssertVolumeiSCSIAttributes(struct["VolumeiSCSIAttributes"]) end
	if struct["VolumeType"] then asserts.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then asserts.AssertVolumeId(struct["VolumeId"]) end
	if struct["SourceSnapshotId"] then asserts.AssertSnapshotId(struct["SourceSnapshotId"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["VolumeStatus"] then asserts.AssertVolumeStatus(struct["VolumeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CachediSCSIVolume[k], "CachediSCSIVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CachediSCSIVolume
-- <p>Describes an iSCSI cached volume.</p>
-- @param _VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- @param _VolumeProgress [DoubleObject] <p>Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the cached volume is not restoring or bootstrapping.</p>
-- @param _VolumeiSCSIAttributes [VolumeiSCSIAttributes] <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI attributes for one stored volume.</p>
-- @param _VolumeType [VolumeType] <p>One of the VolumeType enumeration values that describes the type of the volume.</p>
-- @param _VolumeId [VolumeId] <p>The unique identifier of the volume, e.g. vol-AE4B946D.</p>
-- @param _SourceSnapshotId [SnapshotId] <p>If the cached volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume.</p>
-- @param _CreatedDate [CreatedDate] <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.</p>
-- @param _VolumeStatus [VolumeStatus] <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
function M.CachediSCSIVolume(_VolumeSizeInBytes, _VolumeProgress, _VolumeiSCSIAttributes, _VolumeType, _VolumeId, _SourceSnapshotId, _VolumeARN, _CreatedDate, _VolumeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CachediSCSIVolume")
	local t = { 
		["VolumeSizeInBytes"] = _VolumeSizeInBytes,
		["VolumeProgress"] = _VolumeProgress,
		["VolumeiSCSIAttributes"] = _VolumeiSCSIAttributes,
		["VolumeType"] = _VolumeType,
		["VolumeId"] = _VolumeId,
		["SourceSnapshotId"] = _SourceSnapshotId,
		["VolumeARN"] = _VolumeARN,
		["CreatedDate"] = _CreatedDate,
		["VolumeStatus"] = _VolumeStatus,
	}
	asserts.AssertCachediSCSIVolume(t)
	return t
end

keys.DeleteBandwidthRateLimitInput = { ["GatewayARN"] = true, ["BandwidthType"] = true, nil }

function asserts.AssertDeleteBandwidthRateLimitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBandwidthRateLimitInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["BandwidthType"], "Expected key BandwidthType to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["BandwidthType"] then asserts.AssertBandwidthType(struct["BandwidthType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBandwidthRateLimitInput[k], "DeleteBandwidthRateLimitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBandwidthRateLimitInput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DeleteBandwidthRateLimitInput$BandwidthType</a> </p> </li> </ul>
-- @param _GatewayARN [GatewayARN] 
-- @param _BandwidthType [BandwidthType] <p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to delete.</p> <p>Valid Values: <code>Upload</code>, <code>Download</code>, <code>All</code>.</p>
-- Required parameter: GatewayARN
-- Required parameter: BandwidthType
function M.DeleteBandwidthRateLimitInput(_GatewayARN, _BandwidthType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBandwidthRateLimitInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["BandwidthType"] = _BandwidthType,
	}
	asserts.AssertDeleteBandwidthRateLimitInput(t)
	return t
end

keys.CreateTapesInput = { ["GatewayARN"] = true, ["TapeBarcodePrefix"] = true, ["TapeSizeInBytes"] = true, ["NumTapesToCreate"] = true, ["ClientToken"] = true, nil }

function asserts.AssertCreateTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeSizeInBytes"], "Expected key TapeSizeInBytes to exist in table")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	assert(struct["NumTapesToCreate"], "Expected key NumTapesToCreate to exist in table")
	assert(struct["TapeBarcodePrefix"], "Expected key TapeBarcodePrefix to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeBarcodePrefix"] then asserts.AssertTapeBarcodePrefix(struct["TapeBarcodePrefix"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["NumTapesToCreate"] then asserts.AssertNumTapesToCreate(struct["NumTapesToCreate"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTapesInput[k], "CreateTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapesInput
-- <p>CreateTapesInput</p>
-- @param _GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tapes with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param _TapeBarcodePrefix [TapeBarcodePrefix] <p>A prefix that you append to the barcode of the virtual tape you are creating. This prefix makes the barcode unique.</p> <note> <p>The prefix must be 1 to 4 characters in length and must be one of the uppercase letters from A to Z.</p> </note>
-- @param _TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tapes that you want to create.</p> <note> <p>The size must be aligned by gigabyte (1024*1024*1024 byte).</p> </note>
-- @param _NumTapesToCreate [NumTapesToCreate] <p>The number of virtual tapes that you want to create.</p>
-- @param _ClientToken [ClientToken] <p>A unique identifier that you use to retry a request. If you retry a request, use the same <code>ClientToken</code> you specified in the initial request.</p> <note> <p>Using the same <code>ClientToken</code> prevents creating the tape multiple times.</p> </note>
-- Required parameter: GatewayARN
-- Required parameter: TapeSizeInBytes
-- Required parameter: ClientToken
-- Required parameter: NumTapesToCreate
-- Required parameter: TapeBarcodePrefix
function M.CreateTapesInput(_GatewayARN, _TapeBarcodePrefix, _TapeSizeInBytes, _NumTapesToCreate, _ClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapesInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeBarcodePrefix"] = _TapeBarcodePrefix,
		["TapeSizeInBytes"] = _TapeSizeInBytes,
		["NumTapesToCreate"] = _NumTapesToCreate,
		["ClientToken"] = _ClientToken,
	}
	asserts.AssertCreateTapesInput(t)
	return t
end

keys.RemoveTagsFromResourceInput = { ["ResourceARN"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceInput[k], "RemoveTagsFromResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceInput
-- <p>RemoveTagsFromResourceInput</p>
-- @param _ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>
-- @param _TagKeys [TagKeys] <p>The keys of the tags you want to remove from the specified resource. A tag is composed of a key/value pair.</p>
-- Required parameter: ResourceARN
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceInput(_ResourceARN, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceInput")
	local t = { 
		["ResourceARN"] = _ResourceARN,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertRemoveTagsFromResourceInput(t)
	return t
end

keys.DeleteFileShareInput = { ["FileShareARN"] = true, nil }

function asserts.AssertDeleteFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFileShareInput[k], "DeleteFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileShareInput
-- <p>DeleteFileShareInput</p>
-- @param _FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the file share to be deleted. </p>
-- Required parameter: FileShareARN
function M.DeleteFileShareInput(_FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFileShareInput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
	}
	asserts.AssertDeleteFileShareInput(t)
	return t
end

keys.AddWorkingStorageInput = { ["GatewayARN"] = true, ["DiskIds"] = true, nil }

function asserts.AssertAddWorkingStorageInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddWorkingStorageInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskIds"], "Expected key DiskIds to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then asserts.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddWorkingStorageInput[k], "AddWorkingStorageInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddWorkingStorageInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>AddWorkingStorageInput$DiskIds</a> </p> </li> </ul>
-- @param _GatewayARN [GatewayARN] 
-- @param _DiskIds [DiskIds] <p>An array of strings that identify disks that are to be configured as working storage. Each string have a minimum length of 1 and maximum length of 300. You can get the disk IDs from the <a>ListLocalDisks</a> API.</p>
-- Required parameter: GatewayARN
-- Required parameter: DiskIds
function M.AddWorkingStorageInput(_GatewayARN, _DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddWorkingStorageInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["DiskIds"] = _DiskIds,
	}
	asserts.AssertAddWorkingStorageInput(t)
	return t
end

keys.ListFileSharesOutput = { ["Marker"] = true, ["FileShareInfoList"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListFileSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFileSharesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["FileShareInfoList"] then asserts.AssertFileShareInfoList(struct["FileShareInfoList"]) end
	if struct["NextMarker"] then asserts.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFileSharesOutput[k], "ListFileSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFileSharesOutput
-- <p>ListFileShareOutput</p>
-- @param _Marker [Marker] <p>If the request includes <code>Marker</code>, the response returns that value in this field. </p>
-- @param _FileShareInfoList [FileShareInfoList] <p>An array of information about the file gateway's file shares. </p>
-- @param _NextMarker [Marker] <p>If a value is present, there are more file shares to return. In a subsequent request, use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set of file shares. </p>
function M.ListFileSharesOutput(_Marker, _FileShareInfoList, _NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFileSharesOutput")
	local t = { 
		["Marker"] = _Marker,
		["FileShareInfoList"] = _FileShareInfoList,
		["NextMarker"] = _NextMarker,
	}
	asserts.AssertListFileSharesOutput(t)
	return t
end

keys.ChapInfo = { ["TargetARN"] = true, ["SecretToAuthenticateInitiator"] = true, ["InitiatorName"] = true, ["SecretToAuthenticateTarget"] = true, nil }

function asserts.AssertChapInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChapInfo to be of type 'table'")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["SecretToAuthenticateInitiator"] then asserts.AssertChapSecret(struct["SecretToAuthenticateInitiator"]) end
	if struct["InitiatorName"] then asserts.AssertIqnName(struct["InitiatorName"]) end
	if struct["SecretToAuthenticateTarget"] then asserts.AssertChapSecret(struct["SecretToAuthenticateTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChapInfo[k], "ChapInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChapInfo
-- <p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports authentication between your gateway and iSCSI initiators.</p>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the volume.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param _SecretToAuthenticateInitiator [ChapSecret] <p>The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p>
-- @param _InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- @param _SecretToAuthenticateTarget [ChapSecret] <p>The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p>
function M.ChapInfo(_TargetARN, _SecretToAuthenticateInitiator, _InitiatorName, _SecretToAuthenticateTarget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChapInfo")
	local t = { 
		["TargetARN"] = _TargetARN,
		["SecretToAuthenticateInitiator"] = _SecretToAuthenticateInitiator,
		["InitiatorName"] = _InitiatorName,
		["SecretToAuthenticateTarget"] = _SecretToAuthenticateTarget,
	}
	asserts.AssertChapInfo(t)
	return t
end

keys.SetLocalConsolePasswordOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertSetLocalConsolePasswordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLocalConsolePasswordOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLocalConsolePasswordOutput[k], "SetLocalConsolePasswordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLocalConsolePasswordOutput
--  
-- @param _GatewayARN [GatewayARN] 
function M.SetLocalConsolePasswordOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLocalConsolePasswordOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertSetLocalConsolePasswordOutput(t)
	return t
end

keys.ListVolumeRecoveryPointsInput = { ["GatewayARN"] = true, nil }

function asserts.AssertListVolumeRecoveryPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeRecoveryPointsInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVolumeRecoveryPointsInput[k], "ListVolumeRecoveryPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeRecoveryPointsInput
--  
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.ListVolumeRecoveryPointsInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeRecoveryPointsInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertListVolumeRecoveryPointsInput(t)
	return t
end

keys.DescribeTapesInput = { ["Marker"] = true, ["GatewayARN"] = true, ["TapeARNs"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARNs"] then asserts.AssertTapeARNs(struct["TapeARNs"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTapesInput[k], "DescribeTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapesInput
-- <p>DescribeTapesInput</p>
-- @param _Marker [Marker] <p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker indicates which page of results to retrieve. </p> <p>If not specified, the first page of results is retrieved.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _TapeARNs [TapeARNs] <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe. If this parameter is not specified, Tape gateway returns a description of all virtual tapes associated with the specified gateway.</p>
-- @param _Limit [PositiveIntObject] <p>Specifies that the number of virtual tapes described be limited to the specified number.</p> <note> <p>Amazon Web Services may impose its own limit, if this field is not set.</p> </note>
-- Required parameter: GatewayARN
function M.DescribeTapesInput(_Marker, _GatewayARN, _TapeARNs, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapesInput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["TapeARNs"] = _TapeARNs,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeTapesInput(t)
	return t
end

keys.UpdateBandwidthRateLimitInput = { ["GatewayARN"] = true, ["AverageUploadRateLimitInBitsPerSec"] = true, ["AverageDownloadRateLimitInBitsPerSec"] = true, nil }

function asserts.AssertUpdateBandwidthRateLimitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBandwidthRateLimitInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["AverageUploadRateLimitInBitsPerSec"] then asserts.AssertBandwidthUploadRateLimit(struct["AverageUploadRateLimitInBitsPerSec"]) end
	if struct["AverageDownloadRateLimitInBitsPerSec"] then asserts.AssertBandwidthDownloadRateLimit(struct["AverageDownloadRateLimitInBitsPerSec"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBandwidthRateLimitInput[k], "UpdateBandwidthRateLimitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBandwidthRateLimitInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a> </p> </li> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a> </p> </li> </ul>
-- @param _GatewayARN [GatewayARN] 
-- @param _AverageUploadRateLimitInBitsPerSec [BandwidthUploadRateLimit] <p>The average upload bandwidth rate limit in bits per second.</p>
-- @param _AverageDownloadRateLimitInBitsPerSec [BandwidthDownloadRateLimit] <p>The average download bandwidth rate limit in bits per second.</p>
-- Required parameter: GatewayARN
function M.UpdateBandwidthRateLimitInput(_GatewayARN, _AverageUploadRateLimitInBitsPerSec, _AverageDownloadRateLimitInBitsPerSec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBandwidthRateLimitInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["AverageUploadRateLimitInBitsPerSec"] = _AverageUploadRateLimitInBitsPerSec,
		["AverageDownloadRateLimitInBitsPerSec"] = _AverageDownloadRateLimitInBitsPerSec,
	}
	asserts.AssertUpdateBandwidthRateLimitInput(t)
	return t
end

keys.TapeRecoveryPointInfo = { ["TapeStatus"] = true, ["TapeARN"] = true, ["TapeSizeInBytes"] = true, ["TapeRecoveryPointTime"] = true, nil }

function asserts.AssertTapeRecoveryPointInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeRecoveryPointInfo to be of type 'table'")
	if struct["TapeStatus"] then asserts.AssertTapeRecoveryPointStatus(struct["TapeStatus"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeRecoveryPointTime"] then asserts.AssertTime(struct["TapeRecoveryPointTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.TapeRecoveryPointInfo[k], "TapeRecoveryPointInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TapeRecoveryPointInfo
-- <p>Describes a recovery point.</p>
-- @param _TapeStatus [TapeRecoveryPointStatus] 
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
-- @param _TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tapes to recover.</p>
-- @param _TapeRecoveryPointTime [Time] <p>The time when the point-in-time view of the virtual tape was replicated for later recovery.</p> <p>The string format of the tape recovery point time is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
function M.TapeRecoveryPointInfo(_TapeStatus, _TapeARN, _TapeSizeInBytes, _TapeRecoveryPointTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TapeRecoveryPointInfo")
	local t = { 
		["TapeStatus"] = _TapeStatus,
		["TapeARN"] = _TapeARN,
		["TapeSizeInBytes"] = _TapeSizeInBytes,
		["TapeRecoveryPointTime"] = _TapeRecoveryPointTime,
	}
	asserts.AssertTapeRecoveryPointInfo(t)
	return t
end

keys.ListLocalDisksInput = { ["GatewayARN"] = true, nil }

function asserts.AssertListLocalDisksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLocalDisksInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLocalDisksInput[k], "ListLocalDisksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLocalDisksInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.ListLocalDisksInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLocalDisksInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertListLocalDisksInput(t)
	return t
end

keys.DescribeCachediSCSIVolumesOutput = { ["CachediSCSIVolumes"] = true, nil }

function asserts.AssertDescribeCachediSCSIVolumesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCachediSCSIVolumesOutput to be of type 'table'")
	if struct["CachediSCSIVolumes"] then asserts.AssertCachediSCSIVolumes(struct["CachediSCSIVolumes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCachediSCSIVolumesOutput[k], "DescribeCachediSCSIVolumesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCachediSCSIVolumesOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _CachediSCSIVolumes [CachediSCSIVolumes] <p>An array of objects where each object contains metadata about one cached volume.</p>
function M.DescribeCachediSCSIVolumesOutput(_CachediSCSIVolumes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCachediSCSIVolumesOutput")
	local t = { 
		["CachediSCSIVolumes"] = _CachediSCSIVolumes,
	}
	asserts.AssertDescribeCachediSCSIVolumesOutput(t)
	return t
end

keys.InternalServerError = { ["message"] = true, ["error"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["error"] then asserts.AssertStorageGatewayError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An internal server error has occurred during the request. For more information, see the error and message fields.</p>
-- @param _message [string] <p>A human-readable message describing the error that occurred.</p>
-- @param _error [StorageGatewayError] <p>A <a>StorageGatewayError</a> that provides more information about the cause of the error.</p>
function M.InternalServerError(_message, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = _message,
		["error"] = _error,
	}
	asserts.AssertInternalServerError(t)
	return t
end

keys.RetrieveTapeRecoveryPointInput = { ["GatewayARN"] = true, ["TapeARN"] = true, nil }

function asserts.AssertRetrieveTapeRecoveryPointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeRecoveryPointInput to be of type 'table'")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveTapeRecoveryPointInput[k], "RetrieveTapeRecoveryPointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeRecoveryPointInput
-- <p>RetrieveTapeRecoveryPointInput</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the recovery point.</p>
-- Required parameter: TapeARN
-- Required parameter: GatewayARN
function M.RetrieveTapeRecoveryPointInput(_GatewayARN, _TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeRecoveryPointInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertRetrieveTapeRecoveryPointInput(t)
	return t
end

keys.DescribeTapeRecoveryPointsOutput = { ["Marker"] = true, ["GatewayARN"] = true, ["TapeRecoveryPointInfos"] = true, nil }

function asserts.AssertDescribeTapeRecoveryPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeRecoveryPointsOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeRecoveryPointInfos"] then asserts.AssertTapeRecoveryPointInfos(struct["TapeRecoveryPointInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTapeRecoveryPointsOutput[k], "DescribeTapeRecoveryPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeRecoveryPointsOutput
-- <p>DescribeTapeRecoveryPointsOutput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended.</p> <p>Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _TapeRecoveryPointInfos [TapeRecoveryPointInfos] <p>An array of TapeRecoveryPointInfos that are available for the specified gateway.</p>
function M.DescribeTapeRecoveryPointsOutput(_Marker, _GatewayARN, _TapeRecoveryPointInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeRecoveryPointsOutput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["TapeRecoveryPointInfos"] = _TapeRecoveryPointInfos,
	}
	asserts.AssertDescribeTapeRecoveryPointsOutput(t)
	return t
end

keys.UpdateGatewayInformationInput = { ["GatewayTimezone"] = true, ["GatewayARN"] = true, ["GatewayName"] = true, nil }

function asserts.AssertUpdateGatewayInformationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewayInformationInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayTimezone"] then asserts.AssertGatewayTimezone(struct["GatewayTimezone"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["GatewayName"] then asserts.AssertGatewayName(struct["GatewayName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGatewayInformationInput[k], "UpdateGatewayInformationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewayInformationInput
--  
-- @param _GatewayTimezone [GatewayTimezone] 
-- @param _GatewayARN [GatewayARN] 
-- @param _GatewayName [GatewayName] 
-- Required parameter: GatewayARN
function M.UpdateGatewayInformationInput(_GatewayTimezone, _GatewayARN, _GatewayName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewayInformationInput")
	local t = { 
		["GatewayTimezone"] = _GatewayTimezone,
		["GatewayARN"] = _GatewayARN,
		["GatewayName"] = _GatewayName,
	}
	asserts.AssertUpdateGatewayInformationInput(t)
	return t
end

keys.UpdateGatewaySoftwareNowInput = { ["GatewayARN"] = true, nil }

function asserts.AssertUpdateGatewaySoftwareNowInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewaySoftwareNowInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGatewaySoftwareNowInput[k], "UpdateGatewaySoftwareNowInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewaySoftwareNowInput
-- <p>A JSON object containing the of the gateway to update.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.UpdateGatewaySoftwareNowInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewaySoftwareNowInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertUpdateGatewaySoftwareNowInput(t)
	return t
end

keys.ListVolumeInitiatorsInput = { ["VolumeARN"] = true, nil }

function asserts.AssertListVolumeInitiatorsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeInitiatorsInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVolumeInitiatorsInput[k], "ListVolumeInitiatorsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeInitiatorsInput
-- <p>ListVolumeInitiatorsInput</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes for the gateway.</p>
-- Required parameter: VolumeARN
function M.ListVolumeInitiatorsInput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeInitiatorsInput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertListVolumeInitiatorsInput(t)
	return t
end

keys.CreateNFSFileShareInput = { ["DefaultStorageClass"] = true, ["ClientList"] = true, ["Squash"] = true, ["NFSFileShareDefaults"] = true, ["KMSKey"] = true, ["Role"] = true, ["LocationARN"] = true, ["ClientToken"] = true, ["GatewayARN"] = true, ["ReadOnly"] = true, ["KMSEncrypted"] = true, nil }

function asserts.AssertCreateNFSFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNFSFileShareInput to be of type 'table'")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["LocationARN"], "Expected key LocationARN to exist in table")
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ClientList"] then asserts.AssertFileShareClientList(struct["ClientList"]) end
	if struct["Squash"] then asserts.AssertSquash(struct["Squash"]) end
	if struct["NFSFileShareDefaults"] then asserts.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then asserts.AssertLocationARN(struct["LocationARN"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNFSFileShareInput[k], "CreateNFSFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNFSFileShareInput
-- <p>CreateNFSFileShareInput</p>
-- @param _DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If this field is not populated, the default value S3_STANDARD is used. Optional.</p>
-- @param _ClientList [FileShareClientList] <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>
-- @param _Squash [Squash] <p>Maps a user to anonymous user. Valid options are the following: </p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user.</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
-- @param _NFSFileShareDefaults [NFSFileShareDefaults] <p>File share default values. Optional.</p>
-- @param _KMSKey [KMSKey] <p>The KMS key used for Amazon S3 server side encryption. This value can only be set when KmsEncrypted is true. Optional.</p>
-- @param _Role [Role] <p>The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage. </p>
-- @param _LocationARN [LocationARN] <p>The ARN of the backed storage used for storing file data. </p>
-- @param _ClientToken [ClientToken] <p>A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.</p>
-- @param _GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.</p>
-- @param _ReadOnly [Boolean] <p>Sets the write status of a file share: "true" if the write status is read-only, and otherwise "false".</p>
-- @param _KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- Required parameter: ClientToken
-- Required parameter: GatewayARN
-- Required parameter: Role
-- Required parameter: LocationARN
function M.CreateNFSFileShareInput(_DefaultStorageClass, _ClientList, _Squash, _NFSFileShareDefaults, _KMSKey, _Role, _LocationARN, _ClientToken, _GatewayARN, _ReadOnly, _KMSEncrypted, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNFSFileShareInput")
	local t = { 
		["DefaultStorageClass"] = _DefaultStorageClass,
		["ClientList"] = _ClientList,
		["Squash"] = _Squash,
		["NFSFileShareDefaults"] = _NFSFileShareDefaults,
		["KMSKey"] = _KMSKey,
		["Role"] = _Role,
		["LocationARN"] = _LocationARN,
		["ClientToken"] = _ClientToken,
		["GatewayARN"] = _GatewayARN,
		["ReadOnly"] = _ReadOnly,
		["KMSEncrypted"] = _KMSEncrypted,
	}
	asserts.AssertCreateNFSFileShareInput(t)
	return t
end

keys.DisableGatewayOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertDisableGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableGatewayOutput[k], "DisableGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableGatewayOutput
-- <p>DisableGatewayOutput</p>
-- @param _GatewayARN [GatewayARN] <p>The unique Amazon Resource Name of the disabled gateway.</p>
function M.DisableGatewayOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableGatewayOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDisableGatewayOutput(t)
	return t
end

keys.DescribeChapCredentialsInput = { ["TargetARN"] = true, nil }

function asserts.AssertDescribeChapCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChapCredentialsInput to be of type 'table'")
	assert(struct["TargetARN"], "Expected key TargetARN to exist in table")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChapCredentialsInput[k], "DescribeChapCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChapCredentialsInput
-- <p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume target.</p>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for specified VolumeARN.</p>
-- Required parameter: TargetARN
function M.DescribeChapCredentialsInput(_TargetARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeChapCredentialsInput")
	local t = { 
		["TargetARN"] = _TargetARN,
	}
	asserts.AssertDescribeChapCredentialsInput(t)
	return t
end

keys.DeleteSnapshotScheduleInput = { ["VolumeARN"] = true, nil }

function asserts.AssertDeleteSnapshotScheduleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotScheduleInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotScheduleInput[k], "DeleteSnapshotScheduleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotScheduleInput
--  
-- @param _VolumeARN [VolumeARN] 
-- Required parameter: VolumeARN
function M.DeleteSnapshotScheduleInput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotScheduleInput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertDeleteSnapshotScheduleInput(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
--  
-- @param _Value [TagValue] 
-- @param _Key [TagKey] 
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.UpdateChapCredentialsOutput = { ["TargetARN"] = true, ["InitiatorName"] = true, nil }

function asserts.AssertUpdateChapCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChapCredentialsOutput to be of type 'table'")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["InitiatorName"] then asserts.AssertIqnName(struct["InitiatorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChapCredentialsOutput[k], "UpdateChapCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChapCredentialsOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.</p>
-- @param _InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.</p>
function M.UpdateChapCredentialsOutput(_TargetARN, _InitiatorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateChapCredentialsOutput")
	local t = { 
		["TargetARN"] = _TargetARN,
		["InitiatorName"] = _InitiatorName,
	}
	asserts.AssertUpdateChapCredentialsOutput(t)
	return t
end

keys.SetLocalConsolePasswordInput = { ["GatewayARN"] = true, ["LocalConsolePassword"] = true, nil }

function asserts.AssertSetLocalConsolePasswordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLocalConsolePasswordInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["LocalConsolePassword"], "Expected key LocalConsolePassword to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["LocalConsolePassword"] then asserts.AssertLocalConsolePassword(struct["LocalConsolePassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLocalConsolePasswordInput[k], "SetLocalConsolePasswordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLocalConsolePasswordInput
-- <p>SetLocalConsolePasswordInput</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _LocalConsolePassword [LocalConsolePassword] <p>The password you want to set for your VM local console.</p>
-- Required parameter: GatewayARN
-- Required parameter: LocalConsolePassword
function M.SetLocalConsolePasswordInput(_GatewayARN, _LocalConsolePassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLocalConsolePasswordInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["LocalConsolePassword"] = _LocalConsolePassword,
	}
	asserts.AssertSetLocalConsolePasswordInput(t)
	return t
end

keys.Disk = { ["DiskSizeInBytes"] = true, ["DiskAllocationType"] = true, ["DiskPath"] = true, ["DiskStatus"] = true, ["DiskAllocationResource"] = true, ["DiskId"] = true, ["DiskNode"] = true, nil }

function asserts.AssertDisk(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Disk to be of type 'table'")
	if struct["DiskSizeInBytes"] then asserts.Assertlong(struct["DiskSizeInBytes"]) end
	if struct["DiskAllocationType"] then asserts.AssertDiskAllocationType(struct["DiskAllocationType"]) end
	if struct["DiskPath"] then asserts.Assertstring(struct["DiskPath"]) end
	if struct["DiskStatus"] then asserts.Assertstring(struct["DiskStatus"]) end
	if struct["DiskAllocationResource"] then asserts.Assertstring(struct["DiskAllocationResource"]) end
	if struct["DiskId"] then asserts.AssertDiskId(struct["DiskId"]) end
	if struct["DiskNode"] then asserts.Assertstring(struct["DiskNode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Disk[k], "Disk contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Disk
--  
-- @param _DiskSizeInBytes [long] 
-- @param _DiskAllocationType [DiskAllocationType] 
-- @param _DiskPath [string] 
-- @param _DiskStatus [string] 
-- @param _DiskAllocationResource [string] 
-- @param _DiskId [DiskId] 
-- @param _DiskNode [string] 
function M.Disk(_DiskSizeInBytes, _DiskAllocationType, _DiskPath, _DiskStatus, _DiskAllocationResource, _DiskId, _DiskNode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Disk")
	local t = { 
		["DiskSizeInBytes"] = _DiskSizeInBytes,
		["DiskAllocationType"] = _DiskAllocationType,
		["DiskPath"] = _DiskPath,
		["DiskStatus"] = _DiskStatus,
		["DiskAllocationResource"] = _DiskAllocationResource,
		["DiskId"] = _DiskId,
		["DiskNode"] = _DiskNode,
	}
	asserts.AssertDisk(t)
	return t
end

keys.DescribeGatewayInformationOutput = { ["GatewayName"] = true, ["GatewayType"] = true, ["GatewayState"] = true, ["LastSoftwareUpdate"] = true, ["GatewayTimezone"] = true, ["GatewayNetworkInterfaces"] = true, ["NextUpdateAvailabilityDate"] = true, ["GatewayId"] = true, ["GatewayARN"] = true, nil }

function asserts.AssertDescribeGatewayInformationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGatewayInformationOutput to be of type 'table'")
	if struct["GatewayName"] then asserts.Assertstring(struct["GatewayName"]) end
	if struct["GatewayType"] then asserts.AssertGatewayType(struct["GatewayType"]) end
	if struct["GatewayState"] then asserts.AssertGatewayState(struct["GatewayState"]) end
	if struct["LastSoftwareUpdate"] then asserts.AssertLastSoftwareUpdate(struct["LastSoftwareUpdate"]) end
	if struct["GatewayTimezone"] then asserts.AssertGatewayTimezone(struct["GatewayTimezone"]) end
	if struct["GatewayNetworkInterfaces"] then asserts.AssertGatewayNetworkInterfaces(struct["GatewayNetworkInterfaces"]) end
	if struct["NextUpdateAvailabilityDate"] then asserts.AssertNextUpdateAvailabilityDate(struct["NextUpdateAvailabilityDate"]) end
	if struct["GatewayId"] then asserts.AssertGatewayId(struct["GatewayId"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGatewayInformationOutput[k], "DescribeGatewayInformationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGatewayInformationOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _GatewayName [string] <p>The name you configured for your gateway.</p>
-- @param _GatewayType [GatewayType] <p>The type of the gateway.</p>
-- @param _GatewayState [GatewayState] <p>A value that indicates the operating state of the gateway.</p>
-- @param _LastSoftwareUpdate [LastSoftwareUpdate] <p>The date on which the last software update was applied to the gateway. If the gateway has never been updated, this field does not return a value in the response.</p>
-- @param _GatewayTimezone [GatewayTimezone] <p>A value that indicates the time zone configured for the gateway.</p>
-- @param _GatewayNetworkInterfaces [GatewayNetworkInterfaces] <p>A <a>NetworkInterface</a> array that contains descriptions of the gateway network interfaces.</p>
-- @param _NextUpdateAvailabilityDate [NextUpdateAvailabilityDate] <p>The date on which an update to the gateway is available. This date is in the time zone of the gateway. If the gateway is not available for an update this field is not returned in the response.</p>
-- @param _GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p>
-- @param _GatewayARN [GatewayARN] 
function M.DescribeGatewayInformationOutput(_GatewayName, _GatewayType, _GatewayState, _LastSoftwareUpdate, _GatewayTimezone, _GatewayNetworkInterfaces, _NextUpdateAvailabilityDate, _GatewayId, _GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGatewayInformationOutput")
	local t = { 
		["GatewayName"] = _GatewayName,
		["GatewayType"] = _GatewayType,
		["GatewayState"] = _GatewayState,
		["LastSoftwareUpdate"] = _LastSoftwareUpdate,
		["GatewayTimezone"] = _GatewayTimezone,
		["GatewayNetworkInterfaces"] = _GatewayNetworkInterfaces,
		["NextUpdateAvailabilityDate"] = _NextUpdateAvailabilityDate,
		["GatewayId"] = _GatewayId,
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeGatewayInformationOutput(t)
	return t
end

keys.DisableGatewayInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDisableGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableGatewayInput[k], "DisableGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableGatewayInput
-- <p>DisableGatewayInput</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DisableGatewayInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableGatewayInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDisableGatewayInput(t)
	return t
end

keys.DeleteFileShareOutput = { ["FileShareARN"] = true, nil }

function asserts.AssertDeleteFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFileShareOutput[k], "DeleteFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileShareOutput
-- <p>DeleteFileShareOutput</p>
-- @param _FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the deleted file share. </p>
function M.DeleteFileShareOutput(_FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFileShareOutput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
	}
	asserts.AssertDeleteFileShareOutput(t)
	return t
end

keys.DescribeUploadBufferOutput = { ["GatewayARN"] = true, ["UploadBufferAllocatedInBytes"] = true, ["DiskIds"] = true, ["UploadBufferUsedInBytes"] = true, nil }

function asserts.AssertDescribeUploadBufferOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUploadBufferOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["UploadBufferAllocatedInBytes"] then asserts.Assertlong(struct["UploadBufferAllocatedInBytes"]) end
	if struct["DiskIds"] then asserts.AssertDiskIds(struct["DiskIds"]) end
	if struct["UploadBufferUsedInBytes"] then asserts.Assertlong(struct["UploadBufferUsedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUploadBufferOutput[k], "DescribeUploadBufferOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUploadBufferOutput
--  
-- @param _GatewayARN [GatewayARN] 
-- @param _UploadBufferAllocatedInBytes [long] 
-- @param _DiskIds [DiskIds] 
-- @param _UploadBufferUsedInBytes [long] 
function M.DescribeUploadBufferOutput(_GatewayARN, _UploadBufferAllocatedInBytes, _DiskIds, _UploadBufferUsedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUploadBufferOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["UploadBufferAllocatedInBytes"] = _UploadBufferAllocatedInBytes,
		["DiskIds"] = _DiskIds,
		["UploadBufferUsedInBytes"] = _UploadBufferUsedInBytes,
	}
	asserts.AssertDescribeUploadBufferOutput(t)
	return t
end

keys.AddWorkingStorageOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertAddWorkingStorageOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddWorkingStorageOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddWorkingStorageOutput[k], "AddWorkingStorageOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddWorkingStorageOutput
-- <p>A JSON object containing the of the gateway for which working storage was configured.</p>
-- @param _GatewayARN [GatewayARN] 
function M.AddWorkingStorageOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddWorkingStorageOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertAddWorkingStorageOutput(t)
	return t
end

keys.ResetCacheOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertResetCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetCacheOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetCacheOutput[k], "ResetCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetCacheOutput
--  
-- @param _GatewayARN [GatewayARN] 
function M.ResetCacheOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetCacheOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertResetCacheOutput(t)
	return t
end

keys.ListTapesInput = { ["Marker"] = true, ["Limit"] = true, ["TapeARNs"] = true, nil }

function asserts.AssertListTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTapesInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	if struct["TapeARNs"] then asserts.AssertTapeARNs(struct["TapeARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTapesInput[k], "ListTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTapesInput
-- <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListTapesInput$Limit</a> </p> </li> <li> <p> <a>ListTapesInput$Marker</a> </p> </li> <li> <p> <a>ListTapesInput$TapeARNs</a> </p> </li> </ul>
-- @param _Marker [Marker] <p>A string that indicates the position at which to begin the returned list of tapes.</p>
-- @param _Limit [PositiveIntObject] <p>An optional number limit for the tapes in the list returned by this call.</p>
-- @param _TapeARNs [TapeARNs] 
function M.ListTapesInput(_Marker, _Limit, _TapeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTapesInput")
	local t = { 
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["TapeARNs"] = _TapeARNs,
	}
	asserts.AssertListTapesInput(t)
	return t
end

keys.Tape = { ["TapeCreatedDate"] = true, ["TapeUsedInBytes"] = true, ["TapeARN"] = true, ["VTLDevice"] = true, ["TapeSizeInBytes"] = true, ["TapeBarcode"] = true, ["Progress"] = true, ["TapeStatus"] = true, nil }

function asserts.AssertTape(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tape to be of type 'table'")
	if struct["TapeCreatedDate"] then asserts.AssertTime(struct["TapeCreatedDate"]) end
	if struct["TapeUsedInBytes"] then asserts.AssertTapeUsage(struct["TapeUsedInBytes"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	if struct["VTLDevice"] then asserts.AssertVTLDeviceARN(struct["VTLDevice"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeBarcode"] then asserts.AssertTapeBarcode(struct["TapeBarcode"]) end
	if struct["Progress"] then asserts.AssertDoubleObject(struct["Progress"]) end
	if struct["TapeStatus"] then asserts.AssertTapeStatus(struct["TapeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tape[k], "Tape contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tape
-- <p>Describes a virtual tape object.</p>
-- @param _TapeCreatedDate [Time] <p>The date the virtual tape was created.</p>
-- @param _TapeUsedInBytes [TapeUsage] <p>The size, in bytes, of data written to the virtual tape.</p> <note> <p>This value is not available for tapes created prior to May,13 2015.</p> </note>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
-- @param _VTLDevice [VTLDeviceARN] <p>The virtual tape library (VTL) device that the virtual tape is associated with.</p>
-- @param _TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tape capacity.</p>
-- @param _TapeBarcode [TapeBarcode] <p>The barcode that identifies a specific virtual tape.</p>
-- @param _Progress [DoubleObject] <p>For archiving virtual tapes, indicates how much data remains to be uploaded before archiving is complete.</p> <p>Range: 0 (not started) to 100 (complete).</p>
-- @param _TapeStatus [TapeStatus] <p>The current state of the virtual tape.</p>
function M.Tape(_TapeCreatedDate, _TapeUsedInBytes, _TapeARN, _VTLDevice, _TapeSizeInBytes, _TapeBarcode, _Progress, _TapeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tape")
	local t = { 
		["TapeCreatedDate"] = _TapeCreatedDate,
		["TapeUsedInBytes"] = _TapeUsedInBytes,
		["TapeARN"] = _TapeARN,
		["VTLDevice"] = _VTLDevice,
		["TapeSizeInBytes"] = _TapeSizeInBytes,
		["TapeBarcode"] = _TapeBarcode,
		["Progress"] = _Progress,
		["TapeStatus"] = _TapeStatus,
	}
	asserts.AssertTape(t)
	return t
end

keys.DescribeGatewayInformationInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeGatewayInformationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGatewayInformationInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGatewayInformationInput[k], "DescribeGatewayInformationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGatewayInformationInput
-- <p>A JSON object containing the id of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DescribeGatewayInformationInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGatewayInformationInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeGatewayInformationInput(t)
	return t
end

keys.DescribeVTLDevicesOutput = { ["Marker"] = true, ["GatewayARN"] = true, ["VTLDevices"] = true, nil }

function asserts.AssertDescribeVTLDevicesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVTLDevicesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["VTLDevices"] then asserts.AssertVTLDevices(struct["VTLDevices"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVTLDevicesOutput[k], "DescribeVTLDevicesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVTLDevicesOutput
-- <p>DescribeVTLDevicesOutput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which the VTL devices that were fetched for description ended. Use the marker in your next request to fetch the next set of VTL devices in the list. If there are no more VTL devices to describe, this field does not appear in the response.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _VTLDevices [VTLDevices] <p>An array of VTL device objects composed of the Amazon Resource Name(ARN) of the VTL devices.</p>
function M.DescribeVTLDevicesOutput(_Marker, _GatewayARN, _VTLDevices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVTLDevicesOutput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["VTLDevices"] = _VTLDevices,
	}
	asserts.AssertDescribeVTLDevicesOutput(t)
	return t
end

keys.DescribeSnapshotScheduleInput = { ["VolumeARN"] = true, nil }

function asserts.AssertDescribeSnapshotScheduleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotScheduleInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotScheduleInput[k], "DescribeSnapshotScheduleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotScheduleInput
-- <p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a> of the volume.</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
function M.DescribeSnapshotScheduleInput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotScheduleInput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertDescribeSnapshotScheduleInput(t)
	return t
end

keys.DescribeBandwidthRateLimitOutput = { ["GatewayARN"] = true, ["AverageUploadRateLimitInBitsPerSec"] = true, ["AverageDownloadRateLimitInBitsPerSec"] = true, nil }

function asserts.AssertDescribeBandwidthRateLimitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBandwidthRateLimitOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["AverageUploadRateLimitInBitsPerSec"] then asserts.AssertBandwidthUploadRateLimit(struct["AverageUploadRateLimitInBitsPerSec"]) end
	if struct["AverageDownloadRateLimitInBitsPerSec"] then asserts.AssertBandwidthDownloadRateLimit(struct["AverageDownloadRateLimitInBitsPerSec"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBandwidthRateLimitOutput[k], "DescribeBandwidthRateLimitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBandwidthRateLimitOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _AverageUploadRateLimitInBitsPerSec [BandwidthUploadRateLimit] <p>The average upload bandwidth rate limit in bits per second. This field does not appear in the response if the upload rate limit is not set.</p>
-- @param _AverageDownloadRateLimitInBitsPerSec [BandwidthDownloadRateLimit] <p>The average download bandwidth rate limit in bits per second. This field does not appear in the response if the download rate limit is not set.</p>
function M.DescribeBandwidthRateLimitOutput(_GatewayARN, _AverageUploadRateLimitInBitsPerSec, _AverageDownloadRateLimitInBitsPerSec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBandwidthRateLimitOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["AverageUploadRateLimitInBitsPerSec"] = _AverageUploadRateLimitInBitsPerSec,
		["AverageDownloadRateLimitInBitsPerSec"] = _AverageDownloadRateLimitInBitsPerSec,
	}
	asserts.AssertDescribeBandwidthRateLimitOutput(t)
	return t
end

keys.ListVolumesInput = { ["Marker"] = true, ["GatewayARN"] = true, ["Limit"] = true, nil }

function asserts.AssertListVolumesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumesInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVolumesInput[k], "ListVolumesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumesInput
-- <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListVolumesInput$Limit</a> </p> </li> <li> <p> <a>ListVolumesInput$Marker</a> </p> </li> </ul>
-- @param _Marker [Marker] <p>A string that indicates the position at which to begin the returned list of volumes. Obtain the marker from the response of a previous List iSCSI Volumes request.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _Limit [PositiveIntObject] <p>Specifies that the list of volumes returned be limited to the specified number of items.</p>
function M.ListVolumesInput(_Marker, _GatewayARN, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumesInput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["Limit"] = _Limit,
	}
	asserts.AssertListVolumesInput(t)
	return t
end

keys.ListVolumeInitiatorsOutput = { ["Initiators"] = true, nil }

function asserts.AssertListVolumeInitiatorsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeInitiatorsOutput to be of type 'table'")
	if struct["Initiators"] then asserts.AssertInitiators(struct["Initiators"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVolumeInitiatorsOutput[k], "ListVolumeInitiatorsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeInitiatorsOutput
-- <p>ListVolumeInitiatorsOutput</p>
-- @param _Initiators [Initiators] <p>The host names and port numbers of all iSCSI initiators that are connected to the gateway.</p>
function M.ListVolumeInitiatorsOutput(_Initiators, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeInitiatorsOutput")
	local t = { 
		["Initiators"] = _Initiators,
	}
	asserts.AssertListVolumeInitiatorsOutput(t)
	return t
end

keys.DescribeTapeArchivesInput = { ["Marker"] = true, ["Limit"] = true, ["TapeARNs"] = true, nil }

function asserts.AssertDescribeTapeArchivesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeArchivesInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	if struct["TapeARNs"] then asserts.AssertTapeARNs(struct["TapeARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTapeArchivesInput[k], "DescribeTapeArchivesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeArchivesInput
-- <p>DescribeTapeArchivesInput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which to begin describing virtual tapes.</p>
-- @param _Limit [PositiveIntObject] <p>Specifies that the number of virtual tapes descried be limited to the specified number.</p>
-- @param _TapeARNs [TapeARNs] <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe.</p>
function M.DescribeTapeArchivesInput(_Marker, _Limit, _TapeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeArchivesInput")
	local t = { 
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["TapeARNs"] = _TapeARNs,
	}
	asserts.AssertDescribeTapeArchivesInput(t)
	return t
end

keys.ListTagsForResourceOutput = { ["Marker"] = true, ["ResourceARN"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsForResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceOutput[k], "ListTagsForResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceOutput
-- <p>ListTagsForResourceOutput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which to stop returning the list of tags.</p>
-- @param _ResourceARN [ResourceARN] <p>he Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
-- @param _Tags [Tags] <p>An array that contains the tags for the specified resource.</p>
function M.ListTagsForResourceOutput(_Marker, _ResourceARN, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceOutput")
	local t = { 
		["Marker"] = _Marker,
		["ResourceARN"] = _ResourceARN,
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsForResourceOutput(t)
	return t
end

keys.ListTapesOutput = { ["Marker"] = true, ["TapeInfos"] = true, nil }

function asserts.AssertListTapesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTapesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["TapeInfos"] then asserts.AssertTapeInfos(struct["TapeInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTapesOutput[k], "ListTapesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTapesOutput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>ListTapesOutput$Marker</a> </p> </li> <li> <p> <a>ListTapesOutput$VolumeInfos</a> </p> </li> </ul>
-- @param _Marker [Marker] <p>A string that indicates the position at which to begin returning the next list of tapes. Use the marker in your next request to continue pagination of tapes. If there are no more tapes to list, this element does not appear in the response body.</p>
-- @param _TapeInfos [TapeInfos] 
function M.ListTapesOutput(_Marker, _TapeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTapesOutput")
	local t = { 
		["Marker"] = _Marker,
		["TapeInfos"] = _TapeInfos,
	}
	asserts.AssertListTapesOutput(t)
	return t
end

keys.VolumeiSCSIAttributes = { ["TargetARN"] = true, ["NetworkInterfaceId"] = true, ["LunNumber"] = true, ["ChapEnabled"] = true, ["NetworkInterfacePort"] = true, nil }

function asserts.AssertVolumeiSCSIAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeiSCSIAttributes to be of type 'table'")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["LunNumber"] then asserts.AssertPositiveIntObject(struct["LunNumber"]) end
	if struct["ChapEnabled"] then asserts.Assertboolean(struct["ChapEnabled"]) end
	if struct["NetworkInterfacePort"] then asserts.Assertinteger(struct["NetworkInterfacePort"]) end
	for k,_ in pairs(struct) do
		assert(keys.VolumeiSCSIAttributes[k], "VolumeiSCSIAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeiSCSIAttributes
-- <p>Lists iSCSI information about a volume.</p>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the volume target.</p>
-- @param _NetworkInterfaceId [NetworkInterfaceId] <p>The network interface identifier.</p>
-- @param _LunNumber [PositiveIntObject] <p>The logical disk number.</p>
-- @param _ChapEnabled [boolean] <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
-- @param _NetworkInterfacePort [integer] <p>The port used to communicate with iSCSI targets.</p>
function M.VolumeiSCSIAttributes(_TargetARN, _NetworkInterfaceId, _LunNumber, _ChapEnabled, _NetworkInterfacePort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeiSCSIAttributes")
	local t = { 
		["TargetARN"] = _TargetARN,
		["NetworkInterfaceId"] = _NetworkInterfaceId,
		["LunNumber"] = _LunNumber,
		["ChapEnabled"] = _ChapEnabled,
		["NetworkInterfacePort"] = _NetworkInterfacePort,
	}
	asserts.AssertVolumeiSCSIAttributes(t)
	return t
end

keys.UpdateSnapshotScheduleOutput = { ["VolumeARN"] = true, nil }

function asserts.AssertUpdateSnapshotScheduleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSnapshotScheduleOutput to be of type 'table'")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSnapshotScheduleOutput[k], "UpdateSnapshotScheduleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSnapshotScheduleOutput
-- <p>A JSON object containing the of the updated storage volume.</p>
-- @param _VolumeARN [VolumeARN] <p/>
function M.UpdateSnapshotScheduleOutput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSnapshotScheduleOutput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertUpdateSnapshotScheduleOutput(t)
	return t
end

keys.UpdateBandwidthRateLimitOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertUpdateBandwidthRateLimitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBandwidthRateLimitOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBandwidthRateLimitOutput[k], "UpdateBandwidthRateLimitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBandwidthRateLimitOutput
-- <p>A JSON object containing the of the gateway whose throttle information was updated.</p>
-- @param _GatewayARN [GatewayARN] 
function M.UpdateBandwidthRateLimitOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBandwidthRateLimitOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertUpdateBandwidthRateLimitOutput(t)
	return t
end

keys.NFSFileShareInfo = { ["FileShareARN"] = true, ["FileShareStatus"] = true, ["FileShareId"] = true, ["DefaultStorageClass"] = true, ["ClientList"] = true, ["Squash"] = true, ["NFSFileShareDefaults"] = true, ["KMSKey"] = true, ["Role"] = true, ["LocationARN"] = true, ["Path"] = true, ["GatewayARN"] = true, ["ReadOnly"] = true, ["KMSEncrypted"] = true, nil }

function asserts.AssertNFSFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NFSFileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["FileShareStatus"] then asserts.AssertFileShareStatus(struct["FileShareStatus"]) end
	if struct["FileShareId"] then asserts.AssertFileShareId(struct["FileShareId"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ClientList"] then asserts.AssertFileShareClientList(struct["ClientList"]) end
	if struct["Squash"] then asserts.AssertSquash(struct["Squash"]) end
	if struct["NFSFileShareDefaults"] then asserts.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then asserts.AssertLocationARN(struct["LocationARN"]) end
	if struct["Path"] then asserts.AssertPath(struct["Path"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["KMSEncrypted"] then asserts.Assertboolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(keys.NFSFileShareInfo[k], "NFSFileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NFSFileShareInfo
-- <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param _FileShareARN [FileShareARN] 
-- @param _FileShareStatus [FileShareStatus] 
-- @param _FileShareId [FileShareId] 
-- @param _DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If this field is not populated, the default value S3_STANDARD is used. Optional.</p>
-- @param _ClientList [FileShareClientList] 
-- @param _Squash [Squash] 
-- @param _NFSFileShareDefaults [NFSFileShareDefaults] 
-- @param _KMSKey [KMSKey] 
-- @param _Role [Role] 
-- @param _LocationARN [LocationARN] 
-- @param _Path [Path] 
-- @param _GatewayARN [GatewayARN] 
-- @param _ReadOnly [Boolean] 
-- @param _KMSEncrypted [boolean] <p>True to use Amazon S3 server side encryption with your own KMS key, or false to use a key managed by Amazon S3. Optional. </p>
function M.NFSFileShareInfo(_FileShareARN, _FileShareStatus, _FileShareId, _DefaultStorageClass, _ClientList, _Squash, _NFSFileShareDefaults, _KMSKey, _Role, _LocationARN, _Path, _GatewayARN, _ReadOnly, _KMSEncrypted, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NFSFileShareInfo")
	local t = { 
		["FileShareARN"] = _FileShareARN,
		["FileShareStatus"] = _FileShareStatus,
		["FileShareId"] = _FileShareId,
		["DefaultStorageClass"] = _DefaultStorageClass,
		["ClientList"] = _ClientList,
		["Squash"] = _Squash,
		["NFSFileShareDefaults"] = _NFSFileShareDefaults,
		["KMSKey"] = _KMSKey,
		["Role"] = _Role,
		["LocationARN"] = _LocationARN,
		["Path"] = _Path,
		["GatewayARN"] = _GatewayARN,
		["ReadOnly"] = _ReadOnly,
		["KMSEncrypted"] = _KMSEncrypted,
	}
	asserts.AssertNFSFileShareInfo(t)
	return t
end

keys.CreateCachediSCSIVolumeOutput = { ["TargetARN"] = true, ["VolumeARN"] = true, nil }

function asserts.AssertCreateCachediSCSIVolumeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCachediSCSIVolumeOutput to be of type 'table'")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCachediSCSIVolumeOutput[k], "CreateCachediSCSIVolumeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCachediSCSIVolumeOutput
--  
-- @param _TargetARN [TargetARN] 
-- @param _VolumeARN [VolumeARN] 
function M.CreateCachediSCSIVolumeOutput(_TargetARN, _VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCachediSCSIVolumeOutput")
	local t = { 
		["TargetARN"] = _TargetARN,
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertCreateCachediSCSIVolumeOutput(t)
	return t
end

keys.DescribeMaintenanceStartTimeOutput = { ["HourOfDay"] = true, ["GatewayARN"] = true, ["DayOfWeek"] = true, ["MinuteOfHour"] = true, ["Timezone"] = true, nil }

function asserts.AssertDescribeMaintenanceStartTimeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceStartTimeOutput to be of type 'table'")
	if struct["HourOfDay"] then asserts.AssertHourOfDay(struct["HourOfDay"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DayOfWeek"] then asserts.AssertDayOfWeek(struct["DayOfWeek"]) end
	if struct["MinuteOfHour"] then asserts.AssertMinuteOfHour(struct["MinuteOfHour"]) end
	if struct["Timezone"] then asserts.AssertGatewayTimezone(struct["Timezone"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceStartTimeOutput[k], "DescribeMaintenanceStartTimeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceStartTimeOutput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$Timezone</a> </p> </li> </ul>
-- @param _HourOfDay [HourOfDay] <p>The hour component of the maintenance start time represented as <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _DayOfWeek [DayOfWeek] <p>An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.</p>
-- @param _MinuteOfHour [MinuteOfHour] <p>The minute component of the maintenance start time represented as <i>mm</i>, where <i>mm</i> is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.</p>
-- @param _Timezone [GatewayTimezone] 
function M.DescribeMaintenanceStartTimeOutput(_HourOfDay, _GatewayARN, _DayOfWeek, _MinuteOfHour, _Timezone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceStartTimeOutput")
	local t = { 
		["HourOfDay"] = _HourOfDay,
		["GatewayARN"] = _GatewayARN,
		["DayOfWeek"] = _DayOfWeek,
		["MinuteOfHour"] = _MinuteOfHour,
		["Timezone"] = _Timezone,
	}
	asserts.AssertDescribeMaintenanceStartTimeOutput(t)
	return t
end

keys.DeleteChapCredentialsInput = { ["TargetARN"] = true, ["InitiatorName"] = true, nil }

function asserts.AssertDeleteChapCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChapCredentialsInput to be of type 'table'")
	assert(struct["TargetARN"], "Expected key TargetARN to exist in table")
	assert(struct["InitiatorName"], "Expected key InitiatorName to exist in table")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["InitiatorName"] then asserts.AssertIqnName(struct["InitiatorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChapCredentialsInput[k], "DeleteChapCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChapCredentialsInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>DeleteChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>DeleteChapCredentialsInput$TargetARN</a> </p> </li> </ul>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for specified VolumeARN.</p>
-- @param _InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- Required parameter: TargetARN
-- Required parameter: InitiatorName
function M.DeleteChapCredentialsInput(_TargetARN, _InitiatorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteChapCredentialsInput")
	local t = { 
		["TargetARN"] = _TargetARN,
		["InitiatorName"] = _InitiatorName,
	}
	asserts.AssertDeleteChapCredentialsInput(t)
	return t
end

keys.ListTagsForResourceInput = { ["Marker"] = true, ["ResourceARN"] = true, ["Limit"] = true, nil }

function asserts.AssertListTagsForResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceInput[k], "ListTagsForResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceInput
-- <p>ListTagsForResourceInput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which to begin returning the list of tags.</p>
-- @param _ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
-- @param _Limit [PositiveIntObject] <p>Specifies that the list of tags returned be limited to the specified number of items.</p>
-- Required parameter: ResourceARN
function M.ListTagsForResourceInput(_Marker, _ResourceARN, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceInput")
	local t = { 
		["Marker"] = _Marker,
		["ResourceARN"] = _ResourceARN,
		["Limit"] = _Limit,
	}
	asserts.AssertListTagsForResourceInput(t)
	return t
end

keys.CreateTapesOutput = { ["TapeARNs"] = true, nil }

function asserts.AssertCreateTapesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapesOutput to be of type 'table'")
	if struct["TapeARNs"] then asserts.AssertTapeARNs(struct["TapeARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTapesOutput[k], "CreateTapesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapesOutput
-- <p>CreateTapeOutput</p>
-- @param _TapeARNs [TapeARNs] <p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that were created.</p>
function M.CreateTapesOutput(_TapeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapesOutput")
	local t = { 
		["TapeARNs"] = _TapeARNs,
	}
	asserts.AssertCreateTapesOutput(t)
	return t
end

keys.DeleteSnapshotScheduleOutput = { ["VolumeARN"] = true, nil }

function asserts.AssertDeleteSnapshotScheduleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotScheduleOutput to be of type 'table'")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotScheduleOutput[k], "DeleteSnapshotScheduleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotScheduleOutput
--  
-- @param _VolumeARN [VolumeARN] 
function M.DeleteSnapshotScheduleOutput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotScheduleOutput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertDeleteSnapshotScheduleOutput(t)
	return t
end

keys.AddTagsToResourceInput = { ["ResourceARN"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceInput[k], "AddTagsToResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceInput
-- <p>AddTagsToResourceInput</p>
-- @param _ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
-- @param _Tags [Tags] <p>The key-value pair that represents the tag you want to add to the resource. The value can be an empty string.</p> <note> <p>Valid characters for key and value are letters, spaces, and numbers representable in UTF-8 format, and the following special characters: + - = . _ : / @.</p> </note>
-- Required parameter: ResourceARN
-- Required parameter: Tags
function M.AddTagsToResourceInput(_ResourceARN, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceInput")
	local t = { 
		["ResourceARN"] = _ResourceARN,
		["Tags"] = _Tags,
	}
	asserts.AssertAddTagsToResourceInput(t)
	return t
end

keys.RefreshCacheOutput = { ["FileShareARN"] = true, nil }

function asserts.AssertRefreshCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshCacheOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshCacheOutput[k], "RefreshCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshCacheOutput
--  
-- @param _FileShareARN [FileShareARN] 
function M.RefreshCacheOutput(_FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshCacheOutput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
	}
	asserts.AssertRefreshCacheOutput(t)
	return t
end

keys.DescribeStorediSCSIVolumesOutput = { ["StorediSCSIVolumes"] = true, nil }

function asserts.AssertDescribeStorediSCSIVolumesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStorediSCSIVolumesOutput to be of type 'table'")
	if struct["StorediSCSIVolumes"] then asserts.AssertStorediSCSIVolumes(struct["StorediSCSIVolumes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStorediSCSIVolumesOutput[k], "DescribeStorediSCSIVolumesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStorediSCSIVolumesOutput
--  
-- @param _StorediSCSIVolumes [StorediSCSIVolumes] 
function M.DescribeStorediSCSIVolumesOutput(_StorediSCSIVolumes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStorediSCSIVolumesOutput")
	local t = { 
		["StorediSCSIVolumes"] = _StorediSCSIVolumes,
	}
	asserts.AssertDescribeStorediSCSIVolumesOutput(t)
	return t
end

keys.UpdateVTLDeviceTypeOutput = { ["VTLDeviceARN"] = true, nil }

function asserts.AssertUpdateVTLDeviceTypeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVTLDeviceTypeOutput to be of type 'table'")
	if struct["VTLDeviceARN"] then asserts.AssertVTLDeviceARN(struct["VTLDeviceARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVTLDeviceTypeOutput[k], "UpdateVTLDeviceTypeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVTLDeviceTypeOutput
-- <p>UpdateVTLDeviceTypeOutput</p>
-- @param _VTLDeviceARN [VTLDeviceARN] <p>The Amazon Resource Name (ARN) of the medium changer you have selected.</p>
function M.UpdateVTLDeviceTypeOutput(_VTLDeviceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateVTLDeviceTypeOutput")
	local t = { 
		["VTLDeviceARN"] = _VTLDeviceARN,
	}
	asserts.AssertUpdateVTLDeviceTypeOutput(t)
	return t
end

keys.AddCacheInput = { ["GatewayARN"] = true, ["DiskIds"] = true, nil }

function asserts.AssertAddCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCacheInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskIds"], "Expected key DiskIds to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then asserts.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddCacheInput[k], "AddCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCacheInput
--  
-- @param _GatewayARN [GatewayARN] 
-- @param _DiskIds [DiskIds] 
-- Required parameter: GatewayARN
-- Required parameter: DiskIds
function M.AddCacheInput(_GatewayARN, _DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCacheInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["DiskIds"] = _DiskIds,
	}
	asserts.AssertAddCacheInput(t)
	return t
end

keys.VolumeRecoveryPointInfo = { ["VolumeSizeInBytes"] = true, ["VolumeUsageInBytes"] = true, ["VolumeARN"] = true, ["VolumeRecoveryPointTime"] = true, nil }

function asserts.AssertVolumeRecoveryPointInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeRecoveryPointInfo to be of type 'table'")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeUsageInBytes"] then asserts.Assertlong(struct["VolumeUsageInBytes"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["VolumeRecoveryPointTime"] then asserts.Assertstring(struct["VolumeRecoveryPointTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.VolumeRecoveryPointInfo[k], "VolumeRecoveryPointInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeRecoveryPointInfo
--  
-- @param _VolumeSizeInBytes [long] 
-- @param _VolumeUsageInBytes [long] 
-- @param _VolumeARN [VolumeARN] 
-- @param _VolumeRecoveryPointTime [string] 
function M.VolumeRecoveryPointInfo(_VolumeSizeInBytes, _VolumeUsageInBytes, _VolumeARN, _VolumeRecoveryPointTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeRecoveryPointInfo")
	local t = { 
		["VolumeSizeInBytes"] = _VolumeSizeInBytes,
		["VolumeUsageInBytes"] = _VolumeUsageInBytes,
		["VolumeARN"] = _VolumeARN,
		["VolumeRecoveryPointTime"] = _VolumeRecoveryPointTime,
	}
	asserts.AssertVolumeRecoveryPointInfo(t)
	return t
end

keys.ListGatewaysInput = { ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertListGatewaysInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGatewaysInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGatewaysInput[k], "ListGatewaysInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGatewaysInput
-- <p>A JSON object containing zero or more of the following fields:</p> <ul> <li> <p> <a>ListGatewaysInput$Limit</a> </p> </li> <li> <p> <a>ListGatewaysInput$Marker</a> </p> </li> </ul>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which to begin the returned list of gateways.</p>
-- @param _Limit [PositiveIntObject] <p>Specifies that the list of gateways returned be limited to the specified number of items.</p>
function M.ListGatewaysInput(_Marker, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGatewaysInput")
	local t = { 
		["Marker"] = _Marker,
		["Limit"] = _Limit,
	}
	asserts.AssertListGatewaysInput(t)
	return t
end

keys.VolumeInfo = { ["VolumeSizeInBytes"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["VolumeARN"] = true, ["GatewayId"] = true, ["GatewayARN"] = true, nil }

function asserts.AssertVolumeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeInfo to be of type 'table'")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeType"] then asserts.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then asserts.AssertVolumeId(struct["VolumeId"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["GatewayId"] then asserts.AssertGatewayId(struct["GatewayId"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.VolumeInfo[k], "VolumeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeInfo
-- <p>Describes a storage volume object.</p>
-- @param _VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p> <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param _VolumeType [VolumeType] 
-- @param _VolumeId [VolumeId] <p>The unique identifier assigned to the volume. This ID becomes part of the volume Amazon Resource Name (ARN), which you use as input for other operations.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) for the storage volume. For example, the following is a valid ARN:</p> <p> <code>arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB</code> </p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param _GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param _GatewayARN [GatewayARN] 
function M.VolumeInfo(_VolumeSizeInBytes, _VolumeType, _VolumeId, _VolumeARN, _GatewayId, _GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeInfo")
	local t = { 
		["VolumeSizeInBytes"] = _VolumeSizeInBytes,
		["VolumeType"] = _VolumeType,
		["VolumeId"] = _VolumeId,
		["VolumeARN"] = _VolumeARN,
		["GatewayId"] = _GatewayId,
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertVolumeInfo(t)
	return t
end

keys.DescribeNFSFileSharesInput = { ["FileShareARNList"] = true, nil }

function asserts.AssertDescribeNFSFileSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNFSFileSharesInput to be of type 'table'")
	assert(struct["FileShareARNList"], "Expected key FileShareARNList to exist in table")
	if struct["FileShareARNList"] then asserts.AssertFileShareARNList(struct["FileShareARNList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNFSFileSharesInput[k], "DescribeNFSFileSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNFSFileSharesInput
-- <p>DescribeNFSFileSharesInput</p>
-- @param _FileShareARNList [FileShareARNList] <p>An array containing the Amazon Resource Name (ARN) of each file share to be described. </p>
-- Required parameter: FileShareARNList
function M.DescribeNFSFileSharesInput(_FileShareARNList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNFSFileSharesInput")
	local t = { 
		["FileShareARNList"] = _FileShareARNList,
	}
	asserts.AssertDescribeNFSFileSharesInput(t)
	return t
end

keys.ListVolumeRecoveryPointsOutput = { ["GatewayARN"] = true, ["VolumeRecoveryPointInfos"] = true, nil }

function asserts.AssertListVolumeRecoveryPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeRecoveryPointsOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["VolumeRecoveryPointInfos"] then asserts.AssertVolumeRecoveryPointInfos(struct["VolumeRecoveryPointInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVolumeRecoveryPointsOutput[k], "ListVolumeRecoveryPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeRecoveryPointsOutput
--  
-- @param _GatewayARN [GatewayARN] 
-- @param _VolumeRecoveryPointInfos [VolumeRecoveryPointInfos] 
function M.ListVolumeRecoveryPointsOutput(_GatewayARN, _VolumeRecoveryPointInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeRecoveryPointsOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["VolumeRecoveryPointInfos"] = _VolumeRecoveryPointInfos,
	}
	asserts.AssertListVolumeRecoveryPointsOutput(t)
	return t
end

keys.DeleteTapeArchiveInput = { ["TapeARN"] = true, nil }

function asserts.AssertDeleteTapeArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeArchiveInput to be of type 'table'")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTapeArchiveInput[k], "DeleteTapeArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeArchiveInput
-- <p>DeleteTapeArchiveInput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf (VTS).</p>
-- Required parameter: TapeARN
function M.DeleteTapeArchiveInput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeArchiveInput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertDeleteTapeArchiveInput(t)
	return t
end

keys.ActivateGatewayOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertActivateGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivateGatewayOutput[k], "ActivateGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateGatewayOutput
-- <p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.</p> <note> <p>For gateways activated prior to September 02, 2015 the gateway ARN contains the gateway name rather than the gateway id. Changing the name of the gateway has no effect on the gateway ARN.</p> </note>
-- @param _GatewayARN [GatewayARN] 
function M.ActivateGatewayOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateGatewayOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertActivateGatewayOutput(t)
	return t
end

keys.ListVolumesOutput = { ["Marker"] = true, ["GatewayARN"] = true, ["VolumeInfos"] = true, nil }

function asserts.AssertListVolumesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["VolumeInfos"] then asserts.AssertVolumeInfos(struct["VolumeInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVolumesOutput[k], "ListVolumesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumesOutput
--  
-- @param _Marker [Marker] 
-- @param _GatewayARN [GatewayARN] 
-- @param _VolumeInfos [VolumeInfos] 
function M.ListVolumesOutput(_Marker, _GatewayARN, _VolumeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumesOutput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["VolumeInfos"] = _VolumeInfos,
	}
	asserts.AssertListVolumesOutput(t)
	return t
end

keys.DeleteVolumeInput = { ["VolumeARN"] = true, nil }

function asserts.AssertDeleteVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVolumeInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVolumeInput[k], "DeleteVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVolumeInput
-- <p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to delete.</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
function M.DeleteVolumeInput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVolumeInput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertDeleteVolumeInput(t)
	return t
end

keys.ShutdownGatewayInput = { ["GatewayARN"] = true, nil }

function asserts.AssertShutdownGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShutdownGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShutdownGatewayInput[k], "ShutdownGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShutdownGatewayInput
-- <p>A JSON object containing the of the gateway to shut down.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.ShutdownGatewayInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShutdownGatewayInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertShutdownGatewayInput(t)
	return t
end

keys.DeleteGatewayInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDeleteGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGatewayInput[k], "DeleteGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGatewayInput
-- <p>A JSON object containing the id of the gateway to delete.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DeleteGatewayInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGatewayInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDeleteGatewayInput(t)
	return t
end

keys.UpdateChapCredentialsInput = { ["TargetARN"] = true, ["SecretToAuthenticateInitiator"] = true, ["InitiatorName"] = true, ["SecretToAuthenticateTarget"] = true, nil }

function asserts.AssertUpdateChapCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChapCredentialsInput to be of type 'table'")
	assert(struct["TargetARN"], "Expected key TargetARN to exist in table")
	assert(struct["SecretToAuthenticateInitiator"], "Expected key SecretToAuthenticateInitiator to exist in table")
	assert(struct["InitiatorName"], "Expected key InitiatorName to exist in table")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["SecretToAuthenticateInitiator"] then asserts.AssertChapSecret(struct["SecretToAuthenticateInitiator"]) end
	if struct["InitiatorName"] then asserts.AssertIqnName(struct["InitiatorName"]) end
	if struct["SecretToAuthenticateTarget"] then asserts.AssertChapSecret(struct["SecretToAuthenticateTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChapCredentialsInput[k], "UpdateChapCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChapCredentialsInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$TargetARN</a> </p> </li> </ul>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified VolumeARN.</p>
-- @param _SecretToAuthenticateInitiator [ChapSecret] <p>The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> <note> <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p> </note>
-- @param _InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- @param _SecretToAuthenticateTarget [ChapSecret] <p>The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p> <note> <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p> </note>
-- Required parameter: TargetARN
-- Required parameter: SecretToAuthenticateInitiator
-- Required parameter: InitiatorName
function M.UpdateChapCredentialsInput(_TargetARN, _SecretToAuthenticateInitiator, _InitiatorName, _SecretToAuthenticateTarget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateChapCredentialsInput")
	local t = { 
		["TargetARN"] = _TargetARN,
		["SecretToAuthenticateInitiator"] = _SecretToAuthenticateInitiator,
		["InitiatorName"] = _InitiatorName,
		["SecretToAuthenticateTarget"] = _SecretToAuthenticateTarget,
	}
	asserts.AssertUpdateChapCredentialsInput(t)
	return t
end

keys.DescribeUploadBufferInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeUploadBufferInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUploadBufferInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUploadBufferInput[k], "DescribeUploadBufferInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUploadBufferInput
--  
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DescribeUploadBufferInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUploadBufferInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeUploadBufferInput(t)
	return t
end

keys.ListLocalDisksOutput = { ["GatewayARN"] = true, ["Disks"] = true, nil }

function asserts.AssertListLocalDisksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLocalDisksOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Disks"] then asserts.AssertDisks(struct["Disks"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLocalDisksOutput[k], "ListLocalDisksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLocalDisksOutput
--  
-- @param _GatewayARN [GatewayARN] 
-- @param _Disks [Disks] 
function M.ListLocalDisksOutput(_GatewayARN, _Disks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLocalDisksOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["Disks"] = _Disks,
	}
	asserts.AssertListLocalDisksOutput(t)
	return t
end

keys.GatewayInfo = { ["GatewayId"] = true, ["GatewayARN"] = true, ["GatewayName"] = true, ["GatewayOperationalState"] = true, ["GatewayType"] = true, nil }

function asserts.AssertGatewayInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GatewayInfo to be of type 'table'")
	if struct["GatewayId"] then asserts.AssertGatewayId(struct["GatewayId"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["GatewayName"] then asserts.Assertstring(struct["GatewayName"]) end
	if struct["GatewayOperationalState"] then asserts.AssertGatewayOperationalState(struct["GatewayOperationalState"]) end
	if struct["GatewayType"] then asserts.AssertGatewayType(struct["GatewayType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GatewayInfo[k], "GatewayInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GatewayInfo
-- <p>Describes a gateway object.</p>
-- @param _GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p>
-- @param _GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param _GatewayName [string] <p>The name of the gateway.</p>
-- @param _GatewayOperationalState [GatewayOperationalState] <p>The state of the gateway.</p> <p>Valid Values: DISABLED or ACTIVE</p>
-- @param _GatewayType [GatewayType] <p>The type of the gateway.</p>
function M.GatewayInfo(_GatewayId, _GatewayARN, _GatewayName, _GatewayOperationalState, _GatewayType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GatewayInfo")
	local t = { 
		["GatewayId"] = _GatewayId,
		["GatewayARN"] = _GatewayARN,
		["GatewayName"] = _GatewayName,
		["GatewayOperationalState"] = _GatewayOperationalState,
		["GatewayType"] = _GatewayType,
	}
	asserts.AssertGatewayInfo(t)
	return t
end

keys.FileShareInfo = { ["FileShareARN"] = true, ["GatewayARN"] = true, ["FileShareStatus"] = true, ["FileShareId"] = true, nil }

function asserts.AssertFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["FileShareStatus"] then asserts.AssertFileShareStatus(struct["FileShareStatus"]) end
	if struct["FileShareId"] then asserts.AssertFileShareId(struct["FileShareId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileShareInfo[k], "FileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileShareInfo
-- <p>Describes a file share.</p>
-- @param _FileShareARN [FileShareARN] 
-- @param _GatewayARN [GatewayARN] 
-- @param _FileShareStatus [FileShareStatus] 
-- @param _FileShareId [FileShareId] 
function M.FileShareInfo(_FileShareARN, _GatewayARN, _FileShareStatus, _FileShareId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileShareInfo")
	local t = { 
		["FileShareARN"] = _FileShareARN,
		["GatewayARN"] = _GatewayARN,
		["FileShareStatus"] = _FileShareStatus,
		["FileShareId"] = _FileShareId,
	}
	asserts.AssertFileShareInfo(t)
	return t
end

keys.AddTagsToResourceOutput = { ["ResourceARN"] = true, nil }

function asserts.AssertAddTagsToResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceOutput to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceOutput[k], "AddTagsToResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceOutput
-- <p>AddTagsToResourceOutput</p>
-- @param _ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
function M.AddTagsToResourceOutput(_ResourceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceOutput")
	local t = { 
		["ResourceARN"] = _ResourceARN,
	}
	asserts.AssertAddTagsToResourceOutput(t)
	return t
end

keys.AddUploadBufferOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertAddUploadBufferOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddUploadBufferOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddUploadBufferOutput[k], "AddUploadBufferOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddUploadBufferOutput
--  
-- @param _GatewayARN [GatewayARN] 
function M.AddUploadBufferOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddUploadBufferOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertAddUploadBufferOutput(t)
	return t
end

keys.TapeInfo = { ["TapeStatus"] = true, ["TapeARN"] = true, ["TapeSizeInBytes"] = true, ["GatewayARN"] = true, ["TapeBarcode"] = true, nil }

function asserts.AssertTapeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeInfo to be of type 'table'")
	if struct["TapeStatus"] then asserts.AssertTapeStatus(struct["TapeStatus"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeBarcode"] then asserts.AssertTapeBarcode(struct["TapeBarcode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TapeInfo[k], "TapeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TapeInfo
-- <p>Describes a virtual tape.</p>
-- @param _TapeStatus [TapeStatus] <p>The status of the tape.</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of a virtual tape.</p>
-- @param _TapeSizeInBytes [TapeSize] <p>The size, in bytes, of a virtual tape.</p>
-- @param _GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param _TapeBarcode [TapeBarcode] <p>The barcode that identifies a specific virtual tape.</p>
function M.TapeInfo(_TapeStatus, _TapeARN, _TapeSizeInBytes, _GatewayARN, _TapeBarcode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TapeInfo")
	local t = { 
		["TapeStatus"] = _TapeStatus,
		["TapeARN"] = _TapeARN,
		["TapeSizeInBytes"] = _TapeSizeInBytes,
		["GatewayARN"] = _GatewayARN,
		["TapeBarcode"] = _TapeBarcode,
	}
	asserts.AssertTapeInfo(t)
	return t
end

keys.DeleteTapeArchiveOutput = { ["TapeARN"] = true, nil }

function asserts.AssertDeleteTapeArchiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeArchiveOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTapeArchiveOutput[k], "DeleteTapeArchiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeArchiveOutput
-- <p>DeleteTapeArchiveOutput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape that was deleted from the virtual tape shelf (VTS).</p>
function M.DeleteTapeArchiveOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeArchiveOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertDeleteTapeArchiveOutput(t)
	return t
end

keys.DeleteChapCredentialsOutput = { ["TargetARN"] = true, ["InitiatorName"] = true, nil }

function asserts.AssertDeleteChapCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChapCredentialsOutput to be of type 'table'")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["InitiatorName"] then asserts.AssertIqnName(struct["InitiatorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChapCredentialsOutput[k], "DeleteChapCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChapCredentialsOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the target.</p>
-- @param _InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
function M.DeleteChapCredentialsOutput(_TargetARN, _InitiatorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteChapCredentialsOutput")
	local t = { 
		["TargetARN"] = _TargetARN,
		["InitiatorName"] = _InitiatorName,
	}
	asserts.AssertDeleteChapCredentialsOutput(t)
	return t
end

keys.RefreshCacheInput = { ["FileShareARN"] = true, nil }

function asserts.AssertRefreshCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshCacheInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshCacheInput[k], "RefreshCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshCacheInput
--  
-- @param _FileShareARN [FileShareARN] 
-- Required parameter: FileShareARN
function M.RefreshCacheInput(_FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshCacheInput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
	}
	asserts.AssertRefreshCacheInput(t)
	return t
end

keys.ActivateGatewayInput = { ["GatewayName"] = true, ["GatewayType"] = true, ["TapeDriveType"] = true, ["MediumChangerType"] = true, ["GatewayTimezone"] = true, ["GatewayRegion"] = true, ["ActivationKey"] = true, nil }

function asserts.AssertActivateGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateGatewayInput to be of type 'table'")
	assert(struct["ActivationKey"], "Expected key ActivationKey to exist in table")
	assert(struct["GatewayName"], "Expected key GatewayName to exist in table")
	assert(struct["GatewayTimezone"], "Expected key GatewayTimezone to exist in table")
	assert(struct["GatewayRegion"], "Expected key GatewayRegion to exist in table")
	if struct["GatewayName"] then asserts.AssertGatewayName(struct["GatewayName"]) end
	if struct["GatewayType"] then asserts.AssertGatewayType(struct["GatewayType"]) end
	if struct["TapeDriveType"] then asserts.AssertTapeDriveType(struct["TapeDriveType"]) end
	if struct["MediumChangerType"] then asserts.AssertMediumChangerType(struct["MediumChangerType"]) end
	if struct["GatewayTimezone"] then asserts.AssertGatewayTimezone(struct["GatewayTimezone"]) end
	if struct["GatewayRegion"] then asserts.AssertRegionId(struct["GatewayRegion"]) end
	if struct["ActivationKey"] then asserts.AssertActivationKey(struct["ActivationKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivateGatewayInput[k], "ActivateGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateGatewayInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>ActivateGatewayInput$ActivationKey</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayName</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayRegion</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayTimezone</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$TapeDriveType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$MediumChangerType</a> </p> </li> </ul>
-- @param _GatewayName [GatewayName] <p>The name you configured for your gateway.</p>
-- @param _GatewayType [GatewayType] <p>A value that defines the type of gateway to activate. The type specified is critical to all later functions of the gateway and cannot be changed after activation. The default value is <code>STORED</code>. </p> <p> Valid Values: "STORED", "CACHED", "VTL", "FILE_S3"</p>
-- @param _TapeDriveType [TapeDriveType] <p>The value that indicates the type of tape drive to use for tape gateway. This field is optional.</p> <p> Valid Values: "IBM-ULT3580-TD5" </p>
-- @param _MediumChangerType [MediumChangerType] <p>The value that indicates the type of medium changer to use for tape gateway. This field is optional.</p> <p> Valid Values: "STK-L700", "AWS-Gateway-VTL"</p>
-- @param _GatewayTimezone [GatewayTimezone] <p>A value that indicates the time zone you want to set for the gateway. The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.</p>
-- @param _GatewayRegion [RegionId] <p>A value that indicates the region where you want to store your data. The gateway region specified must be the same region as the region in your <code>Host</code> header in the request. For more information about available regions and endpoints for AWS Storage Gateway, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p> <p> Valid Values: "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-central-1", "eu-west-2", "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "sa-east-1"</p>
-- @param _ActivationKey [ActivationKey] <p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET request with redirects enabled to the gateway IP address (port 80). The redirect URL returned in the response provides you the activation key for your gateway in the query string parameter <code>activationKey</code>. It may also include other activation-related parameters, however, these are merely defaults -- the arguments you pass to the <code>ActivateGateway</code> API call determine the actual configuration of your gateway.</p>
-- Required parameter: ActivationKey
-- Required parameter: GatewayName
-- Required parameter: GatewayTimezone
-- Required parameter: GatewayRegion
function M.ActivateGatewayInput(_GatewayName, _GatewayType, _TapeDriveType, _MediumChangerType, _GatewayTimezone, _GatewayRegion, _ActivationKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateGatewayInput")
	local t = { 
		["GatewayName"] = _GatewayName,
		["GatewayType"] = _GatewayType,
		["TapeDriveType"] = _TapeDriveType,
		["MediumChangerType"] = _MediumChangerType,
		["GatewayTimezone"] = _GatewayTimezone,
		["GatewayRegion"] = _GatewayRegion,
		["ActivationKey"] = _ActivationKey,
	}
	asserts.AssertActivateGatewayInput(t)
	return t
end

keys.DescribeCacheInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheInput[k], "DescribeCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheInput
--  
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DescribeCacheInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeCacheInput(t)
	return t
end

keys.InvalidGatewayRequestException = { ["message"] = true, ["error"] = true, nil }

function asserts.AssertInvalidGatewayRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGatewayRequestException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["error"] then asserts.AssertStorageGatewayError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGatewayRequestException[k], "InvalidGatewayRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGatewayRequestException
-- <p>An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.</p>
-- @param _message [string] <p>A human-readable message describing the error that occurred.</p>
-- @param _error [StorageGatewayError] <p>A <a>StorageGatewayError</a> that provides more detail about the cause of the error.</p>
function M.InvalidGatewayRequestException(_message, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGatewayRequestException")
	local t = { 
		["message"] = _message,
		["error"] = _error,
	}
	asserts.AssertInvalidGatewayRequestException(t)
	return t
end

keys.DeleteVolumeOutput = { ["VolumeARN"] = true, nil }

function asserts.AssertDeleteVolumeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVolumeOutput to be of type 'table'")
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVolumeOutput[k], "DeleteVolumeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVolumeOutput
-- <p>A JSON object containing the of the storage volume that was deleted</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume that was deleted. It is the same ARN you provided in the request.</p>
function M.DeleteVolumeOutput(_VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVolumeOutput")
	local t = { 
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertDeleteVolumeOutput(t)
	return t
end

keys.RetrieveTapeArchiveInput = { ["GatewayARN"] = true, ["TapeARN"] = true, nil }

function asserts.AssertRetrieveTapeArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeArchiveInput to be of type 'table'")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveTapeArchiveInput[k], "RetrieveTapeArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeArchiveInput
-- <p>RetrieveTapeArchiveInput</p>
-- @param _GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p> <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape gateway.</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual tape shelf (VTS).</p>
-- Required parameter: TapeARN
-- Required parameter: GatewayARN
function M.RetrieveTapeArchiveInput(_GatewayARN, _TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeArchiveInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertRetrieveTapeArchiveInput(t)
	return t
end

keys.DescribeCachediSCSIVolumesInput = { ["VolumeARNs"] = true, nil }

function asserts.AssertDescribeCachediSCSIVolumesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCachediSCSIVolumesInput to be of type 'table'")
	assert(struct["VolumeARNs"], "Expected key VolumeARNs to exist in table")
	if struct["VolumeARNs"] then asserts.AssertVolumeARNs(struct["VolumeARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCachediSCSIVolumesInput[k], "DescribeCachediSCSIVolumesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCachediSCSIVolumesInput
--  
-- @param _VolumeARNs [VolumeARNs] 
-- Required parameter: VolumeARNs
function M.DescribeCachediSCSIVolumesInput(_VolumeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCachediSCSIVolumesInput")
	local t = { 
		["VolumeARNs"] = _VolumeARNs,
	}
	asserts.AssertDescribeCachediSCSIVolumesInput(t)
	return t
end

keys.UpdateGatewayInformationOutput = { ["GatewayARN"] = true, ["GatewayName"] = true, nil }

function asserts.AssertUpdateGatewayInformationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewayInformationOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["GatewayName"] then asserts.Assertstring(struct["GatewayName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGatewayInformationOutput[k], "UpdateGatewayInformationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewayInformationOutput
-- <p>A JSON object containing the ARN of the gateway that was updated.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _GatewayName [string] 
function M.UpdateGatewayInformationOutput(_GatewayARN, _GatewayName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewayInformationOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["GatewayName"] = _GatewayName,
	}
	asserts.AssertUpdateGatewayInformationOutput(t)
	return t
end

keys.ListFileSharesInput = { ["Marker"] = true, ["GatewayARN"] = true, ["Limit"] = true, nil }

function asserts.AssertListFileSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFileSharesInput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFileSharesInput[k], "ListFileSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFileSharesInput
-- <p>ListFileShareInput</p>
-- @param _Marker [Marker] <p>Opaque pagination token returned from a previous ListFileShares operation. If present, <code>Marker</code> specifies where to continue the list from after a previous call to ListFileShares. Optional.</p>
-- @param _GatewayARN [GatewayARN] <p>The Amazon resource Name (ARN) of the gateway whose file shares you want to list. If this field is not present, all file shares under your account are listed.</p>
-- @param _Limit [PositiveIntObject] <p>The maximum number of file shares to return in the response. The value must be an integer with a value greater than zero. Optional.</p>
function M.ListFileSharesInput(_Marker, _GatewayARN, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFileSharesInput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["Limit"] = _Limit,
	}
	asserts.AssertListFileSharesInput(t)
	return t
end

keys.UpdateGatewaySoftwareNowOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertUpdateGatewaySoftwareNowOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewaySoftwareNowOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGatewaySoftwareNowOutput[k], "UpdateGatewaySoftwareNowOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewaySoftwareNowOutput
-- <p>A JSON object containing the of the gateway that was updated.</p>
-- @param _GatewayARN [GatewayARN] 
function M.UpdateGatewaySoftwareNowOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewaySoftwareNowOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertUpdateGatewaySoftwareNowOutput(t)
	return t
end

keys.RemoveTagsFromResourceOutput = { ["ResourceARN"] = true, nil }

function asserts.AssertRemoveTagsFromResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceOutput to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceOutput[k], "RemoveTagsFromResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceOutput
-- <p>RemoveTagsFromResourceOutput</p>
-- @param _ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource that the tags were removed from.</p>
function M.RemoveTagsFromResourceOutput(_ResourceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceOutput")
	local t = { 
		["ResourceARN"] = _ResourceARN,
	}
	asserts.AssertRemoveTagsFromResourceOutput(t)
	return t
end

keys.DeleteBandwidthRateLimitOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertDeleteBandwidthRateLimitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBandwidthRateLimitOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBandwidthRateLimitOutput[k], "DeleteBandwidthRateLimitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBandwidthRateLimitOutput
-- <p>A JSON object containing the of the gateway whose bandwidth rate information was deleted.</p>
-- @param _GatewayARN [GatewayARN] 
function M.DeleteBandwidthRateLimitOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBandwidthRateLimitOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDeleteBandwidthRateLimitOutput(t)
	return t
end

keys.UpdateMaintenanceStartTimeOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertUpdateMaintenanceStartTimeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceStartTimeOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMaintenanceStartTimeOutput[k], "UpdateMaintenanceStartTimeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceStartTimeOutput
-- <p>A JSON object containing the of the gateway whose maintenance start time is updated.</p>
-- @param _GatewayARN [GatewayARN] 
function M.UpdateMaintenanceStartTimeOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMaintenanceStartTimeOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertUpdateMaintenanceStartTimeOutput(t)
	return t
end

keys.CreateSnapshotFromVolumeRecoveryPointInput = { ["SnapshotDescription"] = true, ["VolumeARN"] = true, nil }

function asserts.AssertCreateSnapshotFromVolumeRecoveryPointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotFromVolumeRecoveryPointInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	assert(struct["SnapshotDescription"], "Expected key SnapshotDescription to exist in table")
	if struct["SnapshotDescription"] then asserts.AssertSnapshotDescription(struct["SnapshotDescription"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotFromVolumeRecoveryPointInput[k], "CreateSnapshotFromVolumeRecoveryPointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotFromVolumeRecoveryPointInput
--  
-- @param _SnapshotDescription [SnapshotDescription] 
-- @param _VolumeARN [VolumeARN] 
-- Required parameter: VolumeARN
-- Required parameter: SnapshotDescription
function M.CreateSnapshotFromVolumeRecoveryPointInput(_SnapshotDescription, _VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotFromVolumeRecoveryPointInput")
	local t = { 
		["SnapshotDescription"] = _SnapshotDescription,
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertCreateSnapshotFromVolumeRecoveryPointInput(t)
	return t
end

keys.TapeArchive = { ["TapeCreatedDate"] = true, ["TapeUsedInBytes"] = true, ["TapeARN"] = true, ["CompletionTime"] = true, ["TapeSizeInBytes"] = true, ["TapeBarcode"] = true, ["RetrievedTo"] = true, ["TapeStatus"] = true, nil }

function asserts.AssertTapeArchive(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeArchive to be of type 'table'")
	if struct["TapeCreatedDate"] then asserts.AssertTime(struct["TapeCreatedDate"]) end
	if struct["TapeUsedInBytes"] then asserts.AssertTapeUsage(struct["TapeUsedInBytes"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	if struct["CompletionTime"] then asserts.AssertTime(struct["CompletionTime"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeBarcode"] then asserts.AssertTapeBarcode(struct["TapeBarcode"]) end
	if struct["RetrievedTo"] then asserts.AssertGatewayARN(struct["RetrievedTo"]) end
	if struct["TapeStatus"] then asserts.AssertTapeArchiveStatus(struct["TapeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.TapeArchive[k], "TapeArchive contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TapeArchive
-- <p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>
-- @param _TapeCreatedDate [Time] 
-- @param _TapeUsedInBytes [TapeUsage] <p>The size, in bytes, of data written to the virtual tape.</p> <note> <p>This value is not available for tapes created prior to May,13 2015.</p> </note>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of an archived virtual tape.</p>
-- @param _CompletionTime [Time] <p>The time that the archiving of the virtual tape was completed.</p> <p>The string format of the completion time is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
-- @param _TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the archived virtual tape.</p>
-- @param _TapeBarcode [TapeBarcode] <p>The barcode that identifies the archived virtual tape.</p>
-- @param _RetrievedTo [GatewayARN] <p>The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being retrieved to.</p> <p>The virtual tape is retrieved from the virtual tape shelf (VTS).</p>
-- @param _TapeStatus [TapeArchiveStatus] <p>The current state of the archived virtual tape.</p>
function M.TapeArchive(_TapeCreatedDate, _TapeUsedInBytes, _TapeARN, _CompletionTime, _TapeSizeInBytes, _TapeBarcode, _RetrievedTo, _TapeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TapeArchive")
	local t = { 
		["TapeCreatedDate"] = _TapeCreatedDate,
		["TapeUsedInBytes"] = _TapeUsedInBytes,
		["TapeARN"] = _TapeARN,
		["CompletionTime"] = _CompletionTime,
		["TapeSizeInBytes"] = _TapeSizeInBytes,
		["TapeBarcode"] = _TapeBarcode,
		["RetrievedTo"] = _RetrievedTo,
		["TapeStatus"] = _TapeStatus,
	}
	asserts.AssertTapeArchive(t)
	return t
end

keys.StartGatewayInput = { ["GatewayARN"] = true, nil }

function asserts.AssertStartGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartGatewayInput[k], "StartGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGatewayInput
-- <p>A JSON object containing the of the gateway to start.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.StartGatewayInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGatewayInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertStartGatewayInput(t)
	return t
end

keys.DescribeNFSFileSharesOutput = { ["NFSFileShareInfoList"] = true, nil }

function asserts.AssertDescribeNFSFileSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNFSFileSharesOutput to be of type 'table'")
	if struct["NFSFileShareInfoList"] then asserts.AssertNFSFileShareInfoList(struct["NFSFileShareInfoList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNFSFileSharesOutput[k], "DescribeNFSFileSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNFSFileSharesOutput
-- <p>DescribeNFSFileSharesOutput</p>
-- @param _NFSFileShareInfoList [NFSFileShareInfoList] <p>An array containing a description for each requested file share. </p>
function M.DescribeNFSFileSharesOutput(_NFSFileShareInfoList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNFSFileSharesOutput")
	local t = { 
		["NFSFileShareInfoList"] = _NFSFileShareInfoList,
	}
	asserts.AssertDescribeNFSFileSharesOutput(t)
	return t
end

keys.CreateNFSFileShareOutput = { ["FileShareARN"] = true, nil }

function asserts.AssertCreateNFSFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNFSFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNFSFileShareOutput[k], "CreateNFSFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNFSFileShareOutput
-- <p>CreateNFSFileShareOutput</p>
-- @param _FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the newly created file share. </p>
function M.CreateNFSFileShareOutput(_FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNFSFileShareOutput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
	}
	asserts.AssertCreateNFSFileShareOutput(t)
	return t
end

keys.VTLDevice = { ["VTLDeviceType"] = true, ["VTLDeviceProductIdentifier"] = true, ["DeviceiSCSIAttributes"] = true, ["VTLDeviceARN"] = true, ["VTLDeviceVendor"] = true, nil }

function asserts.AssertVTLDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VTLDevice to be of type 'table'")
	if struct["VTLDeviceType"] then asserts.AssertVTLDeviceType(struct["VTLDeviceType"]) end
	if struct["VTLDeviceProductIdentifier"] then asserts.AssertVTLDeviceProductIdentifier(struct["VTLDeviceProductIdentifier"]) end
	if struct["DeviceiSCSIAttributes"] then asserts.AssertDeviceiSCSIAttributes(struct["DeviceiSCSIAttributes"]) end
	if struct["VTLDeviceARN"] then asserts.AssertVTLDeviceARN(struct["VTLDeviceARN"]) end
	if struct["VTLDeviceVendor"] then asserts.AssertVTLDeviceVendor(struct["VTLDeviceVendor"]) end
	for k,_ in pairs(struct) do
		assert(keys.VTLDevice[k], "VTLDevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VTLDevice
-- <p>Represents a device object associated with a tape gateway.</p>
-- @param _VTLDeviceType [VTLDeviceType] 
-- @param _VTLDeviceProductIdentifier [VTLDeviceProductIdentifier] 
-- @param _DeviceiSCSIAttributes [DeviceiSCSIAttributes] <p>A list of iSCSI information about a VTL device.</p>
-- @param _VTLDeviceARN [VTLDeviceARN] <p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media changer).</p>
-- @param _VTLDeviceVendor [VTLDeviceVendor] 
function M.VTLDevice(_VTLDeviceType, _VTLDeviceProductIdentifier, _DeviceiSCSIAttributes, _VTLDeviceARN, _VTLDeviceVendor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VTLDevice")
	local t = { 
		["VTLDeviceType"] = _VTLDeviceType,
		["VTLDeviceProductIdentifier"] = _VTLDeviceProductIdentifier,
		["DeviceiSCSIAttributes"] = _DeviceiSCSIAttributes,
		["VTLDeviceARN"] = _VTLDeviceARN,
		["VTLDeviceVendor"] = _VTLDeviceVendor,
	}
	asserts.AssertVTLDevice(t)
	return t
end

keys.AddUploadBufferInput = { ["GatewayARN"] = true, ["DiskIds"] = true, nil }

function asserts.AssertAddUploadBufferInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddUploadBufferInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskIds"], "Expected key DiskIds to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then asserts.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddUploadBufferInput[k], "AddUploadBufferInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddUploadBufferInput
--  
-- @param _GatewayARN [GatewayARN] 
-- @param _DiskIds [DiskIds] 
-- Required parameter: GatewayARN
-- Required parameter: DiskIds
function M.AddUploadBufferInput(_GatewayARN, _DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddUploadBufferInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["DiskIds"] = _DiskIds,
	}
	asserts.AssertAddUploadBufferInput(t)
	return t
end

keys.CancelRetrievalInput = { ["GatewayARN"] = true, ["TapeARN"] = true, nil }

function asserts.AssertCancelRetrievalInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelRetrievalInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelRetrievalInput[k], "CancelRetrievalInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelRetrievalInput
-- <p>CancelRetrievalInput</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval for.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeARN
function M.CancelRetrievalInput(_GatewayARN, _TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelRetrievalInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertCancelRetrievalInput(t)
	return t
end

keys.ListGatewaysOutput = { ["Marker"] = true, ["Gateways"] = true, nil }

function asserts.AssertListGatewaysOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGatewaysOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Gateways"] then asserts.AssertGateways(struct["Gateways"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGatewaysOutput[k], "ListGatewaysOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGatewaysOutput
--  
-- @param _Marker [Marker] 
-- @param _Gateways [Gateways] 
function M.ListGatewaysOutput(_Marker, _Gateways, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGatewaysOutput")
	local t = { 
		["Marker"] = _Marker,
		["Gateways"] = _Gateways,
	}
	asserts.AssertListGatewaysOutput(t)
	return t
end

keys.CreateTapeWithBarcodeInput = { ["GatewayARN"] = true, ["TapeSizeInBytes"] = true, ["TapeBarcode"] = true, nil }

function asserts.AssertCreateTapeWithBarcodeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapeWithBarcodeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeSizeInBytes"], "Expected key TapeSizeInBytes to exist in table")
	assert(struct["TapeBarcode"], "Expected key TapeBarcode to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeBarcode"] then asserts.AssertTapeBarcode(struct["TapeBarcode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTapeWithBarcodeInput[k], "CreateTapeWithBarcodeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapeWithBarcodeInput
-- <p>CreateTapeWithBarcodeInput</p>
-- @param _GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tape with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param _TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tape that you want to create.</p> <note> <p>The size must be aligned by gigabyte (1024*1024*1024 byte).</p> </note>
-- @param _TapeBarcode [TapeBarcode] <p>The barcode that you want to assign to the tape.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeSizeInBytes
-- Required parameter: TapeBarcode
function M.CreateTapeWithBarcodeInput(_GatewayARN, _TapeSizeInBytes, _TapeBarcode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapeWithBarcodeInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeSizeInBytes"] = _TapeSizeInBytes,
		["TapeBarcode"] = _TapeBarcode,
	}
	asserts.AssertCreateTapeWithBarcodeInput(t)
	return t
end

keys.DescribeWorkingStorageInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeWorkingStorageInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkingStorageInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkingStorageInput[k], "DescribeWorkingStorageInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkingStorageInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DescribeWorkingStorageInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkingStorageInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeWorkingStorageInput(t)
	return t
end

keys.UpdateSnapshotScheduleInput = { ["RecurrenceInHours"] = true, ["StartAt"] = true, ["Description"] = true, ["VolumeARN"] = true, nil }

function asserts.AssertUpdateSnapshotScheduleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSnapshotScheduleInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	assert(struct["StartAt"], "Expected key StartAt to exist in table")
	assert(struct["RecurrenceInHours"], "Expected key RecurrenceInHours to exist in table")
	if struct["RecurrenceInHours"] then asserts.AssertRecurrenceInHours(struct["RecurrenceInHours"]) end
	if struct["StartAt"] then asserts.AssertHourOfDay(struct["StartAt"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSnapshotScheduleInput[k], "UpdateSnapshotScheduleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSnapshotScheduleInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateSnapshotScheduleInput$Description</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$StartAt</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$VolumeARN</a> </p> </li> </ul>
-- @param _RecurrenceInHours [RecurrenceInHours] <p>Frequency of snapshots. Specify the number of hours between snapshots.</p>
-- @param _StartAt [HourOfDay] <p>The hour of the day at which the snapshot schedule begins represented as <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
-- @param _Description [Description] <p>Optional description of the snapshot that overwrites the existing description.</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
-- Required parameter: StartAt
-- Required parameter: RecurrenceInHours
function M.UpdateSnapshotScheduleInput(_RecurrenceInHours, _StartAt, _Description, _VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSnapshotScheduleInput")
	local t = { 
		["RecurrenceInHours"] = _RecurrenceInHours,
		["StartAt"] = _StartAt,
		["Description"] = _Description,
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertUpdateSnapshotScheduleInput(t)
	return t
end

keys.DeviceiSCSIAttributes = { ["TargetARN"] = true, ["NetworkInterfaceId"] = true, ["ChapEnabled"] = true, ["NetworkInterfacePort"] = true, nil }

function asserts.AssertDeviceiSCSIAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceiSCSIAttributes to be of type 'table'")
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["ChapEnabled"] then asserts.Assertboolean(struct["ChapEnabled"]) end
	if struct["NetworkInterfacePort"] then asserts.Assertinteger(struct["NetworkInterfacePort"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceiSCSIAttributes[k], "DeviceiSCSIAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceiSCSIAttributes
-- <p>Lists iSCSI information about a VTL device.</p>
-- @param _TargetARN [TargetARN] <p>Specifies the unique Amazon Resource Name(ARN) that encodes the iSCSI qualified name(iqn) of a tape drive or media changer target.</p>
-- @param _NetworkInterfaceId [NetworkInterfaceId] <p>The network interface identifier of the VTL device.</p>
-- @param _ChapEnabled [boolean] <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
-- @param _NetworkInterfacePort [integer] <p>The port used to communicate with iSCSI VTL device targets.</p>
function M.DeviceiSCSIAttributes(_TargetARN, _NetworkInterfaceId, _ChapEnabled, _NetworkInterfacePort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceiSCSIAttributes")
	local t = { 
		["TargetARN"] = _TargetARN,
		["NetworkInterfaceId"] = _NetworkInterfaceId,
		["ChapEnabled"] = _ChapEnabled,
		["NetworkInterfacePort"] = _NetworkInterfacePort,
	}
	asserts.AssertDeviceiSCSIAttributes(t)
	return t
end

keys.DescribeChapCredentialsOutput = { ["ChapCredentials"] = true, nil }

function asserts.AssertDescribeChapCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChapCredentialsOutput to be of type 'table'")
	if struct["ChapCredentials"] then asserts.AssertChapCredentials(struct["ChapCredentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChapCredentialsOutput[k], "DescribeChapCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChapCredentialsOutput
-- <p>A JSON object containing a .</p>
-- @param _ChapCredentials [ChapCredentials] <p>An array of <a>ChapInfo</a> objects that represent CHAP credentials. Each object in the array contains CHAP credential information for one target-initiator pair. If no CHAP credentials are set, an empty array is returned. CHAP credential information is provided in a JSON object with the following fields:</p> <ul> <li> <p> <b>InitiatorName</b>: The iSCSI initiator that connects to the target.</p> </li> <li> <p> <b>SecretToAuthenticateInitiator</b>: The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> </li> <li> <p> <b>SecretToAuthenticateTarget</b>: The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> </li> <li> <p> <b>TargetARN</b>: The Amazon Resource Name (ARN) of the storage volume.</p> </li> </ul>
function M.DescribeChapCredentialsOutput(_ChapCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeChapCredentialsOutput")
	local t = { 
		["ChapCredentials"] = _ChapCredentials,
	}
	asserts.AssertDescribeChapCredentialsOutput(t)
	return t
end

keys.ServiceUnavailableError = { ["message"] = true, ["error"] = true, nil }

function asserts.AssertServiceUnavailableError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableError to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["error"] then asserts.AssertStorageGatewayError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableError[k], "ServiceUnavailableError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableError
-- <p>An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.</p>
-- @param _message [string] <p>A human-readable message describing the error that occurred.</p>
-- @param _error [StorageGatewayError] <p>A <a>StorageGatewayError</a> that provides more information about the cause of the error.</p>
function M.ServiceUnavailableError(_message, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableError")
	local t = { 
		["message"] = _message,
		["error"] = _error,
	}
	asserts.AssertServiceUnavailableError(t)
	return t
end

keys.UpdateNFSFileShareOutput = { ["FileShareARN"] = true, nil }

function asserts.AssertUpdateNFSFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNFSFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNFSFileShareOutput[k], "UpdateNFSFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNFSFileShareOutput
-- <p>UpdateNFSFileShareOutput</p>
-- @param _FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the updated file share. </p>
function M.UpdateNFSFileShareOutput(_FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNFSFileShareOutput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
	}
	asserts.AssertUpdateNFSFileShareOutput(t)
	return t
end

keys.NFSFileShareDefaults = { ["OwnerId"] = true, ["DirectoryMode"] = true, ["GroupId"] = true, ["FileMode"] = true, nil }

function asserts.AssertNFSFileShareDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NFSFileShareDefaults to be of type 'table'")
	if struct["OwnerId"] then asserts.AssertPermissionId(struct["OwnerId"]) end
	if struct["DirectoryMode"] then asserts.AssertPermissionMode(struct["DirectoryMode"]) end
	if struct["GroupId"] then asserts.AssertPermissionId(struct["GroupId"]) end
	if struct["FileMode"] then asserts.AssertPermissionMode(struct["FileMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.NFSFileShareDefaults[k], "NFSFileShareDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NFSFileShareDefaults
-- <p>Describes file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. This operation is only supported in the file gateway architecture.</p>
-- @param _OwnerId [PermissionId] <p>The default owner ID for files in the file share (unless the files have another owner ID specified). The default value is nfsnobody. </p>
-- @param _DirectoryMode [PermissionMode] <p>The Unix directory mode in the form "nnnn". For example, "0666" represents the default access mode for all directories inside the file share. The default value is 0777.</p>
-- @param _GroupId [PermissionId] <p>The default group ID for the file share (unless the files have another group ID specified). The default value is nfsnobody. </p>
-- @param _FileMode [PermissionMode] <p>The Unix file mode in the form "nnnn". For example, "0666" represents the default file mode inside the file share. The default value is 0666. </p>
function M.NFSFileShareDefaults(_OwnerId, _DirectoryMode, _GroupId, _FileMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NFSFileShareDefaults")
	local t = { 
		["OwnerId"] = _OwnerId,
		["DirectoryMode"] = _DirectoryMode,
		["GroupId"] = _GroupId,
		["FileMode"] = _FileMode,
	}
	asserts.AssertNFSFileShareDefaults(t)
	return t
end

keys.CancelArchivalInput = { ["GatewayARN"] = true, ["TapeARN"] = true, nil }

function asserts.AssertCancelArchivalInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelArchivalInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelArchivalInput[k], "CancelArchivalInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelArchivalInput
-- <p>CancelArchivalInput</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving for.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeARN
function M.CancelArchivalInput(_GatewayARN, _TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelArchivalInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertCancelArchivalInput(t)
	return t
end

keys.AddCacheOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertAddCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCacheOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddCacheOutput[k], "AddCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCacheOutput
--  
-- @param _GatewayARN [GatewayARN] 
function M.AddCacheOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCacheOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertAddCacheOutput(t)
	return t
end

keys.DescribeStorediSCSIVolumesInput = { ["VolumeARNs"] = true, nil }

function asserts.AssertDescribeStorediSCSIVolumesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStorediSCSIVolumesInput to be of type 'table'")
	assert(struct["VolumeARNs"], "Expected key VolumeARNs to exist in table")
	if struct["VolumeARNs"] then asserts.AssertVolumeARNs(struct["VolumeARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStorediSCSIVolumesInput[k], "DescribeStorediSCSIVolumesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStorediSCSIVolumesInput
-- <p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>
-- @param _VolumeARNs [VolumeARNs] <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a stored volume. All of the specified stored volumes must from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
-- Required parameter: VolumeARNs
function M.DescribeStorediSCSIVolumesInput(_VolumeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStorediSCSIVolumesInput")
	local t = { 
		["VolumeARNs"] = _VolumeARNs,
	}
	asserts.AssertDescribeStorediSCSIVolumesInput(t)
	return t
end

keys.DescribeCacheOutput = { ["CacheUsedPercentage"] = true, ["CacheMissPercentage"] = true, ["CacheDirtyPercentage"] = true, ["CacheHitPercentage"] = true, ["CacheAllocatedInBytes"] = true, ["GatewayARN"] = true, ["DiskIds"] = true, nil }

function asserts.AssertDescribeCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheOutput to be of type 'table'")
	if struct["CacheUsedPercentage"] then asserts.Assertdouble(struct["CacheUsedPercentage"]) end
	if struct["CacheMissPercentage"] then asserts.Assertdouble(struct["CacheMissPercentage"]) end
	if struct["CacheDirtyPercentage"] then asserts.Assertdouble(struct["CacheDirtyPercentage"]) end
	if struct["CacheHitPercentage"] then asserts.Assertdouble(struct["CacheHitPercentage"]) end
	if struct["CacheAllocatedInBytes"] then asserts.Assertlong(struct["CacheAllocatedInBytes"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then asserts.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheOutput[k], "DescribeCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheOutput
--  
-- @param _CacheUsedPercentage [double] 
-- @param _CacheMissPercentage [double] 
-- @param _CacheDirtyPercentage [double] 
-- @param _CacheHitPercentage [double] 
-- @param _CacheAllocatedInBytes [long] 
-- @param _GatewayARN [GatewayARN] 
-- @param _DiskIds [DiskIds] 
function M.DescribeCacheOutput(_CacheUsedPercentage, _CacheMissPercentage, _CacheDirtyPercentage, _CacheHitPercentage, _CacheAllocatedInBytes, _GatewayARN, _DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheOutput")
	local t = { 
		["CacheUsedPercentage"] = _CacheUsedPercentage,
		["CacheMissPercentage"] = _CacheMissPercentage,
		["CacheDirtyPercentage"] = _CacheDirtyPercentage,
		["CacheHitPercentage"] = _CacheHitPercentage,
		["CacheAllocatedInBytes"] = _CacheAllocatedInBytes,
		["GatewayARN"] = _GatewayARN,
		["DiskIds"] = _DiskIds,
	}
	asserts.AssertDescribeCacheOutput(t)
	return t
end

keys.CreateTapeWithBarcodeOutput = { ["TapeARN"] = true, nil }

function asserts.AssertCreateTapeWithBarcodeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapeWithBarcodeOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTapeWithBarcodeOutput[k], "CreateTapeWithBarcodeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapeWithBarcodeOutput
-- <p>CreateTapeOutput</p>
-- @param _TapeARN [TapeARN] <p>A unique Amazon Resource Name (ARN) that represents the virtual tape that was created.</p>
function M.CreateTapeWithBarcodeOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapeWithBarcodeOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertCreateTapeWithBarcodeOutput(t)
	return t
end

keys.DescribeTapesOutput = { ["Marker"] = true, ["Tapes"] = true, nil }

function asserts.AssertDescribeTapesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["Tapes"] then asserts.AssertTapes(struct["Tapes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTapesOutput[k], "DescribeTapesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapesOutput
-- <p>DescribeTapesOutput</p>
-- @param _Marker [Marker] <p>An opaque string which can be used as part of a subsequent DescribeTapes call to retrieve the next page of results.</p> <p>If a response does not contain a marker, then there are no more results to be retrieved.</p>
-- @param _Tapes [Tapes] <p>An array of virtual tape descriptions.</p>
function M.DescribeTapesOutput(_Marker, _Tapes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapesOutput")
	local t = { 
		["Marker"] = _Marker,
		["Tapes"] = _Tapes,
	}
	asserts.AssertDescribeTapesOutput(t)
	return t
end

keys.UpdateMaintenanceStartTimeInput = { ["HourOfDay"] = true, ["GatewayARN"] = true, ["DayOfWeek"] = true, ["MinuteOfHour"] = true, nil }

function asserts.AssertUpdateMaintenanceStartTimeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceStartTimeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["HourOfDay"], "Expected key HourOfDay to exist in table")
	assert(struct["MinuteOfHour"], "Expected key MinuteOfHour to exist in table")
	assert(struct["DayOfWeek"], "Expected key DayOfWeek to exist in table")
	if struct["HourOfDay"] then asserts.AssertHourOfDay(struct["HourOfDay"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DayOfWeek"] then asserts.AssertDayOfWeek(struct["DayOfWeek"]) end
	if struct["MinuteOfHour"] then asserts.AssertMinuteOfHour(struct["MinuteOfHour"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMaintenanceStartTimeInput[k], "UpdateMaintenanceStartTimeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceStartTimeInput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$HourOfDay</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a> </p> </li> </ul>
-- @param _HourOfDay [HourOfDay] <p>The hour component of the maintenance start time represented as <i>hh</i>, where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time zone of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _DayOfWeek [DayOfWeek] <p>The maintenance start time day of the week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.</p>
-- @param _MinuteOfHour [MinuteOfHour] <p>The minute component of the maintenance start time represented as <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.</p>
-- Required parameter: GatewayARN
-- Required parameter: HourOfDay
-- Required parameter: MinuteOfHour
-- Required parameter: DayOfWeek
function M.UpdateMaintenanceStartTimeInput(_HourOfDay, _GatewayARN, _DayOfWeek, _MinuteOfHour, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMaintenanceStartTimeInput")
	local t = { 
		["HourOfDay"] = _HourOfDay,
		["GatewayARN"] = _GatewayARN,
		["DayOfWeek"] = _DayOfWeek,
		["MinuteOfHour"] = _MinuteOfHour,
	}
	asserts.AssertUpdateMaintenanceStartTimeInput(t)
	return t
end

keys.DescribeTapeArchivesOutput = { ["Marker"] = true, ["TapeArchives"] = true, nil }

function asserts.AssertDescribeTapeArchivesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeArchivesOutput to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["TapeArchives"] then asserts.AssertTapeArchives(struct["TapeArchives"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTapeArchivesOutput[k], "DescribeTapeArchivesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeArchivesOutput
-- <p>DescribeTapeArchivesOutput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which the virtual tapes that were fetched for description ended. Use this marker in your next request to fetch the next set of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to describe, this field does not appear in the response.</p>
-- @param _TapeArchives [TapeArchives] <p>An array of virtual tape objects in the virtual tape shelf (VTS). The description includes of the Amazon Resource Name(ARN) of the virtual tapes. The information returned includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the tapes, progress of the description and tape barcode.</p>
function M.DescribeTapeArchivesOutput(_Marker, _TapeArchives, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeArchivesOutput")
	local t = { 
		["Marker"] = _Marker,
		["TapeArchives"] = _TapeArchives,
	}
	asserts.AssertDescribeTapeArchivesOutput(t)
	return t
end

keys.DeleteTapeOutput = { ["TapeARN"] = true, nil }

function asserts.AssertDeleteTapeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTapeOutput[k], "DeleteTapeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeOutput
-- <p>DeleteTapeOutput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the deleted virtual tape.</p>
function M.DeleteTapeOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertDeleteTapeOutput(t)
	return t
end

keys.StartGatewayOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertStartGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartGatewayOutput[k], "StartGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGatewayOutput
-- <p>A JSON object containing the of the gateway that was restarted.</p>
-- @param _GatewayARN [GatewayARN] 
function M.StartGatewayOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGatewayOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertStartGatewayOutput(t)
	return t
end

keys.DescribeBandwidthRateLimitInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeBandwidthRateLimitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBandwidthRateLimitInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBandwidthRateLimitInput[k], "DescribeBandwidthRateLimitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBandwidthRateLimitInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DescribeBandwidthRateLimitInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBandwidthRateLimitInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeBandwidthRateLimitInput(t)
	return t
end

keys.CreateSnapshotFromVolumeRecoveryPointOutput = { ["SnapshotId"] = true, ["VolumeARN"] = true, ["VolumeRecoveryPointTime"] = true, nil }

function asserts.AssertCreateSnapshotFromVolumeRecoveryPointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotFromVolumeRecoveryPointOutput to be of type 'table'")
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["VolumeRecoveryPointTime"] then asserts.Assertstring(struct["VolumeRecoveryPointTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotFromVolumeRecoveryPointOutput[k], "CreateSnapshotFromVolumeRecoveryPointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotFromVolumeRecoveryPointOutput
--  
-- @param _SnapshotId [SnapshotId] 
-- @param _VolumeARN [VolumeARN] 
-- @param _VolumeRecoveryPointTime [string] 
function M.CreateSnapshotFromVolumeRecoveryPointOutput(_SnapshotId, _VolumeARN, _VolumeRecoveryPointTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotFromVolumeRecoveryPointOutput")
	local t = { 
		["SnapshotId"] = _SnapshotId,
		["VolumeARN"] = _VolumeARN,
		["VolumeRecoveryPointTime"] = _VolumeRecoveryPointTime,
	}
	asserts.AssertCreateSnapshotFromVolumeRecoveryPointOutput(t)
	return t
end

keys.NetworkInterface = { ["Ipv4Address"] = true, ["MacAddress"] = true, ["Ipv6Address"] = true, nil }

function asserts.AssertNetworkInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterface to be of type 'table'")
	if struct["Ipv4Address"] then asserts.Assertstring(struct["Ipv4Address"]) end
	if struct["MacAddress"] then asserts.Assertstring(struct["MacAddress"]) end
	if struct["Ipv6Address"] then asserts.Assertstring(struct["Ipv6Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkInterface[k], "NetworkInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterface
-- <p>Describes a gateway's network interface.</p>
-- @param _Ipv4Address [string] <p>The Internet Protocol version 4 (IPv4) address of the interface.</p>
-- @param _MacAddress [string] <p>The Media Access Control (MAC) address of the interface.</p> <note> <p>This is currently unsupported and will not be returned in output.</p> </note>
-- @param _Ipv6Address [string] <p>The Internet Protocol version 6 (IPv6) address of the interface. <i>Currently not supported</i>.</p>
function M.NetworkInterface(_Ipv4Address, _MacAddress, _Ipv6Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NetworkInterface")
	local t = { 
		["Ipv4Address"] = _Ipv4Address,
		["MacAddress"] = _MacAddress,
		["Ipv6Address"] = _Ipv6Address,
	}
	asserts.AssertNetworkInterface(t)
	return t
end

keys.DeleteGatewayOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertDeleteGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGatewayOutput[k], "DeleteGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGatewayOutput
-- <p>A JSON object containing the id of the deleted gateway.</p>
-- @param _GatewayARN [GatewayARN] 
function M.DeleteGatewayOutput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGatewayOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDeleteGatewayOutput(t)
	return t
end

keys.UpdateVTLDeviceTypeInput = { ["DeviceType"] = true, ["VTLDeviceARN"] = true, nil }

function asserts.AssertUpdateVTLDeviceTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVTLDeviceTypeInput to be of type 'table'")
	assert(struct["VTLDeviceARN"], "Expected key VTLDeviceARN to exist in table")
	assert(struct["DeviceType"], "Expected key DeviceType to exist in table")
	if struct["DeviceType"] then asserts.AssertDeviceType(struct["DeviceType"]) end
	if struct["VTLDeviceARN"] then asserts.AssertVTLDeviceARN(struct["VTLDeviceARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVTLDeviceTypeInput[k], "UpdateVTLDeviceTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVTLDeviceTypeInput
--  
-- @param _DeviceType [DeviceType] <p>The type of medium changer you want to select.</p> <p> Valid Values: "STK-L700", "AWS-Gateway-VTL"</p>
-- @param _VTLDeviceARN [VTLDeviceARN] <p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>
-- Required parameter: VTLDeviceARN
-- Required parameter: DeviceType
function M.UpdateVTLDeviceTypeInput(_DeviceType, _VTLDeviceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateVTLDeviceTypeInput")
	local t = { 
		["DeviceType"] = _DeviceType,
		["VTLDeviceARN"] = _VTLDeviceARN,
	}
	asserts.AssertUpdateVTLDeviceTypeInput(t)
	return t
end

keys.DescribeWorkingStorageOutput = { ["GatewayARN"] = true, ["DiskIds"] = true, ["WorkingStorageAllocatedInBytes"] = true, ["WorkingStorageUsedInBytes"] = true, nil }

function asserts.AssertDescribeWorkingStorageOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkingStorageOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then asserts.AssertDiskIds(struct["DiskIds"]) end
	if struct["WorkingStorageAllocatedInBytes"] then asserts.Assertlong(struct["WorkingStorageAllocatedInBytes"]) end
	if struct["WorkingStorageUsedInBytes"] then asserts.Assertlong(struct["WorkingStorageUsedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkingStorageOutput[k], "DescribeWorkingStorageOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkingStorageOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _DiskIds [DiskIds] <p>An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.</p>
-- @param _WorkingStorageAllocatedInBytes [long] <p>The total working storage in bytes allocated for the gateway. If no working storage is configured for the gateway, this field returns 0.</p>
-- @param _WorkingStorageUsedInBytes [long] <p>The total working storage in bytes in use by the gateway. If no working storage is configured for the gateway, this field returns 0.</p>
function M.DescribeWorkingStorageOutput(_GatewayARN, _DiskIds, _WorkingStorageAllocatedInBytes, _WorkingStorageUsedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkingStorageOutput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
		["DiskIds"] = _DiskIds,
		["WorkingStorageAllocatedInBytes"] = _WorkingStorageAllocatedInBytes,
		["WorkingStorageUsedInBytes"] = _WorkingStorageUsedInBytes,
	}
	asserts.AssertDescribeWorkingStorageOutput(t)
	return t
end

keys.DescribeSnapshotScheduleOutput = { ["RecurrenceInHours"] = true, ["StartAt"] = true, ["Description"] = true, ["VolumeARN"] = true, ["Timezone"] = true, nil }

function asserts.AssertDescribeSnapshotScheduleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotScheduleOutput to be of type 'table'")
	if struct["RecurrenceInHours"] then asserts.AssertRecurrenceInHours(struct["RecurrenceInHours"]) end
	if struct["StartAt"] then asserts.AssertHourOfDay(struct["StartAt"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["Timezone"] then asserts.AssertGatewayTimezone(struct["Timezone"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotScheduleOutput[k], "DescribeSnapshotScheduleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotScheduleOutput
--  
-- @param _RecurrenceInHours [RecurrenceInHours] 
-- @param _StartAt [HourOfDay] 
-- @param _Description [Description] 
-- @param _VolumeARN [VolumeARN] 
-- @param _Timezone [GatewayTimezone] 
function M.DescribeSnapshotScheduleOutput(_RecurrenceInHours, _StartAt, _Description, _VolumeARN, _Timezone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotScheduleOutput")
	local t = { 
		["RecurrenceInHours"] = _RecurrenceInHours,
		["StartAt"] = _StartAt,
		["Description"] = _Description,
		["VolumeARN"] = _VolumeARN,
		["Timezone"] = _Timezone,
	}
	asserts.AssertDescribeSnapshotScheduleOutput(t)
	return t
end

keys.CreateSnapshotInput = { ["SnapshotDescription"] = true, ["VolumeARN"] = true, nil }

function asserts.AssertCreateSnapshotInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	assert(struct["SnapshotDescription"], "Expected key SnapshotDescription to exist in table")
	if struct["SnapshotDescription"] then asserts.AssertSnapshotDescription(struct["SnapshotDescription"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotInput[k], "CreateSnapshotInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateSnapshotInput$SnapshotDescription</a> </p> </li> <li> <p> <a>CreateSnapshotInput$VolumeARN</a> </p> </li> </ul>
-- @param _SnapshotDescription [SnapshotDescription] <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the <b>Description</b> field, and in the AWS Storage Gateway snapshot <b>Details</b> pane, <b>Description</b> field</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
-- Required parameter: SnapshotDescription
function M.CreateSnapshotInput(_SnapshotDescription, _VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotInput")
	local t = { 
		["SnapshotDescription"] = _SnapshotDescription,
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertCreateSnapshotInput(t)
	return t
end

keys.CreateStorediSCSIVolumeOutput = { ["VolumeSizeInBytes"] = true, ["TargetARN"] = true, ["VolumeARN"] = true, nil }

function asserts.AssertCreateStorediSCSIVolumeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStorediSCSIVolumeOutput to be of type 'table'")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["TargetARN"] then asserts.AssertTargetARN(struct["TargetARN"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStorediSCSIVolumeOutput[k], "CreateStorediSCSIVolumeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStorediSCSIVolumeOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- @param _TargetARN [TargetARN] <p>he Amazon Resource Name (ARN) of the volume target that includes the iSCSI name that initiators can use to connect to the target.</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the configured volume.</p>
function M.CreateStorediSCSIVolumeOutput(_VolumeSizeInBytes, _TargetARN, _VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStorediSCSIVolumeOutput")
	local t = { 
		["VolumeSizeInBytes"] = _VolumeSizeInBytes,
		["TargetARN"] = _TargetARN,
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertCreateStorediSCSIVolumeOutput(t)
	return t
end

keys.RetrieveTapeArchiveOutput = { ["TapeARN"] = true, nil }

function asserts.AssertRetrieveTapeArchiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeArchiveOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveTapeArchiveOutput[k], "RetrieveTapeArchiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeArchiveOutput
-- <p>RetrieveTapeArchiveOutput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the retrieved virtual tape.</p>
function M.RetrieveTapeArchiveOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeArchiveOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertRetrieveTapeArchiveOutput(t)
	return t
end

keys.CreateSnapshotOutput = { ["SnapshotId"] = true, ["VolumeARN"] = true, nil }

function asserts.AssertCreateSnapshotOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotOutput to be of type 'table'")
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotOutput[k], "CreateSnapshotOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotOutput
-- <p>A JSON object containing the following fields:</p>
-- @param _SnapshotId [SnapshotId] <p>The snapshot ID that is used to refer to the snapshot in future operations such as describing snapshots (Amazon Elastic Compute Cloud API <code>DescribeSnapshots</code>) or creating a volume from a snapshot (<a>CreateStorediSCSIVolume</a>).</p>
-- @param _VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.</p>
function M.CreateSnapshotOutput(_SnapshotId, _VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotOutput")
	local t = { 
		["SnapshotId"] = _SnapshotId,
		["VolumeARN"] = _VolumeARN,
	}
	asserts.AssertCreateSnapshotOutput(t)
	return t
end

keys.RetrieveTapeRecoveryPointOutput = { ["TapeARN"] = true, nil }

function asserts.AssertRetrieveTapeRecoveryPointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeRecoveryPointOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetrieveTapeRecoveryPointOutput[k], "RetrieveTapeRecoveryPointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeRecoveryPointOutput
-- <p>RetrieveTapeRecoveryPointOutput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was retrieved.</p>
function M.RetrieveTapeRecoveryPointOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeRecoveryPointOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertRetrieveTapeRecoveryPointOutput(t)
	return t
end

keys.UpdateNFSFileShareInput = { ["FileShareARN"] = true, ["DefaultStorageClass"] = true, ["Squash"] = true, ["NFSFileShareDefaults"] = true, ["KMSKey"] = true, ["ReadOnly"] = true, ["ClientList"] = true, ["KMSEncrypted"] = true, nil }

function asserts.AssertUpdateNFSFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNFSFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["Squash"] then asserts.AssertSquash(struct["Squash"]) end
	if struct["NFSFileShareDefaults"] then asserts.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["ClientList"] then asserts.AssertFileShareClientList(struct["ClientList"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNFSFileShareInput[k], "UpdateNFSFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNFSFileShareInput
-- <p>UpdateNFSFileShareInput</p>
-- @param _FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the file share to be updated. </p>
-- @param _DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by a file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If this field is not populated, the default value S3_STANDARD is used. Optional.</p>
-- @param _Squash [Squash] <p>The user mapped to anonymous user. Valid options are the following:</p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
-- @param _NFSFileShareDefaults [NFSFileShareDefaults] <p>The default values for the file share. Optional.</p>
-- @param _KMSKey [KMSKey] <p>The KMS key used for Amazon S3 server side encryption. This value can only be set when KmsEncrypted is true. Optional. </p>
-- @param _ReadOnly [Boolean] <p>Sets the write status of a file share: "true" if the write status is read-only, and otherwise "false".</p>
-- @param _ClientList [FileShareClientList] <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.</p>
-- @param _KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional. </p>
-- Required parameter: FileShareARN
function M.UpdateNFSFileShareInput(_FileShareARN, _DefaultStorageClass, _Squash, _NFSFileShareDefaults, _KMSKey, _ReadOnly, _ClientList, _KMSEncrypted, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNFSFileShareInput")
	local t = { 
		["FileShareARN"] = _FileShareARN,
		["DefaultStorageClass"] = _DefaultStorageClass,
		["Squash"] = _Squash,
		["NFSFileShareDefaults"] = _NFSFileShareDefaults,
		["KMSKey"] = _KMSKey,
		["ReadOnly"] = _ReadOnly,
		["ClientList"] = _ClientList,
		["KMSEncrypted"] = _KMSEncrypted,
	}
	asserts.AssertUpdateNFSFileShareInput(t)
	return t
end

keys.CreateStorediSCSIVolumeInput = { ["NetworkInterfaceId"] = true, ["SnapshotId"] = true, ["GatewayARN"] = true, ["PreserveExistingData"] = true, ["TargetName"] = true, ["DiskId"] = true, nil }

function asserts.AssertCreateStorediSCSIVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStorediSCSIVolumeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskId"], "Expected key DiskId to exist in table")
	assert(struct["PreserveExistingData"], "Expected key PreserveExistingData to exist in table")
	assert(struct["TargetName"], "Expected key TargetName to exist in table")
	assert(struct["NetworkInterfaceId"], "Expected key NetworkInterfaceId to exist in table")
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["PreserveExistingData"] then asserts.Assertboolean(struct["PreserveExistingData"]) end
	if struct["TargetName"] then asserts.AssertTargetName(struct["TargetName"]) end
	if struct["DiskId"] then asserts.AssertDiskId(struct["DiskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStorediSCSIVolumeInput[k], "CreateStorediSCSIVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStorediSCSIVolumeInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>
-- @param _NetworkInterfaceId [NetworkInterfaceId] <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of the network interfaces available on a gateway.</p> <p> Valid Values: A valid IP address.</p>
-- @param _SnapshotId [SnapshotId] <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new stored volume. Specify this field if you want to create the iSCSI storage volume from a snapshot otherwise do not include this field. To list snapshots for your account use <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _PreserveExistingData [boolean] <p>Specify this field as true if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.</p> <p> Valid Values: true, false</p>
-- @param _TargetName [TargetName] <p>The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. For example, specifying <code>TargetName</code> as <i>myvolume</i> results in the target ARN of arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume. The target name must be unique across all volumes of a gateway.</p>
-- @param _DiskId [DiskId] <p>The unique identifier for the gateway local disk that is configured as a stored volume. Use <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html">ListLocalDisks</a> to list disk IDs for a gateway.</p>
-- Required parameter: GatewayARN
-- Required parameter: DiskId
-- Required parameter: PreserveExistingData
-- Required parameter: TargetName
-- Required parameter: NetworkInterfaceId
function M.CreateStorediSCSIVolumeInput(_NetworkInterfaceId, _SnapshotId, _GatewayARN, _PreserveExistingData, _TargetName, _DiskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStorediSCSIVolumeInput")
	local t = { 
		["NetworkInterfaceId"] = _NetworkInterfaceId,
		["SnapshotId"] = _SnapshotId,
		["GatewayARN"] = _GatewayARN,
		["PreserveExistingData"] = _PreserveExistingData,
		["TargetName"] = _TargetName,
		["DiskId"] = _DiskId,
	}
	asserts.AssertCreateStorediSCSIVolumeInput(t)
	return t
end

keys.CancelArchivalOutput = { ["TapeARN"] = true, nil }

function asserts.AssertCancelArchivalOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelArchivalOutput to be of type 'table'")
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelArchivalOutput[k], "CancelArchivalOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelArchivalOutput
-- <p>CancelArchivalOutput</p>
-- @param _TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which archiving was canceled.</p>
function M.CancelArchivalOutput(_TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelArchivalOutput")
	local t = { 
		["TapeARN"] = _TapeARN,
	}
	asserts.AssertCancelArchivalOutput(t)
	return t
end

keys.CreateCachediSCSIVolumeInput = { ["VolumeSizeInBytes"] = true, ["NetworkInterfaceId"] = true, ["ClientToken"] = true, ["SnapshotId"] = true, ["SourceVolumeARN"] = true, ["GatewayARN"] = true, ["TargetName"] = true, nil }

function asserts.AssertCreateCachediSCSIVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCachediSCSIVolumeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["VolumeSizeInBytes"], "Expected key VolumeSizeInBytes to exist in table")
	assert(struct["TargetName"], "Expected key TargetName to exist in table")
	assert(struct["NetworkInterfaceId"], "Expected key NetworkInterfaceId to exist in table")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["SourceVolumeARN"] then asserts.AssertVolumeARN(struct["SourceVolumeARN"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TargetName"] then asserts.AssertTargetName(struct["TargetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCachediSCSIVolumeInput[k], "CreateCachediSCSIVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCachediSCSIVolumeInput
--  
-- @param _VolumeSizeInBytes [long] 
-- @param _NetworkInterfaceId [NetworkInterfaceId] 
-- @param _ClientToken [ClientToken] 
-- @param _SnapshotId [SnapshotId] 
-- @param _SourceVolumeARN [VolumeARN] <p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than the size of the existing volume, in bytes.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _TargetName [TargetName] 
-- Required parameter: GatewayARN
-- Required parameter: VolumeSizeInBytes
-- Required parameter: TargetName
-- Required parameter: NetworkInterfaceId
-- Required parameter: ClientToken
function M.CreateCachediSCSIVolumeInput(_VolumeSizeInBytes, _NetworkInterfaceId, _ClientToken, _SnapshotId, _SourceVolumeARN, _GatewayARN, _TargetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCachediSCSIVolumeInput")
	local t = { 
		["VolumeSizeInBytes"] = _VolumeSizeInBytes,
		["NetworkInterfaceId"] = _NetworkInterfaceId,
		["ClientToken"] = _ClientToken,
		["SnapshotId"] = _SnapshotId,
		["SourceVolumeARN"] = _SourceVolumeARN,
		["GatewayARN"] = _GatewayARN,
		["TargetName"] = _TargetName,
	}
	asserts.AssertCreateCachediSCSIVolumeInput(t)
	return t
end

keys.DescribeVTLDevicesInput = { ["Marker"] = true, ["GatewayARN"] = true, ["Limit"] = true, ["VTLDeviceARNs"] = true, nil }

function asserts.AssertDescribeVTLDevicesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVTLDevicesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then asserts.AssertPositiveIntObject(struct["Limit"]) end
	if struct["VTLDeviceARNs"] then asserts.AssertVTLDeviceARNs(struct["VTLDeviceARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVTLDevicesInput[k], "DescribeVTLDevicesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVTLDevicesInput
-- <p>DescribeVTLDevicesInput</p>
-- @param _Marker [Marker] <p>An opaque string that indicates the position at which to begin describing the VTL devices.</p>
-- @param _GatewayARN [GatewayARN] 
-- @param _Limit [PositiveIntObject] <p>Specifies that the number of VTL devices described be limited to the specified number.</p>
-- @param _VTLDeviceARNs [VTLDeviceARNs] <p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a VTL device.</p> <note> <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are specified, the result will contain all devices on the specified gateway.</p> </note>
-- Required parameter: GatewayARN
function M.DescribeVTLDevicesInput(_Marker, _GatewayARN, _Limit, _VTLDeviceARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVTLDevicesInput")
	local t = { 
		["Marker"] = _Marker,
		["GatewayARN"] = _GatewayARN,
		["Limit"] = _Limit,
		["VTLDeviceARNs"] = _VTLDeviceARNs,
	}
	asserts.AssertDescribeVTLDevicesInput(t)
	return t
end

keys.DescribeMaintenanceStartTimeInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeMaintenanceStartTimeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceStartTimeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceStartTimeInput[k], "DescribeMaintenanceStartTimeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceStartTimeInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param _GatewayARN [GatewayARN] 
-- Required parameter: GatewayARN
function M.DescribeMaintenanceStartTimeInput(_GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceStartTimeInput")
	local t = { 
		["GatewayARN"] = _GatewayARN,
	}
	asserts.AssertDescribeMaintenanceStartTimeInput(t)
	return t
end

function asserts.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

-- <p>The ARN of the IAM role that file gateway assumes when it accesses the underlying storage. </p>
function M.Role(str)
	asserts.AssertRole(str)
	return str
end

function asserts.AssertGatewayARN(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

-- <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
function M.GatewayARN(str)
	asserts.AssertGatewayARN(str)
	return str
end

function asserts.AssertFileShareStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareStatus to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

-- <p>The status of the file share. Possible values are CREATING, UPDATING, AVAILABLE and DELETING. </p>
function M.FileShareStatus(str)
	asserts.AssertFileShareStatus(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertRegionId(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionId to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegionId(str)
	asserts.AssertRegionId(str)
	return str
end

function asserts.AssertGatewayType(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GatewayType(str)
	asserts.AssertGatewayType(str)
	return str
end

function asserts.AssertVolumeARN(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.VolumeARN(str)
	asserts.AssertVolumeARN(str)
	return str
end

function asserts.AssertLocalConsolePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected LocalConsolePassword to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.LocalConsolePassword(str)
	asserts.AssertLocalConsolePassword(str)
	return str
end

function asserts.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
end

-- <p>The file share path used by the NFS client to identify the mount point. </p>
function M.Path(str)
	asserts.AssertPath(str)
	return str
end

function asserts.AssertTargetName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetName to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetName(str)
	asserts.AssertTargetName(str)
	return str
end

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AssertVTLDeviceVendor(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceVendor to be of type 'string'")
end

--  
function M.VTLDeviceVendor(str)
	asserts.AssertVTLDeviceVendor(str)
	return str
end

function asserts.AssertVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.VolumeType(str)
	asserts.AssertVolumeType(str)
	return str
end

function asserts.AssertNetworkInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInterfaceId to be of type 'string'")
end

--  
function M.NetworkInterfaceId(str)
	asserts.AssertNetworkInterfaceId(str)
	return str
end

function asserts.AssertGatewayState(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayState to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GatewayState(str)
	asserts.AssertGatewayState(str)
	return str
end

function asserts.AssertLastSoftwareUpdate(str)
	assert(str)
	assert(type(str) == "string", "Expected LastSoftwareUpdate to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LastSoftwareUpdate(str)
	asserts.AssertLastSoftwareUpdate(str)
	return str
end

function asserts.AssertGatewayId(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.GatewayId(str)
	asserts.AssertGatewayId(str)
	return str
end

function asserts.AssertGatewayName(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

-- <p>The name you configured for your gateway.</p>
function M.GatewayName(str)
	asserts.AssertGatewayName(str)
	return str
end

function asserts.AssertGatewayOperationalState(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayOperationalState to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GatewayOperationalState(str)
	asserts.AssertGatewayOperationalState(str)
	return str
end

function asserts.AssertTapeArchiveStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeArchiveStatus to be of type 'string'")
end

--  
function M.TapeArchiveStatus(str)
	asserts.AssertTapeArchiveStatus(str)
	return str
end

function asserts.AssertInitiator(str)
	assert(str)
	assert(type(str) == "string", "Expected Initiator to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Initiator(str)
	asserts.AssertInitiator(str)
	return str
end

function asserts.AssertKMSKey(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSKey to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

-- <p>The ARN of the KMS key used for Amazon S3 server side encryption. </p>
function M.KMSKey(str)
	asserts.AssertKMSKey(str)
	return str
end

function asserts.AssertActivationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationKey to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActivationKey(str)
	asserts.AssertActivationKey(str)
	return str
end

function asserts.AssertChapSecret(str)
	assert(str)
	assert(type(str) == "string", "Expected ChapSecret to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChapSecret(str)
	asserts.AssertChapSecret(str)
	return str
end

function asserts.AssertGatewayTimezone(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayTimezone to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.GatewayTimezone(str)
	asserts.AssertGatewayTimezone(str)
	return str
end

function asserts.AssertVTLDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceType to be of type 'string'")
end

--  
function M.VTLDeviceType(str)
	asserts.AssertVTLDeviceType(str)
	return str
end

function asserts.AssertSquash(str)
	assert(str)
	assert(type(str) == "string", "Expected Squash to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

-- <p>The user mapped to anonymous user. Valid options are the following: </p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
function M.Squash(str)
	asserts.AssertSquash(str)
	return str
end

function asserts.AssertVolumeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeStatus to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.VolumeStatus(str)
	asserts.AssertVolumeStatus(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertFileShareId(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

-- <p>The ID of the file share. </p>
function M.FileShareId(str)
	asserts.AssertFileShareId(str)
	return str
end

function asserts.AssertIPV4AddressCIDR(str)
	assert(str)
	assert(type(str) == "string", "Expected IPV4AddressCIDR to be of type 'string'")
end

--  
function M.IPV4AddressCIDR(str)
	asserts.AssertIPV4AddressCIDR(str)
	return str
end

function asserts.AssertVTLDeviceProductIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceProductIdentifier to be of type 'string'")
end

--  
function M.VTLDeviceProductIdentifier(str)
	asserts.AssertVTLDeviceProductIdentifier(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertNextUpdateAvailabilityDate(str)
	assert(str)
	assert(type(str) == "string", "Expected NextUpdateAvailabilityDate to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextUpdateAvailabilityDate(str)
	asserts.AssertNextUpdateAvailabilityDate(str)
	return str
end

function asserts.AssertVTLDeviceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.VTLDeviceARN(str)
	asserts.AssertVTLDeviceARN(str)
	return str
end

function asserts.AssertFileShareARN(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

-- <p>The Amazon Resource Name (ARN) of the file share. </p>
function M.FileShareARN(str)
	asserts.AssertFileShareARN(str)
	return str
end

function asserts.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

-- <p/>
function M.StorageClass(str)
	asserts.AssertStorageClass(str)
	return str
end

function asserts.AssertTapeDriveType(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeDriveType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.TapeDriveType(str)
	asserts.AssertTapeDriveType(str)
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

function asserts.AssertLocationARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationARN to be of type 'string'")
	assert(#str <= 310, "Expected string to be max 310 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

-- <p>The ARN of the backend storage used for storing file data. </p>
function M.LocationARN(str)
	asserts.AssertLocationARN(str)
	return str
end

function asserts.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.ClientToken(str)
	asserts.AssertClientToken(str)
	return str
end

function asserts.AssertDiskId(str)
	assert(str)
	assert(type(str) == "string", "Expected DiskId to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DiskId(str)
	asserts.AssertDiskId(str)
	return str
end

function asserts.AssertDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.DeviceType(str)
	asserts.AssertDeviceType(str)
	return str
end

function asserts.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
end

--  
function M.SnapshotId(str)
	asserts.AssertSnapshotId(str)
	return str
end

function asserts.AssertTargetARN(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetARN to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.TargetARN(str)
	asserts.AssertTargetARN(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertBandwidthType(str)
	assert(str)
	assert(type(str) == "string", "Expected BandwidthType to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.BandwidthType(str)
	asserts.AssertBandwidthType(str)
	return str
end

function asserts.AssertDiskAllocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected DiskAllocationType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.DiskAllocationType(str)
	asserts.AssertDiskAllocationType(str)
	return str
end

function asserts.AssertSnapshotDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotDescription to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SnapshotDescription(str)
	asserts.AssertSnapshotDescription(str)
	return str
end

function asserts.AssertTapeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeStatus to be of type 'string'")
end

--  
function M.TapeStatus(str)
	asserts.AssertTapeStatus(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertTapeBarcode(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeBarcode to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 7, "Expected string to be min 7 characters")
end

--  
function M.TapeBarcode(str)
	asserts.AssertTapeBarcode(str)
	return str
end

function asserts.AssertTapeARN(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.TapeARN(str)
	asserts.AssertTapeARN(str)
	return str
end

function asserts.AssertTapeBarcodePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeBarcodePrefix to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TapeBarcodePrefix(str)
	asserts.AssertTapeBarcodePrefix(str)
	return str
end

function asserts.AssertPermissionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PermissionMode to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PermissionMode(str)
	asserts.AssertPermissionMode(str)
	return str
end

function asserts.AssertIqnName(str)
	assert(str)
	assert(type(str) == "string", "Expected IqnName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IqnName(str)
	asserts.AssertIqnName(str)
	return str
end

function asserts.AssertVolumeId(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.VolumeId(str)
	asserts.AssertVolumeId(str)
	return str
end

function asserts.AssertMediumChangerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MediumChangerType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.MediumChangerType(str)
	asserts.AssertMediumChangerType(str)
	return str
end

function asserts.AssertTapeRecoveryPointStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeRecoveryPointStatus to be of type 'string'")
end

--  
function M.TapeRecoveryPointStatus(str)
	asserts.AssertTapeRecoveryPointStatus(str)
	return str
end

function asserts.AssertDoubleObject(double)
	assert(double)
	assert(type(double) == "number", "Expected DoubleObject to be of type 'number'")
end

function M.DoubleObject(double)
	asserts.AssertDoubleObject(double)
	return double
end

function asserts.Assertdouble(double)
	assert(double)
	assert(type(double) == "number", "Expected double to be of type 'number'")
end

function M.double(double)
	asserts.Assertdouble(double)
	return double
end

function asserts.AssertBandwidthUploadRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected BandwidthUploadRateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BandwidthUploadRateLimit(long)
	asserts.AssertBandwidthUploadRateLimit(long)
	return long
end

function asserts.AssertPermissionId(long)
	assert(long)
	assert(type(long) == "number", "Expected PermissionId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PermissionId(long)
	asserts.AssertPermissionId(long)
	return long
end

function asserts.AssertBandwidthDownloadRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected BandwidthDownloadRateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BandwidthDownloadRateLimit(long)
	asserts.AssertBandwidthDownloadRateLimit(long)
	return long
end

function asserts.Assertlong(long)
	assert(long)
	assert(type(long) == "number", "Expected long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.long(long)
	asserts.Assertlong(long)
	return long
end

function asserts.AssertTapeSize(long)
	assert(long)
	assert(type(long) == "number", "Expected TapeSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TapeSize(long)
	asserts.AssertTapeSize(long)
	return long
end

function asserts.AssertTapeUsage(long)
	assert(long)
	assert(type(long) == "number", "Expected TapeUsage to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TapeUsage(long)
	asserts.AssertTapeUsage(long)
	return long
end

function asserts.AssertMinuteOfHour(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinuteOfHour to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 59, "Expected integer to be max 59")
end

function M.MinuteOfHour(integer)
	asserts.AssertMinuteOfHour(integer)
	return integer
end

function asserts.AssertDayOfWeek(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DayOfWeek to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 6, "Expected integer to be max 6")
end

function M.DayOfWeek(integer)
	asserts.AssertDayOfWeek(integer)
	return integer
end

function asserts.AssertRecurrenceInHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RecurrenceInHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RecurrenceInHours(integer)
	asserts.AssertRecurrenceInHours(integer)
	return integer
end

function asserts.AssertNumTapesToCreate(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumTapesToCreate to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumTapesToCreate(integer)
	asserts.AssertNumTapesToCreate(integer)
	return integer
end

function asserts.AssertHourOfDay(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HourOfDay to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 23, "Expected integer to be max 23")
end

function M.HourOfDay(integer)
	asserts.AssertHourOfDay(integer)
	return integer
end

function asserts.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	asserts.Assertinteger(integer)
	return integer
end

function asserts.AssertPositiveIntObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntObject(integer)
	asserts.AssertPositiveIntObject(integer)
	return integer
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AsserterrorDetails(map)
	assert(map)
	assert(type(map) == "table", "Expected errorDetails to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assertstring(k)
		asserts.Assertstring(v)
	end
end

function M.errorDetails(map)
	asserts.AsserterrorDetails(map)
	return map
end

function asserts.AssertTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Time to be of type 'string'")
end

function M.Time(timestamp)
	asserts.AssertTime(timestamp)
	return timestamp
end

function asserts.AssertCreatedDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDate to be of type 'string'")
end

function M.CreatedDate(timestamp)
	asserts.AssertCreatedDate(timestamp)
	return timestamp
end

function asserts.AssertVolumeARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeARNs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolumeARN(v)
	end
end

--  
-- List of VolumeARN objects
function M.VolumeARNs(list)
	asserts.AssertVolumeARNs(list)
	return list
end

function asserts.AssertInitiators(list)
	assert(list)
	assert(type(list) == "table", "Expected Initiators to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInitiator(v)
	end
end

--  
-- List of Initiator objects
function M.Initiators(list)
	asserts.AssertInitiators(list)
	return list
end

function asserts.AssertChapCredentials(list)
	assert(list)
	assert(type(list) == "table", "Expected ChapCredentials to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChapInfo(v)
	end
end

--  
-- List of ChapInfo objects
function M.ChapCredentials(list)
	asserts.AssertChapCredentials(list)
	return list
end

function asserts.AssertGateways(list)
	assert(list)
	assert(type(list) == "table", "Expected Gateways to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGatewayInfo(v)
	end
end

--  
-- List of GatewayInfo objects
function M.Gateways(list)
	asserts.AssertGateways(list)
	return list
end

function asserts.AssertVolumeInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeInfos to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolumeInfo(v)
	end
end

--  
-- List of VolumeInfo objects
function M.VolumeInfos(list)
	asserts.AssertVolumeInfos(list)
	return list
end

function asserts.AssertTapeInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeInfos to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTapeInfo(v)
	end
end

-- <p>An array of <a>TapeInfo</a> objects, where each object describes an a single tape. If there not tapes in the tape library or VTS, then the <code>TapeInfos</code> is an empty array.</p>
-- List of TapeInfo objects
function M.TapeInfos(list)
	asserts.AssertTapeInfos(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertVTLDeviceARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected VTLDeviceARNs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVTLDeviceARN(v)
	end
end

--  
-- List of VTLDeviceARN objects
function M.VTLDeviceARNs(list)
	asserts.AssertVTLDeviceARNs(list)
	return list
end

function asserts.AssertFileShareARNList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareARNList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertFileShareARN(v)
	end
end

--  
-- List of FileShareARN objects
function M.FileShareARNList(list)
	asserts.AssertFileShareARNList(list)
	return list
end

function asserts.AssertCachediSCSIVolumes(list)
	assert(list)
	assert(type(list) == "table", "Expected CachediSCSIVolumes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCachediSCSIVolume(v)
	end
end

--  
-- List of CachediSCSIVolume objects
function M.CachediSCSIVolumes(list)
	asserts.AssertCachediSCSIVolumes(list)
	return list
end

function asserts.AssertNFSFileShareInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected NFSFileShareInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNFSFileShareInfo(v)
	end
end

--  
-- List of NFSFileShareInfo objects
function M.NFSFileShareInfoList(list)
	asserts.AssertNFSFileShareInfoList(list)
	return list
end

function asserts.AssertTapeArchives(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeArchives to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTapeArchive(v)
	end
end

--  
-- List of TapeArchive objects
function M.TapeArchives(list)
	asserts.AssertTapeArchives(list)
	return list
end

function asserts.AssertVolumeRecoveryPointInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeRecoveryPointInfos to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolumeRecoveryPointInfo(v)
	end
end

--  
-- List of VolumeRecoveryPointInfo objects
function M.VolumeRecoveryPointInfos(list)
	asserts.AssertVolumeRecoveryPointInfos(list)
	return list
end

function asserts.AssertFileShareInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFileShareInfo(v)
	end
end

--  
-- List of FileShareInfo objects
function M.FileShareInfoList(list)
	asserts.AssertFileShareInfoList(list)
	return list
end

function asserts.AssertGatewayNetworkInterfaces(list)
	assert(list)
	assert(type(list) == "table", "Expected GatewayNetworkInterfaces to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNetworkInterface(v)
	end
end

--  
-- List of NetworkInterface objects
function M.GatewayNetworkInterfaces(list)
	asserts.AssertGatewayNetworkInterfaces(list)
	return list
end

function asserts.AssertFileShareClientList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareClientList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertIPV4AddressCIDR(v)
	end
end

-- <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>
-- List of IPV4AddressCIDR objects
function M.FileShareClientList(list)
	asserts.AssertFileShareClientList(list)
	return list
end

function asserts.AssertDisks(list)
	assert(list)
	assert(type(list) == "table", "Expected Disks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDisk(v)
	end
end

--  
-- List of Disk objects
function M.Disks(list)
	asserts.AssertDisks(list)
	return list
end

function asserts.AssertVTLDevices(list)
	assert(list)
	assert(type(list) == "table", "Expected VTLDevices to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVTLDevice(v)
	end
end

--  
-- List of VTLDevice objects
function M.VTLDevices(list)
	asserts.AssertVTLDevices(list)
	return list
end

function asserts.AssertTapeARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeARNs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTapeARN(v)
	end
end

-- <p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>
-- List of TapeARN objects
function M.TapeARNs(list)
	asserts.AssertTapeARNs(list)
	return list
end

function asserts.AssertTapes(list)
	assert(list)
	assert(type(list) == "table", "Expected Tapes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTape(v)
	end
end

--  
-- List of Tape objects
function M.Tapes(list)
	asserts.AssertTapes(list)
	return list
end

function asserts.AssertStorediSCSIVolumes(list)
	assert(list)
	assert(type(list) == "table", "Expected StorediSCSIVolumes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStorediSCSIVolume(v)
	end
end

--  
-- List of StorediSCSIVolume objects
function M.StorediSCSIVolumes(list)
	asserts.AssertStorediSCSIVolumes(list)
	return list
end

function asserts.AssertTapeRecoveryPointInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeRecoveryPointInfos to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTapeRecoveryPointInfo(v)
	end
end

--  
-- List of TapeRecoveryPointInfo objects
function M.TapeRecoveryPointInfos(list)
	asserts.AssertTapeRecoveryPointInfos(list)
	return list
end

function asserts.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	asserts.AssertTagKeys(list)
	return list
end

function asserts.AssertDiskIds(list)
	assert(list)
	assert(type(list) == "table", "Expected DiskIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDiskId(v)
	end
end

--  
-- List of DiskId objects
function M.DiskIds(list)
	asserts.AssertDiskIds(list)
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
			return "storagegateway.amazonaws.com"
		end
	end
	local ss = { "storagegateway" }
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
--- DescribeSnapshotSchedule
-- @param DescribeSnapshotScheduleInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSnapshotScheduleAsync(DescribeSnapshotScheduleInput, cb)
	assert(DescribeSnapshotScheduleInput, "You must provide a DescribeSnapshotScheduleInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeSnapshotSchedule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSnapshotScheduleInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateNFSFileShare
-- @param UpdateNFSFileShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateNFSFileShareAsync(UpdateNFSFileShareInput, cb)
	assert(UpdateNFSFileShareInput, "You must provide a UpdateNFSFileShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateNFSFileShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateNFSFileShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTapeArchives
-- @param DescribeTapeArchivesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTapeArchivesAsync(DescribeTapeArchivesInput, cb)
	assert(DescribeTapeArchivesInput, "You must provide a DescribeTapeArchivesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeTapeArchives",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTapeArchivesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFileShare
-- @param DeleteFileShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFileShareAsync(DeleteFileShareInput, cb)
	assert(DeleteFileShareInput, "You must provide a DeleteFileShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteFileShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteFileShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RefreshCache
-- @param RefreshCacheInput
-- @param cb Callback function accepting two args: response, error_message
function M.RefreshCacheAsync(RefreshCacheInput, cb)
	assert(RefreshCacheInput, "You must provide a RefreshCacheInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RefreshCache",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RefreshCacheInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceStartTime
-- @param DescribeMaintenanceStartTimeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceStartTimeAsync(DescribeMaintenanceStartTimeInput, cb)
	assert(DescribeMaintenanceStartTimeInput, "You must provide a DescribeMaintenanceStartTimeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeMaintenanceStartTime",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceStartTimeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeGatewayInformation
-- @param DescribeGatewayInformationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeGatewayInformationAsync(DescribeGatewayInformationInput, cb)
	assert(DescribeGatewayInformationInput, "You must provide a DescribeGatewayInformationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeGatewayInformation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeGatewayInformationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGatewayInformation
-- @param UpdateGatewayInformationInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGatewayInformationAsync(UpdateGatewayInformationInput, cb)
	assert(UpdateGatewayInformationInput, "You must provide a UpdateGatewayInformationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateGatewayInformation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateGatewayInformationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableGateway
-- @param DisableGatewayInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisableGatewayAsync(DisableGatewayInput, cb)
	assert(DisableGatewayInput, "You must provide a DisableGatewayInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DisableGateway",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableGatewayInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFileShares
-- @param ListFileSharesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListFileSharesAsync(ListFileSharesInput, cb)
	assert(ListFileSharesInput, "You must provide a ListFileSharesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListFileShares",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListFileSharesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateMaintenanceStartTime
-- @param UpdateMaintenanceStartTimeInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMaintenanceStartTimeAsync(UpdateMaintenanceStartTimeInput, cb)
	assert(UpdateMaintenanceStartTimeInput, "You must provide a UpdateMaintenanceStartTimeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateMaintenanceStartTime",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateMaintenanceStartTimeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTapes
-- @param CreateTapesInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTapesAsync(CreateTapesInput, cb)
	assert(CreateTapesInput, "You must provide a CreateTapesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateTapes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTapesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateBandwidthRateLimit
-- @param UpdateBandwidthRateLimitInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBandwidthRateLimitAsync(UpdateBandwidthRateLimitInput, cb)
	assert(UpdateBandwidthRateLimitInput, "You must provide a UpdateBandwidthRateLimitInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateBandwidthRateLimit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateBandwidthRateLimitInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCachediSCSIVolume
-- @param CreateCachediSCSIVolumeInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCachediSCSIVolumeAsync(CreateCachediSCSIVolumeInput, cb)
	assert(CreateCachediSCSIVolumeInput, "You must provide a CreateCachediSCSIVolumeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateCachediSCSIVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCachediSCSIVolumeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTapeWithBarcode
-- @param CreateTapeWithBarcodeInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTapeWithBarcodeAsync(CreateTapeWithBarcodeInput, cb)
	assert(CreateTapeWithBarcodeInput, "You must provide a CreateTapeWithBarcodeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateTapeWithBarcode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTapeWithBarcodeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeChapCredentials
-- @param DescribeChapCredentialsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeChapCredentialsAsync(DescribeChapCredentialsInput, cb)
	assert(DescribeChapCredentialsInput, "You must provide a DescribeChapCredentialsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeChapCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeChapCredentialsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListLocalDisks
-- @param ListLocalDisksInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListLocalDisksAsync(ListLocalDisksInput, cb)
	assert(ListLocalDisksInput, "You must provide a ListLocalDisksInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListLocalDisks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListLocalDisksInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGatewaySoftwareNow
-- @param UpdateGatewaySoftwareNowInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGatewaySoftwareNowAsync(UpdateGatewaySoftwareNowInput, cb)
	assert(UpdateGatewaySoftwareNowInput, "You must provide a UpdateGatewaySoftwareNowInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateGatewaySoftwareNow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateGatewaySoftwareNowInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResetCache
-- @param ResetCacheInput
-- @param cb Callback function accepting two args: response, error_message
function M.ResetCacheAsync(ResetCacheInput, cb)
	assert(ResetCacheInput, "You must provide a ResetCacheInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ResetCache",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResetCacheInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToResource
-- @param AddTagsToResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceInput, cb)
	assert(AddTagsToResourceInput, "You must provide a AddTagsToResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RetrieveTapeArchive
-- @param RetrieveTapeArchiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.RetrieveTapeArchiveAsync(RetrieveTapeArchiveInput, cb)
	assert(RetrieveTapeArchiveInput, "You must provide a RetrieveTapeArchiveInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RetrieveTapeArchive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RetrieveTapeArchiveInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetLocalConsolePassword
-- @param SetLocalConsolePasswordInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetLocalConsolePasswordAsync(SetLocalConsolePasswordInput, cb)
	assert(SetLocalConsolePasswordInput, "You must provide a SetLocalConsolePasswordInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.SetLocalConsolePassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetLocalConsolePasswordInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSnapshotSchedule
-- @param UpdateSnapshotScheduleInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSnapshotScheduleAsync(UpdateSnapshotScheduleInput, cb)
	assert(UpdateSnapshotScheduleInput, "You must provide a UpdateSnapshotScheduleInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateSnapshotSchedule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSnapshotScheduleInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVolumeInitiators
-- @param ListVolumeInitiatorsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListVolumeInitiatorsAsync(ListVolumeInitiatorsInput, cb)
	assert(ListVolumeInitiatorsInput, "You must provide a ListVolumeInitiatorsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListVolumeInitiators",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListVolumeInitiatorsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromResource
-- @param RemoveTagsFromResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceInput, cb)
	assert(RemoveTagsFromResourceInput, "You must provide a RemoveTagsFromResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSnapshotFromVolumeRecoveryPoint
-- @param CreateSnapshotFromVolumeRecoveryPointInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotFromVolumeRecoveryPointAsync(CreateSnapshotFromVolumeRecoveryPointInput, cb)
	assert(CreateSnapshotFromVolumeRecoveryPointInput, "You must provide a CreateSnapshotFromVolumeRecoveryPointInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateSnapshotFromVolumeRecoveryPoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSnapshotFromVolumeRecoveryPointInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGateways
-- @param ListGatewaysInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListGatewaysAsync(ListGatewaysInput, cb)
	assert(ListGatewaysInput, "You must provide a ListGatewaysInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListGateways",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGatewaysInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteChapCredentials
-- @param DeleteChapCredentialsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteChapCredentialsAsync(DeleteChapCredentialsInput, cb)
	assert(DeleteChapCredentialsInput, "You must provide a DeleteChapCredentialsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteChapCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteChapCredentialsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVolume
-- @param DeleteVolumeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVolumeAsync(DeleteVolumeInput, cb)
	assert(DeleteVolumeInput, "You must provide a DeleteVolumeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteVolumeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTapeRecoveryPoints
-- @param DescribeTapeRecoveryPointsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTapeRecoveryPointsAsync(DescribeTapeRecoveryPointsInput, cb)
	assert(DescribeTapeRecoveryPointsInput, "You must provide a DescribeTapeRecoveryPointsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeTapeRecoveryPoints",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTapeRecoveryPointsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ActivateGateway
-- @param ActivateGatewayInput
-- @param cb Callback function accepting two args: response, error_message
function M.ActivateGatewayAsync(ActivateGatewayInput, cb)
	assert(ActivateGatewayInput, "You must provide a ActivateGatewayInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ActivateGateway",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ActivateGatewayInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTapeArchive
-- @param DeleteTapeArchiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTapeArchiveAsync(DeleteTapeArchiveInput, cb)
	assert(DeleteTapeArchiveInput, "You must provide a DeleteTapeArchiveInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteTapeArchive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTapeArchiveInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeVTLDevices
-- @param DescribeVTLDevicesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVTLDevicesAsync(DescribeVTLDevicesInput, cb)
	assert(DescribeVTLDevicesInput, "You must provide a DescribeVTLDevicesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeVTLDevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeVTLDevicesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddCache
-- @param AddCacheInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddCacheAsync(AddCacheInput, cb)
	assert(AddCacheInput, "You must provide a AddCacheInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddCache",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddCacheInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVolumes
-- @param ListVolumesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListVolumesAsync(ListVolumesInput, cb)
	assert(ListVolumesInput, "You must provide a ListVolumesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListVolumes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListVolumesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCachediSCSIVolumes
-- @param DescribeCachediSCSIVolumesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCachediSCSIVolumesAsync(DescribeCachediSCSIVolumesInput, cb)
	assert(DescribeCachediSCSIVolumesInput, "You must provide a DescribeCachediSCSIVolumesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeCachediSCSIVolumes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCachediSCSIVolumesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RetrieveTapeRecoveryPoint
-- @param RetrieveTapeRecoveryPointInput
-- @param cb Callback function accepting two args: response, error_message
function M.RetrieveTapeRecoveryPointAsync(RetrieveTapeRecoveryPointInput, cb)
	assert(RetrieveTapeRecoveryPointInput, "You must provide a RetrieveTapeRecoveryPointInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RetrieveTapeRecoveryPoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RetrieveTapeRecoveryPointInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelRetrieval
-- @param CancelRetrievalInput
-- @param cb Callback function accepting two args: response, error_message
function M.CancelRetrievalAsync(CancelRetrievalInput, cb)
	assert(CancelRetrievalInput, "You must provide a CancelRetrievalInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CancelRetrieval",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelRetrievalInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeBandwidthRateLimit
-- @param DescribeBandwidthRateLimitInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBandwidthRateLimitAsync(DescribeBandwidthRateLimitInput, cb)
	assert(DescribeBandwidthRateLimitInput, "You must provide a DescribeBandwidthRateLimitInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeBandwidthRateLimit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeBandwidthRateLimitInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStorediSCSIVolumes
-- @param DescribeStorediSCSIVolumesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStorediSCSIVolumesAsync(DescribeStorediSCSIVolumesInput, cb)
	assert(DescribeStorediSCSIVolumesInput, "You must provide a DescribeStorediSCSIVolumesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeStorediSCSIVolumes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStorediSCSIVolumesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVolumeRecoveryPoints
-- @param ListVolumeRecoveryPointsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListVolumeRecoveryPointsAsync(ListVolumeRecoveryPointsInput, cb)
	assert(ListVolumeRecoveryPointsInput, "You must provide a ListVolumeRecoveryPointsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListVolumeRecoveryPoints",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListVolumeRecoveryPointsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateChapCredentials
-- @param UpdateChapCredentialsInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateChapCredentialsAsync(UpdateChapCredentialsInput, cb)
	assert(UpdateChapCredentialsInput, "You must provide a UpdateChapCredentialsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateChapCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateChapCredentialsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartGateway
-- @param StartGatewayInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartGatewayAsync(StartGatewayInput, cb)
	assert(StartGatewayInput, "You must provide a StartGatewayInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.StartGateway",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartGatewayInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCache
-- @param DescribeCacheInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheAsync(DescribeCacheInput, cb)
	assert(DescribeCacheInput, "You must provide a DescribeCacheInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeCache",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddUploadBuffer
-- @param AddUploadBufferInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddUploadBufferAsync(AddUploadBufferInput, cb)
	assert(AddUploadBufferInput, "You must provide a AddUploadBufferInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddUploadBuffer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddUploadBufferInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSnapshotSchedule
-- @param DeleteSnapshotScheduleInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSnapshotScheduleAsync(DeleteSnapshotScheduleInput, cb)
	assert(DeleteSnapshotScheduleInput, "You must provide a DeleteSnapshotScheduleInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteSnapshotSchedule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSnapshotScheduleInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateVTLDeviceType
-- @param UpdateVTLDeviceTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateVTLDeviceTypeAsync(UpdateVTLDeviceTypeInput, cb)
	assert(UpdateVTLDeviceTypeInput, "You must provide a UpdateVTLDeviceTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateVTLDeviceType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateVTLDeviceTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTape
-- @param DeleteTapeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTapeAsync(DeleteTapeInput, cb)
	assert(DeleteTapeInput, "You must provide a DeleteTapeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteTape",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTapeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBandwidthRateLimit
-- @param DeleteBandwidthRateLimitInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBandwidthRateLimitAsync(DeleteBandwidthRateLimitInput, cb)
	assert(DeleteBandwidthRateLimitInput, "You must provide a DeleteBandwidthRateLimitInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteBandwidthRateLimit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteBandwidthRateLimitInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ShutdownGateway
-- @param ShutdownGatewayInput
-- @param cb Callback function accepting two args: response, error_message
function M.ShutdownGatewayAsync(ShutdownGatewayInput, cb)
	assert(ShutdownGatewayInput, "You must provide a ShutdownGatewayInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ShutdownGateway",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ShutdownGatewayInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTapes
-- @param DescribeTapesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTapesAsync(DescribeTapesInput, cb)
	assert(DescribeTapesInput, "You must provide a DescribeTapesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeTapes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTapesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateNFSFileShare
-- @param CreateNFSFileShareInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateNFSFileShareAsync(CreateNFSFileShareInput, cb)
	assert(CreateNFSFileShareInput, "You must provide a CreateNFSFileShareInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateNFSFileShare",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateNFSFileShareInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStorediSCSIVolume
-- @param CreateStorediSCSIVolumeInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStorediSCSIVolumeAsync(CreateStorediSCSIVolumeInput, cb)
	assert(CreateStorediSCSIVolumeInput, "You must provide a CreateStorediSCSIVolumeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateStorediSCSIVolume",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStorediSCSIVolumeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelArchival
-- @param CancelArchivalInput
-- @param cb Callback function accepting two args: response, error_message
function M.CancelArchivalAsync(CancelArchivalInput, cb)
	assert(CancelArchivalInput, "You must provide a CancelArchivalInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CancelArchival",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelArchivalInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTapes
-- @param ListTapesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTapesAsync(ListTapesInput, cb)
	assert(ListTapesInput, "You must provide a ListTapesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListTapes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTapesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteGateway
-- @param DeleteGatewayInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGatewayAsync(DeleteGatewayInput, cb)
	assert(DeleteGatewayInput, "You must provide a DeleteGatewayInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteGateway",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteGatewayInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeNFSFileShares
-- @param DescribeNFSFileSharesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeNFSFileSharesAsync(DescribeNFSFileSharesInput, cb)
	assert(DescribeNFSFileSharesInput, "You must provide a DescribeNFSFileSharesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeNFSFileShares",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeNFSFileSharesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeWorkingStorage
-- @param DescribeWorkingStorageInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkingStorageAsync(DescribeWorkingStorageInput, cb)
	assert(DescribeWorkingStorageInput, "You must provide a DescribeWorkingStorageInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeWorkingStorage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkingStorageInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUploadBuffer
-- @param DescribeUploadBufferInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUploadBufferAsync(DescribeUploadBufferInput, cb)
	assert(DescribeUploadBufferInput, "You must provide a DescribeUploadBufferInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeUploadBuffer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUploadBufferInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceInput, cb)
	assert(ListTagsForResourceInput, "You must provide a ListTagsForResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddWorkingStorage
-- @param AddWorkingStorageInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddWorkingStorageAsync(AddWorkingStorageInput, cb)
	assert(AddWorkingStorageInput, "You must provide a AddWorkingStorageInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddWorkingStorage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddWorkingStorageInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSnapshot
-- @param CreateSnapshotInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotAsync(CreateSnapshotInput, cb)
	assert(CreateSnapshotInput, "You must provide a CreateSnapshotInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSnapshotInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
