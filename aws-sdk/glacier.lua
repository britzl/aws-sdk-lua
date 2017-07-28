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
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
function M.GetDataRetrievalPolicyInput(_accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataRetrievalPolicyInput")
	local t = { 
		["accountId"] = _accountId,
	}
	asserts.AssertGetDataRetrievalPolicyInput(t)
	return t
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
-- @param _CapacityId [string] <p>The ID that identifies the provisioned capacity unit.</p>
-- @param _ExpirationDate [string] <p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>
-- @param _StartDate [string] <p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>
function M.ProvisionedCapacityDescription(_CapacityId, _ExpirationDate, _StartDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedCapacityDescription")
	local t = { 
		["CapacityId"] = _CapacityId,
		["ExpirationDate"] = _ExpirationDate,
		["StartDate"] = _StartDate,
	}
	asserts.AssertProvisionedCapacityDescription(t)
	return t
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
-- @param _range [string] <p>The range of bytes to retrieve from the output. For example, if you want to download the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation downloads the entire output.</p> <p>If the job output is large, then you can use a range to retrieve a portion of the output. This allows you to download the entire output in smaller chunks of bytes. For example, suppose you have 1 GB of job output you want to download and you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job Output requests. You use the following process to download the job output:</p> <ol> <li> <p>Download a 128 MB chunk of output by specifying the appropriate byte range. Verify that all 128 MB of data was received.</p> </li> <li> <p>Along with the data, the response includes a SHA256 tree hash of the payload. You compute the checksum of the payload on the client and compare it with the checksum you received in the response to ensure you received all the expected data.</p> </li> <li> <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time specifying the appropriate byte range.</p> </li> <li> <p>After downloading all the parts of the job output, you have a list of eight checksum values. Compute the tree hash of these values to find the checksum of the entire output. Using the <a>DescribeJob</a> API, obtain job information of the job that provided you the output. The response includes the checksum of the entire archive stored in Amazon Glacier. You compare this value with the checksum you computed to ensure you have downloaded the entire archive content with no errors.</p> <p/> </li> </ol>
-- @param _jobId [string] <p>The job ID whose data is downloaded.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: jobId
function M.GetJobOutputInput(_range, _jobId, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobOutputInput")
	local t = { 
		["range"] = _range,
		["jobId"] = _jobId,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertGetJobOutputInput(t)
	return t
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
-- @param _body [Stream] <p>The data to upload.</p>
-- @param _checksum [string] <p>The SHA256 tree hash of the data being uploaded.</p>
-- @param _archiveDescription [string] <p>The optional description of the archive you are uploading.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: vaultName
-- Required parameter: accountId
function M.UploadArchiveInput(_body, _checksum, _archiveDescription, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadArchiveInput")
	local t = { 
		["body"] = _body,
		["checksum"] = _checksum,
		["archiveDescription"] = _archiveDescription,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertUploadArchiveInput(t)
	return t
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
-- @param _body [Stream] <p>The data to upload.</p>
-- @param _checksum [string] <p>The SHA256 tree hash of the data being uploaded.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _range [string] <p>Identifies the range of bytes in the assembled archive that will be uploaded in this part. Amazon Glacier uses this information to assemble the archive in the proper sequence. The format of this header follows RFC 2616. An example header is Content-Range:bytes 0-4194303/*.</p>
-- @param _uploadId [string] <p>The upload ID of the multipart upload.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.UploadMultipartPartInput(_body, _checksum, _vaultName, _range, _uploadId, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadMultipartPartInput")
	local t = { 
		["body"] = _body,
		["checksum"] = _checksum,
		["vaultName"] = _vaultName,
		["range"] = _range,
		["uploadId"] = _uploadId,
		["accountId"] = _accountId,
	}
	asserts.AssertUploadMultipartPartInput(t)
	return t
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
-- @param _message [string] <p>Returned if the service cannot complete the request.</p>
-- @param _code [string] <p>500 Internal Server Error</p>
-- @param _type [string] <p>Server</p>
function M.ServiceUnavailableException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertServiceUnavailableException(t)
	return t
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
-- @param _message [string] <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
-- @param _code [string] <p>408 Request Timeout</p>
-- @param _type [string] <p>Client</p>
function M.RequestTimeoutException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestTimeoutException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertRequestTimeoutException(t)
	return t
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
-- @param _archiveId [string] <p>The ID of the archive to delete.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: archiveId
function M.DeleteArchiveInput(_archiveId, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteArchiveInput")
	local t = { 
		["archiveId"] = _archiveId,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertDeleteArchiveInput(t)
	return t
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
-- @param _uploadId [string] <p>The upload ID of the multipart upload to delete.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.AbortMultipartUploadInput(_uploadId, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortMultipartUploadInput")
	local t = { 
		["uploadId"] = _uploadId,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertAbortMultipartUploadInput(t)
	return t
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
-- @param _marker [string] <p>A string used for pagination. The marker specifies the vault ARN after which the listing of vaults should begin.</p>
-- @param _limit [string] <p>The maximum number of vaults to be returned. The default limit is 1000. The number of vaults returned might be fewer than the specified limit, but the number of returned vaults never exceeds the limit.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
function M.ListVaultsInput(_marker, _limit, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVaultsInput")
	local t = { 
		["marker"] = _marker,
		["limit"] = _limit,
		["accountId"] = _accountId,
	}
	asserts.AssertListVaultsInput(t)
	return t
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
-- @param _vaultNotificationConfig [VaultNotificationConfig] <p>Returns the notification configuration set on the vault.</p>
function M.GetVaultNotificationsOutput(_vaultNotificationConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultNotificationsOutput")
	local t = { 
		["vaultNotificationConfig"] = _vaultNotificationConfig,
	}
	asserts.AssertGetVaultNotificationsOutput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.GetVaultLockInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultLockInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertGetVaultLockInput(t)
	return t
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
-- @param _policy [VaultLockPolicy] <p>The vault lock policy as a JSON string, which uses "\" as an escape character.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.InitiateVaultLockInput(_policy, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateVaultLockInput")
	local t = { 
		["policy"] = _policy,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertInitiateVaultLockInput(t)
	return t
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
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
function M.ListProvisionedCapacityInput(_accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisionedCapacityInput")
	local t = { 
		["accountId"] = _accountId,
	}
	asserts.AssertListProvisionedCapacityInput(t)
	return t
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
-- @param _Marker [string] <p> An opaque string used for pagination that specifies the job at which the listing of jobs should begin. You get the <code>marker</code> value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of the results started in a previous List Jobs request. </p>
-- @param _JobList [JobList] <p>A list of job objects. Each job object contains metadata describing the job.</p>
function M.ListJobsOutput(_Marker, _JobList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsOutput")
	local t = { 
		["Marker"] = _Marker,
		["JobList"] = _JobList,
	}
	asserts.AssertListJobsOutput(t)
	return t
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
-- @param _RangeInBytes [string] <p>The byte range of a part, inclusive of the upper value of the range.</p>
-- @param _SHA256TreeHash [string] <p>The SHA256 tree hash value that Amazon Glacier calculated for the part. This field is never <code>null</code>.</p>
function M.PartListElement(_RangeInBytes, _SHA256TreeHash, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PartListElement")
	local t = { 
		["RangeInBytes"] = _RangeInBytes,
		["SHA256TreeHash"] = _SHA256TreeHash,
	}
	asserts.AssertPartListElement(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DeleteVaultInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVaultInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertDeleteVaultInput(t)
	return t
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
-- @param _jobParameters [JobParameters] <p>Provides options for specifying job information.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.InitiateJobInput(_jobParameters, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateJobInput")
	local t = { 
		["jobParameters"] = _jobParameters,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertInitiateJobInput(t)
	return t
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
-- @param _marker [string] <p>An opaque string used for pagination. This value specifies the part at which the listing of parts should begin. Get the marker value from the response of a previous List Parts response. You need only include the marker if you are continuing the pagination of results started in a previous List Parts request.</p>
-- @param _uploadId [string] <p>The upload ID of the multipart upload.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _limit [string] <p>The maximum number of parts to be returned. The default limit is 1000. The number of parts returned might be fewer than the specified limit, but the number of returned parts never exceeds the limit.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.ListPartsInput(_marker, _uploadId, _vaultName, _limit, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPartsInput")
	local t = { 
		["marker"] = _marker,
		["uploadId"] = _uploadId,
		["vaultName"] = _vaultName,
		["limit"] = _limit,
		["accountId"] = _accountId,
	}
	asserts.AssertListPartsInput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.GetVaultAccessPolicyInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultAccessPolicyInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertGetVaultAccessPolicyInput(t)
	return t
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
-- @param _archiveId [string] <p>The ID of the archive. This value is also included as part of the location.</p>
-- @param _checksum [string] <p>The checksum of the archive computed by Amazon Glacier.</p>
-- @param _location [string] <p>The relative URI path of the newly added archive resource.</p>
function M.ArchiveCreationOutput(_archiveId, _checksum, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ArchiveCreationOutput")
	local t = { 
		["archiveId"] = _archiveId,
		["checksum"] = _checksum,
		["location"] = _location,
	}
	asserts.AssertArchiveCreationOutput(t)
	return t
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
-- @param _TagKeys [TagKeyList] <p>A list of tag keys. Each corresponding tag is removed from the vault.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.RemoveTagsFromVaultInput(_TagKeys, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromVaultInput")
	local t = { 
		["TagKeys"] = _TagKeys,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertRemoveTagsFromVaultInput(t)
	return t
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
-- @param _Limit [string] <p>The maximum number of inventory items returned per vault inventory retrieval request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>
-- @param _StartDate [DateTime] <p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @param _Marker [string] <p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering"> Range Inventory Retrieval</a>.</p>
-- @param _EndDate [DateTime] <p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @param _Format [string] <p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>
function M.InventoryRetrievalJobDescription(_Limit, _StartDate, _Marker, _EndDate, _Format, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryRetrievalJobDescription")
	local t = { 
		["Limit"] = _Limit,
		["StartDate"] = _StartDate,
		["Marker"] = _Marker,
		["EndDate"] = _EndDate,
		["Format"] = _Format,
	}
	asserts.AssertInventoryRetrievalJobDescription(t)
	return t
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
-- @param _MultipartUploadId [string] <p>The ID of a multipart upload.</p>
-- @param _ArchiveDescription [string] <p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>
-- @param _CreationDate [string] <p>The UTC time at which the multipart upload was initiated.</p>
-- @param _PartSizeInBytes [long] <p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is the size of all the parts in the upload except the last part, which may be smaller than this size.</p>
-- @param _VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>
function M.UploadListElement(_MultipartUploadId, _ArchiveDescription, _CreationDate, _PartSizeInBytes, _VaultARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadListElement")
	local t = { 
		["MultipartUploadId"] = _MultipartUploadId,
		["ArchiveDescription"] = _ArchiveDescription,
		["CreationDate"] = _CreationDate,
		["PartSizeInBytes"] = _PartSizeInBytes,
		["VaultARN"] = _VaultARN,
	}
	asserts.AssertUploadListElement(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.GetVaultNotificationsInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultNotificationsInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertGetVaultNotificationsInput(t)
	return t
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
-- @param _partSize [string] <p>The size of each part except the last, in bytes. The last part can be smaller than this part size.</p>
-- @param _archiveDescription [string] <p>The archive description that you are uploading in parts.</p> <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.InitiateMultipartUploadInput(_partSize, _archiveDescription, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateMultipartUploadInput")
	local t = { 
		["partSize"] = _partSize,
		["archiveDescription"] = _archiveDescription,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertInitiateMultipartUploadInput(t)
	return t
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
-- @param _Marker [string] <p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Multipart Uploads request to obtain more uploads in the list. If there are no more uploads, this value is <code>null</code>.</p>
-- @param _UploadsList [UploadsList] <p>A list of in-progress multipart uploads.</p>
function M.ListMultipartUploadsOutput(_Marker, _UploadsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMultipartUploadsOutput")
	local t = { 
		["Marker"] = _Marker,
		["UploadsList"] = _UploadsList,
	}
	asserts.AssertListMultipartUploadsOutput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DeleteVaultAccessPolicyInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVaultAccessPolicyInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertDeleteVaultAccessPolicyInput(t)
	return t
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
-- @param _message [string] <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
-- @param _code [string] <p>404 Not Found</p>
-- @param _type [string] <p>Client</p>
function M.ResourceNotFoundException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.CreateVaultInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVaultInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertCreateVaultInput(t)
	return t
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
-- @param _Policy [DataRetrievalPolicy] <p>The data retrieval policy in JSON format.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
function M.SetDataRetrievalPolicyInput(_Policy, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDataRetrievalPolicyInput")
	local t = { 
		["Policy"] = _Policy,
		["accountId"] = _accountId,
	}
	asserts.AssertSetDataRetrievalPolicyInput(t)
	return t
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
-- @param _uploadId [string] <p>The ID of the multipart upload. This value is also included as part of the location.</p>
-- @param _location [string] <p>The relative URI path of the multipart upload ID Amazon Glacier created.</p>
function M.InitiateMultipartUploadOutput(_uploadId, _location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateMultipartUploadOutput")
	local t = { 
		["uploadId"] = _uploadId,
		["location"] = _location,
	}
	asserts.AssertInitiateMultipartUploadOutput(t)
	return t
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
-- @param _body [Stream] <p>The job data, either archive data or inventory data.</p>
-- @param _status [httpstatus] <p>The HTTP response code for a job output request. The value depends on whether a range was specified in the request.</p>
-- @param _acceptRanges [string] <p>Indicates the range units accepted. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html">RFC2616</a>. </p>
-- @param _contentType [string] <p>The Content-Type depends on whether the job output is an archive or a vault inventory. For archive data, the Content-Type is application/octet-stream. For vault inventory, if you requested CSV format when you initiated the job, the Content-Type is text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type is application/json.</p>
-- @param _checksum [string] <p>The checksum of the data in the response. This header is returned only when retrieving the output for an archive retrieval job. Furthermore, this header appears only under the following conditions:</p> <ul> <li> <p>You get the entire range of the archive.</p> </li> <li> <p>You request a range to return of the archive that starts and ends on a multiple of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> <li> <p>You request a range of the archive to return that starts on a multiple of 1 MB and goes to the end of the archive. For example, if you have a 3.1 MB archive and you specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is returned as a response header.</p> </li> </ul>
-- @param _contentRange [string] <p>The range of bytes returned by Amazon Glacier. If only partial output is downloaded, the response provides the range of bytes Amazon Glacier returned. For example, bytes 0-1048575/8388608 returns the first 1 MB from 8 MB.</p>
-- @param _archiveDescription [string] <p>The description of an archive.</p>
function M.GetJobOutputOutput(_body, _status, _acceptRanges, _contentType, _checksum, _contentRange, _archiveDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetJobOutputOutput")
	local t = { 
		["body"] = _body,
		["status"] = _status,
		["acceptRanges"] = _acceptRanges,
		["contentType"] = _contentType,
		["checksum"] = _checksum,
		["contentRange"] = _contentRange,
		["archiveDescription"] = _archiveDescription,
	}
	asserts.AssertGetJobOutputOutput(t)
	return t
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
-- @param _Marker [string] <p>The vault ARN at which to continue pagination of the results. You use the marker in another List Vaults request to obtain more vaults in the list.</p>
-- @param _VaultList [VaultList] <p>List of vaults.</p>
function M.ListVaultsOutput(_Marker, _VaultList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVaultsOutput")
	local t = { 
		["Marker"] = _Marker,
		["VaultList"] = _VaultList,
	}
	asserts.AssertListVaultsOutput(t)
	return t
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
-- @param _checksum [string] <p>The SHA256 tree hash that Amazon Glacier computed for the uploaded part.</p>
function M.UploadMultipartPartOutput(_checksum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadMultipartPartOutput")
	local t = { 
		["checksum"] = _checksum,
	}
	asserts.AssertUploadMultipartPartOutput(t)
	return t
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
-- @param _location [string] <p>The URI of the vault that was created.</p>
function M.CreateVaultOutput(_location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVaultOutput")
	local t = { 
		["location"] = _location,
	}
	asserts.AssertCreateVaultOutput(t)
	return t
end

keys.InitiateJobOutput = { ["location"] = true, ["jobId"] = true, nil }

function asserts.AssertInitiateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateJobOutput to be of type 'table'")
	if struct["location"] then asserts.Assertstring(struct["location"]) end
	if struct["jobId"] then asserts.Assertstring(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateJobOutput[k], "InitiateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateJobOutput
-- <p>Contains the Amazon Glacier response to your request.</p>
-- @param _location [string] <p>The relative URI path of the job.</p>
-- @param _jobId [string] <p>The ID of the job.</p>
function M.InitiateJobOutput(_location, _jobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateJobOutput")
	local t = { 
		["location"] = _location,
		["jobId"] = _jobId,
	}
	asserts.AssertInitiateJobOutput(t)
	return t
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
-- @param _ProvisionedCapacityList [ProvisionedCapacityList] <p>The response body contains the following JSON fields.</p>
function M.ListProvisionedCapacityOutput(_ProvisionedCapacityList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProvisionedCapacityOutput")
	local t = { 
		["ProvisionedCapacityList"] = _ProvisionedCapacityList,
	}
	asserts.AssertListProvisionedCapacityOutput(t)
	return t
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
-- @param _policy [VaultAccessPolicy] <p>The vault access policy as a JSON string.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.SetVaultAccessPolicyInput(_policy, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetVaultAccessPolicyInput")
	local t = { 
		["policy"] = _policy,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertSetVaultAccessPolicyInput(t)
	return t
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
-- @param _completed [string] <p>The state of the jobs to return. You can specify <code>true</code> or <code>false</code>.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _limit [string] <p>The maximum number of jobs to be returned. The default limit is 1000. The number of jobs returned might be fewer than the specified limit, but the number of returned jobs never exceeds the limit.</p>
-- @param _marker [string] <p>An opaque string used for pagination. This value specifies the job at which the listing of jobs should begin. Get the marker value from a previous List Jobs response. You only need to include the marker if you are continuing the pagination of results started in a previous List Jobs request.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- @param _statuscode [string] <p>The type of job status to return. You can specify the following values: <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.ListJobsInput(_completed, _vaultName, _limit, _marker, _accountId, _statuscode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsInput")
	local t = { 
		["completed"] = _completed,
		["vaultName"] = _vaultName,
		["limit"] = _limit,
		["marker"] = _marker,
		["accountId"] = _accountId,
		["statuscode"] = _statuscode,
	}
	asserts.AssertListJobsInput(t)
	return t
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
-- @param _uploadId [string] <p>The upload ID of the multipart upload.</p>
-- @param _checksum [string] <p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash of the individual parts. If the value you specify in the request does not match the SHA256 tree hash of the final assembled archive as computed by Amazon Glacier, Amazon Glacier returns an error and the request fails.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _archiveSize [string] <p>The total size, in bytes, of the entire archive. This value should be the sum of all the sizes of the individual parts that you uploaded.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: uploadId
function M.CompleteMultipartUploadInput(_uploadId, _checksum, _vaultName, _archiveSize, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteMultipartUploadInput")
	local t = { 
		["uploadId"] = _uploadId,
		["checksum"] = _checksum,
		["vaultName"] = _vaultName,
		["archiveSize"] = _archiveSize,
		["accountId"] = _accountId,
	}
	asserts.AssertCompleteMultipartUploadInput(t)
	return t
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
-- @param _Policy [string] <p>The vault lock policy as a JSON string, which uses "\" as an escape character.</p>
-- @param _State [string] <p>The state of the vault lock. <code>InProgress</code> or <code>Locked</code>.</p>
-- @param _CreationDate [string] <p>The UTC date and time at which the vault lock was put into the <code>InProgress</code> state.</p>
-- @param _ExpirationDate [string] <p>The UTC date and time at which the lock ID expires. This value can be <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>
function M.GetVaultLockOutput(_Policy, _State, _CreationDate, _ExpirationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultLockOutput")
	local t = { 
		["Policy"] = _Policy,
		["State"] = _State,
		["CreationDate"] = _CreationDate,
		["ExpirationDate"] = _ExpirationDate,
	}
	asserts.AssertGetVaultLockOutput(t)
	return t
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
-- @param _message [string] <p>Returned if the request results in a vault limit or tags limit being exceeded.</p>
-- @param _code [string] <p>400 Bad Request</p>
-- @param _type [string] <p>Client</p>
function M.LimitExceededException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertLimitExceededException(t)
	return t
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
-- @param _BytesPerHour [NullableLong] <p>The maximum number of bytes that can be retrieved in an hour.</p> <p>This field is required only if the value of the Strategy field is <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is not set to <code>BytesPerHour</code> and you set this field.</p>
-- @param _Strategy [string] <p>The type of data retrieval policy to set.</p> <p>Valid values: BytesPerHour|FreeTier|None</p>
function M.DataRetrievalRule(_BytesPerHour, _Strategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataRetrievalRule")
	local t = { 
		["BytesPerHour"] = _BytesPerHour,
		["Strategy"] = _Strategy,
	}
	asserts.AssertDataRetrievalRule(t)
	return t
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
-- @param _message [string] <p>Returned if no authentication data is found for the request.</p>
-- @param _code [string] <p>400 Bad Request</p>
-- @param _type [string] <p>Client.</p>
function M.MissingParameterValueException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingParameterValueException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertMissingParameterValueException(t)
	return t
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
-- @param _Rules [DataRetrievalRulesList] <p>The policy rule. Although this is a list type, currently there must be only one rule, which contains a Strategy field and optionally a BytesPerHour field.</p>
function M.DataRetrievalPolicy(_Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataRetrievalPolicy")
	local t = { 
		["Rules"] = _Rules,
	}
	asserts.AssertDataRetrievalPolicy(t)
	return t
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
-- @param _message [string] <p>InitiateJob request denied by current data retrieval policy.</p>
-- @param _code [string] <p>PolicyEnforcedException</p>
-- @param _type [string] <p>Client</p>
function M.PolicyEnforcedException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyEnforcedException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertPolicyEnforcedException(t)
	return t
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
-- @param _Tags [TagMap] <p>The tags to add to the vault. Each tag is composed of a key and a value. The value can be an empty string.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.AddTagsToVaultInput(_Tags, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToVaultInput")
	local t = { 
		["Tags"] = _Tags,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertAddTagsToVaultInput(t)
	return t
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
-- @param _vaultNotificationConfig [VaultNotificationConfig] <p>Provides options for specifying notification configuration.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.SetVaultNotificationsInput(_vaultNotificationConfig, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetVaultNotificationsInput")
	local t = { 
		["vaultNotificationConfig"] = _vaultNotificationConfig,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertSetVaultNotificationsInput(t)
	return t
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
-- @param _lockId [string] <p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: lockId
function M.CompleteVaultLockInput(_lockId, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteVaultLockInput")
	local t = { 
		["lockId"] = _lockId,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertCompleteVaultLockInput(t)
	return t
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
-- @param _message [string] <p>Returned if a parameter of the request is incorrectly specified.</p>
-- @param _code [string] <p>400 Bad Request</p>
-- @param _type [string] <p>Client</p>
function M.InvalidParameterValueException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertInvalidParameterValueException(t)
	return t
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
-- @param _Tags [TagMap] <p>The tags attached to the vault. Each tag is composed of a key and a value.</p>
function M.ListTagsForVaultOutput(_Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForVaultOutput")
	local t = { 
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsForVaultOutput(t)
	return t
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
-- @param _lockId [string] <p>The lock ID, which is used to complete the vault locking process.</p>
function M.InitiateVaultLockOutput(_lockId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateVaultLockOutput")
	local t = { 
		["lockId"] = _lockId,
	}
	asserts.AssertInitiateVaultLockOutput(t)
	return t
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
-- @param _capacityId [string] <p>The ID that identifies the provisioned capacity unit.</p>
function M.PurchaseProvisionedCapacityOutput(_capacityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseProvisionedCapacityOutput")
	local t = { 
		["capacityId"] = _capacityId,
	}
	asserts.AssertPurchaseProvisionedCapacityOutput(t)
	return t
end

keys.GlacierJobDescription = { ["CompletionDate"] = true, ["VaultARN"] = true, ["RetrievalByteRange"] = true, ["Tier"] = true, ["SHA256TreeHash"] = true, ["SNSTopic"] = true, ["Completed"] = true, ["InventorySizeInBytes"] = true, ["InventoryRetrievalParameters"] = true, ["JobId"] = true, ["ArchiveId"] = true, ["JobDescription"] = true, ["ArchiveSizeInBytes"] = true, ["Action"] = true, ["ArchiveSHA256TreeHash"] = true, ["CreationDate"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

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
	if struct["InventoryRetrievalParameters"] then asserts.AssertInventoryRetrievalJobDescription(struct["InventoryRetrievalParameters"]) end
	if struct["JobId"] then asserts.Assertstring(struct["JobId"]) end
	if struct["ArchiveId"] then asserts.Assertstring(struct["ArchiveId"]) end
	if struct["JobDescription"] then asserts.Assertstring(struct["JobDescription"]) end
	if struct["ArchiveSizeInBytes"] then asserts.AssertSize(struct["ArchiveSizeInBytes"]) end
	if struct["Action"] then asserts.AssertActionCode(struct["Action"]) end
	if struct["ArchiveSHA256TreeHash"] then asserts.Assertstring(struct["ArchiveSHA256TreeHash"]) end
	if struct["CreationDate"] then asserts.Assertstring(struct["CreationDate"]) end
	if struct["StatusMessage"] then asserts.Assertstring(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.AssertStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlacierJobDescription[k], "GlacierJobDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlacierJobDescription
-- <p>Describes an Amazon Glacier job.</p>
-- @param _CompletionDate [string] <p>The UTC time that the archive retrieval request completed. While the job is in progress, the value will be null.</p>
-- @param _VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault from which the archive retrieval was requested.</p>
-- @param _RetrievalByteRange [string] <p>The retrieved byte range for archive retrieval jobs in the form "<i>StartByteValue</i>-<i>EndByteValue</i>" If no range was specified in the archive retrieval, then the whole archive is retrieved and <i>StartByteValue</i> equals 0 and <i>EndByteValue</i> equals the size of the archive minus 1. For inventory retrieval jobs this field is null. </p>
-- @param _Tier [string] <p>The retrieval option to use for the archive retrieval. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>
-- @param _SHA256TreeHash [string] <p>For an ArchiveRetrieval job, it is the checksum of the archive. Otherwise, the value is null.</p> <p>The SHA256 tree hash value for the requested range of an archive. If the Initiate a Job request for an archive specified a tree-hash aligned range, then this field returns a value.</p> <p>For the specific case when the whole archive is retrieved, this value is the same as the ArchiveSHA256TreeHash value.</p> <p>This field is null in the following situations:</p> <ul> <li> <p>Archive retrieval jobs that specify a range that is not tree-hash aligned.</p> </li> </ul> <ul> <li> <p>Archival jobs that specify a range that is equal to the whole archive and the job status is InProgress.</p> </li> </ul> <ul> <li> <p>Inventory jobs.</p> </li> </ul>
-- @param _SNSTopic [string] <p>An Amazon Simple Notification Service (Amazon SNS) topic that receives notification.</p>
-- @param _Completed [boolean] <p>The job status. When a job is completed, you get the job's output.</p>
-- @param _InventorySizeInBytes [Size] <p>For an InventoryRetrieval job, this is the size in bytes of the inventory requested for download. For the ArchiveRetrieval job, the value is null.</p>
-- @param _InventoryRetrievalParameters [InventoryRetrievalJobDescription] <p>Parameters used for range inventory retrieval.</p>
-- @param _JobId [string] <p>An opaque string that identifies an Amazon Glacier job.</p>
-- @param _ArchiveId [string] <p>For an ArchiveRetrieval job, this is the archive ID requested for download. Otherwise, this field is null.</p>
-- @param _JobDescription [string] <p>The job description you provided when you initiated the job.</p>
-- @param _ArchiveSizeInBytes [Size] <p>For an ArchiveRetrieval job, this is the size in bytes of the archive being requested for download. For the InventoryRetrieval job, the value is null.</p>
-- @param _Action [ActionCode] <p>The job type. It is either ArchiveRetrieval or InventoryRetrieval.</p>
-- @param _ArchiveSHA256TreeHash [string] <p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory retrieval jobs, this field is null.</p>
-- @param _CreationDate [string] <p>The UTC date when the job was created. A string representation of ISO 8601 date format, for example, "2012-03-20T17:03:43.221Z".</p>
-- @param _StatusMessage [string] <p>A friendly message that describes the job status.</p>
-- @param _StatusCode [StatusCode] <p>The status code can be InProgress, Succeeded, or Failed, and indicates the status of the job.</p>
function M.GlacierJobDescription(_CompletionDate, _VaultARN, _RetrievalByteRange, _Tier, _SHA256TreeHash, _SNSTopic, _Completed, _InventorySizeInBytes, _InventoryRetrievalParameters, _JobId, _ArchiveId, _JobDescription, _ArchiveSizeInBytes, _Action, _ArchiveSHA256TreeHash, _CreationDate, _StatusMessage, _StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlacierJobDescription")
	local t = { 
		["CompletionDate"] = _CompletionDate,
		["VaultARN"] = _VaultARN,
		["RetrievalByteRange"] = _RetrievalByteRange,
		["Tier"] = _Tier,
		["SHA256TreeHash"] = _SHA256TreeHash,
		["SNSTopic"] = _SNSTopic,
		["Completed"] = _Completed,
		["InventorySizeInBytes"] = _InventorySizeInBytes,
		["InventoryRetrievalParameters"] = _InventoryRetrievalParameters,
		["JobId"] = _JobId,
		["ArchiveId"] = _ArchiveId,
		["JobDescription"] = _JobDescription,
		["ArchiveSizeInBytes"] = _ArchiveSizeInBytes,
		["Action"] = _Action,
		["ArchiveSHA256TreeHash"] = _ArchiveSHA256TreeHash,
		["CreationDate"] = _CreationDate,
		["StatusMessage"] = _StatusMessage,
		["StatusCode"] = _StatusCode,
	}
	asserts.AssertGlacierJobDescription(t)
	return t
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
-- @param _Limit [string] <p>Specifies the maximum number of inventory items returned per vault inventory retrieval request. Valid values are greater than or equal to 1.</p>
-- @param _StartDate [string] <p>The start of the date range in UTC for vault inventory retrieval that includes archives created on or after this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
-- @param _Marker [string] <p>An opaque string that represents where to continue pagination of the vault inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are no more inventory items, this value is <code>null</code>.</p>
-- @param _EndDate [string] <p>The end of the date range in UTC for vault inventory retrieval that includes archives created before this date. This value should be a string in the ISO 8601 date format, for example <code>2013-03-20T17:03:43Z</code>.</p>
function M.InventoryRetrievalJobInput(_Limit, _StartDate, _Marker, _EndDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryRetrievalJobInput")
	local t = { 
		["Limit"] = _Limit,
		["StartDate"] = _StartDate,
		["Marker"] = _Marker,
		["EndDate"] = _EndDate,
	}
	asserts.AssertInventoryRetrievalJobInput(t)
	return t
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
-- @param _Events [NotificationEventList] <p>A list of one or more events for which Amazon Glacier will send a notification to the specified Amazon SNS topic.</p>
-- @param _SNSTopic [string] <p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name (ARN).</p>
function M.VaultNotificationConfig(_Events, _SNSTopic, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VaultNotificationConfig")
	local t = { 
		["Events"] = _Events,
		["SNSTopic"] = _SNSTopic,
	}
	asserts.AssertVaultNotificationConfig(t)
	return t
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
-- @param _VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was initiated.</p>
-- @param _ArchiveDescription [string] <p>The description of the archive that was specified in the Initiate Multipart Upload request.</p>
-- @param _PartSizeInBytes [long] <p>The part size in bytes. This is the same value that you specified in the Initiate Multipart Upload request.</p>
-- @param _MultipartUploadId [string] <p>The ID of the upload to which the parts are associated.</p>
-- @param _Parts [PartList] <p>A list of the part sizes of the multipart upload. Each object in the array contains a <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value pair.</p>
-- @param _Marker [string] <p>An opaque string that represents where to continue pagination of the results. You use the marker in a new List Parts request to obtain more jobs in the list. If there are no more parts, this value is <code>null</code>.</p>
-- @param _CreationDate [string] <p>The UTC time at which the multipart upload was initiated.</p>
function M.ListPartsOutput(_VaultARN, _ArchiveDescription, _PartSizeInBytes, _MultipartUploadId, _Parts, _Marker, _CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPartsOutput")
	local t = { 
		["VaultARN"] = _VaultARN,
		["ArchiveDescription"] = _ArchiveDescription,
		["PartSizeInBytes"] = _PartSizeInBytes,
		["MultipartUploadId"] = _MultipartUploadId,
		["Parts"] = _Parts,
		["Marker"] = _Marker,
		["CreationDate"] = _CreationDate,
	}
	asserts.AssertListPartsOutput(t)
	return t
end

keys.JobParameters = { ["InventoryRetrievalParameters"] = true, ["RetrievalByteRange"] = true, ["Description"] = true, ["Format"] = true, ["SNSTopic"] = true, ["Tier"] = true, ["ArchiveId"] = true, ["Type"] = true, nil }

function asserts.AssertJobParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobParameters to be of type 'table'")
	if struct["InventoryRetrievalParameters"] then asserts.AssertInventoryRetrievalJobInput(struct["InventoryRetrievalParameters"]) end
	if struct["RetrievalByteRange"] then asserts.Assertstring(struct["RetrievalByteRange"]) end
	if struct["Description"] then asserts.Assertstring(struct["Description"]) end
	if struct["Format"] then asserts.Assertstring(struct["Format"]) end
	if struct["SNSTopic"] then asserts.Assertstring(struct["SNSTopic"]) end
	if struct["Tier"] then asserts.Assertstring(struct["Tier"]) end
	if struct["ArchiveId"] then asserts.Assertstring(struct["ArchiveId"]) end
	if struct["Type"] then asserts.Assertstring(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobParameters[k], "JobParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobParameters
-- <p>Provides options for defining a job.</p>
-- @param _InventoryRetrievalParameters [InventoryRetrievalJobInput] <p>Input parameters used for range inventory retrieval.</p>
-- @param _RetrievalByteRange [string] <p>The byte range to retrieve for an archive retrieval. in the form "<i>StartByteValue</i>-<i>EndByteValue</i>" If not specified, the whole archive is retrieved. If specified, the byte range must be megabyte (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange is not megabyte aligned, this operation returns a 400 response. </p> <p>An error occurs if you specify this field for an inventory retrieval job request.</p>
-- @param _Description [string] <p>The optional description for the job. The description must be less than or equal to 1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically, ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>
-- @param _Format [string] <p>When initiating a job to retrieve a vault inventory, you can optionally add this parameter to your request to specify the output format. If you are initiating an inventory job and do not specify a Format field, JSON is the default format. Valid values are "CSV" and "JSON".</p>
-- @param _SNSTopic [string] <p>The Amazon SNS topic ARN to which Amazon Glacier sends a notification when the job is completed and the output is ready for you to download. The specified topic publishes the notification to its subscribers. The SNS topic must exist.</p>
-- @param _Tier [string] <p>The retrieval option to use for the archive retrieval. Valid values are <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>. <code>Standard</code> is the default.</p>
-- @param _ArchiveId [string] <p>The ID of the archive that you want to retrieve. This field is required only if <code>Type</code> is set to archive-retrieval. An error occurs if you specify this request parameter for an inventory retrieval job request. </p>
-- @param _Type [string] <p>The job type. You can initiate a job to retrieve an archive or get an inventory of a vault. Valid values are "archive-retrieval" and "inventory-retrieval".</p>
function M.JobParameters(_InventoryRetrievalParameters, _RetrievalByteRange, _Description, _Format, _SNSTopic, _Tier, _ArchiveId, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobParameters")
	local t = { 
		["InventoryRetrievalParameters"] = _InventoryRetrievalParameters,
		["RetrievalByteRange"] = _RetrievalByteRange,
		["Description"] = _Description,
		["Format"] = _Format,
		["SNSTopic"] = _SNSTopic,
		["Tier"] = _Tier,
		["ArchiveId"] = _ArchiveId,
		["Type"] = _Type,
	}
	asserts.AssertJobParameters(t)
	return t
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
-- @param _Policy [DataRetrievalPolicy] <p>Contains the returned data retrieval policy in JSON format.</p>
function M.GetDataRetrievalPolicyOutput(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDataRetrievalPolicyOutput")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertGetDataRetrievalPolicyOutput(t)
	return t
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
-- @param _policy [VaultAccessPolicy] <p>Contains the returned vault access policy as a JSON string.</p>
function M.GetVaultAccessPolicyOutput(_policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetVaultAccessPolicyOutput")
	local t = { 
		["policy"] = _policy,
	}
	asserts.AssertGetVaultAccessPolicyOutput(t)
	return t
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
-- @param _jobId [string] <p>The ID of the job to describe.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
-- Required parameter: jobId
function M.DescribeJobInput(_jobId, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeJobInput")
	local t = { 
		["jobId"] = _jobId,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertDescribeJobInput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DescribeVaultInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVaultInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertDescribeVaultInput(t)
	return t
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
-- @param _marker [string] <p>An opaque string used for pagination. This value specifies the upload at which the listing of uploads should begin. Get the marker value from a previous List Uploads response. You need only include the marker if you are continuing the pagination of results started in a previous List Uploads request.</p>
-- @param _limit [string] <p>Specifies the maximum number of uploads returned in the response body. If this value is not specified, the List Uploads operation returns up to 1,000 uploads.</p>
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.ListMultipartUploadsInput(_marker, _limit, _vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMultipartUploadsInput")
	local t = { 
		["marker"] = _marker,
		["limit"] = _limit,
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertListMultipartUploadsInput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.AbortVaultLockInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortVaultLockInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertAbortVaultLockInput(t)
	return t
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
-- @param _accountId [string] <p>The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
function M.PurchaseProvisionedCapacityInput(_accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseProvisionedCapacityInput")
	local t = { 
		["accountId"] = _accountId,
	}
	asserts.AssertPurchaseProvisionedCapacityInput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.</p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.ListTagsForVaultInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForVaultInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertListTagsForVaultInput(t)
	return t
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
-- @param _Policy [string] <p>The vault lock policy.</p>
function M.VaultLockPolicy(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VaultLockPolicy")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertVaultLockPolicy(t)
	return t
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
-- @param _Policy [string] <p>The vault access policy.</p>
function M.VaultAccessPolicy(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VaultAccessPolicy")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertVaultAccessPolicy(t)
	return t
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
-- @param _message [string] 
-- @param _code [string] 
-- @param _type [string] 
function M.InsufficientCapacityException(_message, _code, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientCapacityException")
	local t = { 
		["message"] = _message,
		["code"] = _code,
		["type"] = _type,
	}
	asserts.AssertInsufficientCapacityException(t)
	return t
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
-- @param _SizeInBytes [long] <p>Total size, in bytes, of the archives in the vault as of the last inventory date. This field will return null if an inventory has not yet run on the vault, for example if you just created the vault.</p>
-- @param _VaultARN [string] <p>The Amazon Resource Name (ARN) of the vault.</p>
-- @param _LastInventoryDate [string] <p>The Universal Coordinated Time (UTC) date when Amazon Glacier completed the last vault inventory. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>
-- @param _VaultName [string] <p>The name of the vault.</p>
-- @param _NumberOfArchives [long] <p>The number of archives in the vault as of the last inventory date. This field will return <code>null</code> if an inventory has not yet run on the vault, for example if you just created the vault.</p>
-- @param _CreationDate [string] <p>The Universal Coordinated Time (UTC) date when the vault was created. This value should be a string in the ISO 8601 date format, for example <code>2012-03-20T17:03:43.221Z</code>.</p>
function M.DescribeVaultOutput(_SizeInBytes, _VaultARN, _LastInventoryDate, _VaultName, _NumberOfArchives, _CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVaultOutput")
	local t = { 
		["SizeInBytes"] = _SizeInBytes,
		["VaultARN"] = _VaultARN,
		["LastInventoryDate"] = _LastInventoryDate,
		["VaultName"] = _VaultName,
		["NumberOfArchives"] = _NumberOfArchives,
		["CreationDate"] = _CreationDate,
	}
	asserts.AssertDescribeVaultOutput(t)
	return t
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
-- @param _vaultName [string] <p>The name of the vault.</p>
-- @param _accountId [string] <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID. </p>
-- Required parameter: accountId
-- Required parameter: vaultName
function M.DeleteVaultNotificationsInput(_vaultName, _accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVaultNotificationsInput")
	local t = { 
		["vaultName"] = _vaultName,
		["accountId"] = _accountId,
	}
	asserts.AssertDeleteVaultNotificationsInput(t)
	return t
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

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
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

function asserts.AssertActionCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionCode to be of type 'string'")
end

--  
function M.ActionCode(str)
	asserts.AssertActionCode(str)
	return str
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

function asserts.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	asserts.AssertSize(long)
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
	assert(type(string) == "string", "Expected Stream to be of type 'string'")
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
