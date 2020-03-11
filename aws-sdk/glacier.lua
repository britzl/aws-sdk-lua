--- GENERATED CODE - DO NOT MODIFY
-- Amazon Glacier (glacier-2012-06-01)

local M = {}

M.metadata = {
	api_version = "2012-06-01",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "sha256",
	endpoint_prefix = "glacier",
	service_abbreviation = "",
	service_full_name = "Amazon Glacier",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "glacier-2012-06-01",
}

local keys = {}
local asserts = {}

keys.GetDataRetrievalPolicyInput = { ["accountId"] = true, nil }

function asserts.AssertGetDataRetrievalPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataRetrievalPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataRetrievalPolicyInput[k], "GetDataRetrievalPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataRetrievalPolicyInput
-- <p>Input for GetDataRetrievalPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- @return GetDataRetrievalPolicyInput structure as a key-value pair table
function M.GetDataRetrievalPolicyInput(args)
	assert(args, "You must provide an argument table when creating GetDataRetrievalPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["accountId"] = args["accountId"],
	}
	asserts.AssertGetDataRetrievalPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedCapacityDescription = { ["CapacityId"] = true, ["ExpirationDate"] = true, ["StartDate"] = true, nil }

function asserts.AssertProvisionedCapacityDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedCapacityDescription to be of type 'table'")
	if struct["CapacityId"] then asserts.Assertstring(struct["CapacityId"]) end
	if struct["ExpirationDate"] then asserts.Assertstring(struct["ExpirationDate"]) end
	if struct["StartDate"] then asserts.Assertstring(struct["StartDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedCapacityDescription[k], "ProvisionedCapacityDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedCapacityDescription
-- <p>The definition for a provisioned capacity unit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CapacityId [string] <p>The ID that identifies the provisioned capacity unit.</p>
-- * ExpirationDate [string] <p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>
-- * StartDate [string] <p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>
-- @return ProvisionedCapacityDescription structure as a key-value pair table
function M.ProvisionedCapacityDescription(args)
	assert(args, "You must provide an argument table when creating ProvisionedCapacityDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CapacityId"] = args["CapacityId"],
		["ExpirationDate"] = args["ExpirationDate"],
		["StartDate"] = args["StartDate"],
	}
	asserts.AssertProvisionedCapacityDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobOutputInput = { ["range"] = true, ["jobId"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertGetJobOutputInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobOutputInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["range"] then asserts.Assertstring(struct["range"]) end
	if struct["jobId"] then asserts.Assertstring(struct["jobId"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobOutputInput[k], "GetJobOutputInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobOutputInput
-- <p>Provides options for downloading output of an Amazon Glacier job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * range [string] <p>The range of bytes to retrieve from the output. For example, if you want to download the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation downloads the entire output.</p> <p>If the job output is large, then you can use a range to retrieve a portion of the output. This allows you to download the entire output in smaller chunks of bytes. For example, suppose you have 1 GB of job output you want to download and you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job Output requests. You use the following process to download the job output:</p> <ol> <li> <p>Download a 128 MB chunk of output by specifying the appropriate byte range. Verify that all 128 MB of data was received.</p> </li> <li> <p>Along with the data, the response includes a SHA256 tree hash of the payload. You compute the checksum of the payload on the client and compare it with the checksum you received in the response to ensure you received all the expected data.</p> </li> <li> <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time specifying the appropriate byte range.</p> </li> <li> <p>After downloading all the parts of the job output, you have a list of eight checksum values. Compute the tree hash of these values to find the checksum of the entire output. Using the <a>DescribeJob</a> API, obtain job information of the job that provided you the output. The response includes the checksum of the entire archive stored in Amazon Glacier. You compare this value with the checksum you computed to ensure you have downloaded the entire archive content with no errors.</p> <p/> </li> </ol>
-- * jobId [string] <p>The job ID whose data is downloaded.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: jobId
-- @return GetJobOutputInput structure as a key-value pair table
function M.GetJobOutputInput(args)
	assert(args, "You must provide an argument table when creating GetJobOutputInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{jobId}"] = args["jobId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
        ["Range"] = args["range"],
    }
	local all_args = { 
		["range"] = args["range"],
		["jobId"] = args["jobId"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertGetJobOutputInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadArchiveInput = { ["body"] = true, ["checksum"] = true, ["archiveDescription"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertUploadArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadArchiveInput to be of type 'table'")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["body"] then asserts.AssertStream(struct["body"]) end
	if struct["checksum"] then asserts.Assertstring(struct["checksum"]) end
	if struct["archiveDescription"] then asserts.Assertstring(struct["archiveDescription"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadArchiveInput[k], "UploadArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadArchiveInput
-- <p>Provides options to add an archive to a vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Stream] <p>The data to upload.</p>
-- * checksum [string] <p>The SHA256 tree hash of the data being uploaded.</p>
-- * archiveDescription [string] <p>The optional description of the archive you are uploading.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: vaultName
-- Required key: accountId
-- @return UploadArchiveInput structure as a key-value pair table
function M.UploadArchiveInput(args)
	assert(args, "You must provide an argument table when creating UploadArchiveInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
        ["x-amz-sha256-tree-hash"] = args["checksum"],
        ["x-amz-archive-description"] = args["archiveDescription"],
    }
	local all_args = { 
		["body"] = args["body"],
		["checksum"] = args["checksum"],
		["archiveDescription"] = args["archiveDescription"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertUploadArchiveInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadMultipartPartInput = { ["body"] = true, ["checksum"] = true, ["vaultName"] = true, ["range"] = true, ["uploadId"] = true, ["accountId"] = true, nil }

function asserts.AssertUploadMultipartPartInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadMultipartPartInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["body"] then asserts.AssertStream(struct["body"]) end
	if struct["checksum"] then asserts.Assertstring(struct["checksum"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["range"] then asserts.Assertstring(struct["range"]) end
	if struct["uploadId"] then asserts.Assertstring(struct["uploadId"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadMultipartPartInput[k], "UploadMultipartPartInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadMultipartPartInput
-- <p>Provides options to upload a part of an archive in a multipart upload operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Stream] <p>The data to upload.</p>
-- * checksum [string] <p>The SHA256 tree hash of the data being uploaded.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * range [string] <p>Identifies the range of bytes in the assembled archive that will be uploaded in this part. Amazon Glacier uses this information to assemble the archive in the proper sequence. The format of this header follows RFC 2616. An example header is Content-Range:bytes 0-4194303/*.</p>
-- * uploadId [string] <p>The upload ID of the multipart upload.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: uploadId
-- @return UploadMultipartPartInput structure as a key-value pair table
function M.UploadMultipartPartInput(args)
	assert(args, "You must provide an argument table when creating UploadMultipartPartInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{uploadId}"] = args["uploadId"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
        ["x-amz-sha256-tree-hash"] = args["checksum"],
        ["Content-Range"] = args["range"],
    }
	local all_args = { 
		["body"] = args["body"],
		["checksum"] = args["checksum"],
		["vaultName"] = args["vaultName"],
		["range"] = args["range"],
		["uploadId"] = args["uploadId"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertUploadMultipartPartInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceUnavailableException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>Returned if the service cannot complete the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Returned if the service cannot complete the request.</p>
-- * code [string] <p>500 Internal Server Error</p>
-- * type [string] <p>Server</p>
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestTimeoutException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertRequestTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTimeoutException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestTimeoutException[k], "RequestTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTimeoutException
-- <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
-- * code [string] <p>408 Request Timeout</p>
-- * type [string] <p>Client</p>
-- @return RequestTimeoutException structure as a key-value pair table
function M.RequestTimeoutException(args)
	assert(args, "You must provide an argument table when creating RequestTimeoutException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertRequestTimeoutException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteArchiveInput = { ["archiveId"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertDeleteArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteArchiveInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["archiveId"], "Expected key archiveId to exist in table")
	if struct["archiveId"] then asserts.Assertstring(struct["archiveId"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteArchiveInput[k], "DeleteArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteArchiveInput
-- <p>Provides options for deleting an archive from an Amazon Glacier vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * archiveId [string] <p>The ID of the archive to delete.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: archiveId
-- @return DeleteArchiveInput structure as a key-value pair table
function M.DeleteArchiveInput(args)
	assert(args, "You must provide an argument table when creating DeleteArchiveInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{archiveId}"] = args["archiveId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["archiveId"] = args["archiveId"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertDeleteArchiveInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortMultipartUploadInput = { ["uploadId"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertAbortMultipartUploadInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortMultipartUploadInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["uploadId"] then asserts.Assertstring(struct["uploadId"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortMultipartUploadInput[k], "AbortMultipartUploadInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortMultipartUploadInput
-- <p>Provides options to abort a multipart upload identified by the upload ID.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart Upload</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uploadId [string] <p>The upload ID of the multipart upload to delete.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: uploadId
-- @return AbortMultipartUploadInput structure as a key-value pair table
function M.AbortMultipartUploadInput(args)
	assert(args, "You must provide an argument table when creating AbortMultipartUploadInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{uploadId}"] = args["uploadId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["uploadId"] = args["uploadId"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertAbortMultipartUploadInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVaultsInput = { ["marker"] = true, ["limit"] = true, ["accountId"] = true, nil }

function asserts.AssertListVaultsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVaultsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["limit"] then asserts.Assertstring(struct["limit"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVaultsInput[k], "ListVaultsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVaultsInput
-- <p>Provides options to retrieve the vault list owned by the calling user's account. The list provides metadata information for each vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>A string used for pagination. The marker specifies the vault ARN after which the listing of vaults should begin.</p>
-- * limit [string] <p>The maximum number of vaults to be returned. The default limit is 10. The number of vaults returned might be fewer than the specified limit, but the number of returned vaults never exceeds the limit.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- @return ListVaultsInput structure as a key-value pair table
function M.ListVaultsInput(args)
	assert(args, "You must provide an argument table when creating ListVaultsInput")
    local query_args = { 
        ["marker"] = args["marker"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["limit"] = args["limit"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertListVaultsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVaultNotificationsOutput = { ["vaultNotificationConfig"] = true, nil }

function asserts.AssertGetVaultNotificationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultNotificationsOutput to be of type 'table'")
	if struct["vaultNotificationConfig"] then asserts.AssertVaultNotificationConfig(struct["vaultNotificationConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVaultNotificationsOutput[k], "GetVaultNotificationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultNotificationsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultNotificationConfig [VaultNotificationConfig] <p>Returns the notification configuration set on the vault.</p>
-- @return GetVaultNotificationsOutput structure as a key-value pair table
function M.GetVaultNotificationsOutput(args)
	assert(args, "You must provide an argument table when creating GetVaultNotificationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultNotificationConfig"] = args["vaultNotificationConfig"],
	}
	asserts.AssertGetVaultNotificationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVaultLockInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertGetVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVaultLockInput[k], "GetVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultLockInput
-- <p>The input values for <code>GetVaultLock</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return GetVaultLockInput structure as a key-value pair table
function M.GetVaultLockInput(args)
	assert(args, "You must provide an argument table when creating GetVaultLockInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertGetVaultLockInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateVaultLockInput = { ["policy"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertInitiateVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["policy"] then asserts.AssertVaultLockPolicy(struct["policy"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateVaultLockInput[k], "InitiateVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateVaultLockInput
-- <p>The input values for <code>InitiateVaultLock</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policy [VaultLockPolicy] <p>The vault lock policy as a JSON string, which uses "\" as an escape character.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return InitiateVaultLockInput structure as a key-value pair table
function M.InitiateVaultLockInput(args)
	assert(args, "You must provide an argument table when creating InitiateVaultLockInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["policy"] = args["policy"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertInitiateVaultLockInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisionedCapacityInput = { ["accountId"] = true, nil }

function asserts.AssertListProvisionedCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisionedCapacityInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisionedCapacityInput[k], "ListProvisionedCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisionedCapacityInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accountId [string] <p>The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- @return ListProvisionedCapacityInput structure as a key-value pair table
function M.ListProvisionedCapacityInput(args)
	assert(args, "You must provide an argument table when creating ListProvisionedCapacityInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["accountId"] = args["accountId"],
	}
	asserts.AssertListProvisionedCapacityInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsOutput = { ["Marker"] = true, ["JobList"] = true, nil }

function asserts.AssertListJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsOutput to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["JobList"] then asserts.AssertJobList(struct["JobList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsOutput[k], "ListJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p> An opaque string used for pagination that specifies the job at which the listing of jobs should begin. You get the <code>marker</code> value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of the results started in a previous List Jobs request. </p>
-- * JobList [JobList] <p>A list of job objects. Each job object contains metadata describing the job.</p>
-- @return ListJobsOutput structure as a key-value pair table
function M.ListJobsOutput(args)
	assert(args, "You must provide an argument table when creating ListJobsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["JobList"] = args["JobList"],
	}
	asserts.AssertListJobsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PartListElement = { ["RangeInBytes"] = true, ["SHA256TreeHash"] = true, nil }

function asserts.AssertPartListElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PartListElement to be of type 'table'")
	if struct["RangeInBytes"] then asserts.Assertstring(struct["RangeInBytes"]) end
	if struct["SHA256TreeHash"] then asserts.Assertstring(struct["SHA256TreeHash"]) end
	for k,_ in pairs(struct) do
		assert(keys.PartListElement[k], "PartListElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PartListElement
-- <p>A list of the part sizes of the multipart upload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RangeInBytes [string] <p>The byte range of a part, inclusive of the upper value of the range.</p>
-- * SHA256TreeHash [string] <p>The SHA256 tree hash value that Amazon Glacier calculated for the part. This field is never <code>null</code>.</p>
-- @return PartListElement structure as a key-value pair table
function M.PartListElement(args)
	assert(args, "You must provide an argument table when creating PartListElement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RangeInBytes"] = args["RangeInBytes"],
		["SHA256TreeHash"] = args["SHA256TreeHash"],
	}
	asserts.AssertPartListElement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVaultInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertDeleteVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVaultInput[k], "DeleteVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVaultInput
-- <p>Provides options for deleting a vault from Amazon Glacier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return DeleteVaultInput structure as a key-value pair table
function M.DeleteVaultInput(args)
	assert(args, "You must provide an argument table when creating DeleteVaultInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertDeleteVaultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateJobInput = { ["jobParameters"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertInitiateJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateJobInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["jobParameters"] then asserts.AssertJobParameters(struct["jobParameters"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateJobInput[k], "InitiateJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateJobInput
-- <p>Provides options for initiating an Amazon Glacier job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobParameters [JobParameters] <p>Provides options for specifying job information.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return InitiateJobInput structure as a key-value pair table
function M.InitiateJobInput(args)
	assert(args, "You must provide an argument table when creating InitiateJobInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["jobParameters"] = args["jobParameters"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertInitiateJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPartsInput = { ["marker"] = true, ["uploadId"] = true, ["vaultName"] = true, ["limit"] = true, ["accountId"] = true, nil }

function asserts.AssertListPartsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["uploadId"] then asserts.Assertstring(struct["uploadId"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["limit"] then asserts.Assertstring(struct["limit"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPartsInput[k], "ListPartsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsInput
-- <p>Provides options for retrieving a list of parts of an archive that have been uploaded in a specific multipart upload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>An opaque string used for pagination. This value specifies the part at which the listing of parts should begin. Get the marker value from the response of a previous List Parts response. You need only include the marker if you are continuing the pagination of results started in a previous List Parts request.</p>
-- * uploadId [string] <p>The upload ID of the multipart upload.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * limit [string] <p>The maximum number of parts to be returned. The default limit is 50. The number of parts returned might be fewer than the specified limit, but the number of returned parts never exceeds the limit.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: uploadId
-- @return ListPartsInput structure as a key-value pair table
function M.ListPartsInput(args)
	assert(args, "You must provide an argument table when creating ListPartsInput")
    local query_args = { 
        ["marker"] = args["marker"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{uploadId}"] = args["uploadId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["uploadId"] = args["uploadId"],
		["vaultName"] = args["vaultName"],
		["limit"] = args["limit"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertListPartsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVaultAccessPolicyInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertGetVaultAccessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultAccessPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVaultAccessPolicyInput[k], "GetVaultAccessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultAccessPolicyInput
-- <p>Input for GetVaultAccessPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return GetVaultAccessPolicyInput structure as a key-value pair table
function M.GetVaultAccessPolicyInput(args)
	assert(args, "You must provide an argument table when creating GetVaultAccessPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertGetVaultAccessPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArchiveCreationOutput = { ["archiveId"] = true, ["checksum"] = true, ["location"] = true, nil }

function asserts.AssertArchiveCreationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveCreationOutput to be of type 'table'")
	if struct["archiveId"] then asserts.Assertstring(struct["archiveId"]) end
	if struct["checksum"] then asserts.Assertstring(struct["checksum"]) end
	if struct["location"] then asserts.Assertstring(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArchiveCreationOutput[k], "ArchiveCreationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveCreationOutput
-- <p>Contains the Amazon Glacier response to your request.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * archiveId [string] <p>The ID of the archive. This value is also included as part of the location.</p>
-- * checksum [string] <p>The checksum of the archive computed by Amazon Glacier.</p>
-- * location [string] <p>The relative URI path of the newly added archive resource.</p>
-- @return ArchiveCreationOutput structure as a key-value pair table
function M.ArchiveCreationOutput(args)
	assert(args, "You must provide an argument table when creating ArchiveCreationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-archive-id"] = args["archiveId"],
        ["x-amz-sha256-tree-hash"] = args["checksum"],
        ["Location"] = args["location"],
    }
	local all_args = { 
		["archiveId"] = args["archiveId"],
		["checksum"] = args["checksum"],
		["location"] = args["location"],
	}
	asserts.AssertArchiveCreationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Grant = { ["Grantee"] = true, ["Permission"] = true, nil }

function asserts.AssertGrant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Grant to be of type 'table'")
	if struct["Grantee"] then asserts.AssertGrantee(struct["Grantee"]) end
	if struct["Permission"] then asserts.AssertPermission(struct["Permission"]) end
	for k,_ in pairs(struct) do
		assert(keys.Grant[k], "Grant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Grant
-- <p>Contains information about a grant.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Grantee [Grantee] <p>The grantee.</p>
-- * Permission [Permission] <p>Specifies the permission given to the grantee. </p>
-- @return Grant structure as a key-value pair table
function M.Grant(args)
	assert(args, "You must provide an argument table when creating Grant")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Grantee"] = args["Grantee"],
		["Permission"] = args["Permission"],
	}
	asserts.AssertGrant(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Encryption = { ["KMSKeyId"] = true, ["EncryptionType"] = true, ["KMSContext"] = true, nil }

function asserts.AssertEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Encryption to be of type 'table'")
	if struct["KMSKeyId"] then asserts.Assertstring(struct["KMSKeyId"]) end
	if struct["EncryptionType"] then asserts.AssertEncryptionType(struct["EncryptionType"]) end
	if struct["KMSContext"] then asserts.Assertstring(struct["KMSContext"]) end
	for k,_ in pairs(struct) do
		assert(keys.Encryption[k], "Encryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Encryption
-- <p>Contains information about the encryption used to store the job results in Amazon S3. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KMSKeyId [string] <p>The AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS fail if not made by using Secure Sockets Layer (SSL) or Signature Version 4. </p>
-- * EncryptionType [EncryptionType] <p>The server-side encryption algorithm used when storing job results in Amazon S3, for example <code>AES256</code> or <code>aws:kms</code>.</p>
-- * KMSContext [string] <p>Optional. If the encryption type is <code>aws:kms</code>, you can use this value to specify the encryption context for the job results.</p>
-- @return Encryption structure as a key-value pair table
function M.Encryption(args)
	assert(args, "You must provide an argument table when creating Encryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KMSKeyId"] = args["KMSKeyId"],
		["EncryptionType"] = args["EncryptionType"],
		["KMSContext"] = args["KMSContext"],
	}
	asserts.AssertEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsFromVaultInput = { ["TagKeys"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertRemoveTagsFromVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromVaultInput[k], "RemoveTagsFromVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromVaultInput
-- <p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the vault.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return RemoveTagsFromVaultInput structure as a key-value pair table
function M.RemoveTagsFromVaultInput(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromVaultInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertRemoveTagsFromVaultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventoryRetrievalJobDescription = { ["Limit"] = true, ["StartDate"] = true, ["Marker"] = true, ["EndDate"] = true, ["Format"] = true, nil }

function asserts.AssertInventoryRetrievalJobDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryRetrievalJobDescription to be of type 'table'")
	if struct["Limit"] then asserts.Assertstring(struct["Limit"]) end
	if struct["StartDate"] then asserts.AssertDateTime(struct["StartDate"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["EndDate"] then asserts.AssertDateTime(struct["EndDate"]) end
	if struct["Format"] then asserts.Assertstring(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryRetrievalJobDescription[k], "InventoryRetrievalJobDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryRetrievalJobDescription
-- <p>Describes the options for a range inventory retrieval job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [string] <p>The maximum number of inventory items returned per vault inventory retrieval request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>
-- * StartDate [DateTime] <p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- * Marker [string] <p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering"> Range Inventory Retrieval</a>.</p>
-- * EndDate [DateTime] <p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- * Format [string] <p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>
-- @return InventoryRetrievalJobDescription structure as a key-value pair table
function M.InventoryRetrievalJobDescription(args)
	assert(args, "You must provide an argument table when creating InventoryRetrievalJobDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["StartDate"] = args["StartDate"],
		["Marker"] = args["Marker"],
		["EndDate"] = args["EndDate"],
		["Format"] = args["Format"],
	}
	asserts.AssertInventoryRetrievalJobDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadListElement = { ["MultipartUploadId"] = true, ["ArchiveDescription"] = true, ["CreationDate"] = true, ["PartSizeInBytes"] = true, ["VaultARN"] = true, nil }

function asserts.AssertUploadListElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadListElement to be of type 'table'")
	if struct["MultipartUploadId"] then asserts.Assertstring(struct["MultipartUploadId"]) end
	if struct["ArchiveDescription"] then asserts.Assertstring(struct["ArchiveDescription"]) end
	if struct["CreationDate"] then asserts.Assertstring(struct["CreationDate"]) end
	if struct["PartSizeInBytes"] then asserts.Assertlong(struct["PartSizeInBytes"]) end
	if struct["VaultARN"] then asserts.Assertstring(struct["VaultARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadListElement[k], "UploadListElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadListElement
-- <p>A list of in-progress multipart uploads for a vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultipartUploadId [string] <p>The ID of a multipart upload.</p>
-- * ArchiveDescription [string] <p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>
-- * CreationDate [string] <p>The UTC time at which the multipart upload was initiated.</p>
-- * PartSizeInBytes [long] <p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is the size of all the parts in the upload except the last part, which may be smaller than this size.</p>
-- * VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>
-- @return UploadListElement structure as a key-value pair table
function M.UploadListElement(args)
	assert(args, "You must provide an argument table when creating UploadListElement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MultipartUploadId"] = args["MultipartUploadId"],
		["ArchiveDescription"] = args["ArchiveDescription"],
		["CreationDate"] = args["CreationDate"],
		["PartSizeInBytes"] = args["PartSizeInBytes"],
		["VaultARN"] = args["VaultARN"],
	}
	asserts.AssertUploadListElement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVaultNotificationsInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertGetVaultNotificationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultNotificationsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVaultNotificationsInput[k], "GetVaultNotificationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultNotificationsInput
-- <p>Provides options for retrieving the notification configuration set on an Amazon Glacier vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return GetVaultNotificationsInput structure as a key-value pair table
function M.GetVaultNotificationsInput(args)
	assert(args, "You must provide an argument table when creating GetVaultNotificationsInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertGetVaultNotificationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateMultipartUploadInput = { ["partSize"] = true, ["archiveDescription"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertInitiateMultipartUploadInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateMultipartUploadInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["partSize"] then asserts.Assertstring(struct["partSize"]) end
	if struct["archiveDescription"] then asserts.Assertstring(struct["archiveDescription"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateMultipartUploadInput[k], "InitiateMultipartUploadInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateMultipartUploadInput
-- <p>Provides options for initiating a multipart upload to an Amazon Glacier vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * partSize [string] <p>The size of each part except the last, in bytes. The last part can be smaller than this part size.</p>
-- * archiveDescription [string] <p>The archive description that you are uploading in parts.</p> <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- @return InitiateMultipartUploadInput structure as a key-value pair table
function M.InitiateMultipartUploadInput(args)
	assert(args, "You must provide an argument table when creating InitiateMultipartUploadInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
        ["x-amz-part-size"] = args["partSize"],
        ["x-amz-archive-description"] = args["archiveDescription"],
    }
	local all_args = { 
		["partSize"] = args["partSize"],
		["archiveDescription"] = args["archiveDescription"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertInitiateMultipartUploadInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMultipartUploadsOutput = { ["Marker"] = true, ["UploadsList"] = true, nil }

function asserts.AssertListMultipartUploadsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsOutput to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["UploadsList"] then asserts.AssertUploadsList(struct["UploadsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMultipartUploadsOutput[k], "ListMultipartUploadsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Multipart Uploads request to obtain more uploads in the list. If there are no more uploads, this value is <code>null</code>.</p>
-- * UploadsList [UploadsList] <p>A list of in-progress multipart uploads.</p>
-- @return ListMultipartUploadsOutput structure as a key-value pair table
function M.ListMultipartUploadsOutput(args)
	assert(args, "You must provide an argument table when creating ListMultipartUploadsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["UploadsList"] = args["UploadsList"],
	}
	asserts.AssertListMultipartUploadsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVaultAccessPolicyInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertDeleteVaultAccessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVaultAccessPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVaultAccessPolicyInput[k], "DeleteVaultAccessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVaultAccessPolicyInput
-- <p>DeleteVaultAccessPolicy input.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- @return DeleteVaultAccessPolicyInput structure as a key-value pair table
function M.DeleteVaultAccessPolicyInput(args)
	assert(args, "You must provide an argument table when creating DeleteVaultAccessPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertDeleteVaultAccessPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVaultInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertCreateVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVaultInput[k], "CreateVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVaultInput
-- <p>Provides options to create a vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return CreateVaultInput structure as a key-value pair table
function M.CreateVaultInput(args)
	assert(args, "You must provide an argument table when creating CreateVaultInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertCreateVaultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputSerialization = { ["csv"] = true, nil }

function asserts.AssertOutputSerialization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputSerialization to be of type 'table'")
	if struct["csv"] then asserts.AssertCSVOutput(struct["csv"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputSerialization[k], "OutputSerialization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputSerialization
-- <p>Describes how the select output is serialized.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * csv [CSVOutput] <p>Describes the serialization of CSV-encoded query results.</p>
-- @return OutputSerialization structure as a key-value pair table
function M.OutputSerialization(args)
	assert(args, "You must provide an argument table when creating OutputSerialization")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["csv"] = args["csv"],
	}
	asserts.AssertOutputSerialization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SelectParameters = { ["ExpressionType"] = true, ["InputSerialization"] = true, ["Expression"] = true, ["OutputSerialization"] = true, nil }

function asserts.AssertSelectParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectParameters to be of type 'table'")
	if struct["ExpressionType"] then asserts.AssertExpressionType(struct["ExpressionType"]) end
	if struct["InputSerialization"] then asserts.AssertInputSerialization(struct["InputSerialization"]) end
	if struct["Expression"] then asserts.Assertstring(struct["Expression"]) end
	if struct["OutputSerialization"] then asserts.AssertOutputSerialization(struct["OutputSerialization"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectParameters[k], "SelectParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectParameters
-- <p>Contains information about the parameters used for a select.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpressionType [ExpressionType] <p>The type of the provided expression, for example <code>SQL</code>.</p>
-- * InputSerialization [InputSerialization] <p>Describes the serialization format of the object.</p>
-- * Expression [string] <p>The expression that is used to select the object.</p>
-- * OutputSerialization [OutputSerialization] <p>Describes how the results of the select job are serialized.</p>
-- @return SelectParameters structure as a key-value pair table
function M.SelectParameters(args)
	assert(args, "You must provide an argument table when creating SelectParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExpressionType"] = args["ExpressionType"],
		["InputSerialization"] = args["InputSerialization"],
		["Expression"] = args["Expression"],
		["OutputSerialization"] = args["OutputSerialization"],
	}
	asserts.AssertSelectParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CSVOutput = { ["QuoteFields"] = true, ["RecordDelimiter"] = true, ["QuoteCharacter"] = true, ["QuoteEscapeCharacter"] = true, ["FieldDelimiter"] = true, nil }

function asserts.AssertCSVOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CSVOutput to be of type 'table'")
	if struct["QuoteFields"] then asserts.AssertQuoteFields(struct["QuoteFields"]) end
	if struct["RecordDelimiter"] then asserts.Assertstring(struct["RecordDelimiter"]) end
	if struct["QuoteCharacter"] then asserts.Assertstring(struct["QuoteCharacter"]) end
	if struct["QuoteEscapeCharacter"] then asserts.Assertstring(struct["QuoteEscapeCharacter"]) end
	if struct["FieldDelimiter"] then asserts.Assertstring(struct["FieldDelimiter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CSVOutput[k], "CSVOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CSVOutput
-- <p>Contains information about the comma-separated value (CSV) file that the job results are stored in.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuoteFields [QuoteFields] <p>A value that indicates whether all output fields should be contained within quotation marks.</p>
-- * RecordDelimiter [string] <p>A value used to separate individual records from each other.</p>
-- * QuoteCharacter [string] <p>A value used as an escape character where the field delimiter is part of the value.</p>
-- * QuoteEscapeCharacter [string] <p>A single character used for escaping the quotation-mark character inside an already escaped value.</p>
-- * FieldDelimiter [string] <p>A value used to separate individual fields from each other within a record.</p>
-- @return CSVOutput structure as a key-value pair table
function M.CSVOutput(args)
	assert(args, "You must provide an argument table when creating CSVOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QuoteFields"] = args["QuoteFields"],
		["RecordDelimiter"] = args["RecordDelimiter"],
		["QuoteCharacter"] = args["QuoteCharacter"],
		["QuoteEscapeCharacter"] = args["QuoteEscapeCharacter"],
		["FieldDelimiter"] = args["FieldDelimiter"],
	}
	asserts.AssertCSVOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetDataRetrievalPolicyInput = { ["Policy"] = true, ["accountId"] = true, nil }

function asserts.AssertSetDataRetrievalPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDataRetrievalPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["Policy"] then asserts.AssertDataRetrievalPolicy(struct["Policy"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetDataRetrievalPolicyInput[k], "SetDataRetrievalPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDataRetrievalPolicyInput
-- <p>SetDataRetrievalPolicy input.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [DataRetrievalPolicy] <p>The data retrieval policy in JSON format.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- @return SetDataRetrievalPolicyInput structure as a key-value pair table
function M.SetDataRetrievalPolicyInput(args)
	assert(args, "You must provide an argument table when creating SetDataRetrievalPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertSetDataRetrievalPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateMultipartUploadOutput = { ["uploadId"] = true, ["location"] = true, nil }

function asserts.AssertInitiateMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateMultipartUploadOutput to be of type 'table'")
	if struct["uploadId"] then asserts.Assertstring(struct["uploadId"]) end
	if struct["location"] then asserts.Assertstring(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateMultipartUploadOutput[k], "InitiateMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateMultipartUploadOutput
-- <p>The Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uploadId [string] <p>The ID of the multipart upload. This value is also included as part of the location.</p>
-- * location [string] <p>The relative URI path of the multipart upload ID Amazon Glacier created.</p>
-- @return InitiateMultipartUploadOutput structure as a key-value pair table
function M.InitiateMultipartUploadOutput(args)
	assert(args, "You must provide an argument table when creating InitiateMultipartUploadOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-multipart-upload-id"] = args["uploadId"],
        ["Location"] = args["location"],
    }
	local all_args = { 
		["uploadId"] = args["uploadId"],
		["location"] = args["location"],
	}
	asserts.AssertInitiateMultipartUploadOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobOutputOutput = { ["body"] = true, ["status"] = true, ["acceptRanges"] = true, ["contentType"] = true, ["checksum"] = true, ["contentRange"] = true, ["archiveDescription"] = true, nil }

function asserts.AssertGetJobOutputOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobOutputOutput to be of type 'table'")
	if struct["body"] then asserts.AssertStream(struct["body"]) end
	if struct["status"] then asserts.Asserthttpstatus(struct["status"]) end
	if struct["acceptRanges"] then asserts.Assertstring(struct["acceptRanges"]) end
	if struct["contentType"] then asserts.Assertstring(struct["contentType"]) end
	if struct["checksum"] then asserts.Assertstring(struct["checksum"]) end
	if struct["contentRange"] then asserts.Assertstring(struct["contentRange"]) end
	if struct["archiveDescription"] then asserts.Assertstring(struct["archiveDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobOutputOutput[k], "GetJobOutputOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobOutputOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Stream] <p>The job data, either archive data or inventory data.</p>
-- * status [httpstatus] <p>The HTTP response code for a job output request. The value depends on whether a range was specified in the request.</p>
-- * acceptRanges [string] <p>Indicates the range units accepted. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html">RFC2616</a>. </p>
-- * contentType [string] <p>The Content-Type depends on whether the job output is an archive or a vault inventory. For archive data, the Content-Type is application/octet-stream. For vault inventory, if you requested CSV format when you initiated the job, the Content-Type is text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type is application/json.</p>
-- * checksum [string] <p>The checksum of the data in the response. This header is returned only when retrieving the output for an archive retrieval job. Furthermore, this header appears only under the following conditions:</p> <ul> <li> <p>You get the entire range of the archive.</p> </li> <li> <p>You request a range to return of the archive that starts and ends on a multiple of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> <li> <p>You request a range of the archive to return that starts on a multiple of 1 MB and goes to the end of the archive. For example, if you have a 3.1 MB archive and you specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> </ul>
-- * contentRange [string] <p>The range of bytes returned by Amazon Glacier. If only partial output is downloaded, the response provides the range of bytes Amazon Glacier returned. For example, bytes 0-1048575/8388608 returns the first 1 MB from 8 MB.</p>
-- * archiveDescription [string] <p>The description of an archive.</p>
-- @return GetJobOutputOutput structure as a key-value pair table
function M.GetJobOutputOutput(args)
	assert(args, "You must provide an argument table when creating GetJobOutputOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Accept-Ranges"] = args["acceptRanges"],
        ["Content-Type"] = args["contentType"],
        ["x-amz-sha256-tree-hash"] = args["checksum"],
        ["Content-Range"] = args["contentRange"],
        ["x-amz-archive-description"] = args["archiveDescription"],
    }
	local all_args = { 
		["body"] = args["body"],
		["status"] = args["status"],
		["acceptRanges"] = args["acceptRanges"],
		["contentType"] = args["contentType"],
		["checksum"] = args["checksum"],
		["contentRange"] = args["contentRange"],
		["archiveDescription"] = args["archiveDescription"],
	}
	asserts.AssertGetJobOutputOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVaultsOutput = { ["Marker"] = true, ["VaultList"] = true, nil }

function asserts.AssertListVaultsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVaultsOutput to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["VaultList"] then asserts.AssertVaultList(struct["VaultList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVaultsOutput[k], "ListVaultsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVaultsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>The vault ARN at which to continue pagination of the results. You use the marker in another List Vaults request to obtain more vaults in the list.</p>
-- * VaultList [VaultList] <p>List of vaults.</p>
-- @return ListVaultsOutput structure as a key-value pair table
function M.ListVaultsOutput(args)
	assert(args, "You must provide an argument table when creating ListVaultsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["VaultList"] = args["VaultList"],
	}
	asserts.AssertListVaultsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadMultipartPartOutput = { ["checksum"] = true, nil }

function asserts.AssertUploadMultipartPartOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadMultipartPartOutput to be of type 'table'")
	if struct["checksum"] then asserts.Assertstring(struct["checksum"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadMultipartPartOutput[k], "UploadMultipartPartOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadMultipartPartOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checksum [string] <p>The SHA256 tree hash that Amazon Glacier computed for the uploaded part.</p>
-- @return UploadMultipartPartOutput structure as a key-value pair table
function M.UploadMultipartPartOutput(args)
	assert(args, "You must provide an argument table when creating UploadMultipartPartOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-sha256-tree-hash"] = args["checksum"],
    }
	local all_args = { 
		["checksum"] = args["checksum"],
	}
	asserts.AssertUploadMultipartPartOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVaultOutput = { ["location"] = true, nil }

function asserts.AssertCreateVaultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVaultOutput to be of type 'table'")
	if struct["location"] then asserts.Assertstring(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVaultOutput[k], "CreateVaultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVaultOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * location [string] <p>The URI of the vault that was created.</p>
-- @return CreateVaultOutput structure as a key-value pair table
function M.CreateVaultOutput(args)
	assert(args, "You must provide an argument table when creating CreateVaultOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Location"] = args["location"],
    }
	local all_args = { 
		["location"] = args["location"],
	}
	asserts.AssertCreateVaultOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateJobOutput = { ["jobOutputPath"] = true, ["location"] = true, ["jobId"] = true, nil }

function asserts.AssertInitiateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateJobOutput to be of type 'table'")
	if struct["jobOutputPath"] then asserts.Assertstring(struct["jobOutputPath"]) end
	if struct["location"] then asserts.Assertstring(struct["location"]) end
	if struct["jobId"] then asserts.Assertstring(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateJobOutput[k], "InitiateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateJobOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobOutputPath [string] <p>The path to the location of where the select results are stored.</p>
-- * location [string] <p>The relative URI path of the job.</p>
-- * jobId [string] <p>The ID of the job.</p>
-- @return InitiateJobOutput structure as a key-value pair table
function M.InitiateJobOutput(args)
	assert(args, "You must provide an argument table when creating InitiateJobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-job-output-path"] = args["jobOutputPath"],
        ["Location"] = args["location"],
        ["x-amz-job-id"] = args["jobId"],
    }
	local all_args = { 
		["jobOutputPath"] = args["jobOutputPath"],
		["location"] = args["location"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertInitiateJobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProvisionedCapacityOutput = { ["ProvisionedCapacityList"] = true, nil }

function asserts.AssertListProvisionedCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisionedCapacityOutput to be of type 'table'")
	if struct["ProvisionedCapacityList"] then asserts.AssertProvisionedCapacityList(struct["ProvisionedCapacityList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProvisionedCapacityOutput[k], "ListProvisionedCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisionedCapacityOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProvisionedCapacityList [ProvisionedCapacityList] <p>The response body contains the following JSON fields.</p>
-- @return ListProvisionedCapacityOutput structure as a key-value pair table
function M.ListProvisionedCapacityOutput(args)
	assert(args, "You must provide an argument table when creating ListProvisionedCapacityOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProvisionedCapacityList"] = args["ProvisionedCapacityList"],
	}
	asserts.AssertListProvisionedCapacityOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetVaultAccessPolicyInput = { ["policy"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertSetVaultAccessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetVaultAccessPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["policy"] then asserts.AssertVaultAccessPolicy(struct["policy"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetVaultAccessPolicyInput[k], "SetVaultAccessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetVaultAccessPolicyInput
-- <p>SetVaultAccessPolicy input.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policy [VaultAccessPolicy] <p>The vault access policy as a JSON string.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return SetVaultAccessPolicyInput structure as a key-value pair table
function M.SetVaultAccessPolicyInput(args)
	assert(args, "You must provide an argument table when creating SetVaultAccessPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["policy"] = args["policy"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertSetVaultAccessPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsInput = { ["completed"] = true, ["vaultName"] = true, ["limit"] = true, ["marker"] = true, ["accountId"] = true, ["statuscode"] = true, nil }

function asserts.AssertListJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["completed"] then asserts.Assertstring(struct["completed"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["limit"] then asserts.Assertstring(struct["limit"]) end
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	if struct["statuscode"] then asserts.Assertstring(struct["statuscode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsInput[k], "ListJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsInput
-- <p>Provides options for retrieving a job list for an Amazon Glacier vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * completed [string] <p>The state of the jobs to return. You can specify <code>true</code> or <code>false</code>.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * limit [string] <p>The maximum number of jobs to be returned. The default limit is 50. The number of jobs returned might be fewer than the specified limit, but the number of returned jobs never exceeds the limit.</p>
-- * marker [string] <p>An opaque string used for pagination. This value specifies the job at which the listing of jobs should begin. Get the marker value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of results started in a previous List Jobs request.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- * statuscode [string] <p>The type of job status to return. You can specify the following values: <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return ListJobsInput structure as a key-value pair table
function M.ListJobsInput(args)
	assert(args, "You must provide an argument table when creating ListJobsInput")
    local query_args = { 
        ["completed"] = args["completed"],
        ["limit"] = args["limit"],
        ["marker"] = args["marker"],
        ["statuscode"] = args["statuscode"],
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["completed"] = args["completed"],
		["vaultName"] = args["vaultName"],
		["limit"] = args["limit"],
		["marker"] = args["marker"],
		["accountId"] = args["accountId"],
		["statuscode"] = args["statuscode"],
	}
	asserts.AssertListJobsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompleteMultipartUploadInput = { ["uploadId"] = true, ["checksum"] = true, ["vaultName"] = true, ["archiveSize"] = true, ["accountId"] = true, nil }

function asserts.AssertCompleteMultipartUploadInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteMultipartUploadInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["uploadId"] then asserts.Assertstring(struct["uploadId"]) end
	if struct["checksum"] then asserts.Assertstring(struct["checksum"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["archiveSize"] then asserts.Assertstring(struct["archiveSize"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteMultipartUploadInput[k], "CompleteMultipartUploadInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteMultipartUploadInput
-- <p>Provides options to complete a multipart upload operation. This informs Amazon Glacier that all the archive parts have been uploaded and Amazon Glacier can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Amazon Glacier returns the URI path of the newly created archive resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uploadId [string] <p>The upload ID of the multipart upload.</p>
-- * checksum [string] <p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash of the individual parts. If the value you specify in the request does not match the SHA256 tree hash of the final assembled archive as computed by Amazon Glacier, Amazon Glacier returns an error and the request fails.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * archiveSize [string] <p>The total size, in bytes, of the entire archive. This value should be the sum of all the sizes of the individual parts that you uploaded.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: uploadId
-- @return CompleteMultipartUploadInput structure as a key-value pair table
function M.CompleteMultipartUploadInput(args)
	assert(args, "You must provide an argument table when creating CompleteMultipartUploadInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{uploadId}"] = args["uploadId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
        ["x-amz-sha256-tree-hash"] = args["checksum"],
        ["x-amz-archive-size"] = args["archiveSize"],
    }
	local all_args = { 
		["uploadId"] = args["uploadId"],
		["checksum"] = args["checksum"],
		["vaultName"] = args["vaultName"],
		["archiveSize"] = args["archiveSize"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertCompleteMultipartUploadInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVaultLockOutput = { ["Policy"] = true, ["State"] = true, ["CreationDate"] = true, ["ExpirationDate"] = true, nil }

function asserts.AssertGetVaultLockOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultLockOutput to be of type 'table'")
	if struct["Policy"] then asserts.Assertstring(struct["Policy"]) end
	if struct["State"] then asserts.Assertstring(struct["State"]) end
	if struct["CreationDate"] then asserts.Assertstring(struct["CreationDate"]) end
	if struct["ExpirationDate"] then asserts.Assertstring(struct["ExpirationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVaultLockOutput[k], "GetVaultLockOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultLockOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [string] <p>The vault lock policy as a JSON string, which uses "\" as an escape character.</p>
-- * State [string] <p>The state of the vault lock. <code>InProgress</code> or <code>Locked</code>.</p>
-- * CreationDate [string] <p>The UTC date and time at which the vault lock was put into the <code>InProgress</code> state.</p>
-- * ExpirationDate [string] <p>The UTC date and time at which the lock ID expires. This value can be <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>
-- @return GetVaultLockOutput structure as a key-value pair table
function M.GetVaultLockOutput(args)
	assert(args, "You must provide an argument table when creating GetVaultLockOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["State"] = args["State"],
		["CreationDate"] = args["CreationDate"],
		["ExpirationDate"] = args["ExpirationDate"],
	}
	asserts.AssertGetVaultLockOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Returned if the request results in a vault or account limit being exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Returned if the request results in a vault limit or tags limit being exceeded.</p>
-- * code [string] <p>400 Bad Request</p>
-- * type [string] <p>Client</p>
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
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataRetrievalRule = { ["BytesPerHour"] = true, ["Strategy"] = true, nil }

function asserts.AssertDataRetrievalRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataRetrievalRule to be of type 'table'")
	if struct["BytesPerHour"] then asserts.AssertNullableLong(struct["BytesPerHour"]) end
	if struct["Strategy"] then asserts.Assertstring(struct["Strategy"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataRetrievalRule[k], "DataRetrievalRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataRetrievalRule
-- <p>Data retrieval policy rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BytesPerHour [NullableLong] <p>The maximum number of bytes that can be retrieved in an hour.</p> <p>This field is required only if the value of the Strategy field is <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is not set to <code>BytesPerHour</code> and you set this field.</p>
-- * Strategy [string] <p>The type of data retrieval policy to set.</p> <p>Valid values: BytesPerHour|FreeTier|None</p>
-- @return DataRetrievalRule structure as a key-value pair table
function M.DataRetrievalRule(args)
	assert(args, "You must provide an argument table when creating DataRetrievalRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BytesPerHour"] = args["BytesPerHour"],
		["Strategy"] = args["Strategy"],
	}
	asserts.AssertDataRetrievalRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingParameterValueException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertMissingParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingParameterValueException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingParameterValueException[k], "MissingParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingParameterValueException
-- <p>Returned if a required header or parameter is missing from the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Returned if no authentication data is found for the request.</p>
-- * code [string] <p>400 Bad Request</p>
-- * type [string] <p>Client.</p>
-- @return MissingParameterValueException structure as a key-value pair table
function M.MissingParameterValueException(args)
	assert(args, "You must provide an argument table when creating MissingParameterValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertMissingParameterValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataRetrievalPolicy = { ["Rules"] = true, nil }

function asserts.AssertDataRetrievalPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataRetrievalPolicy to be of type 'table'")
	if struct["Rules"] then asserts.AssertDataRetrievalRulesList(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataRetrievalPolicy[k], "DataRetrievalPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataRetrievalPolicy
-- <p>Data retrieval policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [DataRetrievalRulesList] <p>The policy rule. Although this is a list type, currently there must be only one rule, which contains a Strategy field and optionally a BytesPerHour field.</p>
-- @return DataRetrievalPolicy structure as a key-value pair table
function M.DataRetrievalPolicy(args)
	assert(args, "You must provide an argument table when creating DataRetrievalPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertDataRetrievalPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyEnforcedException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertPolicyEnforcedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyEnforcedException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyEnforcedException[k], "PolicyEnforcedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyEnforcedException
-- <p>Returned if a retrieval job would exceed the current data policy's retrieval rate limit. For more information about data retrieval policies,</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>InitiateJob request denied by current data retrieval policy.</p>
-- * code [string] <p>PolicyEnforcedException</p>
-- * type [string] <p>Client</p>
-- @return PolicyEnforcedException structure as a key-value pair table
function M.PolicyEnforcedException(args)
	assert(args, "You must provide an argument table when creating PolicyEnforcedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertPolicyEnforcedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsToVaultInput = { ["Tags"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertAddTagsToVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["Tags"] then asserts.AssertTagMap(struct["Tags"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToVaultInput[k], "AddTagsToVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToVaultInput
-- <p>The input values for <code>AddTagsToVault</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagMap] <p>The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return AddTagsToVaultInput structure as a key-value pair table
function M.AddTagsToVaultInput(args)
	assert(args, "You must provide an argument table when creating AddTagsToVaultInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertAddTagsToVaultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetVaultNotificationsInput = { ["vaultNotificationConfig"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertSetVaultNotificationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetVaultNotificationsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultNotificationConfig"] then asserts.AssertVaultNotificationConfig(struct["vaultNotificationConfig"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetVaultNotificationsInput[k], "SetVaultNotificationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetVaultNotificationsInput
-- <p>Provides options to configure notifications that will be sent when specific events happen to a vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultNotificationConfig [VaultNotificationConfig] <p>Provides options for specifying notification configuration.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return SetVaultNotificationsInput structure as a key-value pair table
function M.SetVaultNotificationsInput(args)
	assert(args, "You must provide an argument table when creating SetVaultNotificationsInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultNotificationConfig"] = args["vaultNotificationConfig"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertSetVaultNotificationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompleteVaultLockInput = { ["lockId"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertCompleteVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["lockId"], "Expected key lockId to exist in table")
	if struct["lockId"] then asserts.Assertstring(struct["lockId"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteVaultLockInput[k], "CompleteVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteVaultLockInput
-- <p>The input values for <code>CompleteVaultLock</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lockId [string] <p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: lockId
-- @return CompleteVaultLockInput structure as a key-value pair table
function M.CompleteVaultLockInput(args)
	assert(args, "You must provide an argument table when creating CompleteVaultLockInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{lockId}"] = args["lockId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["lockId"] = args["lockId"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertCompleteVaultLockInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterValueException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>Returned if a parameter of the request is incorrectly specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Returned if a parameter of the request is incorrectly specified.</p>
-- * code [string] <p>400 Bad Request</p>
-- * type [string] <p>Client</p>
-- @return InvalidParameterValueException structure as a key-value pair table
function M.InvalidParameterValueException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertInvalidParameterValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForVaultOutput = { ["Tags"] = true, nil }

function asserts.AssertListTagsForVaultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForVaultOutput to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagMap(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForVaultOutput[k], "ListTagsForVaultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForVaultOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagMap] <p>The tags attached to the vault. Each tag is composed of a key and a value.</p>
-- @return ListTagsForVaultOutput structure as a key-value pair table
function M.ListTagsForVaultOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsForVaultOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForVaultOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateVaultLockOutput = { ["lockId"] = true, nil }

function asserts.AssertInitiateVaultLockOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateVaultLockOutput to be of type 'table'")
	if struct["lockId"] then asserts.Assertstring(struct["lockId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateVaultLockOutput[k], "InitiateVaultLockOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateVaultLockOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lockId [string] <p>The lock ID, which is used to complete the vault locking process.</p>
-- @return InitiateVaultLockOutput structure as a key-value pair table
function M.InitiateVaultLockOutput(args)
	assert(args, "You must provide an argument table when creating InitiateVaultLockOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-lock-id"] = args["lockId"],
    }
	local all_args = { 
		["lockId"] = args["lockId"],
	}
	asserts.AssertInitiateVaultLockOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseProvisionedCapacityOutput = { ["capacityId"] = true, nil }

function asserts.AssertPurchaseProvisionedCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseProvisionedCapacityOutput to be of type 'table'")
	if struct["capacityId"] then asserts.Assertstring(struct["capacityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseProvisionedCapacityOutput[k], "PurchaseProvisionedCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseProvisionedCapacityOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * capacityId [string] <p>The ID that identifies the provisioned capacity unit.</p>
-- @return PurchaseProvisionedCapacityOutput structure as a key-value pair table
function M.PurchaseProvisionedCapacityOutput(args)
	assert(args, "You must provide an argument table when creating PurchaseProvisionedCapacityOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-capacity-id"] = args["capacityId"],
    }
	local all_args = { 
		["capacityId"] = args["capacityId"],
	}
	asserts.AssertPurchaseProvisionedCapacityOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlacierJobDescription = { ["CompletionDate"] = true, ["VaultARN"] = true, ["RetrievalByteRange"] = true, ["Tier"] = true, ["SHA256TreeHash"] = true, ["SNSTopic"] = true, ["Completed"] = true, ["InventorySizeInBytes"] = true, ["OutputLocation"] = true, ["InventoryRetrievalParameters"] = true, ["JobId"] = true, ["ArchiveId"] = true, ["JobDescription"] = true, ["ArchiveSizeInBytes"] = true, ["Action"] = true, ["SelectParameters"] = true, ["ArchiveSHA256TreeHash"] = true, ["CreationDate"] = true, ["JobOutputPath"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertGlacierJobDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlacierJobDescription to be of type 'table'")
	if struct["CompletionDate"] then asserts.Assertstring(struct["CompletionDate"]) end
	if struct["VaultARN"] then asserts.Assertstring(struct["VaultARN"]) end
	if struct["RetrievalByteRange"] then asserts.Assertstring(struct["RetrievalByteRange"]) end
	if struct["Tier"] then asserts.Assertstring(struct["Tier"]) end
	if struct["SHA256TreeHash"] then asserts.Assertstring(struct["SHA256TreeHash"]) end
	if struct["SNSTopic"] then asserts.Assertstring(struct["SNSTopic"]) end
	if struct["Completed"] then asserts.Assertboolean(struct["Completed"]) end
	if struct["InventorySizeInBytes"] then asserts.AssertSize(struct["InventorySizeInBytes"]) end
	if struct["OutputLocation"] then asserts.AssertOutputLocation(struct["OutputLocation"]) end
	if struct["InventoryRetrievalParameters"] then asserts.AssertInventoryRetrievalJobDescription(struct["InventoryRetrievalParameters"]) end
	if struct["JobId"] then asserts.Assertstring(struct["JobId"]) end
	if struct["ArchiveId"] then asserts.Assertstring(struct["ArchiveId"]) end
	if struct["JobDescription"] then asserts.Assertstring(struct["JobDescription"]) end
	if struct["ArchiveSizeInBytes"] then asserts.AssertSize(struct["ArchiveSizeInBytes"]) end
	if struct["Action"] then asserts.AssertActionCode(struct["Action"]) end
	if struct["SelectParameters"] then asserts.AssertSelectParameters(struct["SelectParameters"]) end
	if struct["ArchiveSHA256TreeHash"] then asserts.Assertstring(struct["ArchiveSHA256TreeHash"]) end
	if struct["CreationDate"] then asserts.Assertstring(struct["CreationDate"]) end
	if struct["JobOutputPath"] then asserts.Assertstring(struct["JobOutputPath"]) end
	if struct["StatusMessage"] then asserts.Assertstring(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.AssertStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlacierJobDescription[k], "GlacierJobDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlacierJobDescription
-- <p>Contains the description of an Amazon Glacier job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompletionDate [string] <p>The UTC time that the job request completed. While the job is in progress, the value is null.</p>
-- * VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was requested.</p>
-- * RetrievalByteRange [string] <p>The retrieved byte range for archive retrieval jobs in the form <i>StartByteValue</i>-<i>EndByteValue</i>. If no range was specified in the archive retrieval, then the whole archive is retrieved. In this case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i> equals the size of the archive minus 1. For inventory retrieval or select jobs, this field is null. </p>
-- * Tier [string] <p>The tier to use for a select or an archive retrieval. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>
-- * SHA256TreeHash [string] <p>For an archive retrieval job, this value is the checksum of the archive. Otherwise, this value is null.</p> <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash aligned range, then this field returns a value.</p> <p>If the whole archive is retrieved, this value is the same as the ArchiveSHA256TreeHash value.</p> <p>This field is null for the following:</p> <ul> <li> <p>Archive retrieval jobs that specify a range that is not tree-hash aligned</p> </li> </ul> <ul> <li> <p>Archival jobs that specify a range that is equal to the whole archive, when the job status is <code>InProgress</code> </p> </li> </ul> <ul> <li> <p>Inventory jobs</p> </li> <li> <p>Select jobs</p> </li> </ul>
-- * SNSTopic [string] <p>An Amazon SNS topic that receives notification.</p>
-- * Completed [boolean] <p>The job status. When a job is completed, you get the job's output using Get Job Output (GET output).</p>
-- * InventorySizeInBytes [Size] <p>For an inventory retrieval job, this value is the size in bytes of the inventory requested for download. For an archive retrieval or select job, this value is null.</p>
-- * OutputLocation [OutputLocation] <p>Contains the location where the data from the select job is stored.</p>
-- * InventoryRetrievalParameters [InventoryRetrievalJobDescription] <p>Parameters used for range inventory retrieval.</p>
-- * JobId [string] <p>An opaque string that identifies an Amazon Glacier job.</p>
-- * ArchiveId [string] <p>The archive ID requested for a select job or archive retrieval. Otherwise, this field is null.</p>
-- * JobDescription [string] <p>The job description provided when initiating the job.</p>
-- * ArchiveSizeInBytes [Size] <p>For an archive retrieval job, this value is the size in bytes of the archive being requested for download. For an inventory retrieval or select job, this value is null.</p>
-- * Action [ActionCode] <p>The job type. This value is either <code>ArchiveRetrieval</code>, <code>InventoryRetrieval</code>, or <code>Select</code>. </p>
-- * SelectParameters [SelectParameters] <p>Contains the parameters used for a select.</p>
-- * ArchiveSHA256TreeHash [string] <p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory retrieval or select jobs, this field is null.</p>
-- * CreationDate [string] <p>The UTC date when the job was created. This value is a string representation of ISO 8601 date format, for example <code>"2012-03-20T17:03:43.221Z"</code>.</p>
-- * JobOutputPath [string] <p>Contains the job output location.</p>
-- * StatusMessage [string] <p>A friendly message that describes the job status.</p>
-- * StatusCode [StatusCode] <p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>, and indicates the status of the job.</p>
-- @return GlacierJobDescription structure as a key-value pair table
function M.GlacierJobDescription(args)
	assert(args, "You must provide an argument table when creating GlacierJobDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompletionDate"] = args["CompletionDate"],
		["VaultARN"] = args["VaultARN"],
		["RetrievalByteRange"] = args["RetrievalByteRange"],
		["Tier"] = args["Tier"],
		["SHA256TreeHash"] = args["SHA256TreeHash"],
		["SNSTopic"] = args["SNSTopic"],
		["Completed"] = args["Completed"],
		["InventorySizeInBytes"] = args["InventorySizeInBytes"],
		["OutputLocation"] = args["OutputLocation"],
		["InventoryRetrievalParameters"] = args["InventoryRetrievalParameters"],
		["JobId"] = args["JobId"],
		["ArchiveId"] = args["ArchiveId"],
		["JobDescription"] = args["JobDescription"],
		["ArchiveSizeInBytes"] = args["ArchiveSizeInBytes"],
		["Action"] = args["Action"],
		["SelectParameters"] = args["SelectParameters"],
		["ArchiveSHA256TreeHash"] = args["ArchiveSHA256TreeHash"],
		["CreationDate"] = args["CreationDate"],
		["JobOutputPath"] = args["JobOutputPath"],
		["StatusMessage"] = args["StatusMessage"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertGlacierJobDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventoryRetrievalJobInput = { ["Limit"] = true, ["StartDate"] = true, ["Marker"] = true, ["EndDate"] = true, nil }

function asserts.AssertInventoryRetrievalJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryRetrievalJobInput to be of type 'table'")
	if struct["Limit"] then asserts.Assertstring(struct["Limit"]) end
	if struct["StartDate"] then asserts.Assertstring(struct["StartDate"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["EndDate"] then asserts.Assertstring(struct["EndDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryRetrievalJobInput[k], "InventoryRetrievalJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryRetrievalJobInput
-- <p>Provides options for specifying a range inventory retrieval job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [string] <p>Specifies the maximum number of inventory items returned per vault inventory retrieval request. Valid values are greater than or equal to 1.</p>
-- * StartDate [string] <p>The start of the date range in UTC for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- * Marker [string] <p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>.</p>
-- * EndDate [string] <p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @return InventoryRetrievalJobInput structure as a key-value pair table
function M.InventoryRetrievalJobInput(args)
	assert(args, "You must provide an argument table when creating InventoryRetrievalJobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["StartDate"] = args["StartDate"],
		["Marker"] = args["Marker"],
		["EndDate"] = args["EndDate"],
	}
	asserts.AssertInventoryRetrievalJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VaultNotificationConfig = { ["Events"] = true, ["SNSTopic"] = true, nil }

function asserts.AssertVaultNotificationConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VaultNotificationConfig to be of type 'table'")
	if struct["Events"] then asserts.AssertNotificationEventList(struct["Events"]) end
	if struct["SNSTopic"] then asserts.Assertstring(struct["SNSTopic"]) end
	for k,_ in pairs(struct) do
		assert(keys.VaultNotificationConfig[k], "VaultNotificationConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VaultNotificationConfig
-- <p>Represents a vault's notification configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Events [NotificationEventList] <p>A list of one or more events for which Amazon Glacier will send a notification to the specified Amazon SNS topic.</p>
-- * SNSTopic [string] <p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name (ARN).</p>
-- @return VaultNotificationConfig structure as a key-value pair table
function M.VaultNotificationConfig(args)
	assert(args, "You must provide an argument table when creating VaultNotificationConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Events"] = args["Events"],
		["SNSTopic"] = args["SNSTopic"],
	}
	asserts.AssertVaultNotificationConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPartsOutput = { ["VaultARN"] = true, ["ArchiveDescription"] = true, ["PartSizeInBytes"] = true, ["MultipartUploadId"] = true, ["Parts"] = true, ["Marker"] = true, ["CreationDate"] = true, nil }

function asserts.AssertListPartsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsOutput to be of type 'table'")
	if struct["VaultARN"] then asserts.Assertstring(struct["VaultARN"]) end
	if struct["ArchiveDescription"] then asserts.Assertstring(struct["ArchiveDescription"]) end
	if struct["PartSizeInBytes"] then asserts.Assertlong(struct["PartSizeInBytes"]) end
	if struct["MultipartUploadId"] then asserts.Assertstring(struct["MultipartUploadId"]) end
	if struct["Parts"] then asserts.AssertPartList(struct["Parts"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["CreationDate"] then asserts.Assertstring(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPartsOutput[k], "ListPartsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was initiated.</p>
-- * ArchiveDescription [string] <p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>
-- * PartSizeInBytes [long] <p>The part size in bytes. This is the same value that you specified in the Initiate Multipart Upload request.</p>
-- * MultipartUploadId [string] <p>The ID of the upload to which the parts are associated.</p>
-- * Parts [PartList] <p>A list of the part sizes of the multipart upload. Each object in the array contains a <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value pair.</p>
-- * Marker [string] <p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Parts request to obtain more jobs in the list. If there are no more parts, this value is <code>null</code>.</p>
-- * CreationDate [string] <p>The UTC time at which the multipart upload was initiated.</p>
-- @return ListPartsOutput structure as a key-value pair table
function M.ListPartsOutput(args)
	assert(args, "You must provide an argument table when creating ListPartsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VaultARN"] = args["VaultARN"],
		["ArchiveDescription"] = args["ArchiveDescription"],
		["PartSizeInBytes"] = args["PartSizeInBytes"],
		["MultipartUploadId"] = args["MultipartUploadId"],
		["Parts"] = args["Parts"],
		["Marker"] = args["Marker"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertListPartsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
-- * code [string] <p>404 Not Found</p>
-- * type [string] <p>Client</p>
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
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobParameters = { ["InventoryRetrievalParameters"] = true, ["RetrievalByteRange"] = true, ["SelectParameters"] = true, ["Description"] = true, ["Format"] = true, ["SNSTopic"] = true, ["Tier"] = true, ["ArchiveId"] = true, ["OutputLocation"] = true, ["Type"] = true, nil }

function asserts.AssertJobParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobParameters to be of type 'table'")
	if struct["InventoryRetrievalParameters"] then asserts.AssertInventoryRetrievalJobInput(struct["InventoryRetrievalParameters"]) end
	if struct["RetrievalByteRange"] then asserts.Assertstring(struct["RetrievalByteRange"]) end
	if struct["SelectParameters"] then asserts.AssertSelectParameters(struct["SelectParameters"]) end
	if struct["Description"] then asserts.Assertstring(struct["Description"]) end
	if struct["Format"] then asserts.Assertstring(struct["Format"]) end
	if struct["SNSTopic"] then asserts.Assertstring(struct["SNSTopic"]) end
	if struct["Tier"] then asserts.Assertstring(struct["Tier"]) end
	if struct["ArchiveId"] then asserts.Assertstring(struct["ArchiveId"]) end
	if struct["OutputLocation"] then asserts.AssertOutputLocation(struct["OutputLocation"]) end
	if struct["Type"] then asserts.Assertstring(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobParameters[k], "JobParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobParameters
-- <p>Provides options for defining a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InventoryRetrievalParameters [InventoryRetrievalJobInput] <p>Input parameters used for range inventory retrieval.</p>
-- * RetrievalByteRange [string] <p>The byte range to retrieve for an archive retrieval. in the form "<i>StartByteValue</i>-<i>EndByteValue</i>" If not specified, the whole archive is retrieved. If specified, the byte range must be megabyte (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange is not megabyte aligned, this operation returns a 400 response. </p> <p>An error occurs if you specify this field for an inventory retrieval job request.</p>
-- * SelectParameters [SelectParameters] <p>Contains the parameters that define a job.</p>
-- * Description [string] <p>The optional description for the job. The description must be less than or equal to 1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically, ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>
-- * Format [string] <p>When initiating a job to retrieve a vault inventory, you can optionally add this parameter to your request to specify the output format. If you are initiating an inventory job and do not specify a Format field, JSON is the default format. Valid values are "CSV" and "JSON".</p>
-- * SNSTopic [string] <p>The Amazon SNS topic ARN to which Amazon Glacier sends a notification when the job is completed and the output is ready for you to download. The specified topic publishes the notification to its subscribers. The SNS topic must exist.</p>
-- * Tier [string] <p>The tier to use for a select or an archive retrieval job. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>
-- * ArchiveId [string] <p>The ID of the archive that you want to retrieve. This field is required only if <code>Type</code> is set to <code>select</code> or <code>archive-retrieval</code>code&gt;. An error occurs if you specify this request parameter for an inventory retrieval job request. </p>
-- * OutputLocation [OutputLocation] <p>Contains information about the location where the select job results are stored.</p>
-- * Type [string] <p>The job type. You can initiate a job to perform a select query on an archive, retrieve an archive, or get an inventory of a vault. Valid values are "select", "archive-retrieval" and "inventory-retrieval".</p>
-- @return JobParameters structure as a key-value pair table
function M.JobParameters(args)
	assert(args, "You must provide an argument table when creating JobParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InventoryRetrievalParameters"] = args["InventoryRetrievalParameters"],
		["RetrievalByteRange"] = args["RetrievalByteRange"],
		["SelectParameters"] = args["SelectParameters"],
		["Description"] = args["Description"],
		["Format"] = args["Format"],
		["SNSTopic"] = args["SNSTopic"],
		["Tier"] = args["Tier"],
		["ArchiveId"] = args["ArchiveId"],
		["OutputLocation"] = args["OutputLocation"],
		["Type"] = args["Type"],
	}
	asserts.AssertJobParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataRetrievalPolicyOutput = { ["Policy"] = true, nil }

function asserts.AssertGetDataRetrievalPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataRetrievalPolicyOutput to be of type 'table'")
	if struct["Policy"] then asserts.AssertDataRetrievalPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataRetrievalPolicyOutput[k], "GetDataRetrievalPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataRetrievalPolicyOutput
-- <p>Contains the Amazon Glacier response to the <code>GetDataRetrievalPolicy</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [DataRetrievalPolicy] <p>Contains the returned data retrieval policy in JSON format.</p>
-- @return GetDataRetrievalPolicyOutput structure as a key-value pair table
function M.GetDataRetrievalPolicyOutput(args)
	assert(args, "You must provide an argument table when creating GetDataRetrievalPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetDataRetrievalPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Grantee = { ["DisplayName"] = true, ["Type"] = true, ["URI"] = true, ["EmailAddress"] = true, ["ID"] = true, nil }

function asserts.AssertGrantee(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Grantee to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["DisplayName"] then asserts.Assertstring(struct["DisplayName"]) end
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["URI"] then asserts.Assertstring(struct["URI"]) end
	if struct["EmailAddress"] then asserts.Assertstring(struct["EmailAddress"]) end
	if struct["ID"] then asserts.Assertstring(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.Grantee[k], "Grantee contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Grantee
-- <p>Contains information about the grantee.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [string] <p>Screen name of the grantee.</p>
-- * Type [Type] <p>Type of grantee</p>
-- * URI [string] <p>URI of the grantee group.</p>
-- * EmailAddress [string] <p>Email address of the grantee.</p>
-- * ID [string] <p>The canonical user ID of the grantee.</p>
-- Required key: Type
-- @return Grantee structure as a key-value pair table
function M.Grantee(args)
	assert(args, "You must provide an argument table when creating Grantee")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Type"] = args["Type"],
		["URI"] = args["URI"],
		["EmailAddress"] = args["EmailAddress"],
		["ID"] = args["ID"],
	}
	asserts.AssertGrantee(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CSVInput = { ["QuoteCharacter"] = true, ["FieldDelimiter"] = true, ["QuoteEscapeCharacter"] = true, ["RecordDelimiter"] = true, ["Comments"] = true, ["FileHeaderInfo"] = true, nil }

function asserts.AssertCSVInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CSVInput to be of type 'table'")
	if struct["QuoteCharacter"] then asserts.Assertstring(struct["QuoteCharacter"]) end
	if struct["FieldDelimiter"] then asserts.Assertstring(struct["FieldDelimiter"]) end
	if struct["QuoteEscapeCharacter"] then asserts.Assertstring(struct["QuoteEscapeCharacter"]) end
	if struct["RecordDelimiter"] then asserts.Assertstring(struct["RecordDelimiter"]) end
	if struct["Comments"] then asserts.Assertstring(struct["Comments"]) end
	if struct["FileHeaderInfo"] then asserts.AssertFileHeaderInfo(struct["FileHeaderInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.CSVInput[k], "CSVInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CSVInput
-- <p>Contains information about the comma-separated value (CSV) file to select from.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuoteCharacter [string] <p>A value used as an escape character where the field delimiter is part of the value.</p>
-- * FieldDelimiter [string] <p>A value used to separate individual fields from each other within a record.</p>
-- * QuoteEscapeCharacter [string] <p>A single character used for escaping the quotation-mark character inside an already escaped value.</p>
-- * RecordDelimiter [string] <p>A value used to separate individual records from each other.</p>
-- * Comments [string] <p>A single character used to indicate that a row should be ignored when the character is present at the start of that row.</p>
-- * FileHeaderInfo [FileHeaderInfo] <p>Describes the first line of input. Valid values are <code>None</code>, <code>Ignore</code>, and <code>Use</code>.</p>
-- @return CSVInput structure as a key-value pair table
function M.CSVInput(args)
	assert(args, "You must provide an argument table when creating CSVInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QuoteCharacter"] = args["QuoteCharacter"],
		["FieldDelimiter"] = args["FieldDelimiter"],
		["QuoteEscapeCharacter"] = args["QuoteEscapeCharacter"],
		["RecordDelimiter"] = args["RecordDelimiter"],
		["Comments"] = args["Comments"],
		["FileHeaderInfo"] = args["FileHeaderInfo"],
	}
	asserts.AssertCSVInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVaultAccessPolicyOutput = { ["policy"] = true, nil }

function asserts.AssertGetVaultAccessPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultAccessPolicyOutput to be of type 'table'")
	if struct["policy"] then asserts.AssertVaultAccessPolicy(struct["policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVaultAccessPolicyOutput[k], "GetVaultAccessPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultAccessPolicyOutput
-- <p>Output for GetVaultAccessPolicy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policy [VaultAccessPolicy] <p>Contains the returned vault access policy as a JSON string.</p>
-- @return GetVaultAccessPolicyOutput structure as a key-value pair table
function M.GetVaultAccessPolicyOutput(args)
	assert(args, "You must provide an argument table when creating GetVaultAccessPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policy"] = args["policy"],
	}
	asserts.AssertGetVaultAccessPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputSerialization = { ["csv"] = true, nil }

function asserts.AssertInputSerialization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSerialization to be of type 'table'")
	if struct["csv"] then asserts.AssertCSVInput(struct["csv"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSerialization[k], "InputSerialization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSerialization
-- <p>Describes how the archive is serialized.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * csv [CSVInput] <p>Describes the serialization of a CSV-encoded object.</p>
-- @return InputSerialization structure as a key-value pair table
function M.InputSerialization(args)
	assert(args, "You must provide an argument table when creating InputSerialization")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["csv"] = args["csv"],
	}
	asserts.AssertInputSerialization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobInput = { ["jobId"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertDescribeJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then asserts.Assertstring(struct["jobId"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobInput[k], "DescribeJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobInput
-- <p>Provides options for retrieving a job description.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobId [string] <p>The ID of the job to describe.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- Required key: jobId
-- @return DescribeJobInput structure as a key-value pair table
function M.DescribeJobInput(args)
	assert(args, "You must provide an argument table when creating DescribeJobInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{jobId}"] = args["jobId"],
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["jobId"] = args["jobId"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertDescribeJobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeVaultInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertDescribeVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVaultInput[k], "DescribeVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVaultInput
-- <p>Provides options for retrieving metadata for a specific vault in Amazon Glacier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- @return DescribeVaultInput structure as a key-value pair table
function M.DescribeVaultInput(args)
	assert(args, "You must provide an argument table when creating DescribeVaultInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertDescribeVaultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMultipartUploadsInput = { ["marker"] = true, ["limit"] = true, ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertListMultipartUploadsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["marker"] then asserts.Assertstring(struct["marker"]) end
	if struct["limit"] then asserts.Assertstring(struct["limit"]) end
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMultipartUploadsInput[k], "ListMultipartUploadsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsInput
-- <p>Provides options for retrieving list of in-progress multipart uploads for an Amazon Glacier vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * marker [string] <p>An opaque string used for pagination. This value specifies the upload at which the listing of uploads should begin. Get the marker value from a previous List Uploads response. You need only include the marker if you are continuing the pagination of results started in a previous List Uploads request.</p>
-- * limit [string] <p>Specifies the maximum number of uploads returned in the response body. If this value is not specified, the List Uploads operation returns up to 50 uploads.</p>
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- @return ListMultipartUploadsInput structure as a key-value pair table
function M.ListMultipartUploadsInput(args)
	assert(args, "You must provide an argument table when creating ListMultipartUploadsInput")
    local query_args = { 
        ["marker"] = args["marker"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["marker"] = args["marker"],
		["limit"] = args["limit"],
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertListMultipartUploadsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortVaultLockInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertAbortVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortVaultLockInput[k], "AbortVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortVaultLockInput
-- <p>The input values for <code>AbortVaultLock</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return AbortVaultLockInput structure as a key-value pair table
function M.AbortVaultLockInput(args)
	assert(args, "You must provide an argument table when creating AbortVaultLockInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertAbortVaultLockInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseProvisionedCapacityInput = { ["accountId"] = true, nil }

function asserts.AssertPurchaseProvisionedCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseProvisionedCapacityInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseProvisionedCapacityInput[k], "PurchaseProvisionedCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseProvisionedCapacityInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accountId [string] <p>The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- @return PurchaseProvisionedCapacityInput structure as a key-value pair table
function M.PurchaseProvisionedCapacityInput(args)
	assert(args, "You must provide an argument table when creating PurchaseProvisionedCapacityInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["accountId"] = args["accountId"],
	}
	asserts.AssertPurchaseProvisionedCapacityInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForVaultInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertListTagsForVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForVaultInput[k], "ListTagsForVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForVaultInput
-- <p>The input value for <code>ListTagsForVaultInput</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required key: accountId
-- Required key: vaultName
-- @return ListTagsForVaultInput structure as a key-value pair table
function M.ListTagsForVaultInput(args)
	assert(args, "You must provide an argument table when creating ListTagsForVaultInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertListTagsForVaultInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VaultLockPolicy = { ["Policy"] = true, nil }

function asserts.AssertVaultLockPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VaultLockPolicy to be of type 'table'")
	if struct["Policy"] then asserts.Assertstring(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.VaultLockPolicy[k], "VaultLockPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VaultLockPolicy
-- <p>Contains the vault lock policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [string] <p>The vault lock policy.</p>
-- @return VaultLockPolicy structure as a key-value pair table
function M.VaultLockPolicy(args)
	assert(args, "You must provide an argument table when creating VaultLockPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertVaultLockPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VaultAccessPolicy = { ["Policy"] = true, nil }

function asserts.AssertVaultAccessPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VaultAccessPolicy to be of type 'table'")
	if struct["Policy"] then asserts.Assertstring(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.VaultAccessPolicy[k], "VaultAccessPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VaultAccessPolicy
-- <p>Contains the vault access policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [string] <p>The vault access policy.</p>
-- @return VaultAccessPolicy structure as a key-value pair table
function M.VaultAccessPolicy(args)
	assert(args, "You must provide an argument table when creating VaultAccessPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertVaultAccessPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Location = { ["AccessControlList"] = true, ["Encryption"] = true, ["Prefix"] = true, ["BucketName"] = true, ["UserMetadata"] = true, ["CannedACL"] = true, ["Tagging"] = true, ["StorageClass"] = true, nil }

function asserts.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["AccessControlList"] then asserts.AssertAccessControlPolicyList(struct["AccessControlList"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["Prefix"] then asserts.Assertstring(struct["Prefix"]) end
	if struct["BucketName"] then asserts.Assertstring(struct["BucketName"]) end
	if struct["UserMetadata"] then asserts.Asserthashmap(struct["UserMetadata"]) end
	if struct["CannedACL"] then asserts.AssertCannedACL(struct["CannedACL"]) end
	if struct["Tagging"] then asserts.Asserthashmap(struct["Tagging"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Location[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- <p>Contains information about the location in Amazon S3 where the select job results are stored.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessControlList [AccessControlPolicyList] <p>A list of grants that control access to the staged results.</p>
-- * Encryption [Encryption] <p>Contains information about the encryption used to store the job results in Amazon S3.</p>
-- * Prefix [string] <p>The prefix that is prepended to the results for this request.</p>
-- * BucketName [string] <p>The name of the Amazon S3 bucket where the job results are stored.</p>
-- * UserMetadata [hashmap] <p>A map of metadata to store with the job results in Amazon S3.</p>
-- * CannedACL [CannedACL] <p>The canned access control list (ACL) to apply to the job results.</p>
-- * Tagging [hashmap] <p>The tag-set that is applied to the job results.</p>
-- * StorageClass [StorageClass] <p>The storage class used to store the job results.</p>
-- @return S3Location structure as a key-value pair table
function M.S3Location(args)
	assert(args, "You must provide an argument table when creating S3Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessControlList"] = args["AccessControlList"],
		["Encryption"] = args["Encryption"],
		["Prefix"] = args["Prefix"],
		["BucketName"] = args["BucketName"],
		["UserMetadata"] = args["UserMetadata"],
		["CannedACL"] = args["CannedACL"],
		["Tagging"] = args["Tagging"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertS3Location(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientCapacityException = { ["message"] = true, ["code"] = true, ["type"] = true, nil }

function asserts.AssertInsufficientCapacityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientCapacityException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	if struct["code"] then asserts.Assertstring(struct["code"]) end
	if struct["type"] then asserts.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.InsufficientCapacityException[k], "InsufficientCapacityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientCapacityException
-- <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
-- * code [string] 
-- * type [string] 
-- @return InsufficientCapacityException structure as a key-value pair table
function M.InsufficientCapacityException(args)
	assert(args, "You must provide an argument table when creating InsufficientCapacityException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
		["type"] = args["type"],
	}
	asserts.AssertInsufficientCapacityException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputLocation = { ["S3"] = true, nil }

function asserts.AssertOutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputLocation to be of type 'table'")
	if struct["S3"] then asserts.AssertS3Location(struct["S3"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputLocation[k], "OutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputLocation
-- <p>Contains information about the location where the select job results are stored.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3 [S3Location] <p>Describes an S3 location that will receive the results of the job request.</p>
-- @return OutputLocation structure as a key-value pair table
function M.OutputLocation(args)
	assert(args, "You must provide an argument table when creating OutputLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3"] = args["S3"],
	}
	asserts.AssertOutputLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeVaultOutput = { ["SizeInBytes"] = true, ["VaultARN"] = true, ["LastInventoryDate"] = true, ["VaultName"] = true, ["NumberOfArchives"] = true, ["CreationDate"] = true, nil }

function asserts.AssertDescribeVaultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVaultOutput to be of type 'table'")
	if struct["SizeInBytes"] then asserts.Assertlong(struct["SizeInBytes"]) end
	if struct["VaultARN"] then asserts.Assertstring(struct["VaultARN"]) end
	if struct["LastInventoryDate"] then asserts.Assertstring(struct["LastInventoryDate"]) end
	if struct["VaultName"] then asserts.Assertstring(struct["VaultName"]) end
	if struct["NumberOfArchives"] then asserts.Assertlong(struct["NumberOfArchives"]) end
	if struct["CreationDate"] then asserts.Assertstring(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVaultOutput[k], "DescribeVaultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVaultOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizeInBytes [long] <p>Total size, in bytes, of the archives in the vault as of the last inventory date. This field will return null if an inventory has not yet run on the vault, for example if you just created the vault.</p>
-- * VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault.</p>
-- * LastInventoryDate [string] <p>The Universal Coordinated Time (UTC) date when Amazon Glacier completed the last vault inventory. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>
-- * VaultName [string] <p>The name of the vault.</p>
-- * NumberOfArchives [long] <p>The number of archives in the vault as of the last inventory date. This field will return <code>null</code> if an inventory has not yet run on the vault, for example if you just created the vault.</p>
-- * CreationDate [string] <p>The Universal Coordinated Time (UTC) date when the vault was created. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>
-- @return DescribeVaultOutput structure as a key-value pair table
function M.DescribeVaultOutput(args)
	assert(args, "You must provide an argument table when creating DescribeVaultOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizeInBytes"] = args["SizeInBytes"],
		["VaultARN"] = args["VaultARN"],
		["LastInventoryDate"] = args["LastInventoryDate"],
		["VaultName"] = args["VaultName"],
		["NumberOfArchives"] = args["NumberOfArchives"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertDescribeVaultOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVaultNotificationsInput = { ["vaultName"] = true, ["accountId"] = true, nil }

function asserts.AssertDeleteVaultNotificationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVaultNotificationsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then asserts.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then asserts.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVaultNotificationsInput[k], "DeleteVaultNotificationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVaultNotificationsInput
-- <p>Provides options for deleting a vault notification configuration from an Amazon Glacier vault.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vaultName [string] <p>The name of the vault.</p>
-- * accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required key: accountId
-- Required key: vaultName
-- @return DeleteVaultNotificationsInput structure as a key-value pair table
function M.DeleteVaultNotificationsInput(args)
	assert(args, "You must provide an argument table when creating DeleteVaultNotificationsInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{vaultName}"] = args["vaultName"],
        ["{accountId}"] = args["accountId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vaultName"] = args["vaultName"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertDeleteVaultNotificationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected DateTime to be of type 'string'")
end

--  
function M.DateTime(str)
	asserts.AssertDateTime(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertCannedACL(str)
	assert(str)
	assert(type(str) == "string", "Expected CannedACL to be of type 'string'")
end

--  
function M.CannedACL(str)
	asserts.AssertCannedACL(str)
	return str
end

function asserts.AssertEncryptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionType to be of type 'string'")
end

--  
function M.EncryptionType(str)
	asserts.AssertEncryptionType(str)
	return str
end

function asserts.AssertExpressionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpressionType to be of type 'string'")
end

--  
function M.ExpressionType(str)
	asserts.AssertExpressionType(str)
	return str
end

function asserts.AssertType(str)
	assert(str)
	assert(type(str) == "string", "Expected Type to be of type 'string'")
end

--  
function M.Type(str)
	asserts.AssertType(str)
	return str
end

function asserts.AssertPermission(str)
	assert(str)
	assert(type(str) == "string", "Expected Permission to be of type 'string'")
end

--  
function M.Permission(str)
	asserts.AssertPermission(str)
	return str
end

function asserts.AssertStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusCode to be of type 'string'")
end

--  
function M.StatusCode(str)
	asserts.AssertStatusCode(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertFileHeaderInfo(str)
	assert(str)
	assert(type(str) == "string", "Expected FileHeaderInfo to be of type 'string'")
end

--  
function M.FileHeaderInfo(str)
	asserts.AssertFileHeaderInfo(str)
	return str
end

function asserts.AssertActionCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionCode to be of type 'string'")
end

--  
function M.ActionCode(str)
	asserts.AssertActionCode(str)
	return str
end

function asserts.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
end

--  
function M.StorageClass(str)
	asserts.AssertStorageClass(str)
	return str
end

function asserts.AssertQuoteFields(str)
	assert(str)
	assert(type(str) == "string", "Expected QuoteFields to be of type 'string'")
end

--  
function M.QuoteFields(str)
	asserts.AssertQuoteFields(str)
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

function asserts.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	asserts.AssertSize(long)
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

function asserts.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	asserts.AssertNullableLong(long)
	return long
end

function asserts.Asserthttpstatus(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected httpstatus to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.httpstatus(integer)
	asserts.Asserthttpstatus(integer)
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

function asserts.Asserthashmap(map)
	assert(map)
	assert(type(map) == "table", "Expected hashmap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assertstring(k)
		asserts.Assertstring(v)
	end
end

function M.hashmap(map)
	asserts.Asserthashmap(map)
	return map
end

function asserts.AssertTagMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.TagMap(map)
	asserts.AssertTagMap(map)
	return map
end

function asserts.AssertStream(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Stream to be of type 'string'")
end

function M.Stream(blob)
	asserts.AssertStream(blob)
	return blob
end

function asserts.AssertJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGlacierJobDescription(v)
	end
end

--  
-- List of GlacierJobDescription objects
function M.JobList(list)
	asserts.AssertJobList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertDataRetrievalRulesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DataRetrievalRulesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataRetrievalRule(v)
	end
end

--  
-- List of DataRetrievalRule objects
function M.DataRetrievalRulesList(list)
	asserts.AssertDataRetrievalRulesList(list)
	return list
end

function asserts.AssertProvisionedCapacityList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedCapacityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProvisionedCapacityDescription(v)
	end
end

--  
-- List of ProvisionedCapacityDescription objects
function M.ProvisionedCapacityList(list)
	asserts.AssertProvisionedCapacityList(list)
	return list
end

function asserts.AssertPartList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPartListElement(v)
	end
end

--  
-- List of PartListElement objects
function M.PartList(list)
	asserts.AssertPartList(list)
	return list
end

function asserts.AssertUploadsList(list)
	assert(list)
	assert(type(list) == "table", "Expected UploadsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUploadListElement(v)
	end
end

--  
-- List of UploadListElement objects
function M.UploadsList(list)
	asserts.AssertUploadsList(list)
	return list
end

function asserts.AssertNotificationEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.NotificationEventList(list)
	asserts.AssertNotificationEventList(list)
	return list
end

function asserts.AssertVaultList(list)
	assert(list)
	assert(type(list) == "table", "Expected VaultList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDescribeVaultOutput(v)
	end
end

--  
-- List of DescribeVaultOutput objects
function M.VaultList(list)
	asserts.AssertVaultList(list)
	return list
end

function asserts.AssertAccessControlPolicyList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccessControlPolicyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGrant(v)
	end
end

--  
-- List of Grant objects
function M.AccessControlPolicyList(list)
	asserts.AssertAccessControlPolicyList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "glacier.amazonaws.com"
		end
	end
	local ss = { "glacier" }
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
--- Call ListTagsForVault asynchronously, invoking a callback when done
-- @param ListTagsForVaultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForVaultAsync(ListTagsForVaultInput, cb)
	assert(ListTagsForVaultInput, "You must provide a ListTagsForVaultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForVault",
	}
	for header,value in pairs(ListTagsForVaultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/tags", ListTagsForVaultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForVault synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForVaultInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForVaultSync(ListTagsForVaultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForVaultAsync(ListTagsForVaultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListJobs asynchronously, invoking a callback when done
-- @param ListJobsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsAsync(ListJobsInput, cb)
	assert(ListJobsInput, "You must provide a ListJobsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}
	for header,value in pairs(ListJobsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/jobs", ListJobsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsSync(ListJobsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(ListJobsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVault asynchronously, invoking a callback when done
-- @param DeleteVaultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVaultAsync(DeleteVaultInput, cb)
	assert(DeleteVaultInput, "You must provide a DeleteVaultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVault",
	}
	for header,value in pairs(DeleteVaultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}", DeleteVaultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVault synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVaultInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVaultSync(DeleteVaultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVaultAsync(DeleteVaultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVaultNotifications asynchronously, invoking a callback when done
-- @param DeleteVaultNotificationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVaultNotificationsAsync(DeleteVaultNotificationsInput, cb)
	assert(DeleteVaultNotificationsInput, "You must provide a DeleteVaultNotificationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVaultNotifications",
	}
	for header,value in pairs(DeleteVaultNotificationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/notification-configuration", DeleteVaultNotificationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVaultNotifications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVaultNotificationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVaultNotificationsSync(DeleteVaultNotificationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVaultNotificationsAsync(DeleteVaultNotificationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListParts asynchronously, invoking a callback when done
-- @param ListPartsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPartsAsync(ListPartsInput, cb)
	assert(ListPartsInput, "You must provide a ListPartsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListParts",
	}
	for header,value in pairs(ListPartsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", ListPartsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListParts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPartsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPartsSync(ListPartsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPartsAsync(ListPartsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProvisionedCapacity asynchronously, invoking a callback when done
-- @param ListProvisionedCapacityInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProvisionedCapacityAsync(ListProvisionedCapacityInput, cb)
	assert(ListProvisionedCapacityInput, "You must provide a ListProvisionedCapacityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListProvisionedCapacity",
	}
	for header,value in pairs(ListProvisionedCapacityInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/provisioned-capacity", ListProvisionedCapacityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProvisionedCapacity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProvisionedCapacityInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListProvisionedCapacitySync(ListProvisionedCapacityInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProvisionedCapacityAsync(ListProvisionedCapacityInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteArchive asynchronously, invoking a callback when done
-- @param DeleteArchiveInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteArchiveAsync(DeleteArchiveInput, cb)
	assert(DeleteArchiveInput, "You must provide a DeleteArchiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteArchive",
	}
	for header,value in pairs(DeleteArchiveInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/archives/{archiveId}", DeleteArchiveInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteArchive synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteArchiveInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteArchiveSync(DeleteArchiveInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteArchiveAsync(DeleteArchiveInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseProvisionedCapacity asynchronously, invoking a callback when done
-- @param PurchaseProvisionedCapacityInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PurchaseProvisionedCapacityAsync(PurchaseProvisionedCapacityInput, cb)
	assert(PurchaseProvisionedCapacityInput, "You must provide a PurchaseProvisionedCapacityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseProvisionedCapacity",
	}
	for header,value in pairs(PurchaseProvisionedCapacityInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/provisioned-capacity", PurchaseProvisionedCapacityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseProvisionedCapacity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseProvisionedCapacityInput
-- @return response
-- @return error_type
-- @return error_message
function M.PurchaseProvisionedCapacitySync(PurchaseProvisionedCapacityInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseProvisionedCapacityAsync(PurchaseProvisionedCapacityInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobOutput asynchronously, invoking a callback when done
-- @param GetJobOutputInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobOutputAsync(GetJobOutputInput, cb)
	assert(GetJobOutputInput, "You must provide a GetJobOutputInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetJobOutput",
	}
	for header,value in pairs(GetJobOutputInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output", GetJobOutputInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobOutput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobOutputInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobOutputSync(GetJobOutputInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobOutputAsync(GetJobOutputInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToVault asynchronously, invoking a callback when done
-- @param AddTagsToVaultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToVaultAsync(AddTagsToVaultInput, cb)
	assert(AddTagsToVaultInput, "You must provide a AddTagsToVaultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTagsToVault",
	}
	for header,value in pairs(AddTagsToVaultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/tags?operation=add", AddTagsToVaultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToVault synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToVaultInput
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsToVaultSync(AddTagsToVaultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToVaultAsync(AddTagsToVaultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateVaultLock asynchronously, invoking a callback when done
-- @param InitiateVaultLockInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateVaultLockAsync(InitiateVaultLockInput, cb)
	assert(InitiateVaultLockInput, "You must provide a InitiateVaultLockInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InitiateVaultLock",
	}
	for header,value in pairs(InitiateVaultLockInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/lock-policy", InitiateVaultLockInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateVaultLock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateVaultLockInput
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateVaultLockSync(InitiateVaultLockInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateVaultLockAsync(InitiateVaultLockInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVaults asynchronously, invoking a callback when done
-- @param ListVaultsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVaultsAsync(ListVaultsInput, cb)
	assert(ListVaultsInput, "You must provide a ListVaultsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListVaults",
	}
	for header,value in pairs(ListVaultsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults", ListVaultsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVaults synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVaultsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListVaultsSync(ListVaultsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVaultsAsync(ListVaultsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVaultLock asynchronously, invoking a callback when done
-- @param GetVaultLockInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVaultLockAsync(GetVaultLockInput, cb)
	assert(GetVaultLockInput, "You must provide a GetVaultLockInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetVaultLock",
	}
	for header,value in pairs(GetVaultLockInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/lock-policy", GetVaultLockInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVaultLock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVaultLockInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetVaultLockSync(GetVaultLockInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVaultLockAsync(GetVaultLockInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJob asynchronously, invoking a callback when done
-- @param DescribeJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeJobAsync(DescribeJobInput, cb)
	assert(DescribeJobInput, "You must provide a DescribeJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeJob",
	}
	for header,value in pairs(DescribeJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/jobs/{jobId}", DescribeJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeJobSync(DescribeJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobAsync(DescribeJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVaultAccessPolicy asynchronously, invoking a callback when done
-- @param GetVaultAccessPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVaultAccessPolicyAsync(GetVaultAccessPolicyInput, cb)
	assert(GetVaultAccessPolicyInput, "You must provide a GetVaultAccessPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetVaultAccessPolicy",
	}
	for header,value in pairs(GetVaultAccessPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/access-policy", GetVaultAccessPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVaultAccessPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVaultAccessPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetVaultAccessPolicySync(GetVaultAccessPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVaultAccessPolicyAsync(GetVaultAccessPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteMultipartUpload asynchronously, invoking a callback when done
-- @param CompleteMultipartUploadInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CompleteMultipartUploadAsync(CompleteMultipartUploadInput, cb)
	assert(CompleteMultipartUploadInput, "You must provide a CompleteMultipartUploadInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CompleteMultipartUpload",
	}
	for header,value in pairs(CompleteMultipartUploadInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", CompleteMultipartUploadInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CompleteMultipartUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompleteMultipartUploadInput
-- @return response
-- @return error_type
-- @return error_message
function M.CompleteMultipartUploadSync(CompleteMultipartUploadInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteMultipartUploadAsync(CompleteMultipartUploadInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetVaultAccessPolicy asynchronously, invoking a callback when done
-- @param SetVaultAccessPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetVaultAccessPolicyAsync(SetVaultAccessPolicyInput, cb)
	assert(SetVaultAccessPolicyInput, "You must provide a SetVaultAccessPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetVaultAccessPolicy",
	}
	for header,value in pairs(SetVaultAccessPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/access-policy", SetVaultAccessPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetVaultAccessPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetVaultAccessPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetVaultAccessPolicySync(SetVaultAccessPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetVaultAccessPolicyAsync(SetVaultAccessPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadMultipartPart asynchronously, invoking a callback when done
-- @param UploadMultipartPartInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadMultipartPartAsync(UploadMultipartPartInput, cb)
	assert(UploadMultipartPartInput, "You must provide a UploadMultipartPartInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadMultipartPart",
	}
	for header,value in pairs(UploadMultipartPartInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", UploadMultipartPartInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadMultipartPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadMultipartPartInput
-- @return response
-- @return error_type
-- @return error_message
function M.UploadMultipartPartSync(UploadMultipartPartInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadMultipartPartAsync(UploadMultipartPartInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVaultNotifications asynchronously, invoking a callback when done
-- @param GetVaultNotificationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVaultNotificationsAsync(GetVaultNotificationsInput, cb)
	assert(GetVaultNotificationsInput, "You must provide a GetVaultNotificationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetVaultNotifications",
	}
	for header,value in pairs(GetVaultNotificationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/notification-configuration", GetVaultNotificationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVaultNotifications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVaultNotificationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetVaultNotificationsSync(GetVaultNotificationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVaultNotificationsAsync(GetVaultNotificationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVaultAccessPolicy asynchronously, invoking a callback when done
-- @param DeleteVaultAccessPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVaultAccessPolicyAsync(DeleteVaultAccessPolicyInput, cb)
	assert(DeleteVaultAccessPolicyInput, "You must provide a DeleteVaultAccessPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVaultAccessPolicy",
	}
	for header,value in pairs(DeleteVaultAccessPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/access-policy", DeleteVaultAccessPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVaultAccessPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVaultAccessPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVaultAccessPolicySync(DeleteVaultAccessPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVaultAccessPolicyAsync(DeleteVaultAccessPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeVault asynchronously, invoking a callback when done
-- @param DescribeVaultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeVaultAsync(DescribeVaultInput, cb)
	assert(DescribeVaultInput, "You must provide a DescribeVaultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeVault",
	}
	for header,value in pairs(DescribeVaultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}", DescribeVaultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVault synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeVaultInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeVaultSync(DescribeVaultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVaultAsync(DescribeVaultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMultipartUploads asynchronously, invoking a callback when done
-- @param ListMultipartUploadsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMultipartUploadsAsync(ListMultipartUploadsInput, cb)
	assert(ListMultipartUploadsInput, "You must provide a ListMultipartUploadsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMultipartUploads",
	}
	for header,value in pairs(ListMultipartUploadsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/multipart-uploads", ListMultipartUploadsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMultipartUploads synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMultipartUploadsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListMultipartUploadsSync(ListMultipartUploadsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMultipartUploadsAsync(ListMultipartUploadsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteVaultLock asynchronously, invoking a callback when done
-- @param CompleteVaultLockInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CompleteVaultLockAsync(CompleteVaultLockInput, cb)
	assert(CompleteVaultLockInput, "You must provide a CompleteVaultLockInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CompleteVaultLock",
	}
	for header,value in pairs(CompleteVaultLockInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}", CompleteVaultLockInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CompleteVaultLock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompleteVaultLockInput
-- @return response
-- @return error_type
-- @return error_message
function M.CompleteVaultLockSync(CompleteVaultLockInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteVaultLockAsync(CompleteVaultLockInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetDataRetrievalPolicy asynchronously, invoking a callback when done
-- @param SetDataRetrievalPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetDataRetrievalPolicyAsync(SetDataRetrievalPolicyInput, cb)
	assert(SetDataRetrievalPolicyInput, "You must provide a SetDataRetrievalPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetDataRetrievalPolicy",
	}
	for header,value in pairs(SetDataRetrievalPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/policies/data-retrieval", SetDataRetrievalPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetDataRetrievalPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetDataRetrievalPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetDataRetrievalPolicySync(SetDataRetrievalPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetDataRetrievalPolicyAsync(SetDataRetrievalPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortVaultLock asynchronously, invoking a callback when done
-- @param AbortVaultLockInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AbortVaultLockAsync(AbortVaultLockInput, cb)
	assert(AbortVaultLockInput, "You must provide a AbortVaultLockInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AbortVaultLock",
	}
	for header,value in pairs(AbortVaultLockInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/lock-policy", AbortVaultLockInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AbortVaultLock synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AbortVaultLockInput
-- @return response
-- @return error_type
-- @return error_message
function M.AbortVaultLockSync(AbortVaultLockInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortVaultLockAsync(AbortVaultLockInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortMultipartUpload asynchronously, invoking a callback when done
-- @param AbortMultipartUploadInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AbortMultipartUploadAsync(AbortMultipartUploadInput, cb)
	assert(AbortMultipartUploadInput, "You must provide a AbortMultipartUploadInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AbortMultipartUpload",
	}
	for header,value in pairs(AbortMultipartUploadInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", AbortMultipartUploadInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AbortMultipartUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AbortMultipartUploadInput
-- @return response
-- @return error_type
-- @return error_message
function M.AbortMultipartUploadSync(AbortMultipartUploadInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortMultipartUploadAsync(AbortMultipartUploadInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromVault asynchronously, invoking a callback when done
-- @param RemoveTagsFromVaultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromVaultAsync(RemoveTagsFromVaultInput, cb)
	assert(RemoveTagsFromVaultInput, "You must provide a RemoveTagsFromVaultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTagsFromVault",
	}
	for header,value in pairs(RemoveTagsFromVaultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/tags?operation=remove", RemoveTagsFromVaultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromVault synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromVaultInput
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsFromVaultSync(RemoveTagsFromVaultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromVaultAsync(RemoveTagsFromVaultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateVault asynchronously, invoking a callback when done
-- @param CreateVaultInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateVaultAsync(CreateVaultInput, cb)
	assert(CreateVaultInput, "You must provide a CreateVaultInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateVault",
	}
	for header,value in pairs(CreateVaultInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}", CreateVaultInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateVault synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateVaultInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateVaultSync(CreateVaultInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateVaultAsync(CreateVaultInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateJob asynchronously, invoking a callback when done
-- @param InitiateJobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateJobAsync(InitiateJobInput, cb)
	assert(InitiateJobInput, "You must provide a InitiateJobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InitiateJob",
	}
	for header,value in pairs(InitiateJobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/jobs", InitiateJobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateJobInput
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateJobSync(InitiateJobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateJobAsync(InitiateJobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateMultipartUpload asynchronously, invoking a callback when done
-- @param InitiateMultipartUploadInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateMultipartUploadAsync(InitiateMultipartUploadInput, cb)
	assert(InitiateMultipartUploadInput, "You must provide a InitiateMultipartUploadInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InitiateMultipartUpload",
	}
	for header,value in pairs(InitiateMultipartUploadInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/multipart-uploads", InitiateMultipartUploadInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateMultipartUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateMultipartUploadInput
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateMultipartUploadSync(InitiateMultipartUploadInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateMultipartUploadAsync(InitiateMultipartUploadInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDataRetrievalPolicy asynchronously, invoking a callback when done
-- @param GetDataRetrievalPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDataRetrievalPolicyAsync(GetDataRetrievalPolicyInput, cb)
	assert(GetDataRetrievalPolicyInput, "You must provide a GetDataRetrievalPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDataRetrievalPolicy",
	}
	for header,value in pairs(GetDataRetrievalPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/policies/data-retrieval", GetDataRetrievalPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDataRetrievalPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataRetrievalPolicyInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDataRetrievalPolicySync(GetDataRetrievalPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataRetrievalPolicyAsync(GetDataRetrievalPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetVaultNotifications asynchronously, invoking a callback when done
-- @param SetVaultNotificationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetVaultNotificationsAsync(SetVaultNotificationsInput, cb)
	assert(SetVaultNotificationsInput, "You must provide a SetVaultNotificationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetVaultNotifications",
	}
	for header,value in pairs(SetVaultNotificationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/notification-configuration", SetVaultNotificationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetVaultNotifications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetVaultNotificationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetVaultNotificationsSync(SetVaultNotificationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetVaultNotificationsAsync(SetVaultNotificationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadArchive asynchronously, invoking a callback when done
-- @param UploadArchiveInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadArchiveAsync(UploadArchiveInput, cb)
	assert(UploadArchiveInput, "You must provide a UploadArchiveInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadArchive",
	}
	for header,value in pairs(UploadArchiveInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/{accountId}/vaults/{vaultName}/archives", UploadArchiveInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadArchive synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadArchiveInput
-- @return response
-- @return error_type
-- @return error_message
function M.UploadArchiveSync(UploadArchiveInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadArchiveAsync(UploadArchiveInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
