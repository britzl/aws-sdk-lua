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

local GetDataRetrievalPolicyInput_keys = { "accountId" = true, nil }

function M.AssertGetDataRetrievalPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataRetrievalPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(GetDataRetrievalPolicyInput_keys[k], "GetDataRetrievalPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataRetrievalPolicyInput
-- <p>Input for GetDataRetrievalPolicy.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
function M.GetDataRetrievalPolicyInput(accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataRetrievalPolicyInput")
	local t = { 
		["accountId"] = accountId,
	}
	M.AssertGetDataRetrievalPolicyInput(t)
	return t
end

local ProvisionedCapacityDescription_keys = { "CapacityId" = true, "ExpirationDate" = true, "StartDate" = true, nil }

function M.AssertProvisionedCapacityDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedCapacityDescription to be of type 'table'")
	if struct["CapacityId"] then M.Assertstring(struct["CapacityId"]) end
	if struct["ExpirationDate"] then M.Assertstring(struct["ExpirationDate"]) end
	if struct["StartDate"] then M.Assertstring(struct["StartDate"]) end
	for k,_ in pairs(struct) do
		assert(ProvisionedCapacityDescription_keys[k], "ProvisionedCapacityDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedCapacityDescription
-- <p>The definition for a provisioned capacity unit.</p>
-- @param CapacityId [string] <p>The ID that identifies the provisioned capacity unit.</p>
-- @param ExpirationDate [string] <p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>
-- @param StartDate [string] <p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>
function M.ProvisionedCapacityDescription(CapacityId, ExpirationDate, StartDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedCapacityDescription")
	local t = { 
		["CapacityId"] = CapacityId,
		["ExpirationDate"] = ExpirationDate,
		["StartDate"] = StartDate,
	}
	M.AssertProvisionedCapacityDescription(t)
	return t
end

local GetJobOutputInput_keys = { "range" = true, "jobId" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertGetJobOutputInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobOutputInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["range"] then M.Assertstring(struct["range"]) end
	if struct["jobId"] then M.Assertstring(struct["jobId"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(GetJobOutputInput_keys[k], "GetJobOutputInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobOutputInput
-- <p>Provides options for downloading output of an Amazon Glacier job.</p>
-- @param range [string] <p>The range of bytes to retrieve from the output. For example, if you want to download the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation downloads the entire output.</p> <p>If the job output is large, then you can use a range to retrieve a portion of the output. This allows you to download the entire output in smaller chunks of bytes. For example, suppose you have 1 GB of job output you want to download and you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job Output requests. You use the following process to download the job output:</p> <ol> <li> <p>Download a 128 MB chunk of output by specifying the appropriate byte range. Verify that all 128 MB of data was received.</p> </li> <li> <p>Along with the data, the response includes a SHA256 tree hash of the payload. You compute the checksum of the payload on the client and compare it with the checksum you received in the response to ensure you received all the expected data.</p> </li> <li> <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time specifying the appropriate byte range.</p> </li> <li> <p>After downloading all the parts of the job output, you have a list of eight checksum values. Compute the tree hash of these values to find the checksum of the entire output. Using the <a>DescribeJob</a> API, obtain job information of the job that provided you the output. The response includes the checksum of the entire archive stored in Amazon Glacier. You compare this value with the checksum you computed to ensure you have downloaded the entire archive content with no errors.</p> <p/> </li> </ol>
-- @param jobId [string] <p>The job ID whose data is downloaded.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: jobId
function M.GetJobOutputInput(range, jobId, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobOutputInput")
	local t = { 
		["range"] = range,
		["jobId"] = jobId,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertGetJobOutputInput(t)
	return t
end

local UploadArchiveInput_keys = { "body" = true, "checksum" = true, "archiveDescription" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertUploadArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadArchiveInput to be of type 'table'")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["body"] then M.AssertStream(struct["body"]) end
	if struct["checksum"] then M.Assertstring(struct["checksum"]) end
	if struct["archiveDescription"] then M.Assertstring(struct["archiveDescription"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(UploadArchiveInput_keys[k], "UploadArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadArchiveInput
-- <p>Provides options to add an archive to a vault.</p>
-- @param body [Stream] <p>The data to upload.</p>
-- @param checksum [string] <p>The SHA256 tree hash of the data being uploaded.</p>
-- @param archiveDescription [string] <p>The optional description of the archive you are uploading.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: vaultName
-- Required parameter: accountId
function M.UploadArchiveInput(body, checksum, archiveDescription, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadArchiveInput")
	local t = { 
		["body"] = body,
		["checksum"] = checksum,
		["archiveDescription"] = archiveDescription,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertUploadArchiveInput(t)
	return t
end

local UploadMultipartPartInput_keys = { "body" = true, "checksum" = true, "vaultName" = true, "range" = true, "uploadId" = true, "accountId" = true, nil }

function M.AssertUploadMultipartPartInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadMultipartPartInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["body"] then M.AssertStream(struct["body"]) end
	if struct["checksum"] then M.Assertstring(struct["checksum"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["range"] then M.Assertstring(struct["range"]) end
	if struct["uploadId"] then M.Assertstring(struct["uploadId"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(UploadMultipartPartInput_keys[k], "UploadMultipartPartInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadMultipartPartInput
-- <p>Provides options to upload a part of an archive in a multipart upload operation.</p>
-- @param body [Stream] <p>The data to upload.</p>
-- @param checksum [string] <p>The SHA256 tree hash of the data being uploaded.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param range [string] <p>Identifies the range of bytes in the assembled archive that will be uploaded in this part. Amazon Glacier uses this information to assemble the archive in the proper sequence. The format of this header follows RFC 2616. An example header is Content-Range:bytes 0-4194303/*.</p>
-- @param uploadId [string] <p>The upload ID of the multipart upload.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.UploadMultipartPartInput(body, checksum, vaultName, range, uploadId, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadMultipartPartInput")
	local t = { 
		["body"] = body,
		["checksum"] = checksum,
		["vaultName"] = vaultName,
		["range"] = range,
		["uploadId"] = uploadId,
		["accountId"] = accountId,
	}
	M.AssertUploadMultipartPartInput(t)
	return t
end

local ServiceUnavailableException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>Returned if the service cannot complete the request.</p>
-- @param message [string] <p>Returned if the service cannot complete the request.</p>
-- @param code [string] <p>500 Internal Server Error</p>
-- @param type [string] <p>Server</p>
function M.ServiceUnavailableException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local RequestTimeoutException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertRequestTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTimeoutException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(RequestTimeoutException_keys[k], "RequestTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTimeoutException
-- <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
-- @param message [string] <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
-- @param code [string] <p>408 Request Timeout</p>
-- @param type [string] <p>Client</p>
function M.RequestTimeoutException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestTimeoutException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertRequestTimeoutException(t)
	return t
end

local DeleteArchiveInput_keys = { "archiveId" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertDeleteArchiveInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteArchiveInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["archiveId"], "Expected key archiveId to exist in table")
	if struct["archiveId"] then M.Assertstring(struct["archiveId"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteArchiveInput_keys[k], "DeleteArchiveInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteArchiveInput
-- <p>Provides options for deleting an archive from an Amazon Glacier vault.</p>
-- @param archiveId [string] <p>The ID of the archive to delete.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: archiveId
function M.DeleteArchiveInput(archiveId, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteArchiveInput")
	local t = { 
		["archiveId"] = archiveId,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertDeleteArchiveInput(t)
	return t
end

local AbortMultipartUploadInput_keys = { "uploadId" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertAbortMultipartUploadInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortMultipartUploadInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["uploadId"] then M.Assertstring(struct["uploadId"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(AbortMultipartUploadInput_keys[k], "AbortMultipartUploadInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortMultipartUploadInput
-- <p>Provides options to abort a multipart upload identified by the upload ID.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart Upload</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>
-- @param uploadId [string] <p>The upload ID of the multipart upload to delete.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.AbortMultipartUploadInput(uploadId, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortMultipartUploadInput")
	local t = { 
		["uploadId"] = uploadId,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertAbortMultipartUploadInput(t)
	return t
end

local ListVaultsInput_keys = { "marker" = true, "limit" = true, "accountId" = true, nil }

function M.AssertListVaultsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVaultsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["limit"] then M.Assertstring(struct["limit"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(ListVaultsInput_keys[k], "ListVaultsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVaultsInput
-- <p>Provides options to retrieve the vault list owned by the calling user's account. The list provides metadata information for each vault.</p>
-- @param marker [string] <p>A string used for pagination. The marker specifies the vault ARN after which the listing of vaults should begin.</p>
-- @param limit [string] <p>The maximum number of vaults to be returned. The default limit is 1000. The number of vaults returned might be fewer than the specified limit, but the number of returned vaults never exceeds the limit.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
function M.ListVaultsInput(marker, limit, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVaultsInput")
	local t = { 
		["marker"] = marker,
		["limit"] = limit,
		["accountId"] = accountId,
	}
	M.AssertListVaultsInput(t)
	return t
end

local GetVaultNotificationsOutput_keys = { "vaultNotificationConfig" = true, nil }

function M.AssertGetVaultNotificationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultNotificationsOutput to be of type 'table'")
	if struct["vaultNotificationConfig"] then M.AssertVaultNotificationConfig(struct["vaultNotificationConfig"]) end
	for k,_ in pairs(struct) do
		assert(GetVaultNotificationsOutput_keys[k], "GetVaultNotificationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultNotificationsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param vaultNotificationConfig [VaultNotificationConfig] <p>Returns the notification configuration set on the vault.</p>
function M.GetVaultNotificationsOutput(vaultNotificationConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultNotificationsOutput")
	local t = { 
		["vaultNotificationConfig"] = vaultNotificationConfig,
	}
	M.AssertGetVaultNotificationsOutput(t)
	return t
end

local GetVaultLockInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertGetVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(GetVaultLockInput_keys[k], "GetVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultLockInput
-- <p>The input values for <code>GetVaultLock</code>.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.GetVaultLockInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultLockInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertGetVaultLockInput(t)
	return t
end

local InitiateVaultLockInput_keys = { "policy" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertInitiateVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["policy"] then M.AssertVaultLockPolicy(struct["policy"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateVaultLockInput_keys[k], "InitiateVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateVaultLockInput
-- <p>The input values for <code>InitiateVaultLock</code>.</p>
-- @param policy [VaultLockPolicy] <p>The vault lock policy as a JSON string, which uses "\" as an escape character.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.InitiateVaultLockInput(policy, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateVaultLockInput")
	local t = { 
		["policy"] = policy,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertInitiateVaultLockInput(t)
	return t
end

local ListProvisionedCapacityInput_keys = { "accountId" = true, nil }

function M.AssertListProvisionedCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisionedCapacityInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(ListProvisionedCapacityInput_keys[k], "ListProvisionedCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisionedCapacityInput
--  
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
function M.ListProvisionedCapacityInput(accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisionedCapacityInput")
	local t = { 
		["accountId"] = accountId,
	}
	M.AssertListProvisionedCapacityInput(t)
	return t
end

local ListJobsOutput_keys = { "Marker" = true, "JobList" = true, nil }

function M.AssertListJobsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsOutput to be of type 'table'")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["JobList"] then M.AssertJobList(struct["JobList"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsOutput_keys[k], "ListJobsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param Marker [string] <p> An opaque string used for pagination that specifies the job at which the listing of jobs should begin. You get the <code>marker</code> value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of the results started in a previous List Jobs request. </p>
-- @param JobList [JobList] <p>A list of job objects. Each job object contains metadata describing the job.</p>
function M.ListJobsOutput(Marker, JobList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsOutput")
	local t = { 
		["Marker"] = Marker,
		["JobList"] = JobList,
	}
	M.AssertListJobsOutput(t)
	return t
end

local PartListElement_keys = { "RangeInBytes" = true, "SHA256TreeHash" = true, nil }

function M.AssertPartListElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PartListElement to be of type 'table'")
	if struct["RangeInBytes"] then M.Assertstring(struct["RangeInBytes"]) end
	if struct["SHA256TreeHash"] then M.Assertstring(struct["SHA256TreeHash"]) end
	for k,_ in pairs(struct) do
		assert(PartListElement_keys[k], "PartListElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PartListElement
-- <p>A list of the part sizes of the multipart upload.</p>
-- @param RangeInBytes [string] <p>The byte range of a part, inclusive of the upper value of the range.</p>
-- @param SHA256TreeHash [string] <p>The SHA256 tree hash value that Amazon Glacier calculated for the part. This field is never <code>null</code>.</p>
function M.PartListElement(RangeInBytes, SHA256TreeHash, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PartListElement")
	local t = { 
		["RangeInBytes"] = RangeInBytes,
		["SHA256TreeHash"] = SHA256TreeHash,
	}
	M.AssertPartListElement(t)
	return t
end

local DeleteVaultInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertDeleteVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVaultInput_keys[k], "DeleteVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVaultInput
-- <p>Provides options for deleting a vault from Amazon Glacier.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DeleteVaultInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVaultInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertDeleteVaultInput(t)
	return t
end

local InitiateJobInput_keys = { "jobParameters" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertInitiateJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateJobInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["jobParameters"] then M.AssertJobParameters(struct["jobParameters"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateJobInput_keys[k], "InitiateJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateJobInput
-- <p>Provides options for initiating an Amazon Glacier job.</p>
-- @param jobParameters [JobParameters] <p>Provides options for specifying job information.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.InitiateJobInput(jobParameters, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateJobInput")
	local t = { 
		["jobParameters"] = jobParameters,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertInitiateJobInput(t)
	return t
end

local ListPartsInput_keys = { "marker" = true, "uploadId" = true, "vaultName" = true, "limit" = true, "accountId" = true, nil }

function M.AssertListPartsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["uploadId"] then M.Assertstring(struct["uploadId"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["limit"] then M.Assertstring(struct["limit"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(ListPartsInput_keys[k], "ListPartsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsInput
-- <p>Provides options for retrieving a list of parts of an archive that have been uploaded in a specific multipart upload.</p>
-- @param marker [string] <p>An opaque string used for pagination. This value specifies the part at which the listing of parts should begin. Get the marker value from the response of a previous List Parts response. You need only include the marker if you are continuing the pagination of results started in a previous List Parts request.</p>
-- @param uploadId [string] <p>The upload ID of the multipart upload.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param limit [string] <p>The maximum number of parts to be returned. The default limit is 1000. The number of parts returned might be fewer than the specified limit, but the number of returned parts never exceeds the limit.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.ListPartsInput(marker, uploadId, vaultName, limit, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPartsInput")
	local t = { 
		["marker"] = marker,
		["uploadId"] = uploadId,
		["vaultName"] = vaultName,
		["limit"] = limit,
		["accountId"] = accountId,
	}
	M.AssertListPartsInput(t)
	return t
end

local GetVaultAccessPolicyInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertGetVaultAccessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultAccessPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(GetVaultAccessPolicyInput_keys[k], "GetVaultAccessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultAccessPolicyInput
-- <p>Input for GetVaultAccessPolicy.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.GetVaultAccessPolicyInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultAccessPolicyInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertGetVaultAccessPolicyInput(t)
	return t
end

local ArchiveCreationOutput_keys = { "archiveId" = true, "checksum" = true, "location" = true, nil }

function M.AssertArchiveCreationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveCreationOutput to be of type 'table'")
	if struct["archiveId"] then M.Assertstring(struct["archiveId"]) end
	if struct["checksum"] then M.Assertstring(struct["checksum"]) end
	if struct["location"] then M.Assertstring(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(ArchiveCreationOutput_keys[k], "ArchiveCreationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveCreationOutput
-- <p>Contains the Amazon Glacier response to your request.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>
-- @param archiveId [string] <p>The ID of the archive. This value is also included as part of the location.</p>
-- @param checksum [string] <p>The checksum of the archive computed by Amazon Glacier.</p>
-- @param location [string] <p>The relative URI path of the newly added archive resource.</p>
function M.ArchiveCreationOutput(archiveId, checksum, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArchiveCreationOutput")
	local t = { 
		["archiveId"] = archiveId,
		["checksum"] = checksum,
		["location"] = location,
	}
	M.AssertArchiveCreationOutput(t)
	return t
end

local RemoveTagsFromVaultInput_keys = { "TagKeys" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertRemoveTagsFromVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromVaultInput_keys[k], "RemoveTagsFromVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromVaultInput
-- <p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>
-- @param TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the vault.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.RemoveTagsFromVaultInput(TagKeys, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromVaultInput")
	local t = { 
		["TagKeys"] = TagKeys,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertRemoveTagsFromVaultInput(t)
	return t
end

local InventoryRetrievalJobDescription_keys = { "Limit" = true, "StartDate" = true, "Marker" = true, "EndDate" = true, "Format" = true, nil }

function M.AssertInventoryRetrievalJobDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryRetrievalJobDescription to be of type 'table'")
	if struct["Limit"] then M.Assertstring(struct["Limit"]) end
	if struct["StartDate"] then M.AssertDateTime(struct["StartDate"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["EndDate"] then M.AssertDateTime(struct["EndDate"]) end
	if struct["Format"] then M.Assertstring(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(InventoryRetrievalJobDescription_keys[k], "InventoryRetrievalJobDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryRetrievalJobDescription
-- <p>Describes the options for a range inventory retrieval job.</p>
-- @param Limit [string] <p>The maximum number of inventory items returned per vault inventory retrieval request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>
-- @param StartDate [DateTime] <p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @param Marker [string] <p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering"> Range Inventory Retrieval</a>.</p>
-- @param EndDate [DateTime] <p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @param Format [string] <p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>
function M.InventoryRetrievalJobDescription(Limit, StartDate, Marker, EndDate, Format, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryRetrievalJobDescription")
	local t = { 
		["Limit"] = Limit,
		["StartDate"] = StartDate,
		["Marker"] = Marker,
		["EndDate"] = EndDate,
		["Format"] = Format,
	}
	M.AssertInventoryRetrievalJobDescription(t)
	return t
end

local UploadListElement_keys = { "MultipartUploadId" = true, "ArchiveDescription" = true, "CreationDate" = true, "PartSizeInBytes" = true, "VaultARN" = true, nil }

function M.AssertUploadListElement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadListElement to be of type 'table'")
	if struct["MultipartUploadId"] then M.Assertstring(struct["MultipartUploadId"]) end
	if struct["ArchiveDescription"] then M.Assertstring(struct["ArchiveDescription"]) end
	if struct["CreationDate"] then M.Assertstring(struct["CreationDate"]) end
	if struct["PartSizeInBytes"] then M.Assertlong(struct["PartSizeInBytes"]) end
	if struct["VaultARN"] then M.Assertstring(struct["VaultARN"]) end
	for k,_ in pairs(struct) do
		assert(UploadListElement_keys[k], "UploadListElement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadListElement
-- <p>A list of in-progress multipart uploads for a vault.</p>
-- @param MultipartUploadId [string] <p>The ID of a multipart upload.</p>
-- @param ArchiveDescription [string] <p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>
-- @param CreationDate [string] <p>The UTC time at which the multipart upload was initiated.</p>
-- @param PartSizeInBytes [long] <p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is the size of all the parts in the upload except the last part, which may be smaller than this size.</p>
-- @param VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>
function M.UploadListElement(MultipartUploadId, ArchiveDescription, CreationDate, PartSizeInBytes, VaultARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadListElement")
	local t = { 
		["MultipartUploadId"] = MultipartUploadId,
		["ArchiveDescription"] = ArchiveDescription,
		["CreationDate"] = CreationDate,
		["PartSizeInBytes"] = PartSizeInBytes,
		["VaultARN"] = VaultARN,
	}
	M.AssertUploadListElement(t)
	return t
end

local GetVaultNotificationsInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertGetVaultNotificationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultNotificationsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(GetVaultNotificationsInput_keys[k], "GetVaultNotificationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultNotificationsInput
-- <p>Provides options for retrieving the notification configuration set on an Amazon Glacier vault.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.GetVaultNotificationsInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultNotificationsInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertGetVaultNotificationsInput(t)
	return t
end

local InitiateMultipartUploadInput_keys = { "partSize" = true, "archiveDescription" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertInitiateMultipartUploadInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateMultipartUploadInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["partSize"] then M.Assertstring(struct["partSize"]) end
	if struct["archiveDescription"] then M.Assertstring(struct["archiveDescription"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateMultipartUploadInput_keys[k], "InitiateMultipartUploadInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateMultipartUploadInput
-- <p>Provides options for initiating a multipart upload to an Amazon Glacier vault.</p>
-- @param partSize [string] <p>The size of each part except the last, in bytes. The last part can be smaller than this part size.</p>
-- @param archiveDescription [string] <p>The archive description that you are uploading in parts.</p> <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.InitiateMultipartUploadInput(partSize, archiveDescription, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateMultipartUploadInput")
	local t = { 
		["partSize"] = partSize,
		["archiveDescription"] = archiveDescription,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertInitiateMultipartUploadInput(t)
	return t
end

local ListMultipartUploadsOutput_keys = { "Marker" = true, "UploadsList" = true, nil }

function M.AssertListMultipartUploadsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsOutput to be of type 'table'")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["UploadsList"] then M.AssertUploadsList(struct["UploadsList"]) end
	for k,_ in pairs(struct) do
		assert(ListMultipartUploadsOutput_keys[k], "ListMultipartUploadsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param Marker [string] <p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Multipart Uploads request to obtain more uploads in the list. If there are no more uploads, this value is <code>null</code>.</p>
-- @param UploadsList [UploadsList] <p>A list of in-progress multipart uploads.</p>
function M.ListMultipartUploadsOutput(Marker, UploadsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMultipartUploadsOutput")
	local t = { 
		["Marker"] = Marker,
		["UploadsList"] = UploadsList,
	}
	M.AssertListMultipartUploadsOutput(t)
	return t
end

local DeleteVaultAccessPolicyInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertDeleteVaultAccessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVaultAccessPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVaultAccessPolicyInput_keys[k], "DeleteVaultAccessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVaultAccessPolicyInput
-- <p>DeleteVaultAccessPolicy input.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DeleteVaultAccessPolicyInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVaultAccessPolicyInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertDeleteVaultAccessPolicyInput(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
-- @param message [string] <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
-- @param code [string] <p>404 Not Found</p>
-- @param type [string] <p>Client</p>
function M.ResourceNotFoundException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local CreateVaultInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertCreateVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(CreateVaultInput_keys[k], "CreateVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVaultInput
-- <p>Provides options to create a vault.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.CreateVaultInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVaultInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertCreateVaultInput(t)
	return t
end

local SetDataRetrievalPolicyInput_keys = { "Policy" = true, "accountId" = true, nil }

function M.AssertSetDataRetrievalPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDataRetrievalPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["Policy"] then M.AssertDataRetrievalPolicy(struct["Policy"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(SetDataRetrievalPolicyInput_keys[k], "SetDataRetrievalPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDataRetrievalPolicyInput
-- <p>SetDataRetrievalPolicy input.</p>
-- @param Policy [DataRetrievalPolicy] <p>The data retrieval policy in JSON format.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
function M.SetDataRetrievalPolicyInput(Policy, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDataRetrievalPolicyInput")
	local t = { 
		["Policy"] = Policy,
		["accountId"] = accountId,
	}
	M.AssertSetDataRetrievalPolicyInput(t)
	return t
end

local InitiateMultipartUploadOutput_keys = { "uploadId" = true, "location" = true, nil }

function M.AssertInitiateMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateMultipartUploadOutput to be of type 'table'")
	if struct["uploadId"] then M.Assertstring(struct["uploadId"]) end
	if struct["location"] then M.Assertstring(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(InitiateMultipartUploadOutput_keys[k], "InitiateMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateMultipartUploadOutput
-- <p>The Amazon Glacier response to your request.</p>
-- @param uploadId [string] <p>The ID of the multipart upload. This value is also included as part of the location.</p>
-- @param location [string] <p>The relative URI path of the multipart upload ID Amazon Glacier created.</p>
function M.InitiateMultipartUploadOutput(uploadId, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateMultipartUploadOutput")
	local t = { 
		["uploadId"] = uploadId,
		["location"] = location,
	}
	M.AssertInitiateMultipartUploadOutput(t)
	return t
end

local GetJobOutputOutput_keys = { "body" = true, "status" = true, "acceptRanges" = true, "contentType" = true, "checksum" = true, "contentRange" = true, "archiveDescription" = true, nil }

function M.AssertGetJobOutputOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobOutputOutput to be of type 'table'")
	if struct["body"] then M.AssertStream(struct["body"]) end
	if struct["status"] then M.Asserthttpstatus(struct["status"]) end
	if struct["acceptRanges"] then M.Assertstring(struct["acceptRanges"]) end
	if struct["contentType"] then M.Assertstring(struct["contentType"]) end
	if struct["checksum"] then M.Assertstring(struct["checksum"]) end
	if struct["contentRange"] then M.Assertstring(struct["contentRange"]) end
	if struct["archiveDescription"] then M.Assertstring(struct["archiveDescription"]) end
	for k,_ in pairs(struct) do
		assert(GetJobOutputOutput_keys[k], "GetJobOutputOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobOutputOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param body [Stream] <p>The job data, either archive data or inventory data.</p>
-- @param status [httpstatus] <p>The HTTP response code for a job output request. The value depends on whether a range was specified in the request.</p>
-- @param acceptRanges [string] <p>Indicates the range units accepted. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html">RFC2616</a>. </p>
-- @param contentType [string] <p>The Content-Type depends on whether the job output is an archive or a vault inventory. For archive data, the Content-Type is application/octet-stream. For vault inventory, if you requested CSV format when you initiated the job, the Content-Type is text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type is application/json.</p>
-- @param checksum [string] <p>The checksum of the data in the response. This header is returned only when retrieving the output for an archive retrieval job. Furthermore, this header appears only under the following conditions:</p> <ul> <li> <p>You get the entire range of the archive.</p> </li> <li> <p>You request a range to return of the archive that starts and ends on a multiple of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> <li> <p>You request a range of the archive to return that starts on a multiple of 1 MB and goes to the end of the archive. For example, if you have a 3.1 MB archive and you specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> </ul>
-- @param contentRange [string] <p>The range of bytes returned by Amazon Glacier. If only partial output is downloaded, the response provides the range of bytes Amazon Glacier returned. For example, bytes 0-1048575/8388608 returns the first 1 MB from 8 MB.</p>
-- @param archiveDescription [string] <p>The description of an archive.</p>
function M.GetJobOutputOutput(body, status, acceptRanges, contentType, checksum, contentRange, archiveDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobOutputOutput")
	local t = { 
		["body"] = body,
		["status"] = status,
		["acceptRanges"] = acceptRanges,
		["contentType"] = contentType,
		["checksum"] = checksum,
		["contentRange"] = contentRange,
		["archiveDescription"] = archiveDescription,
	}
	M.AssertGetJobOutputOutput(t)
	return t
end

local ListVaultsOutput_keys = { "Marker" = true, "VaultList" = true, nil }

function M.AssertListVaultsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVaultsOutput to be of type 'table'")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["VaultList"] then M.AssertVaultList(struct["VaultList"]) end
	for k,_ in pairs(struct) do
		assert(ListVaultsOutput_keys[k], "ListVaultsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVaultsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param Marker [string] <p>The vault ARN at which to continue pagination of the results. You use the marker in another List Vaults request to obtain more vaults in the list.</p>
-- @param VaultList [VaultList] <p>List of vaults.</p>
function M.ListVaultsOutput(Marker, VaultList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVaultsOutput")
	local t = { 
		["Marker"] = Marker,
		["VaultList"] = VaultList,
	}
	M.AssertListVaultsOutput(t)
	return t
end

local UploadMultipartPartOutput_keys = { "checksum" = true, nil }

function M.AssertUploadMultipartPartOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadMultipartPartOutput to be of type 'table'")
	if struct["checksum"] then M.Assertstring(struct["checksum"]) end
	for k,_ in pairs(struct) do
		assert(UploadMultipartPartOutput_keys[k], "UploadMultipartPartOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadMultipartPartOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param checksum [string] <p>The SHA256 tree hash that Amazon Glacier computed for the uploaded part.</p>
function M.UploadMultipartPartOutput(checksum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadMultipartPartOutput")
	local t = { 
		["checksum"] = checksum,
	}
	M.AssertUploadMultipartPartOutput(t)
	return t
end

local CreateVaultOutput_keys = { "location" = true, nil }

function M.AssertCreateVaultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVaultOutput to be of type 'table'")
	if struct["location"] then M.Assertstring(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(CreateVaultOutput_keys[k], "CreateVaultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVaultOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param location [string] <p>The URI of the vault that was created.</p>
function M.CreateVaultOutput(location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVaultOutput")
	local t = { 
		["location"] = location,
	}
	M.AssertCreateVaultOutput(t)
	return t
end

local InitiateJobOutput_keys = { "location" = true, "jobId" = true, nil }

function M.AssertInitiateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateJobOutput to be of type 'table'")
	if struct["location"] then M.Assertstring(struct["location"]) end
	if struct["jobId"] then M.Assertstring(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateJobOutput_keys[k], "InitiateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateJobOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param location [string] <p>The relative URI path of the job.</p>
-- @param jobId [string] <p>The ID of the job.</p>
function M.InitiateJobOutput(location, jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateJobOutput")
	local t = { 
		["location"] = location,
		["jobId"] = jobId,
	}
	M.AssertInitiateJobOutput(t)
	return t
end

local ListProvisionedCapacityOutput_keys = { "ProvisionedCapacityList" = true, nil }

function M.AssertListProvisionedCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProvisionedCapacityOutput to be of type 'table'")
	if struct["ProvisionedCapacityList"] then M.AssertProvisionedCapacityList(struct["ProvisionedCapacityList"]) end
	for k,_ in pairs(struct) do
		assert(ListProvisionedCapacityOutput_keys[k], "ListProvisionedCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProvisionedCapacityOutput
--  
-- @param ProvisionedCapacityList [ProvisionedCapacityList] <p>The response body contains the following JSON fields.</p>
function M.ListProvisionedCapacityOutput(ProvisionedCapacityList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisionedCapacityOutput")
	local t = { 
		["ProvisionedCapacityList"] = ProvisionedCapacityList,
	}
	M.AssertListProvisionedCapacityOutput(t)
	return t
end

local SetVaultAccessPolicyInput_keys = { "policy" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertSetVaultAccessPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetVaultAccessPolicyInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["policy"] then M.AssertVaultAccessPolicy(struct["policy"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(SetVaultAccessPolicyInput_keys[k], "SetVaultAccessPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetVaultAccessPolicyInput
-- <p>SetVaultAccessPolicy input.</p>
-- @param policy [VaultAccessPolicy] <p>The vault access policy as a JSON string.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.SetVaultAccessPolicyInput(policy, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetVaultAccessPolicyInput")
	local t = { 
		["policy"] = policy,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertSetVaultAccessPolicyInput(t)
	return t
end

local ListJobsInput_keys = { "completed" = true, "vaultName" = true, "limit" = true, "marker" = true, "accountId" = true, "statuscode" = true, nil }

function M.AssertListJobsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["completed"] then M.Assertstring(struct["completed"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["limit"] then M.Assertstring(struct["limit"]) end
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	if struct["statuscode"] then M.Assertstring(struct["statuscode"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsInput_keys[k], "ListJobsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsInput
-- <p>Provides options for retrieving a job list for an Amazon Glacier vault.</p>
-- @param completed [string] <p>The state of the jobs to return. You can specify <code>true</code> or <code>false</code>.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param limit [string] <p>The maximum number of jobs to be returned. The default limit is 1000. The number of jobs returned might be fewer than the specified limit, but the number of returned jobs never exceeds the limit.</p>
-- @param marker [string] <p>An opaque string used for pagination. This value specifies the job at which the listing of jobs should begin. Get the marker value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of results started in a previous List Jobs request.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- @param statuscode [string] <p>The type of job status to return. You can specify the following values: <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.ListJobsInput(completed, vaultName, limit, marker, accountId, statuscode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsInput")
	local t = { 
		["completed"] = completed,
		["vaultName"] = vaultName,
		["limit"] = limit,
		["marker"] = marker,
		["accountId"] = accountId,
		["statuscode"] = statuscode,
	}
	M.AssertListJobsInput(t)
	return t
end

local CompleteMultipartUploadInput_keys = { "uploadId" = true, "checksum" = true, "vaultName" = true, "archiveSize" = true, "accountId" = true, nil }

function M.AssertCompleteMultipartUploadInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteMultipartUploadInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	if struct["uploadId"] then M.Assertstring(struct["uploadId"]) end
	if struct["checksum"] then M.Assertstring(struct["checksum"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["archiveSize"] then M.Assertstring(struct["archiveSize"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(CompleteMultipartUploadInput_keys[k], "CompleteMultipartUploadInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteMultipartUploadInput
-- <p>Provides options to complete a multipart upload operation. This informs Amazon Glacier that all the archive parts have been uploaded and Amazon Glacier can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Amazon Glacier returns the URI path of the newly created archive resource.</p>
-- @param uploadId [string] <p>The upload ID of the multipart upload.</p>
-- @param checksum [string] <p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash of the individual parts. If the value you specify in the request does not match the SHA256 tree hash of the final assembled archive as computed by Amazon Glacier, Amazon Glacier returns an error and the request fails.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param archiveSize [string] <p>The total size, in bytes, of the entire archive. This value should be the sum of all the sizes of the individual parts that you uploaded.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.CompleteMultipartUploadInput(uploadId, checksum, vaultName, archiveSize, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteMultipartUploadInput")
	local t = { 
		["uploadId"] = uploadId,
		["checksum"] = checksum,
		["vaultName"] = vaultName,
		["archiveSize"] = archiveSize,
		["accountId"] = accountId,
	}
	M.AssertCompleteMultipartUploadInput(t)
	return t
end

local GetVaultLockOutput_keys = { "Policy" = true, "State" = true, "CreationDate" = true, "ExpirationDate" = true, nil }

function M.AssertGetVaultLockOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultLockOutput to be of type 'table'")
	if struct["Policy"] then M.Assertstring(struct["Policy"]) end
	if struct["State"] then M.Assertstring(struct["State"]) end
	if struct["CreationDate"] then M.Assertstring(struct["CreationDate"]) end
	if struct["ExpirationDate"] then M.Assertstring(struct["ExpirationDate"]) end
	for k,_ in pairs(struct) do
		assert(GetVaultLockOutput_keys[k], "GetVaultLockOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultLockOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param Policy [string] <p>The vault lock policy as a JSON string, which uses "\" as an escape character.</p>
-- @param State [string] <p>The state of the vault lock. <code>InProgress</code> or <code>Locked</code>.</p>
-- @param CreationDate [string] <p>The UTC date and time at which the vault lock was put into the <code>InProgress</code> state.</p>
-- @param ExpirationDate [string] <p>The UTC date and time at which the lock ID expires. This value can be <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>
function M.GetVaultLockOutput(Policy, State, CreationDate, ExpirationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultLockOutput")
	local t = { 
		["Policy"] = Policy,
		["State"] = State,
		["CreationDate"] = CreationDate,
		["ExpirationDate"] = ExpirationDate,
	}
	M.AssertGetVaultLockOutput(t)
	return t
end

local LimitExceededException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Returned if the request results in a vault or account limit being exceeded.</p>
-- @param message [string] <p>Returned if the request results in a vault limit or tags limit being exceeded.</p>
-- @param code [string] <p>400 Bad Request</p>
-- @param type [string] <p>Client</p>
function M.LimitExceededException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertLimitExceededException(t)
	return t
end

local DataRetrievalRule_keys = { "BytesPerHour" = true, "Strategy" = true, nil }

function M.AssertDataRetrievalRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataRetrievalRule to be of type 'table'")
	if struct["BytesPerHour"] then M.AssertNullableLong(struct["BytesPerHour"]) end
	if struct["Strategy"] then M.Assertstring(struct["Strategy"]) end
	for k,_ in pairs(struct) do
		assert(DataRetrievalRule_keys[k], "DataRetrievalRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataRetrievalRule
-- <p>Data retrieval policy rule.</p>
-- @param BytesPerHour [NullableLong] <p>The maximum number of bytes that can be retrieved in an hour.</p> <p>This field is required only if the value of the Strategy field is <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is not set to <code>BytesPerHour</code> and you set this field.</p>
-- @param Strategy [string] <p>The type of data retrieval policy to set.</p> <p>Valid values: BytesPerHour|FreeTier|None</p>
function M.DataRetrievalRule(BytesPerHour, Strategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataRetrievalRule")
	local t = { 
		["BytesPerHour"] = BytesPerHour,
		["Strategy"] = Strategy,
	}
	M.AssertDataRetrievalRule(t)
	return t
end

local MissingParameterValueException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertMissingParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingParameterValueException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(MissingParameterValueException_keys[k], "MissingParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingParameterValueException
-- <p>Returned if a required header or parameter is missing from the request.</p>
-- @param message [string] <p>Returned if no authentication data is found for the request.</p>
-- @param code [string] <p>400 Bad Request</p>
-- @param type [string] <p>Client.</p>
function M.MissingParameterValueException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingParameterValueException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertMissingParameterValueException(t)
	return t
end

local DataRetrievalPolicy_keys = { "Rules" = true, nil }

function M.AssertDataRetrievalPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataRetrievalPolicy to be of type 'table'")
	if struct["Rules"] then M.AssertDataRetrievalRulesList(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(DataRetrievalPolicy_keys[k], "DataRetrievalPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataRetrievalPolicy
-- <p>Data retrieval policy.</p>
-- @param Rules [DataRetrievalRulesList] <p>The policy rule. Although this is a list type, currently there must be only one rule, which contains a Strategy field and optionally a BytesPerHour field.</p>
function M.DataRetrievalPolicy(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataRetrievalPolicy")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertDataRetrievalPolicy(t)
	return t
end

local PolicyEnforcedException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertPolicyEnforcedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyEnforcedException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(PolicyEnforcedException_keys[k], "PolicyEnforcedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyEnforcedException
-- <p>Returned if a retrieval job would exceed the current data policy's retrieval rate limit. For more information about data retrieval policies,</p>
-- @param message [string] <p>InitiateJob request denied by current data retrieval policy.</p>
-- @param code [string] <p>PolicyEnforcedException</p>
-- @param type [string] <p>Client</p>
function M.PolicyEnforcedException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyEnforcedException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertPolicyEnforcedException(t)
	return t
end

local AddTagsToVaultInput_keys = { "Tags" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertAddTagsToVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["Tags"] then M.AssertTagMap(struct["Tags"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToVaultInput_keys[k], "AddTagsToVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToVaultInput
-- <p>The input values for <code>AddTagsToVault</code>.</p>
-- @param Tags [TagMap] <p>The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.AddTagsToVaultInput(Tags, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToVaultInput")
	local t = { 
		["Tags"] = Tags,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertAddTagsToVaultInput(t)
	return t
end

local SetVaultNotificationsInput_keys = { "vaultNotificationConfig" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertSetVaultNotificationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetVaultNotificationsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultNotificationConfig"] then M.AssertVaultNotificationConfig(struct["vaultNotificationConfig"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(SetVaultNotificationsInput_keys[k], "SetVaultNotificationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetVaultNotificationsInput
-- <p>Provides options to configure notifications that will be sent when specific events happen to a vault.</p>
-- @param vaultNotificationConfig [VaultNotificationConfig] <p>Provides options for specifying notification configuration.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.SetVaultNotificationsInput(vaultNotificationConfig, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetVaultNotificationsInput")
	local t = { 
		["vaultNotificationConfig"] = vaultNotificationConfig,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertSetVaultNotificationsInput(t)
	return t
end

local CompleteVaultLockInput_keys = { "lockId" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertCompleteVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["lockId"], "Expected key lockId to exist in table")
	if struct["lockId"] then M.Assertstring(struct["lockId"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(CompleteVaultLockInput_keys[k], "CompleteVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteVaultLockInput
-- <p>The input values for <code>CompleteVaultLock</code>.</p>
-- @param lockId [string] <p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: lockId
function M.CompleteVaultLockInput(lockId, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteVaultLockInput")
	local t = { 
		["lockId"] = lockId,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertCompleteVaultLockInput(t)
	return t
end

local InvalidParameterValueException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>Returned if a parameter of the request is incorrectly specified.</p>
-- @param message [string] <p>Returned if a parameter of the request is incorrectly specified.</p>
-- @param code [string] <p>400 Bad Request</p>
-- @param type [string] <p>Client</p>
function M.InvalidParameterValueException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local ListTagsForVaultOutput_keys = { "Tags" = true, nil }

function M.AssertListTagsForVaultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForVaultOutput to be of type 'table'")
	if struct["Tags"] then M.AssertTagMap(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForVaultOutput_keys[k], "ListTagsForVaultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForVaultOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param Tags [TagMap] <p>The tags attached to the vault. Each tag is composed of a key and a value.</p>
function M.ListTagsForVaultOutput(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForVaultOutput")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertListTagsForVaultOutput(t)
	return t
end

local InitiateVaultLockOutput_keys = { "lockId" = true, nil }

function M.AssertInitiateVaultLockOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateVaultLockOutput to be of type 'table'")
	if struct["lockId"] then M.Assertstring(struct["lockId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateVaultLockOutput_keys[k], "InitiateVaultLockOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateVaultLockOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param lockId [string] <p>The lock ID, which is used to complete the vault locking process.</p>
function M.InitiateVaultLockOutput(lockId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateVaultLockOutput")
	local t = { 
		["lockId"] = lockId,
	}
	M.AssertInitiateVaultLockOutput(t)
	return t
end

local PurchaseProvisionedCapacityOutput_keys = { "capacityId" = true, nil }

function M.AssertPurchaseProvisionedCapacityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseProvisionedCapacityOutput to be of type 'table'")
	if struct["capacityId"] then M.Assertstring(struct["capacityId"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseProvisionedCapacityOutput_keys[k], "PurchaseProvisionedCapacityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseProvisionedCapacityOutput
--  
-- @param capacityId [string] <p>The ID that identifies the provisioned capacity unit.</p>
function M.PurchaseProvisionedCapacityOutput(capacityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseProvisionedCapacityOutput")
	local t = { 
		["capacityId"] = capacityId,
	}
	M.AssertPurchaseProvisionedCapacityOutput(t)
	return t
end

local GlacierJobDescription_keys = { "CompletionDate" = true, "VaultARN" = true, "RetrievalByteRange" = true, "Tier" = true, "SHA256TreeHash" = true, "SNSTopic" = true, "Completed" = true, "InventorySizeInBytes" = true, "InventoryRetrievalParameters" = true, "JobId" = true, "ArchiveId" = true, "JobDescription" = true, "ArchiveSizeInBytes" = true, "Action" = true, "ArchiveSHA256TreeHash" = true, "CreationDate" = true, "StatusMessage" = true, "StatusCode" = true, nil }

function M.AssertGlacierJobDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlacierJobDescription to be of type 'table'")
	if struct["CompletionDate"] then M.Assertstring(struct["CompletionDate"]) end
	if struct["VaultARN"] then M.Assertstring(struct["VaultARN"]) end
	if struct["RetrievalByteRange"] then M.Assertstring(struct["RetrievalByteRange"]) end
	if struct["Tier"] then M.Assertstring(struct["Tier"]) end
	if struct["SHA256TreeHash"] then M.Assertstring(struct["SHA256TreeHash"]) end
	if struct["SNSTopic"] then M.Assertstring(struct["SNSTopic"]) end
	if struct["Completed"] then M.Assertboolean(struct["Completed"]) end
	if struct["InventorySizeInBytes"] then M.AssertSize(struct["InventorySizeInBytes"]) end
	if struct["InventoryRetrievalParameters"] then M.AssertInventoryRetrievalJobDescription(struct["InventoryRetrievalParameters"]) end
	if struct["JobId"] then M.Assertstring(struct["JobId"]) end
	if struct["ArchiveId"] then M.Assertstring(struct["ArchiveId"]) end
	if struct["JobDescription"] then M.Assertstring(struct["JobDescription"]) end
	if struct["ArchiveSizeInBytes"] then M.AssertSize(struct["ArchiveSizeInBytes"]) end
	if struct["Action"] then M.AssertActionCode(struct["Action"]) end
	if struct["ArchiveSHA256TreeHash"] then M.Assertstring(struct["ArchiveSHA256TreeHash"]) end
	if struct["CreationDate"] then M.Assertstring(struct["CreationDate"]) end
	if struct["StatusMessage"] then M.Assertstring(struct["StatusMessage"]) end
	if struct["StatusCode"] then M.AssertStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(GlacierJobDescription_keys[k], "GlacierJobDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlacierJobDescription
-- <p>Describes an Amazon Glacier job.</p>
-- @param CompletionDate [string] <p>The UTC time that the archive retrieval request completed. While the job is in progress, the value will be null.</p>
-- @param VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault from which the archive retrieval was requested.</p>
-- @param RetrievalByteRange [string] <p>The retrieved byte range for archive retrieval jobs in the form "<i>StartByteValue</i>-<i>EndByteValue</i>" If no range was specified in the archive retrieval, then the whole archive is retrieved and <i>StartByteValue</i> equals 0 and <i>EndByteValue</i> equals the size of the archive minus 1. For inventory retrieval jobs this field is null. </p>
-- @param Tier [string] <p>The retrieval option to use for the archive retrieval. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>
-- @param SHA256TreeHash [string] <p>For an ArchiveRetrieval job, it is the checksum of the archive. Otherwise, the value is null.</p> <p>The SHA256 tree hash value for the requested range of an archive. If the Initiate a Job request for an archive specified a tree-hash aligned range, then this field returns a value.</p> <p>For the specific case when the whole archive is retrieved, this value is the same as the ArchiveSHA256TreeHash value.</p> <p>This field is null in the following situations:</p> <ul> <li> <p>Archive retrieval jobs that specify a range that is not tree-hash aligned.</p> </li> </ul> <ul> <li> <p>Archival jobs that specify a range that is equal to the whole archive and the job status is InProgress.</p> </li> </ul> <ul> <li> <p>Inventory jobs.</p> </li> </ul>
-- @param SNSTopic [string] <p>An Amazon Simple Notification Service (Amazon SNS) topic that receives notification.</p>
-- @param Completed [boolean] <p>The job status. When a job is completed, you get the job's output.</p>
-- @param InventorySizeInBytes [Size] <p>For an InventoryRetrieval job, this is the size in bytes of the inventory requested for download. For the ArchiveRetrieval job, the value is null.</p>
-- @param InventoryRetrievalParameters [InventoryRetrievalJobDescription] <p>Parameters used for range inventory retrieval.</p>
-- @param JobId [string] <p>An opaque string that identifies an Amazon Glacier job.</p>
-- @param ArchiveId [string] <p>For an ArchiveRetrieval job, this is the archive ID requested for download. Otherwise, this field is null.</p>
-- @param JobDescription [string] <p>The job description you provided when you initiated the job.</p>
-- @param ArchiveSizeInBytes [Size] <p>For an ArchiveRetrieval job, this is the size in bytes of the archive being requested for download. For the InventoryRetrieval job, the value is null.</p>
-- @param Action [ActionCode] <p>The job type. It is either ArchiveRetrieval or InventoryRetrieval.</p>
-- @param ArchiveSHA256TreeHash [string] <p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory retrieval jobs, this field is null.</p>
-- @param CreationDate [string] <p>The UTC date when the job was created. A string representation of ISO 8601 date format, for example, "2012-03-20T17:03:43.221Z".</p>
-- @param StatusMessage [string] <p>A friendly message that describes the job status.</p>
-- @param StatusCode [StatusCode] <p>The status code can be InProgress, Succeeded, or Failed, and indicates the status of the job.</p>
function M.GlacierJobDescription(CompletionDate, VaultARN, RetrievalByteRange, Tier, SHA256TreeHash, SNSTopic, Completed, InventorySizeInBytes, InventoryRetrievalParameters, JobId, ArchiveId, JobDescription, ArchiveSizeInBytes, Action, ArchiveSHA256TreeHash, CreationDate, StatusMessage, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlacierJobDescription")
	local t = { 
		["CompletionDate"] = CompletionDate,
		["VaultARN"] = VaultARN,
		["RetrievalByteRange"] = RetrievalByteRange,
		["Tier"] = Tier,
		["SHA256TreeHash"] = SHA256TreeHash,
		["SNSTopic"] = SNSTopic,
		["Completed"] = Completed,
		["InventorySizeInBytes"] = InventorySizeInBytes,
		["InventoryRetrievalParameters"] = InventoryRetrievalParameters,
		["JobId"] = JobId,
		["ArchiveId"] = ArchiveId,
		["JobDescription"] = JobDescription,
		["ArchiveSizeInBytes"] = ArchiveSizeInBytes,
		["Action"] = Action,
		["ArchiveSHA256TreeHash"] = ArchiveSHA256TreeHash,
		["CreationDate"] = CreationDate,
		["StatusMessage"] = StatusMessage,
		["StatusCode"] = StatusCode,
	}
	M.AssertGlacierJobDescription(t)
	return t
end

local InventoryRetrievalJobInput_keys = { "Limit" = true, "StartDate" = true, "Marker" = true, "EndDate" = true, nil }

function M.AssertInventoryRetrievalJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryRetrievalJobInput to be of type 'table'")
	if struct["Limit"] then M.Assertstring(struct["Limit"]) end
	if struct["StartDate"] then M.Assertstring(struct["StartDate"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["EndDate"] then M.Assertstring(struct["EndDate"]) end
	for k,_ in pairs(struct) do
		assert(InventoryRetrievalJobInput_keys[k], "InventoryRetrievalJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryRetrievalJobInput
-- <p>Provides options for specifying a range inventory retrieval job.</p>
-- @param Limit [string] <p>Specifies the maximum number of inventory items returned per vault inventory retrieval request. Valid values are greater than or equal to 1.</p>
-- @param StartDate [string] <p>The start of the date range in UTC for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @param Marker [string] <p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>.</p>
-- @param EndDate [string] <p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
function M.InventoryRetrievalJobInput(Limit, StartDate, Marker, EndDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryRetrievalJobInput")
	local t = { 
		["Limit"] = Limit,
		["StartDate"] = StartDate,
		["Marker"] = Marker,
		["EndDate"] = EndDate,
	}
	M.AssertInventoryRetrievalJobInput(t)
	return t
end

local VaultNotificationConfig_keys = { "Events" = true, "SNSTopic" = true, nil }

function M.AssertVaultNotificationConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VaultNotificationConfig to be of type 'table'")
	if struct["Events"] then M.AssertNotificationEventList(struct["Events"]) end
	if struct["SNSTopic"] then M.Assertstring(struct["SNSTopic"]) end
	for k,_ in pairs(struct) do
		assert(VaultNotificationConfig_keys[k], "VaultNotificationConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VaultNotificationConfig
-- <p>Represents a vault's notification configuration.</p>
-- @param Events [NotificationEventList] <p>A list of one or more events for which Amazon Glacier will send a notification to the specified Amazon SNS topic.</p>
-- @param SNSTopic [string] <p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name (ARN).</p>
function M.VaultNotificationConfig(Events, SNSTopic, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VaultNotificationConfig")
	local t = { 
		["Events"] = Events,
		["SNSTopic"] = SNSTopic,
	}
	M.AssertVaultNotificationConfig(t)
	return t
end

local ListPartsOutput_keys = { "VaultARN" = true, "ArchiveDescription" = true, "PartSizeInBytes" = true, "MultipartUploadId" = true, "Parts" = true, "Marker" = true, "CreationDate" = true, nil }

function M.AssertListPartsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsOutput to be of type 'table'")
	if struct["VaultARN"] then M.Assertstring(struct["VaultARN"]) end
	if struct["ArchiveDescription"] then M.Assertstring(struct["ArchiveDescription"]) end
	if struct["PartSizeInBytes"] then M.Assertlong(struct["PartSizeInBytes"]) end
	if struct["MultipartUploadId"] then M.Assertstring(struct["MultipartUploadId"]) end
	if struct["Parts"] then M.AssertPartList(struct["Parts"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["CreationDate"] then M.Assertstring(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(ListPartsOutput_keys[k], "ListPartsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was initiated.</p>
-- @param ArchiveDescription [string] <p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>
-- @param PartSizeInBytes [long] <p>The part size in bytes. This is the same value that you specified in the Initiate Multipart Upload request.</p>
-- @param MultipartUploadId [string] <p>The ID of the upload to which the parts are associated.</p>
-- @param Parts [PartList] <p>A list of the part sizes of the multipart upload. Each object in the array contains a <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value pair.</p>
-- @param Marker [string] <p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Parts request to obtain more jobs in the list. If there are no more parts, this value is <code>null</code>.</p>
-- @param CreationDate [string] <p>The UTC time at which the multipart upload was initiated.</p>
function M.ListPartsOutput(VaultARN, ArchiveDescription, PartSizeInBytes, MultipartUploadId, Parts, Marker, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPartsOutput")
	local t = { 
		["VaultARN"] = VaultARN,
		["ArchiveDescription"] = ArchiveDescription,
		["PartSizeInBytes"] = PartSizeInBytes,
		["MultipartUploadId"] = MultipartUploadId,
		["Parts"] = Parts,
		["Marker"] = Marker,
		["CreationDate"] = CreationDate,
	}
	M.AssertListPartsOutput(t)
	return t
end

local JobParameters_keys = { "InventoryRetrievalParameters" = true, "RetrievalByteRange" = true, "Description" = true, "Format" = true, "SNSTopic" = true, "Tier" = true, "ArchiveId" = true, "Type" = true, nil }

function M.AssertJobParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobParameters to be of type 'table'")
	if struct["InventoryRetrievalParameters"] then M.AssertInventoryRetrievalJobInput(struct["InventoryRetrievalParameters"]) end
	if struct["RetrievalByteRange"] then M.Assertstring(struct["RetrievalByteRange"]) end
	if struct["Description"] then M.Assertstring(struct["Description"]) end
	if struct["Format"] then M.Assertstring(struct["Format"]) end
	if struct["SNSTopic"] then M.Assertstring(struct["SNSTopic"]) end
	if struct["Tier"] then M.Assertstring(struct["Tier"]) end
	if struct["ArchiveId"] then M.Assertstring(struct["ArchiveId"]) end
	if struct["Type"] then M.Assertstring(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(JobParameters_keys[k], "JobParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobParameters
-- <p>Provides options for defining a job.</p>
-- @param InventoryRetrievalParameters [InventoryRetrievalJobInput] <p>Input parameters used for range inventory retrieval.</p>
-- @param RetrievalByteRange [string] <p>The byte range to retrieve for an archive retrieval. in the form "<i>StartByteValue</i>-<i>EndByteValue</i>" If not specified, the whole archive is retrieved. If specified, the byte range must be megabyte (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange is not megabyte aligned, this operation returns a 400 response. </p> <p>An error occurs if you specify this field for an inventory retrieval job request.</p>
-- @param Description [string] <p>The optional description for the job. The description must be less than or equal to 1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically, ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>
-- @param Format [string] <p>When initiating a job to retrieve a vault inventory, you can optionally add this parameter to your request to specify the output format. If you are initiating an inventory job and do not specify a Format field, JSON is the default format. Valid values are "CSV" and "JSON".</p>
-- @param SNSTopic [string] <p>The Amazon SNS topic ARN to which Amazon Glacier sends a notification when the job is completed and the output is ready for you to download. The specified topic publishes the notification to its subscribers. The SNS topic must exist.</p>
-- @param Tier [string] <p>The retrieval option to use for the archive retrieval. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>
-- @param ArchiveId [string] <p>The ID of the archive that you want to retrieve. This field is required only if <code>Type</code> is set to archive-retrieval. An error occurs if you specify this request parameter for an inventory retrieval job request. </p>
-- @param Type [string] <p>The job type. You can initiate a job to retrieve an archive or get an inventory of a vault. Valid values are "archive-retrieval" and "inventory-retrieval".</p>
function M.JobParameters(InventoryRetrievalParameters, RetrievalByteRange, Description, Format, SNSTopic, Tier, ArchiveId, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobParameters")
	local t = { 
		["InventoryRetrievalParameters"] = InventoryRetrievalParameters,
		["RetrievalByteRange"] = RetrievalByteRange,
		["Description"] = Description,
		["Format"] = Format,
		["SNSTopic"] = SNSTopic,
		["Tier"] = Tier,
		["ArchiveId"] = ArchiveId,
		["Type"] = Type,
	}
	M.AssertJobParameters(t)
	return t
end

local GetDataRetrievalPolicyOutput_keys = { "Policy" = true, nil }

function M.AssertGetDataRetrievalPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataRetrievalPolicyOutput to be of type 'table'")
	if struct["Policy"] then M.AssertDataRetrievalPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(GetDataRetrievalPolicyOutput_keys[k], "GetDataRetrievalPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataRetrievalPolicyOutput
-- <p>Contains the Amazon Glacier response to the <code>GetDataRetrievalPolicy</code> request.</p>
-- @param Policy [DataRetrievalPolicy] <p>Contains the returned data retrieval policy in JSON format.</p>
function M.GetDataRetrievalPolicyOutput(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataRetrievalPolicyOutput")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertGetDataRetrievalPolicyOutput(t)
	return t
end

local GetVaultAccessPolicyOutput_keys = { "policy" = true, nil }

function M.AssertGetVaultAccessPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVaultAccessPolicyOutput to be of type 'table'")
	if struct["policy"] then M.AssertVaultAccessPolicy(struct["policy"]) end
	for k,_ in pairs(struct) do
		assert(GetVaultAccessPolicyOutput_keys[k], "GetVaultAccessPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVaultAccessPolicyOutput
-- <p>Output for GetVaultAccessPolicy.</p>
-- @param policy [VaultAccessPolicy] <p>Contains the returned vault access policy as a JSON string.</p>
function M.GetVaultAccessPolicyOutput(policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultAccessPolicyOutput")
	local t = { 
		["policy"] = policy,
	}
	M.AssertGetVaultAccessPolicyOutput(t)
	return t
end

local DescribeJobInput_keys = { "jobId" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertDescribeJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then M.Assertstring(struct["jobId"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeJobInput_keys[k], "DescribeJobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobInput
-- <p>Provides options for retrieving a job description.</p>
-- @param jobId [string] <p>The ID of the job to describe.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: jobId
function M.DescribeJobInput(jobId, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobInput")
	local t = { 
		["jobId"] = jobId,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertDescribeJobInput(t)
	return t
end

local DescribeVaultInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertDescribeVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVaultInput_keys[k], "DescribeVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVaultInput
-- <p>Provides options for retrieving metadata for a specific vault in Amazon Glacier.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DescribeVaultInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVaultInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertDescribeVaultInput(t)
	return t
end

local ListMultipartUploadsInput_keys = { "marker" = true, "limit" = true, "vaultName" = true, "accountId" = true, nil }

function M.AssertListMultipartUploadsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["marker"] then M.Assertstring(struct["marker"]) end
	if struct["limit"] then M.Assertstring(struct["limit"]) end
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(ListMultipartUploadsInput_keys[k], "ListMultipartUploadsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsInput
-- <p>Provides options for retrieving list of in-progress multipart uploads for an Amazon Glacier vault.</p>
-- @param marker [string] <p>An opaque string used for pagination. This value specifies the upload at which the listing of uploads should begin. Get the marker value from a previous List Uploads response. You need only include the marker if you are continuing the pagination of results started in a previous List Uploads request.</p>
-- @param limit [string] <p>Specifies the maximum number of uploads returned in the response body. If this value is not specified, the List Uploads operation returns up to 1,000 uploads.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.ListMultipartUploadsInput(marker, limit, vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMultipartUploadsInput")
	local t = { 
		["marker"] = marker,
		["limit"] = limit,
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertListMultipartUploadsInput(t)
	return t
end

local AbortVaultLockInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertAbortVaultLockInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortVaultLockInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(AbortVaultLockInput_keys[k], "AbortVaultLockInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortVaultLockInput
-- <p>The input values for <code>AbortVaultLock</code>.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.AbortVaultLockInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortVaultLockInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertAbortVaultLockInput(t)
	return t
end

local PurchaseProvisionedCapacityInput_keys = { "accountId" = true, nil }

function M.AssertPurchaseProvisionedCapacityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseProvisionedCapacityInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseProvisionedCapacityInput_keys[k], "PurchaseProvisionedCapacityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseProvisionedCapacityInput
--  
-- @param accountId [string] <p>The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
function M.PurchaseProvisionedCapacityInput(accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseProvisionedCapacityInput")
	local t = { 
		["accountId"] = accountId,
	}
	M.AssertPurchaseProvisionedCapacityInput(t)
	return t
end

local ListTagsForVaultInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertListTagsForVaultInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForVaultInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForVaultInput_keys[k], "ListTagsForVaultInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForVaultInput
-- <p>The input value for <code>ListTagsForVaultInput</code>.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.ListTagsForVaultInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForVaultInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertListTagsForVaultInput(t)
	return t
end

local VaultLockPolicy_keys = { "Policy" = true, nil }

function M.AssertVaultLockPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VaultLockPolicy to be of type 'table'")
	if struct["Policy"] then M.Assertstring(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(VaultLockPolicy_keys[k], "VaultLockPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VaultLockPolicy
-- <p>Contains the vault lock policy.</p>
-- @param Policy [string] <p>The vault lock policy.</p>
function M.VaultLockPolicy(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VaultLockPolicy")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertVaultLockPolicy(t)
	return t
end

local VaultAccessPolicy_keys = { "Policy" = true, nil }

function M.AssertVaultAccessPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VaultAccessPolicy to be of type 'table'")
	if struct["Policy"] then M.Assertstring(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(VaultAccessPolicy_keys[k], "VaultAccessPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VaultAccessPolicy
-- <p>Contains the vault access policy.</p>
-- @param Policy [string] <p>The vault access policy.</p>
function M.VaultAccessPolicy(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VaultAccessPolicy")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertVaultAccessPolicy(t)
	return t
end

local InsufficientCapacityException_keys = { "message" = true, "code" = true, "type" = true, nil }

function M.AssertInsufficientCapacityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientCapacityException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	if struct["code"] then M.Assertstring(struct["code"]) end
	if struct["type"] then M.Assertstring(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(InsufficientCapacityException_keys[k], "InsufficientCapacityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientCapacityException
-- <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
-- @param message [string] <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
-- @param code [string] <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
-- @param type [string] <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
function M.InsufficientCapacityException(message, code, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientCapacityException")
	local t = { 
		["message"] = message,
		["code"] = code,
		["type"] = type,
	}
	M.AssertInsufficientCapacityException(t)
	return t
end

local DescribeVaultOutput_keys = { "SizeInBytes" = true, "VaultARN" = true, "LastInventoryDate" = true, "VaultName" = true, "NumberOfArchives" = true, "CreationDate" = true, nil }

function M.AssertDescribeVaultOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVaultOutput to be of type 'table'")
	if struct["SizeInBytes"] then M.Assertlong(struct["SizeInBytes"]) end
	if struct["VaultARN"] then M.Assertstring(struct["VaultARN"]) end
	if struct["LastInventoryDate"] then M.Assertstring(struct["LastInventoryDate"]) end
	if struct["VaultName"] then M.Assertstring(struct["VaultName"]) end
	if struct["NumberOfArchives"] then M.Assertlong(struct["NumberOfArchives"]) end
	if struct["CreationDate"] then M.Assertstring(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVaultOutput_keys[k], "DescribeVaultOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVaultOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param SizeInBytes [long] <p>Total size, in bytes, of the archives in the vault as of the last inventory date. This field will return null if an inventory has not yet run on the vault, for example if you just created the vault.</p>
-- @param VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault.</p>
-- @param LastInventoryDate [string] <p>The Universal Coordinated Time (UTC) date when Amazon Glacier completed the last vault inventory. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>
-- @param VaultName [string] <p>The name of the vault.</p>
-- @param NumberOfArchives [long] <p>The number of archives in the vault as of the last inventory date. This field will return <code>null</code> if an inventory has not yet run on the vault, for example if you just created the vault.</p>
-- @param CreationDate [string] <p>The Universal Coordinated Time (UTC) date when the vault was created. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>
function M.DescribeVaultOutput(SizeInBytes, VaultARN, LastInventoryDate, VaultName, NumberOfArchives, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVaultOutput")
	local t = { 
		["SizeInBytes"] = SizeInBytes,
		["VaultARN"] = VaultARN,
		["LastInventoryDate"] = LastInventoryDate,
		["VaultName"] = VaultName,
		["NumberOfArchives"] = NumberOfArchives,
		["CreationDate"] = CreationDate,
	}
	M.AssertDescribeVaultOutput(t)
	return t
end

local DeleteVaultNotificationsInput_keys = { "vaultName" = true, "accountId" = true, nil }

function M.AssertDeleteVaultNotificationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVaultNotificationsInput to be of type 'table'")
	assert(struct["accountId"], "Expected key accountId to exist in table")
	assert(struct["vaultName"], "Expected key vaultName to exist in table")
	if struct["vaultName"] then M.Assertstring(struct["vaultName"]) end
	if struct["accountId"] then M.Assertstring(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVaultNotificationsInput_keys[k], "DeleteVaultNotificationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVaultNotificationsInput
-- <p>Provides options for deleting a vault notification configuration from an Amazon Glacier vault.</p>
-- @param vaultName [string] <p>The name of the vault.</p>
-- @param accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DeleteVaultNotificationsInput(vaultName, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVaultNotificationsInput")
	local t = { 
		["vaultName"] = vaultName,
		["accountId"] = accountId,
	}
	M.AssertDeleteVaultNotificationsInput(t)
	return t
end

function M.AssertDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected DateTime to be of type 'string'")
end

--  
function M.DateTime(str)
	M.AssertDateTime(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
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

function M.AssertStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusCode to be of type 'string'")
end

--  
function M.StatusCode(str)
	M.AssertStatusCode(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertActionCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionCode to be of type 'string'")
end

--  
function M.ActionCode(str)
	M.AssertActionCode(str)
	return str
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

function M.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	M.AssertNullableLong(long)
	return long
end

function M.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	M.AssertSize(long)
	return long
end

function M.Asserthttpstatus(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected httpstatus to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.httpstatus(integer)
	M.Asserthttpstatus(integer)
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

function M.AssertTagMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTagKey(k)
		M.AssertTagValue(v)
	end
end

function M.TagMap(map)
	M.AssertTagMap(map)
	return map
end

function M.AssertStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Stream to be of type 'string'")
end

function M.Stream(blob)
	M.AssertStream(blob)
	return blob
end

function M.AssertJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGlacierJobDescription(v)
	end
end

--  
-- List of GlacierJobDescription objects
function M.JobList(list)
	M.AssertJobList(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertDataRetrievalRulesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DataRetrievalRulesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDataRetrievalRule(v)
	end
end

--  
-- List of DataRetrievalRule objects
function M.DataRetrievalRulesList(list)
	M.AssertDataRetrievalRulesList(list)
	return list
end

function M.AssertProvisionedCapacityList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvisionedCapacityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProvisionedCapacityDescription(v)
	end
end

--  
-- List of ProvisionedCapacityDescription objects
function M.ProvisionedCapacityList(list)
	M.AssertProvisionedCapacityList(list)
	return list
end

function M.AssertPartList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPartListElement(v)
	end
end

--  
-- List of PartListElement objects
function M.PartList(list)
	M.AssertPartList(list)
	return list
end

function M.AssertUploadsList(list)
	assert(list)
	assert(type(list) == "table", "Expected UploadsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUploadListElement(v)
	end
end

--  
-- List of UploadListElement objects
function M.UploadsList(list)
	M.AssertUploadsList(list)
	return list
end

function M.AssertNotificationEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationEventList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.NotificationEventList(list)
	M.AssertNotificationEventList(list)
	return list
end

function M.AssertVaultList(list)
	assert(list)
	assert(type(list) == "table", "Expected VaultList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDescribeVaultOutput(v)
	end
end

--  
-- List of DescribeVaultOutput objects
function M.VaultList(list)
	M.AssertVaultList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ListTagsForVault
-- @param ListTagsForVaultInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForVaultAsync(ListTagsForVaultInput, cb)
	assert(ListTagsForVaultInput, "You must provide a ListTagsForVaultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForVault",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/tags", ListTagsForVaultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListJobs
-- @param ListJobsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsAsync(ListJobsInput, cb)
	assert(ListJobsInput, "You must provide a ListJobsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/jobs", ListJobsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVault
-- @param DeleteVaultInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVaultAsync(DeleteVaultInput, cb)
	assert(DeleteVaultInput, "You must provide a DeleteVaultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteVault",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}", DeleteVaultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVaultNotifications
-- @param DeleteVaultNotificationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVaultNotificationsAsync(DeleteVaultNotificationsInput, cb)
	assert(DeleteVaultNotificationsInput, "You must provide a DeleteVaultNotificationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteVaultNotifications",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/notification-configuration", DeleteVaultNotificationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListParts
-- @param ListPartsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPartsAsync(ListPartsInput, cb)
	assert(ListPartsInput, "You must provide a ListPartsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListParts",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", ListPartsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProvisionedCapacity
-- @param ListProvisionedCapacityInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListProvisionedCapacityAsync(ListProvisionedCapacityInput, cb)
	assert(ListProvisionedCapacityInput, "You must provide a ListProvisionedCapacityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListProvisionedCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/provisioned-capacity", ListProvisionedCapacityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteArchive
-- @param DeleteArchiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteArchiveAsync(DeleteArchiveInput, cb)
	assert(DeleteArchiveInput, "You must provide a DeleteArchiveInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteArchive",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/archives/{archiveId}", DeleteArchiveInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PurchaseProvisionedCapacity
-- @param PurchaseProvisionedCapacityInput
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseProvisionedCapacityAsync(PurchaseProvisionedCapacityInput, cb)
	assert(PurchaseProvisionedCapacityInput, "You must provide a PurchaseProvisionedCapacityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PurchaseProvisionedCapacity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/provisioned-capacity", PurchaseProvisionedCapacityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetJobOutput
-- @param GetJobOutputInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetJobOutputAsync(GetJobOutputInput, cb)
	assert(GetJobOutputInput, "You must provide a GetJobOutputInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetJobOutput",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output", GetJobOutputInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToVault
-- @param AddTagsToVaultInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToVaultAsync(AddTagsToVaultInput, cb)
	assert(AddTagsToVaultInput, "You must provide a AddTagsToVaultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddTagsToVault",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/tags?operation=add", AddTagsToVaultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InitiateVaultLock
-- @param InitiateVaultLockInput
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateVaultLockAsync(InitiateVaultLockInput, cb)
	assert(InitiateVaultLockInput, "You must provide a InitiateVaultLockInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".InitiateVaultLock",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/lock-policy", InitiateVaultLockInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVaults
-- @param ListVaultsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListVaultsAsync(ListVaultsInput, cb)
	assert(ListVaultsInput, "You must provide a ListVaultsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListVaults",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults", ListVaultsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetVaultLock
-- @param GetVaultLockInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetVaultLockAsync(GetVaultLockInput, cb)
	assert(GetVaultLockInput, "You must provide a GetVaultLockInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetVaultLock",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/lock-policy", GetVaultLockInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeJob
-- @param DescribeJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeJobAsync(DescribeJobInput, cb)
	assert(DescribeJobInput, "You must provide a DescribeJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeJob",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/jobs/{jobId}", DescribeJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetVaultAccessPolicy
-- @param GetVaultAccessPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetVaultAccessPolicyAsync(GetVaultAccessPolicyInput, cb)
	assert(GetVaultAccessPolicyInput, "You must provide a GetVaultAccessPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetVaultAccessPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/access-policy", GetVaultAccessPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CompleteMultipartUpload
-- @param CompleteMultipartUploadInput
-- @param cb Callback function accepting two args: response, error_message
function M.CompleteMultipartUploadAsync(CompleteMultipartUploadInput, cb)
	assert(CompleteMultipartUploadInput, "You must provide a CompleteMultipartUploadInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CompleteMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", CompleteMultipartUploadInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetVaultAccessPolicy
-- @param SetVaultAccessPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetVaultAccessPolicyAsync(SetVaultAccessPolicyInput, cb)
	assert(SetVaultAccessPolicyInput, "You must provide a SetVaultAccessPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetVaultAccessPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/access-policy", SetVaultAccessPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadMultipartPart
-- @param UploadMultipartPartInput
-- @param cb Callback function accepting two args: response, error_message
function M.UploadMultipartPartAsync(UploadMultipartPartInput, cb)
	assert(UploadMultipartPartInput, "You must provide a UploadMultipartPartInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadMultipartPart",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", UploadMultipartPartInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetVaultNotifications
-- @param GetVaultNotificationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetVaultNotificationsAsync(GetVaultNotificationsInput, cb)
	assert(GetVaultNotificationsInput, "You must provide a GetVaultNotificationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetVaultNotifications",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/notification-configuration", GetVaultNotificationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVaultAccessPolicy
-- @param DeleteVaultAccessPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVaultAccessPolicyAsync(DeleteVaultAccessPolicyInput, cb)
	assert(DeleteVaultAccessPolicyInput, "You must provide a DeleteVaultAccessPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteVaultAccessPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/access-policy", DeleteVaultAccessPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeVault
-- @param DescribeVaultInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVaultAsync(DescribeVaultInput, cb)
	assert(DescribeVaultInput, "You must provide a DescribeVaultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeVault",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}", DescribeVaultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListMultipartUploads
-- @param ListMultipartUploadsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListMultipartUploadsAsync(ListMultipartUploadsInput, cb)
	assert(ListMultipartUploadsInput, "You must provide a ListMultipartUploadsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListMultipartUploads",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/multipart-uploads", ListMultipartUploadsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CompleteVaultLock
-- @param CompleteVaultLockInput
-- @param cb Callback function accepting two args: response, error_message
function M.CompleteVaultLockAsync(CompleteVaultLockInput, cb)
	assert(CompleteVaultLockInput, "You must provide a CompleteVaultLockInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CompleteVaultLock",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}", CompleteVaultLockInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetDataRetrievalPolicy
-- @param SetDataRetrievalPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetDataRetrievalPolicyAsync(SetDataRetrievalPolicyInput, cb)
	assert(SetDataRetrievalPolicyInput, "You must provide a SetDataRetrievalPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetDataRetrievalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{accountId}/policies/data-retrieval", SetDataRetrievalPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AbortVaultLock
-- @param AbortVaultLockInput
-- @param cb Callback function accepting two args: response, error_message
function M.AbortVaultLockAsync(AbortVaultLockInput, cb)
	assert(AbortVaultLockInput, "You must provide a AbortVaultLockInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AbortVaultLock",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/lock-policy", AbortVaultLockInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AbortMultipartUpload
-- @param AbortMultipartUploadInput
-- @param cb Callback function accepting two args: response, error_message
function M.AbortMultipartUploadAsync(AbortMultipartUploadInput, cb)
	assert(AbortMultipartUploadInput, "You must provide a AbortMultipartUploadInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AbortMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", AbortMultipartUploadInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromVault
-- @param RemoveTagsFromVaultInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromVaultAsync(RemoveTagsFromVaultInput, cb)
	assert(RemoveTagsFromVaultInput, "You must provide a RemoveTagsFromVaultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveTagsFromVault",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/tags?operation=remove", RemoveTagsFromVaultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateVault
-- @param CreateVaultInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateVaultAsync(CreateVaultInput, cb)
	assert(CreateVaultInput, "You must provide a CreateVaultInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateVault",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}", CreateVaultInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InitiateJob
-- @param InitiateJobInput
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateJobAsync(InitiateJobInput, cb)
	assert(InitiateJobInput, "You must provide a InitiateJobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".InitiateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/jobs", InitiateJobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InitiateMultipartUpload
-- @param InitiateMultipartUploadInput
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateMultipartUploadAsync(InitiateMultipartUploadInput, cb)
	assert(InitiateMultipartUploadInput, "You must provide a InitiateMultipartUploadInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".InitiateMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/multipart-uploads", InitiateMultipartUploadInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDataRetrievalPolicy
-- @param GetDataRetrievalPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDataRetrievalPolicyAsync(GetDataRetrievalPolicyInput, cb)
	assert(GetDataRetrievalPolicyInput, "You must provide a GetDataRetrievalPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDataRetrievalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{accountId}/policies/data-retrieval", GetDataRetrievalPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetVaultNotifications
-- @param SetVaultNotificationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetVaultNotificationsAsync(SetVaultNotificationsInput, cb)
	assert(SetVaultNotificationsInput, "You must provide a SetVaultNotificationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetVaultNotifications",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/notification-configuration", SetVaultNotificationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadArchive
-- @param UploadArchiveInput
-- @param cb Callback function accepting two args: response, error_message
function M.UploadArchiveAsync(UploadArchiveInput, cb)
	assert(UploadArchiveInput, "You must provide a UploadArchiveInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadArchive",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{accountId}/vaults/{vaultName}/archives", UploadArchiveInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
