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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return ResetCacheInput structure as a key-value pair table
function M.ResetCacheInput(args)
	assert(args, "You must provide an argument table when creating ResetCacheInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertResetCacheInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetSMBGuestPasswordOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertSetSMBGuestPasswordOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSMBGuestPasswordOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSMBGuestPasswordOutput[k], "SetSMBGuestPasswordOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSMBGuestPasswordOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return SetSMBGuestPasswordOutput structure as a key-value pair table
function M.SetSMBGuestPasswordOutput(args)
	assert(args, "You must provide an argument table when creating SetSMBGuestPasswordOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertSetSMBGuestPasswordOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return ShutdownGatewayOutput structure as a key-value pair table
function M.ShutdownGatewayOutput(args)
	assert(args, "You must provide an argument table when creating ShutdownGatewayOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertShutdownGatewayOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorediSCSIVolume = { ["VolumeSizeInBytes"] = true, ["VolumeProgress"] = true, ["VolumeDiskId"] = true, ["PreservedExistingData"] = true, ["VolumeiSCSIAttributes"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["VolumeUsedInBytes"] = true, ["SourceSnapshotId"] = true, ["KMSKey"] = true, ["VolumeARN"] = true, ["CreatedDate"] = true, ["VolumeStatus"] = true, nil }

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
	if struct["VolumeUsedInBytes"] then asserts.AssertVolumeUsedInBytes(struct["VolumeUsedInBytes"]) end
	if struct["SourceSnapshotId"] then asserts.AssertSnapshotId(struct["SourceSnapshotId"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["VolumeStatus"] then asserts.AssertVolumeStatus(struct["VolumeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorediSCSIVolume[k], "StorediSCSIVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorediSCSIVolume
-- <p>Describes an iSCSI stored volume.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- * VolumeProgress [DoubleObject] <p>Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the stored volume is not restoring or bootstrapping.</p>
-- * VolumeDiskId [DiskId] <p>The ID of the local disk that was specified in the <a>CreateStorediSCSIVolume</a> operation.</p>
-- * PreservedExistingData [boolean] <p>Indicates if when the stored volume was created, existing data on the underlying local disk was preserved.</p> <p> Valid Values: true, false</p>
-- * VolumeiSCSIAttributes [VolumeiSCSIAttributes] <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI attributes for one stored volume.</p>
-- * VolumeType [VolumeType] <p>One of the VolumeType enumeration values describing the type of the volume.</p>
-- * VolumeId [VolumeId] <p>The unique identifier of the volume, e.g. vol-AE4B946D.</p>
-- * VolumeUsedInBytes [VolumeUsedInBytes] <p>The size of the data stored on the volume in bytes. </p> <note> <p>This value is not available for volumes created prior to May 13, 2015, until you store data on the volume.</p> </note>
-- * SourceSnapshotId [SnapshotId] <p>If the stored volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
-- * KMSKey [KMSKey] 
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume.</p>
-- * CreatedDate [CreatedDate] <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.</p>
-- * VolumeStatus [VolumeStatus] <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
-- @return StorediSCSIVolume structure as a key-value pair table
function M.StorediSCSIVolume(args)
	assert(args, "You must provide an argument table when creating StorediSCSIVolume")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInBytes"] = args["VolumeSizeInBytes"],
		["VolumeProgress"] = args["VolumeProgress"],
		["VolumeDiskId"] = args["VolumeDiskId"],
		["PreservedExistingData"] = args["PreservedExistingData"],
		["VolumeiSCSIAttributes"] = args["VolumeiSCSIAttributes"],
		["VolumeType"] = args["VolumeType"],
		["VolumeId"] = args["VolumeId"],
		["VolumeUsedInBytes"] = args["VolumeUsedInBytes"],
		["SourceSnapshotId"] = args["SourceSnapshotId"],
		["KMSKey"] = args["KMSKey"],
		["VolumeARN"] = args["VolumeARN"],
		["CreatedDate"] = args["CreatedDate"],
		["VolumeStatus"] = args["VolumeStatus"],
	}
	asserts.AssertStorediSCSIVolume(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which retrieval was canceled.</p>
-- @return CancelRetrievalOutput structure as a key-value pair table
function M.CancelRetrievalOutput(args)
	assert(args, "You must provide an argument table when creating CancelRetrievalOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertCancelRetrievalOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is associated with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>
-- Required key: GatewayARN
-- Required key: TapeARN
-- @return DeleteTapeInput structure as a key-value pair table
function M.DeleteTapeInput(args)
	assert(args, "You must provide an argument table when creating DeleteTapeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertDeleteTapeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyWhenUploadedInput = { ["FileShareARN"] = true, nil }

function asserts.AssertNotifyWhenUploadedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWhenUploadedInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyWhenUploadedInput[k], "NotifyWhenUploadedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWhenUploadedInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- Required key: FileShareARN
-- @return NotifyWhenUploadedInput structure as a key-value pair table
function M.NotifyWhenUploadedInput(args)
	assert(args, "You must provide an argument table when creating NotifyWhenUploadedInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
	}
	asserts.AssertNotifyWhenUploadedInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which to begin describing the virtual tape recovery points.</p>
-- * GatewayARN [GatewayARN] 
-- * Limit [PositiveIntObject] <p>Specifies that the number of virtual tape recovery points that are described be limited to the specified number.</p>
-- Required key: GatewayARN
-- @return DescribeTapeRecoveryPointsInput structure as a key-value pair table
function M.DescribeTapeRecoveryPointsInput(args)
	assert(args, "You must provide an argument table when creating DescribeTapeRecoveryPointsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeTapeRecoveryPointsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CachediSCSIVolume = { ["VolumeSizeInBytes"] = true, ["VolumeProgress"] = true, ["VolumeiSCSIAttributes"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["VolumeUsedInBytes"] = true, ["SourceSnapshotId"] = true, ["KMSKey"] = true, ["VolumeARN"] = true, ["CreatedDate"] = true, ["VolumeStatus"] = true, nil }

function asserts.AssertCachediSCSIVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CachediSCSIVolume to be of type 'table'")
	if struct["VolumeSizeInBytes"] then asserts.Assertlong(struct["VolumeSizeInBytes"]) end
	if struct["VolumeProgress"] then asserts.AssertDoubleObject(struct["VolumeProgress"]) end
	if struct["VolumeiSCSIAttributes"] then asserts.AssertVolumeiSCSIAttributes(struct["VolumeiSCSIAttributes"]) end
	if struct["VolumeType"] then asserts.AssertVolumeType(struct["VolumeType"]) end
	if struct["VolumeId"] then asserts.AssertVolumeId(struct["VolumeId"]) end
	if struct["VolumeUsedInBytes"] then asserts.AssertVolumeUsedInBytes(struct["VolumeUsedInBytes"]) end
	if struct["SourceSnapshotId"] then asserts.AssertSnapshotId(struct["SourceSnapshotId"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["VolumeARN"] then asserts.AssertVolumeARN(struct["VolumeARN"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["VolumeStatus"] then asserts.AssertVolumeStatus(struct["VolumeStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CachediSCSIVolume[k], "CachediSCSIVolume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CachediSCSIVolume
-- <p>Describes an iSCSI cached volume.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInBytes [long] <p>The size, in bytes, of the volume capacity.</p>
-- * VolumeProgress [DoubleObject] <p>Represents the percentage complete if the volume is restoring or bootstrapping that represents the percent of data transferred. This field does not appear in the response if the cached volume is not restoring or bootstrapping.</p>
-- * VolumeiSCSIAttributes [VolumeiSCSIAttributes] <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI attributes for one stored volume.</p>
-- * VolumeType [VolumeType] <p>One of the VolumeType enumeration values that describes the type of the volume.</p>
-- * VolumeId [VolumeId] <p>The unique identifier of the volume, e.g. vol-AE4B946D.</p>
-- * VolumeUsedInBytes [VolumeUsedInBytes] <p>The size of the data stored on the volume in bytes.</p> <note> <p>This value is not available for volumes created prior to May 13, 2015, until you store data on the volume.</p> </note>
-- * SourceSnapshotId [SnapshotId] <p>If the cached volume was created from a snapshot, this field contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not included.</p>
-- * KMSKey [KMSKey] 
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume.</p>
-- * CreatedDate [CreatedDate] <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this time stamp.</p>
-- * VolumeStatus [VolumeStatus] <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
-- @return CachediSCSIVolume structure as a key-value pair table
function M.CachediSCSIVolume(args)
	assert(args, "You must provide an argument table when creating CachediSCSIVolume")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInBytes"] = args["VolumeSizeInBytes"],
		["VolumeProgress"] = args["VolumeProgress"],
		["VolumeiSCSIAttributes"] = args["VolumeiSCSIAttributes"],
		["VolumeType"] = args["VolumeType"],
		["VolumeId"] = args["VolumeId"],
		["VolumeUsedInBytes"] = args["VolumeUsedInBytes"],
		["SourceSnapshotId"] = args["SourceSnapshotId"],
		["KMSKey"] = args["KMSKey"],
		["VolumeARN"] = args["VolumeARN"],
		["CreatedDate"] = args["CreatedDate"],
		["VolumeStatus"] = args["VolumeStatus"],
	}
	asserts.AssertCachediSCSIVolume(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * BandwidthType [BandwidthType] <p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to delete.</p> <p>Valid Values: <code>Upload</code>, <code>Download</code>, <code>All</code>.</p>
-- Required key: GatewayARN
-- Required key: BandwidthType
-- @return DeleteBandwidthRateLimitInput structure as a key-value pair table
function M.DeleteBandwidthRateLimitInput(args)
	assert(args, "You must provide an argument table when creating DeleteBandwidthRateLimitInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["BandwidthType"] = args["BandwidthType"],
	}
	asserts.AssertDeleteBandwidthRateLimitInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTapesInput = { ["TapeBarcodePrefix"] = true, ["NumTapesToCreate"] = true, ["KMSKey"] = true, ["TapeSizeInBytes"] = true, ["ClientToken"] = true, ["GatewayARN"] = true, ["KMSEncrypted"] = true, nil }

function asserts.AssertCreateTapesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapesInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeSizeInBytes"], "Expected key TapeSizeInBytes to exist in table")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	assert(struct["NumTapesToCreate"], "Expected key NumTapesToCreate to exist in table")
	assert(struct["TapeBarcodePrefix"], "Expected key TapeBarcodePrefix to exist in table")
	if struct["TapeBarcodePrefix"] then asserts.AssertTapeBarcodePrefix(struct["TapeBarcodePrefix"]) end
	if struct["NumTapesToCreate"] then asserts.AssertNumTapesToCreate(struct["NumTapesToCreate"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTapesInput[k], "CreateTapesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapesInput
-- <p>CreateTapesInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeBarcodePrefix [TapeBarcodePrefix] <p>A prefix that you append to the barcode of the virtual tape you are creating. This prefix makes the barcode unique.</p> <note> <p>The prefix must be 1 to 4 characters in length and must be one of the uppercase letters from A to Z.</p> </note>
-- * NumTapesToCreate [NumTapesToCreate] <p>The number of virtual tapes that you want to create.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tapes that you want to create.</p> <note> <p>The size must be aligned by gigabyte (1024*1024*1024 byte).</p> </note>
-- * ClientToken [ClientToken] <p>A unique identifier that you use to retry a request. If you retry a request, use the same <code>ClientToken</code> you specified in the initial request.</p> <note> <p>Using the same <code>ClientToken</code> prevents creating the tape multiple times.</p> </note>
-- * GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tapes with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- Required key: GatewayARN
-- Required key: TapeSizeInBytes
-- Required key: ClientToken
-- Required key: NumTapesToCreate
-- Required key: TapeBarcodePrefix
-- @return CreateTapesInput structure as a key-value pair table
function M.CreateTapesInput(args)
	assert(args, "You must provide an argument table when creating CreateTapesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeBarcodePrefix"] = args["TapeBarcodePrefix"],
		["NumTapesToCreate"] = args["NumTapesToCreate"],
		["KMSKey"] = args["KMSKey"],
		["TapeSizeInBytes"] = args["TapeSizeInBytes"],
		["ClientToken"] = args["ClientToken"],
		["GatewayARN"] = args["GatewayARN"],
		["KMSEncrypted"] = args["KMSEncrypted"],
	}
	asserts.AssertCreateTapesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSMBFileShareInput = { ["Authentication"] = true, ["ValidUserList"] = true, ["DefaultStorageClass"] = true, ["ReadOnly"] = true, ["GuessMIMETypeEnabled"] = true, ["InvalidUserList"] = true, ["KMSKey"] = true, ["Role"] = true, ["LocationARN"] = true, ["ObjectACL"] = true, ["ClientToken"] = true, ["GatewayARN"] = true, ["KMSEncrypted"] = true, ["RequesterPays"] = true, nil }

function asserts.AssertCreateSMBFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSMBFileShareInput to be of type 'table'")
	assert(struct["ClientToken"], "Expected key ClientToken to exist in table")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["LocationARN"], "Expected key LocationARN to exist in table")
	if struct["Authentication"] then asserts.AssertAuthentication(struct["Authentication"]) end
	if struct["ValidUserList"] then asserts.AssertFileShareUserList(struct["ValidUserList"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["GuessMIMETypeEnabled"] then asserts.AssertBoolean(struct["GuessMIMETypeEnabled"]) end
	if struct["InvalidUserList"] then asserts.AssertFileShareUserList(struct["InvalidUserList"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then asserts.AssertLocationARN(struct["LocationARN"]) end
	if struct["ObjectACL"] then asserts.AssertObjectACL(struct["ObjectACL"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	if struct["RequesterPays"] then asserts.AssertBoolean(struct["RequesterPays"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSMBFileShareInput[k], "CreateSMBFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSMBFileShareInput
-- <p>CreateSMBFileShareInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Authentication [Authentication] <p>The authentication method that users use to access the file share.</p> <p>Valid values are <code>ActiveDirectory</code> or <code>GuestAccess</code>. The default is <code>ActiveDirectory</code>.</p>
-- * ValidUserList [FileShareUserList] <p>A list of users or groups in the Active Directory that are allowed to access the file share. A group must be prefixed with the @ character. For example <code>@group1</code>. Can only be set if Authentication is set to <code>ActiveDirectory</code>.</p>
-- * DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are <code>S3_STANDARD</code>, <code>S3_STANDARD_IA</code>, or <code>S3_ONEZONE_IA</code>. If this field is not populated, the default value <code>S3_STANDARD</code> is used. Optional.</p>
-- * ReadOnly [Boolean] <p>A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.</p>
-- * GuessMIMETypeEnabled [Boolean] <p>A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.</p>
-- * InvalidUserList [FileShareUserList] <p>A list of users or groups in the Active Directory that are not allowed to access the file share. A group must be prefixed with the @ character. For example <code>@group1</code>. Can only be set if Authentication is set to <code>ActiveDirectory</code>.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * Role [Role] <p>The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage. </p>
-- * LocationARN [LocationARN] <p>The ARN of the backed storage used for storing file data. </p>
-- * ObjectACL [ObjectACL] <p>A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>
-- * ClientToken [ClientToken] <p>A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.</p>
-- * GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- * RequesterPays [Boolean] <p>A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is <code>private</code>.</p>
-- Required key: ClientToken
-- Required key: GatewayARN
-- Required key: Role
-- Required key: LocationARN
-- @return CreateSMBFileShareInput structure as a key-value pair table
function M.CreateSMBFileShareInput(args)
	assert(args, "You must provide an argument table when creating CreateSMBFileShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Authentication"] = args["Authentication"],
		["ValidUserList"] = args["ValidUserList"],
		["DefaultStorageClass"] = args["DefaultStorageClass"],
		["ReadOnly"] = args["ReadOnly"],
		["GuessMIMETypeEnabled"] = args["GuessMIMETypeEnabled"],
		["InvalidUserList"] = args["InvalidUserList"],
		["KMSKey"] = args["KMSKey"],
		["Role"] = args["Role"],
		["LocationARN"] = args["LocationARN"],
		["ObjectACL"] = args["ObjectACL"],
		["ClientToken"] = args["ClientToken"],
		["GatewayARN"] = args["GatewayARN"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["RequesterPays"] = args["RequesterPays"],
	}
	asserts.AssertCreateSMBFileShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>
-- * TagKeys [TagKeys] <p>The keys of the tags you want to remove from the specified resource. A tag is composed of a key/value pair.</p>
-- Required key: ResourceARN
-- Required key: TagKeys
-- @return RemoveTagsFromResourceInput structure as a key-value pair table
function M.RemoveTagsFromResourceInput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceARN"] = args["ResourceARN"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsFromResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFileShareInput = { ["FileShareARN"] = true, ["ForceDelete"] = true, nil }

function asserts.AssertDeleteFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["ForceDelete"] then asserts.Assertboolean(struct["ForceDelete"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFileShareInput[k], "DeleteFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileShareInput
-- <p>DeleteFileShareInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the file share to be deleted. </p>
-- * ForceDelete [boolean] <p>If this value is set to true, the operation deletes a file share immediately and aborts all data uploads to AWS. Otherwise, the file share is not deleted until all data is uploaded to AWS. This process aborts the data upload process, and the file share enters the FORCE_DELETING status.</p>
-- Required key: FileShareARN
-- @return DeleteFileShareInput structure as a key-value pair table
function M.DeleteFileShareInput(args)
	assert(args, "You must provide an argument table when creating DeleteFileShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["ForceDelete"] = args["ForceDelete"],
	}
	asserts.AssertDeleteFileShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * DiskIds [DiskIds] <p>An array of strings that identify disks that are to be configured as working storage. Each string have a minimum length of 1 and maximum length of 300. You can get the disk IDs from the <a>ListLocalDisks</a> API.</p>
-- Required key: GatewayARN
-- Required key: DiskIds
-- @return AddWorkingStorageInput structure as a key-value pair table
function M.AddWorkingStorageInput(args)
	assert(args, "You must provide an argument table when creating AddWorkingStorageInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["DiskIds"] = args["DiskIds"],
	}
	asserts.AssertAddWorkingStorageInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>If the request includes <code>Marker</code>, the response returns that value in this field. </p>
-- * FileShareInfoList [FileShareInfoList] <p>An array of information about the file gateway's file shares. </p>
-- * NextMarker [Marker] <p>If a value is present, there are more file shares to return. In a subsequent request, use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set of file shares. </p>
-- @return ListFileSharesOutput structure as a key-value pair table
function M.ListFileSharesOutput(args)
	assert(args, "You must provide an argument table when creating ListFileSharesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FileShareInfoList"] = args["FileShareInfoList"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListFileSharesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the volume.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- * SecretToAuthenticateInitiator [ChapSecret] <p>The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p>
-- * InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- * SecretToAuthenticateTarget [ChapSecret] <p>The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p>
-- @return ChapInfo structure as a key-value pair table
function M.ChapInfo(args)
	assert(args, "You must provide an argument table when creating ChapInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["SecretToAuthenticateInitiator"] = args["SecretToAuthenticateInitiator"],
		["InitiatorName"] = args["InitiatorName"],
		["SecretToAuthenticateTarget"] = args["SecretToAuthenticateTarget"],
	}
	asserts.AssertChapInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JoinDomainOutput = { ["GatewayARN"] = true, nil }

function asserts.AssertJoinDomainOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JoinDomainOutput to be of type 'table'")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.JoinDomainOutput[k], "JoinDomainOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JoinDomainOutput
-- <p>JoinDomainOutput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) of the gateway that joined the domain.</p>
-- @return JoinDomainOutput structure as a key-value pair table
function M.JoinDomainOutput(args)
	assert(args, "You must provide an argument table when creating JoinDomainOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertJoinDomainOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceType [DeviceType] <p>The type of medium changer you want to select.</p> <p> Valid Values: "STK-L700", "AWS-Gateway-VTL"</p>
-- * VTLDeviceARN [VTLDeviceARN] <p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>
-- Required key: VTLDeviceARN
-- Required key: DeviceType
-- @return UpdateVTLDeviceTypeInput structure as a key-value pair table
function M.UpdateVTLDeviceTypeInput(args)
	assert(args, "You must provide an argument table when creating UpdateVTLDeviceTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceType"] = args["DeviceType"],
		["VTLDeviceARN"] = args["VTLDeviceARN"],
	}
	asserts.AssertUpdateVTLDeviceTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return ListVolumeRecoveryPointsInput structure as a key-value pair table
function M.ListVolumeRecoveryPointsInput(args)
	assert(args, "You must provide an argument table when creating ListVolumeRecoveryPointsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertListVolumeRecoveryPointsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker indicates which page of results to retrieve. </p> <p>If not specified, the first page of results is retrieved.</p>
-- * GatewayARN [GatewayARN] 
-- * TapeARNs [TapeARNs] <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe. If this parameter is not specified, Tape gateway returns a description of all virtual tapes associated with the specified gateway.</p>
-- * Limit [PositiveIntObject] <p>Specifies that the number of virtual tapes described be limited to the specified number.</p> <note> <p>Amazon Web Services may impose its own limit, if this field is not set.</p> </note>
-- Required key: GatewayARN
-- @return DescribeTapesInput structure as a key-value pair table
function M.DescribeTapesInput(args)
	assert(args, "You must provide an argument table when creating DescribeTapesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["TapeARNs"] = args["TapeARNs"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeTapesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JoinDomainInput = { ["UserName"] = true, ["GatewayARN"] = true, ["Password"] = true, ["DomainName"] = true, nil }

function asserts.AssertJoinDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JoinDomainInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["UserName"] then asserts.AssertDomainUserName(struct["UserName"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Password"] then asserts.AssertDomainUserPassword(struct["Password"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.JoinDomainInput[k], "JoinDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JoinDomainInput
-- <p>JoinDomainInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [DomainUserName] <p>Sets the user name of user who has permission to add the gateway to the Active Directory domain.</p>
-- * GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) of the file gateway you want to add to the Active Directory domain. </p>
-- * Password [DomainUserPassword] <p>Sets the password of the user who has permission to add the gateway to the Active Directory domain.</p>
-- * DomainName [DomainName] <p>The name of the domain that you want the gateway to join.</p>
-- Required key: GatewayARN
-- Required key: DomainName
-- Required key: UserName
-- Required key: Password
-- @return JoinDomainInput structure as a key-value pair table
function M.JoinDomainInput(args)
	assert(args, "You must provide an argument table when creating JoinDomainInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["GatewayARN"] = args["GatewayARN"],
		["Password"] = args["Password"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertJoinDomainInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * AverageUploadRateLimitInBitsPerSec [BandwidthUploadRateLimit] <p>The average upload bandwidth rate limit in bits per second.</p>
-- * AverageDownloadRateLimitInBitsPerSec [BandwidthDownloadRateLimit] <p>The average download bandwidth rate limit in bits per second.</p>
-- Required key: GatewayARN
-- @return UpdateBandwidthRateLimitInput structure as a key-value pair table
function M.UpdateBandwidthRateLimitInput(args)
	assert(args, "You must provide an argument table when creating UpdateBandwidthRateLimitInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["AverageUploadRateLimitInBitsPerSec"] = args["AverageUploadRateLimitInBitsPerSec"],
		["AverageDownloadRateLimitInBitsPerSec"] = args["AverageDownloadRateLimitInBitsPerSec"],
	}
	asserts.AssertUpdateBandwidthRateLimitInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeStatus [TapeRecoveryPointStatus] 
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
-- * TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tapes to recover.</p>
-- * TapeRecoveryPointTime [Time] <p>The time when the point-in-time view of the virtual tape was replicated for later recovery.</p> <p>The default time stamp format of the tape recovery point time is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
-- @return TapeRecoveryPointInfo structure as a key-value pair table
function M.TapeRecoveryPointInfo(args)
	assert(args, "You must provide an argument table when creating TapeRecoveryPointInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeStatus"] = args["TapeStatus"],
		["TapeARN"] = args["TapeARN"],
		["TapeSizeInBytes"] = args["TapeSizeInBytes"],
		["TapeRecoveryPointTime"] = args["TapeRecoveryPointTime"],
	}
	asserts.AssertTapeRecoveryPointInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return ListLocalDisksInput structure as a key-value pair table
function M.ListLocalDisksInput(args)
	assert(args, "You must provide an argument table when creating ListLocalDisksInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertListLocalDisksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CachediSCSIVolumes [CachediSCSIVolumes] <p>An array of objects where each object contains metadata about one cached volume.</p>
-- @return DescribeCachediSCSIVolumesOutput structure as a key-value pair table
function M.DescribeCachediSCSIVolumesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeCachediSCSIVolumesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CachediSCSIVolumes"] = args["CachediSCSIVolumes"],
	}
	asserts.AssertDescribeCachediSCSIVolumesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the recovery point.</p>
-- Required key: TapeARN
-- Required key: GatewayARN
-- @return RetrieveTapeRecoveryPointInput structure as a key-value pair table
function M.RetrieveTapeRecoveryPointInput(args)
	assert(args, "You must provide an argument table when creating RetrieveTapeRecoveryPointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertRetrieveTapeRecoveryPointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended.</p> <p>Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.</p>
-- * GatewayARN [GatewayARN] 
-- * TapeRecoveryPointInfos [TapeRecoveryPointInfos] <p>An array of TapeRecoveryPointInfos that are available for the specified gateway.</p>
-- @return DescribeTapeRecoveryPointsOutput structure as a key-value pair table
function M.DescribeTapeRecoveryPointsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTapeRecoveryPointsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["TapeRecoveryPointInfos"] = args["TapeRecoveryPointInfos"],
	}
	asserts.AssertDescribeTapeRecoveryPointsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayTimezone [GatewayTimezone] 
-- * GatewayARN [GatewayARN] 
-- * GatewayName [GatewayName] 
-- Required key: GatewayARN
-- @return UpdateGatewayInformationInput structure as a key-value pair table
function M.UpdateGatewayInformationInput(args)
	assert(args, "You must provide an argument table when creating UpdateGatewayInformationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayTimezone"] = args["GatewayTimezone"],
		["GatewayARN"] = args["GatewayARN"],
		["GatewayName"] = args["GatewayName"],
	}
	asserts.AssertUpdateGatewayInformationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return UpdateGatewaySoftwareNowInput structure as a key-value pair table
function M.UpdateGatewaySoftwareNowInput(args)
	assert(args, "You must provide an argument table when creating UpdateGatewaySoftwareNowInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertUpdateGatewaySoftwareNowInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes for the gateway.</p>
-- Required key: VolumeARN
-- @return ListVolumeInitiatorsInput structure as a key-value pair table
function M.ListVolumeInitiatorsInput(args)
	assert(args, "You must provide an argument table when creating ListVolumeInitiatorsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertListVolumeInitiatorsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNFSFileShareInput = { ["DefaultStorageClass"] = true, ["ClientList"] = true, ["Squash"] = true, ["GuessMIMETypeEnabled"] = true, ["NFSFileShareDefaults"] = true, ["KMSKey"] = true, ["Role"] = true, ["LocationARN"] = true, ["ObjectACL"] = true, ["ClientToken"] = true, ["GatewayARN"] = true, ["ReadOnly"] = true, ["KMSEncrypted"] = true, ["RequesterPays"] = true, nil }

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
	if struct["GuessMIMETypeEnabled"] then asserts.AssertBoolean(struct["GuessMIMETypeEnabled"]) end
	if struct["NFSFileShareDefaults"] then asserts.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then asserts.AssertLocationARN(struct["LocationARN"]) end
	if struct["ObjectACL"] then asserts.AssertObjectACL(struct["ObjectACL"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	if struct["RequesterPays"] then asserts.AssertBoolean(struct["RequesterPays"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNFSFileShareInput[k], "CreateNFSFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNFSFileShareInput
-- <p>CreateNFSFileShareInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are <code>S3_STANDARD</code>, <code>S3_STANDARD_IA</code>, or <code>S3_ONEZONE_IA</code>. If this field is not populated, the default value <code>S3_STANDARD</code> is used. Optional.</p>
-- * ClientList [FileShareClientList] <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. </p>
-- * Squash [Squash] <p>Maps a user to anonymous user. Valid options are the following: </p> <ul> <li> <p> <code>RootSquash</code> - Only root is mapped to anonymous user.</p> </li> <li> <p> <code>NoSquash</code> - No one is mapped to anonymous user</p> </li> <li> <p> <code>AllSquash</code> - Everyone is mapped to anonymous user.</p> </li> </ul>
-- * GuessMIMETypeEnabled [Boolean] <p>A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.</p>
-- * NFSFileShareDefaults [NFSFileShareDefaults] <p>File share default values. Optional.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * Role [Role] <p>The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage. </p>
-- * LocationARN [LocationARN] <p>The ARN of the backed storage used for storing file data. </p>
-- * ObjectACL [ObjectACL] <p>A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>
-- * ClientToken [ClientToken] <p>A unique string value that you supply that is used by file gateway to ensure idempotent file share creation.</p>
-- * GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the file gateway on which you want to create a file share.</p>
-- * ReadOnly [Boolean] <p>A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- * RequesterPays [Boolean] <p>A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is <code>private</code>.</p>
-- Required key: ClientToken
-- Required key: GatewayARN
-- Required key: Role
-- Required key: LocationARN
-- @return CreateNFSFileShareInput structure as a key-value pair table
function M.CreateNFSFileShareInput(args)
	assert(args, "You must provide an argument table when creating CreateNFSFileShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultStorageClass"] = args["DefaultStorageClass"],
		["ClientList"] = args["ClientList"],
		["Squash"] = args["Squash"],
		["GuessMIMETypeEnabled"] = args["GuessMIMETypeEnabled"],
		["NFSFileShareDefaults"] = args["NFSFileShareDefaults"],
		["KMSKey"] = args["KMSKey"],
		["Role"] = args["Role"],
		["LocationARN"] = args["LocationARN"],
		["ObjectACL"] = args["ObjectACL"],
		["ClientToken"] = args["ClientToken"],
		["GatewayARN"] = args["GatewayARN"],
		["ReadOnly"] = args["ReadOnly"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["RequesterPays"] = args["RequesterPays"],
	}
	asserts.AssertCreateNFSFileShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) of the disabled gateway.</p>
-- @return DisableGatewayOutput structure as a key-value pair table
function M.DisableGatewayOutput(args)
	assert(args, "You must provide an argument table when creating DisableGatewayOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDisableGatewayOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for specified VolumeARN.</p>
-- Required key: TargetARN
-- @return DescribeChapCredentialsInput structure as a key-value pair table
function M.DescribeChapCredentialsInput(args)
	assert(args, "You must provide an argument table when creating DescribeChapCredentialsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
	}
	asserts.AssertDescribeChapCredentialsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] 
-- Required key: VolumeARN
-- @return DeleteSnapshotScheduleInput structure as a key-value pair table
function M.DeleteSnapshotScheduleInput(args)
	assert(args, "You must provide an argument table when creating DeleteSnapshotScheduleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertDeleteSnapshotScheduleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSMBFileShareOutput = { ["FileShareARN"] = true, nil }

function asserts.AssertUpdateSMBFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSMBFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSMBFileShareOutput[k], "UpdateSMBFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSMBFileShareOutput
-- <p>UpdateSMBFileShareOutput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the updated SMB file share. </p>
-- @return UpdateSMBFileShareOutput structure as a key-value pair table
function M.UpdateSMBFileShareOutput(args)
	assert(args, "You must provide an argument table when creating UpdateSMBFileShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
	}
	asserts.AssertUpdateSMBFileShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] 
-- * Key [TagKey] 
-- Required key: Key
-- Required key: Value
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
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.</p>
-- * InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.</p>
-- @return UpdateChapCredentialsOutput structure as a key-value pair table
function M.UpdateChapCredentialsOutput(args)
	assert(args, "You must provide an argument table when creating UpdateChapCredentialsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["InitiatorName"] = args["InitiatorName"],
	}
	asserts.AssertUpdateChapCredentialsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * LocalConsolePassword [LocalConsolePassword] <p>The password you want to set for your VM local console.</p>
-- Required key: GatewayARN
-- Required key: LocalConsolePassword
-- @return SetLocalConsolePasswordInput structure as a key-value pair table
function M.SetLocalConsolePasswordInput(args)
	assert(args, "You must provide an argument table when creating SetLocalConsolePasswordInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["LocalConsolePassword"] = args["LocalConsolePassword"],
	}
	asserts.AssertSetLocalConsolePasswordInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DiskSizeInBytes [long] 
-- * DiskAllocationType [DiskAllocationType] 
-- * DiskPath [string] 
-- * DiskStatus [string] 
-- * DiskAllocationResource [string] 
-- * DiskId [DiskId] 
-- * DiskNode [string] 
-- @return Disk structure as a key-value pair table
function M.Disk(args)
	assert(args, "You must provide an argument table when creating Disk")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DiskSizeInBytes"] = args["DiskSizeInBytes"],
		["DiskAllocationType"] = args["DiskAllocationType"],
		["DiskPath"] = args["DiskPath"],
		["DiskStatus"] = args["DiskStatus"],
		["DiskAllocationResource"] = args["DiskAllocationResource"],
		["DiskId"] = args["DiskId"],
		["DiskNode"] = args["DiskNode"],
	}
	asserts.AssertDisk(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayName [string] <p>The name you configured for your gateway.</p>
-- * GatewayType [GatewayType] <p>The type of the gateway.</p>
-- * GatewayState [GatewayState] <p>A value that indicates the operating state of the gateway.</p>
-- * LastSoftwareUpdate [LastSoftwareUpdate] <p>The date on which the last software update was applied to the gateway. If the gateway has never been updated, this field does not return a value in the response.</p>
-- * GatewayTimezone [GatewayTimezone] <p>A value that indicates the time zone configured for the gateway.</p>
-- * GatewayNetworkInterfaces [GatewayNetworkInterfaces] <p>A <a>NetworkInterface</a> array that contains descriptions of the gateway network interfaces.</p>
-- * NextUpdateAvailabilityDate [NextUpdateAvailabilityDate] <p>The date on which an update to the gateway is available. This date is in the time zone of the gateway. If the gateway is not available for an update this field is not returned in the response.</p>
-- * GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p>
-- * GatewayARN [GatewayARN] 
-- @return DescribeGatewayInformationOutput structure as a key-value pair table
function M.DescribeGatewayInformationOutput(args)
	assert(args, "You must provide an argument table when creating DescribeGatewayInformationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayName"] = args["GatewayName"],
		["GatewayType"] = args["GatewayType"],
		["GatewayState"] = args["GatewayState"],
		["LastSoftwareUpdate"] = args["LastSoftwareUpdate"],
		["GatewayTimezone"] = args["GatewayTimezone"],
		["GatewayNetworkInterfaces"] = args["GatewayNetworkInterfaces"],
		["NextUpdateAvailabilityDate"] = args["NextUpdateAvailabilityDate"],
		["GatewayId"] = args["GatewayId"],
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeGatewayInformationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DisableGatewayInput structure as a key-value pair table
function M.DisableGatewayInput(args)
	assert(args, "You must provide an argument table when creating DisableGatewayInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDisableGatewayInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the deleted file share. </p>
-- @return DeleteFileShareOutput structure as a key-value pair table
function M.DeleteFileShareOutput(args)
	assert(args, "You must provide an argument table when creating DeleteFileShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
	}
	asserts.AssertDeleteFileShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * UploadBufferAllocatedInBytes [long] 
-- * DiskIds [DiskIds] 
-- * UploadBufferUsedInBytes [long] 
-- @return DescribeUploadBufferOutput structure as a key-value pair table
function M.DescribeUploadBufferOutput(args)
	assert(args, "You must provide an argument table when creating DescribeUploadBufferOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["UploadBufferAllocatedInBytes"] = args["UploadBufferAllocatedInBytes"],
		["DiskIds"] = args["DiskIds"],
		["UploadBufferUsedInBytes"] = args["UploadBufferUsedInBytes"],
	}
	asserts.AssertDescribeUploadBufferOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return AddWorkingStorageOutput structure as a key-value pair table
function M.AddWorkingStorageOutput(args)
	assert(args, "You must provide an argument table when creating AddWorkingStorageOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertAddWorkingStorageOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return ResetCacheOutput structure as a key-value pair table
function M.ResetCacheOutput(args)
	assert(args, "You must provide an argument table when creating ResetCacheOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertResetCacheOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VTLDeviceType [VTLDeviceType] 
-- * VTLDeviceProductIdentifier [VTLDeviceProductIdentifier] 
-- * DeviceiSCSIAttributes [DeviceiSCSIAttributes] <p>A list of iSCSI information about a VTL device.</p>
-- * VTLDeviceARN [VTLDeviceARN] <p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media changer).</p>
-- * VTLDeviceVendor [VTLDeviceVendor] 
-- @return VTLDevice structure as a key-value pair table
function M.VTLDevice(args)
	assert(args, "You must provide an argument table when creating VTLDevice")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VTLDeviceType"] = args["VTLDeviceType"],
		["VTLDeviceProductIdentifier"] = args["VTLDeviceProductIdentifier"],
		["DeviceiSCSIAttributes"] = args["DeviceiSCSIAttributes"],
		["VTLDeviceARN"] = args["VTLDeviceARN"],
		["VTLDeviceVendor"] = args["VTLDeviceVendor"],
	}
	asserts.AssertVTLDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>A string that indicates the position at which to begin the returned list of tapes.</p>
-- * Limit [PositiveIntObject] <p>An optional number limit for the tapes in the list returned by this call.</p>
-- * TapeARNs [TapeARNs] 
-- @return ListTapesInput structure as a key-value pair table
function M.ListTapesInput(args)
	assert(args, "You must provide an argument table when creating ListTapesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["TapeARNs"] = args["TapeARNs"],
	}
	asserts.AssertListTapesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tape = { ["TapeCreatedDate"] = true, ["TapeUsedInBytes"] = true, ["TapeARN"] = true, ["VTLDevice"] = true, ["KMSKey"] = true, ["TapeSizeInBytes"] = true, ["TapeBarcode"] = true, ["Progress"] = true, ["TapeStatus"] = true, nil }

function asserts.AssertTape(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tape to be of type 'table'")
	if struct["TapeCreatedDate"] then asserts.AssertTime(struct["TapeCreatedDate"]) end
	if struct["TapeUsedInBytes"] then asserts.AssertTapeUsage(struct["TapeUsedInBytes"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	if struct["VTLDevice"] then asserts.AssertVTLDeviceARN(struct["VTLDevice"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeCreatedDate [Time] <p>The date the virtual tape was created.</p>
-- * TapeUsedInBytes [TapeUsage] <p>The size, in bytes, of data stored on the virtual tape.</p> <note> <p>This value is not available for tapes created prior to May 13, 2015.</p> </note>
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape.</p>
-- * VTLDevice [VTLDeviceARN] <p>The virtual tape library (VTL) device that the virtual tape is associated with.</p>
-- * KMSKey [KMSKey] 
-- * TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tape capacity.</p>
-- * TapeBarcode [TapeBarcode] <p>The barcode that identifies a specific virtual tape.</p>
-- * Progress [DoubleObject] <p>For archiving virtual tapes, indicates how much data remains to be uploaded before archiving is complete.</p> <p>Range: 0 (not started) to 100 (complete).</p>
-- * TapeStatus [TapeStatus] <p>The current state of the virtual tape.</p>
-- @return Tape structure as a key-value pair table
function M.Tape(args)
	assert(args, "You must provide an argument table when creating Tape")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeCreatedDate"] = args["TapeCreatedDate"],
		["TapeUsedInBytes"] = args["TapeUsedInBytes"],
		["TapeARN"] = args["TapeARN"],
		["VTLDevice"] = args["VTLDevice"],
		["KMSKey"] = args["KMSKey"],
		["TapeSizeInBytes"] = args["TapeSizeInBytes"],
		["TapeBarcode"] = args["TapeBarcode"],
		["Progress"] = args["Progress"],
		["TapeStatus"] = args["TapeStatus"],
	}
	asserts.AssertTape(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A JSON object containing the ID of the gateway.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeGatewayInformationInput structure as a key-value pair table
function M.DescribeGatewayInformationInput(args)
	assert(args, "You must provide an argument table when creating DescribeGatewayInformationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeGatewayInformationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which the VTL devices that were fetched for description ended. Use the marker in your next request to fetch the next set of VTL devices in the list. If there are no more VTL devices to describe, this field does not appear in the response.</p>
-- * GatewayARN [GatewayARN] 
-- * VTLDevices [VTLDevices] <p>An array of VTL device objects composed of the Amazon Resource Name(ARN) of the VTL devices.</p>
-- @return DescribeVTLDevicesOutput structure as a key-value pair table
function M.DescribeVTLDevicesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeVTLDevicesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["VTLDevices"] = args["VTLDevices"],
	}
	asserts.AssertDescribeVTLDevicesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required key: VolumeARN
-- @return DescribeSnapshotScheduleInput structure as a key-value pair table
function M.DescribeSnapshotScheduleInput(args)
	assert(args, "You must provide an argument table when creating DescribeSnapshotScheduleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertDescribeSnapshotScheduleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * AverageUploadRateLimitInBitsPerSec [BandwidthUploadRateLimit] <p>The average upload bandwidth rate limit in bits per second. This field does not appear in the response if the upload rate limit is not set.</p>
-- * AverageDownloadRateLimitInBitsPerSec [BandwidthDownloadRateLimit] <p>The average download bandwidth rate limit in bits per second. This field does not appear in the response if the download rate limit is not set.</p>
-- @return DescribeBandwidthRateLimitOutput structure as a key-value pair table
function M.DescribeBandwidthRateLimitOutput(args)
	assert(args, "You must provide an argument table when creating DescribeBandwidthRateLimitOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["AverageUploadRateLimitInBitsPerSec"] = args["AverageUploadRateLimitInBitsPerSec"],
		["AverageDownloadRateLimitInBitsPerSec"] = args["AverageDownloadRateLimitInBitsPerSec"],
	}
	asserts.AssertDescribeBandwidthRateLimitOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SMBFileShareInfo = { ["FileShareARN"] = true, ["FileShareStatus"] = true, ["FileShareId"] = true, ["ValidUserList"] = true, ["DefaultStorageClass"] = true, ["ReadOnly"] = true, ["GuessMIMETypeEnabled"] = true, ["InvalidUserList"] = true, ["Authentication"] = true, ["KMSKey"] = true, ["Role"] = true, ["LocationARN"] = true, ["ObjectACL"] = true, ["Path"] = true, ["GatewayARN"] = true, ["KMSEncrypted"] = true, ["RequesterPays"] = true, nil }

function asserts.AssertSMBFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMBFileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["FileShareStatus"] then asserts.AssertFileShareStatus(struct["FileShareStatus"]) end
	if struct["FileShareId"] then asserts.AssertFileShareId(struct["FileShareId"]) end
	if struct["ValidUserList"] then asserts.AssertFileShareUserList(struct["ValidUserList"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["GuessMIMETypeEnabled"] then asserts.AssertBoolean(struct["GuessMIMETypeEnabled"]) end
	if struct["InvalidUserList"] then asserts.AssertFileShareUserList(struct["InvalidUserList"]) end
	if struct["Authentication"] then asserts.AssertAuthentication(struct["Authentication"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then asserts.AssertLocationARN(struct["LocationARN"]) end
	if struct["ObjectACL"] then asserts.AssertObjectACL(struct["ObjectACL"]) end
	if struct["Path"] then asserts.AssertPath(struct["Path"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["KMSEncrypted"] then asserts.Assertboolean(struct["KMSEncrypted"]) end
	if struct["RequesterPays"] then asserts.AssertBoolean(struct["RequesterPays"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMBFileShareInfo[k], "SMBFileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMBFileShareInfo
-- <p>The Windows file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported for file gateways.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- * FileShareStatus [FileShareStatus] 
-- * FileShareId [FileShareId] 
-- * ValidUserList [FileShareUserList] <p>A list of users or groups in the Active Directory that are allowed to access the file share. A group must be prefixed with the @ character. For example <code>@group1</code>. Can only be set if Authentication is set to <code>ActiveDirectory</code>.</p>
-- * DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are <code>S3_STANDARD</code>, <code>S3_STANDARD_IA</code>, or <code>S3_ONEZONE_IA</code>. If this field is not populated, the default value <code>S3_STANDARD</code> is used. Optional.</p>
-- * ReadOnly [Boolean] <p>A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.</p>
-- * GuessMIMETypeEnabled [Boolean] <p>A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.</p>
-- * InvalidUserList [FileShareUserList] <p>A list of users or groups in the Active Directory that are not allowed to access the file share. A group must be prefixed with the @ character. For example <code>@group1</code>. Can only be set if Authentication is set to <code>ActiveDirectory</code>.</p>
-- * Authentication [Authentication] 
-- * KMSKey [KMSKey] 
-- * Role [Role] 
-- * LocationARN [LocationARN] 
-- * ObjectACL [ObjectACL] 
-- * Path [Path] <p>The file share path used by the SMB client to identify the mount point.</p>
-- * GatewayARN [GatewayARN] 
-- * KMSEncrypted [boolean] <p>True to use Amazon S3 server-side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional. </p>
-- * RequesterPays [Boolean] <p>A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is <code>private</code>.</p>
-- @return SMBFileShareInfo structure as a key-value pair table
function M.SMBFileShareInfo(args)
	assert(args, "You must provide an argument table when creating SMBFileShareInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["FileShareStatus"] = args["FileShareStatus"],
		["FileShareId"] = args["FileShareId"],
		["ValidUserList"] = args["ValidUserList"],
		["DefaultStorageClass"] = args["DefaultStorageClass"],
		["ReadOnly"] = args["ReadOnly"],
		["GuessMIMETypeEnabled"] = args["GuessMIMETypeEnabled"],
		["InvalidUserList"] = args["InvalidUserList"],
		["Authentication"] = args["Authentication"],
		["KMSKey"] = args["KMSKey"],
		["Role"] = args["Role"],
		["LocationARN"] = args["LocationARN"],
		["ObjectACL"] = args["ObjectACL"],
		["Path"] = args["Path"],
		["GatewayARN"] = args["GatewayARN"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["RequesterPays"] = args["RequesterPays"],
	}
	asserts.AssertSMBFileShareInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSMBFileShareOutput = { ["FileShareARN"] = true, nil }

function asserts.AssertCreateSMBFileShareOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSMBFileShareOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSMBFileShareOutput[k], "CreateSMBFileShareOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSMBFileShareOutput
-- <p>CreateSMBFileShareOutput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the newly created file share. </p>
-- @return CreateSMBFileShareOutput structure as a key-value pair table
function M.CreateSMBFileShareOutput(args)
	assert(args, "You must provide an argument table when creating CreateSMBFileShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
	}
	asserts.AssertCreateSMBFileShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Initiators [Initiators] <p>The host names and port numbers of all iSCSI initiators that are connected to the gateway.</p>
-- @return ListVolumeInitiatorsOutput structure as a key-value pair table
function M.ListVolumeInitiatorsOutput(args)
	assert(args, "You must provide an argument table when creating ListVolumeInitiatorsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Initiators"] = args["Initiators"],
	}
	asserts.AssertListVolumeInitiatorsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which to begin describing virtual tapes.</p>
-- * Limit [PositiveIntObject] <p>Specifies that the number of virtual tapes descried be limited to the specified number.</p>
-- * TapeARNs [TapeARNs] <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe.</p>
-- @return DescribeTapeArchivesInput structure as a key-value pair table
function M.DescribeTapeArchivesInput(args)
	assert(args, "You must provide an argument table when creating DescribeTapeArchivesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["TapeARNs"] = args["TapeARNs"],
	}
	asserts.AssertDescribeTapeArchivesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which to stop returning the list of tags.</p>
-- * ResourceARN [ResourceARN] <p>he Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
-- * Tags [Tags] <p>An array that contains the tags for the specified resource.</p>
-- @return ListTagsForResourceOutput structure as a key-value pair table
function M.ListTagsForResourceOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ResourceARN"] = args["ResourceARN"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>A string that indicates the position at which to begin returning the next list of tapes. Use the marker in your next request to continue pagination of tapes. If there are no more tapes to list, this element does not appear in the response body.</p>
-- * TapeInfos [TapeInfos] 
-- @return ListTapesOutput structure as a key-value pair table
function M.ListTapesOutput(args)
	assert(args, "You must provide an argument table when creating ListTapesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TapeInfos"] = args["TapeInfos"],
	}
	asserts.AssertListTapesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the volume target.</p>
-- * NetworkInterfaceId [NetworkInterfaceId] <p>The network interface identifier.</p>
-- * LunNumber [PositiveIntObject] <p>The logical disk number.</p>
-- * ChapEnabled [boolean] <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
-- * NetworkInterfacePort [integer] <p>The port used to communicate with iSCSI targets.</p>
-- @return VolumeiSCSIAttributes structure as a key-value pair table
function M.VolumeiSCSIAttributes(args)
	assert(args, "You must provide an argument table when creating VolumeiSCSIAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["LunNumber"] = args["LunNumber"],
		["ChapEnabled"] = args["ChapEnabled"],
		["NetworkInterfacePort"] = args["NetworkInterfacePort"],
	}
	asserts.AssertVolumeiSCSIAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] <p/>
-- @return UpdateSnapshotScheduleOutput structure as a key-value pair table
function M.UpdateSnapshotScheduleOutput(args)
	assert(args, "You must provide an argument table when creating UpdateSnapshotScheduleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertUpdateSnapshotScheduleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return UpdateBandwidthRateLimitOutput structure as a key-value pair table
function M.UpdateBandwidthRateLimitOutput(args)
	assert(args, "You must provide an argument table when creating UpdateBandwidthRateLimitOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertUpdateBandwidthRateLimitOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NFSFileShareInfo = { ["FileShareARN"] = true, ["FileShareStatus"] = true, ["FileShareId"] = true, ["DefaultStorageClass"] = true, ["ClientList"] = true, ["Squash"] = true, ["GuessMIMETypeEnabled"] = true, ["NFSFileShareDefaults"] = true, ["KMSKey"] = true, ["Role"] = true, ["LocationARN"] = true, ["ObjectACL"] = true, ["Path"] = true, ["GatewayARN"] = true, ["ReadOnly"] = true, ["KMSEncrypted"] = true, ["RequesterPays"] = true, nil }

function asserts.AssertNFSFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NFSFileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["FileShareStatus"] then asserts.AssertFileShareStatus(struct["FileShareStatus"]) end
	if struct["FileShareId"] then asserts.AssertFileShareId(struct["FileShareId"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ClientList"] then asserts.AssertFileShareClientList(struct["ClientList"]) end
	if struct["Squash"] then asserts.AssertSquash(struct["Squash"]) end
	if struct["GuessMIMETypeEnabled"] then asserts.AssertBoolean(struct["GuessMIMETypeEnabled"]) end
	if struct["NFSFileShareDefaults"] then asserts.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["LocationARN"] then asserts.AssertLocationARN(struct["LocationARN"]) end
	if struct["ObjectACL"] then asserts.AssertObjectACL(struct["ObjectACL"]) end
	if struct["Path"] then asserts.AssertPath(struct["Path"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["KMSEncrypted"] then asserts.Assertboolean(struct["KMSEncrypted"]) end
	if struct["RequesterPays"] then asserts.AssertBoolean(struct["RequesterPays"]) end
	for k,_ in pairs(struct) do
		assert(keys.NFSFileShareInfo[k], "NFSFileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NFSFileShareInfo
-- <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- * FileShareStatus [FileShareStatus] 
-- * FileShareId [FileShareId] 
-- * DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are <code>S3_STANDARD</code>, <code>S3_STANDARD_IA</code>, or <code>S3_ONEZONE_IA</code>. If this field is not populated, the default value <code>S3_STANDARD</code> is used. Optional.</p>
-- * ClientList [FileShareClientList] 
-- * Squash [Squash] 
-- * GuessMIMETypeEnabled [Boolean] <p>A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.</p>
-- * NFSFileShareDefaults [NFSFileShareDefaults] 
-- * KMSKey [KMSKey] 
-- * Role [Role] 
-- * LocationARN [LocationARN] 
-- * ObjectACL [ObjectACL] 
-- * Path [Path] 
-- * GatewayARN [GatewayARN] 
-- * ReadOnly [Boolean] <p>A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.</p>
-- * KMSEncrypted [boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional. </p>
-- * RequesterPays [Boolean] <p>A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is <code>private</code>.</p>
-- @return NFSFileShareInfo structure as a key-value pair table
function M.NFSFileShareInfo(args)
	assert(args, "You must provide an argument table when creating NFSFileShareInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["FileShareStatus"] = args["FileShareStatus"],
		["FileShareId"] = args["FileShareId"],
		["DefaultStorageClass"] = args["DefaultStorageClass"],
		["ClientList"] = args["ClientList"],
		["Squash"] = args["Squash"],
		["GuessMIMETypeEnabled"] = args["GuessMIMETypeEnabled"],
		["NFSFileShareDefaults"] = args["NFSFileShareDefaults"],
		["KMSKey"] = args["KMSKey"],
		["Role"] = args["Role"],
		["LocationARN"] = args["LocationARN"],
		["ObjectACL"] = args["ObjectACL"],
		["Path"] = args["Path"],
		["GatewayARN"] = args["GatewayARN"],
		["ReadOnly"] = args["ReadOnly"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["RequesterPays"] = args["RequesterPays"],
	}
	asserts.AssertNFSFileShareInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSMBSettingsOutput = { ["SMBGuestPasswordSet"] = true, ["GatewayARN"] = true, ["DomainName"] = true, nil }

function asserts.AssertDescribeSMBSettingsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSMBSettingsOutput to be of type 'table'")
	if struct["SMBGuestPasswordSet"] then asserts.AssertBoolean(struct["SMBGuestPasswordSet"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["DomainName"] then asserts.AssertDomainName(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSMBSettingsOutput[k], "DescribeSMBSettingsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSMBSettingsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SMBGuestPasswordSet [Boolean] <p>This value is true if a password for the guest user “smbguest” is set, and otherwise false.</p>
-- * GatewayARN [GatewayARN] 
-- * DomainName [DomainName] <p>The name of the domain that the gateway is joined to.</p>
-- @return DescribeSMBSettingsOutput structure as a key-value pair table
function M.DescribeSMBSettingsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeSMBSettingsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SMBGuestPasswordSet"] = args["SMBGuestPasswordSet"],
		["GatewayARN"] = args["GatewayARN"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertDescribeSMBSettingsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSMBFileSharesOutput = { ["SMBFileShareInfoList"] = true, nil }

function asserts.AssertDescribeSMBFileSharesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSMBFileSharesOutput to be of type 'table'")
	if struct["SMBFileShareInfoList"] then asserts.AssertSMBFileShareInfoList(struct["SMBFileShareInfoList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSMBFileSharesOutput[k], "DescribeSMBFileSharesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSMBFileSharesOutput
-- <p>DescribeSMBFileSharesOutput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SMBFileShareInfoList [SMBFileShareInfoList] <p>An array containing a description for each requested file share. </p>
-- @return DescribeSMBFileSharesOutput structure as a key-value pair table
function M.DescribeSMBFileSharesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeSMBFileSharesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SMBFileShareInfoList"] = args["SMBFileShareInfoList"],
	}
	asserts.AssertDescribeSMBFileSharesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>he Amazon Resource Name (ARN) of the volume target that includes the iSCSI name that initiators can use to connect to the target.</p>
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the configured volume.</p>
-- @return CreateCachediSCSIVolumeOutput structure as a key-value pair table
function M.CreateCachediSCSIVolumeOutput(args)
	assert(args, "You must provide an argument table when creating CreateCachediSCSIVolumeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertCreateCachediSCSIVolumeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HourOfDay [HourOfDay] <p>The hour component of the maintenance start time represented as <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
-- * GatewayARN [GatewayARN] 
-- * DayOfWeek [DayOfWeek] <p>An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.</p>
-- * MinuteOfHour [MinuteOfHour] <p>The minute component of the maintenance start time represented as <i>mm</i>, where <i>mm</i> is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.</p>
-- * Timezone [GatewayTimezone] 
-- @return DescribeMaintenanceStartTimeOutput structure as a key-value pair table
function M.DescribeMaintenanceStartTimeOutput(args)
	assert(args, "You must provide an argument table when creating DescribeMaintenanceStartTimeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HourOfDay"] = args["HourOfDay"],
		["GatewayARN"] = args["GatewayARN"],
		["DayOfWeek"] = args["DayOfWeek"],
		["MinuteOfHour"] = args["MinuteOfHour"],
		["Timezone"] = args["Timezone"],
	}
	asserts.AssertDescribeMaintenanceStartTimeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for specified VolumeARN.</p>
-- * InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- Required key: TargetARN
-- Required key: InitiatorName
-- @return DeleteChapCredentialsInput structure as a key-value pair table
function M.DeleteChapCredentialsInput(args)
	assert(args, "You must provide an argument table when creating DeleteChapCredentialsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["InitiatorName"] = args["InitiatorName"],
	}
	asserts.AssertDeleteChapCredentialsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which to begin returning the list of tags.</p>
-- * ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
-- * Limit [PositiveIntObject] <p>Specifies that the list of tags returned be limited to the specified number of items.</p>
-- Required key: ResourceARN
-- @return ListTagsForResourceInput structure as a key-value pair table
function M.ListTagsForResourceInput(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ResourceARN"] = args["ResourceARN"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListTagsForResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARNs [TapeARNs] <p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that were created.</p>
-- @return CreateTapesOutput structure as a key-value pair table
function M.CreateTapesOutput(args)
	assert(args, "You must provide an argument table when creating CreateTapesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARNs"] = args["TapeARNs"],
	}
	asserts.AssertCreateTapesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] 
-- @return DeleteSnapshotScheduleOutput structure as a key-value pair table
function M.DeleteSnapshotScheduleOutput(args)
	assert(args, "You must provide an argument table when creating DeleteSnapshotScheduleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertDeleteSnapshotScheduleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
-- * Tags [Tags] <p>The key-value pair that represents the tag you want to add to the resource. The value can be an empty string.</p> <note> <p>Valid characters for key and value are letters, spaces, and numbers representable in UTF-8 format, and the following special characters: + - = . _ : / @.</p> </note>
-- Required key: ResourceARN
-- Required key: Tags
-- @return AddTagsToResourceInput structure as a key-value pair table
function M.AddTagsToResourceInput(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceARN"] = args["ResourceARN"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshCacheOutput = { ["FileShareARN"] = true, ["NotificationId"] = true, nil }

function asserts.AssertRefreshCacheOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshCacheOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["NotificationId"] then asserts.AssertNotificationId(struct["NotificationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshCacheOutput[k], "RefreshCacheOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshCacheOutput
-- <p>RefreshCacheOutput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- * NotificationId [NotificationId] 
-- @return RefreshCacheOutput structure as a key-value pair table
function M.RefreshCacheOutput(args)
	assert(args, "You must provide an argument table when creating RefreshCacheOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["NotificationId"] = args["NotificationId"],
	}
	asserts.AssertRefreshCacheOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorediSCSIVolumes [StorediSCSIVolumes] 
-- @return DescribeStorediSCSIVolumesOutput structure as a key-value pair table
function M.DescribeStorediSCSIVolumesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStorediSCSIVolumesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorediSCSIVolumes"] = args["StorediSCSIVolumes"],
	}
	asserts.AssertDescribeStorediSCSIVolumesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VTLDeviceARN [VTLDeviceARN] <p>The Amazon Resource Name (ARN) of the medium changer you have selected.</p>
-- @return UpdateVTLDeviceTypeOutput structure as a key-value pair table
function M.UpdateVTLDeviceTypeOutput(args)
	assert(args, "You must provide an argument table when creating UpdateVTLDeviceTypeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VTLDeviceARN"] = args["VTLDeviceARN"],
	}
	asserts.AssertUpdateVTLDeviceTypeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * DiskIds [DiskIds] 
-- Required key: GatewayARN
-- Required key: DiskIds
-- @return AddCacheInput structure as a key-value pair table
function M.AddCacheInput(args)
	assert(args, "You must provide an argument table when creating AddCacheInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["DiskIds"] = args["DiskIds"],
	}
	asserts.AssertAddCacheInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInBytes [long] 
-- * VolumeUsageInBytes [long] 
-- * VolumeARN [VolumeARN] 
-- * VolumeRecoveryPointTime [string] 
-- @return VolumeRecoveryPointInfo structure as a key-value pair table
function M.VolumeRecoveryPointInfo(args)
	assert(args, "You must provide an argument table when creating VolumeRecoveryPointInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInBytes"] = args["VolumeSizeInBytes"],
		["VolumeUsageInBytes"] = args["VolumeUsageInBytes"],
		["VolumeARN"] = args["VolumeARN"],
		["VolumeRecoveryPointTime"] = args["VolumeRecoveryPointTime"],
	}
	asserts.AssertVolumeRecoveryPointInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which to begin the returned list of gateways.</p>
-- * Limit [PositiveIntObject] <p>Specifies that the list of gateways returned be limited to the specified number of items.</p>
-- @return ListGatewaysInput structure as a key-value pair table
function M.ListGatewaysInput(args)
	assert(args, "You must provide an argument table when creating ListGatewaysInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListGatewaysInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p> <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- * VolumeType [VolumeType] 
-- * VolumeId [VolumeId] <p>The unique identifier assigned to the volume. This ID becomes part of the volume Amazon Resource Name (ARN), which you use as input for other operations.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) for the storage volume. For example, the following is a valid ARN:</p> <p> <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB</code> </p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- * GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p> <p> Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
-- * GatewayARN [GatewayARN] 
-- @return VolumeInfo structure as a key-value pair table
function M.VolumeInfo(args)
	assert(args, "You must provide an argument table when creating VolumeInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInBytes"] = args["VolumeSizeInBytes"],
		["VolumeType"] = args["VolumeType"],
		["VolumeId"] = args["VolumeId"],
		["VolumeARN"] = args["VolumeARN"],
		["GatewayId"] = args["GatewayId"],
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertVolumeInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARNList [FileShareARNList] <p>An array containing the Amazon Resource Name (ARN) of each file share to be described. </p>
-- Required key: FileShareARNList
-- @return DescribeNFSFileSharesInput structure as a key-value pair table
function M.DescribeNFSFileSharesInput(args)
	assert(args, "You must provide an argument table when creating DescribeNFSFileSharesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARNList"] = args["FileShareARNList"],
	}
	asserts.AssertDescribeNFSFileSharesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * VolumeRecoveryPointInfos [VolumeRecoveryPointInfos] 
-- @return ListVolumeRecoveryPointsOutput structure as a key-value pair table
function M.ListVolumeRecoveryPointsOutput(args)
	assert(args, "You must provide an argument table when creating ListVolumeRecoveryPointsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["VolumeRecoveryPointInfos"] = args["VolumeRecoveryPointInfos"],
	}
	asserts.AssertListVolumeRecoveryPointsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf (VTS).</p>
-- Required key: TapeARN
-- @return DeleteTapeArchiveInput structure as a key-value pair table
function M.DeleteTapeArchiveInput(args)
	assert(args, "You must provide an argument table when creating DeleteTapeArchiveInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertDeleteTapeArchiveInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.</p> <note> <p>For gateways activated prior to September 02, 2015, the gateway ARN contains the gateway name rather than the gateway ID. Changing the name of the gateway has no effect on the gateway ARN.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return ActivateGatewayOutput structure as a key-value pair table
function M.ActivateGatewayOutput(args)
	assert(args, "You must provide an argument table when creating ActivateGatewayOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertActivateGatewayOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] 
-- * GatewayARN [GatewayARN] 
-- * VolumeInfos [VolumeInfos] 
-- @return ListVolumesOutput structure as a key-value pair table
function M.ListVolumesOutput(args)
	assert(args, "You must provide an argument table when creating ListVolumesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["VolumeInfos"] = args["VolumeInfos"],
	}
	asserts.AssertListVolumesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required key: VolumeARN
-- @return DeleteVolumeInput structure as a key-value pair table
function M.DeleteVolumeInput(args)
	assert(args, "You must provide an argument table when creating DeleteVolumeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertDeleteVolumeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return ShutdownGatewayInput structure as a key-value pair table
function M.ShutdownGatewayInput(args)
	assert(args, "You must provide an argument table when creating ShutdownGatewayInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertShutdownGatewayInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A JSON object containing the ID of the gateway to delete.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DeleteGatewayInput structure as a key-value pair table
function M.DeleteGatewayInput(args)
	assert(args, "You must provide an argument table when creating DeleteGatewayInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDeleteGatewayInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified VolumeARN.</p>
-- * SecretToAuthenticateInitiator [ChapSecret] <p>The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> <note> <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p> </note>
-- * InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- * SecretToAuthenticateTarget [ChapSecret] <p>The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p> <note> <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p> </note>
-- Required key: TargetARN
-- Required key: SecretToAuthenticateInitiator
-- Required key: InitiatorName
-- @return UpdateChapCredentialsInput structure as a key-value pair table
function M.UpdateChapCredentialsInput(args)
	assert(args, "You must provide an argument table when creating UpdateChapCredentialsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["SecretToAuthenticateInitiator"] = args["SecretToAuthenticateInitiator"],
		["InitiatorName"] = args["InitiatorName"],
		["SecretToAuthenticateTarget"] = args["SecretToAuthenticateTarget"],
	}
	asserts.AssertUpdateChapCredentialsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeUploadBufferInput structure as a key-value pair table
function M.DescribeUploadBufferInput(args)
	assert(args, "You must provide an argument table when creating DescribeUploadBufferInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeUploadBufferInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * Disks [Disks] 
-- @return ListLocalDisksOutput structure as a key-value pair table
function M.ListLocalDisksOutput(args)
	assert(args, "You must provide an argument table when creating ListLocalDisksOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["Disks"] = args["Disks"],
	}
	asserts.AssertListLocalDisksOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayId [GatewayId] <p>The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.</p>
-- * GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- * GatewayName [string] <p>The name of the gateway.</p>
-- * GatewayOperationalState [GatewayOperationalState] <p>The state of the gateway.</p> <p>Valid Values: DISABLED or ACTIVE</p>
-- * GatewayType [GatewayType] <p>The type of the gateway.</p>
-- @return GatewayInfo structure as a key-value pair table
function M.GatewayInfo(args)
	assert(args, "You must provide an argument table when creating GatewayInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayId"] = args["GatewayId"],
		["GatewayARN"] = args["GatewayARN"],
		["GatewayName"] = args["GatewayName"],
		["GatewayOperationalState"] = args["GatewayOperationalState"],
		["GatewayType"] = args["GatewayType"],
	}
	asserts.AssertGatewayInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileShareInfo = { ["FileShareARN"] = true, ["GatewayARN"] = true, ["FileShareType"] = true, ["FileShareId"] = true, ["FileShareStatus"] = true, nil }

function asserts.AssertFileShareInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileShareInfo to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["FileShareType"] then asserts.AssertFileShareType(struct["FileShareType"]) end
	if struct["FileShareId"] then asserts.AssertFileShareId(struct["FileShareId"]) end
	if struct["FileShareStatus"] then asserts.AssertFileShareStatus(struct["FileShareStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileShareInfo[k], "FileShareInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileShareInfo
-- <p>Describes a file share.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- * GatewayARN [GatewayARN] 
-- * FileShareType [FileShareType] 
-- * FileShareId [FileShareId] 
-- * FileShareStatus [FileShareStatus] 
-- @return FileShareInfo structure as a key-value pair table
function M.FileShareInfo(args)
	assert(args, "You must provide an argument table when creating FileShareInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["GatewayARN"] = args["GatewayARN"],
		["FileShareType"] = args["FileShareType"],
		["FileShareId"] = args["FileShareId"],
		["FileShareStatus"] = args["FileShareStatus"],
	}
	asserts.AssertFileShareInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetSMBGuestPasswordInput = { ["GatewayARN"] = true, ["Password"] = true, nil }

function asserts.AssertSetSMBGuestPasswordInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSMBGuestPasswordInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["Password"] then asserts.AssertSMBGuestPassword(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSMBGuestPasswordInput[k], "SetSMBGuestPasswordInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSMBGuestPasswordInput
-- <p>SetSMBGuestPasswordInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the file gateway the SMB file share is associated with.</p>
-- * Password [SMBGuestPassword] <p>The password that you want to set for your SMB Server.</p>
-- Required key: GatewayARN
-- Required key: Password
-- @return SetSMBGuestPasswordInput structure as a key-value pair table
function M.SetSMBGuestPasswordInput(args)
	assert(args, "You must provide an argument table when creating SetSMBGuestPasswordInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["Password"] = args["Password"],
	}
	asserts.AssertSetSMBGuestPasswordInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return SetLocalConsolePasswordOutput structure as a key-value pair table
function M.SetLocalConsolePasswordOutput(args)
	assert(args, "You must provide an argument table when creating SetLocalConsolePasswordOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertSetLocalConsolePasswordOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
-- @return AddTagsToResourceOutput structure as a key-value pair table
function M.AddTagsToResourceOutput(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceARN"] = args["ResourceARN"],
	}
	asserts.AssertAddTagsToResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return AddUploadBufferOutput structure as a key-value pair table
function M.AddUploadBufferOutput(args)
	assert(args, "You must provide an argument table when creating AddUploadBufferOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertAddUploadBufferOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeStatus [TapeStatus] <p>The status of the tape.</p>
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of a virtual tape.</p>
-- * TapeSizeInBytes [TapeSize] <p>The size, in bytes, of a virtual tape.</p>
-- * GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- * TapeBarcode [TapeBarcode] <p>The barcode that identifies a specific virtual tape.</p>
-- @return TapeInfo structure as a key-value pair table
function M.TapeInfo(args)
	assert(args, "You must provide an argument table when creating TapeInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeStatus"] = args["TapeStatus"],
		["TapeARN"] = args["TapeARN"],
		["TapeSizeInBytes"] = args["TapeSizeInBytes"],
		["GatewayARN"] = args["GatewayARN"],
		["TapeBarcode"] = args["TapeBarcode"],
	}
	asserts.AssertTapeInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape that was deleted from the virtual tape shelf (VTS).</p>
-- @return DeleteTapeArchiveOutput structure as a key-value pair table
function M.DeleteTapeArchiveOutput(args)
	assert(args, "You must provide an argument table when creating DeleteTapeArchiveOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertDeleteTapeArchiveOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>The Amazon Resource Name (ARN) of the target.</p>
-- * InitiatorName [IqnName] <p>The iSCSI initiator that connects to the target.</p>
-- @return DeleteChapCredentialsOutput structure as a key-value pair table
function M.DeleteChapCredentialsOutput(args)
	assert(args, "You must provide an argument table when creating DeleteChapCredentialsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["InitiatorName"] = args["InitiatorName"],
	}
	asserts.AssertDeleteChapCredentialsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RefreshCacheInput = { ["FileShareARN"] = true, ["Recursive"] = true, ["FolderList"] = true, nil }

function asserts.AssertRefreshCacheInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RefreshCacheInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["Recursive"] then asserts.AssertBoolean(struct["Recursive"]) end
	if struct["FolderList"] then asserts.AssertFolderList(struct["FolderList"]) end
	for k,_ in pairs(struct) do
		assert(keys.RefreshCacheInput[k], "RefreshCacheInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RefreshCacheInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- * Recursive [Boolean] <p>A value that specifies whether to recursively refresh folders in the cache. The refresh includes folders that were in the cache the last time the gateway listed the folder's contents. If this value set to "true", each folder that is listed in <code>FolderList</code> is recursively updated. Otherwise, subfolders listed in <code>FolderList</code> are not refreshed. Only objects that are in folders listed directly under <code>FolderList</code> are found and used for the update. The default is "true".</p>
-- * FolderList [FolderList] 
-- Required key: FileShareARN
-- @return RefreshCacheInput structure as a key-value pair table
function M.RefreshCacheInput(args)
	assert(args, "You must provide an argument table when creating RefreshCacheInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["Recursive"] = args["Recursive"],
		["FolderList"] = args["FolderList"],
	}
	asserts.AssertRefreshCacheInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayName [GatewayName] <p>The name you configured for your gateway.</p>
-- * GatewayType [GatewayType] <p>A value that defines the type of gateway to activate. The type specified is critical to all later functions of the gateway and cannot be changed after activation. The default value is <code>CACHED</code>. </p> <p> Valid Values: "STORED", "CACHED", "VTL", "FILE_S3"</p>
-- * TapeDriveType [TapeDriveType] <p>The value that indicates the type of tape drive to use for tape gateway. This field is optional.</p> <p> Valid Values: "IBM-ULT3580-TD5" </p>
-- * MediumChangerType [MediumChangerType] <p>The value that indicates the type of medium changer to use for tape gateway. This field is optional.</p> <p> Valid Values: "STK-L700", "AWS-Gateway-VTL"</p>
-- * GatewayTimezone [GatewayTimezone] <p>A value that indicates the time zone you want to set for the gateway. The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.</p>
-- * GatewayRegion [RegionId] <p>A value that indicates the region where you want to store your data. The gateway region specified must be the same region as the region in your <code>Host</code> header in the request. For more information about available regions and endpoints for AWS Storage Gateway, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p> <p> Valid Values: "us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-central-1", "eu-west-2", "eu-west-3", "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "sa-east-1"</p>
-- * ActivationKey [ActivationKey] <p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET request with redirects enabled to the gateway IP address (port 80). The redirect URL returned in the response provides you the activation key for your gateway in the query string parameter <code>activationKey</code>. It may also include other activation-related parameters, however, these are merely defaults -- the arguments you pass to the <code>ActivateGateway</code> API call determine the actual configuration of your gateway. </p> <p>For more information, see https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html in the Storage Gateway User Guide.</p>
-- Required key: ActivationKey
-- Required key: GatewayName
-- Required key: GatewayTimezone
-- Required key: GatewayRegion
-- @return ActivateGatewayInput structure as a key-value pair table
function M.ActivateGatewayInput(args)
	assert(args, "You must provide an argument table when creating ActivateGatewayInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayName"] = args["GatewayName"],
		["GatewayType"] = args["GatewayType"],
		["TapeDriveType"] = args["TapeDriveType"],
		["MediumChangerType"] = args["MediumChangerType"],
		["GatewayTimezone"] = args["GatewayTimezone"],
		["GatewayRegion"] = args["GatewayRegion"],
		["ActivationKey"] = args["ActivationKey"],
	}
	asserts.AssertActivateGatewayInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeCacheInput structure as a key-value pair table
function M.DescribeCacheInput(args)
	assert(args, "You must provide an argument table when creating DescribeCacheInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeCacheInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the storage volume that was deleted. It is the same ARN you provided in the request.</p>
-- @return DeleteVolumeOutput structure as a key-value pair table
function M.DeleteVolumeOutput(args)
	assert(args, "You must provide an argument table when creating DeleteVolumeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertDeleteVolumeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] <p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p> <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape gateway.</p>
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual tape shelf (VTS).</p>
-- Required key: TapeARN
-- Required key: GatewayARN
-- @return RetrieveTapeArchiveInput structure as a key-value pair table
function M.RetrieveTapeArchiveInput(args)
	assert(args, "You must provide an argument table when creating RetrieveTapeArchiveInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertRetrieveTapeArchiveInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARNs [VolumeARNs] 
-- Required key: VolumeARNs
-- @return DescribeCachediSCSIVolumesInput structure as a key-value pair table
function M.DescribeCachediSCSIVolumesInput(args)
	assert(args, "You must provide an argument table when creating DescribeCachediSCSIVolumesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARNs"] = args["VolumeARNs"],
	}
	asserts.AssertDescribeCachediSCSIVolumesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * GatewayName [string] 
-- @return UpdateGatewayInformationOutput structure as a key-value pair table
function M.UpdateGatewayInformationOutput(args)
	assert(args, "You must provide an argument table when creating UpdateGatewayInformationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["GatewayName"] = args["GatewayName"],
	}
	asserts.AssertUpdateGatewayInformationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>Opaque pagination token returned from a previous ListFileShares operation. If present, <code>Marker</code> specifies where to continue the list from after a previous call to ListFileShares. Optional.</p>
-- * GatewayARN [GatewayARN] <p>The Amazon resource Name (ARN) of the gateway whose file shares you want to list. If this field is not present, all file shares under your account are listed.</p>
-- * Limit [PositiveIntObject] <p>The maximum number of file shares to return in the response. The value must be an integer with a value greater than zero. Optional.</p>
-- @return ListFileSharesInput structure as a key-value pair table
function M.ListFileSharesInput(args)
	assert(args, "You must provide an argument table when creating ListFileSharesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListFileSharesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSMBSettingsInput = { ["GatewayARN"] = true, nil }

function asserts.AssertDescribeSMBSettingsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSMBSettingsInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSMBSettingsInput[k], "DescribeSMBSettingsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSMBSettingsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeSMBSettingsInput structure as a key-value pair table
function M.DescribeSMBSettingsInput(args)
	assert(args, "You must provide an argument table when creating DescribeSMBSettingsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeSMBSettingsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return UpdateGatewaySoftwareNowOutput structure as a key-value pair table
function M.UpdateGatewaySoftwareNowOutput(args)
	assert(args, "You must provide an argument table when creating UpdateGatewaySoftwareNowOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertUpdateGatewaySoftwareNowOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource that the tags were removed from.</p>
-- @return RemoveTagsFromResourceOutput structure as a key-value pair table
function M.RemoveTagsFromResourceOutput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceARN"] = args["ResourceARN"],
	}
	asserts.AssertRemoveTagsFromResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return DeleteBandwidthRateLimitOutput structure as a key-value pair table
function M.DeleteBandwidthRateLimitOutput(args)
	assert(args, "You must provide an argument table when creating DeleteBandwidthRateLimitOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDeleteBandwidthRateLimitOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return UpdateMaintenanceStartTimeOutput structure as a key-value pair table
function M.UpdateMaintenanceStartTimeOutput(args)
	assert(args, "You must provide an argument table when creating UpdateMaintenanceStartTimeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertUpdateMaintenanceStartTimeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotDescription [SnapshotDescription] 
-- * VolumeARN [VolumeARN] 
-- Required key: VolumeARN
-- Required key: SnapshotDescription
-- @return CreateSnapshotFromVolumeRecoveryPointInput structure as a key-value pair table
function M.CreateSnapshotFromVolumeRecoveryPointInput(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotFromVolumeRecoveryPointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotDescription"] = args["SnapshotDescription"],
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertCreateSnapshotFromVolumeRecoveryPointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TapeArchive = { ["TapeCreatedDate"] = true, ["TapeUsedInBytes"] = true, ["TapeARN"] = true, ["KMSKey"] = true, ["CompletionTime"] = true, ["TapeSizeInBytes"] = true, ["TapeBarcode"] = true, ["RetrievedTo"] = true, ["TapeStatus"] = true, nil }

function asserts.AssertTapeArchive(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TapeArchive to be of type 'table'")
	if struct["TapeCreatedDate"] then asserts.AssertTime(struct["TapeCreatedDate"]) end
	if struct["TapeUsedInBytes"] then asserts.AssertTapeUsage(struct["TapeUsedInBytes"]) end
	if struct["TapeARN"] then asserts.AssertTapeARN(struct["TapeARN"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeCreatedDate [Time] <p>The date the virtual tape was created.</p>
-- * TapeUsedInBytes [TapeUsage] <p>The size, in bytes, of data stored on the virtual tape.</p> <note> <p>This value is not available for tapes created prior to May 13, 2015.</p> </note>
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of an archived virtual tape.</p>
-- * KMSKey [KMSKey] 
-- * CompletionTime [Time] <p>The time that the archiving of the virtual tape was completed.</p> <p>The default time stamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>
-- * TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the archived virtual tape.</p>
-- * TapeBarcode [TapeBarcode] <p>The barcode that identifies the archived virtual tape.</p>
-- * RetrievedTo [GatewayARN] <p>The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being retrieved to.</p> <p>The virtual tape is retrieved from the virtual tape shelf (VTS).</p>
-- * TapeStatus [TapeArchiveStatus] <p>The current state of the archived virtual tape.</p>
-- @return TapeArchive structure as a key-value pair table
function M.TapeArchive(args)
	assert(args, "You must provide an argument table when creating TapeArchive")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeCreatedDate"] = args["TapeCreatedDate"],
		["TapeUsedInBytes"] = args["TapeUsedInBytes"],
		["TapeARN"] = args["TapeARN"],
		["KMSKey"] = args["KMSKey"],
		["CompletionTime"] = args["CompletionTime"],
		["TapeSizeInBytes"] = args["TapeSizeInBytes"],
		["TapeBarcode"] = args["TapeBarcode"],
		["RetrievedTo"] = args["RetrievedTo"],
		["TapeStatus"] = args["TapeStatus"],
	}
	asserts.AssertTapeArchive(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return StartGatewayInput structure as a key-value pair table
function M.StartGatewayInput(args)
	assert(args, "You must provide an argument table when creating StartGatewayInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertStartGatewayInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NFSFileShareInfoList [NFSFileShareInfoList] <p>An array containing a description for each requested file share. </p>
-- @return DescribeNFSFileSharesOutput structure as a key-value pair table
function M.DescribeNFSFileSharesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeNFSFileSharesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NFSFileShareInfoList"] = args["NFSFileShareInfoList"],
	}
	asserts.AssertDescribeNFSFileSharesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the newly created file share. </p>
-- @return CreateNFSFileShareOutput structure as a key-value pair table
function M.CreateNFSFileShareOutput(args)
	assert(args, "You must provide an argument table when creating CreateNFSFileShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
	}
	asserts.AssertCreateNFSFileShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyWhenUploadedOutput = { ["FileShareARN"] = true, ["NotificationId"] = true, nil }

function asserts.AssertNotifyWhenUploadedOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyWhenUploadedOutput to be of type 'table'")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["NotificationId"] then asserts.AssertNotificationId(struct["NotificationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyWhenUploadedOutput[k], "NotifyWhenUploadedOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyWhenUploadedOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] 
-- * NotificationId [NotificationId] 
-- @return NotifyWhenUploadedOutput structure as a key-value pair table
function M.NotifyWhenUploadedOutput(args)
	assert(args, "You must provide an argument table when creating NotifyWhenUploadedOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["NotificationId"] = args["NotificationId"],
	}
	asserts.AssertNotifyWhenUploadedOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSMBFileSharesInput = { ["FileShareARNList"] = true, nil }

function asserts.AssertDescribeSMBFileSharesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSMBFileSharesInput to be of type 'table'")
	assert(struct["FileShareARNList"], "Expected key FileShareARNList to exist in table")
	if struct["FileShareARNList"] then asserts.AssertFileShareARNList(struct["FileShareARNList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSMBFileSharesInput[k], "DescribeSMBFileSharesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSMBFileSharesInput
-- <p>DescribeSMBFileSharesInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARNList [FileShareARNList] <p>An array containing the Amazon Resource Name (ARN) of each file share to be described. </p>
-- Required key: FileShareARNList
-- @return DescribeSMBFileSharesInput structure as a key-value pair table
function M.DescribeSMBFileSharesInput(args)
	assert(args, "You must provide an argument table when creating DescribeSMBFileSharesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARNList"] = args["FileShareARNList"],
	}
	asserts.AssertDescribeSMBFileSharesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * DiskIds [DiskIds] 
-- Required key: GatewayARN
-- Required key: DiskIds
-- @return AddUploadBufferInput structure as a key-value pair table
function M.AddUploadBufferInput(args)
	assert(args, "You must provide an argument table when creating AddUploadBufferInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["DiskIds"] = args["DiskIds"],
	}
	asserts.AssertAddUploadBufferInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval for.</p>
-- Required key: GatewayARN
-- Required key: TapeARN
-- @return CancelRetrievalInput structure as a key-value pair table
function M.CancelRetrievalInput(args)
	assert(args, "You must provide an argument table when creating CancelRetrievalInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertCancelRetrievalInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] 
-- * Gateways [Gateways] 
-- @return ListGatewaysOutput structure as a key-value pair table
function M.ListGatewaysOutput(args)
	assert(args, "You must provide an argument table when creating ListGatewaysOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Gateways"] = args["Gateways"],
	}
	asserts.AssertListGatewaysOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTapeWithBarcodeInput = { ["GatewayARN"] = true, ["KMSKey"] = true, ["TapeSizeInBytes"] = true, ["KMSEncrypted"] = true, ["TapeBarcode"] = true, nil }

function asserts.AssertCreateTapeWithBarcodeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTapeWithBarcodeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["TapeSizeInBytes"], "Expected key TapeSizeInBytes to exist in table")
	assert(struct["TapeBarcode"], "Expected key TapeBarcode to exist in table")
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["TapeSizeInBytes"] then asserts.AssertTapeSize(struct["TapeSizeInBytes"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	if struct["TapeBarcode"] then asserts.AssertTapeBarcode(struct["TapeBarcode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTapeWithBarcodeInput[k], "CreateTapeWithBarcodeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTapeWithBarcodeInput
-- <p>CreateTapeWithBarcodeInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the virtual tape with. Use the <a>ListGateways</a> operation to return a list of gateways for your account and region.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the AWS KMS Key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * TapeSizeInBytes [TapeSize] <p>The size, in bytes, of the virtual tape that you want to create.</p> <note> <p>The size must be aligned by gigabyte (1024*1024*1024 byte).</p> </note>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- * TapeBarcode [TapeBarcode] <p>The barcode that you want to assign to the tape.</p> <note> <p>Barcodes cannot be reused. This includes barcodes used for tapes that have been deleted.</p> </note>
-- Required key: GatewayARN
-- Required key: TapeSizeInBytes
-- Required key: TapeBarcode
-- @return CreateTapeWithBarcodeInput structure as a key-value pair table
function M.CreateTapeWithBarcodeInput(args)
	assert(args, "You must provide an argument table when creating CreateTapeWithBarcodeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["KMSKey"] = args["KMSKey"],
		["TapeSizeInBytes"] = args["TapeSizeInBytes"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["TapeBarcode"] = args["TapeBarcode"],
	}
	asserts.AssertCreateTapeWithBarcodeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeWorkingStorageInput structure as a key-value pair table
function M.DescribeWorkingStorageInput(args)
	assert(args, "You must provide an argument table when creating DescribeWorkingStorageInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeWorkingStorageInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecurrenceInHours [RecurrenceInHours] <p>Frequency of snapshots. Specify the number of hours between snapshots.</p>
-- * StartAt [HourOfDay] <p>The hour of the day at which the snapshot schedule begins represented as <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time zone of the gateway.</p>
-- * Description [Description] <p>Optional description of the snapshot that overwrites the existing description.</p>
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required key: VolumeARN
-- Required key: StartAt
-- Required key: RecurrenceInHours
-- @return UpdateSnapshotScheduleInput structure as a key-value pair table
function M.UpdateSnapshotScheduleInput(args)
	assert(args, "You must provide an argument table when creating UpdateSnapshotScheduleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecurrenceInHours"] = args["RecurrenceInHours"],
		["StartAt"] = args["StartAt"],
		["Description"] = args["Description"],
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertUpdateSnapshotScheduleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetARN [TargetARN] <p>Specifies the unique Amazon Resource Name (ARN) that encodes the iSCSI qualified name(iqn) of a tape drive or media changer target.</p>
-- * NetworkInterfaceId [NetworkInterfaceId] <p>The network interface identifier of the VTL device.</p>
-- * ChapEnabled [boolean] <p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>
-- * NetworkInterfacePort [integer] <p>The port used to communicate with iSCSI VTL device targets.</p>
-- @return DeviceiSCSIAttributes structure as a key-value pair table
function M.DeviceiSCSIAttributes(args)
	assert(args, "You must provide an argument table when creating DeviceiSCSIAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetARN"] = args["TargetARN"],
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["ChapEnabled"] = args["ChapEnabled"],
		["NetworkInterfacePort"] = args["NetworkInterfacePort"],
	}
	asserts.AssertDeviceiSCSIAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChapCredentials [ChapCredentials] <p>An array of <a>ChapInfo</a> objects that represent CHAP credentials. Each object in the array contains CHAP credential information for one target-initiator pair. If no CHAP credentials are set, an empty array is returned. CHAP credential information is provided in a JSON object with the following fields:</p> <ul> <li> <p> <b>InitiatorName</b>: The iSCSI initiator that connects to the target.</p> </li> <li> <p> <b>SecretToAuthenticateInitiator</b>: The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.</p> </li> <li> <p> <b>SecretToAuthenticateTarget</b>: The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).</p> </li> <li> <p> <b>TargetARN</b>: The Amazon Resource Name (ARN) of the storage volume.</p> </li> </ul>
-- @return DescribeChapCredentialsOutput structure as a key-value pair table
function M.DescribeChapCredentialsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeChapCredentialsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChapCredentials"] = args["ChapCredentials"],
	}
	asserts.AssertDescribeChapCredentialsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the updated file share. </p>
-- @return UpdateNFSFileShareOutput structure as a key-value pair table
function M.UpdateNFSFileShareOutput(args)
	assert(args, "You must provide an argument table when creating UpdateNFSFileShareOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
	}
	asserts.AssertUpdateNFSFileShareOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Describes Network File System (NFS) file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. This operation is only supported for file gateways.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OwnerId [PermissionId] <p>The default owner ID for files in the file share (unless the files have another owner ID specified). The default value is nfsnobody. </p>
-- * DirectoryMode [PermissionMode] <p>The Unix directory mode in the form "nnnn". For example, "0666" represents the default access mode for all directories inside the file share. The default value is 0777.</p>
-- * GroupId [PermissionId] <p>The default group ID for the file share (unless the files have another group ID specified). The default value is nfsnobody. </p>
-- * FileMode [PermissionMode] <p>The Unix file mode in the form "nnnn". For example, "0666" represents the default file mode inside the file share. The default value is 0666. </p>
-- @return NFSFileShareDefaults structure as a key-value pair table
function M.NFSFileShareDefaults(args)
	assert(args, "You must provide an argument table when creating NFSFileShareDefaults")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OwnerId"] = args["OwnerId"],
		["DirectoryMode"] = args["DirectoryMode"],
		["GroupId"] = args["GroupId"],
		["FileMode"] = args["FileMode"],
	}
	asserts.AssertNFSFileShareDefaults(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving for.</p>
-- Required key: GatewayARN
-- Required key: TapeARN
-- @return CancelArchivalInput structure as a key-value pair table
function M.CancelArchivalInput(args)
	assert(args, "You must provide an argument table when creating CancelArchivalInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertCancelArchivalInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return AddCacheOutput structure as a key-value pair table
function M.AddCacheOutput(args)
	assert(args, "You must provide an argument table when creating AddCacheOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertAddCacheOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeARNs [VolumeARNs] <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a stored volume. All of the specified stored volumes must from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
-- Required key: VolumeARNs
-- @return DescribeStorediSCSIVolumesInput structure as a key-value pair table
function M.DescribeStorediSCSIVolumesInput(args)
	assert(args, "You must provide an argument table when creating DescribeStorediSCSIVolumesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeARNs"] = args["VolumeARNs"],
	}
	asserts.AssertDescribeStorediSCSIVolumesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheUsedPercentage [double] 
-- * CacheMissPercentage [double] 
-- * CacheDirtyPercentage [double] 
-- * CacheHitPercentage [double] 
-- * CacheAllocatedInBytes [long] 
-- * GatewayARN [GatewayARN] 
-- * DiskIds [DiskIds] 
-- @return DescribeCacheOutput structure as a key-value pair table
function M.DescribeCacheOutput(args)
	assert(args, "You must provide an argument table when creating DescribeCacheOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheUsedPercentage"] = args["CacheUsedPercentage"],
		["CacheMissPercentage"] = args["CacheMissPercentage"],
		["CacheDirtyPercentage"] = args["CacheDirtyPercentage"],
		["CacheHitPercentage"] = args["CacheHitPercentage"],
		["CacheAllocatedInBytes"] = args["CacheAllocatedInBytes"],
		["GatewayARN"] = args["GatewayARN"],
		["DiskIds"] = args["DiskIds"],
	}
	asserts.AssertDescribeCacheOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>A unique Amazon Resource Name (ARN) that represents the virtual tape that was created.</p>
-- @return CreateTapeWithBarcodeOutput structure as a key-value pair table
function M.CreateTapeWithBarcodeOutput(args)
	assert(args, "You must provide an argument table when creating CreateTapeWithBarcodeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertCreateTapeWithBarcodeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string which can be used as part of a subsequent DescribeTapes call to retrieve the next page of results.</p> <p>If a response does not contain a marker, then there are no more results to be retrieved.</p>
-- * Tapes [Tapes] <p>An array of virtual tape descriptions.</p>
-- @return DescribeTapesOutput structure as a key-value pair table
function M.DescribeTapesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTapesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Tapes"] = args["Tapes"],
	}
	asserts.AssertDescribeTapesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HourOfDay [HourOfDay] <p>The hour component of the maintenance start time represented as <i>hh</i>, where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time zone of the gateway.</p>
-- * GatewayARN [GatewayARN] 
-- * DayOfWeek [DayOfWeek] <p>The maintenance start time day of the week represented as an ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.</p>
-- * MinuteOfHour [MinuteOfHour] <p>The minute component of the maintenance start time represented as <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The minute of the hour is in the time zone of the gateway.</p>
-- Required key: GatewayARN
-- Required key: HourOfDay
-- Required key: MinuteOfHour
-- Required key: DayOfWeek
-- @return UpdateMaintenanceStartTimeInput structure as a key-value pair table
function M.UpdateMaintenanceStartTimeInput(args)
	assert(args, "You must provide an argument table when creating UpdateMaintenanceStartTimeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HourOfDay"] = args["HourOfDay"],
		["GatewayARN"] = args["GatewayARN"],
		["DayOfWeek"] = args["DayOfWeek"],
		["MinuteOfHour"] = args["MinuteOfHour"],
	}
	asserts.AssertUpdateMaintenanceStartTimeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which the virtual tapes that were fetched for description ended. Use this marker in your next request to fetch the next set of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to describe, this field does not appear in the response.</p>
-- * TapeArchives [TapeArchives] <p>An array of virtual tape objects in the virtual tape shelf (VTS). The description includes of the Amazon Resource Name (ARN) of the virtual tapes. The information returned includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the tapes, progress of the description and tape barcode.</p>
-- @return DescribeTapeArchivesOutput structure as a key-value pair table
function M.DescribeTapeArchivesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeTapeArchivesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TapeArchives"] = args["TapeArchives"],
	}
	asserts.AssertDescribeTapeArchivesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the deleted virtual tape.</p>
-- @return DeleteTapeOutput structure as a key-value pair table
function M.DeleteTapeOutput(args)
	assert(args, "You must provide an argument table when creating DeleteTapeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertDeleteTapeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return StartGatewayOutput structure as a key-value pair table
function M.StartGatewayOutput(args)
	assert(args, "You must provide an argument table when creating StartGatewayOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertStartGatewayOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeBandwidthRateLimitInput structure as a key-value pair table
function M.DescribeBandwidthRateLimitInput(args)
	assert(args, "You must provide an argument table when creating DescribeBandwidthRateLimitInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeBandwidthRateLimitInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotId [SnapshotId] 
-- * VolumeARN [VolumeARN] 
-- * VolumeRecoveryPointTime [string] 
-- @return CreateSnapshotFromVolumeRecoveryPointOutput structure as a key-value pair table
function M.CreateSnapshotFromVolumeRecoveryPointOutput(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotFromVolumeRecoveryPointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotId"] = args["SnapshotId"],
		["VolumeARN"] = args["VolumeARN"],
		["VolumeRecoveryPointTime"] = args["VolumeRecoveryPointTime"],
	}
	asserts.AssertCreateSnapshotFromVolumeRecoveryPointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Ipv4Address [string] <p>The Internet Protocol version 4 (IPv4) address of the interface.</p>
-- * MacAddress [string] <p>The Media Access Control (MAC) address of the interface.</p> <note> <p>This is currently unsupported and will not be returned in output.</p> </note>
-- * Ipv6Address [string] <p>The Internet Protocol version 6 (IPv6) address of the interface. <i>Currently not supported</i>.</p>
-- @return NetworkInterface structure as a key-value pair table
function M.NetworkInterface(args)
	assert(args, "You must provide an argument table when creating NetworkInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Ipv4Address"] = args["Ipv4Address"],
		["MacAddress"] = args["MacAddress"],
		["Ipv6Address"] = args["Ipv6Address"],
	}
	asserts.AssertNetworkInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A JSON object containing the ID of the deleted gateway.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- @return DeleteGatewayOutput structure as a key-value pair table
function M.DeleteGatewayOutput(args)
	assert(args, "You must provide an argument table when creating DeleteGatewayOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDeleteGatewayOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>A string that indicates the position at which to begin the returned list of volumes. Obtain the marker from the response of a previous List iSCSI Volumes request.</p>
-- * GatewayARN [GatewayARN] 
-- * Limit [PositiveIntObject] <p>Specifies that the list of volumes returned be limited to the specified number of items.</p>
-- @return ListVolumesInput structure as a key-value pair table
function M.ListVolumesInput(args)
	assert(args, "You must provide an argument table when creating ListVolumesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListVolumesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- * DiskIds [DiskIds] <p>An array of the gateway's local disk IDs that are configured as working storage. Each local disk ID is specified as a string (minimum length of 1 and maximum length of 300). If no local disks are configured as working storage, then the DiskIds array is empty.</p>
-- * WorkingStorageAllocatedInBytes [long] <p>The total working storage in bytes allocated for the gateway. If no working storage is configured for the gateway, this field returns 0.</p>
-- * WorkingStorageUsedInBytes [long] <p>The total working storage in bytes in use by the gateway. If no working storage is configured for the gateway, this field returns 0.</p>
-- @return DescribeWorkingStorageOutput structure as a key-value pair table
function M.DescribeWorkingStorageOutput(args)
	assert(args, "You must provide an argument table when creating DescribeWorkingStorageOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
		["DiskIds"] = args["DiskIds"],
		["WorkingStorageAllocatedInBytes"] = args["WorkingStorageAllocatedInBytes"],
		["WorkingStorageUsedInBytes"] = args["WorkingStorageUsedInBytes"],
	}
	asserts.AssertDescribeWorkingStorageOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecurrenceInHours [RecurrenceInHours] 
-- * StartAt [HourOfDay] 
-- * Description [Description] 
-- * VolumeARN [VolumeARN] 
-- * Timezone [GatewayTimezone] 
-- @return DescribeSnapshotScheduleOutput structure as a key-value pair table
function M.DescribeSnapshotScheduleOutput(args)
	assert(args, "You must provide an argument table when creating DescribeSnapshotScheduleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecurrenceInHours"] = args["RecurrenceInHours"],
		["StartAt"] = args["StartAt"],
		["Description"] = args["Description"],
		["VolumeARN"] = args["VolumeARN"],
		["Timezone"] = args["Timezone"],
	}
	asserts.AssertDescribeSnapshotScheduleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotDescription [SnapshotDescription] <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic Block Store snapshots panel in the <b>Description</b> field, and in the AWS Storage Gateway snapshot <b>Details</b> pane, <b>Description</b> field</p>
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a> operation to return a list of gateway volumes.</p>
-- Required key: VolumeARN
-- Required key: SnapshotDescription
-- @return CreateSnapshotInput structure as a key-value pair table
function M.CreateSnapshotInput(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotDescription"] = args["SnapshotDescription"],
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertCreateSnapshotInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- * TargetARN [TargetARN] <p>he Amazon Resource Name (ARN) of the volume target that includes the iSCSI name that initiators can use to connect to the target.</p>
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the configured volume.</p>
-- @return CreateStorediSCSIVolumeOutput structure as a key-value pair table
function M.CreateStorediSCSIVolumeOutput(args)
	assert(args, "You must provide an argument table when creating CreateStorediSCSIVolumeOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInBytes"] = args["VolumeSizeInBytes"],
		["TargetARN"] = args["TargetARN"],
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertCreateStorediSCSIVolumeOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the retrieved virtual tape.</p>
-- @return RetrieveTapeArchiveOutput structure as a key-value pair table
function M.RetrieveTapeArchiveOutput(args)
	assert(args, "You must provide an argument table when creating RetrieveTapeArchiveOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertRetrieveTapeArchiveOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [Marker] <p>An opaque string that indicates the position at which to begin describing the VTL devices.</p>
-- * GatewayARN [GatewayARN] 
-- * Limit [PositiveIntObject] <p>Specifies that the number of VTL devices described be limited to the specified number.</p>
-- * VTLDeviceARNs [VTLDeviceARNs] <p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a VTL device.</p> <note> <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are specified, the result will contain all devices on the specified gateway.</p> </note>
-- Required key: GatewayARN
-- @return DescribeVTLDevicesInput structure as a key-value pair table
function M.DescribeVTLDevicesInput(args)
	assert(args, "You must provide an argument table when creating DescribeVTLDevicesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GatewayARN"] = args["GatewayARN"],
		["Limit"] = args["Limit"],
		["VTLDeviceARNs"] = args["VTLDeviceARNs"],
	}
	asserts.AssertDescribeVTLDevicesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was retrieved.</p>
-- @return RetrieveTapeRecoveryPointOutput structure as a key-value pair table
function M.RetrieveTapeRecoveryPointOutput(args)
	assert(args, "You must provide an argument table when creating RetrieveTapeRecoveryPointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertRetrieveTapeRecoveryPointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateNFSFileShareInput = { ["FileShareARN"] = true, ["DefaultStorageClass"] = true, ["Squash"] = true, ["GuessMIMETypeEnabled"] = true, ["NFSFileShareDefaults"] = true, ["KMSKey"] = true, ["ReadOnly"] = true, ["ObjectACL"] = true, ["ClientList"] = true, ["KMSEncrypted"] = true, ["RequesterPays"] = true, nil }

function asserts.AssertUpdateNFSFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNFSFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["Squash"] then asserts.AssertSquash(struct["Squash"]) end
	if struct["GuessMIMETypeEnabled"] then asserts.AssertBoolean(struct["GuessMIMETypeEnabled"]) end
	if struct["NFSFileShareDefaults"] then asserts.AssertNFSFileShareDefaults(struct["NFSFileShareDefaults"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["ObjectACL"] then asserts.AssertObjectACL(struct["ObjectACL"]) end
	if struct["ClientList"] then asserts.AssertFileShareClientList(struct["ClientList"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	if struct["RequesterPays"] then asserts.AssertBoolean(struct["RequesterPays"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNFSFileShareInput[k], "UpdateNFSFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNFSFileShareInput
-- <p>UpdateNFSFileShareInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the file share to be updated. </p>
-- * DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are <code>S3_STANDARD</code>, <code>S3_STANDARD_IA</code>, or <code>S3_ONEZONE_IA</code>. If this field is not populated, the default value <code>S3_STANDARD</code> is used. Optional.</p>
-- * Squash [Squash] <p>The user mapped to anonymous user. Valid options are the following:</p> <ul> <li> <p> <code>RootSquash</code> - Only root is mapped to anonymous user.</p> </li> <li> <p> <code>NoSquash</code> - No one is mapped to anonymous user</p> </li> <li> <p> <code>AllSquash</code> - Everyone is mapped to anonymous user.</p> </li> </ul>
-- * GuessMIMETypeEnabled [Boolean] <p>A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.</p>
-- * NFSFileShareDefaults [NFSFileShareDefaults] <p>The default values for the file share. Optional.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional. </p>
-- * ReadOnly [Boolean] <p>A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.</p>
-- * ObjectACL [ObjectACL] <p>A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>
-- * ClientList [FileShareClientList] <p>The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks.</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional. </p>
-- * RequesterPays [Boolean] <p>A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is <code>private</code>.</p>
-- Required key: FileShareARN
-- @return UpdateNFSFileShareInput structure as a key-value pair table
function M.UpdateNFSFileShareInput(args)
	assert(args, "You must provide an argument table when creating UpdateNFSFileShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["DefaultStorageClass"] = args["DefaultStorageClass"],
		["Squash"] = args["Squash"],
		["GuessMIMETypeEnabled"] = args["GuessMIMETypeEnabled"],
		["NFSFileShareDefaults"] = args["NFSFileShareDefaults"],
		["KMSKey"] = args["KMSKey"],
		["ReadOnly"] = args["ReadOnly"],
		["ObjectACL"] = args["ObjectACL"],
		["ClientList"] = args["ClientList"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["RequesterPays"] = args["RequesterPays"],
	}
	asserts.AssertUpdateNFSFileShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStorediSCSIVolumeInput = { ["NetworkInterfaceId"] = true, ["KMSKey"] = true, ["SnapshotId"] = true, ["GatewayARN"] = true, ["PreserveExistingData"] = true, ["TargetName"] = true, ["KMSEncrypted"] = true, ["DiskId"] = true, nil }

function asserts.AssertCreateStorediSCSIVolumeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStorediSCSIVolumeInput to be of type 'table'")
	assert(struct["GatewayARN"], "Expected key GatewayARN to exist in table")
	assert(struct["DiskId"], "Expected key DiskId to exist in table")
	assert(struct["PreserveExistingData"], "Expected key PreserveExistingData to exist in table")
	assert(struct["TargetName"], "Expected key TargetName to exist in table")
	assert(struct["NetworkInterfaceId"], "Expected key NetworkInterfaceId to exist in table")
	if struct["NetworkInterfaceId"] then asserts.AssertNetworkInterfaceId(struct["NetworkInterfaceId"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["PreserveExistingData"] then asserts.Assertboolean(struct["PreserveExistingData"]) end
	if struct["TargetName"] then asserts.AssertTargetName(struct["TargetName"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	if struct["DiskId"] then asserts.AssertDiskId(struct["DiskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStorediSCSIVolumeInput[k], "CreateStorediSCSIVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStorediSCSIVolumeInput
-- <p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NetworkInterfaceId [NetworkInterfaceId] <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of the network interfaces available on a gateway.</p> <p> Valid Values: A valid IP address.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * SnapshotId [SnapshotId] <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new stored volume. Specify this field if you want to create the iSCSI storage volume from a snapshot otherwise do not include this field. To list snapshots for your account use <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
-- * GatewayARN [GatewayARN] 
-- * PreserveExistingData [boolean] <p>Specify this field as true if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.</p> <p> Valid Values: true, false</p>
-- * TargetName [TargetName] <p>The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. For example, specifying <code>TargetName</code> as <i>myvolume</i> results in the target ARN of arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume. The target name must be unique across all volumes of a gateway.</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- * DiskId [DiskId] <p>The unique identifier for the gateway local disk that is configured as a stored volume. Use <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html">ListLocalDisks</a> to list disk IDs for a gateway.</p>
-- Required key: GatewayARN
-- Required key: DiskId
-- Required key: PreserveExistingData
-- Required key: TargetName
-- Required key: NetworkInterfaceId
-- @return CreateStorediSCSIVolumeInput structure as a key-value pair table
function M.CreateStorediSCSIVolumeInput(args)
	assert(args, "You must provide an argument table when creating CreateStorediSCSIVolumeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["KMSKey"] = args["KMSKey"],
		["SnapshotId"] = args["SnapshotId"],
		["GatewayARN"] = args["GatewayARN"],
		["PreserveExistingData"] = args["PreserveExistingData"],
		["TargetName"] = args["TargetName"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["DiskId"] = args["DiskId"],
	}
	asserts.AssertCreateStorediSCSIVolumeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TapeARN [TapeARN] <p>The Amazon Resource Name (ARN) of the virtual tape for which archiving was canceled.</p>
-- @return CancelArchivalOutput structure as a key-value pair table
function M.CancelArchivalOutput(args)
	assert(args, "You must provide an argument table when creating CancelArchivalOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TapeARN"] = args["TapeARN"],
	}
	asserts.AssertCancelArchivalOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCachediSCSIVolumeInput = { ["VolumeSizeInBytes"] = true, ["NetworkInterfaceId"] = true, ["ClientToken"] = true, ["SnapshotId"] = true, ["KMSKey"] = true, ["SourceVolumeARN"] = true, ["GatewayARN"] = true, ["TargetName"] = true, ["KMSEncrypted"] = true, nil }

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
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["SourceVolumeARN"] then asserts.AssertVolumeARN(struct["SourceVolumeARN"]) end
	if struct["GatewayARN"] then asserts.AssertGatewayARN(struct["GatewayARN"]) end
	if struct["TargetName"] then asserts.AssertTargetName(struct["TargetName"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCachediSCSIVolumeInput[k], "CreateCachediSCSIVolumeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCachediSCSIVolumeInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeSizeInBytes [long] <p>The size of the volume in bytes.</p>
-- * NetworkInterfaceId [NetworkInterfaceId] <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of the network interfaces available on a gateway.</p> <p> Valid Values: A valid IP address.</p>
-- * ClientToken [ClientToken] <p>A unique identifier that you use to retry a request. If you retry a request, use the same <code>ClientToken</code> you specified in the initial request.</p>
-- * SnapshotId [SnapshotId] <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached volume. Specify this field if you want to create the iSCSI storage volume from a snapshot otherwise do not include this field. To list snapshots for your account use <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * SourceVolumeARN [VolumeARN] <p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than the size of the existing volume, in bytes.</p>
-- * GatewayARN [GatewayARN] 
-- * TargetName [TargetName] <p>The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. For example, specifying <code>TargetName</code> as <i>myvolume</i> results in the target ARN of arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume. The target name must be unique across all volumes of a gateway.</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- Required key: GatewayARN
-- Required key: VolumeSizeInBytes
-- Required key: TargetName
-- Required key: NetworkInterfaceId
-- Required key: ClientToken
-- @return CreateCachediSCSIVolumeInput structure as a key-value pair table
function M.CreateCachediSCSIVolumeInput(args)
	assert(args, "You must provide an argument table when creating CreateCachediSCSIVolumeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeSizeInBytes"] = args["VolumeSizeInBytes"],
		["NetworkInterfaceId"] = args["NetworkInterfaceId"],
		["ClientToken"] = args["ClientToken"],
		["SnapshotId"] = args["SnapshotId"],
		["KMSKey"] = args["KMSKey"],
		["SourceVolumeARN"] = args["SourceVolumeARN"],
		["GatewayARN"] = args["GatewayARN"],
		["TargetName"] = args["TargetName"],
		["KMSEncrypted"] = args["KMSEncrypted"],
	}
	asserts.AssertCreateCachediSCSIVolumeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSMBFileShareInput = { ["FileShareARN"] = true, ["ValidUserList"] = true, ["DefaultStorageClass"] = true, ["ReadOnly"] = true, ["GuessMIMETypeEnabled"] = true, ["InvalidUserList"] = true, ["KMSKey"] = true, ["ObjectACL"] = true, ["KMSEncrypted"] = true, ["RequesterPays"] = true, nil }

function asserts.AssertUpdateSMBFileShareInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSMBFileShareInput to be of type 'table'")
	assert(struct["FileShareARN"], "Expected key FileShareARN to exist in table")
	if struct["FileShareARN"] then asserts.AssertFileShareARN(struct["FileShareARN"]) end
	if struct["ValidUserList"] then asserts.AssertFileShareUserList(struct["ValidUserList"]) end
	if struct["DefaultStorageClass"] then asserts.AssertStorageClass(struct["DefaultStorageClass"]) end
	if struct["ReadOnly"] then asserts.AssertBoolean(struct["ReadOnly"]) end
	if struct["GuessMIMETypeEnabled"] then asserts.AssertBoolean(struct["GuessMIMETypeEnabled"]) end
	if struct["InvalidUserList"] then asserts.AssertFileShareUserList(struct["InvalidUserList"]) end
	if struct["KMSKey"] then asserts.AssertKMSKey(struct["KMSKey"]) end
	if struct["ObjectACL"] then asserts.AssertObjectACL(struct["ObjectACL"]) end
	if struct["KMSEncrypted"] then asserts.AssertBoolean(struct["KMSEncrypted"]) end
	if struct["RequesterPays"] then asserts.AssertBoolean(struct["RequesterPays"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSMBFileShareInput[k], "UpdateSMBFileShareInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSMBFileShareInput
-- <p>UpdateSMBFileShareInput</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FileShareARN [FileShareARN] <p>The Amazon Resource Name (ARN) of the SMB file share that you want to update.</p>
-- * ValidUserList [FileShareUserList] <p>A list of users or groups in the Active Directory that are allowed to access the file share. A group must be prefixed with the @ character. For example <code>@group1</code>. Can only be set if Authentication is set to <code>ActiveDirectory</code>.</p>
-- * DefaultStorageClass [StorageClass] <p>The default storage class for objects put into an Amazon S3 bucket by the file gateway. Possible values are <code>S3_STANDARD</code>, <code>S3_STANDARD_IA</code>, or <code>S3_ONEZONE_IA</code>. If this field is not populated, the default value <code>S3_STANDARD</code> is used. Optional.</p>
-- * ReadOnly [Boolean] <p>A value that sets the write status of a file share. This value is true if the write status is read-only, and otherwise false.</p>
-- * GuessMIMETypeEnabled [Boolean] <p>A value that enables guessing of the MIME type for uploaded objects based on file extensions. Set this value to true to enable MIME type guessing, and otherwise to false. The default value is true.</p>
-- * InvalidUserList [FileShareUserList] <p>A list of users or groups in the Active Directory that are not allowed to access the file share. A group must be prefixed with the @ character. For example <code>@group1</code>. Can only be set if Authentication is set to <code>ActiveDirectory</code>.</p>
-- * KMSKey [KMSKey] <p>The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
-- * ObjectACL [ObjectACL] <p>A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>
-- * KMSEncrypted [Boolean] <p>True to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional.</p>
-- * RequesterPays [Boolean] <p>A value that sets the access control list permission for objects in the Amazon S3 bucket that a file gateway puts objects into. The default value is <code>private</code>.</p>
-- Required key: FileShareARN
-- @return UpdateSMBFileShareInput structure as a key-value pair table
function M.UpdateSMBFileShareInput(args)
	assert(args, "You must provide an argument table when creating UpdateSMBFileShareInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FileShareARN"] = args["FileShareARN"],
		["ValidUserList"] = args["ValidUserList"],
		["DefaultStorageClass"] = args["DefaultStorageClass"],
		["ReadOnly"] = args["ReadOnly"],
		["GuessMIMETypeEnabled"] = args["GuessMIMETypeEnabled"],
		["InvalidUserList"] = args["InvalidUserList"],
		["KMSKey"] = args["KMSKey"],
		["ObjectACL"] = args["ObjectACL"],
		["KMSEncrypted"] = args["KMSEncrypted"],
		["RequesterPays"] = args["RequesterPays"],
	}
	asserts.AssertUpdateSMBFileShareInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotId [SnapshotId] <p>The snapshot ID that is used to refer to the snapshot in future operations such as describing snapshots (Amazon Elastic Compute Cloud API <code>DescribeSnapshots</code>) or creating a volume from a snapshot (<a>CreateStorediSCSIVolume</a>).</p>
-- * VolumeARN [VolumeARN] <p>The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.</p>
-- @return CreateSnapshotOutput structure as a key-value pair table
function M.CreateSnapshotOutput(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotId"] = args["SnapshotId"],
		["VolumeARN"] = args["VolumeARN"],
	}
	asserts.AssertCreateSnapshotOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GatewayARN [GatewayARN] 
-- Required key: GatewayARN
-- @return DescribeMaintenanceStartTimeInput structure as a key-value pair table
function M.DescribeMaintenanceStartTimeInput(args)
	assert(args, "You must provide an argument table when creating DescribeMaintenanceStartTimeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GatewayARN"] = args["GatewayARN"],
	}
	asserts.AssertDescribeMaintenanceStartTimeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

-- <p>The status of the file share. Possible values are <code>CREATING</code>, <code>UPDATING</code>, <code>AVAILABLE</code> and <code>DELETING</code>. </p>
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

function asserts.AssertTapeArchiveStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TapeArchiveStatus to be of type 'string'")
end

--  
function M.TapeArchiveStatus(str)
	asserts.AssertTapeArchiveStatus(str)
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

function asserts.AssertAuthentication(str)
	assert(str)
	assert(type(str) == "string", "Expected Authentication to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

-- <p>The authentication method of the file share.</p> <p>Valid values are <code>ActiveDirectory</code> or <code>GuestAccess</code>. The default is <code>ActiveDirectory</code>.</p>
function M.Authentication(str)
	asserts.AssertAuthentication(str)
	return str
end

function asserts.AssertDomainUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainUserName to be of type 'string'")
end

--  
function M.DomainUserName(str)
	asserts.AssertDomainUserName(str)
	return str
end

function asserts.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
end

--  
function M.DomainName(str)
	asserts.AssertDomainName(str)
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

-- <p>The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when KMSEncrypted is true. Optional.</p>
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

function asserts.AssertFileShareUser(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareUser to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FileShareUser(str)
	asserts.AssertFileShareUser(str)
	return str
end

function asserts.AssertSquash(str)
	assert(str)
	assert(type(str) == "string", "Expected Squash to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

-- <p>The user mapped to anonymous user. Valid options are the following: </p> <ul> <li> <p> <code>RootSquash</code> - Only root is mapped to anonymous user.</p> </li> <li> <p> <code>NoSquash</code> - No one is mapped to anonymous user</p> </li> <li> <p> <code>AllSquash</code> - Everyone is mapped to anonymous user.</p> </li> </ul>
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

function asserts.AssertFileShareType(str)
	assert(str)
	assert(type(str) == "string", "Expected FileShareType to be of type 'string'")
end

-- <p>The type of the file share.</p>
function M.FileShareType(str)
	asserts.AssertFileShareType(str)
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

function asserts.AssertSMBGuestPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected SMBGuestPassword to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.SMBGuestPassword(str)
	asserts.AssertSMBGuestPassword(str)
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

function asserts.AssertObjectACL(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectACL to be of type 'string'")
end

-- <p>A value that sets the access control list permission for objects in the S3 bucket that a file gateway puts objects into. The default value is "private".</p>
function M.ObjectACL(str)
	asserts.AssertObjectACL(str)
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

function asserts.AssertDomainUserPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainUserPassword to be of type 'string'")
end

--  
function M.DomainUserPassword(str)
	asserts.AssertDomainUserPassword(str)
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

function asserts.AssertFolder(str)
	assert(str)
	assert(type(str) == "string", "Expected Folder to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Folder(str)
	asserts.AssertFolder(str)
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

function asserts.AssertVTLDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected VTLDeviceType to be of type 'string'")
end

--  
function M.VTLDeviceType(str)
	asserts.AssertVTLDeviceType(str)
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

function asserts.AssertNotificationId(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The randomly generated ID of the notification that was sent. This ID is in UUID format.</p>
function M.NotificationId(str)
	asserts.AssertNotificationId(str)
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

function asserts.AssertBandwidthDownloadRateLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected BandwidthDownloadRateLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BandwidthDownloadRateLimit(long)
	asserts.AssertBandwidthDownloadRateLimit(long)
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

function asserts.AssertVolumeUsedInBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected VolumeUsedInBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.VolumeUsedInBytes(long)
	asserts.AssertVolumeUsedInBytes(long)
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

function asserts.AssertPermissionId(long)
	assert(long)
	assert(type(long) == "number", "Expected PermissionId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PermissionId(long)
	asserts.AssertPermissionId(long)
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

function asserts.AssertSMBFileShareInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected SMBFileShareInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSMBFileShareInfo(v)
	end
end

--  
-- List of SMBFileShareInfo objects
function M.SMBFileShareInfoList(list)
	asserts.AssertSMBFileShareInfoList(list)
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

function asserts.AssertFileShareUserList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileShareUserList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertFileShareUser(v)
	end
end

--  
-- List of FileShareUser objects
function M.FileShareUserList(list)
	asserts.AssertFileShareUserList(list)
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

function asserts.AssertFolderList(list)
	assert(list)
	assert(type(list) == "table", "Expected FolderList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertFolder(v)
	end
end

-- <p>A comma-separated list of the paths of folders to refresh in the cache. The default is [<code>"/"</code>]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If <code>Recursive</code> is set to "true", the entire S3 bucket that the file share has access to is refreshed.</p>
-- List of Folder objects
function M.FolderList(list)
	asserts.AssertFolderList(list)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call UpdateSMBFileShare asynchronously, invoking a callback when done
-- @param UpdateSMBFileShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSMBFileShareAsync(UpdateSMBFileShareInput, cb)
	assert(UpdateSMBFileShareInput, "You must provide a UpdateSMBFileShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateSMBFileShare",
	}
	for header,value in pairs(UpdateSMBFileShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSMBFileShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSMBFileShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSMBFileShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSMBFileShareSync(UpdateSMBFileShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSMBFileShareAsync(UpdateSMBFileShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSnapshotSchedule asynchronously, invoking a callback when done
-- @param DescribeSnapshotScheduleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSnapshotScheduleAsync(DescribeSnapshotScheduleInput, cb)
	assert(DescribeSnapshotScheduleInput, "You must provide a DescribeSnapshotScheduleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeSnapshotSchedule",
	}
	for header,value in pairs(DescribeSnapshotScheduleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSnapshotScheduleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSnapshotSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSnapshotScheduleInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSnapshotScheduleSync(DescribeSnapshotScheduleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSnapshotScheduleAsync(DescribeSnapshotScheduleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNFSFileShare asynchronously, invoking a callback when done
-- @param UpdateNFSFileShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNFSFileShareAsync(UpdateNFSFileShareInput, cb)
	assert(UpdateNFSFileShareInput, "You must provide a UpdateNFSFileShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateNFSFileShare",
	}
	for header,value in pairs(UpdateNFSFileShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNFSFileShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNFSFileShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNFSFileShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNFSFileShareSync(UpdateNFSFileShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNFSFileShareAsync(UpdateNFSFileShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTapeArchives asynchronously, invoking a callback when done
-- @param DescribeTapeArchivesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTapeArchivesAsync(DescribeTapeArchivesInput, cb)
	assert(DescribeTapeArchivesInput, "You must provide a DescribeTapeArchivesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeTapeArchives",
	}
	for header,value in pairs(DescribeTapeArchivesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTapeArchivesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTapeArchives synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTapeArchivesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTapeArchivesSync(DescribeTapeArchivesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTapeArchivesAsync(DescribeTapeArchivesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFileShare asynchronously, invoking a callback when done
-- @param DeleteFileShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFileShareAsync(DeleteFileShareInput, cb)
	assert(DeleteFileShareInput, "You must provide a DeleteFileShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteFileShare",
	}
	for header,value in pairs(DeleteFileShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteFileShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFileShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFileShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFileShareSync(DeleteFileShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFileShareAsync(DeleteFileShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RefreshCache asynchronously, invoking a callback when done
-- @param RefreshCacheInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RefreshCacheAsync(RefreshCacheInput, cb)
	assert(RefreshCacheInput, "You must provide a RefreshCacheInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RefreshCache",
	}
	for header,value in pairs(RefreshCacheInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RefreshCacheInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RefreshCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RefreshCacheInput
-- @return response
-- @return error_type
-- @return error_message
function M.RefreshCacheSync(RefreshCacheInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RefreshCacheAsync(RefreshCacheInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceStartTime asynchronously, invoking a callback when done
-- @param DescribeMaintenanceStartTimeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMaintenanceStartTimeAsync(DescribeMaintenanceStartTimeInput, cb)
	assert(DescribeMaintenanceStartTimeInput, "You must provide a DescribeMaintenanceStartTimeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeMaintenanceStartTime",
	}
	for header,value in pairs(DescribeMaintenanceStartTimeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceStartTimeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceStartTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceStartTimeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMaintenanceStartTimeSync(DescribeMaintenanceStartTimeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceStartTimeAsync(DescribeMaintenanceStartTimeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGatewayInformation asynchronously, invoking a callback when done
-- @param DescribeGatewayInformationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeGatewayInformationAsync(DescribeGatewayInformationInput, cb)
	assert(DescribeGatewayInformationInput, "You must provide a DescribeGatewayInformationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeGatewayInformation",
	}
	for header,value in pairs(DescribeGatewayInformationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGatewayInformationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGatewayInformation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGatewayInformationInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeGatewayInformationSync(DescribeGatewayInformationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGatewayInformationAsync(DescribeGatewayInformationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGatewayInformation asynchronously, invoking a callback when done
-- @param UpdateGatewayInformationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGatewayInformationAsync(UpdateGatewayInformationInput, cb)
	assert(UpdateGatewayInformationInput, "You must provide a UpdateGatewayInformationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateGatewayInformation",
	}
	for header,value in pairs(UpdateGatewayInformationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGatewayInformationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGatewayInformation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGatewayInformationInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGatewayInformationSync(UpdateGatewayInformationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGatewayInformationAsync(UpdateGatewayInformationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableGateway asynchronously, invoking a callback when done
-- @param DisableGatewayInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableGatewayAsync(DisableGatewayInput, cb)
	assert(DisableGatewayInput, "You must provide a DisableGatewayInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DisableGateway",
	}
	for header,value in pairs(DisableGatewayInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableGatewayInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableGatewayInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisableGatewaySync(DisableGatewayInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableGatewayAsync(DisableGatewayInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSMBFileShare asynchronously, invoking a callback when done
-- @param CreateSMBFileShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSMBFileShareAsync(CreateSMBFileShareInput, cb)
	assert(CreateSMBFileShareInput, "You must provide a CreateSMBFileShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateSMBFileShare",
	}
	for header,value in pairs(CreateSMBFileShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSMBFileShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSMBFileShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSMBFileShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSMBFileShareSync(CreateSMBFileShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSMBFileShareAsync(CreateSMBFileShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSMBSettings asynchronously, invoking a callback when done
-- @param DescribeSMBSettingsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSMBSettingsAsync(DescribeSMBSettingsInput, cb)
	assert(DescribeSMBSettingsInput, "You must provide a DescribeSMBSettingsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeSMBSettings",
	}
	for header,value in pairs(DescribeSMBSettingsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSMBSettingsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSMBSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSMBSettingsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSMBSettingsSync(DescribeSMBSettingsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSMBSettingsAsync(DescribeSMBSettingsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFileShares asynchronously, invoking a callback when done
-- @param ListFileSharesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFileSharesAsync(ListFileSharesInput, cb)
	assert(ListFileSharesInput, "You must provide a ListFileSharesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListFileShares",
	}
	for header,value in pairs(ListFileSharesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListFileSharesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFileShares synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFileSharesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListFileSharesSync(ListFileSharesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFileSharesAsync(ListFileSharesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMaintenanceStartTime asynchronously, invoking a callback when done
-- @param UpdateMaintenanceStartTimeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateMaintenanceStartTimeAsync(UpdateMaintenanceStartTimeInput, cb)
	assert(UpdateMaintenanceStartTimeInput, "You must provide a UpdateMaintenanceStartTimeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateMaintenanceStartTime",
	}
	for header,value in pairs(UpdateMaintenanceStartTimeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateMaintenanceStartTimeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateMaintenanceStartTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMaintenanceStartTimeInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateMaintenanceStartTimeSync(UpdateMaintenanceStartTimeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMaintenanceStartTimeAsync(UpdateMaintenanceStartTimeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTapes asynchronously, invoking a callback when done
-- @param CreateTapesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTapesAsync(CreateTapesInput, cb)
	assert(CreateTapesInput, "You must provide a CreateTapesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateTapes",
	}
	for header,value in pairs(CreateTapesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTapesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTapes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTapesInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTapesSync(CreateTapesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTapesAsync(CreateTapesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call NotifyWhenUploaded asynchronously, invoking a callback when done
-- @param NotifyWhenUploadedInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.NotifyWhenUploadedAsync(NotifyWhenUploadedInput, cb)
	assert(NotifyWhenUploadedInput, "You must provide a NotifyWhenUploadedInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.NotifyWhenUploaded",
	}
	for header,value in pairs(NotifyWhenUploadedInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", NotifyWhenUploadedInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call NotifyWhenUploaded synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param NotifyWhenUploadedInput
-- @return response
-- @return error_type
-- @return error_message
function M.NotifyWhenUploadedSync(NotifyWhenUploadedInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.NotifyWhenUploadedAsync(NotifyWhenUploadedInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCachediSCSIVolume asynchronously, invoking a callback when done
-- @param CreateCachediSCSIVolumeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCachediSCSIVolumeAsync(CreateCachediSCSIVolumeInput, cb)
	assert(CreateCachediSCSIVolumeInput, "You must provide a CreateCachediSCSIVolumeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateCachediSCSIVolume",
	}
	for header,value in pairs(CreateCachediSCSIVolumeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCachediSCSIVolumeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCachediSCSIVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCachediSCSIVolumeInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCachediSCSIVolumeSync(CreateCachediSCSIVolumeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCachediSCSIVolumeAsync(CreateCachediSCSIVolumeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTapeWithBarcode asynchronously, invoking a callback when done
-- @param CreateTapeWithBarcodeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTapeWithBarcodeAsync(CreateTapeWithBarcodeInput, cb)
	assert(CreateTapeWithBarcodeInput, "You must provide a CreateTapeWithBarcodeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateTapeWithBarcode",
	}
	for header,value in pairs(CreateTapeWithBarcodeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTapeWithBarcodeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTapeWithBarcode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTapeWithBarcodeInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTapeWithBarcodeSync(CreateTapeWithBarcodeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTapeWithBarcodeAsync(CreateTapeWithBarcodeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeChapCredentials asynchronously, invoking a callback when done
-- @param DescribeChapCredentialsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeChapCredentialsAsync(DescribeChapCredentialsInput, cb)
	assert(DescribeChapCredentialsInput, "You must provide a DescribeChapCredentialsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeChapCredentials",
	}
	for header,value in pairs(DescribeChapCredentialsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeChapCredentialsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeChapCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeChapCredentialsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeChapCredentialsSync(DescribeChapCredentialsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeChapCredentialsAsync(DescribeChapCredentialsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLocalDisks asynchronously, invoking a callback when done
-- @param ListLocalDisksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListLocalDisksAsync(ListLocalDisksInput, cb)
	assert(ListLocalDisksInput, "You must provide a ListLocalDisksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListLocalDisks",
	}
	for header,value in pairs(ListLocalDisksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListLocalDisksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLocalDisks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLocalDisksInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListLocalDisksSync(ListLocalDisksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLocalDisksAsync(ListLocalDisksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGatewaySoftwareNow asynchronously, invoking a callback when done
-- @param UpdateGatewaySoftwareNowInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGatewaySoftwareNowAsync(UpdateGatewaySoftwareNowInput, cb)
	assert(UpdateGatewaySoftwareNowInput, "You must provide a UpdateGatewaySoftwareNowInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateGatewaySoftwareNow",
	}
	for header,value in pairs(UpdateGatewaySoftwareNowInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGatewaySoftwareNowInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGatewaySoftwareNow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGatewaySoftwareNowInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGatewaySoftwareNowSync(UpdateGatewaySoftwareNowInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGatewaySoftwareNowAsync(UpdateGatewaySoftwareNowInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetCache asynchronously, invoking a callback when done
-- @param ResetCacheInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetCacheAsync(ResetCacheInput, cb)
	assert(ResetCacheInput, "You must provide a ResetCacheInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ResetCache",
	}
	for header,value in pairs(ResetCacheInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetCacheInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetCacheInput
-- @return response
-- @return error_type
-- @return error_message
function M.ResetCacheSync(ResetCacheInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetCacheAsync(ResetCacheInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceInput, cb)
	assert(AddTagsToResourceInput, "You must provide a AddTagsToResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddTagsToResource",
	}
	for header,value in pairs(AddTagsToResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsToResourceSync(AddTagsToResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(AddTagsToResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RetrieveTapeArchive asynchronously, invoking a callback when done
-- @param RetrieveTapeArchiveInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RetrieveTapeArchiveAsync(RetrieveTapeArchiveInput, cb)
	assert(RetrieveTapeArchiveInput, "You must provide a RetrieveTapeArchiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RetrieveTapeArchive",
	}
	for header,value in pairs(RetrieveTapeArchiveInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RetrieveTapeArchiveInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RetrieveTapeArchive synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RetrieveTapeArchiveInput
-- @return response
-- @return error_type
-- @return error_message
function M.RetrieveTapeArchiveSync(RetrieveTapeArchiveInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RetrieveTapeArchiveAsync(RetrieveTapeArchiveInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call JoinDomain asynchronously, invoking a callback when done
-- @param JoinDomainInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.JoinDomainAsync(JoinDomainInput, cb)
	assert(JoinDomainInput, "You must provide a JoinDomainInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.JoinDomain",
	}
	for header,value in pairs(JoinDomainInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", JoinDomainInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call JoinDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param JoinDomainInput
-- @return response
-- @return error_type
-- @return error_message
function M.JoinDomainSync(JoinDomainInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.JoinDomainAsync(JoinDomainInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBandwidthRateLimit asynchronously, invoking a callback when done
-- @param UpdateBandwidthRateLimitInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateBandwidthRateLimitAsync(UpdateBandwidthRateLimitInput, cb)
	assert(UpdateBandwidthRateLimitInput, "You must provide a UpdateBandwidthRateLimitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateBandwidthRateLimit",
	}
	for header,value in pairs(UpdateBandwidthRateLimitInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateBandwidthRateLimitInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBandwidthRateLimit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBandwidthRateLimitInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateBandwidthRateLimitSync(UpdateBandwidthRateLimitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBandwidthRateLimitAsync(UpdateBandwidthRateLimitInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetLocalConsolePassword asynchronously, invoking a callback when done
-- @param SetLocalConsolePasswordInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetLocalConsolePasswordAsync(SetLocalConsolePasswordInput, cb)
	assert(SetLocalConsolePasswordInput, "You must provide a SetLocalConsolePasswordInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.SetLocalConsolePassword",
	}
	for header,value in pairs(SetLocalConsolePasswordInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetLocalConsolePasswordInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetLocalConsolePassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetLocalConsolePasswordInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetLocalConsolePasswordSync(SetLocalConsolePasswordInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLocalConsolePasswordAsync(SetLocalConsolePasswordInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVolumeInitiators asynchronously, invoking a callback when done
-- @param ListVolumeInitiatorsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVolumeInitiatorsAsync(ListVolumeInitiatorsInput, cb)
	assert(ListVolumeInitiatorsInput, "You must provide a ListVolumeInitiatorsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListVolumeInitiators",
	}
	for header,value in pairs(ListVolumeInitiatorsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListVolumeInitiatorsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVolumeInitiators synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVolumeInitiatorsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListVolumeInitiatorsSync(ListVolumeInitiatorsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVolumeInitiatorsAsync(ListVolumeInitiatorsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceInput, cb)
	assert(RemoveTagsFromResourceInput, "You must provide a RemoveTagsFromResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RemoveTagsFromResource",
	}
	for header,value in pairs(RemoveTagsFromResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsFromResourceSync(RemoveTagsFromResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSnapshotFromVolumeRecoveryPoint asynchronously, invoking a callback when done
-- @param CreateSnapshotFromVolumeRecoveryPointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSnapshotFromVolumeRecoveryPointAsync(CreateSnapshotFromVolumeRecoveryPointInput, cb)
	assert(CreateSnapshotFromVolumeRecoveryPointInput, "You must provide a CreateSnapshotFromVolumeRecoveryPointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateSnapshotFromVolumeRecoveryPoint",
	}
	for header,value in pairs(CreateSnapshotFromVolumeRecoveryPointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSnapshotFromVolumeRecoveryPointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSnapshotFromVolumeRecoveryPoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSnapshotFromVolumeRecoveryPointInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSnapshotFromVolumeRecoveryPointSync(CreateSnapshotFromVolumeRecoveryPointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotFromVolumeRecoveryPointAsync(CreateSnapshotFromVolumeRecoveryPointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSMBFileShares asynchronously, invoking a callback when done
-- @param DescribeSMBFileSharesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSMBFileSharesAsync(DescribeSMBFileSharesInput, cb)
	assert(DescribeSMBFileSharesInput, "You must provide a DescribeSMBFileSharesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeSMBFileShares",
	}
	for header,value in pairs(DescribeSMBFileSharesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSMBFileSharesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSMBFileShares synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSMBFileSharesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSMBFileSharesSync(DescribeSMBFileSharesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSMBFileSharesAsync(DescribeSMBFileSharesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGateways asynchronously, invoking a callback when done
-- @param ListGatewaysInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGatewaysAsync(ListGatewaysInput, cb)
	assert(ListGatewaysInput, "You must provide a ListGatewaysInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListGateways",
	}
	for header,value in pairs(ListGatewaysInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGatewaysInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGateways synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGatewaysInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListGatewaysSync(ListGatewaysInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGatewaysAsync(ListGatewaysInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteChapCredentials asynchronously, invoking a callback when done
-- @param DeleteChapCredentialsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteChapCredentialsAsync(DeleteChapCredentialsInput, cb)
	assert(DeleteChapCredentialsInput, "You must provide a DeleteChapCredentialsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteChapCredentials",
	}
	for header,value in pairs(DeleteChapCredentialsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteChapCredentialsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteChapCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteChapCredentialsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteChapCredentialsSync(DeleteChapCredentialsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteChapCredentialsAsync(DeleteChapCredentialsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBandwidthRateLimit asynchronously, invoking a callback when done
-- @param DeleteBandwidthRateLimitInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBandwidthRateLimitAsync(DeleteBandwidthRateLimitInput, cb)
	assert(DeleteBandwidthRateLimitInput, "You must provide a DeleteBandwidthRateLimitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteBandwidthRateLimit",
	}
	for header,value in pairs(DeleteBandwidthRateLimitInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBandwidthRateLimitInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBandwidthRateLimit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBandwidthRateLimitInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBandwidthRateLimitSync(DeleteBandwidthRateLimitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBandwidthRateLimitAsync(DeleteBandwidthRateLimitInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTapeRecoveryPoints asynchronously, invoking a callback when done
-- @param DescribeTapeRecoveryPointsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTapeRecoveryPointsAsync(DescribeTapeRecoveryPointsInput, cb)
	assert(DescribeTapeRecoveryPointsInput, "You must provide a DescribeTapeRecoveryPointsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeTapeRecoveryPoints",
	}
	for header,value in pairs(DescribeTapeRecoveryPointsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTapeRecoveryPointsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTapeRecoveryPoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTapeRecoveryPointsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTapeRecoveryPointsSync(DescribeTapeRecoveryPointsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTapeRecoveryPointsAsync(DescribeTapeRecoveryPointsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ActivateGateway asynchronously, invoking a callback when done
-- @param ActivateGatewayInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ActivateGatewayAsync(ActivateGatewayInput, cb)
	assert(ActivateGatewayInput, "You must provide a ActivateGatewayInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ActivateGateway",
	}
	for header,value in pairs(ActivateGatewayInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ActivateGatewayInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ActivateGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ActivateGatewayInput
-- @return response
-- @return error_type
-- @return error_message
function M.ActivateGatewaySync(ActivateGatewayInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ActivateGatewayAsync(ActivateGatewayInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTapeArchive asynchronously, invoking a callback when done
-- @param DeleteTapeArchiveInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTapeArchiveAsync(DeleteTapeArchiveInput, cb)
	assert(DeleteTapeArchiveInput, "You must provide a DeleteTapeArchiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteTapeArchive",
	}
	for header,value in pairs(DeleteTapeArchiveInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTapeArchiveInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTapeArchive synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTapeArchiveInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTapeArchiveSync(DeleteTapeArchiveInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTapeArchiveAsync(DeleteTapeArchiveInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeVTLDevices asynchronously, invoking a callback when done
-- @param DescribeVTLDevicesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeVTLDevicesAsync(DescribeVTLDevicesInput, cb)
	assert(DescribeVTLDevicesInput, "You must provide a DescribeVTLDevicesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeVTLDevices",
	}
	for header,value in pairs(DescribeVTLDevicesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeVTLDevicesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVTLDevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeVTLDevicesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeVTLDevicesSync(DescribeVTLDevicesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVTLDevicesAsync(DescribeVTLDevicesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddCache asynchronously, invoking a callback when done
-- @param AddCacheInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddCacheAsync(AddCacheInput, cb)
	assert(AddCacheInput, "You must provide a AddCacheInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddCache",
	}
	for header,value in pairs(AddCacheInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddCacheInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddCacheInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddCacheSync(AddCacheInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddCacheAsync(AddCacheInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVolume asynchronously, invoking a callback when done
-- @param DeleteVolumeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVolumeAsync(DeleteVolumeInput, cb)
	assert(DeleteVolumeInput, "You must provide a DeleteVolumeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteVolume",
	}
	for header,value in pairs(DeleteVolumeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteVolumeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVolumeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVolumeSync(DeleteVolumeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVolumeAsync(DeleteVolumeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVolumes asynchronously, invoking a callback when done
-- @param ListVolumesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVolumesAsync(ListVolumesInput, cb)
	assert(ListVolumesInput, "You must provide a ListVolumesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListVolumes",
	}
	for header,value in pairs(ListVolumesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListVolumesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVolumes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVolumesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListVolumesSync(ListVolumesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVolumesAsync(ListVolumesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCachediSCSIVolumes asynchronously, invoking a callback when done
-- @param DescribeCachediSCSIVolumesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCachediSCSIVolumesAsync(DescribeCachediSCSIVolumesInput, cb)
	assert(DescribeCachediSCSIVolumesInput, "You must provide a DescribeCachediSCSIVolumesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeCachediSCSIVolumes",
	}
	for header,value in pairs(DescribeCachediSCSIVolumesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCachediSCSIVolumesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCachediSCSIVolumes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCachediSCSIVolumesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCachediSCSIVolumesSync(DescribeCachediSCSIVolumesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCachediSCSIVolumesAsync(DescribeCachediSCSIVolumesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RetrieveTapeRecoveryPoint asynchronously, invoking a callback when done
-- @param RetrieveTapeRecoveryPointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RetrieveTapeRecoveryPointAsync(RetrieveTapeRecoveryPointInput, cb)
	assert(RetrieveTapeRecoveryPointInput, "You must provide a RetrieveTapeRecoveryPointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.RetrieveTapeRecoveryPoint",
	}
	for header,value in pairs(RetrieveTapeRecoveryPointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RetrieveTapeRecoveryPointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RetrieveTapeRecoveryPoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RetrieveTapeRecoveryPointInput
-- @return response
-- @return error_type
-- @return error_message
function M.RetrieveTapeRecoveryPointSync(RetrieveTapeRecoveryPointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RetrieveTapeRecoveryPointAsync(RetrieveTapeRecoveryPointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelRetrieval asynchronously, invoking a callback when done
-- @param CancelRetrievalInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelRetrievalAsync(CancelRetrievalInput, cb)
	assert(CancelRetrievalInput, "You must provide a CancelRetrievalInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CancelRetrieval",
	}
	for header,value in pairs(CancelRetrievalInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelRetrievalInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelRetrieval synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelRetrievalInput
-- @return response
-- @return error_type
-- @return error_message
function M.CancelRetrievalSync(CancelRetrievalInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelRetrievalAsync(CancelRetrievalInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBandwidthRateLimit asynchronously, invoking a callback when done
-- @param DescribeBandwidthRateLimitInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBandwidthRateLimitAsync(DescribeBandwidthRateLimitInput, cb)
	assert(DescribeBandwidthRateLimitInput, "You must provide a DescribeBandwidthRateLimitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeBandwidthRateLimit",
	}
	for header,value in pairs(DescribeBandwidthRateLimitInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBandwidthRateLimitInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBandwidthRateLimit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBandwidthRateLimitInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBandwidthRateLimitSync(DescribeBandwidthRateLimitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBandwidthRateLimitAsync(DescribeBandwidthRateLimitInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStorediSCSIVolumes asynchronously, invoking a callback when done
-- @param DescribeStorediSCSIVolumesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStorediSCSIVolumesAsync(DescribeStorediSCSIVolumesInput, cb)
	assert(DescribeStorediSCSIVolumesInput, "You must provide a DescribeStorediSCSIVolumesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeStorediSCSIVolumes",
	}
	for header,value in pairs(DescribeStorediSCSIVolumesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStorediSCSIVolumesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStorediSCSIVolumes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStorediSCSIVolumesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStorediSCSIVolumesSync(DescribeStorediSCSIVolumesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStorediSCSIVolumesAsync(DescribeStorediSCSIVolumesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVolumeRecoveryPoints asynchronously, invoking a callback when done
-- @param ListVolumeRecoveryPointsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVolumeRecoveryPointsAsync(ListVolumeRecoveryPointsInput, cb)
	assert(ListVolumeRecoveryPointsInput, "You must provide a ListVolumeRecoveryPointsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListVolumeRecoveryPoints",
	}
	for header,value in pairs(ListVolumeRecoveryPointsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListVolumeRecoveryPointsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVolumeRecoveryPoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVolumeRecoveryPointsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListVolumeRecoveryPointsSync(ListVolumeRecoveryPointsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVolumeRecoveryPointsAsync(ListVolumeRecoveryPointsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateChapCredentials asynchronously, invoking a callback when done
-- @param UpdateChapCredentialsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateChapCredentialsAsync(UpdateChapCredentialsInput, cb)
	assert(UpdateChapCredentialsInput, "You must provide a UpdateChapCredentialsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateChapCredentials",
	}
	for header,value in pairs(UpdateChapCredentialsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateChapCredentialsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateChapCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateChapCredentialsInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateChapCredentialsSync(UpdateChapCredentialsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateChapCredentialsAsync(UpdateChapCredentialsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartGateway asynchronously, invoking a callback when done
-- @param StartGatewayInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartGatewayAsync(StartGatewayInput, cb)
	assert(StartGatewayInput, "You must provide a StartGatewayInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.StartGateway",
	}
	for header,value in pairs(StartGatewayInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartGatewayInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartGatewayInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartGatewaySync(StartGatewayInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartGatewayAsync(StartGatewayInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCache asynchronously, invoking a callback when done
-- @param DescribeCacheInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheAsync(DescribeCacheInput, cb)
	assert(DescribeCacheInput, "You must provide a DescribeCacheInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeCache",
	}
	for header,value in pairs(DescribeCacheInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheSync(DescribeCacheInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheAsync(DescribeCacheInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddUploadBuffer asynchronously, invoking a callback when done
-- @param AddUploadBufferInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddUploadBufferAsync(AddUploadBufferInput, cb)
	assert(AddUploadBufferInput, "You must provide a AddUploadBufferInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddUploadBuffer",
	}
	for header,value in pairs(AddUploadBufferInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddUploadBufferInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddUploadBuffer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddUploadBufferInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddUploadBufferSync(AddUploadBufferInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddUploadBufferAsync(AddUploadBufferInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSnapshotSchedule asynchronously, invoking a callback when done
-- @param DeleteSnapshotScheduleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSnapshotScheduleAsync(DeleteSnapshotScheduleInput, cb)
	assert(DeleteSnapshotScheduleInput, "You must provide a DeleteSnapshotScheduleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteSnapshotSchedule",
	}
	for header,value in pairs(DeleteSnapshotScheduleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSnapshotScheduleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSnapshotSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSnapshotScheduleInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSnapshotScheduleSync(DeleteSnapshotScheduleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSnapshotScheduleAsync(DeleteSnapshotScheduleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVTLDeviceType asynchronously, invoking a callback when done
-- @param UpdateVTLDeviceTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateVTLDeviceTypeAsync(UpdateVTLDeviceTypeInput, cb)
	assert(UpdateVTLDeviceTypeInput, "You must provide a UpdateVTLDeviceTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateVTLDeviceType",
	}
	for header,value in pairs(UpdateVTLDeviceTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateVTLDeviceTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateVTLDeviceType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateVTLDeviceTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateVTLDeviceTypeSync(UpdateVTLDeviceTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVTLDeviceTypeAsync(UpdateVTLDeviceTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTape asynchronously, invoking a callback when done
-- @param DeleteTapeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTapeAsync(DeleteTapeInput, cb)
	assert(DeleteTapeInput, "You must provide a DeleteTapeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteTape",
	}
	for header,value in pairs(DeleteTapeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTapeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTape synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTapeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTapeSync(DeleteTapeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTapeAsync(DeleteTapeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSnapshotSchedule asynchronously, invoking a callback when done
-- @param UpdateSnapshotScheduleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSnapshotScheduleAsync(UpdateSnapshotScheduleInput, cb)
	assert(UpdateSnapshotScheduleInput, "You must provide a UpdateSnapshotScheduleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.UpdateSnapshotSchedule",
	}
	for header,value in pairs(UpdateSnapshotScheduleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSnapshotScheduleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSnapshotSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSnapshotScheduleInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSnapshotScheduleSync(UpdateSnapshotScheduleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSnapshotScheduleAsync(UpdateSnapshotScheduleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ShutdownGateway asynchronously, invoking a callback when done
-- @param ShutdownGatewayInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ShutdownGatewayAsync(ShutdownGatewayInput, cb)
	assert(ShutdownGatewayInput, "You must provide a ShutdownGatewayInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ShutdownGateway",
	}
	for header,value in pairs(ShutdownGatewayInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ShutdownGatewayInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ShutdownGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ShutdownGatewayInput
-- @return response
-- @return error_type
-- @return error_message
function M.ShutdownGatewaySync(ShutdownGatewayInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ShutdownGatewayAsync(ShutdownGatewayInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTapes asynchronously, invoking a callback when done
-- @param DescribeTapesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTapesAsync(DescribeTapesInput, cb)
	assert(DescribeTapesInput, "You must provide a DescribeTapesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeTapes",
	}
	for header,value in pairs(DescribeTapesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTapesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTapes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTapesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTapesSync(DescribeTapesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTapesAsync(DescribeTapesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNFSFileShare asynchronously, invoking a callback when done
-- @param CreateNFSFileShareInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNFSFileShareAsync(CreateNFSFileShareInput, cb)
	assert(CreateNFSFileShareInput, "You must provide a CreateNFSFileShareInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateNFSFileShare",
	}
	for header,value in pairs(CreateNFSFileShareInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateNFSFileShareInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNFSFileShare synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNFSFileShareInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNFSFileShareSync(CreateNFSFileShareInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNFSFileShareAsync(CreateNFSFileShareInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStorediSCSIVolume asynchronously, invoking a callback when done
-- @param CreateStorediSCSIVolumeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStorediSCSIVolumeAsync(CreateStorediSCSIVolumeInput, cb)
	assert(CreateStorediSCSIVolumeInput, "You must provide a CreateStorediSCSIVolumeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateStorediSCSIVolume",
	}
	for header,value in pairs(CreateStorediSCSIVolumeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStorediSCSIVolumeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStorediSCSIVolume synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStorediSCSIVolumeInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStorediSCSIVolumeSync(CreateStorediSCSIVolumeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStorediSCSIVolumeAsync(CreateStorediSCSIVolumeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelArchival asynchronously, invoking a callback when done
-- @param CancelArchivalInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelArchivalAsync(CancelArchivalInput, cb)
	assert(CancelArchivalInput, "You must provide a CancelArchivalInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CancelArchival",
	}
	for header,value in pairs(CancelArchivalInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelArchivalInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelArchival synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelArchivalInput
-- @return response
-- @return error_type
-- @return error_message
function M.CancelArchivalSync(CancelArchivalInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelArchivalAsync(CancelArchivalInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSMBGuestPassword asynchronously, invoking a callback when done
-- @param SetSMBGuestPasswordInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetSMBGuestPasswordAsync(SetSMBGuestPasswordInput, cb)
	assert(SetSMBGuestPasswordInput, "You must provide a SetSMBGuestPasswordInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.SetSMBGuestPassword",
	}
	for header,value in pairs(SetSMBGuestPasswordInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetSMBGuestPasswordInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetSMBGuestPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetSMBGuestPasswordInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetSMBGuestPasswordSync(SetSMBGuestPasswordInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSMBGuestPasswordAsync(SetSMBGuestPasswordInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTapes asynchronously, invoking a callback when done
-- @param ListTapesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTapesAsync(ListTapesInput, cb)
	assert(ListTapesInput, "You must provide a ListTapesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListTapes",
	}
	for header,value in pairs(ListTapesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTapesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTapes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTapesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTapesSync(ListTapesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTapesAsync(ListTapesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGateway asynchronously, invoking a callback when done
-- @param DeleteGatewayInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGatewayAsync(DeleteGatewayInput, cb)
	assert(DeleteGatewayInput, "You must provide a DeleteGatewayInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DeleteGateway",
	}
	for header,value in pairs(DeleteGatewayInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteGatewayInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGateway synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGatewayInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGatewaySync(DeleteGatewayInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGatewayAsync(DeleteGatewayInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNFSFileShares asynchronously, invoking a callback when done
-- @param DescribeNFSFileSharesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNFSFileSharesAsync(DescribeNFSFileSharesInput, cb)
	assert(DescribeNFSFileSharesInput, "You must provide a DescribeNFSFileSharesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeNFSFileShares",
	}
	for header,value in pairs(DescribeNFSFileSharesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeNFSFileSharesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNFSFileShares synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNFSFileSharesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNFSFileSharesSync(DescribeNFSFileSharesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNFSFileSharesAsync(DescribeNFSFileSharesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkingStorage asynchronously, invoking a callback when done
-- @param DescribeWorkingStorageInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkingStorageAsync(DescribeWorkingStorageInput, cb)
	assert(DescribeWorkingStorageInput, "You must provide a DescribeWorkingStorageInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeWorkingStorage",
	}
	for header,value in pairs(DescribeWorkingStorageInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkingStorageInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkingStorage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkingStorageInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkingStorageSync(DescribeWorkingStorageInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkingStorageAsync(DescribeWorkingStorageInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUploadBuffer asynchronously, invoking a callback when done
-- @param DescribeUploadBufferInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUploadBufferAsync(DescribeUploadBufferInput, cb)
	assert(DescribeUploadBufferInput, "You must provide a DescribeUploadBufferInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.DescribeUploadBuffer",
	}
	for header,value in pairs(DescribeUploadBufferInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUploadBufferInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUploadBuffer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUploadBufferInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUploadBufferSync(DescribeUploadBufferInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUploadBufferAsync(DescribeUploadBufferInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceInput, cb)
	assert(ListTagsForResourceInput, "You must provide a ListTagsForResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddWorkingStorage asynchronously, invoking a callback when done
-- @param AddWorkingStorageInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddWorkingStorageAsync(AddWorkingStorageInput, cb)
	assert(AddWorkingStorageInput, "You must provide a AddWorkingStorageInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.AddWorkingStorage",
	}
	for header,value in pairs(AddWorkingStorageInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddWorkingStorageInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddWorkingStorage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddWorkingStorageInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddWorkingStorageSync(AddWorkingStorageInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddWorkingStorageAsync(AddWorkingStorageInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSnapshot asynchronously, invoking a callback when done
-- @param CreateSnapshotInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSnapshotAsync(CreateSnapshotInput, cb)
	assert(CreateSnapshotInput, "You must provide a CreateSnapshotInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "StorageGateway_20130630.CreateSnapshot",
	}
	for header,value in pairs(CreateSnapshotInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSnapshotInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSnapshotInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSnapshotSync(CreateSnapshotInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotAsync(CreateSnapshotInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
