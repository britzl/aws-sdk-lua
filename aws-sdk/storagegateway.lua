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

local StorageGatewayError_keys = { "errorCode" = true, "errorDetails" = true, nil }

function M.AssertStorageGatewayError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageGatewayError to be of type 'table'")
	if struct["errorCode"] then M.AssertErrorCode(struct["errorCode"]) end
	if struct["errorDetails"] then M.AsserterrorDetails(struct["errorDetails"]) end
	for k,_ in pairs(struct) do
		assert(StorageGatewayError_keys[k], "StorageGatewayError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageGatewayError
-- <p>Provides additional information about an error that was returned by the service as an or. See the <code>errorCode</code> and <code>errorDetails</code> members for more information about the error.</p>
-- @param errorCode [ErrorCode] <p>Additional information about the error.</p>
-- @param errorDetails [errorDetails] <p>Human-readable text that provides detail about the error that occurred.</p>
function M.StorageGatewayError(errorCode, errorDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageGatewayError")
	local t = { 
		["errorCode"] = errorCode,
		["errorDetails"] = errorDetails,
	}
	M.AssertStorageGatewayError(t)
	return t
end

local ResetCacheInput_keys = { "GatewayARN" = true, nil }

function M.AssertResetCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetCacheInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ResetCacheInput_keys[k], "ResetCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetCacheInput
--  
-- @param GatewayARN [GatewayARN]  
-- Required parameter: GatewayARN
function M.ResetCacheInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetCacheInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertResetCacheInput(t)
	return t
end

local ShutdownGatewayOutput_keys = { "GatewayARN" = true, nil }

function M.AssertShutdownGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShutdownGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ShutdownGatewayOutput_keys[k], "ShutdownGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShutdownGatewayOutput
-- <p>A JSON object containing the of the gateway that was shut down.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway that was shut down.</p>
function M.ShutdownGatewayOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShutdownGatewayOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertShutdownGatewayOutput(t)
	return t
end

local StorediSCSIVolume_keys = { "VolumeSizeInBytes" = true, "VolumeProgress" = true, "VolumeDiskId" = true, "PreservedExistingData" = true, "VolumeiSCSIAttributes" = true, "VolumeType" = true, "VolumeId" = true, "SourceSnapshotId" = true, "VolumeARN" = true, "CreatedDate" = true, "VolumeStatus" = true, nil }

function M.AssertStorediSCSIVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorediSCSIVolume to be of type 'table'")
	if struct["VolumeSizeInBytes"] then M.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeProgress"] then M.AssertDoubleObject(struct["VolumeProgress"]) end
	if struct["VolumeDiskId"] then M.AssertDiskId(struct["VolumeDiskId"]) end
	if struct["PreservedExistingData"] then M.Assertboolean(struct["PreservedExistingData"]) end
	if struct["VolumeiSCSIAttributes"] then M.AssertVolumeiSCSIAttributes(struct["VolumeiSCSIAttributes"]) end
	if struct["VolumeType"] then M.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then M.AssertVolumeId(struct["VolumeId"]) end
	if struct["SourceSnapshotId"] then M.AssertSnapshotId(struct["SourceSnapshotId"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["CreatedDate"] then M.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["VolumeStatus"] then M.AssertVolumeStatus(struct["VolumeStatus"]) end
	for k,_ in pairs(struct) do
		assert(StorediSCSIVolume_keys[k], "StorediSCSIVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorediSCSIVolume
-- <p>Describes an iSCSI stored volume.</p>
-- @param VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- @param VolumeProgress [DoubleObject] <p>Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the stored volume is not restoring or bootstrapping.</p>
-- @param VolumeDiskId [DiskId] <p>The ID of the local disk that was specified in the <a>CreateStorediSCSIVolume</a> operation.</p>
-- @param PreservedExistingData [boolean] <p>Indicates if when the stored volume was created, existing data on the underlying local disk was preserved.</p> <p> Valid Values: true, false</p>
-- @param VolumeiSCSIAttributes [VolumeiSCSIAttributes] <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI attributes for one stored volume.</p>
-- @param VolumeType [VolumeType] <p>One of the VolumeType enumeration values describing the type of the volume.</p>
-- @param VolumeId [VolumeId] <p>The unique identifier of the volume, e.g. vol-AE4B946D.</p>
-- @param SourceSnapshotId [SnapshotId] <p>If the stored volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume.</p>
-- @param CreatedDate [CreatedDate] <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.</p>
-- @param VolumeStatus [VolumeStatus] <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
function M.StorediSCSIVolume(VolumeSizeInBytes, VolumeProgress, VolumeDiskId, PreservedExistingData, VolumeiSCSIAttributes, VolumeType, VolumeId, SourceSnapshotId, VolumeARN, CreatedDate, VolumeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorediSCSIVolume")
	local t = { 
		["VolumeSizeInBytes"] = VolumeSizeInBytes,
		["VolumeProgress"] = VolumeProgress,
		["VolumeDiskId"] = VolumeDiskId,
		["PreservedExistingData"] = PreservedExistingData,
		["VolumeiSCSIAttributes"] = VolumeiSCSIAttributes,
		["VolumeType"] = VolumeType,
		["VolumeId"] = VolumeId,
		["SourceSnapshotId"] = SourceSnapshotId,
		["VolumeARN"] = VolumeARN,
		["CreatedDate"] = CreatedDate,
		["VolumeStatus"] = VolumeStatus,
	}
	M.AssertStorediSCSIVolume(t)
	return t
end

local CancelRetrievalOutput_keys = { "TapeARN" = true, nil }

function M.AssertCancelRetrievalOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelRetrievalOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(CancelRetrievalOutput_keys[k], "CancelRetrievalOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelRetrievalOutput
-- <p>CancelRetrievalOutput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which retrieval was canceled.</p>
function M.CancelRetrievalOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelRetrievalOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertCancelRetrievalOutput(t)
	return t
end

local DeleteTapeInput_keys = { "GatewayARN" = true, "TapeARN" = true, nil }

function M.AssertDeleteTapeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTapeInput_keys[k], "DeleteTapeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeInput
-- <p>DeleteTapeInput</p>
-- @param GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is associated with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeARN
function M.DeleteTapeInput(GatewayARN, TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeARN"] = TapeARN,
	}
	M.AssertDeleteTapeInput(t)
	return t
end

local DescribeTapeRecoveryPointsInput_keys = { "Marker" = true, "GatewayARN" = true, "Limit" = true, nil }

function M.AssertDescribeTapeRecoveryPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeRecoveryPointsInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTapeRecoveryPointsInput_keys[k], "DescribeTapeRecoveryPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeRecoveryPointsInput
-- <p>DescribeTapeRecoveryPointsInput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which to begin describing the virtual tape recovery points.</p>
-- @param GatewayARN [GatewayARN] <p>DescribeTapeRecoveryPointsInput</p>
-- @param Limit [PositiveIntObject] <p>Specifies that the number of virtual tape recovery points that are described be limited to the specified number.</p>
-- Required parameter: GatewayARN
function M.DescribeTapeRecoveryPointsInput(Marker, GatewayARN, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeRecoveryPointsInput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["Limit"] = Limit,
	}
	M.AssertDescribeTapeRecoveryPointsInput(t)
	return t
end

local CachediSCSIVolume_keys = { "VolumeSizeInBytes" = true, "VolumeProgress" = true, "VolumeiSCSIAttributes" = true, "VolumeType" = true, "VolumeId" = true, "SourceSnapshotId" = true, "VolumeARN" = true, "CreatedDate" = true, "VolumeStatus" = true, nil }

function M.AssertCachediSCSIVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CachediSCSIVolume to be of type 'table'")
	if struct["VolumeSizeInBytes"] then M.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeProgress"] then M.AssertDoubleObject(struct["VolumeProgress"]) end
	if struct["VolumeiSCSIAttributes"] then M.AssertVolumeiSCSIAttributes(struct["VolumeiSCSIAttributes"]) end
	if struct["VolumeType"] then M.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then M.AssertVolumeId(struct["VolumeId"]) end
	if struct["SourceSnapshotId"] then M.AssertSnapshotId(struct["SourceSnapshotId"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["CreatedDate"] then M.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["VolumeStatus"] then M.AssertVolumeStatus(struct["VolumeStatus"]) end
	for k,_ in pairs(struct) do
		assert(CachediSCSIVolume_keys[k], "CachediSCSIVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CachediSCSIVolume
-- <p>Describes an iSCSI cached volume.</p>
-- @param VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- @param VolumeProgress [DoubleObject] <p>Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the cached volume is not restoring or bootstrapping.</p>
-- @param VolumeiSCSIAttributes [VolumeiSCSIAttributes] <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI attributes for one stored volume.</p>
-- @param VolumeType [VolumeType] <p>One of the VolumeType enumeration values that describes the type of the volume.</p>
-- @param VolumeId [VolumeId] <p>The unique identifier of the volume, e.g. vol-AE4B946D.</p>
-- @param SourceSnapshotId [SnapshotId] <p>If the cached volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume.</p>
-- @param CreatedDate [CreatedDate] <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.</p>
-- @param VolumeStatus [VolumeStatus] <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
function M.CachediSCSIVolume(VolumeSizeInBytes, VolumeProgress, VolumeiSCSIAttributes, VolumeType, VolumeId, SourceSnapshotId, VolumeARN, CreatedDate, VolumeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CachediSCSIVolume")
	local t = { 
		["VolumeSizeInBytes"] = VolumeSizeInBytes,
		["VolumeProgress"] = VolumeProgress,
		["VolumeiSCSIAttributes"] = VolumeiSCSIAttributes,
		["VolumeType"] = VolumeType,
		["VolumeId"] = VolumeId,
		["SourceSnapshotId"] = SourceSnapshotId,
		["VolumeARN"] = VolumeARN,
		["CreatedDate"] = CreatedDate,
		["VolumeStatus"] = VolumeStatus,
	}
	M.AssertCachediSCSIVolume(t)
	return t
end

local DeleteBandwidthRateLimitInput_keys = { "GatewayARN" = true, "BandwidthType" = true, nil }

function M.AssertDeleteBandwidthRateLimitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBandwidthRateLimitInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["BandwidthType"], "Expected key BandwidthType to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["BandwidthType"] then M.AssertBandwidthType(struct["BandwidthType"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBandwidthRateLimitInput_keys[k], "DeleteBandwidthRateLimitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBandwidthRateLimitInput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DeleteBandwidthRateLimitInput$BandwidthType</a> </p> </li> </ul>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DeleteBandwidthRateLimitInput$BandwidthType</a> </p> </li> </ul>
-- @param BandwidthType [BandwidthType] <p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to delete.</p> <p>Valid Values: <code>Upload</code>, <code>Download</code>, <code>All</code>.</p>
-- Required parameter: GatewayARN
-- Required parameter: BandwidthType
function M.DeleteBandwidthRateLimitInput(GatewayARN, BandwidthType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBandwidthRateLimitInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["BandwidthType"] = BandwidthType,
	}
	M.AssertDeleteBandwidthRateLimitInput(t)
	return t
end

local CreateTapesInput_keys = { "GatewayARN" = true, "TapeBarcodePrefix" = true, "TapeSizeInBytes" = true, "NumTapesToCreate" = true, "ClientToken" = true, nil }

function M.AssertCreateTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeSizeInBytes"], "Expected key TapeSizeInBytes to exist in table")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	assert(struct["NumTapesToCreate"], "Expected key NumTapesToCreate to exist in table")
	assert(struct["TapeBarcodePrefix"], "Expected key TapeBarcodePrefix to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeBarcodePrefix"] then M.AssertTapeBarcodePrefix(struct["TapeBarcodePrefix"]) end
	if struct["TapeSizeInBytes"] then M.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["NumTapesToCreate"] then M.AssertNumTapesToCreate(struct["NumTapesToCreate"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateTapesInput_keys[k], "CreateTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapesInput
-- <p>CreateTapesInput</p>
-- @param GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tapes with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param TapeBarcodePrefix [TapeBarcodePrefix] <p>A prefix that you append to the barcode of the virtual tape you are creating. This prefix makes the barcode unique.</p> <note> <p>The prefix must be 1 to 4 characters in length and must be one of the uppercase letters from A to Z.</p> </note>
-- @param TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tapes that you want to create.</p> <note> <p>The size must be aligned by gigabyte (1024*1024*1024 byte).</p> </note>
-- @param NumTapesToCreate [NumTapesToCreate] <p>The number of virtual tapes that you want to create.</p>
-- @param ClientToken [ClientToken] <p>A unique identifier that you use to retry a request. If you retry a request, use the same <code>ClientToken</code> you specified in the initial request.</p> <note> <p>Using the same <code>ClientToken</code> prevents creating the tape multiple times.</p> </note>
-- Required parameter: GatewayARN
-- Required parameter: TapeSizeInBytes
-- Required parameter: ClientToken
-- Required parameter: NumTapesToCreate
-- Required parameter: TapeBarcodePrefix
function M.CreateTapesInput(GatewayARN, TapeBarcodePrefix, TapeSizeInBytes, NumTapesToCreate, ClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapesInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeBarcodePrefix"] = TapeBarcodePrefix,
		["TapeSizeInBytes"] = TapeSizeInBytes,
		["NumTapesToCreate"] = NumTapesToCreate,
		["ClientToken"] = ClientToken,
	}
	M.AssertCreateTapesInput(t)
	return t
end

local RemoveTagsFromResourceInput_keys = { "ResourceARN" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsFromResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["TagKeys"] then M.AssertTagKeys(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceInput_keys[k], "RemoveTagsFromResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceInput
-- <p>RemoveTagsFromResourceInput</p>
-- @param ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>
-- @param TagKeys [TagKeys] <p>The keys of the tags you want to remove from the specified resource. A tag is composed of a key/value pair.</p>
-- Required parameter: ResourceARN
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceInput(ResourceARN, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceInput")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsFromResourceInput(t)
	return t
end

local DeleteFileShareInput_keys = { "FileShareARN" = true, nil }

function M.AssertDeleteFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFileShareInput_keys[k], "DeleteFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileShareInput
-- <p>DeleteFileShareInput</p>
-- @param FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the file share to be deleted. </p>
-- Required parameter: FileShareARN
function M.DeleteFileShareInput(FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFileShareInput")
	local t = { 
		["FileShareARN"] = FileShareARN,
	}
	M.AssertDeleteFileShareInput(t)
	return t
end

local AddWorkingStorageInput_keys = { "GatewayARN" = true, "DiskIds" = true, nil }

function M.AssertAddWorkingStorageInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddWorkingStorageInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskIds"], "Expected key DiskIds to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then M.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(AddWorkingStorageInput_keys[k], "AddWorkingStorageInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddWorkingStorageInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>AddWorkingStorageInput$DiskIds</a> </p> </li> </ul>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>AddWorkingStorageInput$DiskIds</a> </p> </li> </ul>
-- @param DiskIds [DiskIds] <p>An array of strings that identify disks that are to be configured as working storage. Each string have a minimum length of 1 and maximum length of 300. You can get the disk IDs from the <a>ListLocalDisks</a> API.</p>
-- Required parameter: GatewayARN
-- Required parameter: DiskIds
function M.AddWorkingStorageInput(GatewayARN, DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddWorkingStorageInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["DiskIds"] = DiskIds,
	}
	M.AssertAddWorkingStorageInput(t)
	return t
end

local ListFileSharesOutput_keys = { "Marker" = true, "FileShareInfoList" = true, "NextMarker" = true, nil }

function M.AssertListFileSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFileSharesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["FileShareInfoList"] then M.AssertFileShareInfoList(struct["FileShareInfoList"]) end
	if struct["NextMarker"] then M.AssertMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListFileSharesOutput_keys[k], "ListFileSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFileSharesOutput
-- <p>ListFileShareOutput</p>
-- @param Marker [Marker] <p>If the request includes <code>Marker</code>, the response returns that value in this field. </p>
-- @param FileShareInfoList [FileShareInfoList] <p>An array of information about the file gateway's file shares. </p>
-- @param NextMarker [Marker] <p>If a value is present, there are more file shares to return. In a subsequent request, use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set of file shares. </p>
function M.ListFileSharesOutput(Marker, FileShareInfoList, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFileSharesOutput")
	local t = { 
		["Marker"] = Marker,
		["FileShareInfoList"] = FileShareInfoList,
		["NextMarker"] = NextMarker,
	}
	M.AssertListFileSharesOutput(t)
	return t
end

local ChapInfo_keys = { "TargetARN" = true, "SecretToAuthenticateInitiator" = true, "InitiatorName" = true, "SecretToAuthenticateTarget" = true, nil }

function M.AssertChapInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChapInfo to be of type 'table'")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["SecretToAuthenticateInitiator"] then M.AssertChapSecret(struct["SecretToAuthenticateInitiator"]) end
	if struct["InitiatorName"] then M.AssertIqnName(struct["InitiatorName"]) end
	if struct["SecretToAuthenticateTarget"] then M.AssertChapSecret(struct["SecretToAuthenticateTarget"]) end
	for k,_ in pairs(struct) do
		assert(ChapInfo_keys[k], "ChapInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChapInfo
-- <p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports authentication between your gateway and iSCSI initiators.</p>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the volume.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param SecretToAuthenticateInitiator [ChapSecret] <p>The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p>
-- @param InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- @param SecretToAuthenticateTarget [ChapSecret] <p>The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p>
function M.ChapInfo(TargetARN, SecretToAuthenticateInitiator, InitiatorName, SecretToAuthenticateTarget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChapInfo")
	local t = { 
		["TargetARN"] = TargetARN,
		["SecretToAuthenticateInitiator"] = SecretToAuthenticateInitiator,
		["InitiatorName"] = InitiatorName,
		["SecretToAuthenticateTarget"] = SecretToAuthenticateTarget,
	}
	M.AssertChapInfo(t)
	return t
end

local SetLocalConsolePasswordOutput_keys = { "GatewayARN" = true, nil }

function M.AssertSetLocalConsolePasswordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLocalConsolePasswordOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(SetLocalConsolePasswordOutput_keys[k], "SetLocalConsolePasswordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLocalConsolePasswordOutput
--  
-- @param GatewayARN [GatewayARN]  
function M.SetLocalConsolePasswordOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLocalConsolePasswordOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertSetLocalConsolePasswordOutput(t)
	return t
end

local ListVolumeRecoveryPointsInput_keys = { "GatewayARN" = true, nil }

function M.AssertListVolumeRecoveryPointsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeRecoveryPointsInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ListVolumeRecoveryPointsInput_keys[k], "ListVolumeRecoveryPointsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeRecoveryPointsInput
--  
-- @param GatewayARN [GatewayARN]  
-- Required parameter: GatewayARN
function M.ListVolumeRecoveryPointsInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeRecoveryPointsInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertListVolumeRecoveryPointsInput(t)
	return t
end

local DescribeTapesInput_keys = { "Marker" = true, "GatewayARN" = true, "TapeARNs" = true, "Limit" = true, nil }

function M.AssertDescribeTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARNs"] then M.AssertTapeARNs(struct["TapeARNs"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTapesInput_keys[k], "DescribeTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapesInput
-- <p>DescribeTapesInput</p>
-- @param Marker [Marker] <p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker indicates which page of results to retrieve. </p> <p>If not specified, the first page of results is retrieved.</p>
-- @param GatewayARN [GatewayARN] <p>DescribeTapesInput</p>
-- @param TapeARNs [TapeARNs] <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe. If this parameter is not specified, Tape gateway returns a description of all virtual tapes associated with the specified gateway.</p>
-- @param Limit [PositiveIntObject] <p>Specifies that the number of virtual tapes described be limited to the specified number.</p> <note> <p>Amazon Web Services may impose its own limit, if this field is not set.</p> </note>
-- Required parameter: GatewayARN
function M.DescribeTapesInput(Marker, GatewayARN, TapeARNs, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapesInput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["TapeARNs"] = TapeARNs,
		["Limit"] = Limit,
	}
	M.AssertDescribeTapesInput(t)
	return t
end

local UpdateBandwidthRateLimitInput_keys = { "GatewayARN" = true, "AverageUploadRateLimitInBitsPerSec" = true, "AverageDownloadRateLimitInBitsPerSec" = true, nil }

function M.AssertUpdateBandwidthRateLimitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBandwidthRateLimitInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["AverageUploadRateLimitInBitsPerSec"] then M.AssertBandwidthUploadRateLimit(struct["AverageUploadRateLimitInBitsPerSec"]) end
	if struct["AverageDownloadRateLimitInBitsPerSec"] then M.AssertBandwidthDownloadRateLimit(struct["AverageDownloadRateLimitInBitsPerSec"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBandwidthRateLimitInput_keys[k], "UpdateBandwidthRateLimitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBandwidthRateLimitInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a> </p> </li> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a> </p> </li> </ul>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a> </p> </li> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a> </p> </li> </ul>
-- @param AverageUploadRateLimitInBitsPerSec [BandwidthUploadRateLimit] <p>The average upload bandwidth rate limit in bits per second.</p>
-- @param AverageDownloadRateLimitInBitsPerSec [BandwidthDownloadRateLimit] <p>The average download bandwidth rate limit in bits per second.</p>
-- Required parameter: GatewayARN
function M.UpdateBandwidthRateLimitInput(GatewayARN, AverageUploadRateLimitInBitsPerSec, AverageDownloadRateLimitInBitsPerSec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBandwidthRateLimitInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["AverageUploadRateLimitInBitsPerSec"] = AverageUploadRateLimitInBitsPerSec,
		["AverageDownloadRateLimitInBitsPerSec"] = AverageDownloadRateLimitInBitsPerSec,
	}
	M.AssertUpdateBandwidthRateLimitInput(t)
	return t
end

local TapeRecoveryPointInfo_keys = { "TapeStatus" = true, "TapeARN" = true, "TapeSizeInBytes" = true, "TapeRecoveryPointTime" = true, nil }

function M.AssertTapeRecoveryPointInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeRecoveryPointInfo to be of type 'table'")
	if struct["TapeStatus"] then M.AssertTapeRecoveryPointStatus(struct["TapeStatus"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	if struct["TapeSizeInBytes"] then M.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeRecoveryPointTime"] then M.AssertTime(struct["TapeRecoveryPointTime"]) end
	for k,_ in pairs(struct) do
		assert(TapeRecoveryPointInfo_keys[k], "TapeRecoveryPointInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TapeRecoveryPointInfo
-- <p>Describes a recovery point.</p>
-- @param TapeStatus [TapeRecoveryPointStatus] <p>Describes a recovery point.</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
-- @param TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tapes to recover.</p>
-- @param TapeRecoveryPointTime [Time] <p>The time when the point-in-time view of the virtual tape was replicated for later recovery.</p> <p>The string format of the tape recovery point time is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
function M.TapeRecoveryPointInfo(TapeStatus, TapeARN, TapeSizeInBytes, TapeRecoveryPointTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TapeRecoveryPointInfo")
	local t = { 
		["TapeStatus"] = TapeStatus,
		["TapeARN"] = TapeARN,
		["TapeSizeInBytes"] = TapeSizeInBytes,
		["TapeRecoveryPointTime"] = TapeRecoveryPointTime,
	}
	M.AssertTapeRecoveryPointInfo(t)
	return t
end

local ListLocalDisksInput_keys = { "GatewayARN" = true, nil }

function M.AssertListLocalDisksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLocalDisksInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ListLocalDisksInput_keys[k], "ListLocalDisksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLocalDisksInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway.</p>
-- Required parameter: GatewayARN
function M.ListLocalDisksInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLocalDisksInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertListLocalDisksInput(t)
	return t
end

local DescribeCachediSCSIVolumesOutput_keys = { "CachediSCSIVolumes" = true, nil }

function M.AssertDescribeCachediSCSIVolumesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCachediSCSIVolumesOutput to be of type 'table'")
	if struct["CachediSCSIVolumes"] then M.AssertCachediSCSIVolumes(struct["CachediSCSIVolumes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCachediSCSIVolumesOutput_keys[k], "DescribeCachediSCSIVolumesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCachediSCSIVolumesOutput
-- <p>A JSON object containing the following fields:</p>
-- @param CachediSCSIVolumes [CachediSCSIVolumes] <p>An array of objects where each object contains metadata about one cached volume.</p>
function M.DescribeCachediSCSIVolumesOutput(CachediSCSIVolumes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCachediSCSIVolumesOutput")
	local t = { 
		["CachediSCSIVolumes"] = CachediSCSIVolumes,
	}
	M.AssertDescribeCachediSCSIVolumesOutput(t)
	return t
end

local InternalServerError_keys = { "message" = true, "error" = true, nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["error"] then M.AssertStorageGatewayError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An internal server error has occurred during the request. For more information, see the error and message fields.</p>
-- @param message [string] <p>A human-readable message describing the error that occurred.</p>
-- @param error [StorageGatewayError] <p>A <a>StorageGatewayError</a> that provides more information about the cause of the error.</p>
function M.InternalServerError(message, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["message"] = message,
		["error"] = error,
	}
	M.AssertInternalServerError(t)
	return t
end

local RetrieveTapeRecoveryPointInput_keys = { "GatewayARN" = true, "TapeARN" = true, nil }

function M.AssertRetrieveTapeRecoveryPointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeRecoveryPointInput to be of type 'table'")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(RetrieveTapeRecoveryPointInput_keys[k], "RetrieveTapeRecoveryPointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeRecoveryPointInput
-- <p>RetrieveTapeRecoveryPointInput</p>
-- @param GatewayARN [GatewayARN] <p>RetrieveTapeRecoveryPointInput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the recovery point.</p>
-- Required parameter: TapeARN
-- Required parameter: GatewayARN
function M.RetrieveTapeRecoveryPointInput(GatewayARN, TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeRecoveryPointInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeARN"] = TapeARN,
	}
	M.AssertRetrieveTapeRecoveryPointInput(t)
	return t
end

local DescribeTapeRecoveryPointsOutput_keys = { "Marker" = true, "GatewayARN" = true, "TapeRecoveryPointInfos" = true, nil }

function M.AssertDescribeTapeRecoveryPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeRecoveryPointsOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeRecoveryPointInfos"] then M.AssertTapeRecoveryPointInfos(struct["TapeRecoveryPointInfos"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTapeRecoveryPointsOutput_keys[k], "DescribeTapeRecoveryPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeRecoveryPointsOutput
-- <p>DescribeTapeRecoveryPointsOutput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended.</p> <p>Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.</p>
-- @param GatewayARN [GatewayARN] <p>DescribeTapeRecoveryPointsOutput</p>
-- @param TapeRecoveryPointInfos [TapeRecoveryPointInfos] <p>An array of TapeRecoveryPointInfos that are available for the specified gateway.</p>
function M.DescribeTapeRecoveryPointsOutput(Marker, GatewayARN, TapeRecoveryPointInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeRecoveryPointsOutput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["TapeRecoveryPointInfos"] = TapeRecoveryPointInfos,
	}
	M.AssertDescribeTapeRecoveryPointsOutput(t)
	return t
end

local UpdateGatewayInformationInput_keys = { "GatewayTimezone" = true, "GatewayARN" = true, "GatewayName" = true, nil }

function M.AssertUpdateGatewayInformationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewayInformationInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayTimezone"] then M.AssertGatewayTimezone(struct["GatewayTimezone"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["GatewayName"] then M.AssertGatewayName(struct["GatewayName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGatewayInformationInput_keys[k], "UpdateGatewayInformationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewayInformationInput
--  
-- @param GatewayTimezone [GatewayTimezone]  
-- @param GatewayARN [GatewayARN]  
-- @param GatewayName [GatewayName]  
-- Required parameter: GatewayARN
function M.UpdateGatewayInformationInput(GatewayTimezone, GatewayARN, GatewayName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewayInformationInput")
	local t = { 
		["GatewayTimezone"] = GatewayTimezone,
		["GatewayARN"] = GatewayARN,
		["GatewayName"] = GatewayName,
	}
	M.AssertUpdateGatewayInformationInput(t)
	return t
end

local UpdateGatewaySoftwareNowInput_keys = { "GatewayARN" = true, nil }

function M.AssertUpdateGatewaySoftwareNowInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewaySoftwareNowInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGatewaySoftwareNowInput_keys[k], "UpdateGatewaySoftwareNowInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewaySoftwareNowInput
-- <p>A JSON object containing the of the gateway to update.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway to update.</p>
-- Required parameter: GatewayARN
function M.UpdateGatewaySoftwareNowInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewaySoftwareNowInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertUpdateGatewaySoftwareNowInput(t)
	return t
end

local ListVolumeInitiatorsInput_keys = { "VolumeARN" = true, nil }

function M.AssertListVolumeInitiatorsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeInitiatorsInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(ListVolumeInitiatorsInput_keys[k], "ListVolumeInitiatorsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeInitiatorsInput
-- <p>ListVolumeInitiatorsInput</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes for the gateway.</p>
-- Required parameter: VolumeARN
function M.ListVolumeInitiatorsInput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeInitiatorsInput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertListVolumeInitiatorsInput(t)
	return t
end

local CreateNFSFileShareInput_keys = { "DefaultStorageClass" = true, "ClientList" = true, "Squash" = true, "NFSFileShareDefaults" = true, "KMSKey" = true, "Role" = true, "LocationARN" = true, "ClientToken" = true, "GatewayARN" = true, "ReadOnly" = true, "KMSEncrypted" = true, nil }

function M.AssertCreateNFSFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNFSFileShareInput to be of type 'table'")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["LocationARN"], "Expected key LocationARN to exist in table")
	if struct["DefaultStorageClass"] then M.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ClientList"] then M.AssertFileShareClientList(struct["ClientList"]) end
	if struct["Squash"] then M.AssertSquash(struct["Squash"]) end
	if struct["NFSFileShareDefaults"] then M.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then M.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then M.AssertLocationARN(struct["LocationARN"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["ReadOnly"] then M.AssertBoolean(struct["ReadOnly"]) end
	if struct["KMSEncrypted"] then M.AssertBoolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(CreateNFSFileShareInput_keys[k], "CreateNFSFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNFSFileShareInput
-- <p>CreateNFSFileShareInput</p>
-- @param DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If this field is not populated, the default value S3_STANDARD is used. Optional.</p>
-- @param ClientList [FileShareClientList] <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>
-- @param Squash [Squash] <p>Maps a user to anonymous user. Valid options are the following: </p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user.</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
-- @param NFSFileShareDefaults [NFSFileShareDefaults] <p>File share default values. Optional.</p>
-- @param KMSKey [KMSKey] <p>The KMS key used for Amazon S3 server side encryption. This value can only be set when KmsEncrypted is true. Optional.</p>
-- @param Role [Role] <p>The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage. </p>
-- @param LocationARN [LocationARN] <p>The ARN of the backed storage used for storing file data. </p>
-- @param ClientToken [ClientToken] <p>A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.</p>
-- @param GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.</p>
-- @param ReadOnly [Boolean] <p>Sets the write status of a file share: "true" if the write status is read-only, and otherwise "false".</p>
-- @param KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- Required parameter: ClientToken
-- Required parameter: GatewayARN
-- Required parameter: Role
-- Required parameter: LocationARN
function M.CreateNFSFileShareInput(DefaultStorageClass, ClientList, Squash, NFSFileShareDefaults, KMSKey, Role, LocationARN, ClientToken, GatewayARN, ReadOnly, KMSEncrypted, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNFSFileShareInput")
	local t = { 
		["DefaultStorageClass"] = DefaultStorageClass,
		["ClientList"] = ClientList,
		["Squash"] = Squash,
		["NFSFileShareDefaults"] = NFSFileShareDefaults,
		["KMSKey"] = KMSKey,
		["Role"] = Role,
		["LocationARN"] = LocationARN,
		["ClientToken"] = ClientToken,
		["GatewayARN"] = GatewayARN,
		["ReadOnly"] = ReadOnly,
		["KMSEncrypted"] = KMSEncrypted,
	}
	M.AssertCreateNFSFileShareInput(t)
	return t
end

local DisableGatewayOutput_keys = { "GatewayARN" = true, nil }

function M.AssertDisableGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DisableGatewayOutput_keys[k], "DisableGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableGatewayOutput
-- <p>DisableGatewayOutput</p>
-- @param GatewayARN [GatewayARN] <p>The unique Amazon Resource Name of the disabled gateway.</p>
function M.DisableGatewayOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableGatewayOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDisableGatewayOutput(t)
	return t
end

local DescribeChapCredentialsInput_keys = { "TargetARN" = true, nil }

function M.AssertDescribeChapCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChapCredentialsInput to be of type 'table'")
	assert(struct["TargetARN"], "Expected key TargetARN to exist in table")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeChapCredentialsInput_keys[k], "DescribeChapCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChapCredentialsInput
-- <p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume target.</p>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for specified VolumeARN.</p>
-- Required parameter: TargetARN
function M.DescribeChapCredentialsInput(TargetARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeChapCredentialsInput")
	local t = { 
		["TargetARN"] = TargetARN,
	}
	M.AssertDescribeChapCredentialsInput(t)
	return t
end

local DeleteSnapshotScheduleInput_keys = { "VolumeARN" = true, nil }

function M.AssertDeleteSnapshotScheduleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotScheduleInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotScheduleInput_keys[k], "DeleteSnapshotScheduleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotScheduleInput
--  
-- @param VolumeARN [VolumeARN]  
-- Required parameter: VolumeARN
function M.DeleteSnapshotScheduleInput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotScheduleInput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertDeleteSnapshotScheduleInput(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
--  
-- @param Value [TagValue]  
-- @param Key [TagKey]  
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local UpdateChapCredentialsOutput_keys = { "TargetARN" = true, "InitiatorName" = true, nil }

function M.AssertUpdateChapCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChapCredentialsOutput to be of type 'table'")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["InitiatorName"] then M.AssertIqnName(struct["InitiatorName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateChapCredentialsOutput_keys[k], "UpdateChapCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChapCredentialsOutput
-- <p>A JSON object containing the following fields:</p>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.</p>
-- @param InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.</p>
function M.UpdateChapCredentialsOutput(TargetARN, InitiatorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateChapCredentialsOutput")
	local t = { 
		["TargetARN"] = TargetARN,
		["InitiatorName"] = InitiatorName,
	}
	M.AssertUpdateChapCredentialsOutput(t)
	return t
end

local SetLocalConsolePasswordInput_keys = { "GatewayARN" = true, "LocalConsolePassword" = true, nil }

function M.AssertSetLocalConsolePasswordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLocalConsolePasswordInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["LocalConsolePassword"], "Expected key LocalConsolePassword to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["LocalConsolePassword"] then M.AssertLocalConsolePassword(struct["LocalConsolePassword"]) end
	for k,_ in pairs(struct) do
		assert(SetLocalConsolePasswordInput_keys[k], "SetLocalConsolePasswordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLocalConsolePasswordInput
-- <p>SetLocalConsolePasswordInput</p>
-- @param GatewayARN [GatewayARN] <p>SetLocalConsolePasswordInput</p>
-- @param LocalConsolePassword [LocalConsolePassword] <p>The password you want to set for your VM local console.</p>
-- Required parameter: GatewayARN
-- Required parameter: LocalConsolePassword
function M.SetLocalConsolePasswordInput(GatewayARN, LocalConsolePassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLocalConsolePasswordInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["LocalConsolePassword"] = LocalConsolePassword,
	}
	M.AssertSetLocalConsolePasswordInput(t)
	return t
end

local Disk_keys = { "DiskSizeInBytes" = true, "DiskAllocationType" = true, "DiskPath" = true, "DiskStatus" = true, "DiskAllocationResource" = true, "DiskId" = true, "DiskNode" = true, nil }

function M.AssertDisk(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Disk to be of type 'table'")
	if struct["DiskSizeInBytes"] then M.Assertlong(struct["DiskSizeInBytes"]) end
	if struct["DiskAllocationType"] then M.AssertDiskAllocationType(struct["DiskAllocationType"]) end
	if struct["DiskPath"] then M.Assertstring(struct["DiskPath"]) end
	if struct["DiskStatus"] then M.Assertstring(struct["DiskStatus"]) end
	if struct["DiskAllocationResource"] then M.Assertstring(struct["DiskAllocationResource"]) end
	if struct["DiskId"] then M.AssertDiskId(struct["DiskId"]) end
	if struct["DiskNode"] then M.Assertstring(struct["DiskNode"]) end
	for k,_ in pairs(struct) do
		assert(Disk_keys[k], "Disk contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Disk
--  
-- @param DiskSizeInBytes [long]  
-- @param DiskAllocationType [DiskAllocationType]  
-- @param DiskPath [string]  
-- @param DiskStatus [string]  
-- @param DiskAllocationResource [string]  
-- @param DiskId [DiskId]  
-- @param DiskNode [string]  
function M.Disk(DiskSizeInBytes, DiskAllocationType, DiskPath, DiskStatus, DiskAllocationResource, DiskId, DiskNode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Disk")
	local t = { 
		["DiskSizeInBytes"] = DiskSizeInBytes,
		["DiskAllocationType"] = DiskAllocationType,
		["DiskPath"] = DiskPath,
		["DiskStatus"] = DiskStatus,
		["DiskAllocationResource"] = DiskAllocationResource,
		["DiskId"] = DiskId,
		["DiskNode"] = DiskNode,
	}
	M.AssertDisk(t)
	return t
end

local DescribeGatewayInformationOutput_keys = { "GatewayName" = true, "GatewayType" = true, "GatewayState" = true, "LastSoftwareUpdate" = true, "GatewayTimezone" = true, "GatewayNetworkInterfaces" = true, "NextUpdateAvailabilityDate" = true, "GatewayId" = true, "GatewayARN" = true, nil }

function M.AssertDescribeGatewayInformationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGatewayInformationOutput to be of type 'table'")
	if struct["GatewayName"] then M.Assertstring(struct["GatewayName"]) end
	if struct["GatewayType"] then M.AssertGatewayType(struct["GatewayType"]) end
	if struct["GatewayState"] then M.AssertGatewayState(struct["GatewayState"]) end
	if struct["LastSoftwareUpdate"] then M.AssertLastSoftwareUpdate(struct["LastSoftwareUpdate"]) end
	if struct["GatewayTimezone"] then M.AssertGatewayTimezone(struct["GatewayTimezone"]) end
	if struct["GatewayNetworkInterfaces"] then M.AssertGatewayNetworkInterfaces(struct["GatewayNetworkInterfaces"]) end
	if struct["NextUpdateAvailabilityDate"] then M.AssertNextUpdateAvailabilityDate(struct["NextUpdateAvailabilityDate"]) end
	if struct["GatewayId"] then M.AssertGatewayId(struct["GatewayId"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGatewayInformationOutput_keys[k], "DescribeGatewayInformationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGatewayInformationOutput
-- <p>A JSON object containing the following fields:</p>
-- @param GatewayName [string] <p>The name you configured for your gateway.</p>
-- @param GatewayType [GatewayType] <p>The type of the gateway.</p>
-- @param GatewayState [GatewayState] <p>A value that indicates the operating state of the gateway.</p>
-- @param LastSoftwareUpdate [LastSoftwareUpdate] <p>The date on which the last software update was applied to the gateway. If the gateway has never been updated, this field does not return a value in the response.</p>
-- @param GatewayTimezone [GatewayTimezone] <p>A value that indicates the time zone configured for the gateway.</p>
-- @param GatewayNetworkInterfaces [GatewayNetworkInterfaces] <p>A <a>NetworkInterface</a> array that contains descriptions of the gateway network interfaces.</p>
-- @param NextUpdateAvailabilityDate [NextUpdateAvailabilityDate] <p>The date on which an update to the gateway is available. This date is in the time zone of the gateway. If the gateway is not available for an update this field is not returned in the response.</p>
-- @param GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the following fields:</p>
function M.DescribeGatewayInformationOutput(GatewayName, GatewayType, GatewayState, LastSoftwareUpdate, GatewayTimezone, GatewayNetworkInterfaces, NextUpdateAvailabilityDate, GatewayId, GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGatewayInformationOutput")
	local t = { 
		["GatewayName"] = GatewayName,
		["GatewayType"] = GatewayType,
		["GatewayState"] = GatewayState,
		["LastSoftwareUpdate"] = LastSoftwareUpdate,
		["GatewayTimezone"] = GatewayTimezone,
		["GatewayNetworkInterfaces"] = GatewayNetworkInterfaces,
		["NextUpdateAvailabilityDate"] = NextUpdateAvailabilityDate,
		["GatewayId"] = GatewayId,
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeGatewayInformationOutput(t)
	return t
end

local DisableGatewayInput_keys = { "GatewayARN" = true, nil }

function M.AssertDisableGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DisableGatewayInput_keys[k], "DisableGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableGatewayInput
-- <p>DisableGatewayInput</p>
-- @param GatewayARN [GatewayARN] <p>DisableGatewayInput</p>
-- Required parameter: GatewayARN
function M.DisableGatewayInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableGatewayInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDisableGatewayInput(t)
	return t
end

local DeleteFileShareOutput_keys = { "FileShareARN" = true, nil }

function M.AssertDeleteFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFileShareOutput_keys[k], "DeleteFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileShareOutput
-- <p>DeleteFileShareOutput</p>
-- @param FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the deleted file share. </p>
function M.DeleteFileShareOutput(FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFileShareOutput")
	local t = { 
		["FileShareARN"] = FileShareARN,
	}
	M.AssertDeleteFileShareOutput(t)
	return t
end

local DescribeUploadBufferOutput_keys = { "GatewayARN" = true, "UploadBufferAllocatedInBytes" = true, "DiskIds" = true, "UploadBufferUsedInBytes" = true, nil }

function M.AssertDescribeUploadBufferOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUploadBufferOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["UploadBufferAllocatedInBytes"] then M.Assertlong(struct["UploadBufferAllocatedInBytes"]) end
	if struct["DiskIds"] then M.AssertDiskIds(struct["DiskIds"]) end
	if struct["UploadBufferUsedInBytes"] then M.Assertlong(struct["UploadBufferUsedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUploadBufferOutput_keys[k], "DescribeUploadBufferOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUploadBufferOutput
--  
-- @param GatewayARN [GatewayARN]  
-- @param UploadBufferAllocatedInBytes [long]  
-- @param DiskIds [DiskIds]  
-- @param UploadBufferUsedInBytes [long]  
function M.DescribeUploadBufferOutput(GatewayARN, UploadBufferAllocatedInBytes, DiskIds, UploadBufferUsedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUploadBufferOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["UploadBufferAllocatedInBytes"] = UploadBufferAllocatedInBytes,
		["DiskIds"] = DiskIds,
		["UploadBufferUsedInBytes"] = UploadBufferUsedInBytes,
	}
	M.AssertDescribeUploadBufferOutput(t)
	return t
end

local AddWorkingStorageOutput_keys = { "GatewayARN" = true, nil }

function M.AssertAddWorkingStorageOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddWorkingStorageOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(AddWorkingStorageOutput_keys[k], "AddWorkingStorageOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddWorkingStorageOutput
-- <p>A JSON object containing the of the gateway for which working storage was configured.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway for which working storage was configured.</p>
function M.AddWorkingStorageOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddWorkingStorageOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertAddWorkingStorageOutput(t)
	return t
end

local ResetCacheOutput_keys = { "GatewayARN" = true, nil }

function M.AssertResetCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetCacheOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ResetCacheOutput_keys[k], "ResetCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetCacheOutput
--  
-- @param GatewayARN [GatewayARN]  
function M.ResetCacheOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetCacheOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertResetCacheOutput(t)
	return t
end

local ListTapesInput_keys = { "Marker" = true, "Limit" = true, "TapeARNs" = true, nil }

function M.AssertListTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTapesInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	if struct["TapeARNs"] then M.AssertTapeARNs(struct["TapeARNs"]) end
	for k,_ in pairs(struct) do
		assert(ListTapesInput_keys[k], "ListTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTapesInput
-- <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListTapesInput$Limit</a> </p> </li> <li> <p> <a>ListTapesInput$Marker</a> </p> </li> <li> <p> <a>ListTapesInput$TapeARNs</a> </p> </li> </ul>
-- @param Marker [Marker] <p>A string that indicates the position at which to begin the returned list of tapes.</p>
-- @param Limit [PositiveIntObject] <p>An optional number limit for the tapes in the list returned by this call.</p>
-- @param TapeARNs [TapeARNs] <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListTapesInput$Limit</a> </p> </li> <li> <p> <a>ListTapesInput$Marker</a> </p> </li> <li> <p> <a>ListTapesInput$TapeARNs</a> </p> </li> </ul>
function M.ListTapesInput(Marker, Limit, TapeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTapesInput")
	local t = { 
		["Marker"] = Marker,
		["Limit"] = Limit,
		["TapeARNs"] = TapeARNs,
	}
	M.AssertListTapesInput(t)
	return t
end

local Tape_keys = { "TapeCreatedDate" = true, "TapeUsedInBytes" = true, "TapeARN" = true, "VTLDevice" = true, "TapeSizeInBytes" = true, "TapeBarcode" = true, "Progress" = true, "TapeStatus" = true, nil }

function M.AssertTape(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tape to be of type 'table'")
	if struct["TapeCreatedDate"] then M.AssertTime(struct["TapeCreatedDate"]) end
	if struct["TapeUsedInBytes"] then M.AssertTapeUsage(struct["TapeUsedInBytes"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	if struct["VTLDevice"] then M.AssertVTLDeviceARN(struct["VTLDevice"]) end
	if struct["TapeSizeInBytes"] then M.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeBarcode"] then M.AssertTapeBarcode(struct["TapeBarcode"]) end
	if struct["Progress"] then M.AssertDoubleObject(struct["Progress"]) end
	if struct["TapeStatus"] then M.AssertTapeStatus(struct["TapeStatus"]) end
	for k,_ in pairs(struct) do
		assert(Tape_keys[k], "Tape contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tape
-- <p>Describes a virtual tape object.</p>
-- @param TapeCreatedDate [Time] <p>The date the virtual tape was created.</p>
-- @param TapeUsedInBytes [TapeUsage] <p>The size, in bytes, of data written to the virtual tape.</p> <note> <p>This value is not available for tapes created prior to May,13 2015.</p> </note>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
-- @param VTLDevice [VTLDeviceARN] <p>The virtual tape library (VTL) device that the virtual tape is associated with.</p>
-- @param TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tape capacity.</p>
-- @param TapeBarcode [TapeBarcode] <p>The barcode that identifies a specific virtual tape.</p>
-- @param Progress [DoubleObject] <p>For archiving virtual tapes, indicates how much data remains to be uploaded before archiving is complete.</p> <p>Range: 0 (not started) to 100 (complete).</p>
-- @param TapeStatus [TapeStatus] <p>The current state of the virtual tape.</p>
function M.Tape(TapeCreatedDate, TapeUsedInBytes, TapeARN, VTLDevice, TapeSizeInBytes, TapeBarcode, Progress, TapeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tape")
	local t = { 
		["TapeCreatedDate"] = TapeCreatedDate,
		["TapeUsedInBytes"] = TapeUsedInBytes,
		["TapeARN"] = TapeARN,
		["VTLDevice"] = VTLDevice,
		["TapeSizeInBytes"] = TapeSizeInBytes,
		["TapeBarcode"] = TapeBarcode,
		["Progress"] = Progress,
		["TapeStatus"] = TapeStatus,
	}
	M.AssertTape(t)
	return t
end

local DescribeGatewayInformationInput_keys = { "GatewayARN" = true, nil }

function M.AssertDescribeGatewayInformationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGatewayInformationInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeGatewayInformationInput_keys[k], "DescribeGatewayInformationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGatewayInformationInput
-- <p>A JSON object containing the id of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the id of the gateway.</p>
-- Required parameter: GatewayARN
function M.DescribeGatewayInformationInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeGatewayInformationInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeGatewayInformationInput(t)
	return t
end

local DescribeVTLDevicesOutput_keys = { "Marker" = true, "GatewayARN" = true, "VTLDevices" = true, nil }

function M.AssertDescribeVTLDevicesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVTLDevicesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["VTLDevices"] then M.AssertVTLDevices(struct["VTLDevices"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVTLDevicesOutput_keys[k], "DescribeVTLDevicesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVTLDevicesOutput
-- <p>DescribeVTLDevicesOutput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which the VTL devices that were fetched for description ended. Use the marker in your next request to fetch the next set of VTL devices in the list. If there are no more VTL devices to describe, this field does not appear in the response.</p>
-- @param GatewayARN [GatewayARN] <p>DescribeVTLDevicesOutput</p>
-- @param VTLDevices [VTLDevices] <p>An array of VTL device objects composed of the Amazon Resource Name(ARN) of the VTL devices.</p>
function M.DescribeVTLDevicesOutput(Marker, GatewayARN, VTLDevices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVTLDevicesOutput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["VTLDevices"] = VTLDevices,
	}
	M.AssertDescribeVTLDevicesOutput(t)
	return t
end

local DescribeSnapshotScheduleInput_keys = { "VolumeARN" = true, nil }

function M.AssertDescribeSnapshotScheduleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotScheduleInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotScheduleInput_keys[k], "DescribeSnapshotScheduleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotScheduleInput
-- <p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a> of the volume.</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
function M.DescribeSnapshotScheduleInput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotScheduleInput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertDescribeSnapshotScheduleInput(t)
	return t
end

local DescribeBandwidthRateLimitOutput_keys = { "GatewayARN" = true, "AverageUploadRateLimitInBitsPerSec" = true, "AverageDownloadRateLimitInBitsPerSec" = true, nil }

function M.AssertDescribeBandwidthRateLimitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBandwidthRateLimitOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["AverageUploadRateLimitInBitsPerSec"] then M.AssertBandwidthUploadRateLimit(struct["AverageUploadRateLimitInBitsPerSec"]) end
	if struct["AverageDownloadRateLimitInBitsPerSec"] then M.AssertBandwidthDownloadRateLimit(struct["AverageDownloadRateLimitInBitsPerSec"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBandwidthRateLimitOutput_keys[k], "DescribeBandwidthRateLimitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBandwidthRateLimitOutput
-- <p>A JSON object containing the following fields:</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the following fields:</p>
-- @param AverageUploadRateLimitInBitsPerSec [BandwidthUploadRateLimit] <p>The average upload bandwidth rate limit in bits per second. This field does not appear in the response if the upload rate limit is not set.</p>
-- @param AverageDownloadRateLimitInBitsPerSec [BandwidthDownloadRateLimit] <p>The average download bandwidth rate limit in bits per second. This field does not appear in the response if the download rate limit is not set.</p>
function M.DescribeBandwidthRateLimitOutput(GatewayARN, AverageUploadRateLimitInBitsPerSec, AverageDownloadRateLimitInBitsPerSec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBandwidthRateLimitOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["AverageUploadRateLimitInBitsPerSec"] = AverageUploadRateLimitInBitsPerSec,
		["AverageDownloadRateLimitInBitsPerSec"] = AverageDownloadRateLimitInBitsPerSec,
	}
	M.AssertDescribeBandwidthRateLimitOutput(t)
	return t
end

local ListVolumesInput_keys = { "Marker" = true, "GatewayARN" = true, "Limit" = true, nil }

function M.AssertListVolumesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumesInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListVolumesInput_keys[k], "ListVolumesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumesInput
-- <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListVolumesInput$Limit</a> </p> </li> <li> <p> <a>ListVolumesInput$Marker</a> </p> </li> </ul>
-- @param Marker [Marker] <p>A string that indicates the position at which to begin the returned list of volumes. Obtain the marker from the response of a previous List iSCSI Volumes request.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListVolumesInput$Limit</a> </p> </li> <li> <p> <a>ListVolumesInput$Marker</a> </p> </li> </ul>
-- @param Limit [PositiveIntObject] <p>Specifies that the list of volumes returned be limited to the specified number of items.</p>
function M.ListVolumesInput(Marker, GatewayARN, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumesInput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["Limit"] = Limit,
	}
	M.AssertListVolumesInput(t)
	return t
end

local ListVolumeInitiatorsOutput_keys = { "Initiators" = true, nil }

function M.AssertListVolumeInitiatorsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeInitiatorsOutput to be of type 'table'")
	if struct["Initiators"] then M.AssertInitiators(struct["Initiators"]) end
	for k,_ in pairs(struct) do
		assert(ListVolumeInitiatorsOutput_keys[k], "ListVolumeInitiatorsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeInitiatorsOutput
-- <p>ListVolumeInitiatorsOutput</p>
-- @param Initiators [Initiators] <p>The host names and port numbers of all iSCSI initiators that are connected to the gateway.</p>
function M.ListVolumeInitiatorsOutput(Initiators, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeInitiatorsOutput")
	local t = { 
		["Initiators"] = Initiators,
	}
	M.AssertListVolumeInitiatorsOutput(t)
	return t
end

local DescribeTapeArchivesInput_keys = { "Marker" = true, "Limit" = true, "TapeARNs" = true, nil }

function M.AssertDescribeTapeArchivesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeArchivesInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	if struct["TapeARNs"] then M.AssertTapeARNs(struct["TapeARNs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTapeArchivesInput_keys[k], "DescribeTapeArchivesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeArchivesInput
-- <p>DescribeTapeArchivesInput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which to begin describing virtual tapes.</p>
-- @param Limit [PositiveIntObject] <p>Specifies that the number of virtual tapes descried be limited to the specified number.</p>
-- @param TapeARNs [TapeARNs] <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe.</p>
function M.DescribeTapeArchivesInput(Marker, Limit, TapeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeArchivesInput")
	local t = { 
		["Marker"] = Marker,
		["Limit"] = Limit,
		["TapeARNs"] = TapeARNs,
	}
	M.AssertDescribeTapeArchivesInput(t)
	return t
end

local ListTagsForResourceOutput_keys = { "Marker" = true, "ResourceARN" = true, "Tags" = true, nil }

function M.AssertListTagsForResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceOutput_keys[k], "ListTagsForResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceOutput
-- <p>ListTagsForResourceOutput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which to stop returning the list of tags.</p>
-- @param ResourceARN [ResourceARN] <p>he Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
-- @param Tags [Tags] <p>An array that contains the tags for the specified resource.</p>
function M.ListTagsForResourceOutput(Marker, ResourceARN, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceOutput")
	local t = { 
		["Marker"] = Marker,
		["ResourceARN"] = ResourceARN,
		["Tags"] = Tags,
	}
	M.AssertListTagsForResourceOutput(t)
	return t
end

local ListTapesOutput_keys = { "Marker" = true, "TapeInfos" = true, nil }

function M.AssertListTapesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTapesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["TapeInfos"] then M.AssertTapeInfos(struct["TapeInfos"]) end
	for k,_ in pairs(struct) do
		assert(ListTapesOutput_keys[k], "ListTapesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTapesOutput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>ListTapesOutput$Marker</a> </p> </li> <li> <p> <a>ListTapesOutput$VolumeInfos</a> </p> </li> </ul>
-- @param Marker [Marker] <p>A string that indicates the position at which to begin returning the next list of tapes. Use the marker in your next request to continue pagination of tapes. If there are no more tapes to list, this element does not appear in the response body.</p>
-- @param TapeInfos [TapeInfos] <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>ListTapesOutput$Marker</a> </p> </li> <li> <p> <a>ListTapesOutput$VolumeInfos</a> </p> </li> </ul>
function M.ListTapesOutput(Marker, TapeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTapesOutput")
	local t = { 
		["Marker"] = Marker,
		["TapeInfos"] = TapeInfos,
	}
	M.AssertListTapesOutput(t)
	return t
end

local VolumeiSCSIAttributes_keys = { "TargetARN" = true, "NetworkInterfaceId" = true, "LunNumber" = true, "ChapEnabled" = true, "NetworkInterfacePort" = true, nil }

function M.AssertVolumeiSCSIAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeiSCSIAttributes to be of type 'table'")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["NetworkInterfaceId"] then M.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["LunNumber"] then M.AssertPositiveIntObject(struct["LunNumber"]) end
	if struct["ChapEnabled"] then M.Assertboolean(struct["ChapEnabled"]) end
	if struct["NetworkInterfacePort"] then M.Assertinteger(struct["NetworkInterfacePort"]) end
	for k,_ in pairs(struct) do
		assert(VolumeiSCSIAttributes_keys[k], "VolumeiSCSIAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeiSCSIAttributes
-- <p>Lists iSCSI information about a volume.</p>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the volume target.</p>
-- @param NetworkInterfaceId [NetworkInterfaceId] <p>The network interface identifier.</p>
-- @param LunNumber [PositiveIntObject] <p>The logical disk number.</p>
-- @param ChapEnabled [boolean] <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
-- @param NetworkInterfacePort [integer] <p>The port used to communicate with iSCSI targets.</p>
function M.VolumeiSCSIAttributes(TargetARN, NetworkInterfaceId, LunNumber, ChapEnabled, NetworkInterfacePort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeiSCSIAttributes")
	local t = { 
		["TargetARN"] = TargetARN,
		["NetworkInterfaceId"] = NetworkInterfaceId,
		["LunNumber"] = LunNumber,
		["ChapEnabled"] = ChapEnabled,
		["NetworkInterfacePort"] = NetworkInterfacePort,
	}
	M.AssertVolumeiSCSIAttributes(t)
	return t
end

local UpdateSnapshotScheduleOutput_keys = { "VolumeARN" = true, nil }

function M.AssertUpdateSnapshotScheduleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSnapshotScheduleOutput to be of type 'table'")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSnapshotScheduleOutput_keys[k], "UpdateSnapshotScheduleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSnapshotScheduleOutput
-- <p>A JSON object containing the of the updated storage volume.</p>
-- @param VolumeARN [VolumeARN] <p/>
function M.UpdateSnapshotScheduleOutput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSnapshotScheduleOutput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertUpdateSnapshotScheduleOutput(t)
	return t
end

local UpdateBandwidthRateLimitOutput_keys = { "GatewayARN" = true, nil }

function M.AssertUpdateBandwidthRateLimitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBandwidthRateLimitOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBandwidthRateLimitOutput_keys[k], "UpdateBandwidthRateLimitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBandwidthRateLimitOutput
-- <p>A JSON object containing the of the gateway whose throttle information was updated.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway whose throttle information was updated.</p>
function M.UpdateBandwidthRateLimitOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBandwidthRateLimitOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertUpdateBandwidthRateLimitOutput(t)
	return t
end

local NFSFileShareInfo_keys = { "FileShareARN" = true, "FileShareStatus" = true, "FileShareId" = true, "DefaultStorageClass" = true, "ClientList" = true, "Squash" = true, "NFSFileShareDefaults" = true, "KMSKey" = true, "Role" = true, "LocationARN" = true, "Path" = true, "GatewayARN" = true, "ReadOnly" = true, "KMSEncrypted" = true, nil }

function M.AssertNFSFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NFSFileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["FileShareStatus"] then M.AssertFileShareStatus(struct["FileShareStatus"]) end
	if struct["FileShareId"] then M.AssertFileShareId(struct["FileShareId"]) end
	if struct["DefaultStorageClass"] then M.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ClientList"] then M.AssertFileShareClientList(struct["ClientList"]) end
	if struct["Squash"] then M.AssertSquash(struct["Squash"]) end
	if struct["NFSFileShareDefaults"] then M.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then M.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then M.AssertLocationARN(struct["LocationARN"]) end
	if struct["Path"] then M.AssertPath(struct["Path"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["ReadOnly"] then M.AssertBoolean(struct["ReadOnly"]) end
	if struct["KMSEncrypted"] then M.Assertboolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(NFSFileShareInfo_keys[k], "NFSFileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NFSFileShareInfo
-- <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param FileShareARN [FileShareARN] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param FileShareStatus [FileShareStatus] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param FileShareId [FileShareId] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If this field is not populated, the default value S3_STANDARD is used. Optional.</p>
-- @param ClientList [FileShareClientList] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param Squash [Squash] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param NFSFileShareDefaults [NFSFileShareDefaults] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param KMSKey [KMSKey] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param Role [Role] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param LocationARN [LocationARN] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param Path [Path] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param GatewayARN [GatewayARN] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param ReadOnly [Boolean] <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param KMSEncrypted [boolean] <p>True to use Amazon S3 server side encryption with your own KMS key, or false to use a key managed by Amazon S3. Optional. </p>
function M.NFSFileShareInfo(FileShareARN, FileShareStatus, FileShareId, DefaultStorageClass, ClientList, Squash, NFSFileShareDefaults, KMSKey, Role, LocationARN, Path, GatewayARN, ReadOnly, KMSEncrypted, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NFSFileShareInfo")
	local t = { 
		["FileShareARN"] = FileShareARN,
		["FileShareStatus"] = FileShareStatus,
		["FileShareId"] = FileShareId,
		["DefaultStorageClass"] = DefaultStorageClass,
		["ClientList"] = ClientList,
		["Squash"] = Squash,
		["NFSFileShareDefaults"] = NFSFileShareDefaults,
		["KMSKey"] = KMSKey,
		["Role"] = Role,
		["LocationARN"] = LocationARN,
		["Path"] = Path,
		["GatewayARN"] = GatewayARN,
		["ReadOnly"] = ReadOnly,
		["KMSEncrypted"] = KMSEncrypted,
	}
	M.AssertNFSFileShareInfo(t)
	return t
end

local CreateCachediSCSIVolumeOutput_keys = { "TargetARN" = true, "VolumeARN" = true, nil }

function M.AssertCreateCachediSCSIVolumeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCachediSCSIVolumeOutput to be of type 'table'")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateCachediSCSIVolumeOutput_keys[k], "CreateCachediSCSIVolumeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCachediSCSIVolumeOutput
--  
-- @param TargetARN [TargetARN]  
-- @param VolumeARN [VolumeARN]  
function M.CreateCachediSCSIVolumeOutput(TargetARN, VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCachediSCSIVolumeOutput")
	local t = { 
		["TargetARN"] = TargetARN,
		["VolumeARN"] = VolumeARN,
	}
	M.AssertCreateCachediSCSIVolumeOutput(t)
	return t
end

local DescribeMaintenanceStartTimeOutput_keys = { "HourOfDay" = true, "GatewayARN" = true, "DayOfWeek" = true, "MinuteOfHour" = true, "Timezone" = true, nil }

function M.AssertDescribeMaintenanceStartTimeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceStartTimeOutput to be of type 'table'")
	if struct["HourOfDay"] then M.AssertHourOfDay(struct["HourOfDay"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DayOfWeek"] then M.AssertDayOfWeek(struct["DayOfWeek"]) end
	if struct["MinuteOfHour"] then M.AssertMinuteOfHour(struct["MinuteOfHour"]) end
	if struct["Timezone"] then M.AssertGatewayTimezone(struct["Timezone"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceStartTimeOutput_keys[k], "DescribeMaintenanceStartTimeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceStartTimeOutput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$Timezone</a> </p> </li> </ul>
-- @param HourOfDay [HourOfDay] <p>The hour component of the maintenance start time represented as <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$Timezone</a> </p> </li> </ul>
-- @param DayOfWeek [DayOfWeek] <p>An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.</p>
-- @param MinuteOfHour [MinuteOfHour] <p>The minute component of the maintenance start time represented as <i>mm</i>, where <i>mm</i> is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.</p>
-- @param Timezone [GatewayTimezone] <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a> </p> </li> <li> <p> <a>DescribeMaintenanceStartTimeOutput$Timezone</a> </p> </li> </ul>
function M.DescribeMaintenanceStartTimeOutput(HourOfDay, GatewayARN, DayOfWeek, MinuteOfHour, Timezone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceStartTimeOutput")
	local t = { 
		["HourOfDay"] = HourOfDay,
		["GatewayARN"] = GatewayARN,
		["DayOfWeek"] = DayOfWeek,
		["MinuteOfHour"] = MinuteOfHour,
		["Timezone"] = Timezone,
	}
	M.AssertDescribeMaintenanceStartTimeOutput(t)
	return t
end

local DeleteChapCredentialsInput_keys = { "TargetARN" = true, "InitiatorName" = true, nil }

function M.AssertDeleteChapCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChapCredentialsInput to be of type 'table'")
	assert(struct["TargetARN"], "Expected key TargetARN to exist in table")
	assert(struct["InitiatorName"], "Expected key InitiatorName to exist in table")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["InitiatorName"] then M.AssertIqnName(struct["InitiatorName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteChapCredentialsInput_keys[k], "DeleteChapCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChapCredentialsInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>DeleteChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>DeleteChapCredentialsInput$TargetARN</a> </p> </li> </ul>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for specified VolumeARN.</p>
-- @param InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- Required parameter: TargetARN
-- Required parameter: InitiatorName
function M.DeleteChapCredentialsInput(TargetARN, InitiatorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteChapCredentialsInput")
	local t = { 
		["TargetARN"] = TargetARN,
		["InitiatorName"] = InitiatorName,
	}
	M.AssertDeleteChapCredentialsInput(t)
	return t
end

local ListTagsForResourceInput_keys = { "Marker" = true, "ResourceARN" = true, "Limit" = true, nil }

function M.AssertListTagsForResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceInput_keys[k], "ListTagsForResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceInput
-- <p>ListTagsForResourceInput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which to begin returning the list of tags.</p>
-- @param ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
-- @param Limit [PositiveIntObject] <p>Specifies that the list of tags returned be limited to the specified number of items.</p>
-- Required parameter: ResourceARN
function M.ListTagsForResourceInput(Marker, ResourceARN, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceInput")
	local t = { 
		["Marker"] = Marker,
		["ResourceARN"] = ResourceARN,
		["Limit"] = Limit,
	}
	M.AssertListTagsForResourceInput(t)
	return t
end

local CreateTapesOutput_keys = { "TapeARNs" = true, nil }

function M.AssertCreateTapesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapesOutput to be of type 'table'")
	if struct["TapeARNs"] then M.AssertTapeARNs(struct["TapeARNs"]) end
	for k,_ in pairs(struct) do
		assert(CreateTapesOutput_keys[k], "CreateTapesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapesOutput
-- <p>CreateTapeOutput</p>
-- @param TapeARNs [TapeARNs] <p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that were created.</p>
function M.CreateTapesOutput(TapeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapesOutput")
	local t = { 
		["TapeARNs"] = TapeARNs,
	}
	M.AssertCreateTapesOutput(t)
	return t
end

local DeleteSnapshotScheduleOutput_keys = { "VolumeARN" = true, nil }

function M.AssertDeleteSnapshotScheduleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotScheduleOutput to be of type 'table'")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotScheduleOutput_keys[k], "DeleteSnapshotScheduleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotScheduleOutput
--  
-- @param VolumeARN [VolumeARN]  
function M.DeleteSnapshotScheduleOutput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotScheduleOutput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertDeleteSnapshotScheduleOutput(t)
	return t
end

local AddTagsToResourceInput_keys = { "ResourceARN" = true, "Tags" = true, nil }

function M.AssertAddTagsToResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceInput to be of type 'table'")
	assert(struct["ResourceARN"], "Expected key ResourceARN to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceInput_keys[k], "AddTagsToResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceInput
-- <p>AddTagsToResourceInput</p>
-- @param ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
-- @param Tags [Tags] <p>The key-value pair that represents the tag you want to add to the resource. The value can be an empty string.</p> <note> <p>Valid characters for key and value are letters, spaces, and numbers representable in UTF-8 format, and the following special characters: + - = . _ : / @.</p> </note>
-- Required parameter: ResourceARN
-- Required parameter: Tags
function M.AddTagsToResourceInput(ResourceARN, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceInput")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToResourceInput(t)
	return t
end

local RefreshCacheOutput_keys = { "FileShareARN" = true, nil }

function M.AssertRefreshCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshCacheOutput to be of type 'table'")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(RefreshCacheOutput_keys[k], "RefreshCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshCacheOutput
--  
-- @param FileShareARN [FileShareARN]  
function M.RefreshCacheOutput(FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshCacheOutput")
	local t = { 
		["FileShareARN"] = FileShareARN,
	}
	M.AssertRefreshCacheOutput(t)
	return t
end

local DescribeStorediSCSIVolumesOutput_keys = { "StorediSCSIVolumes" = true, nil }

function M.AssertDescribeStorediSCSIVolumesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStorediSCSIVolumesOutput to be of type 'table'")
	if struct["StorediSCSIVolumes"] then M.AssertStorediSCSIVolumes(struct["StorediSCSIVolumes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStorediSCSIVolumesOutput_keys[k], "DescribeStorediSCSIVolumesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStorediSCSIVolumesOutput
--  
-- @param StorediSCSIVolumes [StorediSCSIVolumes]  
function M.DescribeStorediSCSIVolumesOutput(StorediSCSIVolumes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStorediSCSIVolumesOutput")
	local t = { 
		["StorediSCSIVolumes"] = StorediSCSIVolumes,
	}
	M.AssertDescribeStorediSCSIVolumesOutput(t)
	return t
end

local UpdateVTLDeviceTypeOutput_keys = { "VTLDeviceARN" = true, nil }

function M.AssertUpdateVTLDeviceTypeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVTLDeviceTypeOutput to be of type 'table'")
	if struct["VTLDeviceARN"] then M.AssertVTLDeviceARN(struct["VTLDeviceARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateVTLDeviceTypeOutput_keys[k], "UpdateVTLDeviceTypeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVTLDeviceTypeOutput
-- <p>UpdateVTLDeviceTypeOutput</p>
-- @param VTLDeviceARN [VTLDeviceARN] <p>The Amazon Resource Name (ARN) of the medium changer you have selected.</p>
function M.UpdateVTLDeviceTypeOutput(VTLDeviceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateVTLDeviceTypeOutput")
	local t = { 
		["VTLDeviceARN"] = VTLDeviceARN,
	}
	M.AssertUpdateVTLDeviceTypeOutput(t)
	return t
end

local AddCacheInput_keys = { "GatewayARN" = true, "DiskIds" = true, nil }

function M.AssertAddCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCacheInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskIds"], "Expected key DiskIds to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then M.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(AddCacheInput_keys[k], "AddCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCacheInput
--  
-- @param GatewayARN [GatewayARN]  
-- @param DiskIds [DiskIds]  
-- Required parameter: GatewayARN
-- Required parameter: DiskIds
function M.AddCacheInput(GatewayARN, DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCacheInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["DiskIds"] = DiskIds,
	}
	M.AssertAddCacheInput(t)
	return t
end

local VolumeRecoveryPointInfo_keys = { "VolumeSizeInBytes" = true, "VolumeUsageInBytes" = true, "VolumeARN" = true, "VolumeRecoveryPointTime" = true, nil }

function M.AssertVolumeRecoveryPointInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeRecoveryPointInfo to be of type 'table'")
	if struct["VolumeSizeInBytes"] then M.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeUsageInBytes"] then M.Assertlong(struct["VolumeUsageInBytes"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["VolumeRecoveryPointTime"] then M.Assertstring(struct["VolumeRecoveryPointTime"]) end
	for k,_ in pairs(struct) do
		assert(VolumeRecoveryPointInfo_keys[k], "VolumeRecoveryPointInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeRecoveryPointInfo
--  
-- @param VolumeSizeInBytes [long]  
-- @param VolumeUsageInBytes [long]  
-- @param VolumeARN [VolumeARN]  
-- @param VolumeRecoveryPointTime [string]  
function M.VolumeRecoveryPointInfo(VolumeSizeInBytes, VolumeUsageInBytes, VolumeARN, VolumeRecoveryPointTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeRecoveryPointInfo")
	local t = { 
		["VolumeSizeInBytes"] = VolumeSizeInBytes,
		["VolumeUsageInBytes"] = VolumeUsageInBytes,
		["VolumeARN"] = VolumeARN,
		["VolumeRecoveryPointTime"] = VolumeRecoveryPointTime,
	}
	M.AssertVolumeRecoveryPointInfo(t)
	return t
end

local ListGatewaysInput_keys = { "Marker" = true, "Limit" = true, nil }

function M.AssertListGatewaysInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGatewaysInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListGatewaysInput_keys[k], "ListGatewaysInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGatewaysInput
-- <p>A JSON object containing zero or more of the following fields:</p> <ul> <li> <p> <a>ListGatewaysInput$Limit</a> </p> </li> <li> <p> <a>ListGatewaysInput$Marker</a> </p> </li> </ul>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which to begin the returned list of gateways.</p>
-- @param Limit [PositiveIntObject] <p>Specifies that the list of gateways returned be limited to the specified number of items.</p>
function M.ListGatewaysInput(Marker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGatewaysInput")
	local t = { 
		["Marker"] = Marker,
		["Limit"] = Limit,
	}
	M.AssertListGatewaysInput(t)
	return t
end

local VolumeInfo_keys = { "VolumeSizeInBytes" = true, "VolumeType" = true, "VolumeId" = true, "VolumeARN" = true, "GatewayId" = true, "GatewayARN" = true, nil }

function M.AssertVolumeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeInfo to be of type 'table'")
	if struct["VolumeSizeInBytes"] then M.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeType"] then M.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then M.AssertVolumeId(struct["VolumeId"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["GatewayId"] then M.AssertGatewayId(struct["GatewayId"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(VolumeInfo_keys[k], "VolumeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeInfo
-- <p>Describes a storage volume object.</p>
-- @param VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p> <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param VolumeType [VolumeType] <p>Describes a storage volume object.</p>
-- @param VolumeId [VolumeId] <p>The unique identifier assigned to the volume. This ID becomes part of the volume Amazon Resource Name (ARN), which you use as input for other operations.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) for the storage volume. For example, the following is a valid ARN:</p> <p> <code>arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB</code> </p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- @param GatewayARN [GatewayARN] <p>Describes a storage volume object.</p>
function M.VolumeInfo(VolumeSizeInBytes, VolumeType, VolumeId, VolumeARN, GatewayId, GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeInfo")
	local t = { 
		["VolumeSizeInBytes"] = VolumeSizeInBytes,
		["VolumeType"] = VolumeType,
		["VolumeId"] = VolumeId,
		["VolumeARN"] = VolumeARN,
		["GatewayId"] = GatewayId,
		["GatewayARN"] = GatewayARN,
	}
	M.AssertVolumeInfo(t)
	return t
end

local DescribeNFSFileSharesInput_keys = { "FileShareARNList" = true, nil }

function M.AssertDescribeNFSFileSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNFSFileSharesInput to be of type 'table'")
	assert(struct["FileShareARNList"], "Expected key FileShareARNList to exist in table")
	if struct["FileShareARNList"] then M.AssertFileShareARNList(struct["FileShareARNList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNFSFileSharesInput_keys[k], "DescribeNFSFileSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNFSFileSharesInput
-- <p>DescribeNFSFileSharesInput</p>
-- @param FileShareARNList [FileShareARNList] <p>An array containing the Amazon Resource Name (ARN) of each file share to be described. </p>
-- Required parameter: FileShareARNList
function M.DescribeNFSFileSharesInput(FileShareARNList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNFSFileSharesInput")
	local t = { 
		["FileShareARNList"] = FileShareARNList,
	}
	M.AssertDescribeNFSFileSharesInput(t)
	return t
end

local ListVolumeRecoveryPointsOutput_keys = { "GatewayARN" = true, "VolumeRecoveryPointInfos" = true, nil }

function M.AssertListVolumeRecoveryPointsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumeRecoveryPointsOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["VolumeRecoveryPointInfos"] then M.AssertVolumeRecoveryPointInfos(struct["VolumeRecoveryPointInfos"]) end
	for k,_ in pairs(struct) do
		assert(ListVolumeRecoveryPointsOutput_keys[k], "ListVolumeRecoveryPointsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumeRecoveryPointsOutput
--  
-- @param GatewayARN [GatewayARN]  
-- @param VolumeRecoveryPointInfos [VolumeRecoveryPointInfos]  
function M.ListVolumeRecoveryPointsOutput(GatewayARN, VolumeRecoveryPointInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumeRecoveryPointsOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["VolumeRecoveryPointInfos"] = VolumeRecoveryPointInfos,
	}
	M.AssertListVolumeRecoveryPointsOutput(t)
	return t
end

local DeleteTapeArchiveInput_keys = { "TapeARN" = true, nil }

function M.AssertDeleteTapeArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeArchiveInput to be of type 'table'")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTapeArchiveInput_keys[k], "DeleteTapeArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeArchiveInput
-- <p>DeleteTapeArchiveInput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf (VTS).</p>
-- Required parameter: TapeARN
function M.DeleteTapeArchiveInput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeArchiveInput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertDeleteTapeArchiveInput(t)
	return t
end

local ActivateGatewayOutput_keys = { "GatewayARN" = true, nil }

function M.AssertActivateGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ActivateGatewayOutput_keys[k], "ActivateGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateGatewayOutput
-- <p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.</p> <note> <p>For gateways activated prior to September 02, 2015 the gateway ARN contains the gateway name rather than the gateway id. Changing the name of the gateway has no effect on the gateway ARN.</p> </note>
-- @param GatewayARN [GatewayARN] <p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.</p> <note> <p>For gateways activated prior to September 02, 2015 the gateway ARN contains the gateway name rather than the gateway id. Changing the name of the gateway has no effect on the gateway ARN.</p> </note>
function M.ActivateGatewayOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateGatewayOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertActivateGatewayOutput(t)
	return t
end

local ListVolumesOutput_keys = { "Marker" = true, "GatewayARN" = true, "VolumeInfos" = true, nil }

function M.AssertListVolumesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVolumesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["VolumeInfos"] then M.AssertVolumeInfos(struct["VolumeInfos"]) end
	for k,_ in pairs(struct) do
		assert(ListVolumesOutput_keys[k], "ListVolumesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVolumesOutput
--  
-- @param Marker [Marker]  
-- @param GatewayARN [GatewayARN]  
-- @param VolumeInfos [VolumeInfos]  
function M.ListVolumesOutput(Marker, GatewayARN, VolumeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVolumesOutput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["VolumeInfos"] = VolumeInfos,
	}
	M.AssertListVolumesOutput(t)
	return t
end

local DeleteVolumeInput_keys = { "VolumeARN" = true, nil }

function M.AssertDeleteVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVolumeInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVolumeInput_keys[k], "DeleteVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVolumeInput
-- <p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to delete.</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
function M.DeleteVolumeInput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVolumeInput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertDeleteVolumeInput(t)
	return t
end

local ShutdownGatewayInput_keys = { "GatewayARN" = true, nil }

function M.AssertShutdownGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShutdownGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(ShutdownGatewayInput_keys[k], "ShutdownGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShutdownGatewayInput
-- <p>A JSON object containing the of the gateway to shut down.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway to shut down.</p>
-- Required parameter: GatewayARN
function M.ShutdownGatewayInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShutdownGatewayInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertShutdownGatewayInput(t)
	return t
end

local DeleteGatewayInput_keys = { "GatewayARN" = true, nil }

function M.AssertDeleteGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGatewayInput_keys[k], "DeleteGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGatewayInput
-- <p>A JSON object containing the id of the gateway to delete.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the id of the gateway to delete.</p>
-- Required parameter: GatewayARN
function M.DeleteGatewayInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGatewayInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDeleteGatewayInput(t)
	return t
end

local UpdateChapCredentialsInput_keys = { "TargetARN" = true, "SecretToAuthenticateInitiator" = true, "InitiatorName" = true, "SecretToAuthenticateTarget" = true, nil }

function M.AssertUpdateChapCredentialsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChapCredentialsInput to be of type 'table'")
	assert(struct["TargetARN"], "Expected key TargetARN to exist in table")
	assert(struct["SecretToAuthenticateInitiator"], "Expected key SecretToAuthenticateInitiator to exist in table")
	assert(struct["InitiatorName"], "Expected key InitiatorName to exist in table")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["SecretToAuthenticateInitiator"] then M.AssertChapSecret(struct["SecretToAuthenticateInitiator"]) end
	if struct["InitiatorName"] then M.AssertIqnName(struct["InitiatorName"]) end
	if struct["SecretToAuthenticateTarget"] then M.AssertChapSecret(struct["SecretToAuthenticateTarget"]) end
	for k,_ in pairs(struct) do
		assert(UpdateChapCredentialsInput_keys[k], "UpdateChapCredentialsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChapCredentialsInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$TargetARN</a> </p> </li> </ul>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified VolumeARN.</p>
-- @param SecretToAuthenticateInitiator [ChapSecret] <p>The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> <note> <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p> </note>
-- @param InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- @param SecretToAuthenticateTarget [ChapSecret] <p>The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p> <note> <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p> </note>
-- Required parameter: TargetARN
-- Required parameter: SecretToAuthenticateInitiator
-- Required parameter: InitiatorName
function M.UpdateChapCredentialsInput(TargetARN, SecretToAuthenticateInitiator, InitiatorName, SecretToAuthenticateTarget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateChapCredentialsInput")
	local t = { 
		["TargetARN"] = TargetARN,
		["SecretToAuthenticateInitiator"] = SecretToAuthenticateInitiator,
		["InitiatorName"] = InitiatorName,
		["SecretToAuthenticateTarget"] = SecretToAuthenticateTarget,
	}
	M.AssertUpdateChapCredentialsInput(t)
	return t
end

local DescribeUploadBufferInput_keys = { "GatewayARN" = true, nil }

function M.AssertDescribeUploadBufferInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUploadBufferInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUploadBufferInput_keys[k], "DescribeUploadBufferInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUploadBufferInput
--  
-- @param GatewayARN [GatewayARN]  
-- Required parameter: GatewayARN
function M.DescribeUploadBufferInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUploadBufferInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeUploadBufferInput(t)
	return t
end

local ListLocalDisksOutput_keys = { "GatewayARN" = true, "Disks" = true, nil }

function M.AssertListLocalDisksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLocalDisksOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Disks"] then M.AssertDisks(struct["Disks"]) end
	for k,_ in pairs(struct) do
		assert(ListLocalDisksOutput_keys[k], "ListLocalDisksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLocalDisksOutput
--  
-- @param GatewayARN [GatewayARN]  
-- @param Disks [Disks]  
function M.ListLocalDisksOutput(GatewayARN, Disks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLocalDisksOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["Disks"] = Disks,
	}
	M.AssertListLocalDisksOutput(t)
	return t
end

local GatewayInfo_keys = { "GatewayId" = true, "GatewayARN" = true, "GatewayName" = true, "GatewayOperationalState" = true, "GatewayType" = true, nil }

function M.AssertGatewayInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GatewayInfo to be of type 'table'")
	if struct["GatewayId"] then M.AssertGatewayId(struct["GatewayId"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["GatewayName"] then M.Assertstring(struct["GatewayName"]) end
	if struct["GatewayOperationalState"] then M.AssertGatewayOperationalState(struct["GatewayOperationalState"]) end
	if struct["GatewayType"] then M.AssertGatewayType(struct["GatewayType"]) end
	for k,_ in pairs(struct) do
		assert(GatewayInfo_keys[k], "GatewayInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GatewayInfo
-- <p>Describes a gateway object.</p>
-- @param GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p>
-- @param GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param GatewayName [string] <p>The name of the gateway.</p>
-- @param GatewayOperationalState [GatewayOperationalState] <p>The state of the gateway.</p> <p>Valid Values: DISABLED or ACTIVE</p>
-- @param GatewayType [GatewayType] <p>The type of the gateway.</p>
function M.GatewayInfo(GatewayId, GatewayARN, GatewayName, GatewayOperationalState, GatewayType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GatewayInfo")
	local t = { 
		["GatewayId"] = GatewayId,
		["GatewayARN"] = GatewayARN,
		["GatewayName"] = GatewayName,
		["GatewayOperationalState"] = GatewayOperationalState,
		["GatewayType"] = GatewayType,
	}
	M.AssertGatewayInfo(t)
	return t
end

local FileShareInfo_keys = { "FileShareARN" = true, "GatewayARN" = true, "FileShareStatus" = true, "FileShareId" = true, nil }

function M.AssertFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["FileShareStatus"] then M.AssertFileShareStatus(struct["FileShareStatus"]) end
	if struct["FileShareId"] then M.AssertFileShareId(struct["FileShareId"]) end
	for k,_ in pairs(struct) do
		assert(FileShareInfo_keys[k], "FileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileShareInfo
-- <p>Describes a file share.</p>
-- @param FileShareARN [FileShareARN] <p>Describes a file share.</p>
-- @param GatewayARN [GatewayARN] <p>Describes a file share.</p>
-- @param FileShareStatus [FileShareStatus] <p>Describes a file share.</p>
-- @param FileShareId [FileShareId] <p>Describes a file share.</p>
function M.FileShareInfo(FileShareARN, GatewayARN, FileShareStatus, FileShareId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileShareInfo")
	local t = { 
		["FileShareARN"] = FileShareARN,
		["GatewayARN"] = GatewayARN,
		["FileShareStatus"] = FileShareStatus,
		["FileShareId"] = FileShareId,
	}
	M.AssertFileShareInfo(t)
	return t
end

local AddTagsToResourceOutput_keys = { "ResourceARN" = true, nil }

function M.AssertAddTagsToResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceOutput to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceOutput_keys[k], "AddTagsToResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceOutput
-- <p>AddTagsToResourceOutput</p>
-- @param ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
function M.AddTagsToResourceOutput(ResourceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceOutput")
	local t = { 
		["ResourceARN"] = ResourceARN,
	}
	M.AssertAddTagsToResourceOutput(t)
	return t
end

local AddUploadBufferOutput_keys = { "GatewayARN" = true, nil }

function M.AssertAddUploadBufferOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddUploadBufferOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(AddUploadBufferOutput_keys[k], "AddUploadBufferOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddUploadBufferOutput
--  
-- @param GatewayARN [GatewayARN]  
function M.AddUploadBufferOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddUploadBufferOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertAddUploadBufferOutput(t)
	return t
end

local TapeInfo_keys = { "TapeStatus" = true, "TapeARN" = true, "TapeSizeInBytes" = true, "GatewayARN" = true, "TapeBarcode" = true, nil }

function M.AssertTapeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeInfo to be of type 'table'")
	if struct["TapeStatus"] then M.AssertTapeStatus(struct["TapeStatus"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	if struct["TapeSizeInBytes"] then M.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeBarcode"] then M.AssertTapeBarcode(struct["TapeBarcode"]) end
	for k,_ in pairs(struct) do
		assert(TapeInfo_keys[k], "TapeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TapeInfo
-- <p>Describes a virtual tape.</p>
-- @param TapeStatus [TapeStatus] <p>The status of the tape.</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of a virtual tape.</p>
-- @param TapeSizeInBytes [TapeSize] <p>The size, in bytes, of a virtual tape.</p>
-- @param GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param TapeBarcode [TapeBarcode] <p>The barcode that identifies a specific virtual tape.</p>
function M.TapeInfo(TapeStatus, TapeARN, TapeSizeInBytes, GatewayARN, TapeBarcode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TapeInfo")
	local t = { 
		["TapeStatus"] = TapeStatus,
		["TapeARN"] = TapeARN,
		["TapeSizeInBytes"] = TapeSizeInBytes,
		["GatewayARN"] = GatewayARN,
		["TapeBarcode"] = TapeBarcode,
	}
	M.AssertTapeInfo(t)
	return t
end

local DeleteTapeArchiveOutput_keys = { "TapeARN" = true, nil }

function M.AssertDeleteTapeArchiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeArchiveOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTapeArchiveOutput_keys[k], "DeleteTapeArchiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeArchiveOutput
-- <p>DeleteTapeArchiveOutput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape that was deleted from the virtual tape shelf (VTS).</p>
function M.DeleteTapeArchiveOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeArchiveOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertDeleteTapeArchiveOutput(t)
	return t
end

local DeleteChapCredentialsOutput_keys = { "TargetARN" = true, "InitiatorName" = true, nil }

function M.AssertDeleteChapCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChapCredentialsOutput to be of type 'table'")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["InitiatorName"] then M.AssertIqnName(struct["InitiatorName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteChapCredentialsOutput_keys[k], "DeleteChapCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChapCredentialsOutput
-- <p>A JSON object containing the following fields:</p>
-- @param TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the target.</p>
-- @param InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
function M.DeleteChapCredentialsOutput(TargetARN, InitiatorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteChapCredentialsOutput")
	local t = { 
		["TargetARN"] = TargetARN,
		["InitiatorName"] = InitiatorName,
	}
	M.AssertDeleteChapCredentialsOutput(t)
	return t
end

local RefreshCacheInput_keys = { "FileShareARN" = true, nil }

function M.AssertRefreshCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshCacheInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(RefreshCacheInput_keys[k], "RefreshCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshCacheInput
--  
-- @param FileShareARN [FileShareARN]  
-- Required parameter: FileShareARN
function M.RefreshCacheInput(FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RefreshCacheInput")
	local t = { 
		["FileShareARN"] = FileShareARN,
	}
	M.AssertRefreshCacheInput(t)
	return t
end

local ActivateGatewayInput_keys = { "GatewayName" = true, "GatewayType" = true, "TapeDriveType" = true, "MediumChangerType" = true, "GatewayTimezone" = true, "GatewayRegion" = true, "ActivationKey" = true, nil }

function M.AssertActivateGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateGatewayInput to be of type 'table'")
	assert(struct["ActivationKey"], "Expected key ActivationKey to exist in table")
	assert(struct["GatewayName"], "Expected key GatewayName to exist in table")
	assert(struct["GatewayTimezone"], "Expected key GatewayTimezone to exist in table")
	assert(struct["GatewayRegion"], "Expected key GatewayRegion to exist in table")
	if struct["GatewayName"] then M.AssertGatewayName(struct["GatewayName"]) end
	if struct["GatewayType"] then M.AssertGatewayType(struct["GatewayType"]) end
	if struct["TapeDriveType"] then M.AssertTapeDriveType(struct["TapeDriveType"]) end
	if struct["MediumChangerType"] then M.AssertMediumChangerType(struct["MediumChangerType"]) end
	if struct["GatewayTimezone"] then M.AssertGatewayTimezone(struct["GatewayTimezone"]) end
	if struct["GatewayRegion"] then M.AssertRegionId(struct["GatewayRegion"]) end
	if struct["ActivationKey"] then M.AssertActivationKey(struct["ActivationKey"]) end
	for k,_ in pairs(struct) do
		assert(ActivateGatewayInput_keys[k], "ActivateGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateGatewayInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>ActivateGatewayInput$ActivationKey</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayName</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayRegion</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayTimezone</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$TapeDriveType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$MediumChangerType</a> </p> </li> </ul>
-- @param GatewayName [GatewayName] <p>The name you configured for your gateway.</p>
-- @param GatewayType [GatewayType] <p>A value that defines the type of gateway to activate. The type specified is critical to all later functions of the gateway and cannot be changed after activation. The default value is <code>STORED</code>. </p> <p> Valid Values: "STORED", "CACHED", "VTL", "FILE_S3"</p>
-- @param TapeDriveType [TapeDriveType] <p>The value that indicates the type of tape drive to use for tape gateway. This field is optional.</p> <p> Valid Values: "IBM-ULT3580-TD5" </p>
-- @param MediumChangerType [MediumChangerType] <p>The value that indicates the type of medium changer to use for tape gateway. This field is optional.</p> <p> Valid Values: "STK-L700", "AWS-Gateway-VTL"</p>
-- @param GatewayTimezone [GatewayTimezone] <p>A value that indicates the time zone you want to set for the gateway. The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.</p>
-- @param GatewayRegion [RegionId] <p>A value that indicates the region where you want to store your data. The gateway region specified must be the same region as the region in your <code>Host</code> header in the request. For more information about available regions and endpoints for AWS Storage Gateway, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p> <p> Valid Values: "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-central-1", "eu-west-2", "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "sa-east-1"</p>
-- @param ActivationKey [ActivationKey] <p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET request with redirects enabled to the gateway IP address (port 80). The redirect URL returned in the response provides you the activation key for your gateway in the query string parameter <code>activationKey</code>. It may also include other activation-related parameters, however, these are merely defaults -- the arguments you pass to the <code>ActivateGateway</code> API call determine the actual configuration of your gateway.</p>
-- Required parameter: ActivationKey
-- Required parameter: GatewayName
-- Required parameter: GatewayTimezone
-- Required parameter: GatewayRegion
function M.ActivateGatewayInput(GatewayName, GatewayType, TapeDriveType, MediumChangerType, GatewayTimezone, GatewayRegion, ActivationKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateGatewayInput")
	local t = { 
		["GatewayName"] = GatewayName,
		["GatewayType"] = GatewayType,
		["TapeDriveType"] = TapeDriveType,
		["MediumChangerType"] = MediumChangerType,
		["GatewayTimezone"] = GatewayTimezone,
		["GatewayRegion"] = GatewayRegion,
		["ActivationKey"] = ActivationKey,
	}
	M.AssertActivateGatewayInput(t)
	return t
end

local DescribeCacheInput_keys = { "GatewayARN" = true, nil }

function M.AssertDescribeCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheInput_keys[k], "DescribeCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheInput
--  
-- @param GatewayARN [GatewayARN]  
-- Required parameter: GatewayARN
function M.DescribeCacheInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeCacheInput(t)
	return t
end

local InvalidGatewayRequestException_keys = { "message" = true, "error" = true, nil }

function M.AssertInvalidGatewayRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGatewayRequestException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["error"] then M.AssertStorageGatewayError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(InvalidGatewayRequestException_keys[k], "InvalidGatewayRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGatewayRequestException
-- <p>An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.</p>
-- @param message [string] <p>A human-readable message describing the error that occurred.</p>
-- @param error [StorageGatewayError] <p>A <a>StorageGatewayError</a> that provides more detail about the cause of the error.</p>
function M.InvalidGatewayRequestException(message, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGatewayRequestException")
	local t = { 
		["message"] = message,
		["error"] = error,
	}
	M.AssertInvalidGatewayRequestException(t)
	return t
end

local DeleteVolumeOutput_keys = { "VolumeARN" = true, nil }

function M.AssertDeleteVolumeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVolumeOutput to be of type 'table'")
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVolumeOutput_keys[k], "DeleteVolumeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVolumeOutput
-- <p>A JSON object containing the of the storage volume that was deleted</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume that was deleted. It is the same ARN you provided in the request.</p>
function M.DeleteVolumeOutput(VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVolumeOutput")
	local t = { 
		["VolumeARN"] = VolumeARN,
	}
	M.AssertDeleteVolumeOutput(t)
	return t
end

local RetrieveTapeArchiveInput_keys = { "GatewayARN" = true, "TapeARN" = true, nil }

function M.AssertRetrieveTapeArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeArchiveInput to be of type 'table'")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(RetrieveTapeArchiveInput_keys[k], "RetrieveTapeArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeArchiveInput
-- <p>RetrieveTapeArchiveInput</p>
-- @param GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p> <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape gateway.</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual tape shelf (VTS).</p>
-- Required parameter: TapeARN
-- Required parameter: GatewayARN
function M.RetrieveTapeArchiveInput(GatewayARN, TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeArchiveInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeARN"] = TapeARN,
	}
	M.AssertRetrieveTapeArchiveInput(t)
	return t
end

local DescribeCachediSCSIVolumesInput_keys = { "VolumeARNs" = true, nil }

function M.AssertDescribeCachediSCSIVolumesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCachediSCSIVolumesInput to be of type 'table'")
	assert(struct["VolumeARNs"], "Expected key VolumeARNs to exist in table")
	if struct["VolumeARNs"] then M.AssertVolumeARNs(struct["VolumeARNs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCachediSCSIVolumesInput_keys[k], "DescribeCachediSCSIVolumesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCachediSCSIVolumesInput
--  
-- @param VolumeARNs [VolumeARNs]  
-- Required parameter: VolumeARNs
function M.DescribeCachediSCSIVolumesInput(VolumeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCachediSCSIVolumesInput")
	local t = { 
		["VolumeARNs"] = VolumeARNs,
	}
	M.AssertDescribeCachediSCSIVolumesInput(t)
	return t
end

local UpdateGatewayInformationOutput_keys = { "GatewayARN" = true, "GatewayName" = true, nil }

function M.AssertUpdateGatewayInformationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewayInformationOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["GatewayName"] then M.Assertstring(struct["GatewayName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGatewayInformationOutput_keys[k], "UpdateGatewayInformationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewayInformationOutput
-- <p>A JSON object containing the ARN of the gateway that was updated.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the ARN of the gateway that was updated.</p>
-- @param GatewayName [string] <p>A JSON object containing the ARN of the gateway that was updated.</p>
function M.UpdateGatewayInformationOutput(GatewayARN, GatewayName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewayInformationOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["GatewayName"] = GatewayName,
	}
	M.AssertUpdateGatewayInformationOutput(t)
	return t
end

local ListFileSharesInput_keys = { "Marker" = true, "GatewayARN" = true, "Limit" = true, nil }

function M.AssertListFileSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFileSharesInput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListFileSharesInput_keys[k], "ListFileSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFileSharesInput
-- <p>ListFileShareInput</p>
-- @param Marker [Marker] <p>Opaque pagination token returned from a previous ListFileShares operation. If present, <code>Marker</code> specifies where to continue the list from after a previous call to ListFileShares. Optional.</p>
-- @param GatewayARN [GatewayARN] <p>The Amazon resource Name (ARN) of the gateway whose file shares you want to list. If this field is not present, all file shares under your account are listed.</p>
-- @param Limit [PositiveIntObject] <p>The maximum number of file shares to return in the response. The value must be an integer with a value greater than zero. Optional.</p>
function M.ListFileSharesInput(Marker, GatewayARN, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFileSharesInput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["Limit"] = Limit,
	}
	M.AssertListFileSharesInput(t)
	return t
end

local UpdateGatewaySoftwareNowOutput_keys = { "GatewayARN" = true, nil }

function M.AssertUpdateGatewaySoftwareNowOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewaySoftwareNowOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGatewaySoftwareNowOutput_keys[k], "UpdateGatewaySoftwareNowOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewaySoftwareNowOutput
-- <p>A JSON object containing the of the gateway that was updated.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway that was updated.</p>
function M.UpdateGatewaySoftwareNowOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGatewaySoftwareNowOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertUpdateGatewaySoftwareNowOutput(t)
	return t
end

local RemoveTagsFromResourceOutput_keys = { "ResourceARN" = true, nil }

function M.AssertRemoveTagsFromResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceOutput to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceOutput_keys[k], "RemoveTagsFromResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceOutput
-- <p>RemoveTagsFromResourceOutput</p>
-- @param ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource that the tags were removed from.</p>
function M.RemoveTagsFromResourceOutput(ResourceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceOutput")
	local t = { 
		["ResourceARN"] = ResourceARN,
	}
	M.AssertRemoveTagsFromResourceOutput(t)
	return t
end

local DeleteBandwidthRateLimitOutput_keys = { "GatewayARN" = true, nil }

function M.AssertDeleteBandwidthRateLimitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBandwidthRateLimitOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBandwidthRateLimitOutput_keys[k], "DeleteBandwidthRateLimitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBandwidthRateLimitOutput
-- <p>A JSON object containing the of the gateway whose bandwidth rate information was deleted.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway whose bandwidth rate information was deleted.</p>
function M.DeleteBandwidthRateLimitOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBandwidthRateLimitOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDeleteBandwidthRateLimitOutput(t)
	return t
end

local UpdateMaintenanceStartTimeOutput_keys = { "GatewayARN" = true, nil }

function M.AssertUpdateMaintenanceStartTimeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceStartTimeOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMaintenanceStartTimeOutput_keys[k], "UpdateMaintenanceStartTimeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceStartTimeOutput
-- <p>A JSON object containing the of the gateway whose maintenance start time is updated.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway whose maintenance start time is updated.</p>
function M.UpdateMaintenanceStartTimeOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMaintenanceStartTimeOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertUpdateMaintenanceStartTimeOutput(t)
	return t
end

local CreateSnapshotFromVolumeRecoveryPointInput_keys = { "SnapshotDescription" = true, "VolumeARN" = true, nil }

function M.AssertCreateSnapshotFromVolumeRecoveryPointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotFromVolumeRecoveryPointInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	assert(struct["SnapshotDescription"], "Expected key SnapshotDescription to exist in table")
	if struct["SnapshotDescription"] then M.AssertSnapshotDescription(struct["SnapshotDescription"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotFromVolumeRecoveryPointInput_keys[k], "CreateSnapshotFromVolumeRecoveryPointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotFromVolumeRecoveryPointInput
--  
-- @param SnapshotDescription [SnapshotDescription]  
-- @param VolumeARN [VolumeARN]  
-- Required parameter: VolumeARN
-- Required parameter: SnapshotDescription
function M.CreateSnapshotFromVolumeRecoveryPointInput(SnapshotDescription, VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotFromVolumeRecoveryPointInput")
	local t = { 
		["SnapshotDescription"] = SnapshotDescription,
		["VolumeARN"] = VolumeARN,
	}
	M.AssertCreateSnapshotFromVolumeRecoveryPointInput(t)
	return t
end

local TapeArchive_keys = { "TapeCreatedDate" = true, "TapeUsedInBytes" = true, "TapeARN" = true, "CompletionTime" = true, "TapeSizeInBytes" = true, "TapeBarcode" = true, "RetrievedTo" = true, "TapeStatus" = true, nil }

function M.AssertTapeArchive(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeArchive to be of type 'table'")
	if struct["TapeCreatedDate"] then M.AssertTime(struct["TapeCreatedDate"]) end
	if struct["TapeUsedInBytes"] then M.AssertTapeUsage(struct["TapeUsedInBytes"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	if struct["CompletionTime"] then M.AssertTime(struct["CompletionTime"]) end
	if struct["TapeSizeInBytes"] then M.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeBarcode"] then M.AssertTapeBarcode(struct["TapeBarcode"]) end
	if struct["RetrievedTo"] then M.AssertGatewayARN(struct["RetrievedTo"]) end
	if struct["TapeStatus"] then M.AssertTapeArchiveStatus(struct["TapeStatus"]) end
	for k,_ in pairs(struct) do
		assert(TapeArchive_keys[k], "TapeArchive contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TapeArchive
-- <p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>
-- @param TapeCreatedDate [Time] <p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>
-- @param TapeUsedInBytes [TapeUsage] <p>The size, in bytes, of data written to the virtual tape.</p> <note> <p>This value is not available for tapes created prior to May,13 2015.</p> </note>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of an archived virtual tape.</p>
-- @param CompletionTime [Time] <p>The time that the archiving of the virtual tape was completed.</p> <p>The string format of the completion time is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
-- @param TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the archived virtual tape.</p>
-- @param TapeBarcode [TapeBarcode] <p>The barcode that identifies the archived virtual tape.</p>
-- @param RetrievedTo [GatewayARN] <p>The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being retrieved to.</p> <p>The virtual tape is retrieved from the virtual tape shelf (VTS).</p>
-- @param TapeStatus [TapeArchiveStatus] <p>The current state of the archived virtual tape.</p>
function M.TapeArchive(TapeCreatedDate, TapeUsedInBytes, TapeARN, CompletionTime, TapeSizeInBytes, TapeBarcode, RetrievedTo, TapeStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TapeArchive")
	local t = { 
		["TapeCreatedDate"] = TapeCreatedDate,
		["TapeUsedInBytes"] = TapeUsedInBytes,
		["TapeARN"] = TapeARN,
		["CompletionTime"] = CompletionTime,
		["TapeSizeInBytes"] = TapeSizeInBytes,
		["TapeBarcode"] = TapeBarcode,
		["RetrievedTo"] = RetrievedTo,
		["TapeStatus"] = TapeStatus,
	}
	M.AssertTapeArchive(t)
	return t
end

local StartGatewayInput_keys = { "GatewayARN" = true, nil }

function M.AssertStartGatewayInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGatewayInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(StartGatewayInput_keys[k], "StartGatewayInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGatewayInput
-- <p>A JSON object containing the of the gateway to start.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway to start.</p>
-- Required parameter: GatewayARN
function M.StartGatewayInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGatewayInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertStartGatewayInput(t)
	return t
end

local DescribeNFSFileSharesOutput_keys = { "NFSFileShareInfoList" = true, nil }

function M.AssertDescribeNFSFileSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNFSFileSharesOutput to be of type 'table'")
	if struct["NFSFileShareInfoList"] then M.AssertNFSFileShareInfoList(struct["NFSFileShareInfoList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNFSFileSharesOutput_keys[k], "DescribeNFSFileSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNFSFileSharesOutput
-- <p>DescribeNFSFileSharesOutput</p>
-- @param NFSFileShareInfoList [NFSFileShareInfoList] <p>An array containing a description for each requested file share. </p>
function M.DescribeNFSFileSharesOutput(NFSFileShareInfoList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNFSFileSharesOutput")
	local t = { 
		["NFSFileShareInfoList"] = NFSFileShareInfoList,
	}
	M.AssertDescribeNFSFileSharesOutput(t)
	return t
end

local CreateNFSFileShareOutput_keys = { "FileShareARN" = true, nil }

function M.AssertCreateNFSFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNFSFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateNFSFileShareOutput_keys[k], "CreateNFSFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNFSFileShareOutput
-- <p>CreateNFSFileShareOutput</p>
-- @param FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the newly created file share. </p>
function M.CreateNFSFileShareOutput(FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNFSFileShareOutput")
	local t = { 
		["FileShareARN"] = FileShareARN,
	}
	M.AssertCreateNFSFileShareOutput(t)
	return t
end

local VTLDevice_keys = { "VTLDeviceType" = true, "VTLDeviceProductIdentifier" = true, "DeviceiSCSIAttributes" = true, "VTLDeviceARN" = true, "VTLDeviceVendor" = true, nil }

function M.AssertVTLDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VTLDevice to be of type 'table'")
	if struct["VTLDeviceType"] then M.AssertVTLDeviceType(struct["VTLDeviceType"]) end
	if struct["VTLDeviceProductIdentifier"] then M.AssertVTLDeviceProductIdentifier(struct["VTLDeviceProductIdentifier"]) end
	if struct["DeviceiSCSIAttributes"] then M.AssertDeviceiSCSIAttributes(struct["DeviceiSCSIAttributes"]) end
	if struct["VTLDeviceARN"] then M.AssertVTLDeviceARN(struct["VTLDeviceARN"]) end
	if struct["VTLDeviceVendor"] then M.AssertVTLDeviceVendor(struct["VTLDeviceVendor"]) end
	for k,_ in pairs(struct) do
		assert(VTLDevice_keys[k], "VTLDevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VTLDevice
-- <p>Represents a device object associated with a tape gateway.</p>
-- @param VTLDeviceType [VTLDeviceType] <p>Represents a device object associated with a tape gateway.</p>
-- @param VTLDeviceProductIdentifier [VTLDeviceProductIdentifier] <p>Represents a device object associated with a tape gateway.</p>
-- @param DeviceiSCSIAttributes [DeviceiSCSIAttributes] <p>A list of iSCSI information about a VTL device.</p>
-- @param VTLDeviceARN [VTLDeviceARN] <p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media changer).</p>
-- @param VTLDeviceVendor [VTLDeviceVendor] <p>Represents a device object associated with a tape gateway.</p>
function M.VTLDevice(VTLDeviceType, VTLDeviceProductIdentifier, DeviceiSCSIAttributes, VTLDeviceARN, VTLDeviceVendor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VTLDevice")
	local t = { 
		["VTLDeviceType"] = VTLDeviceType,
		["VTLDeviceProductIdentifier"] = VTLDeviceProductIdentifier,
		["DeviceiSCSIAttributes"] = DeviceiSCSIAttributes,
		["VTLDeviceARN"] = VTLDeviceARN,
		["VTLDeviceVendor"] = VTLDeviceVendor,
	}
	M.AssertVTLDevice(t)
	return t
end

local AddUploadBufferInput_keys = { "GatewayARN" = true, "DiskIds" = true, nil }

function M.AssertAddUploadBufferInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddUploadBufferInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskIds"], "Expected key DiskIds to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then M.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(AddUploadBufferInput_keys[k], "AddUploadBufferInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddUploadBufferInput
--  
-- @param GatewayARN [GatewayARN]  
-- @param DiskIds [DiskIds]  
-- Required parameter: GatewayARN
-- Required parameter: DiskIds
function M.AddUploadBufferInput(GatewayARN, DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddUploadBufferInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["DiskIds"] = DiskIds,
	}
	M.AssertAddUploadBufferInput(t)
	return t
end

local CancelRetrievalInput_keys = { "GatewayARN" = true, "TapeARN" = true, nil }

function M.AssertCancelRetrievalInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelRetrievalInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(CancelRetrievalInput_keys[k], "CancelRetrievalInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelRetrievalInput
-- <p>CancelRetrievalInput</p>
-- @param GatewayARN [GatewayARN] <p>CancelRetrievalInput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval for.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeARN
function M.CancelRetrievalInput(GatewayARN, TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelRetrievalInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeARN"] = TapeARN,
	}
	M.AssertCancelRetrievalInput(t)
	return t
end

local ListGatewaysOutput_keys = { "Marker" = true, "Gateways" = true, nil }

function M.AssertListGatewaysOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGatewaysOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Gateways"] then M.AssertGateways(struct["Gateways"]) end
	for k,_ in pairs(struct) do
		assert(ListGatewaysOutput_keys[k], "ListGatewaysOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGatewaysOutput
--  
-- @param Marker [Marker]  
-- @param Gateways [Gateways]  
function M.ListGatewaysOutput(Marker, Gateways, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGatewaysOutput")
	local t = { 
		["Marker"] = Marker,
		["Gateways"] = Gateways,
	}
	M.AssertListGatewaysOutput(t)
	return t
end

local CreateTapeWithBarcodeInput_keys = { "GatewayARN" = true, "TapeSizeInBytes" = true, "TapeBarcode" = true, nil }

function M.AssertCreateTapeWithBarcodeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapeWithBarcodeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeSizeInBytes"], "Expected key TapeSizeInBytes to exist in table")
	assert(struct["TapeBarcode"], "Expected key TapeBarcode to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeSizeInBytes"] then M.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["TapeBarcode"] then M.AssertTapeBarcode(struct["TapeBarcode"]) end
	for k,_ in pairs(struct) do
		assert(CreateTapeWithBarcodeInput_keys[k], "CreateTapeWithBarcodeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapeWithBarcodeInput
-- <p>CreateTapeWithBarcodeInput</p>
-- @param GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tape with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- @param TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tape that you want to create.</p> <note> <p>The size must be aligned by gigabyte (1024*1024*1024 byte).</p> </note>
-- @param TapeBarcode [TapeBarcode] <p>The barcode that you want to assign to the tape.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeSizeInBytes
-- Required parameter: TapeBarcode
function M.CreateTapeWithBarcodeInput(GatewayARN, TapeSizeInBytes, TapeBarcode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapeWithBarcodeInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeSizeInBytes"] = TapeSizeInBytes,
		["TapeBarcode"] = TapeBarcode,
	}
	M.AssertCreateTapeWithBarcodeInput(t)
	return t
end

local DescribeWorkingStorageInput_keys = { "GatewayARN" = true, nil }

function M.AssertDescribeWorkingStorageInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkingStorageInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkingStorageInput_keys[k], "DescribeWorkingStorageInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkingStorageInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway.</p>
-- Required parameter: GatewayARN
function M.DescribeWorkingStorageInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkingStorageInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeWorkingStorageInput(t)
	return t
end

local UpdateSnapshotScheduleInput_keys = { "RecurrenceInHours" = true, "StartAt" = true, "Description" = true, "VolumeARN" = true, nil }

function M.AssertUpdateSnapshotScheduleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSnapshotScheduleInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	assert(struct["StartAt"], "Expected key StartAt to exist in table")
	assert(struct["RecurrenceInHours"], "Expected key RecurrenceInHours to exist in table")
	if struct["RecurrenceInHours"] then M.AssertRecurrenceInHours(struct["RecurrenceInHours"]) end
	if struct["StartAt"] then M.AssertHourOfDay(struct["StartAt"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSnapshotScheduleInput_keys[k], "UpdateSnapshotScheduleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSnapshotScheduleInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateSnapshotScheduleInput$Description</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$StartAt</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$VolumeARN</a> </p> </li> </ul>
-- @param RecurrenceInHours [RecurrenceInHours] <p>Frequency of snapshots. Specify the number of hours between snapshots.</p>
-- @param StartAt [HourOfDay] <p>The hour of the day at which the snapshot schedule begins represented as <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
-- @param Description [Description] <p>Optional description of the snapshot that overwrites the existing description.</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
-- Required parameter: StartAt
-- Required parameter: RecurrenceInHours
function M.UpdateSnapshotScheduleInput(RecurrenceInHours, StartAt, Description, VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSnapshotScheduleInput")
	local t = { 
		["RecurrenceInHours"] = RecurrenceInHours,
		["StartAt"] = StartAt,
		["Description"] = Description,
		["VolumeARN"] = VolumeARN,
	}
	M.AssertUpdateSnapshotScheduleInput(t)
	return t
end

local DeviceiSCSIAttributes_keys = { "TargetARN" = true, "NetworkInterfaceId" = true, "ChapEnabled" = true, "NetworkInterfacePort" = true, nil }

function M.AssertDeviceiSCSIAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceiSCSIAttributes to be of type 'table'")
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["NetworkInterfaceId"] then M.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["ChapEnabled"] then M.Assertboolean(struct["ChapEnabled"]) end
	if struct["NetworkInterfacePort"] then M.Assertinteger(struct["NetworkInterfacePort"]) end
	for k,_ in pairs(struct) do
		assert(DeviceiSCSIAttributes_keys[k], "DeviceiSCSIAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceiSCSIAttributes
-- <p>Lists iSCSI information about a VTL device.</p>
-- @param TargetARN [TargetARN] <p>Specifies the unique Amazon Resource Name(ARN) that encodes the iSCSI qualified name(iqn) of a tape drive or media changer target.</p>
-- @param NetworkInterfaceId [NetworkInterfaceId] <p>The network interface identifier of the VTL device.</p>
-- @param ChapEnabled [boolean] <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
-- @param NetworkInterfacePort [integer] <p>The port used to communicate with iSCSI VTL device targets.</p>
function M.DeviceiSCSIAttributes(TargetARN, NetworkInterfaceId, ChapEnabled, NetworkInterfacePort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceiSCSIAttributes")
	local t = { 
		["TargetARN"] = TargetARN,
		["NetworkInterfaceId"] = NetworkInterfaceId,
		["ChapEnabled"] = ChapEnabled,
		["NetworkInterfacePort"] = NetworkInterfacePort,
	}
	M.AssertDeviceiSCSIAttributes(t)
	return t
end

local DescribeChapCredentialsOutput_keys = { "ChapCredentials" = true, nil }

function M.AssertDescribeChapCredentialsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChapCredentialsOutput to be of type 'table'")
	if struct["ChapCredentials"] then M.AssertChapCredentials(struct["ChapCredentials"]) end
	for k,_ in pairs(struct) do
		assert(DescribeChapCredentialsOutput_keys[k], "DescribeChapCredentialsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChapCredentialsOutput
-- <p>A JSON object containing a .</p>
-- @param ChapCredentials [ChapCredentials] <p>An array of <a>ChapInfo</a> objects that represent CHAP credentials. Each object in the array contains CHAP credential information for one target-initiator pair. If no CHAP credentials are set, an empty array is returned. CHAP credential information is provided in a JSON object with the following fields:</p> <ul> <li> <p> <b>InitiatorName</b>: The iSCSI initiator that connects to the target.</p> </li> <li> <p> <b>SecretToAuthenticateInitiator</b>: The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> </li> <li> <p> <b>SecretToAuthenticateTarget</b>: The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> </li> <li> <p> <b>TargetARN</b>: The Amazon Resource Name (ARN) of the storage volume.</p> </li> </ul>
function M.DescribeChapCredentialsOutput(ChapCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeChapCredentialsOutput")
	local t = { 
		["ChapCredentials"] = ChapCredentials,
	}
	M.AssertDescribeChapCredentialsOutput(t)
	return t
end

local ServiceUnavailableError_keys = { "message" = true, "error" = true, nil }

function M.AssertServiceUnavailableError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableError to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["error"] then M.AssertStorageGatewayError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableError_keys[k], "ServiceUnavailableError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableError
-- <p>An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.</p>
-- @param message [string] <p>A human-readable message describing the error that occurred.</p>
-- @param error [StorageGatewayError] <p>A <a>StorageGatewayError</a> that provides more information about the cause of the error.</p>
function M.ServiceUnavailableError(message, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableError")
	local t = { 
		["message"] = message,
		["error"] = error,
	}
	M.AssertServiceUnavailableError(t)
	return t
end

local UpdateNFSFileShareOutput_keys = { "FileShareARN" = true, nil }

function M.AssertUpdateNFSFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNFSFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateNFSFileShareOutput_keys[k], "UpdateNFSFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNFSFileShareOutput
-- <p>UpdateNFSFileShareOutput</p>
-- @param FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the updated file share. </p>
function M.UpdateNFSFileShareOutput(FileShareARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNFSFileShareOutput")
	local t = { 
		["FileShareARN"] = FileShareARN,
	}
	M.AssertUpdateNFSFileShareOutput(t)
	return t
end

local NFSFileShareDefaults_keys = { "OwnerId" = true, "DirectoryMode" = true, "GroupId" = true, "FileMode" = true, nil }

function M.AssertNFSFileShareDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NFSFileShareDefaults to be of type 'table'")
	if struct["OwnerId"] then M.AssertPermissionId(struct["OwnerId"]) end
	if struct["DirectoryMode"] then M.AssertPermissionMode(struct["DirectoryMode"]) end
	if struct["GroupId"] then M.AssertPermissionId(struct["GroupId"]) end
	if struct["FileMode"] then M.AssertPermissionMode(struct["FileMode"]) end
	for k,_ in pairs(struct) do
		assert(NFSFileShareDefaults_keys[k], "NFSFileShareDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NFSFileShareDefaults
-- <p>Describes file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. This operation is only supported in the file gateway architecture.</p>
-- @param OwnerId [PermissionId] <p>The default owner ID for files in the file share (unless the files have another owner ID specified). The default value is nfsnobody. </p>
-- @param DirectoryMode [PermissionMode] <p>The Unix directory mode in the form "nnnn". For example, "0666" represents the default access mode for all directories inside the file share. The default value is 0777.</p>
-- @param GroupId [PermissionId] <p>The default group ID for the file share (unless the files have another group ID specified). The default value is nfsnobody. </p>
-- @param FileMode [PermissionMode] <p>The Unix file mode in the form "nnnn". For example, "0666" represents the default file mode inside the file share. The default value is 0666. </p>
function M.NFSFileShareDefaults(OwnerId, DirectoryMode, GroupId, FileMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NFSFileShareDefaults")
	local t = { 
		["OwnerId"] = OwnerId,
		["DirectoryMode"] = DirectoryMode,
		["GroupId"] = GroupId,
		["FileMode"] = FileMode,
	}
	M.AssertNFSFileShareDefaults(t)
	return t
end

local CancelArchivalInput_keys = { "GatewayARN" = true, "TapeARN" = true, nil }

function M.AssertCancelArchivalInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelArchivalInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeARN"], "Expected key TapeARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(CancelArchivalInput_keys[k], "CancelArchivalInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelArchivalInput
-- <p>CancelArchivalInput</p>
-- @param GatewayARN [GatewayARN] <p>CancelArchivalInput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving for.</p>
-- Required parameter: GatewayARN
-- Required parameter: TapeARN
function M.CancelArchivalInput(GatewayARN, TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelArchivalInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["TapeARN"] = TapeARN,
	}
	M.AssertCancelArchivalInput(t)
	return t
end

local AddCacheOutput_keys = { "GatewayARN" = true, nil }

function M.AssertAddCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCacheOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(AddCacheOutput_keys[k], "AddCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCacheOutput
--  
-- @param GatewayARN [GatewayARN]  
function M.AddCacheOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCacheOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertAddCacheOutput(t)
	return t
end

local DescribeStorediSCSIVolumesInput_keys = { "VolumeARNs" = true, nil }

function M.AssertDescribeStorediSCSIVolumesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStorediSCSIVolumesInput to be of type 'table'")
	assert(struct["VolumeARNs"], "Expected key VolumeARNs to exist in table")
	if struct["VolumeARNs"] then M.AssertVolumeARNs(struct["VolumeARNs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStorediSCSIVolumesInput_keys[k], "DescribeStorediSCSIVolumesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStorediSCSIVolumesInput
-- <p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>
-- @param VolumeARNs [VolumeARNs] <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a stored volume. All of the specified stored volumes must from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
-- Required parameter: VolumeARNs
function M.DescribeStorediSCSIVolumesInput(VolumeARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStorediSCSIVolumesInput")
	local t = { 
		["VolumeARNs"] = VolumeARNs,
	}
	M.AssertDescribeStorediSCSIVolumesInput(t)
	return t
end

local DescribeCacheOutput_keys = { "CacheUsedPercentage" = true, "CacheMissPercentage" = true, "CacheDirtyPercentage" = true, "CacheHitPercentage" = true, "CacheAllocatedInBytes" = true, "GatewayARN" = true, "DiskIds" = true, nil }

function M.AssertDescribeCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheOutput to be of type 'table'")
	if struct["CacheUsedPercentage"] then M.Assertdouble(struct["CacheUsedPercentage"]) end
	if struct["CacheMissPercentage"] then M.Assertdouble(struct["CacheMissPercentage"]) end
	if struct["CacheDirtyPercentage"] then M.Assertdouble(struct["CacheDirtyPercentage"]) end
	if struct["CacheHitPercentage"] then M.Assertdouble(struct["CacheHitPercentage"]) end
	if struct["CacheAllocatedInBytes"] then M.Assertlong(struct["CacheAllocatedInBytes"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then M.AssertDiskIds(struct["DiskIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheOutput_keys[k], "DescribeCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheOutput
--  
-- @param CacheUsedPercentage [double]  
-- @param CacheMissPercentage [double]  
-- @param CacheDirtyPercentage [double]  
-- @param CacheHitPercentage [double]  
-- @param CacheAllocatedInBytes [long]  
-- @param GatewayARN [GatewayARN]  
-- @param DiskIds [DiskIds]  
function M.DescribeCacheOutput(CacheUsedPercentage, CacheMissPercentage, CacheDirtyPercentage, CacheHitPercentage, CacheAllocatedInBytes, GatewayARN, DiskIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheOutput")
	local t = { 
		["CacheUsedPercentage"] = CacheUsedPercentage,
		["CacheMissPercentage"] = CacheMissPercentage,
		["CacheDirtyPercentage"] = CacheDirtyPercentage,
		["CacheHitPercentage"] = CacheHitPercentage,
		["CacheAllocatedInBytes"] = CacheAllocatedInBytes,
		["GatewayARN"] = GatewayARN,
		["DiskIds"] = DiskIds,
	}
	M.AssertDescribeCacheOutput(t)
	return t
end

local CreateTapeWithBarcodeOutput_keys = { "TapeARN" = true, nil }

function M.AssertCreateTapeWithBarcodeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapeWithBarcodeOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateTapeWithBarcodeOutput_keys[k], "CreateTapeWithBarcodeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapeWithBarcodeOutput
-- <p>CreateTapeOutput</p>
-- @param TapeARN [TapeARN] <p>A unique Amazon Resource Name (ARN) that represents the virtual tape that was created.</p>
function M.CreateTapeWithBarcodeOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTapeWithBarcodeOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertCreateTapeWithBarcodeOutput(t)
	return t
end

local DescribeTapesOutput_keys = { "Marker" = true, "Tapes" = true, nil }

function M.AssertDescribeTapesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["Tapes"] then M.AssertTapes(struct["Tapes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTapesOutput_keys[k], "DescribeTapesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapesOutput
-- <p>DescribeTapesOutput</p>
-- @param Marker [Marker] <p>An opaque string which can be used as part of a subsequent DescribeTapes call to retrieve the next page of results.</p> <p>If a response does not contain a marker, then there are no more results to be retrieved.</p>
-- @param Tapes [Tapes] <p>An array of virtual tape descriptions.</p>
function M.DescribeTapesOutput(Marker, Tapes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapesOutput")
	local t = { 
		["Marker"] = Marker,
		["Tapes"] = Tapes,
	}
	M.AssertDescribeTapesOutput(t)
	return t
end

local UpdateMaintenanceStartTimeInput_keys = { "HourOfDay" = true, "GatewayARN" = true, "DayOfWeek" = true, "MinuteOfHour" = true, nil }

function M.AssertUpdateMaintenanceStartTimeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceStartTimeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["HourOfDay"], "Expected key HourOfDay to exist in table")
	assert(struct["MinuteOfHour"], "Expected key MinuteOfHour to exist in table")
	assert(struct["DayOfWeek"], "Expected key DayOfWeek to exist in table")
	if struct["HourOfDay"] then M.AssertHourOfDay(struct["HourOfDay"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DayOfWeek"] then M.AssertDayOfWeek(struct["DayOfWeek"]) end
	if struct["MinuteOfHour"] then M.AssertMinuteOfHour(struct["MinuteOfHour"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMaintenanceStartTimeInput_keys[k], "UpdateMaintenanceStartTimeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceStartTimeInput
-- <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$HourOfDay</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a> </p> </li> </ul>
-- @param HourOfDay [HourOfDay] <p>The hour component of the maintenance start time represented as <i>hh</i>, where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time zone of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$HourOfDay</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a> </p> </li> </ul>
-- @param DayOfWeek [DayOfWeek] <p>The maintenance start time day of the week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.</p>
-- @param MinuteOfHour [MinuteOfHour] <p>The minute component of the maintenance start time represented as <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.</p>
-- Required parameter: GatewayARN
-- Required parameter: HourOfDay
-- Required parameter: MinuteOfHour
-- Required parameter: DayOfWeek
function M.UpdateMaintenanceStartTimeInput(HourOfDay, GatewayARN, DayOfWeek, MinuteOfHour, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMaintenanceStartTimeInput")
	local t = { 
		["HourOfDay"] = HourOfDay,
		["GatewayARN"] = GatewayARN,
		["DayOfWeek"] = DayOfWeek,
		["MinuteOfHour"] = MinuteOfHour,
	}
	M.AssertUpdateMaintenanceStartTimeInput(t)
	return t
end

local DescribeTapeArchivesOutput_keys = { "Marker" = true, "TapeArchives" = true, nil }

function M.AssertDescribeTapeArchivesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTapeArchivesOutput to be of type 'table'")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["TapeArchives"] then M.AssertTapeArchives(struct["TapeArchives"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTapeArchivesOutput_keys[k], "DescribeTapeArchivesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTapeArchivesOutput
-- <p>DescribeTapeArchivesOutput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which the virtual tapes that were fetched for description ended. Use this marker in your next request to fetch the next set of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to describe, this field does not appear in the response.</p>
-- @param TapeArchives [TapeArchives] <p>An array of virtual tape objects in the virtual tape shelf (VTS). The description includes of the Amazon Resource Name(ARN) of the virtual tapes. The information returned includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the tapes, progress of the description and tape barcode.</p>
function M.DescribeTapeArchivesOutput(Marker, TapeArchives, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTapeArchivesOutput")
	local t = { 
		["Marker"] = Marker,
		["TapeArchives"] = TapeArchives,
	}
	M.AssertDescribeTapeArchivesOutput(t)
	return t
end

local DeleteTapeOutput_keys = { "TapeARN" = true, nil }

function M.AssertDeleteTapeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTapeOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTapeOutput_keys[k], "DeleteTapeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTapeOutput
-- <p>DeleteTapeOutput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the deleted virtual tape.</p>
function M.DeleteTapeOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTapeOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertDeleteTapeOutput(t)
	return t
end

local StartGatewayOutput_keys = { "GatewayARN" = true, nil }

function M.AssertStartGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(StartGatewayOutput_keys[k], "StartGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartGatewayOutput
-- <p>A JSON object containing the of the gateway that was restarted.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway that was restarted.</p>
function M.StartGatewayOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartGatewayOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertStartGatewayOutput(t)
	return t
end

local DescribeBandwidthRateLimitInput_keys = { "GatewayARN" = true, nil }

function M.AssertDescribeBandwidthRateLimitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBandwidthRateLimitInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBandwidthRateLimitInput_keys[k], "DescribeBandwidthRateLimitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBandwidthRateLimitInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway.</p>
-- Required parameter: GatewayARN
function M.DescribeBandwidthRateLimitInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBandwidthRateLimitInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeBandwidthRateLimitInput(t)
	return t
end

local CreateSnapshotFromVolumeRecoveryPointOutput_keys = { "SnapshotId" = true, "VolumeARN" = true, "VolumeRecoveryPointTime" = true, nil }

function M.AssertCreateSnapshotFromVolumeRecoveryPointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotFromVolumeRecoveryPointOutput to be of type 'table'")
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["VolumeRecoveryPointTime"] then M.Assertstring(struct["VolumeRecoveryPointTime"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotFromVolumeRecoveryPointOutput_keys[k], "CreateSnapshotFromVolumeRecoveryPointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotFromVolumeRecoveryPointOutput
--  
-- @param SnapshotId [SnapshotId]  
-- @param VolumeARN [VolumeARN]  
-- @param VolumeRecoveryPointTime [string]  
function M.CreateSnapshotFromVolumeRecoveryPointOutput(SnapshotId, VolumeARN, VolumeRecoveryPointTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotFromVolumeRecoveryPointOutput")
	local t = { 
		["SnapshotId"] = SnapshotId,
		["VolumeARN"] = VolumeARN,
		["VolumeRecoveryPointTime"] = VolumeRecoveryPointTime,
	}
	M.AssertCreateSnapshotFromVolumeRecoveryPointOutput(t)
	return t
end

local NetworkInterface_keys = { "Ipv4Address" = true, "MacAddress" = true, "Ipv6Address" = true, nil }

function M.AssertNetworkInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterface to be of type 'table'")
	if struct["Ipv4Address"] then M.Assertstring(struct["Ipv4Address"]) end
	if struct["MacAddress"] then M.Assertstring(struct["MacAddress"]) end
	if struct["Ipv6Address"] then M.Assertstring(struct["Ipv6Address"]) end
	for k,_ in pairs(struct) do
		assert(NetworkInterface_keys[k], "NetworkInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterface
-- <p>Describes a gateway's network interface.</p>
-- @param Ipv4Address [string] <p>The Internet Protocol version 4 (IPv4) address of the interface.</p>
-- @param MacAddress [string] <p>The Media Access Control (MAC) address of the interface.</p> <note> <p>This is currently unsupported and will not be returned in output.</p> </note>
-- @param Ipv6Address [string] <p>The Internet Protocol version 6 (IPv6) address of the interface. <i>Currently not supported</i>.</p>
function M.NetworkInterface(Ipv4Address, MacAddress, Ipv6Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NetworkInterface")
	local t = { 
		["Ipv4Address"] = Ipv4Address,
		["MacAddress"] = MacAddress,
		["Ipv6Address"] = Ipv6Address,
	}
	M.AssertNetworkInterface(t)
	return t
end

local DeleteGatewayOutput_keys = { "GatewayARN" = true, nil }

function M.AssertDeleteGatewayOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGatewayOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGatewayOutput_keys[k], "DeleteGatewayOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGatewayOutput
-- <p>A JSON object containing the id of the deleted gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the id of the deleted gateway.</p>
function M.DeleteGatewayOutput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGatewayOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDeleteGatewayOutput(t)
	return t
end

local UpdateVTLDeviceTypeInput_keys = { "DeviceType" = true, "VTLDeviceARN" = true, nil }

function M.AssertUpdateVTLDeviceTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVTLDeviceTypeInput to be of type 'table'")
	assert(struct["VTLDeviceARN"], "Expected key VTLDeviceARN to exist in table")
	assert(struct["DeviceType"], "Expected key DeviceType to exist in table")
	if struct["DeviceType"] then M.AssertDeviceType(struct["DeviceType"]) end
	if struct["VTLDeviceARN"] then M.AssertVTLDeviceARN(struct["VTLDeviceARN"]) end
	for k,_ in pairs(struct) do
		assert(UpdateVTLDeviceTypeInput_keys[k], "UpdateVTLDeviceTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVTLDeviceTypeInput
--  
-- @param DeviceType [DeviceType] <p>The type of medium changer you want to select.</p> <p> Valid Values: "STK-L700", "AWS-Gateway-VTL"</p>
-- @param VTLDeviceARN [VTLDeviceARN] <p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>
-- Required parameter: VTLDeviceARN
-- Required parameter: DeviceType
function M.UpdateVTLDeviceTypeInput(DeviceType, VTLDeviceARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateVTLDeviceTypeInput")
	local t = { 
		["DeviceType"] = DeviceType,
		["VTLDeviceARN"] = VTLDeviceARN,
	}
	M.AssertUpdateVTLDeviceTypeInput(t)
	return t
end

local DescribeWorkingStorageOutput_keys = { "GatewayARN" = true, "DiskIds" = true, "WorkingStorageAllocatedInBytes" = true, "WorkingStorageUsedInBytes" = true, nil }

function M.AssertDescribeWorkingStorageOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkingStorageOutput to be of type 'table'")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DiskIds"] then M.AssertDiskIds(struct["DiskIds"]) end
	if struct["WorkingStorageAllocatedInBytes"] then M.Assertlong(struct["WorkingStorageAllocatedInBytes"]) end
	if struct["WorkingStorageUsedInBytes"] then M.Assertlong(struct["WorkingStorageUsedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkingStorageOutput_keys[k], "DescribeWorkingStorageOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkingStorageOutput
-- <p>A JSON object containing the following fields:</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the following fields:</p>
-- @param DiskIds [DiskIds] <p>An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.</p>
-- @param WorkingStorageAllocatedInBytes [long] <p>The total working storage in bytes allocated for the gateway. If no working storage is configured for the gateway, this field returns 0.</p>
-- @param WorkingStorageUsedInBytes [long] <p>The total working storage in bytes in use by the gateway. If no working storage is configured for the gateway, this field returns 0.</p>
function M.DescribeWorkingStorageOutput(GatewayARN, DiskIds, WorkingStorageAllocatedInBytes, WorkingStorageUsedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkingStorageOutput")
	local t = { 
		["GatewayARN"] = GatewayARN,
		["DiskIds"] = DiskIds,
		["WorkingStorageAllocatedInBytes"] = WorkingStorageAllocatedInBytes,
		["WorkingStorageUsedInBytes"] = WorkingStorageUsedInBytes,
	}
	M.AssertDescribeWorkingStorageOutput(t)
	return t
end

local DescribeSnapshotScheduleOutput_keys = { "RecurrenceInHours" = true, "StartAt" = true, "Description" = true, "VolumeARN" = true, "Timezone" = true, nil }

function M.AssertDescribeSnapshotScheduleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotScheduleOutput to be of type 'table'")
	if struct["RecurrenceInHours"] then M.AssertRecurrenceInHours(struct["RecurrenceInHours"]) end
	if struct["StartAt"] then M.AssertHourOfDay(struct["StartAt"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["Timezone"] then M.AssertGatewayTimezone(struct["Timezone"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotScheduleOutput_keys[k], "DescribeSnapshotScheduleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotScheduleOutput
--  
-- @param RecurrenceInHours [RecurrenceInHours]  
-- @param StartAt [HourOfDay]  
-- @param Description [Description]  
-- @param VolumeARN [VolumeARN]  
-- @param Timezone [GatewayTimezone]  
function M.DescribeSnapshotScheduleOutput(RecurrenceInHours, StartAt, Description, VolumeARN, Timezone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotScheduleOutput")
	local t = { 
		["RecurrenceInHours"] = RecurrenceInHours,
		["StartAt"] = StartAt,
		["Description"] = Description,
		["VolumeARN"] = VolumeARN,
		["Timezone"] = Timezone,
	}
	M.AssertDescribeSnapshotScheduleOutput(t)
	return t
end

local CreateSnapshotInput_keys = { "SnapshotDescription" = true, "VolumeARN" = true, nil }

function M.AssertCreateSnapshotInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotInput to be of type 'table'")
	assert(struct["VolumeARN"], "Expected key VolumeARN to exist in table")
	assert(struct["SnapshotDescription"], "Expected key SnapshotDescription to exist in table")
	if struct["SnapshotDescription"] then M.AssertSnapshotDescription(struct["SnapshotDescription"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotInput_keys[k], "CreateSnapshotInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateSnapshotInput$SnapshotDescription</a> </p> </li> <li> <p> <a>CreateSnapshotInput$VolumeARN</a> </p> </li> </ul>
-- @param SnapshotDescription [SnapshotDescription] <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the <b>Description</b> field, and in the AWS Storage Gateway snapshot <b>Details</b> pane, <b>Description</b> field</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required parameter: VolumeARN
-- Required parameter: SnapshotDescription
function M.CreateSnapshotInput(SnapshotDescription, VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotInput")
	local t = { 
		["SnapshotDescription"] = SnapshotDescription,
		["VolumeARN"] = VolumeARN,
	}
	M.AssertCreateSnapshotInput(t)
	return t
end

local CreateStorediSCSIVolumeOutput_keys = { "VolumeSizeInBytes" = true, "TargetARN" = true, "VolumeARN" = true, nil }

function M.AssertCreateStorediSCSIVolumeOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStorediSCSIVolumeOutput to be of type 'table'")
	if struct["VolumeSizeInBytes"] then M.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["TargetARN"] then M.AssertTargetARN(struct["TargetARN"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateStorediSCSIVolumeOutput_keys[k], "CreateStorediSCSIVolumeOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStorediSCSIVolumeOutput
-- <p>A JSON object containing the following fields:</p>
-- @param VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- @param TargetARN [TargetARN] <p>he Amazon Resource Name (ARN) of the volume target that includes the iSCSI name that initiators can use to connect to the target.</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the configured volume.</p>
function M.CreateStorediSCSIVolumeOutput(VolumeSizeInBytes, TargetARN, VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStorediSCSIVolumeOutput")
	local t = { 
		["VolumeSizeInBytes"] = VolumeSizeInBytes,
		["TargetARN"] = TargetARN,
		["VolumeARN"] = VolumeARN,
	}
	M.AssertCreateStorediSCSIVolumeOutput(t)
	return t
end

local RetrieveTapeArchiveOutput_keys = { "TapeARN" = true, nil }

function M.AssertRetrieveTapeArchiveOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeArchiveOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(RetrieveTapeArchiveOutput_keys[k], "RetrieveTapeArchiveOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeArchiveOutput
-- <p>RetrieveTapeArchiveOutput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the retrieved virtual tape.</p>
function M.RetrieveTapeArchiveOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeArchiveOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertRetrieveTapeArchiveOutput(t)
	return t
end

local CreateSnapshotOutput_keys = { "SnapshotId" = true, "VolumeARN" = true, nil }

function M.AssertCreateSnapshotOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotOutput to be of type 'table'")
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["VolumeARN"] then M.AssertVolumeARN(struct["VolumeARN"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotOutput_keys[k], "CreateSnapshotOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotOutput
-- <p>A JSON object containing the following fields:</p>
-- @param SnapshotId [SnapshotId] <p>The snapshot ID that is used to refer to the snapshot in future operations such as describing snapshots (Amazon Elastic Compute Cloud API <code>DescribeSnapshots</code>) or creating a volume from a snapshot (<a>CreateStorediSCSIVolume</a>).</p>
-- @param VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.</p>
function M.CreateSnapshotOutput(SnapshotId, VolumeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotOutput")
	local t = { 
		["SnapshotId"] = SnapshotId,
		["VolumeARN"] = VolumeARN,
	}
	M.AssertCreateSnapshotOutput(t)
	return t
end

local RetrieveTapeRecoveryPointOutput_keys = { "TapeARN" = true, nil }

function M.AssertRetrieveTapeRecoveryPointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetrieveTapeRecoveryPointOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(RetrieveTapeRecoveryPointOutput_keys[k], "RetrieveTapeRecoveryPointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetrieveTapeRecoveryPointOutput
-- <p>RetrieveTapeRecoveryPointOutput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was retrieved.</p>
function M.RetrieveTapeRecoveryPointOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetrieveTapeRecoveryPointOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertRetrieveTapeRecoveryPointOutput(t)
	return t
end

local UpdateNFSFileShareInput_keys = { "FileShareARN" = true, "DefaultStorageClass" = true, "Squash" = true, "NFSFileShareDefaults" = true, "KMSKey" = true, "ReadOnly" = true, "ClientList" = true, "KMSEncrypted" = true, nil }

function M.AssertUpdateNFSFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNFSFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then M.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["DefaultStorageClass"] then M.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["Squash"] then M.AssertSquash(struct["Squash"]) end
	if struct["NFSFileShareDefaults"] then M.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then M.AssertKMSKey(struct["KMSKey"]) end
	if struct["ReadOnly"] then M.AssertBoolean(struct["ReadOnly"]) end
	if struct["ClientList"] then M.AssertFileShareClientList(struct["ClientList"]) end
	if struct["KMSEncrypted"] then M.AssertBoolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(UpdateNFSFileShareInput_keys[k], "UpdateNFSFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNFSFileShareInput
-- <p>UpdateNFSFileShareInput</p>
-- @param FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the file share to be updated. </p>
-- @param DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by a file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If this field is not populated, the default value S3_STANDARD is used. Optional.</p>
-- @param Squash [Squash] <p>The user mapped to anonymous user. Valid options are the following:</p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
-- @param NFSFileShareDefaults [NFSFileShareDefaults] <p>The default values for the file share. Optional.</p>
-- @param KMSKey [KMSKey] <p>The KMS key used for Amazon S3 server side encryption. This value can only be set when KmsEncrypted is true. Optional. </p>
-- @param ReadOnly [Boolean] <p>Sets the write status of a file share: "true" if the write status is read-only, and otherwise "false".</p>
-- @param ClientList [FileShareClientList] <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.</p>
-- @param KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional. </p>
-- Required parameter: FileShareARN
function M.UpdateNFSFileShareInput(FileShareARN, DefaultStorageClass, Squash, NFSFileShareDefaults, KMSKey, ReadOnly, ClientList, KMSEncrypted, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNFSFileShareInput")
	local t = { 
		["FileShareARN"] = FileShareARN,
		["DefaultStorageClass"] = DefaultStorageClass,
		["Squash"] = Squash,
		["NFSFileShareDefaults"] = NFSFileShareDefaults,
		["KMSKey"] = KMSKey,
		["ReadOnly"] = ReadOnly,
		["ClientList"] = ClientList,
		["KMSEncrypted"] = KMSEncrypted,
	}
	M.AssertUpdateNFSFileShareInput(t)
	return t
end

local CreateStorediSCSIVolumeInput_keys = { "NetworkInterfaceId" = true, "SnapshotId" = true, "GatewayARN" = true, "PreserveExistingData" = true, "TargetName" = true, "DiskId" = true, nil }

function M.AssertCreateStorediSCSIVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStorediSCSIVolumeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskId"], "Expected key DiskId to exist in table")
	assert(struct["PreserveExistingData"], "Expected key PreserveExistingData to exist in table")
	assert(struct["TargetName"], "Expected key TargetName to exist in table")
	assert(struct["NetworkInterfaceId"], "Expected key NetworkInterfaceId to exist in table")
	if struct["NetworkInterfaceId"] then M.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["PreserveExistingData"] then M.Assertboolean(struct["PreserveExistingData"]) end
	if struct["TargetName"] then M.AssertTargetName(struct["TargetName"]) end
	if struct["DiskId"] then M.AssertDiskId(struct["DiskId"]) end
	for k,_ in pairs(struct) do
		assert(CreateStorediSCSIVolumeInput_keys[k], "CreateStorediSCSIVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStorediSCSIVolumeInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>
-- @param NetworkInterfaceId [NetworkInterfaceId] <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of the network interfaces available on a gateway.</p> <p> Valid Values: A valid IP address.</p>
-- @param SnapshotId [SnapshotId] <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new stored volume. Specify this field if you want to create the iSCSI storage volume from a snapshot otherwise do not include this field. To list snapshots for your account use <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>
-- @param PreserveExistingData [boolean] <p>Specify this field as true if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.</p> <p> Valid Values: true, false</p>
-- @param TargetName [TargetName] <p>The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. For example, specifying <code>TargetName</code> as <i>myvolume</i> results in the target ARN of arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume. The target name must be unique across all volumes of a gateway.</p>
-- @param DiskId [DiskId] <p>The unique identifier for the gateway local disk that is configured as a stored volume. Use <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html">ListLocalDisks</a> to list disk IDs for a gateway.</p>
-- Required parameter: GatewayARN
-- Required parameter: DiskId
-- Required parameter: PreserveExistingData
-- Required parameter: TargetName
-- Required parameter: NetworkInterfaceId
function M.CreateStorediSCSIVolumeInput(NetworkInterfaceId, SnapshotId, GatewayARN, PreserveExistingData, TargetName, DiskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStorediSCSIVolumeInput")
	local t = { 
		["NetworkInterfaceId"] = NetworkInterfaceId,
		["SnapshotId"] = SnapshotId,
		["GatewayARN"] = GatewayARN,
		["PreserveExistingData"] = PreserveExistingData,
		["TargetName"] = TargetName,
		["DiskId"] = DiskId,
	}
	M.AssertCreateStorediSCSIVolumeInput(t)
	return t
end

local CancelArchivalOutput_keys = { "TapeARN" = true, nil }

function M.AssertCancelArchivalOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelArchivalOutput to be of type 'table'")
	if struct["TapeARN"] then M.AssertTapeARN(struct["TapeARN"]) end
	for k,_ in pairs(struct) do
		assert(CancelArchivalOutput_keys[k], "CancelArchivalOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelArchivalOutput
-- <p>CancelArchivalOutput</p>
-- @param TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which archiving was canceled.</p>
function M.CancelArchivalOutput(TapeARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelArchivalOutput")
	local t = { 
		["TapeARN"] = TapeARN,
	}
	M.AssertCancelArchivalOutput(t)
	return t
end

local CreateCachediSCSIVolumeInput_keys = { "VolumeSizeInBytes" = true, "NetworkInterfaceId" = true, "ClientToken" = true, "SnapshotId" = true, "SourceVolumeARN" = true, "GatewayARN" = true, "TargetName" = true, nil }

function M.AssertCreateCachediSCSIVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCachediSCSIVolumeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["VolumeSizeInBytes"], "Expected key VolumeSizeInBytes to exist in table")
	assert(struct["TargetName"], "Expected key TargetName to exist in table")
	assert(struct["NetworkInterfaceId"], "Expected key NetworkInterfaceId to exist in table")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	if struct["VolumeSizeInBytes"] then M.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["NetworkInterfaceId"] then M.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["SourceVolumeARN"] then M.AssertVolumeARN(struct["SourceVolumeARN"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TargetName"] then M.AssertTargetName(struct["TargetName"]) end
	for k,_ in pairs(struct) do
		assert(CreateCachediSCSIVolumeInput_keys[k], "CreateCachediSCSIVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCachediSCSIVolumeInput
--  
-- @param VolumeSizeInBytes [long]  
-- @param NetworkInterfaceId [NetworkInterfaceId]  
-- @param ClientToken [ClientToken]  
-- @param SnapshotId [SnapshotId]  
-- @param SourceVolumeARN [VolumeARN] <p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than the size of the existing volume, in bytes.</p>
-- @param GatewayARN [GatewayARN]  
-- @param TargetName [TargetName]  
-- Required parameter: GatewayARN
-- Required parameter: VolumeSizeInBytes
-- Required parameter: TargetName
-- Required parameter: NetworkInterfaceId
-- Required parameter: ClientToken
function M.CreateCachediSCSIVolumeInput(VolumeSizeInBytes, NetworkInterfaceId, ClientToken, SnapshotId, SourceVolumeARN, GatewayARN, TargetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCachediSCSIVolumeInput")
	local t = { 
		["VolumeSizeInBytes"] = VolumeSizeInBytes,
		["NetworkInterfaceId"] = NetworkInterfaceId,
		["ClientToken"] = ClientToken,
		["SnapshotId"] = SnapshotId,
		["SourceVolumeARN"] = SourceVolumeARN,
		["GatewayARN"] = GatewayARN,
		["TargetName"] = TargetName,
	}
	M.AssertCreateCachediSCSIVolumeInput(t)
	return t
end

local DescribeVTLDevicesInput_keys = { "Marker" = true, "GatewayARN" = true, "Limit" = true, "VTLDeviceARNs" = true, nil }

function M.AssertDescribeVTLDevicesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVTLDevicesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Limit"] then M.AssertPositiveIntObject(struct["Limit"]) end
	if struct["VTLDeviceARNs"] then M.AssertVTLDeviceARNs(struct["VTLDeviceARNs"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVTLDevicesInput_keys[k], "DescribeVTLDevicesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVTLDevicesInput
-- <p>DescribeVTLDevicesInput</p>
-- @param Marker [Marker] <p>An opaque string that indicates the position at which to begin describing the VTL devices.</p>
-- @param GatewayARN [GatewayARN] <p>DescribeVTLDevicesInput</p>
-- @param Limit [PositiveIntObject] <p>Specifies that the number of VTL devices described be limited to the specified number.</p>
-- @param VTLDeviceARNs [VTLDeviceARNs] <p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a VTL device.</p> <note> <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are specified, the result will contain all devices on the specified gateway.</p> </note>
-- Required parameter: GatewayARN
function M.DescribeVTLDevicesInput(Marker, GatewayARN, Limit, VTLDeviceARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVTLDevicesInput")
	local t = { 
		["Marker"] = Marker,
		["GatewayARN"] = GatewayARN,
		["Limit"] = Limit,
		["VTLDeviceARNs"] = VTLDeviceARNs,
	}
	M.AssertDescribeVTLDevicesInput(t)
	return t
end

local DescribeMaintenanceStartTimeInput_keys = { "GatewayARN" = true, nil }

function M.AssertDescribeMaintenanceStartTimeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceStartTimeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then M.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceStartTimeInput_keys[k], "DescribeMaintenanceStartTimeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceStartTimeInput
-- <p>A JSON object containing the of the gateway.</p>
-- @param GatewayARN [GatewayARN] <p>A JSON object containing the of the gateway.</p>
-- Required parameter: GatewayARN
function M.DescribeMaintenanceStartTimeInput(GatewayARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceStartTimeInput")
	local t = { 
		["GatewayARN"] = GatewayARN,
	}
	M.AssertDescribeMaintenanceStartTimeInput(t)
	return t
end

function M.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

-- <p>The ARN of the IAM role that file gateway assumes when it accesses the underlying storage. </p>
function M.Role(str)
	M.AssertRole(str)
	return str
end

function M.AssertGatewayARN(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

-- <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
function M.GatewayARN(str)
	M.AssertGatewayARN(str)
	return str
end

function M.AssertFileShareStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareStatus to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

-- <p>The status of the file share. Possible values are CREATING, UPDATING, AVAILABLE and DELETING. </p>
function M.FileShareStatus(str)
	M.AssertFileShareStatus(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-%@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-%@]*)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertRegionId(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionId to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegionId(str)
	M.AssertRegionId(str)
	return str
end

function M.AssertGatewayType(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GatewayType(str)
	M.AssertGatewayType(str)
	return str
end

function M.AssertVolumeARN(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.VolumeARN(str)
	M.AssertVolumeARN(str)
	return str
end

function M.AssertLocalConsolePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected LocalConsolePassword to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match("^[ -~]+$"), "Expected string to match pattern '^[ -~]+$'")
end

--  
function M.LocalConsolePassword(str)
	M.AssertLocalConsolePassword(str)
	return str
end

function M.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
end

-- <p>The file share path used by the NFS client to identify the mount point. </p>
function M.Path(str)
	M.AssertPath(str)
	return str
end

function M.AssertTargetName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetName to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[-%.;a-z0-9]+$"), "Expected string to match pattern '^[-%.;a-z0-9]+$'")
end

--  
function M.TargetName(str)
	M.AssertTargetName(str)
	return str
end

function M.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	M.Assertstring(str)
	return str
end

function M.AssertVTLDeviceVendor(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceVendor to be of type 'string'")
end

--  
function M.VTLDeviceVendor(str)
	M.AssertVTLDeviceVendor(str)
	return str
end

function M.AssertVolumeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.VolumeType(str)
	M.AssertVolumeType(str)
	return str
end

function M.AssertNetworkInterfaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInterfaceId to be of type 'string'")
	assert(str:match("%A(25[0-5]|2[0-4]%d|[0-1]?%d?%d)(%.(25[0-5]|2[0-4]%d|[0-1]?%d?%d)){3}%z"), "Expected string to match pattern '%A(25[0-5]|2[0-4]%d|[0-1]?%d?%d)(%.(25[0-5]|2[0-4]%d|[0-1]?%d?%d)){3}%z'")
end

--  
function M.NetworkInterfaceId(str)
	M.AssertNetworkInterfaceId(str)
	return str
end

function M.AssertGatewayState(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayState to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GatewayState(str)
	M.AssertGatewayState(str)
	return str
end

function M.AssertLastSoftwareUpdate(str)
	assert(str)
	assert(type(str) == "string", "Expected LastSoftwareUpdate to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LastSoftwareUpdate(str)
	M.AssertLastSoftwareUpdate(str)
	return str
end

function M.AssertGatewayId(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.GatewayId(str)
	M.AssertGatewayId(str)
	return str
end

function M.AssertGatewayName(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("^[ -%.0-%[%]-~]*[!-%.0-%[%]-~][ -%.0-%[%]-~]*$"), "Expected string to match pattern '^[ -%.0-%[%]-~]*[!-%.0-%[%]-~][ -%.0-%[%]-~]*$'")
end

-- <p>The name you configured for your gateway.</p>
function M.GatewayName(str)
	M.AssertGatewayName(str)
	return str
end

function M.AssertGatewayOperationalState(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayOperationalState to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GatewayOperationalState(str)
	M.AssertGatewayOperationalState(str)
	return str
end

function M.AssertTapeArchiveStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeArchiveStatus to be of type 'string'")
end

--  
function M.TapeArchiveStatus(str)
	M.AssertTapeArchiveStatus(str)
	return str
end

function M.AssertInitiator(str)
	assert(str)
	assert(type(str) == "string", "Expected Initiator to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Initiator(str)
	M.AssertInitiator(str)
	return str
end

function M.AssertKMSKey(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSKey to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

-- <p>The ARN of the KMS key used for Amazon S3 server side encryption. </p>
function M.KMSKey(str)
	M.AssertKMSKey(str)
	return str
end

function M.AssertActivationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationKey to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActivationKey(str)
	M.AssertActivationKey(str)
	return str
end

function M.AssertChapSecret(str)
	assert(str)
	assert(type(str) == "string", "Expected ChapSecret to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChapSecret(str)
	M.AssertChapSecret(str)
	return str
end

function M.AssertGatewayTimezone(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayTimezone to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.GatewayTimezone(str)
	M.AssertGatewayTimezone(str)
	return str
end

function M.AssertVTLDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceType to be of type 'string'")
end

--  
function M.VTLDeviceType(str)
	M.AssertVTLDeviceType(str)
	return str
end

function M.AssertSquash(str)
	assert(str)
	assert(type(str) == "string", "Expected Squash to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

-- <p>The user mapped to anonymous user. Valid options are the following: </p> <ul> <li> <p>"RootSquash" - Only root is mapped to anonymous user.</p> </li> <li> <p>"NoSquash" - No one is mapped to anonymous user</p> </li> <li> <p>"AllSquash" - Everyone is mapped to anonymous user.</p> </li> </ul>
function M.Squash(str)
	M.AssertSquash(str)
	return str
end

function M.AssertVolumeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeStatus to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.VolumeStatus(str)
	M.AssertVolumeStatus(str)
	return str
end

function M.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Marker(str)
	M.AssertMarker(str)
	return str
end

function M.AssertFileShareId(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

-- <p>The ID of the file share. </p>
function M.FileShareId(str)
	M.AssertFileShareId(str)
	return str
end

function M.AssertIPV4AddressCIDR(str)
	assert(str)
	assert(type(str) == "string", "Expected IPV4AddressCIDR to be of type 'string'")
	assert(str:match("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])%.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(%/([0-9]|[1-2][0-9]|3[0-2]))?$"), "Expected string to match pattern '^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])%.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(%/([0-9]|[1-2][0-9]|3[0-2]))?$'")
end

--  
function M.IPV4AddressCIDR(str)
	M.AssertIPV4AddressCIDR(str)
	return str
end

function M.AssertVTLDeviceProductIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceProductIdentifier to be of type 'string'")
end

--  
function M.VTLDeviceProductIdentifier(str)
	M.AssertVTLDeviceProductIdentifier(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertNextUpdateAvailabilityDate(str)
	assert(str)
	assert(type(str) == "string", "Expected NextUpdateAvailabilityDate to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextUpdateAvailabilityDate(str)
	M.AssertNextUpdateAvailabilityDate(str)
	return str
end

function M.AssertVTLDeviceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.VTLDeviceARN(str)
	M.AssertVTLDeviceARN(str)
	return str
end

function M.AssertFileShareARN(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

-- <p>The Amazon Resource Name (ARN) of the file share. </p>
function M.FileShareARN(str)
	M.AssertFileShareARN(str)
	return str
end

function M.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

-- <p/>
function M.StorageClass(str)
	M.AssertStorageClass(str)
	return str
end

function M.AssertTapeDriveType(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeDriveType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.TapeDriveType(str)
	M.AssertTapeDriveType(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertLocationARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationARN to be of type 'string'")
	assert(#str <= 310, "Expected string to be max 310 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

-- <p>The ARN of the backend storage used for storing file data. </p>
function M.LocationARN(str)
	M.AssertLocationARN(str)
	return str
end

function M.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.ClientToken(str)
	M.AssertClientToken(str)
	return str
end

function M.AssertDiskId(str)
	assert(str)
	assert(type(str) == "string", "Expected DiskId to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DiskId(str)
	M.AssertDiskId(str)
	return str
end

function M.AssertDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.DeviceType(str)
	M.AssertDeviceType(str)
	return str
end

function M.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
	assert(str:match("%Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})%z"), "Expected string to match pattern '%Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})%z'")
end

--  
function M.SnapshotId(str)
	M.AssertSnapshotId(str)
	return str
end

function M.AssertTargetARN(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetARN to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.TargetARN(str)
	M.AssertTargetARN(str)
	return str
end

function M.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
end

--  
function M.ResourceARN(str)
	M.AssertResourceARN(str)
	return str
end

function M.AssertBandwidthType(str)
	assert(str)
	assert(type(str) == "string", "Expected BandwidthType to be of type 'string'")
	assert(#str <= 25, "Expected string to be max 25 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.BandwidthType(str)
	M.AssertBandwidthType(str)
	return str
end

function M.AssertDiskAllocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected DiskAllocationType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.DiskAllocationType(str)
	M.AssertDiskAllocationType(str)
	return str
end

function M.AssertSnapshotDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotDescription to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SnapshotDescription(str)
	M.AssertSnapshotDescription(str)
	return str
end

function M.AssertTapeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeStatus to be of type 'string'")
end

--  
function M.TapeStatus(str)
	M.AssertTapeStatus(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertTapeBarcode(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeBarcode to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 7, "Expected string to be min 7 characters")
	assert(str:match("^[A-Z0-9]*$"), "Expected string to match pattern '^[A-Z0-9]*$'")
end

--  
function M.TapeBarcode(str)
	M.AssertTapeBarcode(str)
	return str
end

function M.AssertTapeARN(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeARN to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 50, "Expected string to be min 50 characters")
	assert(str:match("^arn:(aws|aws-cn):storagegateway:[a-z%-0-9]+:[0-9]+:tape%/[0-9A-Z]{7,16}$"), "Expected string to match pattern '^arn:(aws|aws-cn):storagegateway:[a-z%-0-9]+:[0-9]+:tape%/[0-9A-Z]{7,16}$'")
end

--  
function M.TapeARN(str)
	M.AssertTapeARN(str)
	return str
end

function M.AssertTapeBarcodePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeBarcodePrefix to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[A-Z]*$"), "Expected string to match pattern '^[A-Z]*$'")
end

--  
function M.TapeBarcodePrefix(str)
	M.AssertTapeBarcodePrefix(str)
	return str
end

function M.AssertPermissionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PermissionMode to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[0-7]{4}$"), "Expected string to match pattern '^[0-7]{4}$'")
end

--  
function M.PermissionMode(str)
	M.AssertPermissionMode(str)
	return str
end

function M.AssertIqnName(str)
	assert(str)
	assert(type(str) == "string", "Expected IqnName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[0-9a-z:.-]+"), "Expected string to match pattern '[0-9a-z:.-]+'")
end

--  
function M.IqnName(str)
	M.AssertIqnName(str)
	return str
end

function M.AssertVolumeId(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.VolumeId(str)
	M.AssertVolumeId(str)
	return str
end

function M.AssertMediumChangerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MediumChangerType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.MediumChangerType(str)
	M.AssertMediumChangerType(str)
	return str
end

function M.AssertTapeRecoveryPointStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeRecoveryPointStatus to be of type 'string'")
end

--  
function M.TapeRecoveryPointStatus(str)
	M.AssertTapeRecoveryPointStatus(str)
	return str
end

function M.AssertDoubleObject(double)
	assert(double)
	assert(type(double) == "number", "Expected DoubleObject to be of type 'number'")
end

function M.DoubleObject(double)
	M.AssertDoubleObject(double)
	return double
end

function M.Assertdouble(double)
	assert(double)
	assert(type(double) == "number", "Expected double to be of type 'number'")
end

function M.double(double)
	M.Assertdouble(double)
	return double
end

function M.AssertBandwidthUploadRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected BandwidthUploadRateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BandwidthUploadRateLimit(long)
	M.AssertBandwidthUploadRateLimit(long)
	return long
end

function M.AssertPermissionId(long)
	assert(long)
	assert(type(long) == "number", "Expected PermissionId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PermissionId(long)
	M.AssertPermissionId(long)
	return long
end

function M.AssertBandwidthDownloadRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected BandwidthDownloadRateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BandwidthDownloadRateLimit(long)
	M.AssertBandwidthDownloadRateLimit(long)
	return long
end

function M.Assertlong(long)
	assert(long)
	assert(type(long) == "number", "Expected long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.long(long)
	M.Assertlong(long)
	return long
end

function M.AssertTapeSize(long)
	assert(long)
	assert(type(long) == "number", "Expected TapeSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TapeSize(long)
	M.AssertTapeSize(long)
	return long
end

function M.AssertTapeUsage(long)
	assert(long)
	assert(type(long) == "number", "Expected TapeUsage to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TapeUsage(long)
	M.AssertTapeUsage(long)
	return long
end

function M.AssertMinuteOfHour(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinuteOfHour to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 59, "Expected integer to be max 59")
end

function M.MinuteOfHour(integer)
	M.AssertMinuteOfHour(integer)
	return integer
end

function M.AssertDayOfWeek(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DayOfWeek to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 6, "Expected integer to be max 6")
end

function M.DayOfWeek(integer)
	M.AssertDayOfWeek(integer)
	return integer
end

function M.AssertRecurrenceInHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RecurrenceInHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RecurrenceInHours(integer)
	M.AssertRecurrenceInHours(integer)
	return integer
end

function M.AssertNumTapesToCreate(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumTapesToCreate to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumTapesToCreate(integer)
	M.AssertNumTapesToCreate(integer)
	return integer
end

function M.AssertHourOfDay(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HourOfDay to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 23, "Expected integer to be max 23")
end

function M.HourOfDay(integer)
	M.AssertHourOfDay(integer)
	return integer
end

function M.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	M.Assertinteger(integer)
	return integer
end

function M.AssertPositiveIntObject(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntObject to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntObject(integer)
	M.AssertPositiveIntObject(integer)
	return integer
end

function M.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	M.Assertboolean(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AsserterrorDetails(map)
	assert(map)
	assert(type(map) == "table", "Expected errorDetails to be of type 'table'")
	for k,v in pairs(map) do
		M.Assertstring(k)
		M.Assertstring(v)
	end
end

function M.errorDetails(map)
	M.AsserterrorDetails(map)
	return map
end

function M.AssertTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Time to be of type 'string'")
end

function M.Time(timestamp)
	M.AssertTime(timestamp)
	return timestamp
end

function M.AssertCreatedDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDate to be of type 'string'")
end

function M.CreatedDate(timestamp)
	M.AssertCreatedDate(timestamp)
	return timestamp
end

function M.AssertVolumeARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeARNs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolumeARN(v)
	end
end

--  
-- List of VolumeARN objects
function M.VolumeARNs(list)
	M.AssertVolumeARNs(list)
	return list
end

function M.AssertInitiators(list)
	assert(list)
	assert(type(list) == "table", "Expected Initiators to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInitiator(v)
	end
end

--  
-- List of Initiator objects
function M.Initiators(list)
	M.AssertInitiators(list)
	return list
end

function M.AssertChapCredentials(list)
	assert(list)
	assert(type(list) == "table", "Expected ChapCredentials to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChapInfo(v)
	end
end

--  
-- List of ChapInfo objects
function M.ChapCredentials(list)
	M.AssertChapCredentials(list)
	return list
end

function M.AssertGateways(list)
	assert(list)
	assert(type(list) == "table", "Expected Gateways to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGatewayInfo(v)
	end
end

--  
-- List of GatewayInfo objects
function M.Gateways(list)
	M.AssertGateways(list)
	return list
end

function M.AssertVolumeInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeInfos to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolumeInfo(v)
	end
end

--  
-- List of VolumeInfo objects
function M.VolumeInfos(list)
	M.AssertVolumeInfos(list)
	return list
end

function M.AssertTapeInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeInfos to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTapeInfo(v)
	end
end

-- <p>An array of <a>TapeInfo</a> objects, where each object describes an a single tape. If there not tapes in the tape library or VTS, then the <code>TapeInfos</code> is an empty array.</p>
-- List of TapeInfo objects
function M.TapeInfos(list)
	M.AssertTapeInfos(list)
	return list
end

function M.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	M.AssertTags(list)
	return list
end

function M.AssertVTLDeviceARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected VTLDeviceARNs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVTLDeviceARN(v)
	end
end

--  
-- List of VTLDeviceARN objects
function M.VTLDeviceARNs(list)
	M.AssertVTLDeviceARNs(list)
	return list
end

function M.AssertFileShareARNList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareARNList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertFileShareARN(v)
	end
end

--  
-- List of FileShareARN objects
function M.FileShareARNList(list)
	M.AssertFileShareARNList(list)
	return list
end

function M.AssertCachediSCSIVolumes(list)
	assert(list)
	assert(type(list) == "table", "Expected CachediSCSIVolumes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCachediSCSIVolume(v)
	end
end

--  
-- List of CachediSCSIVolume objects
function M.CachediSCSIVolumes(list)
	M.AssertCachediSCSIVolumes(list)
	return list
end

function M.AssertNFSFileShareInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected NFSFileShareInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNFSFileShareInfo(v)
	end
end

--  
-- List of NFSFileShareInfo objects
function M.NFSFileShareInfoList(list)
	M.AssertNFSFileShareInfoList(list)
	return list
end

function M.AssertTapeArchives(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeArchives to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTapeArchive(v)
	end
end

--  
-- List of TapeArchive objects
function M.TapeArchives(list)
	M.AssertTapeArchives(list)
	return list
end

function M.AssertVolumeRecoveryPointInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeRecoveryPointInfos to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolumeRecoveryPointInfo(v)
	end
end

--  
-- List of VolumeRecoveryPointInfo objects
function M.VolumeRecoveryPointInfos(list)
	M.AssertVolumeRecoveryPointInfos(list)
	return list
end

function M.AssertFileShareInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFileShareInfo(v)
	end
end

--  
-- List of FileShareInfo objects
function M.FileShareInfoList(list)
	M.AssertFileShareInfoList(list)
	return list
end

function M.AssertGatewayNetworkInterfaces(list)
	assert(list)
	assert(type(list) == "table", "Expected GatewayNetworkInterfaces to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNetworkInterface(v)
	end
end

--  
-- List of NetworkInterface objects
function M.GatewayNetworkInterfaces(list)
	M.AssertGatewayNetworkInterfaces(list)
	return list
end

function M.AssertFileShareClientList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareClientList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertIPV4AddressCIDR(v)
	end
end

-- <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>
-- List of IPV4AddressCIDR objects
function M.FileShareClientList(list)
	M.AssertFileShareClientList(list)
	return list
end

function M.AssertDisks(list)
	assert(list)
	assert(type(list) == "table", "Expected Disks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDisk(v)
	end
end

--  
-- List of Disk objects
function M.Disks(list)
	M.AssertDisks(list)
	return list
end

function M.AssertVTLDevices(list)
	assert(list)
	assert(type(list) == "table", "Expected VTLDevices to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVTLDevice(v)
	end
end

--  
-- List of VTLDevice objects
function M.VTLDevices(list)
	M.AssertVTLDevices(list)
	return list
end

function M.AssertTapeARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeARNs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTapeARN(v)
	end
end

-- <p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>
-- List of TapeARN objects
function M.TapeARNs(list)
	M.AssertTapeARNs(list)
	return list
end

function M.AssertTapes(list)
	assert(list)
	assert(type(list) == "table", "Expected Tapes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTape(v)
	end
end

--  
-- List of Tape objects
function M.Tapes(list)
	M.AssertTapes(list)
	return list
end

function M.AssertStorediSCSIVolumes(list)
	assert(list)
	assert(type(list) == "table", "Expected StorediSCSIVolumes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStorediSCSIVolume(v)
	end
end

--  
-- List of StorediSCSIVolume objects
function M.StorediSCSIVolumes(list)
	M.AssertStorediSCSIVolumes(list)
	return list
end

function M.AssertTapeRecoveryPointInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected TapeRecoveryPointInfos to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTapeRecoveryPointInfo(v)
	end
end

--  
-- List of TapeRecoveryPointInfo objects
function M.TapeRecoveryPointInfos(list)
	M.AssertTapeRecoveryPointInfos(list)
	return list
end

function M.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	M.AssertTagKeys(list)
	return list
end

function M.AssertDiskIds(list)
	assert(list)
	assert(type(list) == "table", "Expected DiskIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDiskId(v)
	end
end

--  
-- List of DiskId objects
function M.DiskIds(list)
	M.AssertDiskIds(list)
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
