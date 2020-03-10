--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Storage Service (s3-2006-03-01)

local M = {}

M.metadata = {
	api_version = "2006-03-01",
	json_version = "",
	protocol = "rest-xml",
	checksum_format = "md5",
	endpoint_prefix = "s3",
	service_abbreviation = "Amazon S3",
	service_full_name = "Amazon Simple Storage Service",
	signature_version = "s3",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "s3.amazonaws.com",
	uid = "s3-2006-03-01",
}

local keys = {}
local asserts = {}

keys.PutBucketVersioningRequest = { ["MFA"] = true, ["ContentMD5"] = true, ["Bucket"] = true, ["VersioningConfiguration"] = true, nil }

function asserts.AssertPutBucketVersioningRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketVersioningRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["VersioningConfiguration"], "Expected key VersioningConfiguration to exist in table")
	if struct["MFA"] then asserts.AssertMFA(struct["MFA"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["VersioningConfiguration"] then asserts.AssertVersioningConfiguration(struct["VersioningConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketVersioningRequest[k], "PutBucketVersioningRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketVersioningRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MFA [MFA] <p>The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.</p>
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * VersioningConfiguration [VersioningConfiguration] 
-- Required key: Bucket
-- Required key: VersioningConfiguration
-- @return PutBucketVersioningRequest structure as a key-value pair table
function M.PutBucketVersioningRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketVersioningRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-mfa"] = args["MFA"],
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["MFA"] = args["MFA"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["VersioningConfiguration"] = args["VersioningConfiguration"],
	}
	asserts.AssertPutBucketVersioningRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectTaggingOutput = { ["VersionId"] = true, nil }

function asserts.AssertDeleteObjectTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectTaggingOutput to be of type 'table'")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectTaggingOutput[k], "DeleteObjectTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectTaggingOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] <p>The versionId of the object the tag-set was removed from.</p>
-- @return DeleteObjectTaggingOutput structure as a key-value pair table
function M.DeleteObjectTaggingOutput(args)
	assert(args, "You must provide an argument table when creating DeleteObjectTaggingOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-version-id"] = args["VersionId"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
	}
	asserts.AssertDeleteObjectTaggingOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketReplicationRequest = { ["ReplicationConfiguration"] = true, ["ContentMD5"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketReplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketReplicationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["ReplicationConfiguration"], "Expected key ReplicationConfiguration to exist in table")
	if struct["ReplicationConfiguration"] then asserts.AssertReplicationConfiguration(struct["ReplicationConfiguration"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketReplicationRequest[k], "PutBucketReplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketReplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationConfiguration [ReplicationConfiguration] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- Required key: ReplicationConfiguration
-- @return PutBucketReplicationRequest structure as a key-value pair table
function M.PutBucketReplicationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketReplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["ReplicationConfiguration"] = args["ReplicationConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketReplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Progress = { ["BytesScanned"] = true, ["BytesProcessed"] = true, ["BytesReturned"] = true, nil }

function asserts.AssertProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Progress to be of type 'table'")
	if struct["BytesScanned"] then asserts.AssertBytesScanned(struct["BytesScanned"]) end
	if struct["BytesProcessed"] then asserts.AssertBytesProcessed(struct["BytesProcessed"]) end
	if struct["BytesReturned"] then asserts.AssertBytesReturned(struct["BytesReturned"]) end
	for k,_ in pairs(struct) do
		assert(keys.Progress[k], "Progress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Progress
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BytesScanned [BytesScanned] <p>Current number of object bytes scanned.</p>
-- * BytesProcessed [BytesProcessed] <p>Current number of uncompressed object bytes processed.</p>
-- * BytesReturned [BytesReturned] <p>Current number of bytes of records payload data returned.</p>
-- @return Progress structure as a key-value pair table
function M.Progress(args)
	assert(args, "You must provide an argument table when creating Progress")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BytesScanned"] = args["BytesScanned"],
		["BytesProcessed"] = args["BytesProcessed"],
		["BytesReturned"] = args["BytesReturned"],
	}
	asserts.AssertProgress(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectOutput = { ["SSECustomerAlgorithm"] = true, ["RequestCharged"] = true, ["VersionId"] = true, ["ETag"] = true, ["Expiration"] = true, ["ServerSideEncryption"] = true, ["SSECustomerKeyMD5"] = true, ["SSEKMSKeyId"] = true, nil }

function asserts.AssertPutObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["Expiration"] then asserts.AssertExpiration(struct["Expiration"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectOutput[k], "PutObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * RequestCharged [RequestCharged] 
-- * VersionId [ObjectVersionId] <p>Version of the object.</p>
-- * ETag [ETag] <p>Entity tag for the uploaded object.</p>
-- * Expiration [Expiration] <p>If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- @return PutObjectOutput structure as a key-value pair table
function M.PutObjectOutput(args)
	assert(args, "You must provide an argument table when creating PutObjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-version-id"] = args["VersionId"],
        ["ETag"] = args["ETag"],
        ["x-amz-expiration"] = args["Expiration"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["RequestCharged"] = args["RequestCharged"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["Expiration"] = args["Expiration"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertPutObjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketWebsiteRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketWebsiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketWebsiteRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketWebsiteRequest[k], "GetBucketWebsiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketWebsiteRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketWebsiteRequest structure as a key-value pair table
function M.GetBucketWebsiteRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketWebsiteRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketWebsiteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Object = { ["LastModified"] = true, ["ETag"] = true, ["StorageClass"] = true, ["Key"] = true, ["Owner"] = true, ["Size"] = true, nil }

function asserts.AssertObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Object to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["StorageClass"] then asserts.AssertObjectStorageClass(struct["StorageClass"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["Size"] then asserts.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.Object[k], "Object contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Object
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] 
-- * ETag [ETag] 
-- * StorageClass [ObjectStorageClass] <p>The class of storage used to store the object.</p>
-- * Key [ObjectKey] 
-- * Owner [Owner] 
-- * Size [Size] 
-- @return Object structure as a key-value pair table
function M.Object(args)
	assert(args, "You must provide an argument table when creating Object")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["ETag"] = args["ETag"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["Owner"] = args["Owner"],
		["Size"] = args["Size"],
	}
	asserts.AssertObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMarkerEntry = { ["Owner"] = true, ["IsLatest"] = true, ["VersionId"] = true, ["Key"] = true, ["LastModified"] = true, nil }

function asserts.AssertDeleteMarkerEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMarkerEntry to be of type 'table'")
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["IsLatest"] then asserts.AssertIsLatest(struct["IsLatest"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMarkerEntry[k], "DeleteMarkerEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMarkerEntry
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [Owner] 
-- * IsLatest [IsLatest] <p>Specifies whether the object is (true) or is not (false) the latest version of an object.</p>
-- * VersionId [ObjectVersionId] <p>Version ID of an object.</p>
-- * Key [ObjectKey] <p>The object key.</p>
-- * LastModified [LastModified] <p>Date and time the object was last modified.</p>
-- @return DeleteMarkerEntry structure as a key-value pair table
function M.DeleteMarkerEntry(args)
	assert(args, "You must provide an argument table when creating DeleteMarkerEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["IsLatest"] = args["IsLatest"],
		["VersionId"] = args["VersionId"],
		["Key"] = args["Key"],
		["LastModified"] = args["LastModified"],
	}
	asserts.AssertDeleteMarkerEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketEncryptionOutput = { ["ServerSideEncryptionConfiguration"] = true, nil }

function asserts.AssertGetBucketEncryptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketEncryptionOutput to be of type 'table'")
	if struct["ServerSideEncryptionConfiguration"] then asserts.AssertServerSideEncryptionConfiguration(struct["ServerSideEncryptionConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketEncryptionOutput[k], "GetBucketEncryptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketEncryptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerSideEncryptionConfiguration [ServerSideEncryptionConfiguration] 
-- @return GetBucketEncryptionOutput structure as a key-value pair table
function M.GetBucketEncryptionOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketEncryptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerSideEncryptionConfiguration"] = args["ServerSideEncryptionConfiguration"],
	}
	asserts.AssertGetBucketEncryptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServerSideEncryptionByDefault = { ["KMSMasterKeyID"] = true, ["SSEAlgorithm"] = true, nil }

function asserts.AssertServerSideEncryptionByDefault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerSideEncryptionByDefault to be of type 'table'")
	assert(struct["SSEAlgorithm"], "Expected key SSEAlgorithm to exist in table")
	if struct["KMSMasterKeyID"] then asserts.AssertSSEKMSKeyId(struct["KMSMasterKeyID"]) end
	if struct["SSEAlgorithm"] then asserts.AssertServerSideEncryption(struct["SSEAlgorithm"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerSideEncryptionByDefault[k], "ServerSideEncryptionByDefault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerSideEncryptionByDefault
-- <p>Describes the default server-side encryption to apply to new objects in the bucket. If Put Object request does not specify any server-side encryption, this default encryption will be applied.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KMSMasterKeyID [SSEKMSKeyId] <p>KMS master key ID to use for the default encryption. This parameter is allowed if SSEAlgorithm is aws:kms.</p>
-- * SSEAlgorithm [ServerSideEncryption] <p>Server-side encryption algorithm to use for the default encryption.</p>
-- Required key: SSEAlgorithm
-- @return ServerSideEncryptionByDefault structure as a key-value pair table
function M.ServerSideEncryptionByDefault(args)
	assert(args, "You must provide an argument table when creating ServerSideEncryptionByDefault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KMSMasterKeyID"] = args["KMSMasterKeyID"],
		["SSEAlgorithm"] = args["SSEAlgorithm"],
	}
	asserts.AssertServerSideEncryptionByDefault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketAnalyticsConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteBucketAnalyticsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketAnalyticsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketAnalyticsConfigurationRequest[k], "DeleteBucketAnalyticsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketAnalyticsConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket from which an analytics configuration is deleted.</p>
-- * Id [AnalyticsId] <p>The identifier used to represent an analytics configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- @return DeleteBucketAnalyticsConfigurationRequest structure as a key-value pair table
function M.DeleteBucketAnalyticsConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketAnalyticsConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteBucketAnalyticsConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecordsEvent = { ["Payload"] = true, nil }

function asserts.AssertRecordsEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordsEvent to be of type 'table'")
	if struct["Payload"] then asserts.AssertBody(struct["Payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordsEvent[k], "RecordsEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordsEvent
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Payload [Body] <p>The byte array of partial, one or more result records.</p>
-- @return RecordsEvent structure as a key-value pair table
function M.RecordsEvent(args)
	assert(args, "You must provide an argument table when creating RecordsEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Payload"] = args["Payload"],
	}
	asserts.AssertRecordsEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsConfiguration = { ["Filter"] = true, ["StorageClassAnalysis"] = true, ["Id"] = true, nil }

function asserts.AssertAnalyticsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsConfiguration to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["StorageClassAnalysis"], "Expected key StorageClassAnalysis to exist in table")
	if struct["Filter"] then asserts.AssertAnalyticsFilter(struct["Filter"]) end
	if struct["StorageClassAnalysis"] then asserts.AssertStorageClassAnalysis(struct["StorageClassAnalysis"]) end
	if struct["Id"] then asserts.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsConfiguration[k], "AnalyticsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [AnalyticsFilter] <p>The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.</p>
-- * StorageClassAnalysis [StorageClassAnalysis] <p>If present, it indicates that data related to access patterns will be collected and made available to analyze the tradeoffs between different storage classes.</p>
-- * Id [AnalyticsId] <p>The identifier used to represent an analytics configuration.</p>
-- Required key: Id
-- Required key: StorageClassAnalysis
-- @return AnalyticsConfiguration structure as a key-value pair table
function M.AnalyticsConfiguration(args)
	assert(args, "You must provide an argument table when creating AnalyticsConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["StorageClassAnalysis"] = args["StorageClassAnalysis"],
		["Id"] = args["Id"],
	}
	asserts.AssertAnalyticsConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketLifecycleRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketLifecycleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketLifecycleRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketLifecycleRequest[k], "DeleteBucketLifecycleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketLifecycleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketLifecycleRequest structure as a key-value pair table
function M.DeleteBucketLifecycleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketLifecycleRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketLifecycleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventoryDestination = { ["S3BucketDestination"] = true, nil }

function asserts.AssertInventoryDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryDestination to be of type 'table'")
	assert(struct["S3BucketDestination"], "Expected key S3BucketDestination to exist in table")
	if struct["S3BucketDestination"] then asserts.AssertInventoryS3BucketDestination(struct["S3BucketDestination"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryDestination[k], "InventoryDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryDestination
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3BucketDestination [InventoryS3BucketDestination] <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.</p>
-- Required key: S3BucketDestination
-- @return InventoryDestination structure as a key-value pair table
function M.InventoryDestination(args)
	assert(args, "You must provide an argument table when creating InventoryDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3BucketDestination"] = args["S3BucketDestination"],
	}
	asserts.AssertInventoryDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadPartRequest = { ["Body"] = true, ["SSECustomerAlgorithm"] = true, ["RequestPayer"] = true, ["ContentLength"] = true, ["ContentMD5"] = true, ["Bucket"] = true, ["SSECustomerKey"] = true, ["UploadId"] = true, ["Key"] = true, ["SSECustomerKeyMD5"] = true, ["PartNumber"] = true, nil }

function asserts.AssertUploadPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["PartNumber"], "Expected key PartNumber to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["Body"] then asserts.AssertBody(struct["Body"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentLength"] then asserts.AssertContentLength(struct["ContentLength"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["PartNumber"] then asserts.AssertPartNumber(struct["PartNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadPartRequest[k], "UploadPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [Body] <p>Object data.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * RequestPayer [RequestPayer] 
-- * ContentLength [ContentLength] <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.</p>
-- * ContentMD5 [ContentMD5] <p>The base64-encoded 128-bit MD5 digest of the part data.</p>
-- * Bucket [BucketName] <p>Name of the bucket to which the multipart upload was initiated.</p>
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.</p>
-- * UploadId [MultipartUploadId] <p>Upload ID identifying the multipart upload whose part is being uploaded.</p>
-- * Key [ObjectKey] <p>Object key for which the multipart upload was initiated.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- * PartNumber [PartNumber] <p>Part number of part being uploaded. This is a positive integer between 1 and 10,000.</p>
-- Required key: Bucket
-- Required key: Key
-- Required key: PartNumber
-- Required key: UploadId
-- @return UploadPartRequest structure as a key-value pair table
function M.UploadPartRequest(args)
	assert(args, "You must provide an argument table when creating UploadPartRequest")
    local query_args = { 
        ["uploadId"] = args["UploadId"],
        ["partNumber"] = args["PartNumber"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["Content-Length"] = args["ContentLength"],
        ["Content-MD5"] = args["ContentMD5"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["Body"] = args["Body"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["RequestPayer"] = args["RequestPayer"],
		["ContentLength"] = args["ContentLength"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["UploadId"] = args["UploadId"],
		["Key"] = args["Key"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["PartNumber"] = args["PartNumber"],
	}
	asserts.AssertUploadPartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketEncryptionRequest = { ["ContentMD5"] = true, ["Bucket"] = true, ["ServerSideEncryptionConfiguration"] = true, nil }

function asserts.AssertPutBucketEncryptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketEncryptionRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["ServerSideEncryptionConfiguration"], "Expected key ServerSideEncryptionConfiguration to exist in table")
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ServerSideEncryptionConfiguration"] then asserts.AssertServerSideEncryptionConfiguration(struct["ServerSideEncryptionConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketEncryptionRequest[k], "PutBucketEncryptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketEncryptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentMD5 [ContentMD5] <p>The base64-encoded 128-bit MD5 digest of the server-side encryption configuration.</p>
-- * Bucket [BucketName] <p>The name of the bucket for which the server-side encryption configuration is set.</p>
-- * ServerSideEncryptionConfiguration [ServerSideEncryptionConfiguration] 
-- Required key: Bucket
-- Required key: ServerSideEncryptionConfiguration
-- @return PutBucketEncryptionRequest structure as a key-value pair table
function M.PutBucketEncryptionRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketEncryptionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["ServerSideEncryptionConfiguration"] = args["ServerSideEncryptionConfiguration"],
	}
	asserts.AssertPutBucketEncryptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectTaggingRequest = { ["VersionId"] = true, ["ContentMD5"] = true, ["Bucket"] = true, ["Tagging"] = true, ["Key"] = true, nil }

function asserts.AssertPutObjectTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Tagging"], "Expected key Tagging to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Tagging"] then asserts.AssertTagging(struct["Tagging"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectTaggingRequest[k], "PutObjectTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectTaggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * Tagging [Tagging] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- Required key: Tagging
-- @return PutObjectTaggingRequest structure as a key-value pair table
function M.PutObjectTaggingRequest(args)
	assert(args, "You must provide an argument table when creating PutObjectTaggingRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["Tagging"] = args["Tagging"],
		["Key"] = args["Key"],
	}
	asserts.AssertPutObjectTaggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketEncryptionRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketEncryptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketEncryptionRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketEncryptionRequest[k], "GetBucketEncryptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketEncryptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket from which the server-side encryption configuration is retrieved.</p>
-- Required key: Bucket
-- @return GetBucketEncryptionRequest structure as a key-value pair table
function M.GetBucketEncryptionRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketEncryptionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketEncryptionRequest(all_args)
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
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [Value] <p>Value of the tag.</p>
-- * Key [ObjectKey] <p>Name of the tag.</p>
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

keys.GetBucketNotificationConfigurationRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketNotificationConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketNotificationConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketNotificationConfigurationRequest[k], "GetBucketNotificationConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketNotificationConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>Name of the bucket to get the notification configuration for.</p>
-- Required key: Bucket
-- @return GetBucketNotificationConfigurationRequest structure as a key-value pair table
function M.GetBucketNotificationConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketNotificationConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketNotificationConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketMetricsConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, ["MetricsConfiguration"] = true, nil }

function asserts.AssertPutBucketMetricsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketMetricsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MetricsConfiguration"], "Expected key MetricsConfiguration to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertMetricsId(struct["Id"]) end
	if struct["MetricsConfiguration"] then asserts.AssertMetricsConfiguration(struct["MetricsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketMetricsConfigurationRequest[k], "PutBucketMetricsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketMetricsConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket for which the metrics configuration is set.</p>
-- * Id [MetricsId] <p>The ID used to identify the metrics configuration.</p>
-- * MetricsConfiguration [MetricsConfiguration] <p>Specifies the metrics configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- Required key: MetricsConfiguration
-- @return PutBucketMetricsConfigurationRequest structure as a key-value pair table
function M.PutBucketMetricsConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketMetricsConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
		["MetricsConfiguration"] = args["MetricsConfiguration"],
	}
	asserts.AssertPutBucketMetricsConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Stats = { ["BytesScanned"] = true, ["BytesProcessed"] = true, ["BytesReturned"] = true, nil }

function asserts.AssertStats(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stats to be of type 'table'")
	if struct["BytesScanned"] then asserts.AssertBytesScanned(struct["BytesScanned"]) end
	if struct["BytesProcessed"] then asserts.AssertBytesProcessed(struct["BytesProcessed"]) end
	if struct["BytesReturned"] then asserts.AssertBytesReturned(struct["BytesReturned"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stats[k], "Stats contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stats
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BytesScanned [BytesScanned] <p>Total number of object bytes scanned.</p>
-- * BytesProcessed [BytesProcessed] <p>Total number of uncompressed object bytes processed.</p>
-- * BytesReturned [BytesReturned] <p>Total number of bytes of records payload data returned.</p>
-- @return Stats structure as a key-value pair table
function M.Stats(args)
	assert(args, "You must provide an argument table when creating Stats")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BytesScanned"] = args["BytesScanned"],
		["BytesProcessed"] = args["BytesProcessed"],
		["BytesReturned"] = args["BytesReturned"],
	}
	asserts.AssertStats(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectVersionsRequest = { ["Bucket"] = true, ["Prefix"] = true, ["MaxKeys"] = true, ["Delimiter"] = true, ["KeyMarker"] = true, ["EncodingType"] = true, ["VersionIdMarker"] = true, nil }

function asserts.AssertListObjectVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectVersionsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["MaxKeys"] then asserts.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["KeyMarker"] then asserts.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	if struct["VersionIdMarker"] then asserts.AssertVersionIdMarker(struct["VersionIdMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectVersionsRequest[k], "ListObjectVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- * Prefix [Prefix] <p>Limits the response to keys that begin with the specified prefix.</p>
-- * MaxKeys [MaxKeys] <p>Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.</p>
-- * Delimiter [Delimiter] <p>A delimiter is a character you use to group keys.</p>
-- * KeyMarker [KeyMarker] <p>Specifies the key to start with when listing objects in a bucket.</p>
-- * EncodingType [EncodingType] 
-- * VersionIdMarker [VersionIdMarker] <p>Specifies the object version you want to start listing from.</p>
-- Required key: Bucket
-- @return ListObjectVersionsRequest structure as a key-value pair table
function M.ListObjectVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectVersionsRequest")
    local query_args = { 
        ["prefix"] = args["Prefix"],
        ["max-keys"] = args["MaxKeys"],
        ["delimiter"] = args["Delimiter"],
        ["key-marker"] = args["KeyMarker"],
        ["encoding-type"] = args["EncodingType"],
        ["version-id-marker"] = args["VersionIdMarker"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["MaxKeys"] = args["MaxKeys"],
		["Delimiter"] = args["Delimiter"],
		["KeyMarker"] = args["KeyMarker"],
		["EncodingType"] = args["EncodingType"],
		["VersionIdMarker"] = args["VersionIdMarker"],
	}
	asserts.AssertListObjectVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLoggingOutput = { ["LoggingEnabled"] = true, nil }

function asserts.AssertGetBucketLoggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLoggingOutput to be of type 'table'")
	if struct["LoggingEnabled"] then asserts.AssertLoggingEnabled(struct["LoggingEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLoggingOutput[k], "GetBucketLoggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLoggingOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggingEnabled [LoggingEnabled] 
-- @return GetBucketLoggingOutput structure as a key-value pair table
function M.GetBucketLoggingOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketLoggingOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggingEnabled"] = args["LoggingEnabled"],
	}
	asserts.AssertGetBucketLoggingOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServerSideEncryptionConfiguration = { ["Rules"] = true, nil }

function asserts.AssertServerSideEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerSideEncryptionConfiguration to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then asserts.AssertServerSideEncryptionRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerSideEncryptionConfiguration[k], "ServerSideEncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerSideEncryptionConfiguration
-- <p>Container for server-side encryption configuration rules. Currently S3 supports one rule only.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [ServerSideEncryptionRules] <p>Container for information about a particular server-side encryption configuration rule.</p>
-- Required key: Rules
-- @return ServerSideEncryptionConfiguration structure as a key-value pair table
function M.ServerSideEncryptionConfiguration(args)
	assert(args, "You must provide an argument table when creating ServerSideEncryptionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertServerSideEncryptionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlacierJobParameters = { ["Tier"] = true, nil }

function asserts.AssertGlacierJobParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlacierJobParameters to be of type 'table'")
	assert(struct["Tier"], "Expected key Tier to exist in table")
	if struct["Tier"] then asserts.AssertTier(struct["Tier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlacierJobParameters[k], "GlacierJobParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlacierJobParameters
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tier [Tier] <p>Glacier retrieval tier at which the restore will be processed.</p>
-- Required key: Tier
-- @return GlacierJobParameters structure as a key-value pair table
function M.GlacierJobParameters(args)
	assert(args, "You must provide an argument table when creating GlacierJobParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tier"] = args["Tier"],
	}
	asserts.AssertGlacierJobParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServerSideEncryptionRule = { ["ApplyServerSideEncryptionByDefault"] = true, nil }

function asserts.AssertServerSideEncryptionRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerSideEncryptionRule to be of type 'table'")
	if struct["ApplyServerSideEncryptionByDefault"] then asserts.AssertServerSideEncryptionByDefault(struct["ApplyServerSideEncryptionByDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerSideEncryptionRule[k], "ServerSideEncryptionRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerSideEncryptionRule
-- <p>Container for information about a particular server-side encryption configuration rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplyServerSideEncryptionByDefault [ServerSideEncryptionByDefault] <p>Describes the default server-side encryption to apply to new objects in the bucket. If Put Object request does not specify any server-side encryption, this default encryption will be applied.</p>
-- @return ServerSideEncryptionRule structure as a key-value pair table
function M.ServerSideEncryptionRule(args)
	assert(args, "You must provide an argument table when creating ServerSideEncryptionRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplyServerSideEncryptionByDefault"] = args["ApplyServerSideEncryptionByDefault"],
	}
	asserts.AssertServerSideEncryptionRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetGrant = { ["Grantee"] = true, ["Permission"] = true, nil }

function asserts.AssertTargetGrant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGrant to be of type 'table'")
	if struct["Grantee"] then asserts.AssertGrantee(struct["Grantee"]) end
	if struct["Permission"] then asserts.AssertBucketLogsPermission(struct["Permission"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetGrant[k], "TargetGrant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGrant
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Grantee [Grantee] 
-- * Permission [BucketLogsPermission] <p>Logging permissions assigned to the Grantee for the bucket.</p>
-- @return TargetGrant structure as a key-value pair table
function M.TargetGrant(args)
	assert(args, "You must provide an argument table when creating TargetGrant")
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
	asserts.AssertTargetGrant(all_args)
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
	if struct["RecordDelimiter"] then asserts.AssertRecordDelimiter(struct["RecordDelimiter"]) end
	if struct["QuoteCharacter"] then asserts.AssertQuoteCharacter(struct["QuoteCharacter"]) end
	if struct["QuoteEscapeCharacter"] then asserts.AssertQuoteEscapeCharacter(struct["QuoteEscapeCharacter"]) end
	if struct["FieldDelimiter"] then asserts.AssertFieldDelimiter(struct["FieldDelimiter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CSVOutput[k], "CSVOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CSVOutput
-- <p>Describes how CSV-formatted results are formatted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuoteFields [QuoteFields] <p>Indicates whether or not all output fields should be quoted.</p>
-- * RecordDelimiter [RecordDelimiter] <p>Value used to separate individual records.</p>
-- * QuoteCharacter [QuoteCharacter] <p>Value used for escaping where the field delimiter is part of the value.</p>
-- * QuoteEscapeCharacter [QuoteEscapeCharacter] <p>Single character used for escaping the quote character inside an already escaped value.</p>
-- * FieldDelimiter [FieldDelimiter] <p>Value used to separate individual fields in a record.</p>
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

keys.MetricsAndOperator = { ["Prefix"] = true, ["Tags"] = true, nil }

function asserts.AssertMetricsAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricsAndOperator to be of type 'table'")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then asserts.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricsAndOperator[k], "MetricsAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricsAndOperator
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] <p>The prefix used when evaluating an AND predicate.</p>
-- * Tags [TagSet] <p>The list of tags used when evaluating an AND predicate.</p>
-- @return MetricsAndOperator structure as a key-value pair table
function M.MetricsAndOperator(args)
	assert(args, "You must provide an argument table when creating MetricsAndOperator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertMetricsAndOperator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectsOutput = { ["Name"] = true, ["NextMarker"] = true, ["Delimiter"] = true, ["MaxKeys"] = true, ["Prefix"] = true, ["Marker"] = true, ["EncodingType"] = true, ["IsTruncated"] = true, ["Contents"] = true, ["CommonPrefixes"] = true, nil }

function asserts.AssertListObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsOutput to be of type 'table'")
	if struct["Name"] then asserts.AssertBucketName(struct["Name"]) end
	if struct["NextMarker"] then asserts.AssertNextMarker(struct["NextMarker"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["MaxKeys"] then asserts.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["Contents"] then asserts.AssertObjectList(struct["Contents"]) end
	if struct["CommonPrefixes"] then asserts.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectsOutput[k], "ListObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [BucketName] 
-- * NextMarker [NextMarker] <p>When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMaker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.</p>
-- * Delimiter [Delimiter] 
-- * MaxKeys [MaxKeys] 
-- * Prefix [Prefix] 
-- * Marker [Marker] 
-- * EncodingType [EncodingType] <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
-- * IsTruncated [IsTruncated] <p>A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria.</p>
-- * Contents [ObjectList] 
-- * CommonPrefixes [CommonPrefixList] 
-- @return ListObjectsOutput structure as a key-value pair table
function M.ListObjectsOutput(args)
	assert(args, "You must provide an argument table when creating ListObjectsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["NextMarker"] = args["NextMarker"],
		["Delimiter"] = args["Delimiter"],
		["MaxKeys"] = args["MaxKeys"],
		["Prefix"] = args["Prefix"],
		["Marker"] = args["Marker"],
		["EncodingType"] = args["EncodingType"],
		["IsTruncated"] = args["IsTruncated"],
		["Contents"] = args["Contents"],
		["CommonPrefixes"] = args["CommonPrefixes"],
	}
	asserts.AssertListObjectsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectRequest = { ["MFA"] = true, ["VersionId"] = true, ["Bucket"] = true, ["RequestPayer"] = true, ["Key"] = true, nil }

function asserts.AssertDeleteObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["MFA"] then asserts.AssertMFA(struct["MFA"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectRequest[k], "DeleteObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MFA [MFA] <p>The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.</p>
-- * VersionId [ObjectVersionId] <p>VersionId used to reference a specific version of the object.</p>
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return DeleteObjectRequest structure as a key-value pair table
function M.DeleteObjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteObjectRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-mfa"] = args["MFA"],
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["MFA"] = args["MFA"],
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertDeleteObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleRuleAndOperator = { ["Prefix"] = true, ["Tags"] = true, nil }

function asserts.AssertLifecycleRuleAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleRuleAndOperator to be of type 'table'")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then asserts.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleRuleAndOperator[k], "LifecycleRuleAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleRuleAndOperator
-- <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] 
-- * Tags [TagSet] <p>All of these tags must exist in the object's tag set in order for the rule to apply.</p>
-- @return LifecycleRuleAndOperator structure as a key-value pair table
function M.LifecycleRuleAndOperator(args)
	assert(args, "You must provide an argument table when creating LifecycleRuleAndOperator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertLifecycleRuleAndOperator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationRule = { ["Status"] = true, ["Filter"] = true, ["SourceSelectionCriteria"] = true, ["DeleteMarkerReplication"] = true, ["Destination"] = true, ["Priority"] = true, ["Prefix"] = true, ["ID"] = true, nil }

function asserts.AssertReplicationRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRule to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["Status"] then asserts.AssertReplicationRuleStatus(struct["Status"]) end
	if struct["Filter"] then asserts.AssertReplicationRuleFilter(struct["Filter"]) end
	if struct["SourceSelectionCriteria"] then asserts.AssertSourceSelectionCriteria(struct["SourceSelectionCriteria"]) end
	if struct["DeleteMarkerReplication"] then asserts.AssertDeleteMarkerReplication(struct["DeleteMarkerReplication"]) end
	if struct["Destination"] then asserts.AssertDestination(struct["Destination"]) end
	if struct["Priority"] then asserts.AssertPriority(struct["Priority"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationRule[k], "ReplicationRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRule
-- <p>Container for information about a particular replication rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ReplicationRuleStatus] <p>The rule is ignored if status is not Enabled.</p>
-- * Filter [ReplicationRuleFilter] 
-- * SourceSelectionCriteria [SourceSelectionCriteria] <p> Container that describes additional filters in identifying source objects that you want to replicate. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using an AWS KMS-managed key. You can choose to enable or disable replication of these objects. </p> <p> if you want Amazon S3 to replicate objects created with server-side encryption using AWS KMS-managed keys. </p>
-- * DeleteMarkerReplication [DeleteMarkerReplication] 
-- * Destination [Destination] <p>Container for replication destination information.</p>
-- * Priority [Priority] <p>The priority associated with the rule. If you specify multiple rules in a replication configuration, then Amazon S3 applies rule priority in the event there are conflicts (two or more rules identify the same object based on filter specified). The rule with higher priority takes precedence. For example,</p> <ul> <li> <p>Same object quality prefix based filter criteria If prefixes you specified in multiple rules overlap. </p> </li> <li> <p>Same object qualify tag based filter criteria specified in multiple rules</p> </li> </ul> <p>For more information, see <a href=" https://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html">Cross-Region Replication (CRR)</a> in the Amazon S3 Developer Guide.</p>
-- * Prefix [Prefix] <p>Object keyname prefix identifying one or more objects to which the rule applies. Maximum prefix length can be up to 1,024 characters. </p>
-- * ID [ID] <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
-- Required key: Status
-- Required key: Destination
-- @return ReplicationRule structure as a key-value pair table
function M.ReplicationRule(args)
	assert(args, "You must provide an argument table when creating ReplicationRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Filter"] = args["Filter"],
		["SourceSelectionCriteria"] = args["SourceSelectionCriteria"],
		["DeleteMarkerReplication"] = args["DeleteMarkerReplication"],
		["Destination"] = args["Destination"],
		["Priority"] = args["Priority"],
		["Prefix"] = args["Prefix"],
		["ID"] = args["ID"],
	}
	asserts.AssertReplicationRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketRequestPaymentOutput = { ["Payer"] = true, nil }

function asserts.AssertGetBucketRequestPaymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketRequestPaymentOutput to be of type 'table'")
	if struct["Payer"] then asserts.AssertPayer(struct["Payer"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketRequestPaymentOutput[k], "GetBucketRequestPaymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketRequestPaymentOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Payer [Payer] <p>Specifies who pays for the download and request fees.</p>
-- @return GetBucketRequestPaymentOutput structure as a key-value pair table
function M.GetBucketRequestPaymentOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketRequestPaymentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Payer"] = args["Payer"],
	}
	asserts.AssertGetBucketRequestPaymentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBucketMetricsConfigurationsRequest = { ["Bucket"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertListBucketMetricsConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketMetricsConfigurationsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketMetricsConfigurationsRequest[k], "ListBucketMetricsConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketMetricsConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the metrics configurations to retrieve.</p>
-- * ContinuationToken [Token] <p>The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.</p>
-- Required key: Bucket
-- @return ListBucketMetricsConfigurationsRequest structure as a key-value pair table
function M.ListBucketMetricsConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListBucketMetricsConfigurationsRequest")
    local query_args = { 
        ["continuation-token"] = args["ContinuationToken"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketMetricsConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Owner = { ["DisplayName"] = true, ["ID"] = true, nil }

function asserts.AssertOwner(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Owner to be of type 'table'")
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.Owner[k], "Owner contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Owner
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [DisplayName] 
-- * ID [ID] 
-- @return Owner structure as a key-value pair table
function M.Owner(args)
	assert(args, "You must provide an argument table when creating Owner")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["ID"] = args["ID"],
	}
	asserts.AssertOwner(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyObjectResult = { ["LastModified"] = true, ["ETag"] = true, nil }

function asserts.AssertCopyObjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyObjectResult to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyObjectResult[k], "CopyObjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyObjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] 
-- * ETag [ETag] 
-- @return CopyObjectResult structure as a key-value pair table
function M.CopyObjectResult(args)
	assert(args, "You must provide an argument table when creating CopyObjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCopyObjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleRule = { ["Status"] = true, ["NoncurrentVersionExpiration"] = true, ["NoncurrentVersionTransitions"] = true, ["Filter"] = true, ["Prefix"] = true, ["Expiration"] = true, ["AbortIncompleteMultipartUpload"] = true, ["Transitions"] = true, ["ID"] = true, nil }

function asserts.AssertLifecycleRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleRule to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertExpirationStatus(struct["Status"]) end
	if struct["NoncurrentVersionExpiration"] then asserts.AssertNoncurrentVersionExpiration(struct["NoncurrentVersionExpiration"]) end
	if struct["NoncurrentVersionTransitions"] then asserts.AssertNoncurrentVersionTransitionList(struct["NoncurrentVersionTransitions"]) end
	if struct["Filter"] then asserts.AssertLifecycleRuleFilter(struct["Filter"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Expiration"] then asserts.AssertLifecycleExpiration(struct["Expiration"]) end
	if struct["AbortIncompleteMultipartUpload"] then asserts.AssertAbortIncompleteMultipartUpload(struct["AbortIncompleteMultipartUpload"]) end
	if struct["Transitions"] then asserts.AssertTransitionList(struct["Transitions"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleRule[k], "LifecycleRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleRule
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ExpirationStatus] <p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.</p>
-- * NoncurrentVersionExpiration [NoncurrentVersionExpiration] 
-- * NoncurrentVersionTransitions [NoncurrentVersionTransitionList] 
-- * Filter [LifecycleRuleFilter] 
-- * Prefix [Prefix] <p>Prefix identifying one or more objects to which the rule applies. This is deprecated; use Filter instead.</p>
-- * Expiration [LifecycleExpiration] 
-- * AbortIncompleteMultipartUpload [AbortIncompleteMultipartUpload] 
-- * Transitions [TransitionList] 
-- * ID [ID] <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
-- Required key: Status
-- @return LifecycleRule structure as a key-value pair table
function M.LifecycleRule(args)
	assert(args, "You must provide an argument table when creating LifecycleRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NoncurrentVersionExpiration"] = args["NoncurrentVersionExpiration"],
		["NoncurrentVersionTransitions"] = args["NoncurrentVersionTransitions"],
		["Filter"] = args["Filter"],
		["Prefix"] = args["Prefix"],
		["Expiration"] = args["Expiration"],
		["AbortIncompleteMultipartUpload"] = args["AbortIncompleteMultipartUpload"],
		["Transitions"] = args["Transitions"],
		["ID"] = args["ID"],
	}
	asserts.AssertLifecycleRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLifecycleOutput = { ["Rules"] = true, nil }

function asserts.AssertGetBucketLifecycleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleOutput to be of type 'table'")
	if struct["Rules"] then asserts.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLifecycleOutput[k], "GetBucketLifecycleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [Rules] 
-- @return GetBucketLifecycleOutput structure as a key-value pair table
function M.GetBucketLifecycleOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketLifecycleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertGetBucketLifecycleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectTaggingRequest = { ["VersionId"] = true, ["Bucket"] = true, ["Key"] = true, nil }

function asserts.AssertGetObjectTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectTaggingRequest[k], "GetObjectTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTaggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- * Bucket [BucketName] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return GetObjectTaggingRequest structure as a key-value pair table
function M.GetObjectTaggingRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectTaggingRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetObjectTaggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompleteMultipartUploadOutput = { ["RequestCharged"] = true, ["Bucket"] = true, ["VersionId"] = true, ["ETag"] = true, ["Location"] = true, ["Key"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["Expiration"] = true, nil }

function asserts.AssertCompleteMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteMultipartUploadOutput to be of type 'table'")
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["Expiration"] then asserts.AssertExpiration(struct["Expiration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteMultipartUploadOutput[k], "CompleteMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteMultipartUploadOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestCharged [RequestCharged] 
-- * Bucket [BucketName] 
-- * VersionId [ObjectVersionId] <p>Version of the object.</p>
-- * ETag [ETag] <p>Entity tag of the object.</p>
-- * Location [Location] 
-- * Key [ObjectKey] 
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- * Expiration [Expiration] <p>If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.</p>
-- @return CompleteMultipartUploadOutput structure as a key-value pair table
function M.CompleteMultipartUploadOutput(args)
	assert(args, "You must provide an argument table when creating CompleteMultipartUploadOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-version-id"] = args["VersionId"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["x-amz-expiration"] = args["Expiration"],
    }
	local all_args = { 
		["RequestCharged"] = args["RequestCharged"],
		["Bucket"] = args["Bucket"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["Location"] = args["Location"],
		["Key"] = args["Key"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["Expiration"] = args["Expiration"],
	}
	asserts.AssertCompleteMultipartUploadOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketInventoryConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteBucketInventoryConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketInventoryConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketInventoryConfigurationRequest[k], "DeleteBucketInventoryConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketInventoryConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the inventory configuration to delete.</p>
-- * Id [InventoryId] <p>The ID used to identify the inventory configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- @return DeleteBucketInventoryConfigurationRequest structure as a key-value pair table
function M.DeleteBucketInventoryConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketInventoryConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteBucketInventoryConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SelectObjectContentOutput = { ["Payload"] = true, nil }

function asserts.AssertSelectObjectContentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectObjectContentOutput to be of type 'table'")
	if struct["Payload"] then asserts.AssertSelectObjectContentEventStream(struct["Payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectObjectContentOutput[k], "SelectObjectContentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectObjectContentOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Payload [SelectObjectContentEventStream] 
-- @return SelectObjectContentOutput structure as a key-value pair table
function M.SelectObjectContentOutput(args)
	assert(args, "You must provide an argument table when creating SelectObjectContentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Payload"] = args["Payload"],
	}
	asserts.AssertSelectObjectContentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Grantee = { ["EmailAddress"] = true, ["Type"] = true, ["DisplayName"] = true, ["ID"] = true, ["URI"] = true, nil }

function asserts.AssertGrantee(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Grantee to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["EmailAddress"] then asserts.AssertEmailAddress(struct["EmailAddress"]) end
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	if struct["URI"] then asserts.AssertURI(struct["URI"]) end
	for k,_ in pairs(struct) do
		assert(keys.Grantee[k], "Grantee contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Grantee
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailAddress [EmailAddress] <p>Email address of the grantee.</p>
-- * Type [Type] <p>Type of grantee</p>
-- * DisplayName [DisplayName] <p>Screen name of the grantee.</p>
-- * ID [ID] <p>The canonical user ID of the grantee.</p>
-- * URI [URI] <p>URI of the grantee group.</p>
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
		["EmailAddress"] = args["EmailAddress"],
		["Type"] = args["Type"],
		["DisplayName"] = args["DisplayName"],
		["ID"] = args["ID"],
		["URI"] = args["URI"],
	}
	asserts.AssertGrantee(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketLifecycleRequest = { ["LifecycleConfiguration"] = true, ["ContentMD5"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketLifecycleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketLifecycleRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["LifecycleConfiguration"] then asserts.AssertLifecycleConfiguration(struct["LifecycleConfiguration"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketLifecycleRequest[k], "PutBucketLifecycleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketLifecycleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleConfiguration [LifecycleConfiguration] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return PutBucketLifecycleRequest structure as a key-value pair table
function M.PutBucketLifecycleRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketLifecycleRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["LifecycleConfiguration"] = args["LifecycleConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketLifecycleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectTorrentOutput = { ["Body"] = true, ["RequestCharged"] = true, nil }

function asserts.AssertGetObjectTorrentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTorrentOutput to be of type 'table'")
	if struct["Body"] then asserts.AssertBody(struct["Body"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectTorrentOutput[k], "GetObjectTorrentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTorrentOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [Body] 
-- * RequestCharged [RequestCharged] 
-- @return GetObjectTorrentOutput structure as a key-value pair table
function M.GetObjectTorrentOutput(args)
	assert(args, "You must provide an argument table when creating GetObjectTorrentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["Body"] = args["Body"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertGetObjectTorrentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Rule = { ["Status"] = true, ["NoncurrentVersionExpiration"] = true, ["Transition"] = true, ["Prefix"] = true, ["Expiration"] = true, ["AbortIncompleteMultipartUpload"] = true, ["NoncurrentVersionTransition"] = true, ["ID"] = true, nil }

function asserts.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertExpirationStatus(struct["Status"]) end
	if struct["NoncurrentVersionExpiration"] then asserts.AssertNoncurrentVersionExpiration(struct["NoncurrentVersionExpiration"]) end
	if struct["Transition"] then asserts.AssertTransition(struct["Transition"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Expiration"] then asserts.AssertLifecycleExpiration(struct["Expiration"]) end
	if struct["AbortIncompleteMultipartUpload"] then asserts.AssertAbortIncompleteMultipartUpload(struct["AbortIncompleteMultipartUpload"]) end
	if struct["NoncurrentVersionTransition"] then asserts.AssertNoncurrentVersionTransition(struct["NoncurrentVersionTransition"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rule[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ExpirationStatus] <p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.</p>
-- * NoncurrentVersionExpiration [NoncurrentVersionExpiration] 
-- * Transition [Transition] 
-- * Prefix [Prefix] <p>Prefix identifying one or more objects to which the rule applies.</p>
-- * Expiration [LifecycleExpiration] 
-- * AbortIncompleteMultipartUpload [AbortIncompleteMultipartUpload] 
-- * NoncurrentVersionTransition [NoncurrentVersionTransition] 
-- * ID [ID] <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
-- Required key: Prefix
-- Required key: Status
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provide an argument table when creating Rule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NoncurrentVersionExpiration"] = args["NoncurrentVersionExpiration"],
		["Transition"] = args["Transition"],
		["Prefix"] = args["Prefix"],
		["Expiration"] = args["Expiration"],
		["AbortIncompleteMultipartUpload"] = args["AbortIncompleteMultipartUpload"],
		["NoncurrentVersionTransition"] = args["NoncurrentVersionTransition"],
		["ID"] = args["ID"],
	}
	asserts.AssertRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectTaggingRequest = { ["VersionId"] = true, ["Bucket"] = true, ["Key"] = true, nil }

function asserts.AssertDeleteObjectTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectTaggingRequest[k], "DeleteObjectTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectTaggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] <p>The versionId of the object that the tag-set will be removed from.</p>
-- * Bucket [BucketName] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return DeleteObjectTaggingRequest structure as a key-value pair table
function M.DeleteObjectTaggingRequest(args)
	assert(args, "You must provide an argument table when creating DeleteObjectTaggingRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["Key"] = args["Key"],
	}
	asserts.AssertDeleteObjectTaggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HeadObjectRequest = { ["SSECustomerAlgorithm"] = true, ["SSECustomerKey"] = true, ["IfUnmodifiedSince"] = true, ["VersionId"] = true, ["RequestPayer"] = true, ["Bucket"] = true, ["IfNoneMatch"] = true, ["Range"] = true, ["Key"] = true, ["IfMatch"] = true, ["SSECustomerKeyMD5"] = true, ["PartNumber"] = true, ["IfModifiedSince"] = true, nil }

function asserts.AssertHeadObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HeadObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["IfUnmodifiedSince"] then asserts.AssertIfUnmodifiedSince(struct["IfUnmodifiedSince"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["IfNoneMatch"] then asserts.AssertIfNoneMatch(struct["IfNoneMatch"]) end
	if struct["Range"] then asserts.AssertRange(struct["Range"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["IfMatch"] then asserts.AssertIfMatch(struct["IfMatch"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["PartNumber"] then asserts.AssertPartNumber(struct["PartNumber"]) end
	if struct["IfModifiedSince"] then asserts.AssertIfModifiedSince(struct["IfModifiedSince"]) end
	for k,_ in pairs(struct) do
		assert(keys.HeadObjectRequest[k], "HeadObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HeadObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.</p>
-- * IfUnmodifiedSince [IfUnmodifiedSince] <p>Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).</p>
-- * VersionId [ObjectVersionId] <p>VersionId used to reference a specific version of the object.</p>
-- * RequestPayer [RequestPayer] 
-- * Bucket [BucketName] 
-- * IfNoneMatch [IfNoneMatch] <p>Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).</p>
-- * Range [Range] <p>Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.</p>
-- * Key [ObjectKey] 
-- * IfMatch [IfMatch] <p>Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- * PartNumber [PartNumber] <p>Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.</p>
-- * IfModifiedSince [IfModifiedSince] <p>Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).</p>
-- Required key: Bucket
-- Required key: Key
-- @return HeadObjectRequest structure as a key-value pair table
function M.HeadObjectRequest(args)
	assert(args, "You must provide an argument table when creating HeadObjectRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
        ["partNumber"] = args["PartNumber"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["If-Unmodified-Since"] = args["IfUnmodifiedSince"],
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["If-None-Match"] = args["IfNoneMatch"],
        ["Range"] = args["Range"],
        ["If-Match"] = args["IfMatch"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
        ["If-Modified-Since"] = args["IfModifiedSince"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["IfUnmodifiedSince"] = args["IfUnmodifiedSince"],
		["VersionId"] = args["VersionId"],
		["RequestPayer"] = args["RequestPayer"],
		["Bucket"] = args["Bucket"],
		["IfNoneMatch"] = args["IfNoneMatch"],
		["Range"] = args["Range"],
		["Key"] = args["Key"],
		["IfMatch"] = args["IfMatch"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["PartNumber"] = args["PartNumber"],
		["IfModifiedSince"] = args["IfModifiedSince"],
	}
	asserts.AssertHeadObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetadataEntry = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertMetadataEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetadataEntry to be of type 'table'")
	if struct["Name"] then asserts.AssertMetadataKey(struct["Name"]) end
	if struct["Value"] then asserts.AssertMetadataValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetadataEntry[k], "MetadataEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetadataEntry
-- <p>A metadata key-value pair to store with an object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [MetadataKey] 
-- * Value [MetadataValue] 
-- @return MetadataEntry structure as a key-value pair table
function M.MetadataEntry(args)
	assert(args, "You must provide an argument table when creating MetadataEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertMetadataEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPartsOutput = { ["Initiator"] = true, ["AbortRuleId"] = true, ["AbortDate"] = true, ["Bucket"] = true, ["NextPartNumberMarker"] = true, ["Parts"] = true, ["UploadId"] = true, ["StorageClass"] = true, ["Key"] = true, ["RequestCharged"] = true, ["Owner"] = true, ["MaxParts"] = true, ["IsTruncated"] = true, ["PartNumberMarker"] = true, nil }

function asserts.AssertListPartsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsOutput to be of type 'table'")
	if struct["Initiator"] then asserts.AssertInitiator(struct["Initiator"]) end
	if struct["AbortRuleId"] then asserts.AssertAbortRuleId(struct["AbortRuleId"]) end
	if struct["AbortDate"] then asserts.AssertAbortDate(struct["AbortDate"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["NextPartNumberMarker"] then asserts.AssertNextPartNumberMarker(struct["NextPartNumberMarker"]) end
	if struct["Parts"] then asserts.AssertParts(struct["Parts"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["MaxParts"] then asserts.AssertMaxParts(struct["MaxParts"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["PartNumberMarker"] then asserts.AssertPartNumberMarker(struct["PartNumberMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPartsOutput[k], "ListPartsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Initiator [Initiator] <p>Identifies who initiated the multipart upload.</p>
-- * AbortRuleId [AbortRuleId] <p>Id of the lifecycle rule that makes a multipart upload eligible for abort operation.</p>
-- * AbortDate [AbortDate] <p>Date when multipart upload will become eligible for abort operation by lifecycle.</p>
-- * Bucket [BucketName] <p>Name of the bucket to which the multipart upload was initiated.</p>
-- * NextPartNumberMarker [NextPartNumberMarker] <p>When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.</p>
-- * Parts [Parts] 
-- * UploadId [MultipartUploadId] <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
-- * StorageClass [StorageClass] <p>The class of storage used to store the object.</p>
-- * Key [ObjectKey] <p>Object key for which the multipart upload was initiated.</p>
-- * RequestCharged [RequestCharged] 
-- * Owner [Owner] 
-- * MaxParts [MaxParts] <p>Maximum number of parts that were allowed in the response.</p>
-- * IsTruncated [IsTruncated] <p>Indicates whether the returned list of parts is truncated.</p>
-- * PartNumberMarker [PartNumberMarker] <p>Part number after which listing begins.</p>
-- @return ListPartsOutput structure as a key-value pair table
function M.ListPartsOutput(args)
	assert(args, "You must provide an argument table when creating ListPartsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-abort-rule-id"] = args["AbortRuleId"],
        ["x-amz-abort-date"] = args["AbortDate"],
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["Initiator"] = args["Initiator"],
		["AbortRuleId"] = args["AbortRuleId"],
		["AbortDate"] = args["AbortDate"],
		["Bucket"] = args["Bucket"],
		["NextPartNumberMarker"] = args["NextPartNumberMarker"],
		["Parts"] = args["Parts"],
		["UploadId"] = args["UploadId"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["RequestCharged"] = args["RequestCharged"],
		["Owner"] = args["Owner"],
		["MaxParts"] = args["MaxParts"],
		["IsTruncated"] = args["IsTruncated"],
		["PartNumberMarker"] = args["PartNumberMarker"],
	}
	asserts.AssertListPartsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompletedPart = { ["PartNumber"] = true, ["ETag"] = true, nil }

function asserts.AssertCompletedPart(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompletedPart to be of type 'table'")
	if struct["PartNumber"] then asserts.AssertPartNumber(struct["PartNumber"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompletedPart[k], "CompletedPart contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompletedPart
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartNumber [PartNumber] <p>Part number that identifies the part. This is a positive integer between 1 and 10,000.</p>
-- * ETag [ETag] <p>Entity tag returned when the part was uploaded.</p>
-- @return CompletedPart structure as a key-value pair table
function M.CompletedPart(args)
	assert(args, "You must provide an argument table when creating CompletedPart")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartNumber"] = args["PartNumber"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCompletedPart(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketAnalyticsConfigurationRequest = { ["AnalyticsConfiguration"] = true, ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertPutBucketAnalyticsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketAnalyticsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["AnalyticsConfiguration"], "Expected key AnalyticsConfiguration to exist in table")
	if struct["AnalyticsConfiguration"] then asserts.AssertAnalyticsConfiguration(struct["AnalyticsConfiguration"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketAnalyticsConfigurationRequest[k], "PutBucketAnalyticsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketAnalyticsConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalyticsConfiguration [AnalyticsConfiguration] <p>The configuration and any analyses for the analytics filter.</p>
-- * Bucket [BucketName] <p>The name of the bucket to which an analytics configuration is stored.</p>
-- * Id [AnalyticsId] <p>The identifier used to represent an analytics configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- Required key: AnalyticsConfiguration
-- @return PutBucketAnalyticsConfigurationRequest structure as a key-value pair table
function M.PutBucketAnalyticsConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketAnalyticsConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertPutBucketAnalyticsConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CORSConfiguration = { ["CORSRules"] = true, nil }

function asserts.AssertCORSConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CORSConfiguration to be of type 'table'")
	assert(struct["CORSRules"], "Expected key CORSRules to exist in table")
	if struct["CORSRules"] then asserts.AssertCORSRules(struct["CORSRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.CORSConfiguration[k], "CORSConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CORSConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CORSRules [CORSRules] 
-- Required key: CORSRules
-- @return CORSConfiguration structure as a key-value pair table
function M.CORSConfiguration(args)
	assert(args, "You must provide an argument table when creating CORSConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CORSRules"] = args["CORSRules"],
	}
	asserts.AssertCORSConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectOutput = { ["LastModified"] = true, ["ContentRange"] = true, ["RequestCharged"] = true, ["ContentEncoding"] = true, ["ReplicationStatus"] = true, ["StorageClass"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["TagCount"] = true, ["ContentDisposition"] = true, ["Metadata"] = true, ["Body"] = true, ["AcceptRanges"] = true, ["WebsiteRedirectLocation"] = true, ["Expires"] = true, ["DeleteMarker"] = true, ["CacheControl"] = true, ["PartsCount"] = true, ["ContentLength"] = true, ["Expiration"] = true, ["MissingMeta"] = true, ["Restore"] = true, ["SSECustomerAlgorithm"] = true, ["ContentType"] = true, ["ContentLanguage"] = true, ["VersionId"] = true, ["ETag"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertGetObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectOutput to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["ContentRange"] then asserts.AssertContentRange(struct["ContentRange"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["ContentEncoding"] then asserts.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["ReplicationStatus"] then asserts.AssertReplicationStatus(struct["ReplicationStatus"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["TagCount"] then asserts.AssertTagCount(struct["TagCount"]) end
	if struct["ContentDisposition"] then asserts.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	if struct["Body"] then asserts.AssertBody(struct["Body"]) end
	if struct["AcceptRanges"] then asserts.AssertAcceptRanges(struct["AcceptRanges"]) end
	if struct["WebsiteRedirectLocation"] then asserts.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then asserts.AssertExpires(struct["Expires"]) end
	if struct["DeleteMarker"] then asserts.AssertDeleteMarker(struct["DeleteMarker"]) end
	if struct["CacheControl"] then asserts.AssertCacheControl(struct["CacheControl"]) end
	if struct["PartsCount"] then asserts.AssertPartsCount(struct["PartsCount"]) end
	if struct["ContentLength"] then asserts.AssertContentLength(struct["ContentLength"]) end
	if struct["Expiration"] then asserts.AssertExpiration(struct["Expiration"]) end
	if struct["MissingMeta"] then asserts.AssertMissingMeta(struct["MissingMeta"]) end
	if struct["Restore"] then asserts.AssertRestore(struct["Restore"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then asserts.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectOutput[k], "GetObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] <p>Last modified date of the object</p>
-- * ContentRange [ContentRange] <p>The portion of the object returned in the response.</p>
-- * RequestCharged [RequestCharged] 
-- * ContentEncoding [ContentEncoding] <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.</p>
-- * ReplicationStatus [ReplicationStatus] 
-- * StorageClass [StorageClass] 
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- * TagCount [TagCount] <p>The number of tags, if any, on the object.</p>
-- * ContentDisposition [ContentDisposition] <p>Specifies presentational information for the object.</p>
-- * Metadata [Metadata] <p>A map of metadata to store with the object in S3.</p>
-- * Body [Body] <p>Object data.</p>
-- * AcceptRanges [AcceptRanges] 
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] <p>If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.</p>
-- * Expires [Expires] <p>The date and time at which the object is no longer cacheable.</p>
-- * DeleteMarker [DeleteMarker] <p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.</p>
-- * CacheControl [CacheControl] <p>Specifies caching behavior along the request/reply chain.</p>
-- * PartsCount [PartsCount] <p>The count of parts this object has.</p>
-- * ContentLength [ContentLength] <p>Size of the body in bytes.</p>
-- * Expiration [Expiration] <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.</p>
-- * MissingMeta [MissingMeta] <p>This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.</p>
-- * Restore [Restore] <p>Provides information about object restoration operation and expiration time of the restored object copy.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * ContentType [ContentType] <p>A standard MIME type describing the format of the object data.</p>
-- * ContentLanguage [ContentLanguage] <p>The language the content is in.</p>
-- * VersionId [ObjectVersionId] <p>Version of the object.</p>
-- * ETag [ETag] <p>An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- @return GetObjectOutput structure as a key-value pair table
function M.GetObjectOutput(args)
	assert(args, "You must provide an argument table when creating GetObjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Last-Modified"] = args["LastModified"],
        ["Content-Range"] = args["ContentRange"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["Content-Encoding"] = args["ContentEncoding"],
        ["x-amz-replication-status"] = args["ReplicationStatus"],
        ["x-amz-storage-class"] = args["StorageClass"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["x-amz-tagging-count"] = args["TagCount"],
        ["Content-Disposition"] = args["ContentDisposition"],
        ["accept-ranges"] = args["AcceptRanges"],
        ["x-amz-website-redirect-location"] = args["WebsiteRedirectLocation"],
        ["Expires"] = args["Expires"],
        ["x-amz-delete-marker"] = args["DeleteMarker"],
        ["Cache-Control"] = args["CacheControl"],
        ["x-amz-mp-parts-count"] = args["PartsCount"],
        ["Content-Length"] = args["ContentLength"],
        ["x-amz-expiration"] = args["Expiration"],
        ["x-amz-missing-meta"] = args["MissingMeta"],
        ["x-amz-restore"] = args["Restore"],
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["Content-Type"] = args["ContentType"],
        ["Content-Language"] = args["ContentLanguage"],
        ["x-amz-version-id"] = args["VersionId"],
        ["ETag"] = args["ETag"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["ContentRange"] = args["ContentRange"],
		["RequestCharged"] = args["RequestCharged"],
		["ContentEncoding"] = args["ContentEncoding"],
		["ReplicationStatus"] = args["ReplicationStatus"],
		["StorageClass"] = args["StorageClass"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["TagCount"] = args["TagCount"],
		["ContentDisposition"] = args["ContentDisposition"],
		["Metadata"] = args["Metadata"],
		["Body"] = args["Body"],
		["AcceptRanges"] = args["AcceptRanges"],
		["WebsiteRedirectLocation"] = args["WebsiteRedirectLocation"],
		["Expires"] = args["Expires"],
		["DeleteMarker"] = args["DeleteMarker"],
		["CacheControl"] = args["CacheControl"],
		["PartsCount"] = args["PartsCount"],
		["ContentLength"] = args["ContentLength"],
		["Expiration"] = args["Expiration"],
		["MissingMeta"] = args["MissingMeta"],
		["Restore"] = args["Restore"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ContentType"] = args["ContentType"],
		["ContentLanguage"] = args["ContentLanguage"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertGetObjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketVersioningRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketVersioningRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketVersioningRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketVersioningRequest[k], "GetBucketVersioningRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketVersioningRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketVersioningRequest structure as a key-value pair table
function M.GetBucketVersioningRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketVersioningRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketVersioningRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketAccelerateConfigurationRequest = { ["AccelerateConfiguration"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketAccelerateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketAccelerateConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["AccelerateConfiguration"], "Expected key AccelerateConfiguration to exist in table")
	if struct["AccelerateConfiguration"] then asserts.AssertAccelerateConfiguration(struct["AccelerateConfiguration"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketAccelerateConfigurationRequest[k], "PutBucketAccelerateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketAccelerateConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccelerateConfiguration [AccelerateConfiguration] <p>Specifies the Accelerate Configuration you want to set for the bucket.</p>
-- * Bucket [BucketName] <p>Name of the bucket for which the accelerate configuration is set.</p>
-- Required key: Bucket
-- Required key: AccelerateConfiguration
-- @return PutBucketAccelerateConfigurationRequest structure as a key-value pair table
function M.PutBucketAccelerateConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketAccelerateConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["AccelerateConfiguration"] = args["AccelerateConfiguration"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketAccelerateConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketRequestPaymentRequest = { ["RequestPaymentConfiguration"] = true, ["ContentMD5"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketRequestPaymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketRequestPaymentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["RequestPaymentConfiguration"], "Expected key RequestPaymentConfiguration to exist in table")
	if struct["RequestPaymentConfiguration"] then asserts.AssertRequestPaymentConfiguration(struct["RequestPaymentConfiguration"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketRequestPaymentRequest[k], "PutBucketRequestPaymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketRequestPaymentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPaymentConfiguration [RequestPaymentConfiguration] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- Required key: RequestPaymentConfiguration
-- @return PutBucketRequestPaymentRequest structure as a key-value pair table
function M.PutBucketRequestPaymentRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketRequestPaymentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["RequestPaymentConfiguration"] = args["RequestPaymentConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketRequestPaymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JSONInput = { ["Type"] = true, nil }

function asserts.AssertJSONInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JSONInput to be of type 'table'")
	if struct["Type"] then asserts.AssertJSONType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.JSONInput[k], "JSONInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JSONInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [JSONType] <p>The type of JSON. Valid values: Document, Lines.</p>
-- @return JSONInput structure as a key-value pair table
function M.JSONInput(args)
	assert(args, "You must provide an argument table when creating JSONInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
	}
	asserts.AssertJSONInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLocationOutput = { ["LocationConstraint"] = true, nil }

function asserts.AssertGetBucketLocationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLocationOutput to be of type 'table'")
	if struct["LocationConstraint"] then asserts.AssertBucketLocationConstraint(struct["LocationConstraint"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLocationOutput[k], "GetBucketLocationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLocationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LocationConstraint [BucketLocationConstraint] 
-- @return GetBucketLocationOutput structure as a key-value pair table
function M.GetBucketLocationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketLocationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LocationConstraint"] = args["LocationConstraint"],
	}
	asserts.AssertGetBucketLocationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketInventoryConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertGetBucketInventoryConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketInventoryConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketInventoryConfigurationRequest[k], "GetBucketInventoryConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketInventoryConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the inventory configuration to retrieve.</p>
-- * Id [InventoryId] <p>The ID used to identify the inventory configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- @return GetBucketInventoryConfigurationRequest structure as a key-value pair table
function M.GetBucketInventoryConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketInventoryConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetBucketInventoryConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketTaggingRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketTaggingRequest[k], "GetBucketTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketTaggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketTaggingRequest structure as a key-value pair table
function M.GetBucketTaggingRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketTaggingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketTaggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsFilter = { ["And"] = true, ["Prefix"] = true, ["Tag"] = true, nil }

function asserts.AssertAnalyticsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsFilter to be of type 'table'")
	if struct["And"] then asserts.AssertAnalyticsAndOperator(struct["And"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then asserts.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsFilter[k], "AnalyticsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsFilter
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * And [AnalyticsAndOperator] <p>A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.</p>
-- * Prefix [Prefix] <p>The prefix to use when evaluating an analytics filter.</p>
-- * Tag [Tag] <p>The tag to use when evaluating an analytics filter.</p>
-- @return AnalyticsFilter structure as a key-value pair table
function M.AnalyticsFilter(args)
	assert(args, "You must provide an argument table when creating AnalyticsFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertAnalyticsFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CommonPrefix = { ["Prefix"] = true, nil }

function asserts.AssertCommonPrefix(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommonPrefix to be of type 'table'")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommonPrefix[k], "CommonPrefix contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommonPrefix
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] 
-- @return CommonPrefix structure as a key-value pair table
function M.CommonPrefix(args)
	assert(args, "You must provide an argument table when creating CommonPrefix")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertCommonPrefix(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleConfiguration = { ["Rules"] = true, nil }

function asserts.AssertLifecycleConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleConfiguration to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then asserts.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleConfiguration[k], "LifecycleConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [Rules] 
-- Required key: Rules
-- @return LifecycleConfiguration structure as a key-value pair table
function M.LifecycleConfiguration(args)
	assert(args, "You must provide an argument table when creating LifecycleConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertLifecycleConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketTaggingRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketTaggingRequest[k], "DeleteBucketTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketTaggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketTaggingRequest structure as a key-value pair table
function M.DeleteBucketTaggingRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketTaggingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketTaggingRequest(all_args)
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
	assert(struct["BucketName"], "Expected key BucketName to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["AccessControlList"] then asserts.AssertGrants(struct["AccessControlList"]) end
	if struct["Encryption"] then asserts.AssertEncryption(struct["Encryption"]) end
	if struct["Prefix"] then asserts.AssertLocationPrefix(struct["Prefix"]) end
	if struct["BucketName"] then asserts.AssertBucketName(struct["BucketName"]) end
	if struct["UserMetadata"] then asserts.AssertUserMetadata(struct["UserMetadata"]) end
	if struct["CannedACL"] then asserts.AssertObjectCannedACL(struct["CannedACL"]) end
	if struct["Tagging"] then asserts.AssertTagging(struct["Tagging"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Location[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- <p>Describes an S3 location that will receive the results of the restore request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessControlList [Grants] <p>A list of grants that control access to the staged results.</p>
-- * Encryption [Encryption] 
-- * Prefix [LocationPrefix] <p>The prefix that is prepended to the restore results for this request.</p>
-- * BucketName [BucketName] <p>The name of the bucket where the restore results will be placed.</p>
-- * UserMetadata [UserMetadata] <p>A list of metadata to store with the restore results in S3.</p>
-- * CannedACL [ObjectCannedACL] <p>The canned ACL to apply to the restore results.</p>
-- * Tagging [Tagging] <p>The tag-set that is applied to the restore results.</p>
-- * StorageClass [StorageClass] <p>The class of storage used to store the restore results.</p>
-- Required key: BucketName
-- Required key: Prefix
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

keys.GetBucketWebsiteOutput = { ["RedirectAllRequestsTo"] = true, ["IndexDocument"] = true, ["ErrorDocument"] = true, ["RoutingRules"] = true, nil }

function asserts.AssertGetBucketWebsiteOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketWebsiteOutput to be of type 'table'")
	if struct["RedirectAllRequestsTo"] then asserts.AssertRedirectAllRequestsTo(struct["RedirectAllRequestsTo"]) end
	if struct["IndexDocument"] then asserts.AssertIndexDocument(struct["IndexDocument"]) end
	if struct["ErrorDocument"] then asserts.AssertErrorDocument(struct["ErrorDocument"]) end
	if struct["RoutingRules"] then asserts.AssertRoutingRules(struct["RoutingRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketWebsiteOutput[k], "GetBucketWebsiteOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketWebsiteOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RedirectAllRequestsTo [RedirectAllRequestsTo] 
-- * IndexDocument [IndexDocument] 
-- * ErrorDocument [ErrorDocument] 
-- * RoutingRules [RoutingRules] 
-- @return GetBucketWebsiteOutput structure as a key-value pair table
function M.GetBucketWebsiteOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketWebsiteOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RedirectAllRequestsTo"] = args["RedirectAllRequestsTo"],
		["IndexDocument"] = args["IndexDocument"],
		["ErrorDocument"] = args["ErrorDocument"],
		["RoutingRules"] = args["RoutingRules"],
	}
	asserts.AssertGetBucketWebsiteOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StatsEvent = { ["Details"] = true, nil }

function asserts.AssertStatsEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatsEvent to be of type 'table'")
	if struct["Details"] then asserts.AssertStats(struct["Details"]) end
	for k,_ in pairs(struct) do
		assert(keys.StatsEvent[k], "StatsEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatsEvent
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Details [Stats] <p>The Stats event details.</p>
-- @return StatsEvent structure as a key-value pair table
function M.StatsEvent(args)
	assert(args, "You must provide an argument table when creating StatsEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Details"] = args["Details"],
	}
	asserts.AssertStatsEvent(all_args)
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
-- <p>Describes the location where the restore job's output is stored.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3 [S3Location] <p>Describes an S3 location that will receive the results of the restore request.</p>
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

keys.S3KeyFilter = { ["FilterRules"] = true, nil }

function asserts.AssertS3KeyFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3KeyFilter to be of type 'table'")
	if struct["FilterRules"] then asserts.AssertFilterRuleList(struct["FilterRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3KeyFilter[k], "S3KeyFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3KeyFilter
-- <p>Container for object key name prefix and suffix filtering rules.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterRules [FilterRuleList] 
-- @return S3KeyFilter structure as a key-value pair table
function M.S3KeyFilter(args)
	assert(args, "You must provide an argument table when creating S3KeyFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterRules"] = args["FilterRules"],
	}
	asserts.AssertS3KeyFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLocationRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketLocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLocationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLocationRequest[k], "GetBucketLocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLocationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketLocationRequest structure as a key-value pair table
function M.GetBucketLocationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketLocationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLocationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMarkerReplication = { ["Status"] = true, nil }

function asserts.AssertDeleteMarkerReplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMarkerReplication to be of type 'table'")
	if struct["Status"] then asserts.AssertDeleteMarkerReplicationStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMarkerReplication[k], "DeleteMarkerReplication contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMarkerReplication
-- <p>Specifies whether Amazon S3 should replicate delete makers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DeleteMarkerReplicationStatus] <p>The status of the delete marker replication.</p> <note> <p> In the current implementation, Amazon S3 does not replicate the delete markers. Therefore, the status must be <code>Disabled</code>. </p> </note>
-- @return DeleteMarkerReplication structure as a key-value pair table
function M.DeleteMarkerReplication(args)
	assert(args, "You must provide an argument table when creating DeleteMarkerReplication")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertDeleteMarkerReplication(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompleteMultipartUploadRequest = { ["MultipartUpload"] = true, ["UploadId"] = true, ["Bucket"] = true, ["RequestPayer"] = true, ["Key"] = true, nil }

function asserts.AssertCompleteMultipartUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteMultipartUploadRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["MultipartUpload"] then asserts.AssertCompletedMultipartUpload(struct["MultipartUpload"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteMultipartUploadRequest[k], "CompleteMultipartUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteMultipartUploadRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultipartUpload [CompletedMultipartUpload] 
-- * UploadId [MultipartUploadId] 
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- Required key: UploadId
-- @return CompleteMultipartUploadRequest structure as a key-value pair table
function M.CompleteMultipartUploadRequest(args)
	assert(args, "You must provide an argument table when creating CompleteMultipartUploadRequest")
    local query_args = { 
        ["uploadId"] = args["UploadId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["MultipartUpload"] = args["MultipartUpload"],
		["UploadId"] = args["UploadId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertCompleteMultipartUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBucketOutput = { ["Location"] = true, nil }

function asserts.AssertCreateBucketOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBucketOutput to be of type 'table'")
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBucketOutput[k], "CreateBucketOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBucketOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Location [Location] 
-- @return CreateBucketOutput structure as a key-value pair table
function M.CreateBucketOutput(args)
	assert(args, "You must provide an argument table when creating CreateBucketOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["Location"] = args["Location"],
	}
	asserts.AssertCreateBucketOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketAclRequest = { ["GrantFullControl"] = true, ["GrantWriteACP"] = true, ["ContentMD5"] = true, ["Bucket"] = true, ["ACL"] = true, ["AccessControlPolicy"] = true, ["GrantWrite"] = true, ["GrantRead"] = true, ["GrantReadACP"] = true, nil }

function asserts.AssertPutBucketAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["GrantFullControl"] then asserts.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["GrantWriteACP"] then asserts.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ACL"] then asserts.AssertBucketCannedACL(struct["ACL"]) end
	if struct["AccessControlPolicy"] then asserts.AssertAccessControlPolicy(struct["AccessControlPolicy"]) end
	if struct["GrantWrite"] then asserts.AssertGrantWrite(struct["GrantWrite"]) end
	if struct["GrantRead"] then asserts.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantReadACP"] then asserts.AssertGrantReadACP(struct["GrantReadACP"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketAclRequest[k], "PutBucketAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketAclRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrantFullControl [GrantFullControl] <p>Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.</p>
-- * GrantWriteACP [GrantWriteACP] <p>Allows grantee to write the ACL for the applicable bucket.</p>
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * ACL [BucketCannedACL] <p>The canned ACL to apply to the bucket.</p>
-- * AccessControlPolicy [AccessControlPolicy] 
-- * GrantWrite [GrantWrite] <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
-- * GrantRead [GrantRead] <p>Allows grantee to list the objects in the bucket.</p>
-- * GrantReadACP [GrantReadACP] <p>Allows grantee to read the bucket ACL.</p>
-- Required key: Bucket
-- @return PutBucketAclRequest structure as a key-value pair table
function M.PutBucketAclRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketAclRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-grant-full-control"] = args["GrantFullControl"],
        ["x-amz-grant-write-acp"] = args["GrantWriteACP"],
        ["Content-MD5"] = args["ContentMD5"],
        ["x-amz-acl"] = args["ACL"],
        ["x-amz-grant-write"] = args["GrantWrite"],
        ["x-amz-grant-read"] = args["GrantRead"],
        ["x-amz-grant-read-acp"] = args["GrantReadACP"],
    }
	local all_args = { 
		["GrantFullControl"] = args["GrantFullControl"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["ACL"] = args["ACL"],
		["AccessControlPolicy"] = args["AccessControlPolicy"],
		["GrantWrite"] = args["GrantWrite"],
		["GrantRead"] = args["GrantRead"],
		["GrantReadACP"] = args["GrantReadACP"],
	}
	asserts.AssertPutBucketAclRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketPolicyRequest = { ["Policy"] = true, ["ContentMD5"] = true, ["Bucket"] = true, ["ConfirmRemoveSelfBucketAccess"] = true, nil }

function asserts.AssertPutBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ConfirmRemoveSelfBucketAccess"] then asserts.AssertConfirmRemoveSelfBucketAccess(struct["ConfirmRemoveSelfBucketAccess"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketPolicyRequest[k], "PutBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>The bucket policy as a JSON document.</p>
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * ConfirmRemoveSelfBucketAccess [ConfirmRemoveSelfBucketAccess] <p>Set this parameter to true to confirm that you want to remove your permissions to change this bucket policy in the future.</p>
-- Required key: Bucket
-- Required key: Policy
-- @return PutBucketPolicyRequest structure as a key-value pair table
function M.PutBucketPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
        ["x-amz-confirm-remove-self-bucket-access"] = args["ConfirmRemoveSelfBucketAccess"],
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["ConfirmRemoveSelfBucketAccess"] = args["ConfirmRemoveSelfBucketAccess"],
	}
	asserts.AssertPutBucketPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketCorsRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketCorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketCorsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketCorsRequest[k], "GetBucketCorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketCorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketCorsRequest structure as a key-value pair table
function M.GetBucketCorsRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketCorsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketCorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageClassAnalysis = { ["DataExport"] = true, nil }

function asserts.AssertStorageClassAnalysis(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageClassAnalysis to be of type 'table'")
	if struct["DataExport"] then asserts.AssertStorageClassAnalysisDataExport(struct["DataExport"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageClassAnalysis[k], "StorageClassAnalysis contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageClassAnalysis
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataExport [StorageClassAnalysisDataExport] <p>A container used to describe how data related to the storage class analysis should be exported.</p>
-- @return StorageClassAnalysis structure as a key-value pair table
function M.StorageClassAnalysis(args)
	assert(args, "You must provide an argument table when creating StorageClassAnalysis")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataExport"] = args["DataExport"],
	}
	asserts.AssertStorageClassAnalysis(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccelerateConfiguration = { ["Status"] = true, nil }

function asserts.AssertAccelerateConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccelerateConfiguration to be of type 'table'")
	if struct["Status"] then asserts.AssertBucketAccelerateStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccelerateConfiguration[k], "AccelerateConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccelerateConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [BucketAccelerateStatus] <p>The accelerate configuration of the bucket.</p>
-- @return AccelerateConfiguration structure as a key-value pair table
function M.AccelerateConfiguration(args)
	assert(args, "You must provide an argument table when creating AccelerateConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertAccelerateConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketCorsRequest = { ["ContentMD5"] = true, ["Bucket"] = true, ["CORSConfiguration"] = true, nil }

function asserts.AssertPutBucketCorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketCorsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["CORSConfiguration"], "Expected key CORSConfiguration to exist in table")
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["CORSConfiguration"] then asserts.AssertCORSConfiguration(struct["CORSConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketCorsRequest[k], "PutBucketCorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketCorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * CORSConfiguration [CORSConfiguration] 
-- Required key: Bucket
-- Required key: CORSConfiguration
-- @return PutBucketCorsRequest structure as a key-value pair table
function M.PutBucketCorsRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketCorsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["CORSConfiguration"] = args["CORSConfiguration"],
	}
	asserts.AssertPutBucketCorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketWebsiteRequest = { ["ContentMD5"] = true, ["Bucket"] = true, ["WebsiteConfiguration"] = true, nil }

function asserts.AssertPutBucketWebsiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketWebsiteRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["WebsiteConfiguration"], "Expected key WebsiteConfiguration to exist in table")
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["WebsiteConfiguration"] then asserts.AssertWebsiteConfiguration(struct["WebsiteConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketWebsiteRequest[k], "PutBucketWebsiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketWebsiteRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * WebsiteConfiguration [WebsiteConfiguration] 
-- Required key: Bucket
-- Required key: WebsiteConfiguration
-- @return PutBucketWebsiteRequest structure as a key-value pair table
function M.PutBucketWebsiteRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketWebsiteRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["WebsiteConfiguration"] = args["WebsiteConfiguration"],
	}
	asserts.AssertPutBucketWebsiteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TopicConfigurationDeprecated = { ["Topic"] = true, ["Id"] = true, ["Event"] = true, ["Events"] = true, nil }

function asserts.AssertTopicConfigurationDeprecated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicConfigurationDeprecated to be of type 'table'")
	if struct["Topic"] then asserts.AssertTopicArn(struct["Topic"]) end
	if struct["Id"] then asserts.AssertNotificationId(struct["Id"]) end
	if struct["Event"] then asserts.AssertEvent(struct["Event"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicConfigurationDeprecated[k], "TopicConfigurationDeprecated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicConfigurationDeprecated
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Topic [TopicArn] <p>Amazon SNS topic to which Amazon S3 will publish a message to report the specified events for the bucket.</p>
-- * Id [NotificationId] 
-- * Event [Event] <p>Bucket event for which to send notifications.</p>
-- * Events [EventList] 
-- @return TopicConfigurationDeprecated structure as a key-value pair table
function M.TopicConfigurationDeprecated(args)
	assert(args, "You must provide an argument table when creating TopicConfigurationDeprecated")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Topic"] = args["Topic"],
		["Id"] = args["Id"],
		["Event"] = args["Event"],
		["Events"] = args["Events"],
	}
	asserts.AssertTopicConfigurationDeprecated(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadPartCopyOutput = { ["SSECustomerAlgorithm"] = true, ["CopySourceVersionId"] = true, ["ServerSideEncryption"] = true, ["RequestCharged"] = true, ["SSECustomerKeyMD5"] = true, ["CopyPartResult"] = true, ["SSEKMSKeyId"] = true, nil }

function asserts.AssertUploadPartCopyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartCopyOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["CopySourceVersionId"] then asserts.AssertCopySourceVersionId(struct["CopySourceVersionId"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["CopyPartResult"] then asserts.AssertCopyPartResult(struct["CopyPartResult"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadPartCopyOutput[k], "UploadPartCopyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartCopyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * CopySourceVersionId [CopySourceVersionId] <p>The version of the source object that was copied, if you have enabled versioning on the source bucket.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * RequestCharged [RequestCharged] 
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- * CopyPartResult [CopyPartResult] 
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- @return UploadPartCopyOutput structure as a key-value pair table
function M.UploadPartCopyOutput(args)
	assert(args, "You must provide an argument table when creating UploadPartCopyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-copy-source-version-id"] = args["CopySourceVersionId"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["CopySourceVersionId"] = args["CopySourceVersionId"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["RequestCharged"] = args["RequestCharged"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["CopyPartResult"] = args["CopyPartResult"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertUploadPartCopyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectAclRequest = { ["GrantFullControl"] = true, ["GrantWriteACP"] = true, ["Key"] = true, ["RequestPayer"] = true, ["ContentMD5"] = true, ["Bucket"] = true, ["ACL"] = true, ["AccessControlPolicy"] = true, ["GrantWrite"] = true, ["VersionId"] = true, ["GrantRead"] = true, ["GrantReadACP"] = true, nil }

function asserts.AssertPutObjectAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["GrantFullControl"] then asserts.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["GrantWriteACP"] then asserts.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ACL"] then asserts.AssertObjectCannedACL(struct["ACL"]) end
	if struct["AccessControlPolicy"] then asserts.AssertAccessControlPolicy(struct["AccessControlPolicy"]) end
	if struct["GrantWrite"] then asserts.AssertGrantWrite(struct["GrantWrite"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["GrantRead"] then asserts.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantReadACP"] then asserts.AssertGrantReadACP(struct["GrantReadACP"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectAclRequest[k], "PutObjectAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectAclRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrantFullControl [GrantFullControl] <p>Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.</p>
-- * GrantWriteACP [GrantWriteACP] <p>Allows grantee to write the ACL for the applicable bucket.</p>
-- * Key [ObjectKey] 
-- * RequestPayer [RequestPayer] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * ACL [ObjectCannedACL] <p>The canned ACL to apply to the object.</p>
-- * AccessControlPolicy [AccessControlPolicy] 
-- * GrantWrite [GrantWrite] <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
-- * VersionId [ObjectVersionId] <p>VersionId used to reference a specific version of the object.</p>
-- * GrantRead [GrantRead] <p>Allows grantee to list the objects in the bucket.</p>
-- * GrantReadACP [GrantReadACP] <p>Allows grantee to read the bucket ACL.</p>
-- Required key: Bucket
-- Required key: Key
-- @return PutObjectAclRequest structure as a key-value pair table
function M.PutObjectAclRequest(args)
	assert(args, "You must provide an argument table when creating PutObjectAclRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Key}"] = args["Key"],
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-grant-full-control"] = args["GrantFullControl"],
        ["x-amz-grant-write-acp"] = args["GrantWriteACP"],
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["Content-MD5"] = args["ContentMD5"],
        ["x-amz-acl"] = args["ACL"],
        ["x-amz-grant-write"] = args["GrantWrite"],
        ["x-amz-grant-read"] = args["GrantRead"],
        ["x-amz-grant-read-acp"] = args["GrantReadACP"],
    }
	local all_args = { 
		["GrantFullControl"] = args["GrantFullControl"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["Key"] = args["Key"],
		["RequestPayer"] = args["RequestPayer"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["ACL"] = args["ACL"],
		["AccessControlPolicy"] = args["AccessControlPolicy"],
		["GrantWrite"] = args["GrantWrite"],
		["VersionId"] = args["VersionId"],
		["GrantRead"] = args["GrantRead"],
		["GrantReadACP"] = args["GrantReadACP"],
	}
	asserts.AssertPutObjectAclRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectOutput = { ["VersionId"] = true, ["RequestCharged"] = true, ["DeleteMarker"] = true, nil }

function asserts.AssertDeleteObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectOutput to be of type 'table'")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["DeleteMarker"] then asserts.AssertDeleteMarker(struct["DeleteMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectOutput[k], "DeleteObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] <p>Returns the version ID of the delete marker created as a result of the DELETE operation.</p>
-- * RequestCharged [RequestCharged] 
-- * DeleteMarker [DeleteMarker] <p>Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker.</p>
-- @return DeleteObjectOutput structure as a key-value pair table
function M.DeleteObjectOutput(args)
	assert(args, "You must provide an argument table when creating DeleteObjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-version-id"] = args["VersionId"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-delete-marker"] = args["DeleteMarker"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["RequestCharged"] = args["RequestCharged"],
		["DeleteMarker"] = args["DeleteMarker"],
	}
	asserts.AssertDeleteObjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBucketConfiguration = { ["LocationConstraint"] = true, nil }

function asserts.AssertCreateBucketConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBucketConfiguration to be of type 'table'")
	if struct["LocationConstraint"] then asserts.AssertBucketLocationConstraint(struct["LocationConstraint"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBucketConfiguration[k], "CreateBucketConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBucketConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LocationConstraint [BucketLocationConstraint] <p>Specifies the region where the bucket will be created. If you don't specify a region, the bucket will be created in US Standard.</p>
-- @return CreateBucketConfiguration structure as a key-value pair table
function M.CreateBucketConfiguration(args)
	assert(args, "You must provide an argument table when creating CreateBucketConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LocationConstraint"] = args["LocationConstraint"],
	}
	asserts.AssertCreateBucketConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketAccelerateConfigurationOutput = { ["Status"] = true, nil }

function asserts.AssertGetBucketAccelerateConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAccelerateConfigurationOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertBucketAccelerateStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketAccelerateConfigurationOutput[k], "GetBucketAccelerateConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAccelerateConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [BucketAccelerateStatus] <p>The accelerate configuration of the bucket.</p>
-- @return GetBucketAccelerateConfigurationOutput structure as a key-value pair table
function M.GetBucketAccelerateConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketAccelerateConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertGetBucketAccelerateConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectsRequest = { ["RequestPayer"] = true, ["Bucket"] = true, ["Prefix"] = true, ["MaxKeys"] = true, ["Delimiter"] = true, ["Marker"] = true, ["EncodingType"] = true, nil }

function asserts.AssertListObjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["MaxKeys"] then asserts.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["Marker"] then asserts.AssertMarker(struct["Marker"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectsRequest[k], "ListObjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPayer [RequestPayer] <p>Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.</p>
-- * Bucket [BucketName] 
-- * Prefix [Prefix] <p>Limits the response to keys that begin with the specified prefix.</p>
-- * MaxKeys [MaxKeys] <p>Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.</p>
-- * Delimiter [Delimiter] <p>A delimiter is a character you use to group keys.</p>
-- * Marker [Marker] <p>Specifies the key to start with when listing objects in a bucket.</p>
-- * EncodingType [EncodingType] 
-- Required key: Bucket
-- @return ListObjectsRequest structure as a key-value pair table
function M.ListObjectsRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectsRequest")
    local query_args = { 
        ["prefix"] = args["Prefix"],
        ["max-keys"] = args["MaxKeys"],
        ["delimiter"] = args["Delimiter"],
        ["marker"] = args["Marker"],
        ["encoding-type"] = args["EncodingType"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["RequestPayer"] = args["RequestPayer"],
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["MaxKeys"] = args["MaxKeys"],
		["Delimiter"] = args["Delimiter"],
		["Marker"] = args["Marker"],
		["EncodingType"] = args["EncodingType"],
	}
	asserts.AssertListObjectsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketRequest[k], "DeleteBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketRequest structure as a key-value pair table
function M.DeleteBucketRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketPolicyRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketPolicyRequest[k], "DeleteBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketPolicyRequest structure as a key-value pair table
function M.DeleteBucketPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VersioningConfiguration = { ["Status"] = true, ["MFADelete"] = true, nil }

function asserts.AssertVersioningConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersioningConfiguration to be of type 'table'")
	if struct["Status"] then asserts.AssertBucketVersioningStatus(struct["Status"]) end
	if struct["MFADelete"] then asserts.AssertMFADelete(struct["MFADelete"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersioningConfiguration[k], "VersioningConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersioningConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [BucketVersioningStatus] <p>The versioning state of the bucket.</p>
-- * MFADelete [MFADelete] <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.</p>
-- @return VersioningConfiguration structure as a key-value pair table
function M.VersioningConfiguration(args)
	assert(args, "You must provide an argument table when creating VersioningConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["MFADelete"] = args["MFADelete"],
	}
	asserts.AssertVersioningConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBucketRequest = { ["GrantFullControl"] = true, ["CreateBucketConfiguration"] = true, ["GrantWriteACP"] = true, ["Bucket"] = true, ["ACL"] = true, ["GrantWrite"] = true, ["GrantRead"] = true, ["GrantReadACP"] = true, nil }

function asserts.AssertCreateBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBucketRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["GrantFullControl"] then asserts.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["CreateBucketConfiguration"] then asserts.AssertCreateBucketConfiguration(struct["CreateBucketConfiguration"]) end
	if struct["GrantWriteACP"] then asserts.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ACL"] then asserts.AssertBucketCannedACL(struct["ACL"]) end
	if struct["GrantWrite"] then asserts.AssertGrantWrite(struct["GrantWrite"]) end
	if struct["GrantRead"] then asserts.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantReadACP"] then asserts.AssertGrantReadACP(struct["GrantReadACP"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBucketRequest[k], "CreateBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBucketRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrantFullControl [GrantFullControl] <p>Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.</p>
-- * CreateBucketConfiguration [CreateBucketConfiguration] 
-- * GrantWriteACP [GrantWriteACP] <p>Allows grantee to write the ACL for the applicable bucket.</p>
-- * Bucket [BucketName] 
-- * ACL [BucketCannedACL] <p>The canned ACL to apply to the bucket.</p>
-- * GrantWrite [GrantWrite] <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
-- * GrantRead [GrantRead] <p>Allows grantee to list the objects in the bucket.</p>
-- * GrantReadACP [GrantReadACP] <p>Allows grantee to read the bucket ACL.</p>
-- Required key: Bucket
-- @return CreateBucketRequest structure as a key-value pair table
function M.CreateBucketRequest(args)
	assert(args, "You must provide an argument table when creating CreateBucketRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-grant-full-control"] = args["GrantFullControl"],
        ["x-amz-grant-write-acp"] = args["GrantWriteACP"],
        ["x-amz-acl"] = args["ACL"],
        ["x-amz-grant-write"] = args["GrantWrite"],
        ["x-amz-grant-read"] = args["GrantRead"],
        ["x-amz-grant-read-acp"] = args["GrantReadACP"],
    }
	local all_args = { 
		["GrantFullControl"] = args["GrantFullControl"],
		["CreateBucketConfiguration"] = args["CreateBucketConfiguration"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["Bucket"] = args["Bucket"],
		["ACL"] = args["ACL"],
		["GrantWrite"] = args["GrantWrite"],
		["GrantRead"] = args["GrantRead"],
		["GrantReadACP"] = args["GrantReadACP"],
	}
	asserts.AssertCreateBucketRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationConfigurationFilter = { ["Key"] = true, nil }

function asserts.AssertNotificationConfigurationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfigurationFilter to be of type 'table'")
	if struct["Key"] then asserts.AssertS3KeyFilter(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationConfigurationFilter[k], "NotificationConfigurationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfigurationFilter
-- <p>Container for object key name filtering rules. For information about key name filtering, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Key [S3KeyFilter] 
-- @return NotificationConfigurationFilter structure as a key-value pair table
function M.NotificationConfigurationFilter(args)
	assert(args, "You must provide an argument table when creating NotificationConfigurationFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Key"] = args["Key"],
	}
	asserts.AssertNotificationConfigurationFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketInventoryConfigurationOutput = { ["InventoryConfiguration"] = true, nil }

function asserts.AssertGetBucketInventoryConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketInventoryConfigurationOutput to be of type 'table'")
	if struct["InventoryConfiguration"] then asserts.AssertInventoryConfiguration(struct["InventoryConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketInventoryConfigurationOutput[k], "GetBucketInventoryConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketInventoryConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InventoryConfiguration [InventoryConfiguration] <p>Specifies the inventory configuration.</p>
-- @return GetBucketInventoryConfigurationOutput structure as a key-value pair table
function M.GetBucketInventoryConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketInventoryConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InventoryConfiguration"] = args["InventoryConfiguration"],
	}
	asserts.AssertGetBucketInventoryConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessControlPolicy = { ["Owner"] = true, ["Grants"] = true, nil }

function asserts.AssertAccessControlPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessControlPolicy to be of type 'table'")
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["Grants"] then asserts.AssertGrants(struct["Grants"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessControlPolicy[k], "AccessControlPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessControlPolicy
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [Owner] 
-- * Grants [Grants] <p>A list of grants.</p>
-- @return AccessControlPolicy structure as a key-value pair table
function M.AccessControlPolicy(args)
	assert(args, "You must provide an argument table when creating AccessControlPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["Grants"] = args["Grants"],
	}
	asserts.AssertAccessControlPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Delete = { ["Objects"] = true, ["Quiet"] = true, nil }

function asserts.AssertDelete(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Delete to be of type 'table'")
	assert(struct["Objects"], "Expected key Objects to exist in table")
	if struct["Objects"] then asserts.AssertObjectIdentifierList(struct["Objects"]) end
	if struct["Quiet"] then asserts.AssertQuiet(struct["Quiet"]) end
	for k,_ in pairs(struct) do
		assert(keys.Delete[k], "Delete contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Delete
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Objects [ObjectIdentifierList] 
-- * Quiet [Quiet] <p>Element to enable quiet mode for the request. When you add this element, you must set its value to true.</p>
-- Required key: Objects
-- @return Delete structure as a key-value pair table
function M.Delete(args)
	assert(args, "You must provide an argument table when creating Delete")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Objects"] = args["Objects"],
		["Quiet"] = args["Quiet"],
	}
	asserts.AssertDelete(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketNotificationConfigurationRequest = { ["NotificationConfiguration"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketNotificationConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketNotificationConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["NotificationConfiguration"], "Expected key NotificationConfiguration to exist in table")
	if struct["NotificationConfiguration"] then asserts.AssertNotificationConfiguration(struct["NotificationConfiguration"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketNotificationConfigurationRequest[k], "PutBucketNotificationConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketNotificationConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationConfiguration [NotificationConfiguration] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- Required key: NotificationConfiguration
-- @return PutBucketNotificationConfigurationRequest structure as a key-value pair table
function M.PutBucketNotificationConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketNotificationConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationConfiguration"] = args["NotificationConfiguration"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketNotificationConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsExportDestination = { ["S3BucketDestination"] = true, nil }

function asserts.AssertAnalyticsExportDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsExportDestination to be of type 'table'")
	assert(struct["S3BucketDestination"], "Expected key S3BucketDestination to exist in table")
	if struct["S3BucketDestination"] then asserts.AssertAnalyticsS3BucketDestination(struct["S3BucketDestination"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsExportDestination[k], "AnalyticsExportDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsExportDestination
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3BucketDestination [AnalyticsS3BucketDestination] <p>A destination signifying output to an S3 bucket.</p>
-- Required key: S3BucketDestination
-- @return AnalyticsExportDestination structure as a key-value pair table
function M.AnalyticsExportDestination(args)
	assert(args, "You must provide an argument table when creating AnalyticsExportDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3BucketDestination"] = args["S3BucketDestination"],
	}
	asserts.AssertAnalyticsExportDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventoryConfiguration = { ["Schedule"] = true, ["IsEnabled"] = true, ["Destination"] = true, ["OptionalFields"] = true, ["Filter"] = true, ["IncludedObjectVersions"] = true, ["Id"] = true, nil }

function asserts.AssertInventoryConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryConfiguration to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["IsEnabled"], "Expected key IsEnabled to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["IncludedObjectVersions"], "Expected key IncludedObjectVersions to exist in table")
	assert(struct["Schedule"], "Expected key Schedule to exist in table")
	if struct["Schedule"] then asserts.AssertInventorySchedule(struct["Schedule"]) end
	if struct["IsEnabled"] then asserts.AssertIsEnabled(struct["IsEnabled"]) end
	if struct["Destination"] then asserts.AssertInventoryDestination(struct["Destination"]) end
	if struct["OptionalFields"] then asserts.AssertInventoryOptionalFields(struct["OptionalFields"]) end
	if struct["Filter"] then asserts.AssertInventoryFilter(struct["Filter"]) end
	if struct["IncludedObjectVersions"] then asserts.AssertInventoryIncludedObjectVersions(struct["IncludedObjectVersions"]) end
	if struct["Id"] then asserts.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryConfiguration[k], "InventoryConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Schedule [InventorySchedule] <p>Specifies the schedule for generating inventory results.</p>
-- * IsEnabled [IsEnabled] <p>Specifies whether the inventory is enabled or disabled.</p>
-- * Destination [InventoryDestination] <p>Contains information about where to publish the inventory results.</p>
-- * OptionalFields [InventoryOptionalFields] <p>Contains the optional fields that are included in the inventory results.</p>
-- * Filter [InventoryFilter] <p>Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.</p>
-- * IncludedObjectVersions [InventoryIncludedObjectVersions] <p>Specifies which object version(s) to included in the inventory results.</p>
-- * Id [InventoryId] <p>The ID used to identify the inventory configuration.</p>
-- Required key: Destination
-- Required key: IsEnabled
-- Required key: Id
-- Required key: IncludedObjectVersions
-- Required key: Schedule
-- @return InventoryConfiguration structure as a key-value pair table
function M.InventoryConfiguration(args)
	assert(args, "You must provide an argument table when creating InventoryConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Schedule"] = args["Schedule"],
		["IsEnabled"] = args["IsEnabled"],
		["Destination"] = args["Destination"],
		["OptionalFields"] = args["OptionalFields"],
		["Filter"] = args["Filter"],
		["IncludedObjectVersions"] = args["IncludedObjectVersions"],
		["Id"] = args["Id"],
	}
	asserts.AssertInventoryConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProgressEvent = { ["Details"] = true, nil }

function asserts.AssertProgressEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProgressEvent to be of type 'table'")
	if struct["Details"] then asserts.AssertProgress(struct["Details"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProgressEvent[k], "ProgressEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProgressEvent
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Details [Progress] <p>The Progress event details.</p>
-- @return ProgressEvent structure as a key-value pair table
function M.ProgressEvent(args)
	assert(args, "You must provide an argument table when creating ProgressEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Details"] = args["Details"],
	}
	asserts.AssertProgressEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JSONOutput = { ["RecordDelimiter"] = true, nil }

function asserts.AssertJSONOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JSONOutput to be of type 'table'")
	if struct["RecordDelimiter"] then asserts.AssertRecordDelimiter(struct["RecordDelimiter"]) end
	for k,_ in pairs(struct) do
		assert(keys.JSONOutput[k], "JSONOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JSONOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecordDelimiter [RecordDelimiter] <p>The value used to separate individual records in the output.</p>
-- @return JSONOutput structure as a key-value pair table
function M.JSONOutput(args)
	assert(args, "You must provide an argument table when creating JSONOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecordDelimiter"] = args["RecordDelimiter"],
	}
	asserts.AssertJSONOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionConfiguration = { ["Filter"] = true, ["LambdaFunctionArn"] = true, ["Id"] = true, ["Events"] = true, nil }

function asserts.AssertLambdaFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionConfiguration to be of type 'table'")
	assert(struct["LambdaFunctionArn"], "Expected key LambdaFunctionArn to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["Filter"] then asserts.AssertNotificationConfigurationFilter(struct["Filter"]) end
	if struct["LambdaFunctionArn"] then asserts.AssertLambdaFunctionArn(struct["LambdaFunctionArn"]) end
	if struct["Id"] then asserts.AssertNotificationId(struct["Id"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionConfiguration[k], "LambdaFunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionConfiguration
-- <p>Container for specifying the AWS Lambda notification configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NotificationConfigurationFilter] 
-- * LambdaFunctionArn [LambdaFunctionArn] <p>Lambda cloud function ARN that Amazon S3 can invoke when it detects events of the specified type.</p>
-- * Id [NotificationId] 
-- * Events [EventList] 
-- Required key: LambdaFunctionArn
-- Required key: Events
-- @return LambdaFunctionConfiguration structure as a key-value pair table
function M.LambdaFunctionConfiguration(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["LambdaFunctionArn"] = args["LambdaFunctionArn"],
		["Id"] = args["Id"],
		["Events"] = args["Events"],
	}
	asserts.AssertLambdaFunctionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessControlTranslation = { ["Owner"] = true, nil }

function asserts.AssertAccessControlTranslation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessControlTranslation to be of type 'table'")
	assert(struct["Owner"], "Expected key Owner to exist in table")
	if struct["Owner"] then asserts.AssertOwnerOverride(struct["Owner"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessControlTranslation[k], "AccessControlTranslation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessControlTranslation
-- <p>Container for information regarding the access control for replicas.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [OwnerOverride] <p>The override value for the owner of the replica object.</p>
-- Required key: Owner
-- @return AccessControlTranslation structure as a key-value pair table
function M.AccessControlTranslation(args)
	assert(args, "You must provide an argument table when creating AccessControlTranslation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
	}
	asserts.AssertAccessControlTranslation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLifecycleConfigurationOutput = { ["Rules"] = true, nil }

function asserts.AssertGetBucketLifecycleConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleConfigurationOutput to be of type 'table'")
	if struct["Rules"] then asserts.AssertLifecycleRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLifecycleConfigurationOutput[k], "GetBucketLifecycleConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [LifecycleRules] 
-- @return GetBucketLifecycleConfigurationOutput structure as a key-value pair table
function M.GetBucketLifecycleConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketLifecycleConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertGetBucketLifecycleConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SourceSelectionCriteria = { ["SseKmsEncryptedObjects"] = true, nil }

function asserts.AssertSourceSelectionCriteria(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceSelectionCriteria to be of type 'table'")
	if struct["SseKmsEncryptedObjects"] then asserts.AssertSseKmsEncryptedObjects(struct["SseKmsEncryptedObjects"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceSelectionCriteria[k], "SourceSelectionCriteria contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceSelectionCriteria
-- <p>Container for filters that define which source objects should be replicated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SseKmsEncryptedObjects [SseKmsEncryptedObjects] <p> Container for filter information of selection of KMS Encrypted S3 objects. The element is required if you include <code>SourceSelectionCriteria</code> in the replication configuration. </p>
-- @return SourceSelectionCriteria structure as a key-value pair table
function M.SourceSelectionCriteria(args)
	assert(args, "You must provide an argument table when creating SourceSelectionCriteria")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SseKmsEncryptedObjects"] = args["SseKmsEncryptedObjects"],
	}
	asserts.AssertSourceSelectionCriteria(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoncurrentVersionExpiration = { ["NoncurrentDays"] = true, nil }

function asserts.AssertNoncurrentVersionExpiration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoncurrentVersionExpiration to be of type 'table'")
	if struct["NoncurrentDays"] then asserts.AssertDays(struct["NoncurrentDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoncurrentVersionExpiration[k], "NoncurrentVersionExpiration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoncurrentVersionExpiration
-- <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NoncurrentDays [Days] <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">How Amazon S3 Calculates When an Object Became Noncurrent</a> in the Amazon Simple Storage Service Developer Guide.</p>
-- @return NoncurrentVersionExpiration structure as a key-value pair table
function M.NoncurrentVersionExpiration(args)
	assert(args, "You must provide an argument table when creating NoncurrentVersionExpiration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NoncurrentDays"] = args["NoncurrentDays"],
	}
	asserts.AssertNoncurrentVersionExpiration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FilterRule = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertFilterRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterRule to be of type 'table'")
	if struct["Name"] then asserts.AssertFilterRuleName(struct["Name"]) end
	if struct["Value"] then asserts.AssertFilterRuleValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.FilterRule[k], "FilterRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterRule
-- <p>Container for key value pair that defines the criteria for the filter rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [FilterRuleName] <p>Object key name prefix or suffix identifying one or more objects to which the filtering rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes and suffixes are not supported. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.</p>
-- * Value [FilterRuleValue] 
-- @return FilterRule structure as a key-value pair table
function M.FilterRule(args)
	assert(args, "You must provide an argument table when creating FilterRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertFilterRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HeadObjectOutput = { ["LastModified"] = true, ["RequestCharged"] = true, ["ContentEncoding"] = true, ["ReplicationStatus"] = true, ["StorageClass"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["ContentDisposition"] = true, ["Metadata"] = true, ["AcceptRanges"] = true, ["WebsiteRedirectLocation"] = true, ["Expires"] = true, ["DeleteMarker"] = true, ["CacheControl"] = true, ["PartsCount"] = true, ["ContentLength"] = true, ["Expiration"] = true, ["MissingMeta"] = true, ["Restore"] = true, ["SSECustomerAlgorithm"] = true, ["ContentType"] = true, ["ContentLanguage"] = true, ["VersionId"] = true, ["ETag"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertHeadObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HeadObjectOutput to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["ContentEncoding"] then asserts.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["ReplicationStatus"] then asserts.AssertReplicationStatus(struct["ReplicationStatus"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then asserts.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	if struct["AcceptRanges"] then asserts.AssertAcceptRanges(struct["AcceptRanges"]) end
	if struct["WebsiteRedirectLocation"] then asserts.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then asserts.AssertExpires(struct["Expires"]) end
	if struct["DeleteMarker"] then asserts.AssertDeleteMarker(struct["DeleteMarker"]) end
	if struct["CacheControl"] then asserts.AssertCacheControl(struct["CacheControl"]) end
	if struct["PartsCount"] then asserts.AssertPartsCount(struct["PartsCount"]) end
	if struct["ContentLength"] then asserts.AssertContentLength(struct["ContentLength"]) end
	if struct["Expiration"] then asserts.AssertExpiration(struct["Expiration"]) end
	if struct["MissingMeta"] then asserts.AssertMissingMeta(struct["MissingMeta"]) end
	if struct["Restore"] then asserts.AssertRestore(struct["Restore"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then asserts.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.HeadObjectOutput[k], "HeadObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HeadObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] <p>Last modified date of the object</p>
-- * RequestCharged [RequestCharged] 
-- * ContentEncoding [ContentEncoding] <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.</p>
-- * ReplicationStatus [ReplicationStatus] 
-- * StorageClass [StorageClass] 
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- * ContentDisposition [ContentDisposition] <p>Specifies presentational information for the object.</p>
-- * Metadata [Metadata] <p>A map of metadata to store with the object in S3.</p>
-- * AcceptRanges [AcceptRanges] 
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] <p>If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.</p>
-- * Expires [Expires] <p>The date and time at which the object is no longer cacheable.</p>
-- * DeleteMarker [DeleteMarker] <p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.</p>
-- * CacheControl [CacheControl] <p>Specifies caching behavior along the request/reply chain.</p>
-- * PartsCount [PartsCount] <p>The count of parts this object has.</p>
-- * ContentLength [ContentLength] <p>Size of the body in bytes.</p>
-- * Expiration [Expiration] <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.</p>
-- * MissingMeta [MissingMeta] <p>This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.</p>
-- * Restore [Restore] <p>Provides information about object restoration operation and expiration time of the restored object copy.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * ContentType [ContentType] <p>A standard MIME type describing the format of the object data.</p>
-- * ContentLanguage [ContentLanguage] <p>The language the content is in.</p>
-- * VersionId [ObjectVersionId] <p>Version of the object.</p>
-- * ETag [ETag] <p>An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- @return HeadObjectOutput structure as a key-value pair table
function M.HeadObjectOutput(args)
	assert(args, "You must provide an argument table when creating HeadObjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Last-Modified"] = args["LastModified"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["Content-Encoding"] = args["ContentEncoding"],
        ["x-amz-replication-status"] = args["ReplicationStatus"],
        ["x-amz-storage-class"] = args["StorageClass"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["Content-Disposition"] = args["ContentDisposition"],
        ["accept-ranges"] = args["AcceptRanges"],
        ["x-amz-website-redirect-location"] = args["WebsiteRedirectLocation"],
        ["Expires"] = args["Expires"],
        ["x-amz-delete-marker"] = args["DeleteMarker"],
        ["Cache-Control"] = args["CacheControl"],
        ["x-amz-mp-parts-count"] = args["PartsCount"],
        ["Content-Length"] = args["ContentLength"],
        ["x-amz-expiration"] = args["Expiration"],
        ["x-amz-missing-meta"] = args["MissingMeta"],
        ["x-amz-restore"] = args["Restore"],
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["Content-Type"] = args["ContentType"],
        ["Content-Language"] = args["ContentLanguage"],
        ["x-amz-version-id"] = args["VersionId"],
        ["ETag"] = args["ETag"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["RequestCharged"] = args["RequestCharged"],
		["ContentEncoding"] = args["ContentEncoding"],
		["ReplicationStatus"] = args["ReplicationStatus"],
		["StorageClass"] = args["StorageClass"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["ContentDisposition"] = args["ContentDisposition"],
		["Metadata"] = args["Metadata"],
		["AcceptRanges"] = args["AcceptRanges"],
		["WebsiteRedirectLocation"] = args["WebsiteRedirectLocation"],
		["Expires"] = args["Expires"],
		["DeleteMarker"] = args["DeleteMarker"],
		["CacheControl"] = args["CacheControl"],
		["PartsCount"] = args["PartsCount"],
		["ContentLength"] = args["ContentLength"],
		["Expiration"] = args["Expiration"],
		["MissingMeta"] = args["MissingMeta"],
		["Restore"] = args["Restore"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ContentType"] = args["ContentType"],
		["ContentLanguage"] = args["ContentLanguage"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertHeadObjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketAnalyticsConfigurationOutput = { ["AnalyticsConfiguration"] = true, nil }

function asserts.AssertGetBucketAnalyticsConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAnalyticsConfigurationOutput to be of type 'table'")
	if struct["AnalyticsConfiguration"] then asserts.AssertAnalyticsConfiguration(struct["AnalyticsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketAnalyticsConfigurationOutput[k], "GetBucketAnalyticsConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAnalyticsConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalyticsConfiguration [AnalyticsConfiguration] <p>The configuration and any analyses for the analytics filter.</p>
-- @return GetBucketAnalyticsConfigurationOutput structure as a key-value pair table
function M.GetBucketAnalyticsConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketAnalyticsConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
	}
	asserts.AssertGetBucketAnalyticsConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoncurrentVersionTransition = { ["NoncurrentDays"] = true, ["StorageClass"] = true, nil }

function asserts.AssertNoncurrentVersionTransition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoncurrentVersionTransition to be of type 'table'")
	if struct["NoncurrentDays"] then asserts.AssertDays(struct["NoncurrentDays"]) end
	if struct["StorageClass"] then asserts.AssertTransitionStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoncurrentVersionTransition[k], "NoncurrentVersionTransition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoncurrentVersionTransition
-- <p>Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA, ONEZONE_IA or GLACIER storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA, ONEZONE_IA or GLACIER storage class at a specific period in the object's lifetime.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NoncurrentDays [Days] <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">How Amazon S3 Calculates When an Object Became Noncurrent</a> in the Amazon Simple Storage Service Developer Guide.</p>
-- * StorageClass [TransitionStorageClass] <p>The class of storage used to store the object.</p>
-- @return NoncurrentVersionTransition structure as a key-value pair table
function M.NoncurrentVersionTransition(args)
	assert(args, "You must provide an argument table when creating NoncurrentVersionTransition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NoncurrentDays"] = args["NoncurrentDays"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertNoncurrentVersionTransition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketNotificationRequest = { ["NotificationConfiguration"] = true, ["ContentMD5"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketNotificationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["NotificationConfiguration"], "Expected key NotificationConfiguration to exist in table")
	if struct["NotificationConfiguration"] then asserts.AssertNotificationConfigurationDeprecated(struct["NotificationConfiguration"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketNotificationRequest[k], "PutBucketNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketNotificationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationConfiguration [NotificationConfigurationDeprecated] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- Required key: NotificationConfiguration
-- @return PutBucketNotificationRequest structure as a key-value pair table
function M.PutBucketNotificationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketNotificationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["NotificationConfiguration"] = args["NotificationConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketNotificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectsRequest = { ["MFA"] = true, ["Bucket"] = true, ["RequestPayer"] = true, ["Delete"] = true, nil }

function asserts.AssertDeleteObjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Delete"], "Expected key Delete to exist in table")
	if struct["MFA"] then asserts.AssertMFA(struct["MFA"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Delete"] then asserts.AssertDelete(struct["Delete"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectsRequest[k], "DeleteObjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MFA [MFA] <p>The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.</p>
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Delete [Delete] 
-- Required key: Bucket
-- Required key: Delete
-- @return DeleteObjectsRequest structure as a key-value pair table
function M.DeleteObjectsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteObjectsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-mfa"] = args["MFA"],
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["MFA"] = args["MFA"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Delete"] = args["Delete"],
	}
	asserts.AssertDeleteObjectsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSEKMS = { ["KeyId"] = true, nil }

function asserts.AssertSSEKMS(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSEKMS to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertSSEKMSKeyId(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSEKMS[k], "SSEKMS contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSEKMS
-- <p>Specifies the use of SSE-KMS to encrypt delievered Inventory reports.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [SSEKMSKeyId] <p>Specifies the ID of the AWS Key Management Service (KMS) master encryption key to use for encrypting Inventory reports.</p>
-- Required key: KeyId
-- @return SSEKMS structure as a key-value pair table
function M.SSEKMS(args)
	assert(args, "You must provide an argument table when creating SSEKMS")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertSSEKMS(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventoryS3BucketDestination = { ["Encryption"] = true, ["Prefix"] = true, ["Format"] = true, ["Bucket"] = true, ["AccountId"] = true, nil }

function asserts.AssertInventoryS3BucketDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryS3BucketDestination to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Format"], "Expected key Format to exist in table")
	if struct["Encryption"] then asserts.AssertInventoryEncryption(struct["Encryption"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Format"] then asserts.AssertInventoryFormat(struct["Format"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryS3BucketDestination[k], "InventoryS3BucketDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryS3BucketDestination
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encryption [InventoryEncryption] <p>Contains the type of server-side encryption used to encrypt the inventory results.</p>
-- * Prefix [Prefix] <p>The prefix that is prepended to all inventory results.</p>
-- * Format [InventoryFormat] <p>Specifies the output format of the inventory results.</p>
-- * Bucket [BucketName] <p>The Amazon resource name (ARN) of the bucket where inventory results will be published.</p>
-- * AccountId [AccountId] <p>The ID of the account that owns the destination bucket.</p>
-- Required key: Bucket
-- Required key: Format
-- @return InventoryS3BucketDestination structure as a key-value pair table
function M.InventoryS3BucketDestination(args)
	assert(args, "You must provide an argument table when creating InventoryS3BucketDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encryption"] = args["Encryption"],
		["Prefix"] = args["Prefix"],
		["Format"] = args["Format"],
		["Bucket"] = args["Bucket"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertInventoryS3BucketDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadPartCopyRequest = { ["CopySourceIfMatch"] = true, ["SSECustomerAlgorithm"] = true, ["CopySourceSSECustomerKeyMD5"] = true, ["RequestPayer"] = true, ["CopySourceSSECustomerKey"] = true, ["CopySourceSSECustomerAlgorithm"] = true, ["CopySource"] = true, ["CopySourceIfModifiedSince"] = true, ["Bucket"] = true, ["SSECustomerKey"] = true, ["CopySourceIfUnmodifiedSince"] = true, ["CopySourceIfNoneMatch"] = true, ["UploadId"] = true, ["Key"] = true, ["CopySourceRange"] = true, ["SSECustomerKeyMD5"] = true, ["PartNumber"] = true, nil }

function asserts.AssertUploadPartCopyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartCopyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["CopySource"], "Expected key CopySource to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["PartNumber"], "Expected key PartNumber to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["CopySourceIfMatch"] then asserts.AssertCopySourceIfMatch(struct["CopySourceIfMatch"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["CopySourceSSECustomerKeyMD5"] then asserts.AssertCopySourceSSECustomerKeyMD5(struct["CopySourceSSECustomerKeyMD5"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["CopySourceSSECustomerKey"] then asserts.AssertCopySourceSSECustomerKey(struct["CopySourceSSECustomerKey"]) end
	if struct["CopySourceSSECustomerAlgorithm"] then asserts.AssertCopySourceSSECustomerAlgorithm(struct["CopySourceSSECustomerAlgorithm"]) end
	if struct["CopySource"] then asserts.AssertCopySource(struct["CopySource"]) end
	if struct["CopySourceIfModifiedSince"] then asserts.AssertCopySourceIfModifiedSince(struct["CopySourceIfModifiedSince"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["CopySourceIfUnmodifiedSince"] then asserts.AssertCopySourceIfUnmodifiedSince(struct["CopySourceIfUnmodifiedSince"]) end
	if struct["CopySourceIfNoneMatch"] then asserts.AssertCopySourceIfNoneMatch(struct["CopySourceIfNoneMatch"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["CopySourceRange"] then asserts.AssertCopySourceRange(struct["CopySourceRange"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["PartNumber"] then asserts.AssertPartNumber(struct["PartNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadPartCopyRequest[k], "UploadPartCopyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartCopyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopySourceIfMatch [CopySourceIfMatch] <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * CopySourceSSECustomerKeyMD5 [CopySourceSSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- * RequestPayer [RequestPayer] 
-- * CopySourceSSECustomerKey [CopySourceSSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.</p>
-- * CopySourceSSECustomerAlgorithm [CopySourceSSECustomerAlgorithm] <p>Specifies the algorithm to use when decrypting the source object (e.g., AES256).</p>
-- * CopySource [CopySource] <p>The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.</p>
-- * CopySourceIfModifiedSince [CopySourceIfModifiedSince] <p>Copies the object if it has been modified since the specified time.</p>
-- * Bucket [BucketName] 
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.</p>
-- * CopySourceIfUnmodifiedSince [CopySourceIfUnmodifiedSince] <p>Copies the object if it hasn't been modified since the specified time.</p>
-- * CopySourceIfNoneMatch [CopySourceIfNoneMatch] <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
-- * UploadId [MultipartUploadId] <p>Upload ID identifying the multipart upload whose part is being copied.</p>
-- * Key [ObjectKey] 
-- * CopySourceRange [CopySourceRange] <p>The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first ten bytes of the source. You can copy a range only if the source object is greater than 5 GB.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- * PartNumber [PartNumber] <p>Part number of part being copied. This is a positive integer between 1 and 10,000.</p>
-- Required key: Bucket
-- Required key: CopySource
-- Required key: Key
-- Required key: PartNumber
-- Required key: UploadId
-- @return UploadPartCopyRequest structure as a key-value pair table
function M.UploadPartCopyRequest(args)
	assert(args, "You must provide an argument table when creating UploadPartCopyRequest")
    local query_args = { 
        ["uploadId"] = args["UploadId"],
        ["partNumber"] = args["PartNumber"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-copy-source-if-match"] = args["CopySourceIfMatch"],
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-copy-source-server-side-encryption-customer-key-MD5"] = args["CopySourceSSECustomerKeyMD5"],
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["x-amz-copy-source-server-side-encryption-customer-key"] = args["CopySourceSSECustomerKey"],
        ["x-amz-copy-source-server-side-encryption-customer-algorithm"] = args["CopySourceSSECustomerAlgorithm"],
        ["x-amz-copy-source"] = args["CopySource"],
        ["x-amz-copy-source-if-modified-since"] = args["CopySourceIfModifiedSince"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["x-amz-copy-source-if-unmodified-since"] = args["CopySourceIfUnmodifiedSince"],
        ["x-amz-copy-source-if-none-match"] = args["CopySourceIfNoneMatch"],
        ["x-amz-copy-source-range"] = args["CopySourceRange"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["CopySourceIfMatch"] = args["CopySourceIfMatch"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["CopySourceSSECustomerKeyMD5"] = args["CopySourceSSECustomerKeyMD5"],
		["RequestPayer"] = args["RequestPayer"],
		["CopySourceSSECustomerKey"] = args["CopySourceSSECustomerKey"],
		["CopySourceSSECustomerAlgorithm"] = args["CopySourceSSECustomerAlgorithm"],
		["CopySource"] = args["CopySource"],
		["CopySourceIfModifiedSince"] = args["CopySourceIfModifiedSince"],
		["Bucket"] = args["Bucket"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["CopySourceIfUnmodifiedSince"] = args["CopySourceIfUnmodifiedSince"],
		["CopySourceIfNoneMatch"] = args["CopySourceIfNoneMatch"],
		["UploadId"] = args["UploadId"],
		["Key"] = args["Key"],
		["CopySourceRange"] = args["CopySourceRange"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["PartNumber"] = args["PartNumber"],
	}
	asserts.AssertUploadPartCopyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompletedMultipartUpload = { ["Parts"] = true, nil }

function asserts.AssertCompletedMultipartUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompletedMultipartUpload to be of type 'table'")
	if struct["Parts"] then asserts.AssertCompletedPartList(struct["Parts"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompletedMultipartUpload[k], "CompletedMultipartUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompletedMultipartUpload
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Parts [CompletedPartList] 
-- @return CompletedMultipartUpload structure as a key-value pair table
function M.CompletedMultipartUpload(args)
	assert(args, "You must provide an argument table when creating CompletedMultipartUpload")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Parts"] = args["Parts"],
	}
	asserts.AssertCompletedMultipartUpload(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionConfiguration = { ["ReplicaKmsKeyID"] = true, nil }

function asserts.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	if struct["ReplicaKmsKeyID"] then asserts.AssertReplicaKmsKeyID(struct["ReplicaKmsKeyID"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionConfiguration[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- <p>Container for information regarding encryption based configuration for replicas.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicaKmsKeyID [ReplicaKmsKeyID] <p> The ID of the AWS KMS key for the region where the destination bucket resides. Amazon S3 uses this key to encrypt the replica object. </p>
-- @return EncryptionConfiguration structure as a key-value pair table
function M.EncryptionConfiguration(args)
	assert(args, "You must provide an argument table when creating EncryptionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicaKmsKeyID"] = args["ReplicaKmsKeyID"],
	}
	asserts.AssertEncryptionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketReplicationRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketReplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketReplicationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketReplicationRequest[k], "DeleteBucketReplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketReplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>Deletes the replication subresource associated with the specified bucket.</p> <note> <p>There is usually some time lag before replication configuration deletion is fully propagated to all the Amazon S3 systems.</p> </note> <p> For more information, see <a href=" https://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html">Cross-Region Replication (CRR)</a> in the Amazon S3 Developer Guide. </p>
-- Required key: Bucket
-- @return DeleteBucketReplicationRequest structure as a key-value pair table
function M.DeleteBucketReplicationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketReplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketReplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tagging = { ["TagSet"] = true, nil }

function asserts.AssertTagging(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tagging to be of type 'table'")
	assert(struct["TagSet"], "Expected key TagSet to exist in table")
	if struct["TagSet"] then asserts.AssertTagSet(struct["TagSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tagging[k], "Tagging contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tagging
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagSet [TagSet] 
-- Required key: TagSet
-- @return Tagging structure as a key-value pair table
function M.Tagging(args)
	assert(args, "You must provide an argument table when creating Tagging")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagSet"] = args["TagSet"],
	}
	asserts.AssertTagging(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsAndOperator = { ["Prefix"] = true, ["Tags"] = true, nil }

function asserts.AssertAnalyticsAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsAndOperator to be of type 'table'")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then asserts.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsAndOperator[k], "AnalyticsAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsAndOperator
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] <p>The prefix to use when evaluating an AND predicate.</p>
-- * Tags [TagSet] <p>The list of tags to use when evaluating an AND predicate.</p>
-- @return AnalyticsAndOperator structure as a key-value pair table
function M.AnalyticsAndOperator(args)
	assert(args, "You must provide an argument table when creating AnalyticsAndOperator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAnalyticsAndOperator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreObjectRequest = { ["VersionId"] = true, ["RestoreRequest"] = true, ["Bucket"] = true, ["RequestPayer"] = true, ["Key"] = true, nil }

function asserts.AssertRestoreObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RestoreRequest"] then asserts.AssertRestoreRequest(struct["RestoreRequest"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreObjectRequest[k], "RestoreObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- * RestoreRequest [RestoreRequest] 
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return RestoreObjectRequest structure as a key-value pair table
function M.RestoreObjectRequest(args)
	assert(args, "You must provide an argument table when creating RestoreObjectRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["RestoreRequest"] = args["RestoreRequest"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertRestoreObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectTorrentRequest = { ["Bucket"] = true, ["RequestPayer"] = true, ["Key"] = true, nil }

function asserts.AssertGetObjectTorrentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTorrentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectTorrentRequest[k], "GetObjectTorrentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTorrentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return GetObjectTorrentRequest structure as a key-value pair table
function M.GetObjectTorrentRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectTorrentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetObjectTorrentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLifecycleConfigurationRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketLifecycleConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLifecycleConfigurationRequest[k], "GetBucketLifecycleConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketLifecycleConfigurationRequest structure as a key-value pair table
function M.GetBucketLifecycleConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketLifecycleConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLifecycleConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBucketMetricsConfigurationsOutput = { ["MetricsConfigurationList"] = true, ["NextContinuationToken"] = true, ["IsTruncated"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertListBucketMetricsConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketMetricsConfigurationsOutput to be of type 'table'")
	if struct["MetricsConfigurationList"] then asserts.AssertMetricsConfigurationList(struct["MetricsConfigurationList"]) end
	if struct["NextContinuationToken"] then asserts.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketMetricsConfigurationsOutput[k], "ListBucketMetricsConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketMetricsConfigurationsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricsConfigurationList [MetricsConfigurationList] <p>The list of metrics configurations for a bucket.</p>
-- * NextContinuationToken [NextToken] <p>The marker used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.</p>
-- * IsTruncated [IsTruncated] <p>Indicates whether the returned list of metrics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.</p>
-- * ContinuationToken [Token] <p>The marker that is used as a starting point for this metrics configuration list response. This value is present if it was sent in the request.</p>
-- @return ListBucketMetricsConfigurationsOutput structure as a key-value pair table
function M.ListBucketMetricsConfigurationsOutput(args)
	assert(args, "You must provide an argument table when creating ListBucketMetricsConfigurationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricsConfigurationList"] = args["MetricsConfigurationList"],
		["NextContinuationToken"] = args["NextContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketMetricsConfigurationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMultipartUploadsOutput = { ["UploadIdMarker"] = true, ["CommonPrefixes"] = true, ["NextKeyMarker"] = true, ["Bucket"] = true, ["Delimiter"] = true, ["NextUploadIdMarker"] = true, ["Prefix"] = true, ["Uploads"] = true, ["KeyMarker"] = true, ["MaxUploads"] = true, ["EncodingType"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListMultipartUploadsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsOutput to be of type 'table'")
	if struct["UploadIdMarker"] then asserts.AssertUploadIdMarker(struct["UploadIdMarker"]) end
	if struct["CommonPrefixes"] then asserts.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	if struct["NextKeyMarker"] then asserts.AssertNextKeyMarker(struct["NextKeyMarker"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["NextUploadIdMarker"] then asserts.AssertNextUploadIdMarker(struct["NextUploadIdMarker"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Uploads"] then asserts.AssertMultipartUploadList(struct["Uploads"]) end
	if struct["KeyMarker"] then asserts.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["MaxUploads"] then asserts.AssertMaxUploads(struct["MaxUploads"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMultipartUploadsOutput[k], "ListMultipartUploadsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UploadIdMarker [UploadIdMarker] <p>Upload ID after which listing began.</p>
-- * CommonPrefixes [CommonPrefixList] 
-- * NextKeyMarker [NextKeyMarker] <p>When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.</p>
-- * Bucket [BucketName] <p>Name of the bucket to which the multipart upload was initiated.</p>
-- * Delimiter [Delimiter] 
-- * NextUploadIdMarker [NextUploadIdMarker] <p>When a list is truncated, this element specifies the value that should be used for the upload-id-marker request parameter in a subsequent request.</p>
-- * Prefix [Prefix] <p>When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.</p>
-- * Uploads [MultipartUploadList] 
-- * KeyMarker [KeyMarker] <p>The key at or after which the listing began.</p>
-- * MaxUploads [MaxUploads] <p>Maximum number of multipart uploads that could have been included in the response.</p>
-- * EncodingType [EncodingType] <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
-- * IsTruncated [IsTruncated] <p>Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.</p>
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
		["UploadIdMarker"] = args["UploadIdMarker"],
		["CommonPrefixes"] = args["CommonPrefixes"],
		["NextKeyMarker"] = args["NextKeyMarker"],
		["Bucket"] = args["Bucket"],
		["Delimiter"] = args["Delimiter"],
		["NextUploadIdMarker"] = args["NextUploadIdMarker"],
		["Prefix"] = args["Prefix"],
		["Uploads"] = args["Uploads"],
		["KeyMarker"] = args["KeyMarker"],
		["MaxUploads"] = args["MaxUploads"],
		["EncodingType"] = args["EncodingType"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListMultipartUploadsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLifecycleRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketLifecycleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLifecycleRequest[k], "GetBucketLifecycleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketLifecycleRequest structure as a key-value pair table
function M.GetBucketLifecycleRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketLifecycleRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLifecycleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketLifecycleConfigurationRequest = { ["LifecycleConfiguration"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketLifecycleConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketLifecycleConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["LifecycleConfiguration"] then asserts.AssertBucketLifecycleConfiguration(struct["LifecycleConfiguration"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketLifecycleConfigurationRequest[k], "PutBucketLifecycleConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketLifecycleConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleConfiguration [BucketLifecycleConfiguration] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return PutBucketLifecycleConfigurationRequest structure as a key-value pair table
function M.PutBucketLifecycleConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketLifecycleConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleConfiguration"] = args["LifecycleConfiguration"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketLifecycleConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketEncryptionRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketEncryptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketEncryptionRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketEncryptionRequest[k], "DeleteBucketEncryptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketEncryptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the server-side encryption configuration to delete.</p>
-- Required key: Bucket
-- @return DeleteBucketEncryptionRequest structure as a key-value pair table
function M.DeleteBucketEncryptionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketEncryptionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketEncryptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketLoggingRequest = { ["BucketLoggingStatus"] = true, ["ContentMD5"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketLoggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["BucketLoggingStatus"], "Expected key BucketLoggingStatus to exist in table")
	if struct["BucketLoggingStatus"] then asserts.AssertBucketLoggingStatus(struct["BucketLoggingStatus"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketLoggingRequest[k], "PutBucketLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketLoggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BucketLoggingStatus [BucketLoggingStatus] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- Required key: BucketLoggingStatus
-- @return PutBucketLoggingRequest structure as a key-value pair table
function M.PutBucketLoggingRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketLoggingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["BucketLoggingStatus"] = args["BucketLoggingStatus"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketLoggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketAccelerateConfigurationRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketAccelerateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAccelerateConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketAccelerateConfigurationRequest[k], "GetBucketAccelerateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAccelerateConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>Name of the bucket for which the accelerate configuration is retrieved.</p>
-- Required key: Bucket
-- @return GetBucketAccelerateConfigurationRequest structure as a key-value pair table
function M.GetBucketAccelerateConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketAccelerateConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketAccelerateConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestProgress = { ["Enabled"] = true, nil }

function asserts.AssertRequestProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestProgress to be of type 'table'")
	if struct["Enabled"] then asserts.AssertEnableRequestProgress(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestProgress[k], "RequestProgress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestProgress
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [EnableRequestProgress] <p>Specifies whether periodic QueryProgress frames should be sent. Valid values: TRUE, FALSE. Default value: FALSE.</p>
-- @return RequestProgress structure as a key-value pair table
function M.RequestProgress(args)
	assert(args, "You must provide an argument table when creating RequestProgress")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertRequestProgress(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketMetricsConfigurationOutput = { ["MetricsConfiguration"] = true, nil }

function asserts.AssertGetBucketMetricsConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketMetricsConfigurationOutput to be of type 'table'")
	if struct["MetricsConfiguration"] then asserts.AssertMetricsConfiguration(struct["MetricsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketMetricsConfigurationOutput[k], "GetBucketMetricsConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketMetricsConfigurationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricsConfiguration [MetricsConfiguration] <p>Specifies the metrics configuration.</p>
-- @return GetBucketMetricsConfigurationOutput structure as a key-value pair table
function M.GetBucketMetricsConfigurationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketMetricsConfigurationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricsConfiguration"] = args["MetricsConfiguration"],
	}
	asserts.AssertGetBucketMetricsConfigurationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortIncompleteMultipartUpload = { ["DaysAfterInitiation"] = true, nil }

function asserts.AssertAbortIncompleteMultipartUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortIncompleteMultipartUpload to be of type 'table'")
	if struct["DaysAfterInitiation"] then asserts.AssertDaysAfterInitiation(struct["DaysAfterInitiation"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortIncompleteMultipartUpload[k], "AbortIncompleteMultipartUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortIncompleteMultipartUpload
-- <p>Specifies the days since the initiation of an Incomplete Multipart Upload that Lifecycle will wait before permanently removing all parts of the upload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DaysAfterInitiation [DaysAfterInitiation] <p>Indicates the number of days that must pass since initiation for Lifecycle to abort an Incomplete Multipart Upload.</p>
-- @return AbortIncompleteMultipartUpload structure as a key-value pair table
function M.AbortIncompleteMultipartUpload(args)
	assert(args, "You must provide an argument table when creating AbortIncompleteMultipartUpload")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DaysAfterInitiation"] = args["DaysAfterInitiation"],
	}
	asserts.AssertAbortIncompleteMultipartUpload(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketReplicationRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketReplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketReplicationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketReplicationRequest[k], "GetBucketReplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketReplicationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketReplicationRequest structure as a key-value pair table
function M.GetBucketReplicationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketReplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketReplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectAclOutput = { ["RequestCharged"] = true, nil }

function asserts.AssertPutObjectAclOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectAclOutput to be of type 'table'")
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectAclOutput[k], "PutObjectAclOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectAclOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestCharged [RequestCharged] 
-- @return PutObjectAclOutput structure as a key-value pair table
function M.PutObjectAclOutput(args)
	assert(args, "You must provide an argument table when creating PutObjectAclOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertPutObjectAclOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IndexDocument = { ["Suffix"] = true, nil }

function asserts.AssertIndexDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexDocument to be of type 'table'")
	assert(struct["Suffix"], "Expected key Suffix to exist in table")
	if struct["Suffix"] then asserts.AssertSuffix(struct["Suffix"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexDocument[k], "IndexDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexDocument
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Suffix [Suffix] <p>A suffix that is appended to a request that is for a directory on the website endpoint (e.g. if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html) The suffix must not be empty and must not include a slash character.</p>
-- Required key: Suffix
-- @return IndexDocument structure as a key-value pair table
function M.IndexDocument(args)
	assert(args, "You must provide an argument table when creating IndexDocument")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Suffix"] = args["Suffix"],
	}
	asserts.AssertIndexDocument(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateMultipartUploadRequest = { ["RequestPayer"] = true, ["ContentEncoding"] = true, ["StorageClass"] = true, ["GrantReadACP"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["ContentDisposition"] = true, ["Metadata"] = true, ["SSECustomerKey"] = true, ["WebsiteRedirectLocation"] = true, ["Expires"] = true, ["Key"] = true, ["CacheControl"] = true, ["Tagging"] = true, ["Bucket"] = true, ["GrantRead"] = true, ["GrantWriteACP"] = true, ["ACL"] = true, ["GrantFullControl"] = true, ["SSECustomerAlgorithm"] = true, ["ContentType"] = true, ["ContentLanguage"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertCreateMultipartUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMultipartUploadRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentEncoding"] then asserts.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["GrantReadACP"] then asserts.AssertGrantReadACP(struct["GrantReadACP"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then asserts.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["WebsiteRedirectLocation"] then asserts.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then asserts.AssertExpires(struct["Expires"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["CacheControl"] then asserts.AssertCacheControl(struct["CacheControl"]) end
	if struct["Tagging"] then asserts.AssertTaggingHeader(struct["Tagging"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["GrantRead"] then asserts.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantWriteACP"] then asserts.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["ACL"] then asserts.AssertObjectCannedACL(struct["ACL"]) end
	if struct["GrantFullControl"] then asserts.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then asserts.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMultipartUploadRequest[k], "CreateMultipartUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMultipartUploadRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPayer [RequestPayer] 
-- * ContentEncoding [ContentEncoding] <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.</p>
-- * StorageClass [StorageClass] <p>The type of storage to use for the object. Defaults to 'STANDARD'.</p>
-- * GrantReadACP [GrantReadACP] <p>Allows grantee to read the object ACL.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version</p>
-- * ContentDisposition [ContentDisposition] <p>Specifies presentational information for the object.</p>
-- * Metadata [Metadata] <p>A map of metadata to store with the object in S3.</p>
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.</p>
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] <p>If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.</p>
-- * Expires [Expires] <p>The date and time at which the object is no longer cacheable.</p>
-- * Key [ObjectKey] 
-- * CacheControl [CacheControl] <p>Specifies caching behavior along the request/reply chain.</p>
-- * Tagging [TaggingHeader] <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters</p>
-- * Bucket [BucketName] 
-- * GrantRead [GrantRead] <p>Allows grantee to read the object data and its metadata.</p>
-- * GrantWriteACP [GrantWriteACP] <p>Allows grantee to write the ACL for the applicable object.</p>
-- * ACL [ObjectCannedACL] <p>The canned ACL to apply to the object.</p>
-- * GrantFullControl [GrantFullControl] <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * ContentType [ContentType] <p>A standard MIME type describing the format of the object data.</p>
-- * ContentLanguage [ContentLanguage] <p>The language the content is in.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- Required key: Bucket
-- Required key: Key
-- @return CreateMultipartUploadRequest structure as a key-value pair table
function M.CreateMultipartUploadRequest(args)
	assert(args, "You must provide an argument table when creating CreateMultipartUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Key}"] = args["Key"],
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["Content-Encoding"] = args["ContentEncoding"],
        ["x-amz-storage-class"] = args["StorageClass"],
        ["x-amz-grant-read-acp"] = args["GrantReadACP"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["Content-Disposition"] = args["ContentDisposition"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["x-amz-website-redirect-location"] = args["WebsiteRedirectLocation"],
        ["Expires"] = args["Expires"],
        ["Cache-Control"] = args["CacheControl"],
        ["x-amz-tagging"] = args["Tagging"],
        ["x-amz-grant-read"] = args["GrantRead"],
        ["x-amz-grant-write-acp"] = args["GrantWriteACP"],
        ["x-amz-acl"] = args["ACL"],
        ["x-amz-grant-full-control"] = args["GrantFullControl"],
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["Content-Type"] = args["ContentType"],
        ["Content-Language"] = args["ContentLanguage"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["RequestPayer"] = args["RequestPayer"],
		["ContentEncoding"] = args["ContentEncoding"],
		["StorageClass"] = args["StorageClass"],
		["GrantReadACP"] = args["GrantReadACP"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["ContentDisposition"] = args["ContentDisposition"],
		["Metadata"] = args["Metadata"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["WebsiteRedirectLocation"] = args["WebsiteRedirectLocation"],
		["Expires"] = args["Expires"],
		["Key"] = args["Key"],
		["CacheControl"] = args["CacheControl"],
		["Tagging"] = args["Tagging"],
		["Bucket"] = args["Bucket"],
		["GrantRead"] = args["GrantRead"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["ACL"] = args["ACL"],
		["GrantFullControl"] = args["GrantFullControl"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ContentType"] = args["ContentType"],
		["ContentLanguage"] = args["ContentLanguage"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertCreateMultipartUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketMetricsConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertGetBucketMetricsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketMetricsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertMetricsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketMetricsConfigurationRequest[k], "GetBucketMetricsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketMetricsConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the metrics configuration to retrieve.</p>
-- * Id [MetricsId] <p>The ID used to identify the metrics configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- @return GetBucketMetricsConfigurationRequest structure as a key-value pair table
function M.GetBucketMetricsConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketMetricsConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetBucketMetricsConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketCorsOutput = { ["CORSRules"] = true, nil }

function asserts.AssertGetBucketCorsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketCorsOutput to be of type 'table'")
	if struct["CORSRules"] then asserts.AssertCORSRules(struct["CORSRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketCorsOutput[k], "GetBucketCorsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketCorsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CORSRules [CORSRules] 
-- @return GetBucketCorsOutput structure as a key-value pair table
function M.GetBucketCorsOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketCorsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CORSRules"] = args["CORSRules"],
	}
	asserts.AssertGetBucketCorsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BucketLifecycleConfiguration = { ["Rules"] = true, nil }

function asserts.AssertBucketLifecycleConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketLifecycleConfiguration to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then asserts.AssertLifecycleRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.BucketLifecycleConfiguration[k], "BucketLifecycleConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketLifecycleConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [LifecycleRules] 
-- Required key: Rules
-- @return BucketLifecycleConfiguration structure as a key-value pair table
function M.BucketLifecycleConfiguration(args)
	assert(args, "You must provide an argument table when creating BucketLifecycleConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertBucketLifecycleConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketMetricsConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteBucketMetricsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketMetricsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertMetricsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketMetricsConfigurationRequest[k], "DeleteBucketMetricsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketMetricsConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the metrics configuration to delete.</p>
-- * Id [MetricsId] <p>The ID used to identify the metrics configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- @return DeleteBucketMetricsConfigurationRequest structure as a key-value pair table
function M.DeleteBucketMetricsConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketMetricsConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteBucketMetricsConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HeadBucketRequest = { ["Bucket"] = true, nil }

function asserts.AssertHeadBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HeadBucketRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.HeadBucketRequest[k], "HeadBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HeadBucketRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return HeadBucketRequest structure as a key-value pair table
function M.HeadBucketRequest(args)
	assert(args, "You must provide an argument table when creating HeadBucketRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertHeadBucketRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortMultipartUploadRequest = { ["UploadId"] = true, ["Bucket"] = true, ["RequestPayer"] = true, ["Key"] = true, nil }

function asserts.AssertAbortMultipartUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortMultipartUploadRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortMultipartUploadRequest[k], "AbortMultipartUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortMultipartUploadRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UploadId [MultipartUploadId] 
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- Required key: UploadId
-- @return AbortMultipartUploadRequest structure as a key-value pair table
function M.AbortMultipartUploadRequest(args)
	assert(args, "You must provide an argument table when creating AbortMultipartUploadRequest")
    local query_args = { 
        ["uploadId"] = args["UploadId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["UploadId"] = args["UploadId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertAbortMultipartUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleRuleFilter = { ["And"] = true, ["Prefix"] = true, ["Tag"] = true, nil }

function asserts.AssertLifecycleRuleFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleRuleFilter to be of type 'table'")
	if struct["And"] then asserts.AssertLifecycleRuleAndOperator(struct["And"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then asserts.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleRuleFilter[k], "LifecycleRuleFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleRuleFilter
-- <p>The Filter is used to identify objects that a Lifecycle Rule applies to. A Filter must have exactly one of Prefix, Tag, or And specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * And [LifecycleRuleAndOperator] 
-- * Prefix [Prefix] <p>Prefix identifying one or more objects to which the rule applies.</p>
-- * Tag [Tag] <p>This tag must exist in the object's tag set in order for the rule to apply.</p>
-- @return LifecycleRuleFilter structure as a key-value pair table
function M.LifecycleRuleFilter(args)
	assert(args, "You must provide an argument table when creating LifecycleRuleFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertLifecycleRuleFilter(all_args)
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Grantee [Grantee] 
-- * Permission [Permission] <p>Specifies the permission given to the grantee.</p>
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

keys.InventoryFilter = { ["Prefix"] = true, nil }

function asserts.AssertInventoryFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryFilter to be of type 'table'")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryFilter[k], "InventoryFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryFilter
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] <p>The prefix that an object must have to be included in the inventory results.</p>
-- Required key: Prefix
-- @return InventoryFilter structure as a key-value pair table
function M.InventoryFilter(args)
	assert(args, "You must provide an argument table when creating InventoryFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertInventoryFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MultipartUpload = { ["Initiator"] = true, ["Initiated"] = true, ["UploadId"] = true, ["StorageClass"] = true, ["Key"] = true, ["Owner"] = true, nil }

function asserts.AssertMultipartUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MultipartUpload to be of type 'table'")
	if struct["Initiator"] then asserts.AssertInitiator(struct["Initiator"]) end
	if struct["Initiated"] then asserts.AssertInitiated(struct["Initiated"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	for k,_ in pairs(struct) do
		assert(keys.MultipartUpload[k], "MultipartUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MultipartUpload
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Initiator [Initiator] <p>Identifies who initiated the multipart upload.</p>
-- * Initiated [Initiated] <p>Date and time at which the multipart upload was initiated.</p>
-- * UploadId [MultipartUploadId] <p>Upload ID that identifies the multipart upload.</p>
-- * StorageClass [StorageClass] <p>The class of storage used to store the object.</p>
-- * Key [ObjectKey] <p>Key of the object for which the multipart upload was initiated.</p>
-- * Owner [Owner] 
-- @return MultipartUpload structure as a key-value pair table
function M.MultipartUpload(args)
	assert(args, "You must provide an argument table when creating MultipartUpload")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Initiator"] = args["Initiator"],
		["Initiated"] = args["Initiated"],
		["UploadId"] = args["UploadId"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["Owner"] = args["Owner"],
	}
	asserts.AssertMultipartUpload(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Part = { ["LastModified"] = true, ["PartNumber"] = true, ["ETag"] = true, ["Size"] = true, nil }

function asserts.AssertPart(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Part to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["PartNumber"] then asserts.AssertPartNumber(struct["PartNumber"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["Size"] then asserts.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.Part[k], "Part contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Part
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] <p>Date and time at which the part was uploaded.</p>
-- * PartNumber [PartNumber] <p>Part number identifying the part. This is a positive integer between 1 and 10,000.</p>
-- * ETag [ETag] <p>Entity tag returned when the part was uploaded.</p>
-- * Size [Size] <p>Size of the uploaded part data.</p>
-- @return Part structure as a key-value pair table
function M.Part(args)
	assert(args, "You must provide an argument table when creating Part")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["PartNumber"] = args["PartNumber"],
		["ETag"] = args["ETag"],
		["Size"] = args["Size"],
	}
	asserts.AssertPart(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketTaggingOutput = { ["TagSet"] = true, nil }

function asserts.AssertGetBucketTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketTaggingOutput to be of type 'table'")
	assert(struct["TagSet"], "Expected key TagSet to exist in table")
	if struct["TagSet"] then asserts.AssertTagSet(struct["TagSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketTaggingOutput[k], "GetBucketTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketTaggingOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagSet [TagSet] 
-- Required key: TagSet
-- @return GetBucketTaggingOutput structure as a key-value pair table
function M.GetBucketTaggingOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketTaggingOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagSet"] = args["TagSet"],
	}
	asserts.AssertGetBucketTaggingOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudFunctionConfiguration = { ["InvocationRole"] = true, ["CloudFunction"] = true, ["Events"] = true, ["Id"] = true, ["Event"] = true, nil }

function asserts.AssertCloudFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFunctionConfiguration to be of type 'table'")
	if struct["InvocationRole"] then asserts.AssertCloudFunctionInvocationRole(struct["InvocationRole"]) end
	if struct["CloudFunction"] then asserts.AssertCloudFunction(struct["CloudFunction"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	if struct["Id"] then asserts.AssertNotificationId(struct["Id"]) end
	if struct["Event"] then asserts.AssertEvent(struct["Event"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFunctionConfiguration[k], "CloudFunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFunctionConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvocationRole [CloudFunctionInvocationRole] 
-- * CloudFunction [CloudFunction] 
-- * Events [EventList] 
-- * Id [NotificationId] 
-- * Event [Event] 
-- @return CloudFunctionConfiguration structure as a key-value pair table
function M.CloudFunctionConfiguration(args)
	assert(args, "You must provide an argument table when creating CloudFunctionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InvocationRole"] = args["InvocationRole"],
		["CloudFunction"] = args["CloudFunction"],
		["Events"] = args["Events"],
		["Id"] = args["Id"],
		["Event"] = args["Event"],
	}
	asserts.AssertCloudFunctionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyObjectRequest = { ["RequestPayer"] = true, ["CopySourceIfModifiedSince"] = true, ["CopySourceIfUnmodifiedSince"] = true, ["ContentEncoding"] = true, ["CopySourceSSECustomerKey"] = true, ["StorageClass"] = true, ["GrantReadACP"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["ContentDisposition"] = true, ["Metadata"] = true, ["SSECustomerKey"] = true, ["WebsiteRedirectLocation"] = true, ["CopySource"] = true, ["Expires"] = true, ["Key"] = true, ["CacheControl"] = true, ["Tagging"] = true, ["CopySourceSSECustomerAlgorithm"] = true, ["Bucket"] = true, ["GrantRead"] = true, ["GrantWriteACP"] = true, ["CopySourceSSECustomerKeyMD5"] = true, ["ACL"] = true, ["GrantFullControl"] = true, ["CopySourceIfMatch"] = true, ["SSECustomerAlgorithm"] = true, ["ContentType"] = true, ["ContentLanguage"] = true, ["TaggingDirective"] = true, ["MetadataDirective"] = true, ["CopySourceIfNoneMatch"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertCopyObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["CopySource"], "Expected key CopySource to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["CopySourceIfModifiedSince"] then asserts.AssertCopySourceIfModifiedSince(struct["CopySourceIfModifiedSince"]) end
	if struct["CopySourceIfUnmodifiedSince"] then asserts.AssertCopySourceIfUnmodifiedSince(struct["CopySourceIfUnmodifiedSince"]) end
	if struct["ContentEncoding"] then asserts.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["CopySourceSSECustomerKey"] then asserts.AssertCopySourceSSECustomerKey(struct["CopySourceSSECustomerKey"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["GrantReadACP"] then asserts.AssertGrantReadACP(struct["GrantReadACP"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then asserts.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["WebsiteRedirectLocation"] then asserts.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["CopySource"] then asserts.AssertCopySource(struct["CopySource"]) end
	if struct["Expires"] then asserts.AssertExpires(struct["Expires"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["CacheControl"] then asserts.AssertCacheControl(struct["CacheControl"]) end
	if struct["Tagging"] then asserts.AssertTaggingHeader(struct["Tagging"]) end
	if struct["CopySourceSSECustomerAlgorithm"] then asserts.AssertCopySourceSSECustomerAlgorithm(struct["CopySourceSSECustomerAlgorithm"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["GrantRead"] then asserts.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantWriteACP"] then asserts.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["CopySourceSSECustomerKeyMD5"] then asserts.AssertCopySourceSSECustomerKeyMD5(struct["CopySourceSSECustomerKeyMD5"]) end
	if struct["ACL"] then asserts.AssertObjectCannedACL(struct["ACL"]) end
	if struct["GrantFullControl"] then asserts.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["CopySourceIfMatch"] then asserts.AssertCopySourceIfMatch(struct["CopySourceIfMatch"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then asserts.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["TaggingDirective"] then asserts.AssertTaggingDirective(struct["TaggingDirective"]) end
	if struct["MetadataDirective"] then asserts.AssertMetadataDirective(struct["MetadataDirective"]) end
	if struct["CopySourceIfNoneMatch"] then asserts.AssertCopySourceIfNoneMatch(struct["CopySourceIfNoneMatch"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyObjectRequest[k], "CopyObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPayer [RequestPayer] 
-- * CopySourceIfModifiedSince [CopySourceIfModifiedSince] <p>Copies the object if it has been modified since the specified time.</p>
-- * CopySourceIfUnmodifiedSince [CopySourceIfUnmodifiedSince] <p>Copies the object if it hasn't been modified since the specified time.</p>
-- * ContentEncoding [ContentEncoding] <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.</p>
-- * CopySourceSSECustomerKey [CopySourceSSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.</p>
-- * StorageClass [StorageClass] <p>The type of storage to use for the object. Defaults to 'STANDARD'.</p>
-- * GrantReadACP [GrantReadACP] <p>Allows grantee to read the object ACL.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version</p>
-- * ContentDisposition [ContentDisposition] <p>Specifies presentational information for the object.</p>
-- * Metadata [Metadata] <p>A map of metadata to store with the object in S3.</p>
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.</p>
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] <p>If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.</p>
-- * CopySource [CopySource] <p>The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.</p>
-- * Expires [Expires] <p>The date and time at which the object is no longer cacheable.</p>
-- * Key [ObjectKey] 
-- * CacheControl [CacheControl] <p>Specifies caching behavior along the request/reply chain.</p>
-- * Tagging [TaggingHeader] <p>The tag-set for the object destination object this value must be used in conjunction with the TaggingDirective. The tag-set must be encoded as URL Query parameters</p>
-- * CopySourceSSECustomerAlgorithm [CopySourceSSECustomerAlgorithm] <p>Specifies the algorithm to use when decrypting the source object (e.g., AES256).</p>
-- * Bucket [BucketName] 
-- * GrantRead [GrantRead] <p>Allows grantee to read the object data and its metadata.</p>
-- * GrantWriteACP [GrantWriteACP] <p>Allows grantee to write the ACL for the applicable object.</p>
-- * CopySourceSSECustomerKeyMD5 [CopySourceSSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- * ACL [ObjectCannedACL] <p>The canned ACL to apply to the object.</p>
-- * GrantFullControl [GrantFullControl] <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
-- * CopySourceIfMatch [CopySourceIfMatch] <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * ContentType [ContentType] <p>A standard MIME type describing the format of the object data.</p>
-- * ContentLanguage [ContentLanguage] <p>The language the content is in.</p>
-- * TaggingDirective [TaggingDirective] <p>Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request.</p>
-- * MetadataDirective [MetadataDirective] <p>Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request.</p>
-- * CopySourceIfNoneMatch [CopySourceIfNoneMatch] <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- Required key: Bucket
-- Required key: CopySource
-- Required key: Key
-- @return CopyObjectRequest structure as a key-value pair table
function M.CopyObjectRequest(args)
	assert(args, "You must provide an argument table when creating CopyObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Key}"] = args["Key"],
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["x-amz-copy-source-if-modified-since"] = args["CopySourceIfModifiedSince"],
        ["x-amz-copy-source-if-unmodified-since"] = args["CopySourceIfUnmodifiedSince"],
        ["Content-Encoding"] = args["ContentEncoding"],
        ["x-amz-copy-source-server-side-encryption-customer-key"] = args["CopySourceSSECustomerKey"],
        ["x-amz-storage-class"] = args["StorageClass"],
        ["x-amz-grant-read-acp"] = args["GrantReadACP"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["Content-Disposition"] = args["ContentDisposition"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["x-amz-website-redirect-location"] = args["WebsiteRedirectLocation"],
        ["x-amz-copy-source"] = args["CopySource"],
        ["Expires"] = args["Expires"],
        ["Cache-Control"] = args["CacheControl"],
        ["x-amz-tagging"] = args["Tagging"],
        ["x-amz-copy-source-server-side-encryption-customer-algorithm"] = args["CopySourceSSECustomerAlgorithm"],
        ["x-amz-grant-read"] = args["GrantRead"],
        ["x-amz-grant-write-acp"] = args["GrantWriteACP"],
        ["x-amz-copy-source-server-side-encryption-customer-key-MD5"] = args["CopySourceSSECustomerKeyMD5"],
        ["x-amz-acl"] = args["ACL"],
        ["x-amz-grant-full-control"] = args["GrantFullControl"],
        ["x-amz-copy-source-if-match"] = args["CopySourceIfMatch"],
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["Content-Type"] = args["ContentType"],
        ["Content-Language"] = args["ContentLanguage"],
        ["x-amz-tagging-directive"] = args["TaggingDirective"],
        ["x-amz-metadata-directive"] = args["MetadataDirective"],
        ["x-amz-copy-source-if-none-match"] = args["CopySourceIfNoneMatch"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["RequestPayer"] = args["RequestPayer"],
		["CopySourceIfModifiedSince"] = args["CopySourceIfModifiedSince"],
		["CopySourceIfUnmodifiedSince"] = args["CopySourceIfUnmodifiedSince"],
		["ContentEncoding"] = args["ContentEncoding"],
		["CopySourceSSECustomerKey"] = args["CopySourceSSECustomerKey"],
		["StorageClass"] = args["StorageClass"],
		["GrantReadACP"] = args["GrantReadACP"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["ContentDisposition"] = args["ContentDisposition"],
		["Metadata"] = args["Metadata"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["WebsiteRedirectLocation"] = args["WebsiteRedirectLocation"],
		["CopySource"] = args["CopySource"],
		["Expires"] = args["Expires"],
		["Key"] = args["Key"],
		["CacheControl"] = args["CacheControl"],
		["Tagging"] = args["Tagging"],
		["CopySourceSSECustomerAlgorithm"] = args["CopySourceSSECustomerAlgorithm"],
		["Bucket"] = args["Bucket"],
		["GrantRead"] = args["GrantRead"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["CopySourceSSECustomerKeyMD5"] = args["CopySourceSSECustomerKeyMD5"],
		["ACL"] = args["ACL"],
		["GrantFullControl"] = args["GrantFullControl"],
		["CopySourceIfMatch"] = args["CopySourceIfMatch"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ContentType"] = args["ContentType"],
		["ContentLanguage"] = args["ContentLanguage"],
		["TaggingDirective"] = args["TaggingDirective"],
		["MetadataDirective"] = args["MetadataDirective"],
		["CopySourceIfNoneMatch"] = args["CopySourceIfNoneMatch"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertCopyObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateMultipartUploadOutput = { ["SSECustomerAlgorithm"] = true, ["AbortRuleId"] = true, ["AbortDate"] = true, ["Bucket"] = true, ["RequestCharged"] = true, ["UploadId"] = true, ["Key"] = true, ["ServerSideEncryption"] = true, ["SSECustomerKeyMD5"] = true, ["SSEKMSKeyId"] = true, nil }

function asserts.AssertCreateMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMultipartUploadOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["AbortRuleId"] then asserts.AssertAbortRuleId(struct["AbortRuleId"]) end
	if struct["AbortDate"] then asserts.AssertAbortDate(struct["AbortDate"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMultipartUploadOutput[k], "CreateMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMultipartUploadOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * AbortRuleId [AbortRuleId] <p>Id of the lifecycle rule that makes a multipart upload eligible for abort operation.</p>
-- * AbortDate [AbortDate] <p>Date when multipart upload will become eligible for abort operation by lifecycle.</p>
-- * Bucket [BucketName] <p>Name of the bucket to which the multipart upload was initiated.</p>
-- * RequestCharged [RequestCharged] 
-- * UploadId [MultipartUploadId] <p>ID for the initiated multipart upload.</p>
-- * Key [ObjectKey] <p>Object key for which the multipart upload was initiated.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- @return CreateMultipartUploadOutput structure as a key-value pair table
function M.CreateMultipartUploadOutput(args)
	assert(args, "You must provide an argument table when creating CreateMultipartUploadOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-abort-rule-id"] = args["AbortRuleId"],
        ["x-amz-abort-date"] = args["AbortDate"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["AbortRuleId"] = args["AbortRuleId"],
		["AbortDate"] = args["AbortDate"],
		["Bucket"] = args["Bucket"],
		["RequestCharged"] = args["RequestCharged"],
		["UploadId"] = args["UploadId"],
		["Key"] = args["Key"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertCreateMultipartUploadOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputSerialization = { ["JSON"] = true, ["CSV"] = true, nil }

function asserts.AssertOutputSerialization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputSerialization to be of type 'table'")
	if struct["JSON"] then asserts.AssertJSONOutput(struct["JSON"]) end
	if struct["CSV"] then asserts.AssertCSVOutput(struct["CSV"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputSerialization[k], "OutputSerialization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputSerialization
-- <p>Describes how results of the Select job are serialized.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JSON [JSONOutput] <p>Specifies JSON as request's output serialization format.</p>
-- * CSV [CSVOutput] <p>Describes the serialization of CSV-encoded Select results.</p>
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
		["JSON"] = args["JSON"],
		["CSV"] = args["CSV"],
	}
	asserts.AssertOutputSerialization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SseKmsEncryptedObjects = { ["Status"] = true, nil }

function asserts.AssertSseKmsEncryptedObjects(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SseKmsEncryptedObjects to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertSseKmsEncryptedObjectsStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.SseKmsEncryptedObjects[k], "SseKmsEncryptedObjects contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SseKmsEncryptedObjects
-- <p>Container for filter information of selection of KMS Encrypted S3 objects.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [SseKmsEncryptedObjectsStatus] <p>The replication for KMS encrypted S3 objects is disabled if status is not Enabled.</p>
-- Required key: Status
-- @return SseKmsEncryptedObjects structure as a key-value pair table
function M.SseKmsEncryptedObjects(args)
	assert(args, "You must provide an argument table when creating SseKmsEncryptedObjects")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertSseKmsEncryptedObjects(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsS3BucketDestination = { ["Prefix"] = true, ["BucketAccountId"] = true, ["Bucket"] = true, ["Format"] = true, nil }

function asserts.AssertAnalyticsS3BucketDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsS3BucketDestination to be of type 'table'")
	assert(struct["Format"], "Expected key Format to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["BucketAccountId"] then asserts.AssertAccountId(struct["BucketAccountId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Format"] then asserts.AssertAnalyticsS3ExportFileFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsS3BucketDestination[k], "AnalyticsS3BucketDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsS3BucketDestination
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] <p>The prefix to use when exporting data. The exported data begins with this prefix.</p>
-- * BucketAccountId [AccountId] <p>The account ID that owns the destination bucket. If no account ID is provided, the owner will not be validated prior to exporting data.</p>
-- * Bucket [BucketName] <p>The Amazon resource name (ARN) of the bucket to which data is exported.</p>
-- * Format [AnalyticsS3ExportFileFormat] <p>The file format used when exporting data to Amazon S3.</p>
-- Required key: Format
-- Required key: Bucket
-- @return AnalyticsS3BucketDestination structure as a key-value pair table
function M.AnalyticsS3BucketDestination(args)
	assert(args, "You must provide an argument table when creating AnalyticsS3BucketDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
		["BucketAccountId"] = args["BucketAccountId"],
		["Bucket"] = args["Bucket"],
		["Format"] = args["Format"],
	}
	asserts.AssertAnalyticsS3BucketDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketAnalyticsConfigurationRequest = { ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertGetBucketAnalyticsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAnalyticsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketAnalyticsConfigurationRequest[k], "GetBucketAnalyticsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAnalyticsConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket from which an analytics configuration is retrieved.</p>
-- * Id [AnalyticsId] <p>The identifier used to represent an analytics configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- @return GetBucketAnalyticsConfigurationRequest structure as a key-value pair table
function M.GetBucketAnalyticsConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketAnalyticsConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetBucketAnalyticsConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletedObject = { ["VersionId"] = true, ["DeleteMarkerVersionId"] = true, ["Key"] = true, ["DeleteMarker"] = true, nil }

function asserts.AssertDeletedObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletedObject to be of type 'table'")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["DeleteMarkerVersionId"] then asserts.AssertDeleteMarkerVersionId(struct["DeleteMarkerVersionId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["DeleteMarker"] then asserts.AssertDeleteMarker(struct["DeleteMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletedObject[k], "DeletedObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletedObject
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- * DeleteMarkerVersionId [DeleteMarkerVersionId] 
-- * Key [ObjectKey] 
-- * DeleteMarker [DeleteMarker] 
-- @return DeletedObject structure as a key-value pair table
function M.DeletedObject(args)
	assert(args, "You must provide an argument table when creating DeletedObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["DeleteMarkerVersionId"] = args["DeleteMarkerVersionId"],
		["Key"] = args["Key"],
		["DeleteMarker"] = args["DeleteMarker"],
	}
	asserts.AssertDeletedObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RedirectAllRequestsTo = { ["HostName"] = true, ["Protocol"] = true, nil }

function asserts.AssertRedirectAllRequestsTo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedirectAllRequestsTo to be of type 'table'")
	assert(struct["HostName"], "Expected key HostName to exist in table")
	if struct["HostName"] then asserts.AssertHostName(struct["HostName"]) end
	if struct["Protocol"] then asserts.AssertProtocol(struct["Protocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.RedirectAllRequestsTo[k], "RedirectAllRequestsTo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedirectAllRequestsTo
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostName [HostName] <p>Name of the host where requests will be redirected.</p>
-- * Protocol [Protocol] <p>Protocol to use (http, https) when redirecting requests. The default is the protocol that is used in the original request.</p>
-- Required key: HostName
-- @return RedirectAllRequestsTo structure as a key-value pair table
function M.RedirectAllRequestsTo(args)
	assert(args, "You must provide an argument table when creating RedirectAllRequestsTo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HostName"] = args["HostName"],
		["Protocol"] = args["Protocol"],
	}
	asserts.AssertRedirectAllRequestsTo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPartsRequest = { ["RequestPayer"] = true, ["Bucket"] = true, ["UploadId"] = true, ["Key"] = true, ["MaxParts"] = true, ["PartNumberMarker"] = true, nil }

function asserts.AssertListPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["UploadId"] then asserts.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["MaxParts"] then asserts.AssertMaxParts(struct["MaxParts"]) end
	if struct["PartNumberMarker"] then asserts.AssertPartNumberMarker(struct["PartNumberMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPartsRequest[k], "ListPartsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPayer [RequestPayer] 
-- * Bucket [BucketName] 
-- * UploadId [MultipartUploadId] <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
-- * Key [ObjectKey] 
-- * MaxParts [MaxParts] <p>Sets the maximum number of parts to return.</p>
-- * PartNumberMarker [PartNumberMarker] <p>Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.</p>
-- Required key: Bucket
-- Required key: Key
-- Required key: UploadId
-- @return ListPartsRequest structure as a key-value pair table
function M.ListPartsRequest(args)
	assert(args, "You must provide an argument table when creating ListPartsRequest")
    local query_args = { 
        ["uploadId"] = args["UploadId"],
        ["max-parts"] = args["MaxParts"],
        ["part-number-marker"] = args["PartNumberMarker"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["RequestPayer"] = args["RequestPayer"],
		["Bucket"] = args["Bucket"],
		["UploadId"] = args["UploadId"],
		["Key"] = args["Key"],
		["MaxParts"] = args["MaxParts"],
		["PartNumberMarker"] = args["PartNumberMarker"],
	}
	asserts.AssertListPartsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Redirect = { ["ReplaceKeyWith"] = true, ["HostName"] = true, ["Protocol"] = true, ["ReplaceKeyPrefixWith"] = true, ["HttpRedirectCode"] = true, nil }

function asserts.AssertRedirect(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Redirect to be of type 'table'")
	if struct["ReplaceKeyWith"] then asserts.AssertReplaceKeyWith(struct["ReplaceKeyWith"]) end
	if struct["HostName"] then asserts.AssertHostName(struct["HostName"]) end
	if struct["Protocol"] then asserts.AssertProtocol(struct["Protocol"]) end
	if struct["ReplaceKeyPrefixWith"] then asserts.AssertReplaceKeyPrefixWith(struct["ReplaceKeyPrefixWith"]) end
	if struct["HttpRedirectCode"] then asserts.AssertHttpRedirectCode(struct["HttpRedirectCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Redirect[k], "Redirect contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Redirect
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplaceKeyWith [ReplaceKeyWith] <p>The specific object key to use in the redirect request. For example, redirect request to error.html. Not required if one of the sibling is present. Can be present only if ReplaceKeyPrefixWith is not provided.</p>
-- * HostName [HostName] <p>The host name to use in the redirect request.</p>
-- * Protocol [Protocol] <p>Protocol to use (http, https) when redirecting requests. The default is the protocol that is used in the original request.</p>
-- * ReplaceKeyPrefixWith [ReplaceKeyPrefixWith] <p>The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix docs/ (objects in the docs/ folder) to documents/, you can set a condition block with KeyPrefixEquals set to docs/ and in the Redirect set ReplaceKeyPrefixWith to /documents. Not required if one of the siblings is present. Can be present only if ReplaceKeyWith is not provided.</p>
-- * HttpRedirectCode [HttpRedirectCode] <p>The HTTP redirect code to use on the response. Not required if one of the siblings is present.</p>
-- @return Redirect structure as a key-value pair table
function M.Redirect(args)
	assert(args, "You must provide an argument table when creating Redirect")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplaceKeyWith"] = args["ReplaceKeyWith"],
		["HostName"] = args["HostName"],
		["Protocol"] = args["Protocol"],
		["ReplaceKeyPrefixWith"] = args["ReplaceKeyPrefixWith"],
		["HttpRedirectCode"] = args["HttpRedirectCode"],
	}
	asserts.AssertRedirect(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebsiteConfiguration = { ["RedirectAllRequestsTo"] = true, ["IndexDocument"] = true, ["ErrorDocument"] = true, ["RoutingRules"] = true, nil }

function asserts.AssertWebsiteConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebsiteConfiguration to be of type 'table'")
	if struct["RedirectAllRequestsTo"] then asserts.AssertRedirectAllRequestsTo(struct["RedirectAllRequestsTo"]) end
	if struct["IndexDocument"] then asserts.AssertIndexDocument(struct["IndexDocument"]) end
	if struct["ErrorDocument"] then asserts.AssertErrorDocument(struct["ErrorDocument"]) end
	if struct["RoutingRules"] then asserts.AssertRoutingRules(struct["RoutingRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.WebsiteConfiguration[k], "WebsiteConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebsiteConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RedirectAllRequestsTo [RedirectAllRequestsTo] 
-- * IndexDocument [IndexDocument] 
-- * ErrorDocument [ErrorDocument] 
-- * RoutingRules [RoutingRules] 
-- @return WebsiteConfiguration structure as a key-value pair table
function M.WebsiteConfiguration(args)
	assert(args, "You must provide an argument table when creating WebsiteConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RedirectAllRequestsTo"] = args["RedirectAllRequestsTo"],
		["IndexDocument"] = args["IndexDocument"],
		["ErrorDocument"] = args["ErrorDocument"],
		["RoutingRules"] = args["RoutingRules"],
	}
	asserts.AssertWebsiteConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventoryEncryption = { ["SSES3"] = true, ["SSEKMS"] = true, nil }

function asserts.AssertInventoryEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryEncryption to be of type 'table'")
	if struct["SSES3"] then asserts.AssertSSES3(struct["SSES3"]) end
	if struct["SSEKMS"] then asserts.AssertSSEKMS(struct["SSEKMS"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryEncryption[k], "InventoryEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryEncryption
-- <p>Contains the type of server-side encryption used to encrypt the inventory results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSES3 [SSES3] <p>Specifies the use of SSE-S3 to encrypt delievered Inventory reports.</p>
-- * SSEKMS [SSEKMS] <p>Specifies the use of SSE-KMS to encrypt delievered Inventory reports.</p>
-- @return InventoryEncryption structure as a key-value pair table
function M.InventoryEncryption(args)
	assert(args, "You must provide an argument table when creating InventoryEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SSES3"] = args["SSES3"],
		["SSEKMS"] = args["SSEKMS"],
	}
	asserts.AssertInventoryEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadPartOutput = { ["SSECustomerAlgorithm"] = true, ["ServerSideEncryption"] = true, ["ETag"] = true, ["RequestCharged"] = true, ["SSECustomerKeyMD5"] = true, ["SSEKMSKeyId"] = true, nil }

function asserts.AssertUploadPartOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadPartOutput[k], "UploadPartOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * ETag [ETag] <p>Entity tag for the uploaded object.</p>
-- * RequestCharged [RequestCharged] 
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- @return UploadPartOutput structure as a key-value pair table
function M.UploadPartOutput(args)
	assert(args, "You must provide an argument table when creating UploadPartOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["ETag"] = args["ETag"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["ETag"] = args["ETag"],
		["RequestCharged"] = args["RequestCharged"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertUploadPartOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InventorySchedule = { ["Frequency"] = true, nil }

function asserts.AssertInventorySchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventorySchedule to be of type 'table'")
	assert(struct["Frequency"], "Expected key Frequency to exist in table")
	if struct["Frequency"] then asserts.AssertInventoryFrequency(struct["Frequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventorySchedule[k], "InventorySchedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventorySchedule
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Frequency [InventoryFrequency] <p>Specifies how frequently inventory results are produced.</p>
-- Required key: Frequency
-- @return InventorySchedule structure as a key-value pair table
function M.InventorySchedule(args)
	assert(args, "You must provide an argument table when creating InventorySchedule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Frequency"] = args["Frequency"],
	}
	asserts.AssertInventorySchedule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectsOutput = { ["Deleted"] = true, ["Errors"] = true, ["RequestCharged"] = true, nil }

function asserts.AssertDeleteObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectsOutput to be of type 'table'")
	if struct["Deleted"] then asserts.AssertDeletedObjects(struct["Deleted"]) end
	if struct["Errors"] then asserts.AssertErrors(struct["Errors"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectsOutput[k], "DeleteObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Deleted [DeletedObjects] 
-- * Errors [Errors] 
-- * RequestCharged [RequestCharged] 
-- @return DeleteObjectsOutput structure as a key-value pair table
function M.DeleteObjectsOutput(args)
	assert(args, "You must provide an argument table when creating DeleteObjectsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["Deleted"] = args["Deleted"],
		["Errors"] = args["Errors"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertDeleteObjectsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageClassAnalysisDataExport = { ["Destination"] = true, ["OutputSchemaVersion"] = true, nil }

function asserts.AssertStorageClassAnalysisDataExport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageClassAnalysisDataExport to be of type 'table'")
	assert(struct["OutputSchemaVersion"], "Expected key OutputSchemaVersion to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["Destination"] then asserts.AssertAnalyticsExportDestination(struct["Destination"]) end
	if struct["OutputSchemaVersion"] then asserts.AssertStorageClassAnalysisSchemaVersion(struct["OutputSchemaVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageClassAnalysisDataExport[k], "StorageClassAnalysisDataExport contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageClassAnalysisDataExport
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Destination [AnalyticsExportDestination] <p>The place to store the data for an analysis.</p>
-- * OutputSchemaVersion [StorageClassAnalysisSchemaVersion] <p>The version of the output schema to use when exporting data. Must be V_1.</p>
-- Required key: OutputSchemaVersion
-- Required key: Destination
-- @return StorageClassAnalysisDataExport structure as a key-value pair table
function M.StorageClassAnalysisDataExport(args)
	assert(args, "You must provide an argument table when creating StorageClassAnalysisDataExport")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Destination"] = args["Destination"],
		["OutputSchemaVersion"] = args["OutputSchemaVersion"],
	}
	asserts.AssertStorageClassAnalysisDataExport(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoutingRule = { ["Redirect"] = true, ["Condition"] = true, nil }

function asserts.AssertRoutingRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoutingRule to be of type 'table'")
	assert(struct["Redirect"], "Expected key Redirect to exist in table")
	if struct["Redirect"] then asserts.AssertRedirect(struct["Redirect"]) end
	if struct["Condition"] then asserts.AssertCondition(struct["Condition"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoutingRule[k], "RoutingRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoutingRule
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Redirect [Redirect] <p>Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can can specify a different error code to return.</p>
-- * Condition [Condition] <p>A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the /docs folder, redirect to the /documents folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.</p>
-- Required key: Redirect
-- @return RoutingRule structure as a key-value pair table
function M.RoutingRule(args)
	assert(args, "You must provide an argument table when creating RoutingRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Redirect"] = args["Redirect"],
		["Condition"] = args["Condition"],
	}
	asserts.AssertRoutingRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ParquetInput = { nil }

function asserts.AssertParquetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParquetInput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ParquetInput[k], "ParquetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParquetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ParquetInput structure as a key-value pair table
function M.ParquetInput(args)
	assert(args, "You must provide an argument table when creating ParquetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertParquetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectRequest = { ["RequestPayer"] = true, ["ContentEncoding"] = true, ["StorageClass"] = true, ["GrantReadACP"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["ContentDisposition"] = true, ["Metadata"] = true, ["Body"] = true, ["SSECustomerKey"] = true, ["WebsiteRedirectLocation"] = true, ["Expires"] = true, ["Key"] = true, ["CacheControl"] = true, ["Tagging"] = true, ["ContentLength"] = true, ["Bucket"] = true, ["GrantRead"] = true, ["GrantWriteACP"] = true, ["ACL"] = true, ["GrantFullControl"] = true, ["SSECustomerAlgorithm"] = true, ["ContentType"] = true, ["ContentLanguage"] = true, ["ContentMD5"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertPutObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentEncoding"] then asserts.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["GrantReadACP"] then asserts.AssertGrantReadACP(struct["GrantReadACP"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then asserts.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	if struct["Body"] then asserts.AssertBody(struct["Body"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["WebsiteRedirectLocation"] then asserts.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then asserts.AssertExpires(struct["Expires"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["CacheControl"] then asserts.AssertCacheControl(struct["CacheControl"]) end
	if struct["Tagging"] then asserts.AssertTaggingHeader(struct["Tagging"]) end
	if struct["ContentLength"] then asserts.AssertContentLength(struct["ContentLength"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["GrantRead"] then asserts.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantWriteACP"] then asserts.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["ACL"] then asserts.AssertObjectCannedACL(struct["ACL"]) end
	if struct["GrantFullControl"] then asserts.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then asserts.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectRequest[k], "PutObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPayer [RequestPayer] 
-- * ContentEncoding [ContentEncoding] <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.</p>
-- * StorageClass [StorageClass] <p>The type of storage to use for the object. Defaults to 'STANDARD'.</p>
-- * GrantReadACP [GrantReadACP] <p>Allows grantee to read the object ACL.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * SSEKMSKeyId [SSEKMSKeyId] <p>Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version</p>
-- * ContentDisposition [ContentDisposition] <p>Specifies presentational information for the object.</p>
-- * Metadata [Metadata] <p>A map of metadata to store with the object in S3.</p>
-- * Body [Body] <p>Object data.</p>
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.</p>
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] <p>If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.</p>
-- * Expires [Expires] <p>The date and time at which the object is no longer cacheable.</p>
-- * Key [ObjectKey] <p>Object key for which the PUT operation was initiated.</p>
-- * CacheControl [CacheControl] <p>Specifies caching behavior along the request/reply chain.</p>
-- * Tagging [TaggingHeader] <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters</p>
-- * ContentLength [ContentLength] <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.</p>
-- * Bucket [BucketName] <p>Name of the bucket to which the PUT operation was initiated.</p>
-- * GrantRead [GrantRead] <p>Allows grantee to read the object data and its metadata.</p>
-- * GrantWriteACP [GrantWriteACP] <p>Allows grantee to write the ACL for the applicable object.</p>
-- * ACL [ObjectCannedACL] <p>The canned ACL to apply to the object.</p>
-- * GrantFullControl [GrantFullControl] <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * ContentType [ContentType] <p>A standard MIME type describing the format of the object data.</p>
-- * ContentLanguage [ContentLanguage] <p>The language the content is in.</p>
-- * ContentMD5 [ContentMD5] <p>The base64-encoded 128-bit MD5 digest of the part data.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- Required key: Bucket
-- Required key: Key
-- @return PutObjectRequest structure as a key-value pair table
function M.PutObjectRequest(args)
	assert(args, "You must provide an argument table when creating PutObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Key}"] = args["Key"],
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["Content-Encoding"] = args["ContentEncoding"],
        ["x-amz-storage-class"] = args["StorageClass"],
        ["x-amz-grant-read-acp"] = args["GrantReadACP"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["Content-Disposition"] = args["ContentDisposition"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["x-amz-website-redirect-location"] = args["WebsiteRedirectLocation"],
        ["Expires"] = args["Expires"],
        ["Cache-Control"] = args["CacheControl"],
        ["x-amz-tagging"] = args["Tagging"],
        ["Content-Length"] = args["ContentLength"],
        ["x-amz-grant-read"] = args["GrantRead"],
        ["x-amz-grant-write-acp"] = args["GrantWriteACP"],
        ["x-amz-acl"] = args["ACL"],
        ["x-amz-grant-full-control"] = args["GrantFullControl"],
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["Content-Type"] = args["ContentType"],
        ["Content-Language"] = args["ContentLanguage"],
        ["Content-MD5"] = args["ContentMD5"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["RequestPayer"] = args["RequestPayer"],
		["ContentEncoding"] = args["ContentEncoding"],
		["StorageClass"] = args["StorageClass"],
		["GrantReadACP"] = args["GrantReadACP"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["ContentDisposition"] = args["ContentDisposition"],
		["Metadata"] = args["Metadata"],
		["Body"] = args["Body"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["WebsiteRedirectLocation"] = args["WebsiteRedirectLocation"],
		["Expires"] = args["Expires"],
		["Key"] = args["Key"],
		["CacheControl"] = args["CacheControl"],
		["Tagging"] = args["Tagging"],
		["ContentLength"] = args["ContentLength"],
		["Bucket"] = args["Bucket"],
		["GrantRead"] = args["GrantRead"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["ACL"] = args["ACL"],
		["GrantFullControl"] = args["GrantFullControl"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ContentType"] = args["ContentType"],
		["ContentLanguage"] = args["ContentLanguage"],
		["ContentMD5"] = args["ContentMD5"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertPutObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ObjectVersion = { ["LastModified"] = true, ["VersionId"] = true, ["ETag"] = true, ["StorageClass"] = true, ["Key"] = true, ["Owner"] = true, ["IsLatest"] = true, ["Size"] = true, nil }

function asserts.AssertObjectVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectVersion to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["StorageClass"] then asserts.AssertObjectVersionStorageClass(struct["StorageClass"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["IsLatest"] then asserts.AssertIsLatest(struct["IsLatest"]) end
	if struct["Size"] then asserts.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectVersion[k], "ObjectVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectVersion
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] <p>Date and time the object was last modified.</p>
-- * VersionId [ObjectVersionId] <p>Version ID of an object.</p>
-- * ETag [ETag] 
-- * StorageClass [ObjectVersionStorageClass] <p>The class of storage used to store the object.</p>
-- * Key [ObjectKey] <p>The object key.</p>
-- * Owner [Owner] 
-- * IsLatest [IsLatest] <p>Specifies whether the object is (true) or is not (false) the latest version of an object.</p>
-- * Size [Size] <p>Size in bytes of the object.</p>
-- @return ObjectVersion structure as a key-value pair table
function M.ObjectVersion(args)
	assert(args, "You must provide an argument table when creating ObjectVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["Owner"] = args["Owner"],
		["IsLatest"] = args["IsLatest"],
		["Size"] = args["Size"],
	}
	asserts.AssertObjectVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBucketInventoryConfigurationsOutput = { ["NextContinuationToken"] = true, ["InventoryConfigurationList"] = true, ["ContinuationToken"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListBucketInventoryConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketInventoryConfigurationsOutput to be of type 'table'")
	if struct["NextContinuationToken"] then asserts.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["InventoryConfigurationList"] then asserts.AssertInventoryConfigurationList(struct["InventoryConfigurationList"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketInventoryConfigurationsOutput[k], "ListBucketInventoryConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketInventoryConfigurationsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextContinuationToken [NextToken] <p>The marker used to continue this inventory configuration listing. Use the NextContinuationToken from this response to continue the listing in a subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>
-- * InventoryConfigurationList [InventoryConfigurationList] <p>The list of inventory configurations for a bucket.</p>
-- * ContinuationToken [Token] <p>If sent in the request, the marker that is used as a starting point for this inventory configuration list response.</p>
-- * IsTruncated [IsTruncated] <p>Indicates whether the returned list of inventory configurations is truncated in this response. A value of true indicates that the list is truncated.</p>
-- @return ListBucketInventoryConfigurationsOutput structure as a key-value pair table
function M.ListBucketInventoryConfigurationsOutput(args)
	assert(args, "You must provide an argument table when creating ListBucketInventoryConfigurationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextContinuationToken"] = args["NextContinuationToken"],
		["InventoryConfigurationList"] = args["InventoryConfigurationList"],
		["ContinuationToken"] = args["ContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListBucketInventoryConfigurationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectTaggingOutput = { ["VersionId"] = true, ["TagSet"] = true, nil }

function asserts.AssertGetObjectTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTaggingOutput to be of type 'table'")
	assert(struct["TagSet"], "Expected key TagSet to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["TagSet"] then asserts.AssertTagSet(struct["TagSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectTaggingOutput[k], "GetObjectTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTaggingOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- * TagSet [TagSet] 
-- Required key: TagSet
-- @return GetObjectTaggingOutput structure as a key-value pair table
function M.GetObjectTaggingOutput(args)
	assert(args, "You must provide an argument table when creating GetObjectTaggingOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-version-id"] = args["VersionId"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["TagSet"] = args["TagSet"],
	}
	asserts.AssertGetObjectTaggingOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CSVInput = { ["QuoteCharacter"] = true, ["FieldDelimiter"] = true, ["QuoteEscapeCharacter"] = true, ["RecordDelimiter"] = true, ["Comments"] = true, ["AllowQuotedRecordDelimiter"] = true, ["FileHeaderInfo"] = true, nil }

function asserts.AssertCSVInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CSVInput to be of type 'table'")
	if struct["QuoteCharacter"] then asserts.AssertQuoteCharacter(struct["QuoteCharacter"]) end
	if struct["FieldDelimiter"] then asserts.AssertFieldDelimiter(struct["FieldDelimiter"]) end
	if struct["QuoteEscapeCharacter"] then asserts.AssertQuoteEscapeCharacter(struct["QuoteEscapeCharacter"]) end
	if struct["RecordDelimiter"] then asserts.AssertRecordDelimiter(struct["RecordDelimiter"]) end
	if struct["Comments"] then asserts.AssertComments(struct["Comments"]) end
	if struct["AllowQuotedRecordDelimiter"] then asserts.AssertAllowQuotedRecordDelimiter(struct["AllowQuotedRecordDelimiter"]) end
	if struct["FileHeaderInfo"] then asserts.AssertFileHeaderInfo(struct["FileHeaderInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.CSVInput[k], "CSVInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CSVInput
-- <p>Describes how a CSV-formatted input object is formatted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuoteCharacter [QuoteCharacter] <p>Value used for escaping where the field delimiter is part of the value.</p>
-- * FieldDelimiter [FieldDelimiter] <p>Value used to separate individual fields in a record.</p>
-- * QuoteEscapeCharacter [QuoteEscapeCharacter] <p>Single character used for escaping the quote character inside an already escaped value.</p>
-- * RecordDelimiter [RecordDelimiter] <p>Value used to separate individual records.</p>
-- * Comments [Comments] <p>Single character used to indicate a row should be ignored when present at the start of a row.</p>
-- * AllowQuotedRecordDelimiter [AllowQuotedRecordDelimiter] <p>Specifies that CSV field values may contain quoted record delimiters and such records should be allowed. Default value is FALSE. Setting this value to TRUE may lower performance.</p>
-- * FileHeaderInfo [FileHeaderInfo] <p>Describes the first line of input. Valid values: None, Ignore, Use.</p>
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
		["AllowQuotedRecordDelimiter"] = args["AllowQuotedRecordDelimiter"],
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

keys.RestoreObjectOutput = { ["RestoreOutputPath"] = true, ["RequestCharged"] = true, nil }

function asserts.AssertRestoreObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreObjectOutput to be of type 'table'")
	if struct["RestoreOutputPath"] then asserts.AssertRestoreOutputPath(struct["RestoreOutputPath"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreObjectOutput[k], "RestoreObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RestoreOutputPath [RestoreOutputPath] <p>Indicates the path in the provided S3 output location where Select results will be restored to.</p>
-- * RequestCharged [RequestCharged] 
-- @return RestoreObjectOutput structure as a key-value pair table
function M.RestoreObjectOutput(args)
	assert(args, "You must provide an argument table when creating RestoreObjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-restore-output-path"] = args["RestoreOutputPath"],
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["RestoreOutputPath"] = args["RestoreOutputPath"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertRestoreObjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndEvent = { nil }

function asserts.AssertEndEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndEvent to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EndEvent[k], "EndEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndEvent
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EndEvent structure as a key-value pair table
function M.EndEvent(args)
	assert(args, "You must provide an argument table when creating EndEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEndEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketLoggingRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLoggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketLoggingRequest[k], "GetBucketLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLoggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketLoggingRequest structure as a key-value pair table
function M.GetBucketLoggingRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketLoggingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLoggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TopicConfiguration = { ["Filter"] = true, ["Id"] = true, ["TopicArn"] = true, ["Events"] = true, nil }

function asserts.AssertTopicConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicConfiguration to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["Filter"] then asserts.AssertNotificationConfigurationFilter(struct["Filter"]) end
	if struct["Id"] then asserts.AssertNotificationId(struct["Id"]) end
	if struct["TopicArn"] then asserts.AssertTopicArn(struct["TopicArn"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicConfiguration[k], "TopicConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicConfiguration
-- <p>Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NotificationConfigurationFilter] 
-- * Id [NotificationId] 
-- * TopicArn [TopicArn] <p>Amazon SNS topic ARN to which Amazon S3 will publish a message when it detects events of specified type.</p>
-- * Events [EventList] 
-- Required key: TopicArn
-- Required key: Events
-- @return TopicConfiguration structure as a key-value pair table
function M.TopicConfiguration(args)
	assert(args, "You must provide an argument table when creating TopicConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["Id"] = args["Id"],
		["TopicArn"] = args["TopicArn"],
		["Events"] = args["Events"],
	}
	asserts.AssertTopicConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketTaggingRequest = { ["ContentMD5"] = true, ["Bucket"] = true, ["Tagging"] = true, nil }

function asserts.AssertPutBucketTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Tagging"], "Expected key Tagging to exist in table")
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Tagging"] then asserts.AssertTagging(struct["Tagging"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketTaggingRequest[k], "PutBucketTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketTaggingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * Tagging [Tagging] 
-- Required key: Bucket
-- Required key: Tagging
-- @return PutBucketTaggingRequest structure as a key-value pair table
function M.PutBucketTaggingRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketTaggingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["Content-MD5"] = args["ContentMD5"],
    }
	local all_args = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["Tagging"] = args["Tagging"],
	}
	asserts.AssertPutBucketTaggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Bucket = { ["CreationDate"] = true, ["Name"] = true, nil }

function asserts.AssertBucket(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bucket to be of type 'table'")
	if struct["CreationDate"] then asserts.AssertCreationDate(struct["CreationDate"]) end
	if struct["Name"] then asserts.AssertBucketName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Bucket[k], "Bucket contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Bucket
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreationDate [CreationDate] <p>Date the bucket was created.</p>
-- * Name [BucketName] <p>The name of the bucket.</p>
-- @return Bucket structure as a key-value pair table
function M.Bucket(args)
	assert(args, "You must provide an argument table when creating Bucket")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreationDate"] = args["CreationDate"],
		["Name"] = args["Name"],
	}
	asserts.AssertBucket(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SelectObjectContentEventStream = { ["Records"] = true, ["End"] = true, ["Stats"] = true, ["Cont"] = true, ["Progress"] = true, nil }

function asserts.AssertSelectObjectContentEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectObjectContentEventStream to be of type 'table'")
	if struct["Records"] then asserts.AssertRecordsEvent(struct["Records"]) end
	if struct["End"] then asserts.AssertEndEvent(struct["End"]) end
	if struct["Stats"] then asserts.AssertStatsEvent(struct["Stats"]) end
	if struct["Cont"] then asserts.AssertContinuationEvent(struct["Cont"]) end
	if struct["Progress"] then asserts.AssertProgressEvent(struct["Progress"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectObjectContentEventStream[k], "SelectObjectContentEventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectObjectContentEventStream
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Records [RecordsEvent] <p>The Records Event.</p>
-- * End [EndEvent] <p>The End Event.</p>
-- * Stats [StatsEvent] <p>The Stats Event.</p>
-- * Cont [ContinuationEvent] <p>The Continuation Event.</p>
-- * Progress [ProgressEvent] <p>The Progress Event.</p>
-- @return SelectObjectContentEventStream structure as a key-value pair table
function M.SelectObjectContentEventStream(args)
	assert(args, "You must provide an argument table when creating SelectObjectContentEventStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Records"] = args["Records"],
		["End"] = args["End"],
		["Stats"] = args["Stats"],
		["Cont"] = args["Cont"],
		["Progress"] = args["Progress"],
	}
	asserts.AssertSelectObjectContentEventStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecycleExpiration = { ["Date"] = true, ["ExpiredObjectDeleteMarker"] = true, ["Days"] = true, nil }

function asserts.AssertLifecycleExpiration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleExpiration to be of type 'table'")
	if struct["Date"] then asserts.AssertDate(struct["Date"]) end
	if struct["ExpiredObjectDeleteMarker"] then asserts.AssertExpiredObjectDeleteMarker(struct["ExpiredObjectDeleteMarker"]) end
	if struct["Days"] then asserts.AssertDays(struct["Days"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecycleExpiration[k], "LifecycleExpiration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleExpiration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Date [Date] <p>Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.</p>
-- * ExpiredObjectDeleteMarker [ExpiredObjectDeleteMarker] <p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.</p>
-- * Days [Days] <p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.</p>
-- @return LifecycleExpiration structure as a key-value pair table
function M.LifecycleExpiration(args)
	assert(args, "You must provide an argument table when creating LifecycleExpiration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Date"] = args["Date"],
		["ExpiredObjectDeleteMarker"] = args["ExpiredObjectDeleteMarker"],
		["Days"] = args["Days"],
	}
	asserts.AssertLifecycleExpiration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SelectObjectContentRequest = { ["SSECustomerAlgorithm"] = true, ["ExpressionType"] = true, ["Bucket"] = true, ["SSECustomerKey"] = true, ["RequestProgress"] = true, ["InputSerialization"] = true, ["Key"] = true, ["SSECustomerKeyMD5"] = true, ["Expression"] = true, ["OutputSerialization"] = true, nil }

function asserts.AssertSelectObjectContentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SelectObjectContentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	assert(struct["ExpressionType"], "Expected key ExpressionType to exist in table")
	assert(struct["InputSerialization"], "Expected key InputSerialization to exist in table")
	assert(struct["OutputSerialization"], "Expected key OutputSerialization to exist in table")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ExpressionType"] then asserts.AssertExpressionType(struct["ExpressionType"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["RequestProgress"] then asserts.AssertRequestProgress(struct["RequestProgress"]) end
	if struct["InputSerialization"] then asserts.AssertInputSerialization(struct["InputSerialization"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["Expression"] then asserts.AssertExpression(struct["Expression"]) end
	if struct["OutputSerialization"] then asserts.AssertOutputSerialization(struct["OutputSerialization"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectObjectContentRequest[k], "SelectObjectContentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectObjectContentRequest
-- <p>Request to filter the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must also specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records, and returns only records that match the specified SQL expression. You must also specify the data serialization format for the response. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html">S3Select API Documentation</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>The SSE Algorithm used to encrypt the object. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html"> Server-Side Encryption (Using Customer-Provided Encryption Keys</a>. </p>
-- * ExpressionType [ExpressionType] <p>The type of the provided expression (e.g., SQL).</p>
-- * Bucket [BucketName] <p>The S3 Bucket.</p>
-- * SSECustomerKey [SSECustomerKey] <p>The SSE Customer Key. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html"> Server-Side Encryption (Using Customer-Provided Encryption Keys</a>. </p>
-- * RequestProgress [RequestProgress] <p>Specifies if periodic request progress information should be enabled.</p>
-- * InputSerialization [InputSerialization] <p>Describes the format of the data in the object that is being queried.</p>
-- * Key [ObjectKey] <p>The Object Key.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>The SSE Customer Key MD5. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html"> Server-Side Encryption (Using Customer-Provided Encryption Keys</a>. </p>
-- * Expression [Expression] <p>The expression that is used to query the object.</p>
-- * OutputSerialization [OutputSerialization] <p>Describes the format of the data that you want Amazon S3 to return in response.</p>
-- Required key: Bucket
-- Required key: Key
-- Required key: Expression
-- Required key: ExpressionType
-- Required key: InputSerialization
-- Required key: OutputSerialization
-- @return SelectObjectContentRequest structure as a key-value pair table
function M.SelectObjectContentRequest(args)
	assert(args, "You must provide an argument table when creating SelectObjectContentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ExpressionType"] = args["ExpressionType"],
		["Bucket"] = args["Bucket"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["RequestProgress"] = args["RequestProgress"],
		["InputSerialization"] = args["InputSerialization"],
		["Key"] = args["Key"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["Expression"] = args["Expression"],
		["OutputSerialization"] = args["OutputSerialization"],
	}
	asserts.AssertSelectObjectContentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Destination = { ["EncryptionConfiguration"] = true, ["Account"] = true, ["AccessControlTranslation"] = true, ["Bucket"] = true, ["StorageClass"] = true, nil }

function asserts.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["Account"] then asserts.AssertAccountId(struct["Account"]) end
	if struct["AccessControlTranslation"] then asserts.AssertAccessControlTranslation(struct["AccessControlTranslation"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.Destination[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
-- <p>Container for replication destination information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionConfiguration [EncryptionConfiguration] <p> Container that provides encryption-related information. You must specify this element if the <code>SourceSelectionCriteria</code> is specified. </p>
-- * Account [AccountId] <p> Account ID of the destination bucket. Currently Amazon S3 verifies this value only if Access Control Translation is enabled. </p> <p> In a cross-account scenario, if you tell Amazon S3 to change replica ownership to the AWS account that owns the destination bucket by adding the <code>AccessControlTranslation</code> element, this is the account ID of the destination bucket owner. </p>
-- * AccessControlTranslation [AccessControlTranslation] <p> Container for information regarding the access control for replicas. </p> <p> Use only in a cross-account scenario, where source and destination bucket owners are not the same, when you want to change replica ownership to the AWS account that owns the destination bucket. If you don't add this element to the replication configuration, the replicas are owned by same AWS account that owns the source object. </p>
-- * Bucket [BucketName] <p> Amazon resource name (ARN) of the bucket where you want Amazon S3 to store replicas of the object identified by the rule. </p> <p> If you have multiple rules in your replication configuration, all rules must specify the same bucket as the destination. A replication configuration can replicate objects only to one destination bucket. </p>
-- * StorageClass [StorageClass] <p>The class of storage used to store the object.</p>
-- Required key: Bucket
-- @return Destination structure as a key-value pair table
function M.Destination(args)
	assert(args, "You must provide an argument table when creating Destination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["Account"] = args["Account"],
		["AccessControlTranslation"] = args["AccessControlTranslation"],
		["Bucket"] = args["Bucket"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSES3 = { nil }

function asserts.AssertSSES3(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSES3 to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SSES3[k], "SSES3 contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSES3
-- <p>Specifies the use of SSE-S3 to encrypt delievered Inventory reports.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SSES3 structure as a key-value pair table
function M.SSES3(args)
	assert(args, "You must provide an argument table when creating SSES3")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSSES3(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBucketAnalyticsConfigurationsRequest = { ["Bucket"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertListBucketAnalyticsConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketAnalyticsConfigurationsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketAnalyticsConfigurationsRequest[k], "ListBucketAnalyticsConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketAnalyticsConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket from which analytics configurations are retrieved.</p>
-- * ContinuationToken [Token] <p>The ContinuationToken that represents a placeholder from where this request should begin.</p>
-- Required key: Bucket
-- @return ListBucketAnalyticsConfigurationsRequest structure as a key-value pair table
function M.ListBucketAnalyticsConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListBucketAnalyticsConfigurationsRequest")
    local query_args = { 
        ["continuation-token"] = args["ContinuationToken"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketAnalyticsConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricsFilter = { ["And"] = true, ["Prefix"] = true, ["Tag"] = true, nil }

function asserts.AssertMetricsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricsFilter to be of type 'table'")
	if struct["And"] then asserts.AssertMetricsAndOperator(struct["And"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then asserts.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricsFilter[k], "MetricsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricsFilter
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * And [MetricsAndOperator] <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.</p>
-- * Prefix [Prefix] <p>The prefix used when evaluating a metrics filter.</p>
-- * Tag [Tag] <p>The tag used when evaluating a metrics filter.</p>
-- @return MetricsFilter structure as a key-value pair table
function M.MetricsFilter(args)
	assert(args, "You must provide an argument table when creating MetricsFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertMetricsFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationConfiguration = { ["Rules"] = true, ["Role"] = true, nil }

function asserts.AssertReplicationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationConfiguration to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then asserts.AssertReplicationRules(struct["Rules"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationConfiguration[k], "ReplicationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationConfiguration
-- <p>Container for replication rules. You can add as many as 1,000 rules. Total replication configuration size can be up to 2 MB.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [ReplicationRules] <p>Container for one or more replication rules. Replication configuration must have at least one rule and can contain up to 1,000 rules. </p>
-- * Role [Role] <p>Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume when replicating the objects.</p>
-- Required key: Role
-- Required key: Rules
-- @return ReplicationConfiguration structure as a key-value pair table
function M.ReplicationConfiguration(args)
	assert(args, "You must provide an argument table when creating ReplicationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["Role"] = args["Role"],
	}
	asserts.AssertReplicationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMultipartUploadsRequest = { ["UploadIdMarker"] = true, ["Bucket"] = true, ["Delimiter"] = true, ["Prefix"] = true, ["KeyMarker"] = true, ["MaxUploads"] = true, ["EncodingType"] = true, nil }

function asserts.AssertListMultipartUploadsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["UploadIdMarker"] then asserts.AssertUploadIdMarker(struct["UploadIdMarker"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["KeyMarker"] then asserts.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["MaxUploads"] then asserts.AssertMaxUploads(struct["MaxUploads"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMultipartUploadsRequest[k], "ListMultipartUploadsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UploadIdMarker [UploadIdMarker] <p>Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored.</p>
-- * Bucket [BucketName] 
-- * Delimiter [Delimiter] <p>Character you use to group keys.</p>
-- * Prefix [Prefix] <p>Lists in-progress uploads only for those keys that begin with the specified prefix.</p>
-- * KeyMarker [KeyMarker] <p>Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin.</p>
-- * MaxUploads [MaxUploads] <p>Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.</p>
-- * EncodingType [EncodingType] 
-- Required key: Bucket
-- @return ListMultipartUploadsRequest structure as a key-value pair table
function M.ListMultipartUploadsRequest(args)
	assert(args, "You must provide an argument table when creating ListMultipartUploadsRequest")
    local query_args = { 
        ["upload-id-marker"] = args["UploadIdMarker"],
        ["delimiter"] = args["Delimiter"],
        ["prefix"] = args["Prefix"],
        ["key-marker"] = args["KeyMarker"],
        ["max-uploads"] = args["MaxUploads"],
        ["encoding-type"] = args["EncodingType"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UploadIdMarker"] = args["UploadIdMarker"],
		["Bucket"] = args["Bucket"],
		["Delimiter"] = args["Delimiter"],
		["Prefix"] = args["Prefix"],
		["KeyMarker"] = args["KeyMarker"],
		["MaxUploads"] = args["MaxUploads"],
		["EncodingType"] = args["EncodingType"],
	}
	asserts.AssertListMultipartUploadsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketPolicyRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketPolicyRequest[k], "GetBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketPolicyRequest structure as a key-value pair table
function M.GetBucketPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketWebsiteRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketWebsiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketWebsiteRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketWebsiteRequest[k], "DeleteBucketWebsiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketWebsiteRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketWebsiteRequest structure as a key-value pair table
function M.DeleteBucketWebsiteRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketWebsiteRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketWebsiteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectAclRequest = { ["VersionId"] = true, ["Bucket"] = true, ["RequestPayer"] = true, ["Key"] = true, nil }

function asserts.AssertGetObjectAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectAclRequest[k], "GetObjectAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectAclRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] <p>VersionId used to reference a specific version of the object.</p>
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return GetObjectAclRequest structure as a key-value pair table
function M.GetObjectAclRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectAclRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetObjectAclRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortMultipartUploadOutput = { ["RequestCharged"] = true, nil }

function asserts.AssertAbortMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortMultipartUploadOutput to be of type 'table'")
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortMultipartUploadOutput[k], "AbortMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortMultipartUploadOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestCharged [RequestCharged] 
-- @return AbortMultipartUploadOutput structure as a key-value pair table
function M.AbortMultipartUploadOutput(args)
	assert(args, "You must provide an argument table when creating AbortMultipartUploadOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertAbortMultipartUploadOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectTaggingOutput = { ["VersionId"] = true, nil }

function asserts.AssertPutObjectTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectTaggingOutput to be of type 'table'")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectTaggingOutput[k], "PutObjectTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectTaggingOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- @return PutObjectTaggingOutput structure as a key-value pair table
function M.PutObjectTaggingOutput(args)
	assert(args, "You must provide an argument table when creating PutObjectTaggingOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-version-id"] = args["VersionId"],
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
	}
	asserts.AssertPutObjectTaggingOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueueConfiguration = { ["Filter"] = true, ["Id"] = true, ["QueueArn"] = true, ["Events"] = true, nil }

function asserts.AssertQueueConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueConfiguration to be of type 'table'")
	assert(struct["QueueArn"], "Expected key QueueArn to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["Filter"] then asserts.AssertNotificationConfigurationFilter(struct["Filter"]) end
	if struct["Id"] then asserts.AssertNotificationId(struct["Id"]) end
	if struct["QueueArn"] then asserts.AssertQueueArn(struct["QueueArn"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueueConfiguration[k], "QueueConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueConfiguration
-- <p>Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NotificationConfigurationFilter] 
-- * Id [NotificationId] 
-- * QueueArn [QueueArn] <p>Amazon SQS queue ARN to which Amazon S3 will publish a message when it detects events of specified type.</p>
-- * Events [EventList] 
-- Required key: QueueArn
-- Required key: Events
-- @return QueueConfiguration structure as a key-value pair table
function M.QueueConfiguration(args)
	assert(args, "You must provide an argument table when creating QueueConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["Id"] = args["Id"],
		["QueueArn"] = args["QueueArn"],
		["Events"] = args["Events"],
	}
	asserts.AssertQueueConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectsV2Output = { ["Name"] = true, ["StartAfter"] = true, ["Prefix"] = true, ["ContinuationToken"] = true, ["MaxKeys"] = true, ["Delimiter"] = true, ["KeyCount"] = true, ["EncodingType"] = true, ["NextContinuationToken"] = true, ["IsTruncated"] = true, ["Contents"] = true, ["CommonPrefixes"] = true, nil }

function asserts.AssertListObjectsV2Output(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsV2Output to be of type 'table'")
	if struct["Name"] then asserts.AssertBucketName(struct["Name"]) end
	if struct["StartAfter"] then asserts.AssertStartAfter(struct["StartAfter"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	if struct["MaxKeys"] then asserts.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["KeyCount"] then asserts.AssertKeyCount(struct["KeyCount"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	if struct["NextContinuationToken"] then asserts.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["Contents"] then asserts.AssertObjectList(struct["Contents"]) end
	if struct["CommonPrefixes"] then asserts.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectsV2Output[k], "ListObjectsV2Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsV2Output
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [BucketName] <p>Name of the bucket to list.</p>
-- * StartAfter [StartAfter] <p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket</p>
-- * Prefix [Prefix] <p>Limits the response to keys that begin with the specified prefix.</p>
-- * ContinuationToken [Token] <p>ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key</p>
-- * MaxKeys [MaxKeys] <p>Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.</p>
-- * Delimiter [Delimiter] <p>A delimiter is a character you use to group keys.</p>
-- * KeyCount [KeyCount] <p>KeyCount is the number of keys returned with this request. KeyCount will always be less than equals to MaxKeys field. Say you ask for 50 keys, your result will include less than equals 50 keys </p>
-- * EncodingType [EncodingType] <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
-- * NextContinuationToken [NextToken] <p>NextContinuationToken is sent when isTruncated is true which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this NextContinuationToken. NextContinuationToken is obfuscated and is not a real key</p>
-- * IsTruncated [IsTruncated] <p>A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria.</p>
-- * Contents [ObjectList] <p>Metadata about each object returned.</p>
-- * CommonPrefixes [CommonPrefixList] <p>CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by delimiter</p>
-- @return ListObjectsV2Output structure as a key-value pair table
function M.ListObjectsV2Output(args)
	assert(args, "You must provide an argument table when creating ListObjectsV2Output")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["StartAfter"] = args["StartAfter"],
		["Prefix"] = args["Prefix"],
		["ContinuationToken"] = args["ContinuationToken"],
		["MaxKeys"] = args["MaxKeys"],
		["Delimiter"] = args["Delimiter"],
		["KeyCount"] = args["KeyCount"],
		["EncodingType"] = args["EncodingType"],
		["NextContinuationToken"] = args["NextContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
		["Contents"] = args["Contents"],
		["CommonPrefixes"] = args["CommonPrefixes"],
	}
	asserts.AssertListObjectsV2Output(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBucketCorsRequest = { ["Bucket"] = true, nil }

function asserts.AssertDeleteBucketCorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketCorsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBucketCorsRequest[k], "DeleteBucketCorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketCorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketCorsRequest structure as a key-value pair table
function M.DeleteBucketCorsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBucketCorsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketCorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CORSRule = { ["AllowedHeaders"] = true, ["ExposeHeaders"] = true, ["AllowedMethods"] = true, ["MaxAgeSeconds"] = true, ["AllowedOrigins"] = true, nil }

function asserts.AssertCORSRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CORSRule to be of type 'table'")
	assert(struct["AllowedMethods"], "Expected key AllowedMethods to exist in table")
	assert(struct["AllowedOrigins"], "Expected key AllowedOrigins to exist in table")
	if struct["AllowedHeaders"] then asserts.AssertAllowedHeaders(struct["AllowedHeaders"]) end
	if struct["ExposeHeaders"] then asserts.AssertExposeHeaders(struct["ExposeHeaders"]) end
	if struct["AllowedMethods"] then asserts.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MaxAgeSeconds"] then asserts.AssertMaxAgeSeconds(struct["MaxAgeSeconds"]) end
	if struct["AllowedOrigins"] then asserts.AssertAllowedOrigins(struct["AllowedOrigins"]) end
	for k,_ in pairs(struct) do
		assert(keys.CORSRule[k], "CORSRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CORSRule
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowedHeaders [AllowedHeaders] <p>Specifies which headers are allowed in a pre-flight OPTIONS request.</p>
-- * ExposeHeaders [ExposeHeaders] <p>One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).</p>
-- * AllowedMethods [AllowedMethods] <p>Identifies HTTP methods that the domain/origin specified in the rule is allowed to execute.</p>
-- * MaxAgeSeconds [MaxAgeSeconds] <p>The time in seconds that your browser is to cache the preflight response for the specified resource.</p>
-- * AllowedOrigins [AllowedOrigins] <p>One or more origins you want customers to be able to access the bucket from.</p>
-- Required key: AllowedMethods
-- Required key: AllowedOrigins
-- @return CORSRule structure as a key-value pair table
function M.CORSRule(args)
	assert(args, "You must provide an argument table when creating CORSRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowedHeaders"] = args["AllowedHeaders"],
		["ExposeHeaders"] = args["ExposeHeaders"],
		["AllowedMethods"] = args["AllowedMethods"],
		["MaxAgeSeconds"] = args["MaxAgeSeconds"],
		["AllowedOrigins"] = args["AllowedOrigins"],
	}
	asserts.AssertCORSRule(all_args)
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
	assert(struct["EncryptionType"], "Expected key EncryptionType to exist in table")
	if struct["KMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["KMSKeyId"]) end
	if struct["EncryptionType"] then asserts.AssertServerSideEncryption(struct["EncryptionType"]) end
	if struct["KMSContext"] then asserts.AssertKMSContext(struct["KMSContext"]) end
	for k,_ in pairs(struct) do
		assert(keys.Encryption[k], "Encryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Encryption
-- <p>Describes the server-side encryption that will be applied to the restore results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KMSKeyId [SSEKMSKeyId] <p>If the encryption type is aws:kms, this optional value specifies the AWS KMS key ID to use for encryption of job results.</p>
-- * EncryptionType [ServerSideEncryption] <p>The server-side encryption algorithm used when storing job results in Amazon S3 (e.g., AES256, aws:kms).</p>
-- * KMSContext [KMSContext] <p>If the encryption type is aws:kms, this optional value can be used to specify the encryption context for the restore results.</p>
-- Required key: EncryptionType
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

keys.GetBucketRequestPaymentRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketRequestPaymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketRequestPaymentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketRequestPaymentRequest[k], "GetBucketRequestPaymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketRequestPaymentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketRequestPaymentRequest structure as a key-value pair table
function M.GetBucketRequestPaymentRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketRequestPaymentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketRequestPaymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationRuleAndOperator = { ["Prefix"] = true, ["Tags"] = true, nil }

function asserts.AssertReplicationRuleAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRuleAndOperator to be of type 'table'")
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then asserts.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationRuleAndOperator[k], "ReplicationRuleAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRuleAndOperator
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] 
-- * Tags [TagSet] 
-- @return ReplicationRuleAndOperator structure as a key-value pair table
function M.ReplicationRuleAndOperator(args)
	assert(args, "You must provide an argument table when creating ReplicationRuleAndOperator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertReplicationRuleAndOperator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketReplicationOutput = { ["ReplicationConfiguration"] = true, nil }

function asserts.AssertGetBucketReplicationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketReplicationOutput to be of type 'table'")
	if struct["ReplicationConfiguration"] then asserts.AssertReplicationConfiguration(struct["ReplicationConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketReplicationOutput[k], "GetBucketReplicationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketReplicationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationConfiguration [ReplicationConfiguration] 
-- @return GetBucketReplicationOutput structure as a key-value pair table
function M.GetBucketReplicationOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketReplicationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationConfiguration"] = args["ReplicationConfiguration"],
	}
	asserts.AssertGetBucketReplicationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestPaymentConfiguration = { ["Payer"] = true, nil }

function asserts.AssertRequestPaymentConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestPaymentConfiguration to be of type 'table'")
	assert(struct["Payer"], "Expected key Payer to exist in table")
	if struct["Payer"] then asserts.AssertPayer(struct["Payer"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestPaymentConfiguration[k], "RequestPaymentConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestPaymentConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Payer [Payer] <p>Specifies who pays for the download and request fees.</p>
-- Required key: Payer
-- @return RequestPaymentConfiguration structure as a key-value pair table
function M.RequestPaymentConfiguration(args)
	assert(args, "You must provide an argument table when creating RequestPaymentConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Payer"] = args["Payer"],
	}
	asserts.AssertRequestPaymentConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationRuleFilter = { ["And"] = true, ["Prefix"] = true, ["Tag"] = true, nil }

function asserts.AssertReplicationRuleFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRuleFilter to be of type 'table'")
	if struct["And"] then asserts.AssertReplicationRuleAndOperator(struct["And"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then asserts.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationRuleFilter[k], "ReplicationRuleFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRuleFilter
-- <p>Filter that identifies subset of objects to which the replication rule applies. A <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or an <code>And</code> child element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * And [ReplicationRuleAndOperator] <p>Container for specifying rule filters. These filters determine the subset of objects to which the rule applies. The element is required only if you specify more than one filter. For example: </p> <ul> <li> <p>You specify both a <code>Prefix</code> and a <code>Tag</code> filters. Then you wrap these in an <code>And</code> tag.</p> </li> <li> <p>You specify filter based on multiple tags. Then you wrap the <code>Tag</code> elements in an <code>And</code> tag.</p> </li> </ul>
-- * Prefix [Prefix] <p>Object keyname prefix that identifies subset of objects to which the rule applies.</p>
-- * Tag [Tag] <p>Container for specifying a tag key and value. </p> <p>The rule applies only to objects having the tag in its tagset.</p>
-- @return ReplicationRuleFilter structure as a key-value pair table
function M.ReplicationRuleFilter(args)
	assert(args, "You must provide an argument table when creating ReplicationRuleFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertReplicationRuleFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketAclOutput = { ["Owner"] = true, ["Grants"] = true, nil }

function asserts.AssertGetBucketAclOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAclOutput to be of type 'table'")
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["Grants"] then asserts.AssertGrants(struct["Grants"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketAclOutput[k], "GetBucketAclOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAclOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [Owner] 
-- * Grants [Grants] <p>A list of grants.</p>
-- @return GetBucketAclOutput structure as a key-value pair table
function M.GetBucketAclOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketAclOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["Grants"] = args["Grants"],
	}
	asserts.AssertGetBucketAclOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBucketAnalyticsConfigurationsOutput = { ["AnalyticsConfigurationList"] = true, ["NextContinuationToken"] = true, ["IsTruncated"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertListBucketAnalyticsConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketAnalyticsConfigurationsOutput to be of type 'table'")
	if struct["AnalyticsConfigurationList"] then asserts.AssertAnalyticsConfigurationList(struct["AnalyticsConfigurationList"]) end
	if struct["NextContinuationToken"] then asserts.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketAnalyticsConfigurationsOutput[k], "ListBucketAnalyticsConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketAnalyticsConfigurationsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalyticsConfigurationList [AnalyticsConfigurationList] <p>The list of analytics configurations for a bucket.</p>
-- * NextContinuationToken [NextToken] <p>NextContinuationToken is sent when isTruncated is true, which indicates that there are more analytics configurations to list. The next request must include this NextContinuationToken. The token is obfuscated and is not a usable value.</p>
-- * IsTruncated [IsTruncated] <p>Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.</p>
-- * ContinuationToken [Token] <p>The ContinuationToken that represents where this request began.</p>
-- @return ListBucketAnalyticsConfigurationsOutput structure as a key-value pair table
function M.ListBucketAnalyticsConfigurationsOutput(args)
	assert(args, "You must provide an argument table when creating ListBucketAnalyticsConfigurationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalyticsConfigurationList"] = args["AnalyticsConfigurationList"],
		["NextContinuationToken"] = args["NextContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketAnalyticsConfigurationsOutput(all_args)
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
	assert(struct["InputSerialization"], "Expected key InputSerialization to exist in table")
	assert(struct["ExpressionType"], "Expected key ExpressionType to exist in table")
	assert(struct["Expression"], "Expected key Expression to exist in table")
	assert(struct["OutputSerialization"], "Expected key OutputSerialization to exist in table")
	if struct["ExpressionType"] then asserts.AssertExpressionType(struct["ExpressionType"]) end
	if struct["InputSerialization"] then asserts.AssertInputSerialization(struct["InputSerialization"]) end
	if struct["Expression"] then asserts.AssertExpression(struct["Expression"]) end
	if struct["OutputSerialization"] then asserts.AssertOutputSerialization(struct["OutputSerialization"]) end
	for k,_ in pairs(struct) do
		assert(keys.SelectParameters[k], "SelectParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SelectParameters
-- <p>Describes the parameters for Select job types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpressionType [ExpressionType] <p>The type of the provided expression (e.g., SQL).</p>
-- * InputSerialization [InputSerialization] <p>Describes the serialization format of the object.</p>
-- * Expression [Expression] <p>The expression that is used to query the object.</p>
-- * OutputSerialization [OutputSerialization] <p>Describes how the results of the Select job are serialized.</p>
-- Required key: InputSerialization
-- Required key: ExpressionType
-- Required key: Expression
-- Required key: OutputSerialization
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

keys.ListBucketsOutput = { ["Owner"] = true, ["Buckets"] = true, nil }

function asserts.AssertListBucketsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketsOutput to be of type 'table'")
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["Buckets"] then asserts.AssertBuckets(struct["Buckets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketsOutput[k], "ListBucketsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [Owner] 
-- * Buckets [Buckets] 
-- @return ListBucketsOutput structure as a key-value pair table
function M.ListBucketsOutput(args)
	assert(args, "You must provide an argument table when creating ListBucketsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["Buckets"] = args["Buckets"],
	}
	asserts.AssertListBucketsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationConfiguration = { ["QueueConfigurations"] = true, ["LambdaFunctionConfigurations"] = true, ["TopicConfigurations"] = true, nil }

function asserts.AssertNotificationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfiguration to be of type 'table'")
	if struct["QueueConfigurations"] then asserts.AssertQueueConfigurationList(struct["QueueConfigurations"]) end
	if struct["LambdaFunctionConfigurations"] then asserts.AssertLambdaFunctionConfigurationList(struct["LambdaFunctionConfigurations"]) end
	if struct["TopicConfigurations"] then asserts.AssertTopicConfigurationList(struct["TopicConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationConfiguration[k], "NotificationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfiguration
-- <p>Container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off on the bucket.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueConfigurations [QueueConfigurationList] 
-- * LambdaFunctionConfigurations [LambdaFunctionConfigurationList] 
-- * TopicConfigurations [TopicConfigurationList] 
-- @return NotificationConfiguration structure as a key-value pair table
function M.NotificationConfiguration(args)
	assert(args, "You must provide an argument table when creating NotificationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueueConfigurations"] = args["QueueConfigurations"],
		["LambdaFunctionConfigurations"] = args["LambdaFunctionConfigurations"],
		["TopicConfigurations"] = args["TopicConfigurations"],
	}
	asserts.AssertNotificationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectsV2Request = { ["RequestPayer"] = true, ["StartAfter"] = true, ["Bucket"] = true, ["Prefix"] = true, ["FetchOwner"] = true, ["MaxKeys"] = true, ["Delimiter"] = true, ["EncodingType"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertListObjectsV2Request(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsV2Request to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["StartAfter"] then asserts.AssertStartAfter(struct["StartAfter"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["FetchOwner"] then asserts.AssertFetchOwner(struct["FetchOwner"]) end
	if struct["MaxKeys"] then asserts.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectsV2Request[k], "ListObjectsV2Request contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsV2Request
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestPayer [RequestPayer] <p>Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.</p>
-- * StartAfter [StartAfter] <p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket</p>
-- * Bucket [BucketName] <p>Name of the bucket to list.</p>
-- * Prefix [Prefix] <p>Limits the response to keys that begin with the specified prefix.</p>
-- * FetchOwner [FetchOwner] <p>The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true</p>
-- * MaxKeys [MaxKeys] <p>Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.</p>
-- * Delimiter [Delimiter] <p>A delimiter is a character you use to group keys.</p>
-- * EncodingType [EncodingType] <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
-- * ContinuationToken [Token] <p>ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key</p>
-- Required key: Bucket
-- @return ListObjectsV2Request structure as a key-value pair table
function M.ListObjectsV2Request(args)
	assert(args, "You must provide an argument table when creating ListObjectsV2Request")
    local query_args = { 
        ["start-after"] = args["StartAfter"],
        ["prefix"] = args["Prefix"],
        ["fetch-owner"] = args["FetchOwner"],
        ["max-keys"] = args["MaxKeys"],
        ["delimiter"] = args["Delimiter"],
        ["encoding-type"] = args["EncodingType"],
        ["continuation-token"] = args["ContinuationToken"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
        ["x-amz-request-payer"] = args["RequestPayer"],
    }
	local all_args = { 
		["RequestPayer"] = args["RequestPayer"],
		["StartAfter"] = args["StartAfter"],
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["FetchOwner"] = args["FetchOwner"],
		["MaxKeys"] = args["MaxKeys"],
		["Delimiter"] = args["Delimiter"],
		["EncodingType"] = args["EncodingType"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListObjectsV2Request(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBucketInventoryConfigurationsRequest = { ["Bucket"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertListBucketInventoryConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketInventoryConfigurationsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["ContinuationToken"] then asserts.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBucketInventoryConfigurationsRequest[k], "ListBucketInventoryConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketInventoryConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] <p>The name of the bucket containing the inventory configurations to retrieve.</p>
-- * ContinuationToken [Token] <p>The marker used to continue an inventory configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.</p>
-- Required key: Bucket
-- @return ListBucketInventoryConfigurationsRequest structure as a key-value pair table
function M.ListBucketInventoryConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListBucketInventoryConfigurationsRequest")
    local query_args = { 
        ["continuation-token"] = args["ContinuationToken"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketInventoryConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContinuationEvent = { nil }

function asserts.AssertContinuationEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinuationEvent to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ContinuationEvent[k], "ContinuationEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinuationEvent
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ContinuationEvent structure as a key-value pair table
function M.ContinuationEvent(args)
	assert(args, "You must provide an argument table when creating ContinuationEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertContinuationEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyPartResult = { ["LastModified"] = true, ["ETag"] = true, nil }

function asserts.AssertCopyPartResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyPartResult to be of type 'table'")
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyPartResult[k], "CopyPartResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyPartResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModified [LastModified] <p>Date and time at which the object was uploaded.</p>
-- * ETag [ETag] <p>Entity tag of the object.</p>
-- @return CopyPartResult structure as a key-value pair table
function M.CopyPartResult(args)
	assert(args, "You must provide an argument table when creating CopyPartResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModified"] = args["LastModified"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCopyPartResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketAclRequest = { ["Bucket"] = true, nil }

function asserts.AssertGetBucketAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketAclRequest[k], "GetBucketAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAclRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return GetBucketAclRequest structure as a key-value pair table
function M.GetBucketAclRequest(args)
	assert(args, "You must provide an argument table when creating GetBucketAclRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketAclRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyObjectOutput = { ["SSECustomerAlgorithm"] = true, ["CopySourceVersionId"] = true, ["RequestCharged"] = true, ["VersionId"] = true, ["Expiration"] = true, ["ServerSideEncryption"] = true, ["CopyObjectResult"] = true, ["SSEKMSKeyId"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertCopyObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyObjectOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["CopySourceVersionId"] then asserts.AssertCopySourceVersionId(struct["CopySourceVersionId"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Expiration"] then asserts.AssertExpiration(struct["Expiration"]) end
	if struct["ServerSideEncryption"] then asserts.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["CopyObjectResult"] then asserts.AssertCopyObjectResult(struct["CopyObjectResult"]) end
	if struct["SSEKMSKeyId"] then asserts.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyObjectOutput[k], "CopyObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.</p>
-- * CopySourceVersionId [CopySourceVersionId] 
-- * RequestCharged [RequestCharged] 
-- * VersionId [ObjectVersionId] <p>Version ID of the newly created copy.</p>
-- * Expiration [Expiration] <p>If the object expiration is configured, the response includes this header.</p>
-- * ServerSideEncryption [ServerSideEncryption] <p>The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).</p>
-- * CopyObjectResult [CopyObjectResult] 
-- * SSEKMSKeyId [SSEKMSKeyId] <p>If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.</p>
-- @return CopyObjectOutput structure as a key-value pair table
function M.CopyObjectOutput(args)
	assert(args, "You must provide an argument table when creating CopyObjectOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["x-amz-copy-source-version-id"] = args["CopySourceVersionId"],
        ["x-amz-request-charged"] = args["RequestCharged"],
        ["x-amz-version-id"] = args["VersionId"],
        ["x-amz-expiration"] = args["Expiration"],
        ["x-amz-server-side-encryption"] = args["ServerSideEncryption"],
        ["x-amz-server-side-encryption-aws-kms-key-id"] = args["SSEKMSKeyId"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["CopySourceVersionId"] = args["CopySourceVersionId"],
		["RequestCharged"] = args["RequestCharged"],
		["VersionId"] = args["VersionId"],
		["Expiration"] = args["Expiration"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["CopyObjectResult"] = args["CopyObjectResult"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertCopyObjectOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectAclOutput = { ["Owner"] = true, ["Grants"] = true, ["RequestCharged"] = true, nil }

function asserts.AssertGetObjectAclOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectAclOutput to be of type 'table'")
	if struct["Owner"] then asserts.AssertOwner(struct["Owner"]) end
	if struct["Grants"] then asserts.AssertGrants(struct["Grants"]) end
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectAclOutput[k], "GetObjectAclOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectAclOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [Owner] 
-- * Grants [Grants] <p>A list of grants.</p>
-- * RequestCharged [RequestCharged] 
-- @return GetObjectAclOutput structure as a key-value pair table
function M.GetObjectAclOutput(args)
	assert(args, "You must provide an argument table when creating GetObjectAclOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-request-charged"] = args["RequestCharged"],
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["Grants"] = args["Grants"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertGetObjectAclOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectVersionsOutput = { ["Name"] = true, ["Versions"] = true, ["DeleteMarkers"] = true, ["NextKeyMarker"] = true, ["Delimiter"] = true, ["MaxKeys"] = true, ["Prefix"] = true, ["KeyMarker"] = true, ["NextVersionIdMarker"] = true, ["EncodingType"] = true, ["IsTruncated"] = true, ["VersionIdMarker"] = true, ["CommonPrefixes"] = true, nil }

function asserts.AssertListObjectVersionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectVersionsOutput to be of type 'table'")
	if struct["Name"] then asserts.AssertBucketName(struct["Name"]) end
	if struct["Versions"] then asserts.AssertObjectVersionList(struct["Versions"]) end
	if struct["DeleteMarkers"] then asserts.AssertDeleteMarkers(struct["DeleteMarkers"]) end
	if struct["NextKeyMarker"] then asserts.AssertNextKeyMarker(struct["NextKeyMarker"]) end
	if struct["Delimiter"] then asserts.AssertDelimiter(struct["Delimiter"]) end
	if struct["MaxKeys"] then asserts.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["KeyMarker"] then asserts.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["NextVersionIdMarker"] then asserts.AssertNextVersionIdMarker(struct["NextVersionIdMarker"]) end
	if struct["EncodingType"] then asserts.AssertEncodingType(struct["EncodingType"]) end
	if struct["IsTruncated"] then asserts.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["VersionIdMarker"] then asserts.AssertVersionIdMarker(struct["VersionIdMarker"]) end
	if struct["CommonPrefixes"] then asserts.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectVersionsOutput[k], "ListObjectVersionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectVersionsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [BucketName] 
-- * Versions [ObjectVersionList] 
-- * DeleteMarkers [DeleteMarkers] 
-- * NextKeyMarker [NextKeyMarker] <p>Use this value for the key marker request parameter in a subsequent request.</p>
-- * Delimiter [Delimiter] 
-- * MaxKeys [MaxKeys] 
-- * Prefix [Prefix] 
-- * KeyMarker [KeyMarker] <p>Marks the last Key returned in a truncated response.</p>
-- * NextVersionIdMarker [NextVersionIdMarker] <p>Use this value for the next version id marker parameter in a subsequent request.</p>
-- * EncodingType [EncodingType] <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
-- * IsTruncated [IsTruncated] <p>A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.</p>
-- * VersionIdMarker [VersionIdMarker] 
-- * CommonPrefixes [CommonPrefixList] 
-- @return ListObjectVersionsOutput structure as a key-value pair table
function M.ListObjectVersionsOutput(args)
	assert(args, "You must provide an argument table when creating ListObjectVersionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Versions"] = args["Versions"],
		["DeleteMarkers"] = args["DeleteMarkers"],
		["NextKeyMarker"] = args["NextKeyMarker"],
		["Delimiter"] = args["Delimiter"],
		["MaxKeys"] = args["MaxKeys"],
		["Prefix"] = args["Prefix"],
		["KeyMarker"] = args["KeyMarker"],
		["NextVersionIdMarker"] = args["NextVersionIdMarker"],
		["EncodingType"] = args["EncodingType"],
		["IsTruncated"] = args["IsTruncated"],
		["VersionIdMarker"] = args["VersionIdMarker"],
		["CommonPrefixes"] = args["CommonPrefixes"],
	}
	asserts.AssertListObjectVersionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Condition = { ["HttpErrorCodeReturnedEquals"] = true, ["KeyPrefixEquals"] = true, nil }

function asserts.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	if struct["HttpErrorCodeReturnedEquals"] then asserts.AssertHttpErrorCodeReturnedEquals(struct["HttpErrorCodeReturnedEquals"]) end
	if struct["KeyPrefixEquals"] then asserts.AssertKeyPrefixEquals(struct["KeyPrefixEquals"]) end
	for k,_ in pairs(struct) do
		assert(keys.Condition[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HttpErrorCodeReturnedEquals [HttpErrorCodeReturnedEquals] <p>The HTTP error code when the redirect is applied. In the event of an error, if the error code equals this value, then the specified redirect is applied. Required when parent element Condition is specified and sibling KeyPrefixEquals is not specified. If both are specified, then both must be true for the redirect to be applied.</p>
-- * KeyPrefixEquals [KeyPrefixEquals] <p>The object key name prefix when the redirect is applied. For example, to redirect requests for ExamplePage.html, the key prefix will be ExamplePage.html. To redirect request for all pages with the prefix docs/, the key prefix will be /docs, which identifies all objects in the docs/ folder. Required when the parent element Condition is specified and sibling HttpErrorCodeReturnedEquals is not specified. If both conditions are specified, both must be true for the redirect to be applied.</p>
-- @return Condition structure as a key-value pair table
function M.Condition(args)
	assert(args, "You must provide an argument table when creating Condition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HttpErrorCodeReturnedEquals"] = args["HttpErrorCodeReturnedEquals"],
		["KeyPrefixEquals"] = args["KeyPrefixEquals"],
	}
	asserts.AssertCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ErrorDocument = { ["Key"] = true, nil }

function asserts.AssertErrorDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDocument to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ErrorDocument[k], "ErrorDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDocument
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Key [ObjectKey] <p>The object key name to use when a 4XX class error occurs.</p>
-- Required key: Key
-- @return ErrorDocument structure as a key-value pair table
function M.ErrorDocument(args)
	assert(args, "You must provide an argument table when creating ErrorDocument")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Key"] = args["Key"],
	}
	asserts.AssertErrorDocument(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricsConfiguration = { ["Filter"] = true, ["Id"] = true, nil }

function asserts.AssertMetricsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricsConfiguration to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Filter"] then asserts.AssertMetricsFilter(struct["Filter"]) end
	if struct["Id"] then asserts.AssertMetricsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricsConfiguration[k], "MetricsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricsConfiguration
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [MetricsFilter] <p>Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction (MetricsAndOperator).</p>
-- * Id [MetricsId] <p>The ID used to identify the metrics configuration.</p>
-- Required key: Id
-- @return MetricsConfiguration structure as a key-value pair table
function M.MetricsConfiguration(args)
	assert(args, "You must provide an argument table when creating MetricsConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["Id"] = args["Id"],
	}
	asserts.AssertMetricsConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoggingEnabled = { ["TargetPrefix"] = true, ["TargetBucket"] = true, ["TargetGrants"] = true, nil }

function asserts.AssertLoggingEnabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingEnabled to be of type 'table'")
	assert(struct["TargetBucket"], "Expected key TargetBucket to exist in table")
	assert(struct["TargetPrefix"], "Expected key TargetPrefix to exist in table")
	if struct["TargetPrefix"] then asserts.AssertTargetPrefix(struct["TargetPrefix"]) end
	if struct["TargetBucket"] then asserts.AssertTargetBucket(struct["TargetBucket"]) end
	if struct["TargetGrants"] then asserts.AssertTargetGrants(struct["TargetGrants"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingEnabled[k], "LoggingEnabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingEnabled
-- <p>Container for logging information. Presence of this element indicates that logging is enabled. Parameters TargetBucket and TargetPrefix are required in this case.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetPrefix [TargetPrefix] <p>This element lets you specify a prefix for the keys that the log files will be stored under.</p>
-- * TargetBucket [TargetBucket] <p>Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case you should choose a different TargetPrefix for each source bucket so that the delivered log files can be distinguished by key.</p>
-- * TargetGrants [TargetGrants] 
-- Required key: TargetBucket
-- Required key: TargetPrefix
-- @return LoggingEnabled structure as a key-value pair table
function M.LoggingEnabled(args)
	assert(args, "You must provide an argument table when creating LoggingEnabled")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetPrefix"] = args["TargetPrefix"],
		["TargetBucket"] = args["TargetBucket"],
		["TargetGrants"] = args["TargetGrants"],
	}
	asserts.AssertLoggingEnabled(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Transition = { ["Date"] = true, ["Days"] = true, ["StorageClass"] = true, nil }

function asserts.AssertTransition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Transition to be of type 'table'")
	if struct["Date"] then asserts.AssertDate(struct["Date"]) end
	if struct["Days"] then asserts.AssertDays(struct["Days"]) end
	if struct["StorageClass"] then asserts.AssertTransitionStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.Transition[k], "Transition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Transition
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Date [Date] <p>Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.</p>
-- * Days [Days] <p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.</p>
-- * StorageClass [TransitionStorageClass] <p>The class of storage used to store the object.</p>
-- @return Transition structure as a key-value pair table
function M.Transition(args)
	assert(args, "You must provide an argument table when creating Transition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Date"] = args["Date"],
		["Days"] = args["Days"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertTransition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueueConfigurationDeprecated = { ["Queue"] = true, ["Events"] = true, ["Id"] = true, ["Event"] = true, nil }

function asserts.AssertQueueConfigurationDeprecated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueConfigurationDeprecated to be of type 'table'")
	if struct["Queue"] then asserts.AssertQueueArn(struct["Queue"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	if struct["Id"] then asserts.AssertNotificationId(struct["Id"]) end
	if struct["Event"] then asserts.AssertEvent(struct["Event"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueueConfigurationDeprecated[k], "QueueConfigurationDeprecated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueConfigurationDeprecated
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [QueueArn] 
-- * Events [EventList] 
-- * Id [NotificationId] 
-- * Event [Event] 
-- @return QueueConfigurationDeprecated structure as a key-value pair table
function M.QueueConfigurationDeprecated(args)
	assert(args, "You must provide an argument table when creating QueueConfigurationDeprecated")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
		["Events"] = args["Events"],
		["Id"] = args["Id"],
		["Event"] = args["Event"],
	}
	asserts.AssertQueueConfigurationDeprecated(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Error = { ["VersionId"] = true, ["Code"] = true, ["Message"] = true, ["Key"] = true, nil }

function asserts.AssertError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Error to be of type 'table'")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Code"] then asserts.AssertCode(struct["Code"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Error[k], "Error contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Error
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] 
-- * Code [Code] 
-- * Message [Message] 
-- * Key [ObjectKey] 
-- @return Error structure as a key-value pair table
function M.Error(args)
	assert(args, "You must provide an argument table when creating Error")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Code"] = args["Code"],
		["Message"] = args["Message"],
		["Key"] = args["Key"],
	}
	asserts.AssertError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BucketLoggingStatus = { ["LoggingEnabled"] = true, nil }

function asserts.AssertBucketLoggingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketLoggingStatus to be of type 'table'")
	if struct["LoggingEnabled"] then asserts.AssertLoggingEnabled(struct["LoggingEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.BucketLoggingStatus[k], "BucketLoggingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketLoggingStatus
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggingEnabled [LoggingEnabled] 
-- @return BucketLoggingStatus structure as a key-value pair table
function M.BucketLoggingStatus(args)
	assert(args, "You must provide an argument table when creating BucketLoggingStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggingEnabled"] = args["LoggingEnabled"],
	}
	asserts.AssertBucketLoggingStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutBucketInventoryConfigurationRequest = { ["InventoryConfiguration"] = true, ["Bucket"] = true, ["Id"] = true, nil }

function asserts.AssertPutBucketInventoryConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketInventoryConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["InventoryConfiguration"], "Expected key InventoryConfiguration to exist in table")
	if struct["InventoryConfiguration"] then asserts.AssertInventoryConfiguration(struct["InventoryConfiguration"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then asserts.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketInventoryConfigurationRequest[k], "PutBucketInventoryConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketInventoryConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InventoryConfiguration [InventoryConfiguration] <p>Specifies the inventory configuration.</p>
-- * Bucket [BucketName] <p>The name of the bucket where the inventory configuration will be stored.</p>
-- * Id [InventoryId] <p>The ID used to identify the inventory configuration.</p>
-- Required key: Bucket
-- Required key: Id
-- Required key: InventoryConfiguration
-- @return PutBucketInventoryConfigurationRequest structure as a key-value pair table
function M.PutBucketInventoryConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutBucketInventoryConfigurationRequest")
    local query_args = { 
        ["id"] = args["Id"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InventoryConfiguration"] = args["InventoryConfiguration"],
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertPutBucketInventoryConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreRequest = { ["SelectParameters"] = true, ["Description"] = true, ["GlacierJobParameters"] = true, ["Days"] = true, ["Tier"] = true, ["OutputLocation"] = true, ["Type"] = true, nil }

function asserts.AssertRestoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreRequest to be of type 'table'")
	if struct["SelectParameters"] then asserts.AssertSelectParameters(struct["SelectParameters"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["GlacierJobParameters"] then asserts.AssertGlacierJobParameters(struct["GlacierJobParameters"]) end
	if struct["Days"] then asserts.AssertDays(struct["Days"]) end
	if struct["Tier"] then asserts.AssertTier(struct["Tier"]) end
	if struct["OutputLocation"] then asserts.AssertOutputLocation(struct["OutputLocation"]) end
	if struct["Type"] then asserts.AssertRestoreRequestType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreRequest[k], "RestoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreRequest
-- <p>Container for restore job parameters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SelectParameters [SelectParameters] <p>Describes the parameters for Select job types.</p>
-- * Description [Description] <p>The optional description for the job.</p>
-- * GlacierJobParameters [GlacierJobParameters] <p>Glacier related parameters pertaining to this job. Do not use with restores that specify OutputLocation.</p>
-- * Days [Days] <p>Lifetime of the active copy in days. Do not use with restores that specify OutputLocation.</p>
-- * Tier [Tier] <p>Glacier retrieval tier at which the restore will be processed.</p>
-- * OutputLocation [OutputLocation] <p>Describes the location where the restore job's output is stored.</p>
-- * Type [RestoreRequestType] <p>Type of restore request.</p>
-- @return RestoreRequest structure as a key-value pair table
function M.RestoreRequest(args)
	assert(args, "You must provide an argument table when creating RestoreRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SelectParameters"] = args["SelectParameters"],
		["Description"] = args["Description"],
		["GlacierJobParameters"] = args["GlacierJobParameters"],
		["Days"] = args["Days"],
		["Tier"] = args["Tier"],
		["OutputLocation"] = args["OutputLocation"],
		["Type"] = args["Type"],
	}
	asserts.AssertRestoreRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationConfigurationDeprecated = { ["CloudFunctionConfiguration"] = true, ["QueueConfiguration"] = true, ["TopicConfiguration"] = true, nil }

function asserts.AssertNotificationConfigurationDeprecated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfigurationDeprecated to be of type 'table'")
	if struct["CloudFunctionConfiguration"] then asserts.AssertCloudFunctionConfiguration(struct["CloudFunctionConfiguration"]) end
	if struct["QueueConfiguration"] then asserts.AssertQueueConfigurationDeprecated(struct["QueueConfiguration"]) end
	if struct["TopicConfiguration"] then asserts.AssertTopicConfigurationDeprecated(struct["TopicConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationConfigurationDeprecated[k], "NotificationConfigurationDeprecated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfigurationDeprecated
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFunctionConfiguration [CloudFunctionConfiguration] 
-- * QueueConfiguration [QueueConfigurationDeprecated] 
-- * TopicConfiguration [TopicConfigurationDeprecated] 
-- @return NotificationConfigurationDeprecated structure as a key-value pair table
function M.NotificationConfigurationDeprecated(args)
	assert(args, "You must provide an argument table when creating NotificationConfigurationDeprecated")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudFunctionConfiguration"] = args["CloudFunctionConfiguration"],
		["QueueConfiguration"] = args["QueueConfiguration"],
		["TopicConfiguration"] = args["TopicConfiguration"],
	}
	asserts.AssertNotificationConfigurationDeprecated(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputSerialization = { ["CompressionType"] = true, ["JSON"] = true, ["CSV"] = true, ["Parquet"] = true, nil }

function asserts.AssertInputSerialization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSerialization to be of type 'table'")
	if struct["CompressionType"] then asserts.AssertCompressionType(struct["CompressionType"]) end
	if struct["JSON"] then asserts.AssertJSONInput(struct["JSON"]) end
	if struct["CSV"] then asserts.AssertCSVInput(struct["CSV"]) end
	if struct["Parquet"] then asserts.AssertParquetInput(struct["Parquet"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSerialization[k], "InputSerialization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSerialization
-- <p>Describes the serialization format of the object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompressionType [CompressionType] <p>Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value: NONE.</p>
-- * JSON [JSONInput] <p>Specifies JSON as object's input serialization format.</p>
-- * CSV [CSVInput] <p>Describes the serialization of a CSV-encoded object.</p>
-- * Parquet [ParquetInput] <p>Specifies Parquet as object's input serialization format.</p>
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
		["CompressionType"] = args["CompressionType"],
		["JSON"] = args["JSON"],
		["CSV"] = args["CSV"],
		["Parquet"] = args["Parquet"],
	}
	asserts.AssertInputSerialization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketVersioningOutput = { ["Status"] = true, ["MFADelete"] = true, nil }

function asserts.AssertGetBucketVersioningOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketVersioningOutput to be of type 'table'")
	if struct["Status"] then asserts.AssertBucketVersioningStatus(struct["Status"]) end
	if struct["MFADelete"] then asserts.AssertMFADeleteStatus(struct["MFADelete"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketVersioningOutput[k], "GetBucketVersioningOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketVersioningOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [BucketVersioningStatus] <p>The versioning state of the bucket.</p>
-- * MFADelete [MFADeleteStatus] <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.</p>
-- @return GetBucketVersioningOutput structure as a key-value pair table
function M.GetBucketVersioningOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketVersioningOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["MFADelete"] = args["MFADelete"],
	}
	asserts.AssertGetBucketVersioningOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectRequest = { ["ResponseContentEncoding"] = true, ["ResponseContentLanguage"] = true, ["SSECustomerAlgorithm"] = true, ["ResponseContentType"] = true, ["IfUnmodifiedSince"] = true, ["VersionId"] = true, ["RequestPayer"] = true, ["ResponseCacheControl"] = true, ["SSECustomerKey"] = true, ["Bucket"] = true, ["IfNoneMatch"] = true, ["ResponseContentDisposition"] = true, ["Range"] = true, ["Key"] = true, ["IfMatch"] = true, ["ResponseExpires"] = true, ["PartNumber"] = true, ["IfModifiedSince"] = true, ["SSECustomerKeyMD5"] = true, nil }

function asserts.AssertGetObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ResponseContentEncoding"] then asserts.AssertResponseContentEncoding(struct["ResponseContentEncoding"]) end
	if struct["ResponseContentLanguage"] then asserts.AssertResponseContentLanguage(struct["ResponseContentLanguage"]) end
	if struct["SSECustomerAlgorithm"] then asserts.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ResponseContentType"] then asserts.AssertResponseContentType(struct["ResponseContentType"]) end
	if struct["IfUnmodifiedSince"] then asserts.AssertIfUnmodifiedSince(struct["IfUnmodifiedSince"]) end
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RequestPayer"] then asserts.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ResponseCacheControl"] then asserts.AssertResponseCacheControl(struct["ResponseCacheControl"]) end
	if struct["SSECustomerKey"] then asserts.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["IfNoneMatch"] then asserts.AssertIfNoneMatch(struct["IfNoneMatch"]) end
	if struct["ResponseContentDisposition"] then asserts.AssertResponseContentDisposition(struct["ResponseContentDisposition"]) end
	if struct["Range"] then asserts.AssertRange(struct["Range"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	if struct["IfMatch"] then asserts.AssertIfMatch(struct["IfMatch"]) end
	if struct["ResponseExpires"] then asserts.AssertResponseExpires(struct["ResponseExpires"]) end
	if struct["PartNumber"] then asserts.AssertPartNumber(struct["PartNumber"]) end
	if struct["IfModifiedSince"] then asserts.AssertIfModifiedSince(struct["IfModifiedSince"]) end
	if struct["SSECustomerKeyMD5"] then asserts.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectRequest[k], "GetObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResponseContentEncoding [ResponseContentEncoding] <p>Sets the Content-Encoding header of the response.</p>
-- * ResponseContentLanguage [ResponseContentLanguage] <p>Sets the Content-Language header of the response.</p>
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] <p>Specifies the algorithm to use to when encrypting the object (e.g., AES256).</p>
-- * ResponseContentType [ResponseContentType] <p>Sets the Content-Type header of the response.</p>
-- * IfUnmodifiedSince [IfUnmodifiedSince] <p>Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).</p>
-- * VersionId [ObjectVersionId] <p>VersionId used to reference a specific version of the object.</p>
-- * RequestPayer [RequestPayer] 
-- * ResponseCacheControl [ResponseCacheControl] <p>Sets the Cache-Control header of the response.</p>
-- * SSECustomerKey [SSECustomerKey] <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.</p>
-- * Bucket [BucketName] 
-- * IfNoneMatch [IfNoneMatch] <p>Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).</p>
-- * ResponseContentDisposition [ResponseContentDisposition] <p>Sets the Content-Disposition header of the response</p>
-- * Range [Range] <p>Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.</p>
-- * Key [ObjectKey] 
-- * IfMatch [IfMatch] <p>Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).</p>
-- * ResponseExpires [ResponseExpires] <p>Sets the Expires header of the response.</p>
-- * PartNumber [PartNumber] <p>Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.</p>
-- * IfModifiedSince [IfModifiedSince] <p>Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).</p>
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.</p>
-- Required key: Bucket
-- Required key: Key
-- @return GetObjectRequest structure as a key-value pair table
function M.GetObjectRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectRequest")
    local query_args = { 
        ["response-content-encoding"] = args["ResponseContentEncoding"],
        ["response-content-language"] = args["ResponseContentLanguage"],
        ["response-content-type"] = args["ResponseContentType"],
        ["versionId"] = args["VersionId"],
        ["response-cache-control"] = args["ResponseCacheControl"],
        ["response-content-disposition"] = args["ResponseContentDisposition"],
        ["response-expires"] = args["ResponseExpires"],
        ["partNumber"] = args["PartNumber"],
    }
    local uri_args = { 
        ["{Bucket}"] = args["Bucket"],
        ["{Key}"] = args["Key"],
    }
    local header_args = { 
        ["x-amz-server-side-encryption-customer-algorithm"] = args["SSECustomerAlgorithm"],
        ["If-Unmodified-Since"] = args["IfUnmodifiedSince"],
        ["x-amz-request-payer"] = args["RequestPayer"],
        ["x-amz-server-side-encryption-customer-key"] = args["SSECustomerKey"],
        ["If-None-Match"] = args["IfNoneMatch"],
        ["Range"] = args["Range"],
        ["If-Match"] = args["IfMatch"],
        ["If-Modified-Since"] = args["IfModifiedSince"],
        ["x-amz-server-side-encryption-customer-key-MD5"] = args["SSECustomerKeyMD5"],
    }
	local all_args = { 
		["ResponseContentEncoding"] = args["ResponseContentEncoding"],
		["ResponseContentLanguage"] = args["ResponseContentLanguage"],
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ResponseContentType"] = args["ResponseContentType"],
		["IfUnmodifiedSince"] = args["IfUnmodifiedSince"],
		["VersionId"] = args["VersionId"],
		["RequestPayer"] = args["RequestPayer"],
		["ResponseCacheControl"] = args["ResponseCacheControl"],
		["SSECustomerKey"] = args["SSECustomerKey"],
		["Bucket"] = args["Bucket"],
		["IfNoneMatch"] = args["IfNoneMatch"],
		["ResponseContentDisposition"] = args["ResponseContentDisposition"],
		["Range"] = args["Range"],
		["Key"] = args["Key"],
		["IfMatch"] = args["IfMatch"],
		["ResponseExpires"] = args["ResponseExpires"],
		["PartNumber"] = args["PartNumber"],
		["IfModifiedSince"] = args["IfModifiedSince"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
	}
	asserts.AssertGetObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBucketPolicyOutput = { ["Policy"] = true, nil }

function asserts.AssertGetBucketPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketPolicyOutput to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBucketPolicyOutput[k], "GetBucketPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketPolicyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>The bucket policy as a JSON document.</p>
-- @return GetBucketPolicyOutput structure as a key-value pair table
function M.GetBucketPolicyOutput(args)
	assert(args, "You must provide an argument table when creating GetBucketPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetBucketPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ObjectIdentifier = { ["VersionId"] = true, ["Key"] = true, nil }

function asserts.AssertObjectIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectIdentifier to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then asserts.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Key"] then asserts.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectIdentifier[k], "ObjectIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectIdentifier
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [ObjectVersionId] <p>VersionId for the specific version of the object to delete.</p>
-- * Key [ObjectKey] <p>Key name of the object to delete.</p>
-- Required key: Key
-- @return ObjectIdentifier structure as a key-value pair table
function M.ObjectIdentifier(args)
	assert(args, "You must provide an argument table when creating ObjectIdentifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Key"] = args["Key"],
	}
	asserts.AssertObjectIdentifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Initiator = { ["DisplayName"] = true, ["ID"] = true, nil }

function asserts.AssertInitiator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Initiator to be of type 'table'")
	if struct["DisplayName"] then asserts.AssertDisplayName(struct["DisplayName"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.Initiator[k], "Initiator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Initiator
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [DisplayName] <p>Name of the Principal.</p>
-- * ID [ID] <p>If the principal is an AWS account, it provides the Canonical User ID. If the principal is an IAM User, it provides a user ARN value.</p>
-- @return Initiator structure as a key-value pair table
function M.Initiator(args)
	assert(args, "You must provide an argument table when creating Initiator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["ID"] = args["ID"],
	}
	asserts.AssertInitiator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertRestore(str)
	assert(str)
	assert(type(str) == "string", "Expected Restore to be of type 'string'")
end

--  
function M.Restore(str)
	asserts.AssertRestore(str)
	return str
end

function asserts.AssertCopySourceVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceVersionId to be of type 'string'")
end

--  
function M.CopySourceVersionId(str)
	asserts.AssertCopySourceVersionId(str)
	return str
end

function asserts.AssertMultipartUploadId(str)
	assert(str)
	assert(type(str) == "string", "Expected MultipartUploadId to be of type 'string'")
end

--  
function M.MultipartUploadId(str)
	asserts.AssertMultipartUploadId(str)
	return str
end

function asserts.AssertWebsiteRedirectLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected WebsiteRedirectLocation to be of type 'string'")
end

--  
function M.WebsiteRedirectLocation(str)
	asserts.AssertWebsiteRedirectLocation(str)
	return str
end

function asserts.AssertObjectStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectStorageClass to be of type 'string'")
end

--  
function M.ObjectStorageClass(str)
	asserts.AssertObjectStorageClass(str)
	return str
end

function asserts.AssertProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected Protocol to be of type 'string'")
end

--  
function M.Protocol(str)
	asserts.AssertProtocol(str)
	return str
end

function asserts.AssertSuffix(str)
	assert(str)
	assert(type(str) == "string", "Expected Suffix to be of type 'string'")
end

--  
function M.Suffix(str)
	asserts.AssertSuffix(str)
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

function asserts.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
end

--  
function M.BucketName(str)
	asserts.AssertBucketName(str)
	return str
end

function asserts.AssertBucketLogsPermission(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketLogsPermission to be of type 'string'")
end

--  
function M.BucketLogsPermission(str)
	asserts.AssertBucketLogsPermission(str)
	return str
end

function asserts.AssertReplicationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationStatus to be of type 'string'")
end

--  
function M.ReplicationStatus(str)
	asserts.AssertReplicationStatus(str)
	return str
end

function asserts.AssertTargetPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetPrefix to be of type 'string'")
end

--  
function M.TargetPrefix(str)
	asserts.AssertTargetPrefix(str)
	return str
end

function asserts.AssertCloudFunctionInvocationRole(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudFunctionInvocationRole to be of type 'string'")
end

--  
function M.CloudFunctionInvocationRole(str)
	asserts.AssertCloudFunctionInvocationRole(str)
	return str
end

function asserts.AssertMetadataValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetadataValue to be of type 'string'")
end

--  
function M.MetadataValue(str)
	asserts.AssertMetadataValue(str)
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

function asserts.AssertGrantRead(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantRead to be of type 'string'")
end

--  
function M.GrantRead(str)
	asserts.AssertGrantRead(str)
	return str
end

function asserts.AssertSSECustomerKeyMD5(str)
	assert(str)
	assert(type(str) == "string", "Expected SSECustomerKeyMD5 to be of type 'string'")
end

--  
function M.SSECustomerKeyMD5(str)
	asserts.AssertSSECustomerKeyMD5(str)
	return str
end

function asserts.AssertGrantWriteACP(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantWriteACP to be of type 'string'")
end

--  
function M.GrantWriteACP(str)
	asserts.AssertGrantWriteACP(str)
	return str
end

function asserts.AssertContentLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentLanguage to be of type 'string'")
end

--  
function M.ContentLanguage(str)
	asserts.AssertContentLanguage(str)
	return str
end

function asserts.AssertLocationPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationPrefix to be of type 'string'")
end

--  
function M.LocationPrefix(str)
	asserts.AssertLocationPrefix(str)
	return str
end

function asserts.AssertHttpErrorCodeReturnedEquals(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpErrorCodeReturnedEquals to be of type 'string'")
end

--  
function M.HttpErrorCodeReturnedEquals(str)
	asserts.AssertHttpErrorCodeReturnedEquals(str)
	return str
end

function asserts.AssertTaggingHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected TaggingHeader to be of type 'string'")
end

--  
function M.TaggingHeader(str)
	asserts.AssertTaggingHeader(str)
	return str
end

function asserts.AssertAcceptRanges(str)
	assert(str)
	assert(type(str) == "string", "Expected AcceptRanges to be of type 'string'")
end

--  
function M.AcceptRanges(str)
	asserts.AssertAcceptRanges(str)
	return str
end

function asserts.AssertCopySource(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySource to be of type 'string'")
end

--  
function M.CopySource(str)
	asserts.AssertCopySource(str)
	return str
end

function asserts.AssertTransitionStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected TransitionStorageClass to be of type 'string'")
end

--  
function M.TransitionStorageClass(str)
	asserts.AssertTransitionStorageClass(str)
	return str
end

function asserts.AssertCacheControl(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheControl to be of type 'string'")
end

--  
function M.CacheControl(str)
	asserts.AssertCacheControl(str)
	return str
end

function asserts.AssertReplaceKeyWith(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplaceKeyWith to be of type 'string'")
end

--  
function M.ReplaceKeyWith(str)
	asserts.AssertReplaceKeyWith(str)
	return str
end

function asserts.AssertPayer(str)
	assert(str)
	assert(type(str) == "string", "Expected Payer to be of type 'string'")
end

--  
function M.Payer(str)
	asserts.AssertPayer(str)
	return str
end

function asserts.AssertExpirationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpirationStatus to be of type 'string'")
end

--  
function M.ExpirationStatus(str)
	asserts.AssertExpirationStatus(str)
	return str
end

function asserts.AssertExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected Expression to be of type 'string'")
end

--  
function M.Expression(str)
	asserts.AssertExpression(str)
	return str
end

function asserts.AssertRestoreOutputPath(str)
	assert(str)
	assert(type(str) == "string", "Expected RestoreOutputPath to be of type 'string'")
end

--  
function M.RestoreOutputPath(str)
	asserts.AssertRestoreOutputPath(str)
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

function asserts.AssertQueueArn(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueArn to be of type 'string'")
end

--  
function M.QueueArn(str)
	asserts.AssertQueueArn(str)
	return str
end

function asserts.AssertInventoryFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFrequency to be of type 'string'")
end

--  
function M.InventoryFrequency(str)
	asserts.AssertInventoryFrequency(str)
	return str
end

function asserts.AssertPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected Policy to be of type 'string'")
end

--  
function M.Policy(str)
	asserts.AssertPolicy(str)
	return str
end

function asserts.AssertResponseContentEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentEncoding to be of type 'string'")
end

--  
function M.ResponseContentEncoding(str)
	asserts.AssertResponseContentEncoding(str)
	return str
end

function asserts.AssertHostName(str)
	assert(str)
	assert(type(str) == "string", "Expected HostName to be of type 'string'")
end

--  
function M.HostName(str)
	asserts.AssertHostName(str)
	return str
end

function asserts.AssertRequestCharged(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCharged to be of type 'string'")
end

-- <p>If present, indicates that the requester was successfully charged for the request.</p>
function M.RequestCharged(str)
	asserts.AssertRequestCharged(str)
	return str
end

function asserts.AssertDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected Delimiter to be of type 'string'")
end

--  
function M.Delimiter(str)
	asserts.AssertDelimiter(str)
	return str
end

function asserts.AssertEncodingType(str)
	assert(str)
	assert(type(str) == "string", "Expected EncodingType to be of type 'string'")
end

-- <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.</p>
function M.EncodingType(str)
	asserts.AssertEncodingType(str)
	return str
end

function asserts.AssertNotificationId(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationId to be of type 'string'")
end

-- <p>Optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.</p>
function M.NotificationId(str)
	asserts.AssertNotificationId(str)
	return str
end

function asserts.AssertIfNoneMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected IfNoneMatch to be of type 'string'")
end

--  
function M.IfNoneMatch(str)
	asserts.AssertIfNoneMatch(str)
	return str
end

function asserts.AssertObjectVersionStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectVersionStorageClass to be of type 'string'")
end

--  
function M.ObjectVersionStorageClass(str)
	asserts.AssertObjectVersionStorageClass(str)
	return str
end

function asserts.AssertAnalyticsS3ExportFileFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected AnalyticsS3ExportFileFormat to be of type 'string'")
end

--  
function M.AnalyticsS3ExportFileFormat(str)
	asserts.AssertAnalyticsS3ExportFileFormat(str)
	return str
end

function asserts.AssertTargetBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetBucket to be of type 'string'")
end

--  
function M.TargetBucket(str)
	asserts.AssertTargetBucket(str)
	return str
end

function asserts.AssertURI(str)
	assert(str)
	assert(type(str) == "string", "Expected URI to be of type 'string'")
end

--  
function M.URI(str)
	asserts.AssertURI(str)
	return str
end

function asserts.AssertRecordDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordDelimiter to be of type 'string'")
end

--  
function M.RecordDelimiter(str)
	asserts.AssertRecordDelimiter(str)
	return str
end

function asserts.AssertGrantFullControl(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantFullControl to be of type 'string'")
end

--  
function M.GrantFullControl(str)
	asserts.AssertGrantFullControl(str)
	return str
end

function asserts.AssertInventoryFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFormat to be of type 'string'")
end

--  
function M.InventoryFormat(str)
	asserts.AssertInventoryFormat(str)
	return str
end

function asserts.AssertBucketCannedACL(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketCannedACL to be of type 'string'")
end

--  
function M.BucketCannedACL(str)
	asserts.AssertBucketCannedACL(str)
	return str
end

function asserts.AssertCopySourceIfNoneMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceIfNoneMatch to be of type 'string'")
end

--  
function M.CopySourceIfNoneMatch(str)
	asserts.AssertCopySourceIfNoneMatch(str)
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

function asserts.AssertQuoteEscapeCharacter(str)
	assert(str)
	assert(type(str) == "string", "Expected QuoteEscapeCharacter to be of type 'string'")
end

--  
function M.QuoteEscapeCharacter(str)
	asserts.AssertQuoteEscapeCharacter(str)
	return str
end

function asserts.AssertHttpRedirectCode(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpRedirectCode to be of type 'string'")
end

--  
function M.HttpRedirectCode(str)
	asserts.AssertHttpRedirectCode(str)
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

function asserts.AssertOwnerOverride(str)
	assert(str)
	assert(type(str) == "string", "Expected OwnerOverride to be of type 'string'")
end

--  
function M.OwnerOverride(str)
	asserts.AssertOwnerOverride(str)
	return str
end

function asserts.AssertAnalyticsId(str)
	assert(str)
	assert(type(str) == "string", "Expected AnalyticsId to be of type 'string'")
end

--  
function M.AnalyticsId(str)
	asserts.AssertAnalyticsId(str)
	return str
end

function asserts.AssertNextVersionIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextVersionIdMarker to be of type 'string'")
end

--  
function M.NextVersionIdMarker(str)
	asserts.AssertNextVersionIdMarker(str)
	return str
end

function asserts.AssertResponseContentLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentLanguage to be of type 'string'")
end

--  
function M.ResponseContentLanguage(str)
	asserts.AssertResponseContentLanguage(str)
	return str
end

function asserts.AssertNextUploadIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextUploadIdMarker to be of type 'string'")
end

--  
function M.NextUploadIdMarker(str)
	asserts.AssertNextUploadIdMarker(str)
	return str
end

function asserts.AssertNextMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextMarker to be of type 'string'")
end

--  
function M.NextMarker(str)
	asserts.AssertNextMarker(str)
	return str
end

function asserts.AssertResponseContentDisposition(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentDisposition to be of type 'string'")
end

--  
function M.ResponseContentDisposition(str)
	asserts.AssertResponseContentDisposition(str)
	return str
end

function asserts.AssertExposeHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected ExposeHeader to be of type 'string'")
end

--  
function M.ExposeHeader(str)
	asserts.AssertExposeHeader(str)
	return str
end

function asserts.AssertReplicaKmsKeyID(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicaKmsKeyID to be of type 'string'")
end

--  
function M.ReplicaKmsKeyID(str)
	asserts.AssertReplicaKmsKeyID(str)
	return str
end

function asserts.AssertFilterRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterRuleName to be of type 'string'")
end

--  
function M.FilterRuleName(str)
	asserts.AssertFilterRuleName(str)
	return str
end

function asserts.AssertTier(str)
	assert(str)
	assert(type(str) == "string", "Expected Tier to be of type 'string'")
end

--  
function M.Tier(str)
	asserts.AssertTier(str)
	return str
end

function asserts.AssertCopySourceSSECustomerKeyMD5(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceSSECustomerKeyMD5 to be of type 'string'")
end

--  
function M.CopySourceSSECustomerKeyMD5(str)
	asserts.AssertCopySourceSSECustomerKeyMD5(str)
	return str
end

function asserts.AssertCode(str)
	assert(str)
	assert(type(str) == "string", "Expected Code to be of type 'string'")
end

--  
function M.Code(str)
	asserts.AssertCode(str)
	return str
end

function asserts.AssertEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddress to be of type 'string'")
end

--  
function M.EmailAddress(str)
	asserts.AssertEmailAddress(str)
	return str
end

function asserts.AssertObjectVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectVersionId to be of type 'string'")
end

--  
function M.ObjectVersionId(str)
	asserts.AssertObjectVersionId(str)
	return str
end

function asserts.AssertBucketAccelerateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketAccelerateStatus to be of type 'string'")
end

--  
function M.BucketAccelerateStatus(str)
	asserts.AssertBucketAccelerateStatus(str)
	return str
end

function asserts.AssertDeleteMarkerReplicationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeleteMarkerReplicationStatus to be of type 'string'")
end

--  
function M.DeleteMarkerReplicationStatus(str)
	asserts.AssertDeleteMarkerReplicationStatus(str)
	return str
end

function asserts.AssertExpiration(str)
	assert(str)
	assert(type(str) == "string", "Expected Expiration to be of type 'string'")
end

--  
function M.Expiration(str)
	asserts.AssertExpiration(str)
	return str
end

function asserts.AssertIfMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected IfMatch to be of type 'string'")
end

--  
function M.IfMatch(str)
	asserts.AssertIfMatch(str)
	return str
end

function asserts.AssertETag(str)
	assert(str)
	assert(type(str) == "string", "Expected ETag to be of type 'string'")
end

--  
function M.ETag(str)
	asserts.AssertETag(str)
	return str
end

function asserts.AssertReplicationRuleStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRuleStatus to be of type 'string'")
end

--  
function M.ReplicationRuleStatus(str)
	asserts.AssertReplicationRuleStatus(str)
	return str
end

function asserts.AssertComments(str)
	assert(str)
	assert(type(str) == "string", "Expected Comments to be of type 'string'")
end

--  
function M.Comments(str)
	asserts.AssertComments(str)
	return str
end

function asserts.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	asserts.AssertRole(str)
	return str
end

function asserts.AssertFilterRuleValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterRuleValue to be of type 'string'")
end

--  
function M.FilterRuleValue(str)
	asserts.AssertFilterRuleValue(str)
	return str
end

function asserts.AssertMFADeleteStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected MFADeleteStatus to be of type 'string'")
end

--  
function M.MFADeleteStatus(str)
	asserts.AssertMFADeleteStatus(str)
	return str
end

function asserts.AssertCloudFunction(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudFunction to be of type 'string'")
end

--  
function M.CloudFunction(str)
	asserts.AssertCloudFunction(str)
	return str
end

function asserts.AssertAbortRuleId(str)
	assert(str)
	assert(type(str) == "string", "Expected AbortRuleId to be of type 'string'")
end

--  
function M.AbortRuleId(str)
	asserts.AssertAbortRuleId(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertKeyMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyMarker to be of type 'string'")
end

--  
function M.KeyMarker(str)
	asserts.AssertKeyMarker(str)
	return str
end

function asserts.AssertAllowedMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedMethod to be of type 'string'")
end

--  
function M.AllowedMethod(str)
	asserts.AssertAllowedMethod(str)
	return str
end

function asserts.AssertTaggingDirective(str)
	assert(str)
	assert(type(str) == "string", "Expected TaggingDirective to be of type 'string'")
end

--  
function M.TaggingDirective(str)
	asserts.AssertTaggingDirective(str)
	return str
end

function asserts.AssertVersionIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionIdMarker to be of type 'string'")
end

--  
function M.VersionIdMarker(str)
	asserts.AssertVersionIdMarker(str)
	return str
end

function asserts.AssertLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected Location to be of type 'string'")
end

--  
function M.Location(str)
	asserts.AssertLocation(str)
	return str
end

function asserts.AssertMFA(str)
	assert(str)
	assert(type(str) == "string", "Expected MFA to be of type 'string'")
end

--  
function M.MFA(str)
	asserts.AssertMFA(str)
	return str
end

function asserts.AssertSSEKMSKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected SSEKMSKeyId to be of type 'string'")
end

--  
function M.SSEKMSKeyId(str)
	asserts.AssertSSEKMSKeyId(str)
	return str
end

function asserts.AssertInventoryOptionalField(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryOptionalField to be of type 'string'")
end

--  
function M.InventoryOptionalField(str)
	asserts.AssertInventoryOptionalField(str)
	return str
end

function asserts.AssertKeyPrefixEquals(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyPrefixEquals to be of type 'string'")
end

--  
function M.KeyPrefixEquals(str)
	asserts.AssertKeyPrefixEquals(str)
	return str
end

function asserts.AssertStorageClassAnalysisSchemaVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClassAnalysisSchemaVersion to be of type 'string'")
end

--  
function M.StorageClassAnalysisSchemaVersion(str)
	asserts.AssertStorageClassAnalysisSchemaVersion(str)
	return str
end

function asserts.AssertMFADelete(str)
	assert(str)
	assert(type(str) == "string", "Expected MFADelete to be of type 'string'")
end

--  
function M.MFADelete(str)
	asserts.AssertMFADelete(str)
	return str
end

function asserts.AssertKMSContext(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSContext to be of type 'string'")
end

--  
function M.KMSContext(str)
	asserts.AssertKMSContext(str)
	return str
end

function asserts.AssertJSONType(str)
	assert(str)
	assert(type(str) == "string", "Expected JSONType to be of type 'string'")
end

--  
function M.JSONType(str)
	asserts.AssertJSONType(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertObjectCannedACL(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectCannedACL to be of type 'string'")
end

--  
function M.ObjectCannedACL(str)
	asserts.AssertObjectCannedACL(str)
	return str
end

function asserts.AssertSseKmsEncryptedObjectsStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SseKmsEncryptedObjectsStatus to be of type 'string'")
end

--  
function M.SseKmsEncryptedObjectsStatus(str)
	asserts.AssertSseKmsEncryptedObjectsStatus(str)
	return str
end

function asserts.AssertNextKeyMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextKeyMarker to be of type 'string'")
end

--  
function M.NextKeyMarker(str)
	asserts.AssertNextKeyMarker(str)
	return str
end

function asserts.AssertServerSideEncryption(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerSideEncryption to be of type 'string'")
end

--  
function M.ServerSideEncryption(str)
	asserts.AssertServerSideEncryption(str)
	return str
end

function asserts.AssertContentDisposition(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentDisposition to be of type 'string'")
end

--  
function M.ContentDisposition(str)
	asserts.AssertContentDisposition(str)
	return str
end

function asserts.AssertMetadataKey(str)
	assert(str)
	assert(type(str) == "string", "Expected MetadataKey to be of type 'string'")
end

--  
function M.MetadataKey(str)
	asserts.AssertMetadataKey(str)
	return str
end

function asserts.AssertUploadIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadIdMarker to be of type 'string'")
end

--  
function M.UploadIdMarker(str)
	asserts.AssertUploadIdMarker(str)
	return str
end

function asserts.AssertCopySourceRange(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceRange to be of type 'string'")
end

--  
function M.CopySourceRange(str)
	asserts.AssertCopySourceRange(str)
	return str
end

function asserts.AssertFieldDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldDelimiter to be of type 'string'")
end

--  
function M.FieldDelimiter(str)
	asserts.AssertFieldDelimiter(str)
	return str
end

function asserts.AssertID(str)
	assert(str)
	assert(type(str) == "string", "Expected ID to be of type 'string'")
end

--  
function M.ID(str)
	asserts.AssertID(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertQuoteCharacter(str)
	assert(str)
	assert(type(str) == "string", "Expected QuoteCharacter to be of type 'string'")
end

--  
function M.QuoteCharacter(str)
	asserts.AssertQuoteCharacter(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertObjectKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ObjectKey(str)
	asserts.AssertObjectKey(str)
	return str
end

function asserts.AssertRequestPayer(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestPayer to be of type 'string'")
end

-- <p>Confirms that the requester knows that she or he will be charged for the request. Bucket owners need not specify this parameter in their requests. Documentation on downloading objects from requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html</p>
function M.RequestPayer(str)
	asserts.AssertRequestPayer(str)
	return str
end

function asserts.AssertBucketVersioningStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketVersioningStatus to be of type 'string'")
end

--  
function M.BucketVersioningStatus(str)
	asserts.AssertBucketVersioningStatus(str)
	return str
end

function asserts.AssertRestoreRequestType(str)
	assert(str)
	assert(type(str) == "string", "Expected RestoreRequestType to be of type 'string'")
end

--  
function M.RestoreRequestType(str)
	asserts.AssertRestoreRequestType(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertReplaceKeyPrefixWith(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplaceKeyPrefixWith to be of type 'string'")
end

--  
function M.ReplaceKeyPrefixWith(str)
	asserts.AssertReplaceKeyPrefixWith(str)
	return str
end

function asserts.AssertCopySourceSSECustomerAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceSSECustomerAlgorithm to be of type 'string'")
end

--  
function M.CopySourceSSECustomerAlgorithm(str)
	asserts.AssertCopySourceSSECustomerAlgorithm(str)
	return str
end

function asserts.AssertSSECustomerAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected SSECustomerAlgorithm to be of type 'string'")
end

--  
function M.SSECustomerAlgorithm(str)
	asserts.AssertSSECustomerAlgorithm(str)
	return str
end

function asserts.AssertBucketLocationConstraint(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketLocationConstraint to be of type 'string'")
end

--  
function M.BucketLocationConstraint(str)
	asserts.AssertBucketLocationConstraint(str)
	return str
end

function asserts.AssertDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected DisplayName to be of type 'string'")
end

--  
function M.DisplayName(str)
	asserts.AssertDisplayName(str)
	return str
end

function asserts.AssertGrantReadACP(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantReadACP to be of type 'string'")
end

--  
function M.GrantReadACP(str)
	asserts.AssertGrantReadACP(str)
	return str
end

function asserts.AssertResponseContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentType to be of type 'string'")
end

--  
function M.ResponseContentType(str)
	asserts.AssertResponseContentType(str)
	return str
end

function asserts.AssertRange(str)
	assert(str)
	assert(type(str) == "string", "Expected Range to be of type 'string'")
end

--  
function M.Range(str)
	asserts.AssertRange(str)
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

function asserts.AssertEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected Event to be of type 'string'")
end

-- <p>Bucket event for which to send notifications.</p>
function M.Event(str)
	asserts.AssertEvent(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertCompressionType(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionType to be of type 'string'")
end

--  
function M.CompressionType(str)
	asserts.AssertCompressionType(str)
	return str
end

function asserts.AssertContentEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentEncoding to be of type 'string'")
end

--  
function M.ContentEncoding(str)
	asserts.AssertContentEncoding(str)
	return str
end

function asserts.AssertStartAfter(str)
	assert(str)
	assert(type(str) == "string", "Expected StartAfter to be of type 'string'")
end

--  
function M.StartAfter(str)
	asserts.AssertStartAfter(str)
	return str
end

function asserts.AssertAllowedOrigin(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedOrigin to be of type 'string'")
end

--  
function M.AllowedOrigin(str)
	asserts.AssertAllowedOrigin(str)
	return str
end

function asserts.AssertInventoryIncludedObjectVersions(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryIncludedObjectVersions to be of type 'string'")
end

--  
function M.InventoryIncludedObjectVersions(str)
	asserts.AssertInventoryIncludedObjectVersions(str)
	return str
end

function asserts.AssertTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicArn to be of type 'string'")
end

--  
function M.TopicArn(str)
	asserts.AssertTopicArn(str)
	return str
end

function asserts.AssertMetricsId(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricsId to be of type 'string'")
end

--  
function M.MetricsId(str)
	asserts.AssertMetricsId(str)
	return str
end

function asserts.AssertContentMD5(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentMD5 to be of type 'string'")
end

--  
function M.ContentMD5(str)
	asserts.AssertContentMD5(str)
	return str
end

function asserts.AssertMetadataDirective(str)
	assert(str)
	assert(type(str) == "string", "Expected MetadataDirective to be of type 'string'")
end

--  
function M.MetadataDirective(str)
	asserts.AssertMetadataDirective(str)
	return str
end

function asserts.AssertPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected Prefix to be of type 'string'")
end

--  
function M.Prefix(str)
	asserts.AssertPrefix(str)
	return str
end

function asserts.AssertInventoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryId to be of type 'string'")
end

--  
function M.InventoryId(str)
	asserts.AssertInventoryId(str)
	return str
end

function asserts.AssertContentRange(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentRange to be of type 'string'")
end

--  
function M.ContentRange(str)
	asserts.AssertContentRange(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertGrantWrite(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantWrite to be of type 'string'")
end

--  
function M.GrantWrite(str)
	asserts.AssertGrantWrite(str)
	return str
end

function asserts.AssertCopySourceIfMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceIfMatch to be of type 'string'")
end

--  
function M.CopySourceIfMatch(str)
	asserts.AssertCopySourceIfMatch(str)
	return str
end

function asserts.AssertAllowedHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedHeader to be of type 'string'")
end

--  
function M.AllowedHeader(str)
	asserts.AssertAllowedHeader(str)
	return str
end

function asserts.AssertDeleteMarkerVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeleteMarkerVersionId to be of type 'string'")
end

--  
function M.DeleteMarkerVersionId(str)
	asserts.AssertDeleteMarkerVersionId(str)
	return str
end

function asserts.AssertResponseCacheControl(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseCacheControl to be of type 'string'")
end

--  
function M.ResponseCacheControl(str)
	asserts.AssertResponseCacheControl(str)
	return str
end

function asserts.AssertBytesScanned(long)
	assert(long)
	assert(type(long) == "number", "Expected BytesScanned to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BytesScanned(long)
	asserts.AssertBytesScanned(long)
	return long
end

function asserts.AssertBytesReturned(long)
	assert(long)
	assert(type(long) == "number", "Expected BytesReturned to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BytesReturned(long)
	asserts.AssertBytesReturned(long)
	return long
end

function asserts.AssertBytesProcessed(long)
	assert(long)
	assert(type(long) == "number", "Expected BytesProcessed to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.BytesProcessed(long)
	asserts.AssertBytesProcessed(long)
	return long
end

function asserts.AssertContentLength(long)
	assert(long)
	assert(type(long) == "number", "Expected ContentLength to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ContentLength(long)
	asserts.AssertContentLength(long)
	return long
end

function asserts.AssertDaysAfterInitiation(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DaysAfterInitiation to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.DaysAfterInitiation(integer)
	asserts.AssertDaysAfterInitiation(integer)
	return integer
end

function asserts.AssertMissingMeta(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MissingMeta to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MissingMeta(integer)
	asserts.AssertMissingMeta(integer)
	return integer
end

function asserts.AssertMaxKeys(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxKeys to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxKeys(integer)
	asserts.AssertMaxKeys(integer)
	return integer
end

function asserts.AssertKeyCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected KeyCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.KeyCount(integer)
	asserts.AssertKeyCount(integer)
	return integer
end

function asserts.AssertMaxParts(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxParts to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxParts(integer)
	asserts.AssertMaxParts(integer)
	return integer
end

function asserts.AssertTagCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TagCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TagCount(integer)
	asserts.AssertTagCount(integer)
	return integer
end

function asserts.AssertDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Days to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Days(integer)
	asserts.AssertDays(integer)
	return integer
end

function asserts.AssertPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Priority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Priority(integer)
	asserts.AssertPriority(integer)
	return integer
end

function asserts.AssertPartsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PartsCount(integer)
	asserts.AssertPartsCount(integer)
	return integer
end

function asserts.AssertMaxUploads(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxUploads to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxUploads(integer)
	asserts.AssertMaxUploads(integer)
	return integer
end

function asserts.AssertSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Size to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Size(integer)
	asserts.AssertSize(integer)
	return integer
end

function asserts.AssertMaxAgeSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxAgeSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxAgeSeconds(integer)
	asserts.AssertMaxAgeSeconds(integer)
	return integer
end

function asserts.AssertPartNumberMarker(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartNumberMarker to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PartNumberMarker(integer)
	asserts.AssertPartNumberMarker(integer)
	return integer
end

function asserts.AssertPartNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PartNumber(integer)
	asserts.AssertPartNumber(integer)
	return integer
end

function asserts.AssertNextPartNumberMarker(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NextPartNumberMarker to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NextPartNumberMarker(integer)
	asserts.AssertNextPartNumberMarker(integer)
	return integer
end

function asserts.AssertIsEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsEnabled to be of type 'boolean'")
end

function M.IsEnabled(boolean)
	asserts.AssertIsEnabled(boolean)
	return boolean
end

function asserts.AssertQuiet(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Quiet to be of type 'boolean'")
end

function M.Quiet(boolean)
	asserts.AssertQuiet(boolean)
	return boolean
end

function asserts.AssertDeleteMarker(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteMarker to be of type 'boolean'")
end

function M.DeleteMarker(boolean)
	asserts.AssertDeleteMarker(boolean)
	return boolean
end

function asserts.AssertExpiredObjectDeleteMarker(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ExpiredObjectDeleteMarker to be of type 'boolean'")
end

function M.ExpiredObjectDeleteMarker(boolean)
	asserts.AssertExpiredObjectDeleteMarker(boolean)
	return boolean
end

function asserts.AssertIsTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsTruncated to be of type 'boolean'")
end

function M.IsTruncated(boolean)
	asserts.AssertIsTruncated(boolean)
	return boolean
end

function asserts.AssertIsLatest(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsLatest to be of type 'boolean'")
end

function M.IsLatest(boolean)
	asserts.AssertIsLatest(boolean)
	return boolean
end

function asserts.AssertConfirmRemoveSelfBucketAccess(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ConfirmRemoveSelfBucketAccess to be of type 'boolean'")
end

function M.ConfirmRemoveSelfBucketAccess(boolean)
	asserts.AssertConfirmRemoveSelfBucketAccess(boolean)
	return boolean
end

function asserts.AssertEnableRequestProgress(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected EnableRequestProgress to be of type 'boolean'")
end

function M.EnableRequestProgress(boolean)
	asserts.AssertEnableRequestProgress(boolean)
	return boolean
end

function asserts.AssertFetchOwner(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected FetchOwner to be of type 'boolean'")
end

function M.FetchOwner(boolean)
	asserts.AssertFetchOwner(boolean)
	return boolean
end

function asserts.AssertAllowQuotedRecordDelimiter(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AllowQuotedRecordDelimiter to be of type 'boolean'")
end

function M.AllowQuotedRecordDelimiter(boolean)
	asserts.AssertAllowQuotedRecordDelimiter(boolean)
	return boolean
end

function asserts.AssertMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected Metadata to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertMetadataKey(k)
		asserts.AssertMetadataValue(v)
	end
end

function M.Metadata(map)
	asserts.AssertMetadata(map)
	return map
end

function asserts.AssertIfUnmodifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IfUnmodifiedSince to be of type 'string'")
end

function M.IfUnmodifiedSince(timestamp)
	asserts.AssertIfUnmodifiedSince(timestamp)
	return timestamp
end

function asserts.AssertIfModifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IfModifiedSince to be of type 'string'")
end

function M.IfModifiedSince(timestamp)
	asserts.AssertIfModifiedSince(timestamp)
	return timestamp
end

function asserts.AssertExpires(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Expires to be of type 'string'")
end

function M.Expires(timestamp)
	asserts.AssertExpires(timestamp)
	return timestamp
end

function asserts.AssertAbortDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AbortDate to be of type 'string'")
end

function M.AbortDate(timestamp)
	asserts.AssertAbortDate(timestamp)
	return timestamp
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertCopySourceIfUnmodifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CopySourceIfUnmodifiedSince to be of type 'string'")
end

function M.CopySourceIfUnmodifiedSince(timestamp)
	asserts.AssertCopySourceIfUnmodifiedSince(timestamp)
	return timestamp
end

function asserts.AssertResponseExpires(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResponseExpires to be of type 'string'")
end

function M.ResponseExpires(timestamp)
	asserts.AssertResponseExpires(timestamp)
	return timestamp
end

function asserts.AssertInitiated(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Initiated to be of type 'string'")
end

function M.Initiated(timestamp)
	asserts.AssertInitiated(timestamp)
	return timestamp
end

function asserts.AssertLastModified(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModified to be of type 'string'")
end

function M.LastModified(timestamp)
	asserts.AssertLastModified(timestamp)
	return timestamp
end

function asserts.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	asserts.AssertCreationDate(timestamp)
	return timestamp
end

function asserts.AssertCopySourceIfModifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CopySourceIfModifiedSince to be of type 'string'")
end

function M.CopySourceIfModifiedSince(timestamp)
	asserts.AssertCopySourceIfModifiedSince(timestamp)
	return timestamp
end

function asserts.AssertCopySourceSSECustomerKey(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected CopySourceSSECustomerKey to be of type 'string'")
end

function M.CopySourceSSECustomerKey(blob)
	asserts.AssertCopySourceSSECustomerKey(blob)
	return blob
end

function asserts.AssertBody(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Body to be of type 'string'")
end

function M.Body(blob)
	asserts.AssertBody(blob)
	return blob
end

function asserts.AssertSSECustomerKey(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected SSECustomerKey to be of type 'string'")
end

function M.SSECustomerKey(blob)
	asserts.AssertSSECustomerKey(blob)
	return blob
end

function asserts.AssertTopicConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTopicConfiguration(v)
	end
end

--  
-- List of TopicConfiguration objects
function M.TopicConfigurationList(list)
	asserts.AssertTopicConfigurationList(list)
	return list
end

function asserts.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	asserts.AssertEventList(list)
	return list
end

function asserts.AssertInventoryOptionalFields(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryOptionalFields to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInventoryOptionalField(v)
	end
end

--  
-- List of InventoryOptionalField objects
function M.InventoryOptionalFields(list)
	asserts.AssertInventoryOptionalFields(list)
	return list
end

function asserts.AssertTransitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TransitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTransition(v)
	end
end

--  
-- List of Transition objects
function M.TransitionList(list)
	asserts.AssertTransitionList(list)
	return list
end

function asserts.AssertObjectList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObject(v)
	end
end

--  
-- List of Object objects
function M.ObjectList(list)
	asserts.AssertObjectList(list)
	return list
end

function asserts.AssertParts(list)
	assert(list)
	assert(type(list) == "table", "Expected Parts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPart(v)
	end
end

--  
-- List of Part objects
function M.Parts(list)
	asserts.AssertParts(list)
	return list
end

function asserts.AssertReplicationRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationRule(v)
	end
end

--  
-- List of ReplicationRule objects
function M.ReplicationRules(list)
	asserts.AssertReplicationRules(list)
	return list
end

function asserts.AssertRules(list)
	assert(list)
	assert(type(list) == "table", "Expected Rules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.Rules(list)
	asserts.AssertRules(list)
	return list
end

function asserts.AssertDeleteMarkers(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMarkers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeleteMarkerEntry(v)
	end
end

--  
-- List of DeleteMarkerEntry objects
function M.DeleteMarkers(list)
	asserts.AssertDeleteMarkers(list)
	return list
end

function asserts.AssertCommonPrefixList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommonPrefixList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommonPrefix(v)
	end
end

--  
-- List of CommonPrefix objects
function M.CommonPrefixList(list)
	asserts.AssertCommonPrefixList(list)
	return list
end

function asserts.AssertCORSRules(list)
	assert(list)
	assert(type(list) == "table", "Expected CORSRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCORSRule(v)
	end
end

--  
-- List of CORSRule objects
function M.CORSRules(list)
	asserts.AssertCORSRules(list)
	return list
end

function asserts.AssertTargetGrants(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGrants to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetGrant(v)
	end
end

--  
-- List of TargetGrant objects
function M.TargetGrants(list)
	asserts.AssertTargetGrants(list)
	return list
end

function asserts.AssertRoutingRules(list)
	assert(list)
	assert(type(list) == "table", "Expected RoutingRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoutingRule(v)
	end
end

--  
-- List of RoutingRule objects
function M.RoutingRules(list)
	asserts.AssertRoutingRules(list)
	return list
end

function asserts.AssertLambdaFunctionConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaFunctionConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLambdaFunctionConfiguration(v)
	end
end

--  
-- List of LambdaFunctionConfiguration objects
function M.LambdaFunctionConfigurationList(list)
	asserts.AssertLambdaFunctionConfigurationList(list)
	return list
end

function asserts.AssertObjectVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectVersion(v)
	end
end

--  
-- List of ObjectVersion objects
function M.ObjectVersionList(list)
	asserts.AssertObjectVersionList(list)
	return list
end

function asserts.AssertLifecycleRules(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLifecycleRule(v)
	end
end

--  
-- List of LifecycleRule objects
function M.LifecycleRules(list)
	asserts.AssertLifecycleRules(list)
	return list
end

function asserts.AssertDeletedObjects(list)
	assert(list)
	assert(type(list) == "table", "Expected DeletedObjects to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeletedObject(v)
	end
end

--  
-- List of DeletedObject objects
function M.DeletedObjects(list)
	asserts.AssertDeletedObjects(list)
	return list
end

function asserts.AssertTagSet(list)
	assert(list)
	assert(type(list) == "table", "Expected TagSet to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagSet(list)
	asserts.AssertTagSet(list)
	return list
end

function asserts.AssertInventoryConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInventoryConfiguration(v)
	end
end

--  
-- List of InventoryConfiguration objects
function M.InventoryConfigurationList(list)
	asserts.AssertInventoryConfigurationList(list)
	return list
end

function asserts.AssertObjectIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectIdentifier(v)
	end
end

--  
-- List of ObjectIdentifier objects
function M.ObjectIdentifierList(list)
	asserts.AssertObjectIdentifierList(list)
	return list
end

function asserts.AssertCompletedPartList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompletedPartList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCompletedPart(v)
	end
end

--  
-- List of CompletedPart objects
function M.CompletedPartList(list)
	asserts.AssertCompletedPartList(list)
	return list
end

function asserts.AssertNoncurrentVersionTransitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected NoncurrentVersionTransitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNoncurrentVersionTransition(v)
	end
end

--  
-- List of NoncurrentVersionTransition objects
function M.NoncurrentVersionTransitionList(list)
	asserts.AssertNoncurrentVersionTransitionList(list)
	return list
end

function asserts.AssertUserMetadata(list)
	assert(list)
	assert(type(list) == "table", "Expected UserMetadata to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetadataEntry(v)
	end
end

--  
-- List of MetadataEntry objects
function M.UserMetadata(list)
	asserts.AssertUserMetadata(list)
	return list
end

function asserts.AssertServerSideEncryptionRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ServerSideEncryptionRules to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServerSideEncryptionRule(v)
	end
end

--  
-- List of ServerSideEncryptionRule objects
function M.ServerSideEncryptionRules(list)
	asserts.AssertServerSideEncryptionRules(list)
	return list
end

function asserts.AssertMultipartUploadList(list)
	assert(list)
	assert(type(list) == "table", "Expected MultipartUploadList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMultipartUpload(v)
	end
end

--  
-- List of MultipartUpload objects
function M.MultipartUploadList(list)
	asserts.AssertMultipartUploadList(list)
	return list
end

function asserts.AssertFilterRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilterRule(v)
	end
end

-- <p>A list of containers for key value pair that defines the criteria for the filter rule.</p>
-- List of FilterRule objects
function M.FilterRuleList(list)
	asserts.AssertFilterRuleList(list)
	return list
end

function asserts.AssertErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected Errors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertError(v)
	end
end

--  
-- List of Error objects
function M.Errors(list)
	asserts.AssertErrors(list)
	return list
end

function asserts.AssertExposeHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected ExposeHeaders to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExposeHeader(v)
	end
end

--  
-- List of ExposeHeader objects
function M.ExposeHeaders(list)
	asserts.AssertExposeHeaders(list)
	return list
end

function asserts.AssertAllowedMethods(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedMethods to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedMethod(v)
	end
end

--  
-- List of AllowedMethod objects
function M.AllowedMethods(list)
	asserts.AssertAllowedMethods(list)
	return list
end

function asserts.AssertGrants(list)
	assert(list)
	assert(type(list) == "table", "Expected Grants to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGrant(v)
	end
end

--  
-- List of Grant objects
function M.Grants(list)
	asserts.AssertGrants(list)
	return list
end

function asserts.AssertQueueConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueueConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueueConfiguration(v)
	end
end

--  
-- List of QueueConfiguration objects
function M.QueueConfigurationList(list)
	asserts.AssertQueueConfigurationList(list)
	return list
end

function asserts.AssertAllowedOrigins(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedOrigins to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedOrigin(v)
	end
end

--  
-- List of AllowedOrigin objects
function M.AllowedOrigins(list)
	asserts.AssertAllowedOrigins(list)
	return list
end

function asserts.AssertAllowedHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedHeaders to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedHeader(v)
	end
end

--  
-- List of AllowedHeader objects
function M.AllowedHeaders(list)
	asserts.AssertAllowedHeaders(list)
	return list
end

function asserts.AssertMetricsConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricsConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricsConfiguration(v)
	end
end

--  
-- List of MetricsConfiguration objects
function M.MetricsConfigurationList(list)
	asserts.AssertMetricsConfigurationList(list)
	return list
end

function asserts.AssertBuckets(list)
	assert(list)
	assert(type(list) == "table", "Expected Buckets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBucket(v)
	end
end

--  
-- List of Bucket objects
function M.Buckets(list)
	asserts.AssertBuckets(list)
	return list
end

function asserts.AssertAnalyticsConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AnalyticsConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAnalyticsConfiguration(v)
	end
end

--  
-- List of AnalyticsConfiguration objects
function M.AnalyticsConfigurationList(list)
	asserts.AssertAnalyticsConfigurationList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "s3.amazonaws.com"
		end
	end
	local ss = { "s3" }
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
--- Call ListObjectVersions asynchronously, invoking a callback when done
-- @param ListObjectVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectVersionsAsync(ListObjectVersionsRequest, cb)
	assert(ListObjectVersionsRequest, "You must provide a ListObjectVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectVersions",
	}
	for header,value in pairs(ListObjectVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?versions", ListObjectVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectVersionsSync(ListObjectVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectVersionsAsync(ListObjectVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketPolicy asynchronously, invoking a callback when done
-- @param PutBucketPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketPolicyAsync(PutBucketPolicyRequest, cb)
	assert(PutBucketPolicyRequest, "You must provide a PutBucketPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketPolicy",
	}
	for header,value in pairs(PutBucketPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?policy", PutBucketPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketPolicySync(PutBucketPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketPolicyAsync(PutBucketPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBucketInventoryConfigurations asynchronously, invoking a callback when done
-- @param ListBucketInventoryConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBucketInventoryConfigurationsAsync(ListBucketInventoryConfigurationsRequest, cb)
	assert(ListBucketInventoryConfigurationsRequest, "You must provide a ListBucketInventoryConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBucketInventoryConfigurations",
	}
	for header,value in pairs(ListBucketInventoryConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?inventory", ListBucketInventoryConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBucketInventoryConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBucketInventoryConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListBucketInventoryConfigurationsSync(ListBucketInventoryConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketInventoryConfigurationsAsync(ListBucketInventoryConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketPolicy asynchronously, invoking a callback when done
-- @param DeleteBucketPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketPolicyAsync(DeleteBucketPolicyRequest, cb)
	assert(DeleteBucketPolicyRequest, "You must provide a DeleteBucketPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketPolicy",
	}
	for header,value in pairs(DeleteBucketPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?policy", DeleteBucketPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketPolicySync(DeleteBucketPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketPolicyAsync(DeleteBucketPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketLifecycleConfiguration asynchronously, invoking a callback when done
-- @param PutBucketLifecycleConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketLifecycleConfigurationAsync(PutBucketLifecycleConfigurationRequest, cb)
	assert(PutBucketLifecycleConfigurationRequest, "You must provide a PutBucketLifecycleConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketLifecycleConfiguration",
	}
	for header,value in pairs(PutBucketLifecycleConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?lifecycle", PutBucketLifecycleConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketLifecycleConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketLifecycleConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketLifecycleConfigurationSync(PutBucketLifecycleConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketLifecycleConfigurationAsync(PutBucketLifecycleConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketRequestPayment asynchronously, invoking a callback when done
-- @param PutBucketRequestPaymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketRequestPaymentAsync(PutBucketRequestPaymentRequest, cb)
	assert(PutBucketRequestPaymentRequest, "You must provide a PutBucketRequestPaymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketRequestPayment",
	}
	for header,value in pairs(PutBucketRequestPaymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?requestPayment", PutBucketRequestPaymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketRequestPayment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketRequestPaymentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketRequestPaymentSync(PutBucketRequestPaymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketRequestPaymentAsync(PutBucketRequestPaymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketEncryption asynchronously, invoking a callback when done
-- @param GetBucketEncryptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketEncryptionAsync(GetBucketEncryptionRequest, cb)
	assert(GetBucketEncryptionRequest, "You must provide a GetBucketEncryptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketEncryption",
	}
	for header,value in pairs(GetBucketEncryptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?encryption", GetBucketEncryptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketEncryption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketEncryptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketEncryptionSync(GetBucketEncryptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketEncryptionAsync(GetBucketEncryptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjects asynchronously, invoking a callback when done
-- @param ListObjectsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectsAsync(ListObjectsRequest, cb)
	assert(ListObjectsRequest, "You must provide a ListObjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjects",
	}
	for header,value in pairs(ListObjectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}", ListObjectsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectsSync(ListObjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectsAsync(ListObjectsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketMetricsConfiguration asynchronously, invoking a callback when done
-- @param GetBucketMetricsConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketMetricsConfigurationAsync(GetBucketMetricsConfigurationRequest, cb)
	assert(GetBucketMetricsConfigurationRequest, "You must provide a GetBucketMetricsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketMetricsConfiguration",
	}
	for header,value in pairs(GetBucketMetricsConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?metrics", GetBucketMetricsConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketMetricsConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketMetricsConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketMetricsConfigurationSync(GetBucketMetricsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketMetricsConfigurationAsync(GetBucketMetricsConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketInventoryConfiguration asynchronously, invoking a callback when done
-- @param PutBucketInventoryConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketInventoryConfigurationAsync(PutBucketInventoryConfigurationRequest, cb)
	assert(PutBucketInventoryConfigurationRequest, "You must provide a PutBucketInventoryConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketInventoryConfiguration",
	}
	for header,value in pairs(PutBucketInventoryConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?inventory", PutBucketInventoryConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketInventoryConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketInventoryConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketInventoryConfigurationSync(PutBucketInventoryConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketInventoryConfigurationAsync(PutBucketInventoryConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketLogging asynchronously, invoking a callback when done
-- @param PutBucketLoggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketLoggingAsync(PutBucketLoggingRequest, cb)
	assert(PutBucketLoggingRequest, "You must provide a PutBucketLoggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketLogging",
	}
	for header,value in pairs(PutBucketLoggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?logging", PutBucketLoggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketLogging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketLoggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketLoggingSync(PutBucketLoggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketLoggingAsync(PutBucketLoggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketReplication asynchronously, invoking a callback when done
-- @param PutBucketReplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketReplicationAsync(PutBucketReplicationRequest, cb)
	assert(PutBucketReplicationRequest, "You must provide a PutBucketReplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketReplication",
	}
	for header,value in pairs(PutBucketReplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?replication", PutBucketReplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketReplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketReplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketReplicationSync(PutBucketReplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketReplicationAsync(PutBucketReplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketAccelerateConfiguration asynchronously, invoking a callback when done
-- @param PutBucketAccelerateConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketAccelerateConfigurationAsync(PutBucketAccelerateConfigurationRequest, cb)
	assert(PutBucketAccelerateConfigurationRequest, "You must provide a PutBucketAccelerateConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketAccelerateConfiguration",
	}
	for header,value in pairs(PutBucketAccelerateConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?accelerate", PutBucketAccelerateConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketAccelerateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketAccelerateConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketAccelerateConfigurationSync(PutBucketAccelerateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketAccelerateConfigurationAsync(PutBucketAccelerateConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketAcl asynchronously, invoking a callback when done
-- @param PutBucketAclRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketAclAsync(PutBucketAclRequest, cb)
	assert(PutBucketAclRequest, "You must provide a PutBucketAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketAcl",
	}
	for header,value in pairs(PutBucketAclRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?acl", PutBucketAclRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketAcl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketAclRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketAclSync(PutBucketAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketAclAsync(PutBucketAclRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadPart asynchronously, invoking a callback when done
-- @param UploadPartRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadPartAsync(UploadPartRequest, cb)
	assert(UploadPartRequest, "You must provide a UploadPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadPart",
	}
	for header,value in pairs(UploadPartRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", UploadPartRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadPartRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UploadPartSync(UploadPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadPartAsync(UploadPartRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObject asynchronously, invoking a callback when done
-- @param PutObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutObjectAsync(PutObjectRequest, cb)
	assert(PutObjectRequest, "You must provide a PutObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObject",
	}
	for header,value in pairs(PutObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", PutObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutObjectSync(PutObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectAsync(PutObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketCors asynchronously, invoking a callback when done
-- @param DeleteBucketCorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketCorsAsync(DeleteBucketCorsRequest, cb)
	assert(DeleteBucketCorsRequest, "You must provide a DeleteBucketCorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketCors",
	}
	for header,value in pairs(DeleteBucketCorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?cors", DeleteBucketCorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketCors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketCorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketCorsSync(DeleteBucketCorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketCorsAsync(DeleteBucketCorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketVersioning asynchronously, invoking a callback when done
-- @param PutBucketVersioningRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketVersioningAsync(PutBucketVersioningRequest, cb)
	assert(PutBucketVersioningRequest, "You must provide a PutBucketVersioningRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketVersioning",
	}
	for header,value in pairs(PutBucketVersioningRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?versioning", PutBucketVersioningRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketVersioning synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketVersioningRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketVersioningSync(PutBucketVersioningRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketVersioningAsync(PutBucketVersioningRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyObject asynchronously, invoking a callback when done
-- @param CopyObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyObjectAsync(CopyObjectRequest, cb)
	assert(CopyObjectRequest, "You must provide a CopyObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyObject",
	}
	for header,value in pairs(CopyObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", CopyObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CopyObjectSync(CopyObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyObjectAsync(CopyObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBucketAnalyticsConfigurations asynchronously, invoking a callback when done
-- @param ListBucketAnalyticsConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBucketAnalyticsConfigurationsAsync(ListBucketAnalyticsConfigurationsRequest, cb)
	assert(ListBucketAnalyticsConfigurationsRequest, "You must provide a ListBucketAnalyticsConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBucketAnalyticsConfigurations",
	}
	for header,value in pairs(ListBucketAnalyticsConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?analytics", ListBucketAnalyticsConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBucketAnalyticsConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBucketAnalyticsConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListBucketAnalyticsConfigurationsSync(ListBucketAnalyticsConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketAnalyticsConfigurationsAsync(ListBucketAnalyticsConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketAcl asynchronously, invoking a callback when done
-- @param GetBucketAclRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketAclAsync(GetBucketAclRequest, cb)
	assert(GetBucketAclRequest, "You must provide a GetBucketAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketAcl",
	}
	for header,value in pairs(GetBucketAclRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?acl", GetBucketAclRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketAcl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketAclRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketAclSync(GetBucketAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketAclAsync(GetBucketAclRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketMetricsConfiguration asynchronously, invoking a callback when done
-- @param DeleteBucketMetricsConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketMetricsConfigurationAsync(DeleteBucketMetricsConfigurationRequest, cb)
	assert(DeleteBucketMetricsConfigurationRequest, "You must provide a DeleteBucketMetricsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketMetricsConfiguration",
	}
	for header,value in pairs(DeleteBucketMetricsConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?metrics", DeleteBucketMetricsConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketMetricsConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketMetricsConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketMetricsConfigurationSync(DeleteBucketMetricsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketMetricsConfigurationAsync(DeleteBucketMetricsConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketLogging asynchronously, invoking a callback when done
-- @param GetBucketLoggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketLoggingAsync(GetBucketLoggingRequest, cb)
	assert(GetBucketLoggingRequest, "You must provide a GetBucketLoggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketLogging",
	}
	for header,value in pairs(GetBucketLoggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?logging", GetBucketLoggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketLogging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketLoggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketLoggingSync(GetBucketLoggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketLoggingAsync(GetBucketLoggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call HeadBucket asynchronously, invoking a callback when done
-- @param HeadBucketRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.HeadBucketAsync(HeadBucketRequest, cb)
	assert(HeadBucketRequest, "You must provide a HeadBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".HeadBucket",
	}
	for header,value in pairs(HeadBucketRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "HEAD")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}", HeadBucketRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call HeadBucket synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param HeadBucketRequest
-- @return response
-- @return error_type
-- @return error_message
function M.HeadBucketSync(HeadBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.HeadBucketAsync(HeadBucketRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBucketMetricsConfigurations asynchronously, invoking a callback when done
-- @param ListBucketMetricsConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBucketMetricsConfigurationsAsync(ListBucketMetricsConfigurationsRequest, cb)
	assert(ListBucketMetricsConfigurationsRequest, "You must provide a ListBucketMetricsConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBucketMetricsConfigurations",
	}
	for header,value in pairs(ListBucketMetricsConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?metrics", ListBucketMetricsConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBucketMetricsConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBucketMetricsConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListBucketMetricsConfigurationsSync(ListBucketMetricsConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketMetricsConfigurationsAsync(ListBucketMetricsConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBuckets asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBucketsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBuckets",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBuckets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.ListBucketsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketsAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketWebsite asynchronously, invoking a callback when done
-- @param DeleteBucketWebsiteRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketWebsiteAsync(DeleteBucketWebsiteRequest, cb)
	assert(DeleteBucketWebsiteRequest, "You must provide a DeleteBucketWebsiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketWebsite",
	}
	for header,value in pairs(DeleteBucketWebsiteRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?website", DeleteBucketWebsiteRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketWebsite synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketWebsiteRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketWebsiteSync(DeleteBucketWebsiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketWebsiteAsync(DeleteBucketWebsiteRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketInventoryConfiguration asynchronously, invoking a callback when done
-- @param DeleteBucketInventoryConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketInventoryConfigurationAsync(DeleteBucketInventoryConfigurationRequest, cb)
	assert(DeleteBucketInventoryConfigurationRequest, "You must provide a DeleteBucketInventoryConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketInventoryConfiguration",
	}
	for header,value in pairs(DeleteBucketInventoryConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?inventory", DeleteBucketInventoryConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketInventoryConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketInventoryConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketInventoryConfigurationSync(DeleteBucketInventoryConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketInventoryConfigurationAsync(DeleteBucketInventoryConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketNotificationConfiguration asynchronously, invoking a callback when done
-- @param GetBucketNotificationConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketNotificationConfigurationAsync(GetBucketNotificationConfigurationRequest, cb)
	assert(GetBucketNotificationConfigurationRequest, "You must provide a GetBucketNotificationConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketNotificationConfiguration",
	}
	for header,value in pairs(GetBucketNotificationConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?notification", GetBucketNotificationConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketNotificationConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketNotificationConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketNotificationConfigurationSync(GetBucketNotificationConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketNotificationConfigurationAsync(GetBucketNotificationConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObjects asynchronously, invoking a callback when done
-- @param DeleteObjectsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteObjectsAsync(DeleteObjectsRequest, cb)
	assert(DeleteObjectsRequest, "You must provide a DeleteObjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObjects",
	}
	for header,value in pairs(DeleteObjectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?delete", DeleteObjectsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteObjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteObjectsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteObjectsSync(DeleteObjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectsAsync(DeleteObjectsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketReplication asynchronously, invoking a callback when done
-- @param DeleteBucketReplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketReplicationAsync(DeleteBucketReplicationRequest, cb)
	assert(DeleteBucketReplicationRequest, "You must provide a DeleteBucketReplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketReplication",
	}
	for header,value in pairs(DeleteBucketReplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?replication", DeleteBucketReplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketReplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketReplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketReplicationSync(DeleteBucketReplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketReplicationAsync(DeleteBucketReplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketWebsite asynchronously, invoking a callback when done
-- @param PutBucketWebsiteRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketWebsiteAsync(PutBucketWebsiteRequest, cb)
	assert(PutBucketWebsiteRequest, "You must provide a PutBucketWebsiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketWebsite",
	}
	for header,value in pairs(PutBucketWebsiteRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?website", PutBucketWebsiteRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketWebsite synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketWebsiteRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketWebsiteSync(PutBucketWebsiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketWebsiteAsync(PutBucketWebsiteRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectTagging asynchronously, invoking a callback when done
-- @param GetObjectTaggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectTaggingAsync(GetObjectTaggingRequest, cb)
	assert(GetObjectTaggingRequest, "You must provide a GetObjectTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectTagging",
	}
	for header,value in pairs(GetObjectTaggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?tagging", GetObjectTaggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObjectTagging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectTaggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectTaggingSync(GetObjectTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectTaggingAsync(GetObjectTaggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketReplication asynchronously, invoking a callback when done
-- @param GetBucketReplicationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketReplicationAsync(GetBucketReplicationRequest, cb)
	assert(GetBucketReplicationRequest, "You must provide a GetBucketReplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketReplication",
	}
	for header,value in pairs(GetBucketReplicationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?replication", GetBucketReplicationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketReplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketReplicationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketReplicationSync(GetBucketReplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketReplicationAsync(GetBucketReplicationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketAnalyticsConfiguration asynchronously, invoking a callback when done
-- @param GetBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketAnalyticsConfigurationAsync(GetBucketAnalyticsConfigurationRequest, cb)
	assert(GetBucketAnalyticsConfigurationRequest, "You must provide a GetBucketAnalyticsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketAnalyticsConfiguration",
	}
	for header,value in pairs(GetBucketAnalyticsConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?analytics", GetBucketAnalyticsConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketAnalyticsConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketAnalyticsConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketAnalyticsConfigurationSync(GetBucketAnalyticsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketAnalyticsConfigurationAsync(GetBucketAnalyticsConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketNotificationConfiguration asynchronously, invoking a callback when done
-- @param PutBucketNotificationConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketNotificationConfigurationAsync(PutBucketNotificationConfigurationRequest, cb)
	assert(PutBucketNotificationConfigurationRequest, "You must provide a PutBucketNotificationConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketNotificationConfiguration",
	}
	for header,value in pairs(PutBucketNotificationConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?notification", PutBucketNotificationConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketNotificationConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketNotificationConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketNotificationConfigurationSync(PutBucketNotificationConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketNotificationConfigurationAsync(PutBucketNotificationConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketAccelerateConfiguration asynchronously, invoking a callback when done
-- @param GetBucketAccelerateConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketAccelerateConfigurationAsync(GetBucketAccelerateConfigurationRequest, cb)
	assert(GetBucketAccelerateConfigurationRequest, "You must provide a GetBucketAccelerateConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketAccelerateConfiguration",
	}
	for header,value in pairs(GetBucketAccelerateConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?accelerate", GetBucketAccelerateConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketAccelerateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketAccelerateConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketAccelerateConfigurationSync(GetBucketAccelerateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketAccelerateConfigurationAsync(GetBucketAccelerateConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObjectTagging asynchronously, invoking a callback when done
-- @param DeleteObjectTaggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteObjectTaggingAsync(DeleteObjectTaggingRequest, cb)
	assert(DeleteObjectTaggingRequest, "You must provide a DeleteObjectTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObjectTagging",
	}
	for header,value in pairs(DeleteObjectTaggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?tagging", DeleteObjectTaggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteObjectTagging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteObjectTaggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteObjectTaggingSync(DeleteObjectTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectTaggingAsync(DeleteObjectTaggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketTagging asynchronously, invoking a callback when done
-- @param DeleteBucketTaggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketTaggingAsync(DeleteBucketTaggingRequest, cb)
	assert(DeleteBucketTaggingRequest, "You must provide a DeleteBucketTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketTagging",
	}
	for header,value in pairs(DeleteBucketTaggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?tagging", DeleteBucketTaggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketTagging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketTaggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketTaggingSync(DeleteBucketTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketTaggingAsync(DeleteBucketTaggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectTorrent asynchronously, invoking a callback when done
-- @param GetObjectTorrentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectTorrentAsync(GetObjectTorrentRequest, cb)
	assert(GetObjectTorrentRequest, "You must provide a GetObjectTorrentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectTorrent",
	}
	for header,value in pairs(GetObjectTorrentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?torrent", GetObjectTorrentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObjectTorrent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectTorrentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectTorrentSync(GetObjectTorrentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectTorrentAsync(GetObjectTorrentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketCors asynchronously, invoking a callback when done
-- @param GetBucketCorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketCorsAsync(GetBucketCorsRequest, cb)
	assert(GetBucketCorsRequest, "You must provide a GetBucketCorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketCors",
	}
	for header,value in pairs(GetBucketCorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?cors", GetBucketCorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketCors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketCorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketCorsSync(GetBucketCorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketCorsAsync(GetBucketCorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBucket asynchronously, invoking a callback when done
-- @param CreateBucketRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBucketAsync(CreateBucketRequest, cb)
	assert(CreateBucketRequest, "You must provide a CreateBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateBucket",
	}
	for header,value in pairs(CreateBucketRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}", CreateBucketRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBucket synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBucketRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBucketSync(CreateBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBucketAsync(CreateBucketRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteMultipartUpload asynchronously, invoking a callback when done
-- @param CompleteMultipartUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CompleteMultipartUploadAsync(CompleteMultipartUploadRequest, cb)
	assert(CompleteMultipartUploadRequest, "You must provide a CompleteMultipartUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CompleteMultipartUpload",
	}
	for header,value in pairs(CompleteMultipartUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", CompleteMultipartUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CompleteMultipartUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompleteMultipartUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CompleteMultipartUploadSync(CompleteMultipartUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteMultipartUploadAsync(CompleteMultipartUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketWebsite asynchronously, invoking a callback when done
-- @param GetBucketWebsiteRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketWebsiteAsync(GetBucketWebsiteRequest, cb)
	assert(GetBucketWebsiteRequest, "You must provide a GetBucketWebsiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketWebsite",
	}
	for header,value in pairs(GetBucketWebsiteRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?website", GetBucketWebsiteRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketWebsite synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketWebsiteRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketWebsiteSync(GetBucketWebsiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketWebsiteAsync(GetBucketWebsiteRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMultipartUpload asynchronously, invoking a callback when done
-- @param CreateMultipartUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateMultipartUploadAsync(CreateMultipartUploadRequest, cb)
	assert(CreateMultipartUploadRequest, "You must provide a CreateMultipartUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateMultipartUpload",
	}
	for header,value in pairs(CreateMultipartUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?uploads", CreateMultipartUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateMultipartUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMultipartUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateMultipartUploadSync(CreateMultipartUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMultipartUploadAsync(CreateMultipartUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucket asynchronously, invoking a callback when done
-- @param DeleteBucketRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketAsync(DeleteBucketRequest, cb)
	assert(DeleteBucketRequest, "You must provide a DeleteBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucket",
	}
	for header,value in pairs(DeleteBucketRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}", DeleteBucketRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucket synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketSync(DeleteBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketAsync(DeleteBucketRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObject asynchronously, invoking a callback when done
-- @param GetObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectAsync(GetObjectRequest, cb)
	assert(GetObjectRequest, "You must provide a GetObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObject",
	}
	for header,value in pairs(GetObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", GetObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectSync(GetObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectAsync(GetObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketEncryption asynchronously, invoking a callback when done
-- @param PutBucketEncryptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketEncryptionAsync(PutBucketEncryptionRequest, cb)
	assert(PutBucketEncryptionRequest, "You must provide a PutBucketEncryptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketEncryption",
	}
	for header,value in pairs(PutBucketEncryptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?encryption", PutBucketEncryptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketEncryption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketEncryptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketEncryptionSync(PutBucketEncryptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketEncryptionAsync(PutBucketEncryptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObjectTagging asynchronously, invoking a callback when done
-- @param PutObjectTaggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutObjectTaggingAsync(PutObjectTaggingRequest, cb)
	assert(PutObjectTaggingRequest, "You must provide a PutObjectTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObjectTagging",
	}
	for header,value in pairs(PutObjectTaggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?tagging", PutObjectTaggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutObjectTagging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutObjectTaggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutObjectTaggingSync(PutObjectTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectTaggingAsync(PutObjectTaggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketPolicy asynchronously, invoking a callback when done
-- @param GetBucketPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketPolicyAsync(GetBucketPolicyRequest, cb)
	assert(GetBucketPolicyRequest, "You must provide a GetBucketPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketPolicy",
	}
	for header,value in pairs(GetBucketPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?policy", GetBucketPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketPolicySync(GetBucketPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketPolicyAsync(GetBucketPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketVersioning asynchronously, invoking a callback when done
-- @param GetBucketVersioningRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketVersioningAsync(GetBucketVersioningRequest, cb)
	assert(GetBucketVersioningRequest, "You must provide a GetBucketVersioningRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketVersioning",
	}
	for header,value in pairs(GetBucketVersioningRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?versioning", GetBucketVersioningRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketVersioning synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketVersioningRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketVersioningSync(GetBucketVersioningRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketVersioningAsync(GetBucketVersioningRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call HeadObject asynchronously, invoking a callback when done
-- @param HeadObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.HeadObjectAsync(HeadObjectRequest, cb)
	assert(HeadObjectRequest, "You must provide a HeadObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".HeadObject",
	}
	for header,value in pairs(HeadObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "HEAD")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", HeadObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call HeadObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param HeadObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.HeadObjectSync(HeadObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.HeadObjectAsync(HeadObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMultipartUploads asynchronously, invoking a callback when done
-- @param ListMultipartUploadsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMultipartUploadsAsync(ListMultipartUploadsRequest, cb)
	assert(ListMultipartUploadsRequest, "You must provide a ListMultipartUploadsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMultipartUploads",
	}
	for header,value in pairs(ListMultipartUploadsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?uploads", ListMultipartUploadsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMultipartUploads synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMultipartUploadsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMultipartUploadsSync(ListMultipartUploadsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMultipartUploadsAsync(ListMultipartUploadsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketLifecycleConfiguration asynchronously, invoking a callback when done
-- @param GetBucketLifecycleConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketLifecycleConfigurationAsync(GetBucketLifecycleConfigurationRequest, cb)
	assert(GetBucketLifecycleConfigurationRequest, "You must provide a GetBucketLifecycleConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketLifecycleConfiguration",
	}
	for header,value in pairs(GetBucketLifecycleConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?lifecycle", GetBucketLifecycleConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketLifecycleConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketLifecycleConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketLifecycleConfigurationSync(GetBucketLifecycleConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketLifecycleConfigurationAsync(GetBucketLifecycleConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketRequestPayment asynchronously, invoking a callback when done
-- @param GetBucketRequestPaymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketRequestPaymentAsync(GetBucketRequestPaymentRequest, cb)
	assert(GetBucketRequestPaymentRequest, "You must provide a GetBucketRequestPaymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketRequestPayment",
	}
	for header,value in pairs(GetBucketRequestPaymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?requestPayment", GetBucketRequestPaymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketRequestPayment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketRequestPaymentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketRequestPaymentSync(GetBucketRequestPaymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketRequestPaymentAsync(GetBucketRequestPaymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketCors asynchronously, invoking a callback when done
-- @param PutBucketCorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketCorsAsync(PutBucketCorsRequest, cb)
	assert(PutBucketCorsRequest, "You must provide a PutBucketCorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketCors",
	}
	for header,value in pairs(PutBucketCorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?cors", PutBucketCorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketCors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketCorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketCorsSync(PutBucketCorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketCorsAsync(PutBucketCorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketTagging asynchronously, invoking a callback when done
-- @param PutBucketTaggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketTaggingAsync(PutBucketTaggingRequest, cb)
	assert(PutBucketTaggingRequest, "You must provide a PutBucketTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketTagging",
	}
	for header,value in pairs(PutBucketTaggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?tagging", PutBucketTaggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketTagging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketTaggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketTaggingSync(PutBucketTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketTaggingAsync(PutBucketTaggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketTagging asynchronously, invoking a callback when done
-- @param GetBucketTaggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketTaggingAsync(GetBucketTaggingRequest, cb)
	assert(GetBucketTaggingRequest, "You must provide a GetBucketTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketTagging",
	}
	for header,value in pairs(GetBucketTaggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?tagging", GetBucketTaggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketTagging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketTaggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketTaggingSync(GetBucketTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketTaggingAsync(GetBucketTaggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortMultipartUpload asynchronously, invoking a callback when done
-- @param AbortMultipartUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AbortMultipartUploadAsync(AbortMultipartUploadRequest, cb)
	assert(AbortMultipartUploadRequest, "You must provide a AbortMultipartUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AbortMultipartUpload",
	}
	for header,value in pairs(AbortMultipartUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", AbortMultipartUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AbortMultipartUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AbortMultipartUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AbortMultipartUploadSync(AbortMultipartUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortMultipartUploadAsync(AbortMultipartUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObjectAcl asynchronously, invoking a callback when done
-- @param PutObjectAclRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutObjectAclAsync(PutObjectAclRequest, cb)
	assert(PutObjectAclRequest, "You must provide a PutObjectAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObjectAcl",
	}
	for header,value in pairs(PutObjectAclRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?acl", PutObjectAclRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutObjectAcl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutObjectAclRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutObjectAclSync(PutObjectAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectAclAsync(PutObjectAclRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectsV2 asynchronously, invoking a callback when done
-- @param ListObjectsV2Request
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectsV2Async(ListObjectsV2Request, cb)
	assert(ListObjectsV2Request, "You must provide a ListObjectsV2Request")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectsV2",
	}
	for header,value in pairs(ListObjectsV2Request.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?list-type=2", ListObjectsV2Request, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectsV2 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectsV2Request
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectsV2Sync(ListObjectsV2Request, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectsV2Async(ListObjectsV2Request, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketLocation asynchronously, invoking a callback when done
-- @param GetBucketLocationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketLocationAsync(GetBucketLocationRequest, cb)
	assert(GetBucketLocationRequest, "You must provide a GetBucketLocationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketLocation",
	}
	for header,value in pairs(GetBucketLocationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?location", GetBucketLocationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketLocation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketLocationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketLocationSync(GetBucketLocationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketLocationAsync(GetBucketLocationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketInventoryConfiguration asynchronously, invoking a callback when done
-- @param GetBucketInventoryConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBucketInventoryConfigurationAsync(GetBucketInventoryConfigurationRequest, cb)
	assert(GetBucketInventoryConfigurationRequest, "You must provide a GetBucketInventoryConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketInventoryConfiguration",
	}
	for header,value in pairs(GetBucketInventoryConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?inventory", GetBucketInventoryConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBucketInventoryConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBucketInventoryConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBucketInventoryConfigurationSync(GetBucketInventoryConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketInventoryConfigurationAsync(GetBucketInventoryConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketLifecycle asynchronously, invoking a callback when done
-- @param DeleteBucketLifecycleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketLifecycleAsync(DeleteBucketLifecycleRequest, cb)
	assert(DeleteBucketLifecycleRequest, "You must provide a DeleteBucketLifecycleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketLifecycle",
	}
	for header,value in pairs(DeleteBucketLifecycleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?lifecycle", DeleteBucketLifecycleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketLifecycle synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketLifecycleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketLifecycleSync(DeleteBucketLifecycleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketLifecycleAsync(DeleteBucketLifecycleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SelectObjectContent asynchronously, invoking a callback when done
-- @param SelectObjectContentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SelectObjectContentAsync(SelectObjectContentRequest, cb)
	assert(SelectObjectContentRequest, "You must provide a SelectObjectContentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SelectObjectContent",
	}
	for header,value in pairs(SelectObjectContentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?select&select-type=2", SelectObjectContentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SelectObjectContent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SelectObjectContentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SelectObjectContentSync(SelectObjectContentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SelectObjectContentAsync(SelectObjectContentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketAnalyticsConfiguration asynchronously, invoking a callback when done
-- @param PutBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketAnalyticsConfigurationAsync(PutBucketAnalyticsConfigurationRequest, cb)
	assert(PutBucketAnalyticsConfigurationRequest, "You must provide a PutBucketAnalyticsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketAnalyticsConfiguration",
	}
	for header,value in pairs(PutBucketAnalyticsConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?analytics", PutBucketAnalyticsConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketAnalyticsConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketAnalyticsConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketAnalyticsConfigurationSync(PutBucketAnalyticsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketAnalyticsConfigurationAsync(PutBucketAnalyticsConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListParts asynchronously, invoking a callback when done
-- @param ListPartsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPartsAsync(ListPartsRequest, cb)
	assert(ListPartsRequest, "You must provide a ListPartsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListParts",
	}
	for header,value in pairs(ListPartsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", ListPartsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListParts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPartsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPartsSync(ListPartsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPartsAsync(ListPartsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketEncryption asynchronously, invoking a callback when done
-- @param DeleteBucketEncryptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketEncryptionAsync(DeleteBucketEncryptionRequest, cb)
	assert(DeleteBucketEncryptionRequest, "You must provide a DeleteBucketEncryptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketEncryption",
	}
	for header,value in pairs(DeleteBucketEncryptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?encryption", DeleteBucketEncryptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketEncryption synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketEncryptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketEncryptionSync(DeleteBucketEncryptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketEncryptionAsync(DeleteBucketEncryptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectAcl asynchronously, invoking a callback when done
-- @param GetObjectAclRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectAclAsync(GetObjectAclRequest, cb)
	assert(GetObjectAclRequest, "You must provide a GetObjectAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectAcl",
	}
	for header,value in pairs(GetObjectAclRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?acl", GetObjectAclRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObjectAcl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectAclRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectAclSync(GetObjectAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectAclAsync(GetObjectAclRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadPartCopy asynchronously, invoking a callback when done
-- @param UploadPartCopyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadPartCopyAsync(UploadPartCopyRequest, cb)
	assert(UploadPartCopyRequest, "You must provide a UploadPartCopyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadPartCopy",
	}
	for header,value in pairs(UploadPartCopyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", UploadPartCopyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadPartCopy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadPartCopyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UploadPartCopySync(UploadPartCopyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadPartCopyAsync(UploadPartCopyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketMetricsConfiguration asynchronously, invoking a callback when done
-- @param PutBucketMetricsConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutBucketMetricsConfigurationAsync(PutBucketMetricsConfigurationRequest, cb)
	assert(PutBucketMetricsConfigurationRequest, "You must provide a PutBucketMetricsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketMetricsConfiguration",
	}
	for header,value in pairs(PutBucketMetricsConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?metrics", PutBucketMetricsConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBucketMetricsConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBucketMetricsConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutBucketMetricsConfigurationSync(PutBucketMetricsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketMetricsConfigurationAsync(PutBucketMetricsConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObject asynchronously, invoking a callback when done
-- @param DeleteObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteObjectAsync(DeleteObjectRequest, cb)
	assert(DeleteObjectRequest, "You must provide a DeleteObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObject",
	}
	for header,value in pairs(DeleteObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}", DeleteObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteObjectSync(DeleteObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectAsync(DeleteObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreObject asynchronously, invoking a callback when done
-- @param RestoreObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreObjectAsync(RestoreObjectRequest, cb)
	assert(RestoreObjectRequest, "You must provide a RestoreObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreObject",
	}
	for header,value in pairs(RestoreObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}/{Key+}?restore", RestoreObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreObjectSync(RestoreObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreObjectAsync(RestoreObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketAnalyticsConfiguration asynchronously, invoking a callback when done
-- @param DeleteBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBucketAnalyticsConfigurationAsync(DeleteBucketAnalyticsConfigurationRequest, cb)
	assert(DeleteBucketAnalyticsConfigurationRequest, "You must provide a DeleteBucketAnalyticsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketAnalyticsConfiguration",
	}
	for header,value in pairs(DeleteBucketAnalyticsConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Bucket}?analytics", DeleteBucketAnalyticsConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBucketAnalyticsConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBucketAnalyticsConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBucketAnalyticsConfigurationSync(DeleteBucketAnalyticsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketAnalyticsConfigurationAsync(DeleteBucketAnalyticsConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
