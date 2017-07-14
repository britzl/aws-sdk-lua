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
	timestamp_format = "rfc822",
	global_endpoint = "s3.amazonaws.com",
	uid = "s3-2006-03-01",
}

local PutBucketVersioningRequest_keys = { "MFA" = true, "ContentMD5" = true, "Bucket" = true, "VersioningConfiguration" = true, nil }

function M.AssertPutBucketVersioningRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketVersioningRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["VersioningConfiguration"], "Expected key VersioningConfiguration to exist in table")
	if struct["MFA"] then M.AssertMFA(struct["MFA"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["VersioningConfiguration"] then M.AssertVersioningConfiguration(struct["VersioningConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketVersioningRequest_keys[k], "PutBucketVersioningRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketVersioningRequest
--  
-- @param MFA [MFA] The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param VersioningConfiguration [VersioningConfiguration]  
-- Required parameter: Bucket
-- Required parameter: VersioningConfiguration
function M.PutBucketVersioningRequest(MFA, ContentMD5, Bucket, VersioningConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketVersioningRequest")
	local t = { 
		["MFA"] = MFA,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["VersioningConfiguration"] = VersioningConfiguration,
	}
	M.AssertPutBucketVersioningRequest(t)
	return t
end

local DeleteObjectTaggingOutput_keys = { "VersionId" = true, nil }

function M.AssertDeleteObjectTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectTaggingOutput to be of type 'table'")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectTaggingOutput_keys[k], "DeleteObjectTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectTaggingOutput
--  
-- @param VersionId [ObjectVersionId] The versionId of the object the tag-set was removed from.
function M.DeleteObjectTaggingOutput(VersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectTaggingOutput")
	local t = { 
		["VersionId"] = VersionId,
	}
	M.AssertDeleteObjectTaggingOutput(t)
	return t
end

local PutBucketReplicationRequest_keys = { "ReplicationConfiguration" = true, "ContentMD5" = true, "Bucket" = true, nil }

function M.AssertPutBucketReplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketReplicationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["ReplicationConfiguration"], "Expected key ReplicationConfiguration to exist in table")
	if struct["ReplicationConfiguration"] then M.AssertReplicationConfiguration(struct["ReplicationConfiguration"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketReplicationRequest_keys[k], "PutBucketReplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketReplicationRequest
--  
-- @param ReplicationConfiguration [ReplicationConfiguration]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
-- Required parameter: ReplicationConfiguration
function M.PutBucketReplicationRequest(ReplicationConfiguration, ContentMD5, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketReplicationRequest")
	local t = { 
		["ReplicationConfiguration"] = ReplicationConfiguration,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketReplicationRequest(t)
	return t
end

local PutObjectOutput_keys = { "SSECustomerAlgorithm" = true, "RequestCharged" = true, "VersionId" = true, "ETag" = true, "Expiration" = true, "ServerSideEncryption" = true, "SSECustomerKeyMD5" = true, "SSEKMSKeyId" = true, nil }

function M.AssertPutObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["Expiration"] then M.AssertExpiration(struct["Expiration"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(PutObjectOutput_keys[k], "PutObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectOutput
--  
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param RequestCharged [RequestCharged]  
-- @param VersionId [ObjectVersionId] Version of the object.
-- @param ETag [ETag] Entity tag for the uploaded object.
-- @param Expiration [Expiration] If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
function M.PutObjectOutput(SSECustomerAlgorithm, RequestCharged, VersionId, ETag, Expiration, ServerSideEncryption, SSECustomerKeyMD5, SSEKMSKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutObjectOutput")
	local t = { 
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["RequestCharged"] = RequestCharged,
		["VersionId"] = VersionId,
		["ETag"] = ETag,
		["Expiration"] = Expiration,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["SSEKMSKeyId"] = SSEKMSKeyId,
	}
	M.AssertPutObjectOutput(t)
	return t
end

local ReplicationRule_keys = { "Status" = true, "Prefix" = true, "Destination" = true, "ID" = true, nil }

function M.AssertReplicationRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRule to be of type 'table'")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["Status"] then M.AssertReplicationRuleStatus(struct["Status"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Destination"] then M.AssertDestination(struct["Destination"]) end
	if struct["ID"] then M.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationRule_keys[k], "ReplicationRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRule
--  
-- @param Status [ReplicationRuleStatus] The rule is ignored if status is not Enabled.
-- @param Prefix [Prefix] Object keyname prefix identifying one or more objects to which the rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes are not supported.
-- @param Destination [Destination]  
-- @param ID [ID] Unique identifier for the rule. The value cannot be longer than 255 characters.
-- Required parameter: Prefix
-- Required parameter: Status
-- Required parameter: Destination
function M.ReplicationRule(Status, Prefix, Destination, ID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationRule")
	local t = { 
		["Status"] = Status,
		["Prefix"] = Prefix,
		["Destination"] = Destination,
		["ID"] = ID,
	}
	M.AssertReplicationRule(t)
	return t
end

local Object_keys = { "LastModified" = true, "ETag" = true, "StorageClass" = true, "Key" = true, "Owner" = true, "Size" = true, nil }

function M.AssertObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Object to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["StorageClass"] then M.AssertObjectStorageClass(struct["StorageClass"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["Size"] then M.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(Object_keys[k], "Object contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Object
--  
-- @param LastModified [LastModified]  
-- @param ETag [ETag]  
-- @param StorageClass [ObjectStorageClass] The class of storage used to store the object.
-- @param Key [ObjectKey]  
-- @param Owner [Owner]  
-- @param Size [Size]  
function M.Object(LastModified, ETag, StorageClass, Key, Owner, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Object")
	local t = { 
		["LastModified"] = LastModified,
		["ETag"] = ETag,
		["StorageClass"] = StorageClass,
		["Key"] = Key,
		["Owner"] = Owner,
		["Size"] = Size,
	}
	M.AssertObject(t)
	return t
end

local DeleteMarkerEntry_keys = { "Owner" = true, "IsLatest" = true, "VersionId" = true, "Key" = true, "LastModified" = true, nil }

function M.AssertDeleteMarkerEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMarkerEntry to be of type 'table'")
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["IsLatest"] then M.AssertIsLatest(struct["IsLatest"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMarkerEntry_keys[k], "DeleteMarkerEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMarkerEntry
--  
-- @param Owner [Owner]  
-- @param IsLatest [IsLatest] Specifies whether the object is (true) or is not (false) the latest version of an object.
-- @param VersionId [ObjectVersionId] Version ID of an object.
-- @param Key [ObjectKey] The object key.
-- @param LastModified [LastModified] Date and time the object was last modified.
function M.DeleteMarkerEntry(Owner, IsLatest, VersionId, Key, LastModified, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMarkerEntry")
	local t = { 
		["Owner"] = Owner,
		["IsLatest"] = IsLatest,
		["VersionId"] = VersionId,
		["Key"] = Key,
		["LastModified"] = LastModified,
	}
	M.AssertDeleteMarkerEntry(t)
	return t
end

local DeleteBucketAnalyticsConfigurationRequest_keys = { "Bucket" = true, "Id" = true, nil }

function M.AssertDeleteBucketAnalyticsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketAnalyticsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketAnalyticsConfigurationRequest_keys[k], "DeleteBucketAnalyticsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketAnalyticsConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket from which an analytics configuration is deleted.
-- @param Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required parameter: Bucket
-- Required parameter: Id
function M.DeleteBucketAnalyticsConfigurationRequest(Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketAnalyticsConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertDeleteBucketAnalyticsConfigurationRequest(t)
	return t
end

local AnalyticsConfiguration_keys = { "Filter" = true, "StorageClassAnalysis" = true, "Id" = true, nil }

function M.AssertAnalyticsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsConfiguration to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["StorageClassAnalysis"], "Expected key StorageClassAnalysis to exist in table")
	if struct["Filter"] then M.AssertAnalyticsFilter(struct["Filter"]) end
	if struct["StorageClassAnalysis"] then M.AssertStorageClassAnalysis(struct["StorageClassAnalysis"]) end
	if struct["Id"] then M.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(AnalyticsConfiguration_keys[k], "AnalyticsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsConfiguration
--  
-- @param Filter [AnalyticsFilter] The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
-- @param StorageClassAnalysis [StorageClassAnalysis] If present, it indicates that data related to access patterns will be collected and made available to analyze the tradeoffs between different storage classes.
-- @param Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required parameter: Id
-- Required parameter: StorageClassAnalysis
function M.AnalyticsConfiguration(Filter, StorageClassAnalysis, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalyticsConfiguration")
	local t = { 
		["Filter"] = Filter,
		["StorageClassAnalysis"] = StorageClassAnalysis,
		["Id"] = Id,
	}
	M.AssertAnalyticsConfiguration(t)
	return t
end

local DeleteBucketLifecycleRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketLifecycleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketLifecycleRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketLifecycleRequest_keys[k], "DeleteBucketLifecycleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketLifecycleRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketLifecycleRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketLifecycleRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketLifecycleRequest(t)
	return t
end

local InventoryDestination_keys = { "S3BucketDestination" = true, nil }

function M.AssertInventoryDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryDestination to be of type 'table'")
	assert(struct["S3BucketDestination"], "Expected key S3BucketDestination to exist in table")
	if struct["S3BucketDestination"] then M.AssertInventoryS3BucketDestination(struct["S3BucketDestination"]) end
	for k,_ in pairs(struct) do
		assert(InventoryDestination_keys[k], "InventoryDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryDestination
--  
-- @param S3BucketDestination [InventoryS3BucketDestination] Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
-- Required parameter: S3BucketDestination
function M.InventoryDestination(S3BucketDestination, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryDestination")
	local t = { 
		["S3BucketDestination"] = S3BucketDestination,
	}
	M.AssertInventoryDestination(t)
	return t
end

local UploadPartRequest_keys = { "Body" = true, "SSECustomerAlgorithm" = true, "RequestPayer" = true, "ContentLength" = true, "ContentMD5" = true, "Bucket" = true, "SSECustomerKey" = true, "UploadId" = true, "Key" = true, "SSECustomerKeyMD5" = true, "PartNumber" = true, nil }

function M.AssertUploadPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["PartNumber"], "Expected key PartNumber to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["Body"] then M.AssertBody(struct["Body"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentLength"] then M.AssertContentLength(struct["ContentLength"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["PartNumber"] then M.AssertPartNumber(struct["PartNumber"]) end
	for k,_ in pairs(struct) do
		assert(UploadPartRequest_keys[k], "UploadPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartRequest
--  
-- @param Body [Body] Object data.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param RequestPayer [RequestPayer]  
-- @param ContentLength [ContentLength] Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.
-- @param ContentMD5 [ContentMD5] The base64-encoded 128-bit MD5 digest of the part data.
-- @param Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.
-- @param UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose part is being uploaded.
-- @param Key [ObjectKey] Object key for which the multipart upload was initiated.
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- @param PartNumber [PartNumber] Part number of part being uploaded. This is a positive integer between 1 and 10,000.
-- Required parameter: Bucket
-- Required parameter: Key
-- Required parameter: PartNumber
-- Required parameter: UploadId
function M.UploadPartRequest(Body, SSECustomerAlgorithm, RequestPayer, ContentLength, ContentMD5, Bucket, SSECustomerKey, UploadId, Key, SSECustomerKeyMD5, PartNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadPartRequest")
	local t = { 
		["Body"] = Body,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["RequestPayer"] = RequestPayer,
		["ContentLength"] = ContentLength,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["SSECustomerKey"] = SSECustomerKey,
		["UploadId"] = UploadId,
		["Key"] = Key,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["PartNumber"] = PartNumber,
	}
	M.AssertUploadPartRequest(t)
	return t
end

local UploadPartCopyOutput_keys = { "SSECustomerAlgorithm" = true, "CopySourceVersionId" = true, "ServerSideEncryption" = true, "RequestCharged" = true, "SSECustomerKeyMD5" = true, "CopyPartResult" = true, "SSEKMSKeyId" = true, nil }

function M.AssertUploadPartCopyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartCopyOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["CopySourceVersionId"] then M.AssertCopySourceVersionId(struct["CopySourceVersionId"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["CopyPartResult"] then M.AssertCopyPartResult(struct["CopyPartResult"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(UploadPartCopyOutput_keys[k], "UploadPartCopyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartCopyOutput
--  
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param CopySourceVersionId [CopySourceVersionId] The version of the source object that was copied, if you have enabled versioning on the source bucket.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param RequestCharged [RequestCharged]  
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @param CopyPartResult [CopyPartResult]  
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
function M.UploadPartCopyOutput(SSECustomerAlgorithm, CopySourceVersionId, ServerSideEncryption, RequestCharged, SSECustomerKeyMD5, CopyPartResult, SSEKMSKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadPartCopyOutput")
	local t = { 
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["CopySourceVersionId"] = CopySourceVersionId,
		["ServerSideEncryption"] = ServerSideEncryption,
		["RequestCharged"] = RequestCharged,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["CopyPartResult"] = CopyPartResult,
		["SSEKMSKeyId"] = SSEKMSKeyId,
	}
	M.AssertUploadPartCopyOutput(t)
	return t
end

local PutObjectTaggingRequest_keys = { "VersionId" = true, "ContentMD5" = true, "Bucket" = true, "Tagging" = true, "Key" = true, nil }

function M.AssertPutObjectTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Tagging"], "Expected key Tagging to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Tagging"] then M.AssertTagging(struct["Tagging"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(PutObjectTaggingRequest_keys[k], "PutObjectTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectTaggingRequest
--  
-- @param VersionId [ObjectVersionId]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param Tagging [Tagging]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
-- Required parameter: Tagging
function M.PutObjectTaggingRequest(VersionId, ContentMD5, Bucket, Tagging, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutObjectTaggingRequest")
	local t = { 
		["VersionId"] = VersionId,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["Tagging"] = Tagging,
		["Key"] = Key,
	}
	M.AssertPutObjectTaggingRequest(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertValue(struct["Value"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
--  
-- @param Value [Value] Value of the tag.
-- @param Key [ObjectKey] Name of the tag.
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

local GetBucketNotificationConfigurationRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketNotificationConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketNotificationConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketNotificationConfigurationRequest_keys[k], "GetBucketNotificationConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketNotificationConfigurationRequest
--  
-- @param Bucket [BucketName] Name of the bucket to get the notification configuration for.
-- Required parameter: Bucket
function M.GetBucketNotificationConfigurationRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketNotificationConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketNotificationConfigurationRequest(t)
	return t
end

local PutBucketMetricsConfigurationRequest_keys = { "Bucket" = true, "Id" = true, "MetricsConfiguration" = true, nil }

function M.AssertPutBucketMetricsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketMetricsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MetricsConfiguration"], "Expected key MetricsConfiguration to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertMetricsId(struct["Id"]) end
	if struct["MetricsConfiguration"] then M.AssertMetricsConfiguration(struct["MetricsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketMetricsConfigurationRequest_keys[k], "PutBucketMetricsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketMetricsConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket for which the metrics configuration is set.
-- @param Id [MetricsId] The ID used to identify the metrics configuration.
-- @param MetricsConfiguration [MetricsConfiguration] Specifies the metrics configuration.
-- Required parameter: Bucket
-- Required parameter: Id
-- Required parameter: MetricsConfiguration
function M.PutBucketMetricsConfigurationRequest(Bucket, Id, MetricsConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketMetricsConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
		["MetricsConfiguration"] = MetricsConfiguration,
	}
	M.AssertPutBucketMetricsConfigurationRequest(t)
	return t
end

local ListObjectVersionsRequest_keys = { "Bucket" = true, "Prefix" = true, "MaxKeys" = true, "Delimiter" = true, "KeyMarker" = true, "EncodingType" = true, "VersionIdMarker" = true, nil }

function M.AssertListObjectVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectVersionsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["MaxKeys"] then M.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["KeyMarker"] then M.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	if struct["VersionIdMarker"] then M.AssertVersionIdMarker(struct["VersionIdMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectVersionsRequest_keys[k], "ListObjectVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectVersionsRequest
--  
-- @param Bucket [BucketName]  
-- @param Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- @param MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- @param Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- @param KeyMarker [KeyMarker] Specifies the key to start with when listing objects in a bucket.
-- @param EncodingType [EncodingType]  
-- @param VersionIdMarker [VersionIdMarker] Specifies the object version you want to start listing from.
-- Required parameter: Bucket
function M.ListObjectVersionsRequest(Bucket, Prefix, MaxKeys, Delimiter, KeyMarker, EncodingType, VersionIdMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectVersionsRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Prefix"] = Prefix,
		["MaxKeys"] = MaxKeys,
		["Delimiter"] = Delimiter,
		["KeyMarker"] = KeyMarker,
		["EncodingType"] = EncodingType,
		["VersionIdMarker"] = VersionIdMarker,
	}
	M.AssertListObjectVersionsRequest(t)
	return t
end

local GetBucketLoggingOutput_keys = { "LoggingEnabled" = true, nil }

function M.AssertGetBucketLoggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLoggingOutput to be of type 'table'")
	if struct["LoggingEnabled"] then M.AssertLoggingEnabled(struct["LoggingEnabled"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLoggingOutput_keys[k], "GetBucketLoggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLoggingOutput
--  
-- @param LoggingEnabled [LoggingEnabled]  
function M.GetBucketLoggingOutput(LoggingEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLoggingOutput")
	local t = { 
		["LoggingEnabled"] = LoggingEnabled,
	}
	M.AssertGetBucketLoggingOutput(t)
	return t
end

local GlacierJobParameters_keys = { "Tier" = true, nil }

function M.AssertGlacierJobParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlacierJobParameters to be of type 'table'")
	assert(struct["Tier"], "Expected key Tier to exist in table")
	if struct["Tier"] then M.AssertTier(struct["Tier"]) end
	for k,_ in pairs(struct) do
		assert(GlacierJobParameters_keys[k], "GlacierJobParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlacierJobParameters
--  
-- @param Tier [Tier] Glacier retrieval tier at which the restore will be processed.
-- Required parameter: Tier
function M.GlacierJobParameters(Tier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlacierJobParameters")
	local t = { 
		["Tier"] = Tier,
	}
	M.AssertGlacierJobParameters(t)
	return t
end

local TargetGrant_keys = { "Grantee" = true, "Permission" = true, nil }

function M.AssertTargetGrant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetGrant to be of type 'table'")
	if struct["Grantee"] then M.AssertGrantee(struct["Grantee"]) end
	if struct["Permission"] then M.AssertBucketLogsPermission(struct["Permission"]) end
	for k,_ in pairs(struct) do
		assert(TargetGrant_keys[k], "TargetGrant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetGrant
--  
-- @param Grantee [Grantee]  
-- @param Permission [BucketLogsPermission] Logging permissions assigned to the Grantee for the bucket.
function M.TargetGrant(Grantee, Permission, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetGrant")
	local t = { 
		["Grantee"] = Grantee,
		["Permission"] = Permission,
	}
	M.AssertTargetGrant(t)
	return t
end

local MetricsAndOperator_keys = { "Prefix" = true, "Tags" = true, nil }

function M.AssertMetricsAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricsAndOperator to be of type 'table'")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then M.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(MetricsAndOperator_keys[k], "MetricsAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricsAndOperator
--  
-- @param Prefix [Prefix] The prefix used when evaluating an AND predicate.
-- @param Tags [TagSet] The list of tags used when evaluating an AND predicate.
function M.MetricsAndOperator(Prefix, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricsAndOperator")
	local t = { 
		["Prefix"] = Prefix,
		["Tags"] = Tags,
	}
	M.AssertMetricsAndOperator(t)
	return t
end

local ListObjectsOutput_keys = { "Name" = true, "NextMarker" = true, "Delimiter" = true, "MaxKeys" = true, "Prefix" = true, "Marker" = true, "EncodingType" = true, "IsTruncated" = true, "Contents" = true, "CommonPrefixes" = true, nil }

function M.AssertListObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsOutput to be of type 'table'")
	if struct["Name"] then M.AssertBucketName(struct["Name"]) end
	if struct["NextMarker"] then M.AssertNextMarker(struct["NextMarker"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["MaxKeys"] then M.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["Contents"] then M.AssertObjectList(struct["Contents"]) end
	if struct["CommonPrefixes"] then M.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectsOutput_keys[k], "ListObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsOutput
--  
-- @param Name [BucketName]  
-- @param NextMarker [NextMarker] When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMaker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
-- @param Delimiter [Delimiter]  
-- @param MaxKeys [MaxKeys]  
-- @param Prefix [Prefix]  
-- @param Marker [Marker]  
-- @param EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- @param IsTruncated [IsTruncated] A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria.
-- @param Contents [ObjectList]  
-- @param CommonPrefixes [CommonPrefixList]  
function M.ListObjectsOutput(Name, NextMarker, Delimiter, MaxKeys, Prefix, Marker, EncodingType, IsTruncated, Contents, CommonPrefixes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectsOutput")
	local t = { 
		["Name"] = Name,
		["NextMarker"] = NextMarker,
		["Delimiter"] = Delimiter,
		["MaxKeys"] = MaxKeys,
		["Prefix"] = Prefix,
		["Marker"] = Marker,
		["EncodingType"] = EncodingType,
		["IsTruncated"] = IsTruncated,
		["Contents"] = Contents,
		["CommonPrefixes"] = CommonPrefixes,
	}
	M.AssertListObjectsOutput(t)
	return t
end

local DeleteObjectRequest_keys = { "MFA" = true, "VersionId" = true, "Bucket" = true, "RequestPayer" = true, "Key" = true, nil }

function M.AssertDeleteObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["MFA"] then M.AssertMFA(struct["MFA"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectRequest_keys[k], "DeleteObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectRequest
--  
-- @param MFA [MFA] The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
-- @param VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
function M.DeleteObjectRequest(MFA, VersionId, Bucket, RequestPayer, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectRequest")
	local t = { 
		["MFA"] = MFA,
		["VersionId"] = VersionId,
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Key"] = Key,
	}
	M.AssertDeleteObjectRequest(t)
	return t
end

local LifecycleRuleAndOperator_keys = { "Prefix" = true, "Tags" = true, nil }

function M.AssertLifecycleRuleAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleRuleAndOperator to be of type 'table'")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then M.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleRuleAndOperator_keys[k], "LifecycleRuleAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleRuleAndOperator
-- This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
-- @param Prefix [Prefix] This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
-- @param Tags [TagSet] All of these tags must exist in the object's tag set in order for the rule to apply.
function M.LifecycleRuleAndOperator(Prefix, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleRuleAndOperator")
	local t = { 
		["Prefix"] = Prefix,
		["Tags"] = Tags,
	}
	M.AssertLifecycleRuleAndOperator(t)
	return t
end

local GetBucketWebsiteRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketWebsiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketWebsiteRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketWebsiteRequest_keys[k], "GetBucketWebsiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketWebsiteRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketWebsiteRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketWebsiteRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketWebsiteRequest(t)
	return t
end

local GetBucketRequestPaymentOutput_keys = { "Payer" = true, nil }

function M.AssertGetBucketRequestPaymentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketRequestPaymentOutput to be of type 'table'")
	if struct["Payer"] then M.AssertPayer(struct["Payer"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketRequestPaymentOutput_keys[k], "GetBucketRequestPaymentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketRequestPaymentOutput
--  
-- @param Payer [Payer] Specifies who pays for the download and request fees.
function M.GetBucketRequestPaymentOutput(Payer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketRequestPaymentOutput")
	local t = { 
		["Payer"] = Payer,
	}
	M.AssertGetBucketRequestPaymentOutput(t)
	return t
end

local ListBucketMetricsConfigurationsRequest_keys = { "Bucket" = true, "ContinuationToken" = true, nil }

function M.AssertListBucketMetricsConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketMetricsConfigurationsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketMetricsConfigurationsRequest_keys[k], "ListBucketMetricsConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketMetricsConfigurationsRequest
--  
-- @param Bucket [BucketName] The name of the bucket containing the metrics configurations to retrieve.
-- @param ContinuationToken [Token] The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
-- Required parameter: Bucket
function M.ListBucketMetricsConfigurationsRequest(Bucket, ContinuationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketMetricsConfigurationsRequest")
	local t = { 
		["Bucket"] = Bucket,
		["ContinuationToken"] = ContinuationToken,
	}
	M.AssertListBucketMetricsConfigurationsRequest(t)
	return t
end

local Owner_keys = { "DisplayName" = true, "ID" = true, nil }

function M.AssertOwner(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Owner to be of type 'table'")
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["ID"] then M.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(Owner_keys[k], "Owner contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Owner
--  
-- @param DisplayName [DisplayName]  
-- @param ID [ID]  
function M.Owner(DisplayName, ID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Owner")
	local t = { 
		["DisplayName"] = DisplayName,
		["ID"] = ID,
	}
	M.AssertOwner(t)
	return t
end

local CopyObjectResult_keys = { "LastModified" = true, "ETag" = true, nil }

function M.AssertCopyObjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyObjectResult to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(CopyObjectResult_keys[k], "CopyObjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyObjectResult
--  
-- @param LastModified [LastModified]  
-- @param ETag [ETag]  
function M.CopyObjectResult(LastModified, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyObjectResult")
	local t = { 
		["LastModified"] = LastModified,
		["ETag"] = ETag,
	}
	M.AssertCopyObjectResult(t)
	return t
end

local LifecycleRule_keys = { "Status" = true, "NoncurrentVersionExpiration" = true, "NoncurrentVersionTransitions" = true, "Filter" = true, "Prefix" = true, "Expiration" = true, "AbortIncompleteMultipartUpload" = true, "Transitions" = true, "ID" = true, nil }

function M.AssertLifecycleRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleRule to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertExpirationStatus(struct["Status"]) end
	if struct["NoncurrentVersionExpiration"] then M.AssertNoncurrentVersionExpiration(struct["NoncurrentVersionExpiration"]) end
	if struct["NoncurrentVersionTransitions"] then M.AssertNoncurrentVersionTransitionList(struct["NoncurrentVersionTransitions"]) end
	if struct["Filter"] then M.AssertLifecycleRuleFilter(struct["Filter"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Expiration"] then M.AssertLifecycleExpiration(struct["Expiration"]) end
	if struct["AbortIncompleteMultipartUpload"] then M.AssertAbortIncompleteMultipartUpload(struct["AbortIncompleteMultipartUpload"]) end
	if struct["Transitions"] then M.AssertTransitionList(struct["Transitions"]) end
	if struct["ID"] then M.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleRule_keys[k], "LifecycleRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleRule
--  
-- @param Status [ExpirationStatus] If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
-- @param NoncurrentVersionExpiration [NoncurrentVersionExpiration]  
-- @param NoncurrentVersionTransitions [NoncurrentVersionTransitionList]  
-- @param Filter [LifecycleRuleFilter]  
-- @param Prefix [Prefix] Prefix identifying one or more objects to which the rule applies. This is deprecated; use Filter instead.
-- @param Expiration [LifecycleExpiration]  
-- @param AbortIncompleteMultipartUpload [AbortIncompleteMultipartUpload]  
-- @param Transitions [TransitionList]  
-- @param ID [ID] Unique identifier for the rule. The value cannot be longer than 255 characters.
-- Required parameter: Status
function M.LifecycleRule(Status, NoncurrentVersionExpiration, NoncurrentVersionTransitions, Filter, Prefix, Expiration, AbortIncompleteMultipartUpload, Transitions, ID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleRule")
	local t = { 
		["Status"] = Status,
		["NoncurrentVersionExpiration"] = NoncurrentVersionExpiration,
		["NoncurrentVersionTransitions"] = NoncurrentVersionTransitions,
		["Filter"] = Filter,
		["Prefix"] = Prefix,
		["Expiration"] = Expiration,
		["AbortIncompleteMultipartUpload"] = AbortIncompleteMultipartUpload,
		["Transitions"] = Transitions,
		["ID"] = ID,
	}
	M.AssertLifecycleRule(t)
	return t
end

local GetBucketLifecycleOutput_keys = { "Rules" = true, nil }

function M.AssertGetBucketLifecycleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleOutput to be of type 'table'")
	if struct["Rules"] then M.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLifecycleOutput_keys[k], "GetBucketLifecycleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleOutput
--  
-- @param Rules [Rules]  
function M.GetBucketLifecycleOutput(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLifecycleOutput")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertGetBucketLifecycleOutput(t)
	return t
end

local GetObjectTaggingRequest_keys = { "VersionId" = true, "Bucket" = true, "Key" = true, nil }

function M.AssertGetObjectTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectTaggingRequest_keys[k], "GetObjectTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTaggingRequest
--  
-- @param VersionId [ObjectVersionId]  
-- @param Bucket [BucketName]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
function M.GetObjectTaggingRequest(VersionId, Bucket, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectTaggingRequest")
	local t = { 
		["VersionId"] = VersionId,
		["Bucket"] = Bucket,
		["Key"] = Key,
	}
	M.AssertGetObjectTaggingRequest(t)
	return t
end

local CompleteMultipartUploadOutput_keys = { "RequestCharged" = true, "Bucket" = true, "VersionId" = true, "ETag" = true, "Location" = true, "Key" = true, "ServerSideEncryption" = true, "SSEKMSKeyId" = true, "Expiration" = true, nil }

function M.AssertCompleteMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteMultipartUploadOutput to be of type 'table'")
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["Location"] then M.AssertLocation(struct["Location"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["Expiration"] then M.AssertExpiration(struct["Expiration"]) end
	for k,_ in pairs(struct) do
		assert(CompleteMultipartUploadOutput_keys[k], "CompleteMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteMultipartUploadOutput
--  
-- @param RequestCharged [RequestCharged]  
-- @param Bucket [BucketName]  
-- @param VersionId [ObjectVersionId] Version of the object.
-- @param ETag [ETag] Entity tag of the object.
-- @param Location [Location]  
-- @param Key [ObjectKey]  
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @param Expiration [Expiration] If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.
function M.CompleteMultipartUploadOutput(RequestCharged, Bucket, VersionId, ETag, Location, Key, ServerSideEncryption, SSEKMSKeyId, Expiration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteMultipartUploadOutput")
	local t = { 
		["RequestCharged"] = RequestCharged,
		["Bucket"] = Bucket,
		["VersionId"] = VersionId,
		["ETag"] = ETag,
		["Location"] = Location,
		["Key"] = Key,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["Expiration"] = Expiration,
	}
	M.AssertCompleteMultipartUploadOutput(t)
	return t
end

local ObjectAlreadyInActiveTierError_keys = { nil }

function M.AssertObjectAlreadyInActiveTierError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAlreadyInActiveTierError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ObjectAlreadyInActiveTierError_keys[k], "ObjectAlreadyInActiveTierError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAlreadyInActiveTierError
-- This operation is not allowed against this storage tier
function M.ObjectAlreadyInActiveTierError(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAlreadyInActiveTierError")
	local t = { 
	}
	M.AssertObjectAlreadyInActiveTierError(t)
	return t
end

local DeleteBucketInventoryConfigurationRequest_keys = { "Bucket" = true, "Id" = true, nil }

function M.AssertDeleteBucketInventoryConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketInventoryConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketInventoryConfigurationRequest_keys[k], "DeleteBucketInventoryConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketInventoryConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket containing the inventory configuration to delete.
-- @param Id [InventoryId] The ID used to identify the inventory configuration.
-- Required parameter: Bucket
-- Required parameter: Id
function M.DeleteBucketInventoryConfigurationRequest(Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketInventoryConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertDeleteBucketInventoryConfigurationRequest(t)
	return t
end

local Grantee_keys = { "EmailAddress" = true, "Type" = true, "DisplayName" = true, "ID" = true, "URI" = true, nil }

function M.AssertGrantee(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Grantee to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["EmailAddress"] then M.AssertEmailAddress(struct["EmailAddress"]) end
	if struct["Type"] then M.AssertType(struct["Type"]) end
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["ID"] then M.AssertID(struct["ID"]) end
	if struct["URI"] then M.AssertURI(struct["URI"]) end
	for k,_ in pairs(struct) do
		assert(Grantee_keys[k], "Grantee contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Grantee
--  
-- @param EmailAddress [EmailAddress] Email address of the grantee.
-- @param Type [Type] Type of grantee
-- @param DisplayName [DisplayName] Screen name of the grantee.
-- @param ID [ID] The canonical user ID of the grantee.
-- @param URI [URI] URI of the grantee group.
-- Required parameter: Type
function M.Grantee(EmailAddress, Type, DisplayName, ID, URI, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Grantee")
	local t = { 
		["EmailAddress"] = EmailAddress,
		["Type"] = Type,
		["DisplayName"] = DisplayName,
		["ID"] = ID,
		["URI"] = URI,
	}
	M.AssertGrantee(t)
	return t
end

local PutBucketLifecycleRequest_keys = { "LifecycleConfiguration" = true, "ContentMD5" = true, "Bucket" = true, nil }

function M.AssertPutBucketLifecycleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketLifecycleRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["LifecycleConfiguration"] then M.AssertLifecycleConfiguration(struct["LifecycleConfiguration"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketLifecycleRequest_keys[k], "PutBucketLifecycleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketLifecycleRequest
--  
-- @param LifecycleConfiguration [LifecycleConfiguration]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.PutBucketLifecycleRequest(LifecycleConfiguration, ContentMD5, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketLifecycleRequest")
	local t = { 
		["LifecycleConfiguration"] = LifecycleConfiguration,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketLifecycleRequest(t)
	return t
end

local GetObjectTorrentOutput_keys = { "Body" = true, "RequestCharged" = true, nil }

function M.AssertGetObjectTorrentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTorrentOutput to be of type 'table'")
	if struct["Body"] then M.AssertBody(struct["Body"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectTorrentOutput_keys[k], "GetObjectTorrentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTorrentOutput
--  
-- @param Body [Body]  
-- @param RequestCharged [RequestCharged]  
function M.GetObjectTorrentOutput(Body, RequestCharged, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectTorrentOutput")
	local t = { 
		["Body"] = Body,
		["RequestCharged"] = RequestCharged,
	}
	M.AssertGetObjectTorrentOutput(t)
	return t
end

local Rule_keys = { "Status" = true, "NoncurrentVersionExpiration" = true, "Transition" = true, "Prefix" = true, "Expiration" = true, "AbortIncompleteMultipartUpload" = true, "NoncurrentVersionTransition" = true, "ID" = true, nil }

function M.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertExpirationStatus(struct["Status"]) end
	if struct["NoncurrentVersionExpiration"] then M.AssertNoncurrentVersionExpiration(struct["NoncurrentVersionExpiration"]) end
	if struct["Transition"] then M.AssertTransition(struct["Transition"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Expiration"] then M.AssertLifecycleExpiration(struct["Expiration"]) end
	if struct["AbortIncompleteMultipartUpload"] then M.AssertAbortIncompleteMultipartUpload(struct["AbortIncompleteMultipartUpload"]) end
	if struct["NoncurrentVersionTransition"] then M.AssertNoncurrentVersionTransition(struct["NoncurrentVersionTransition"]) end
	if struct["ID"] then M.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(Rule_keys[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
--  
-- @param Status [ExpirationStatus] If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
-- @param NoncurrentVersionExpiration [NoncurrentVersionExpiration]  
-- @param Transition [Transition]  
-- @param Prefix [Prefix] Prefix identifying one or more objects to which the rule applies.
-- @param Expiration [LifecycleExpiration]  
-- @param AbortIncompleteMultipartUpload [AbortIncompleteMultipartUpload]  
-- @param NoncurrentVersionTransition [NoncurrentVersionTransition]  
-- @param ID [ID] Unique identifier for the rule. The value cannot be longer than 255 characters.
-- Required parameter: Prefix
-- Required parameter: Status
function M.Rule(Status, NoncurrentVersionExpiration, Transition, Prefix, Expiration, AbortIncompleteMultipartUpload, NoncurrentVersionTransition, ID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["Status"] = Status,
		["NoncurrentVersionExpiration"] = NoncurrentVersionExpiration,
		["Transition"] = Transition,
		["Prefix"] = Prefix,
		["Expiration"] = Expiration,
		["AbortIncompleteMultipartUpload"] = AbortIncompleteMultipartUpload,
		["NoncurrentVersionTransition"] = NoncurrentVersionTransition,
		["ID"] = ID,
	}
	M.AssertRule(t)
	return t
end

local DeleteObjectTaggingRequest_keys = { "VersionId" = true, "Bucket" = true, "Key" = true, nil }

function M.AssertDeleteObjectTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectTaggingRequest_keys[k], "DeleteObjectTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectTaggingRequest
--  
-- @param VersionId [ObjectVersionId] The versionId of the object that the tag-set will be removed from.
-- @param Bucket [BucketName]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
function M.DeleteObjectTaggingRequest(VersionId, Bucket, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectTaggingRequest")
	local t = { 
		["VersionId"] = VersionId,
		["Bucket"] = Bucket,
		["Key"] = Key,
	}
	M.AssertDeleteObjectTaggingRequest(t)
	return t
end

local HeadObjectRequest_keys = { "SSECustomerAlgorithm" = true, "SSECustomerKey" = true, "IfUnmodifiedSince" = true, "VersionId" = true, "RequestPayer" = true, "Bucket" = true, "IfNoneMatch" = true, "Range" = true, "Key" = true, "IfMatch" = true, "SSECustomerKeyMD5" = true, "PartNumber" = true, "IfModifiedSince" = true, nil }

function M.AssertHeadObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HeadObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["IfUnmodifiedSince"] then M.AssertIfUnmodifiedSince(struct["IfUnmodifiedSince"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["IfNoneMatch"] then M.AssertIfNoneMatch(struct["IfNoneMatch"]) end
	if struct["Range"] then M.AssertRange(struct["Range"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["IfMatch"] then M.AssertIfMatch(struct["IfMatch"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["PartNumber"] then M.AssertPartNumber(struct["PartNumber"]) end
	if struct["IfModifiedSince"] then M.AssertIfModifiedSince(struct["IfModifiedSince"]) end
	for k,_ in pairs(struct) do
		assert(HeadObjectRequest_keys[k], "HeadObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HeadObjectRequest
--  
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- @param IfUnmodifiedSince [IfUnmodifiedSince] Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
-- @param VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- @param RequestPayer [RequestPayer]  
-- @param Bucket [BucketName]  
-- @param IfNoneMatch [IfNoneMatch] Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
-- @param Range [Range] Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
-- @param Key [ObjectKey]  
-- @param IfMatch [IfMatch] Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- @param PartNumber [PartNumber] Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.
-- @param IfModifiedSince [IfModifiedSince] Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
-- Required parameter: Bucket
-- Required parameter: Key
function M.HeadObjectRequest(SSECustomerAlgorithm, SSECustomerKey, IfUnmodifiedSince, VersionId, RequestPayer, Bucket, IfNoneMatch, Range, Key, IfMatch, SSECustomerKeyMD5, PartNumber, IfModifiedSince, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HeadObjectRequest")
	local t = { 
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["SSECustomerKey"] = SSECustomerKey,
		["IfUnmodifiedSince"] = IfUnmodifiedSince,
		["VersionId"] = VersionId,
		["RequestPayer"] = RequestPayer,
		["Bucket"] = Bucket,
		["IfNoneMatch"] = IfNoneMatch,
		["Range"] = Range,
		["Key"] = Key,
		["IfMatch"] = IfMatch,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["PartNumber"] = PartNumber,
		["IfModifiedSince"] = IfModifiedSince,
	}
	M.AssertHeadObjectRequest(t)
	return t
end

local BucketAlreadyOwnedByYou_keys = { nil }

function M.AssertBucketAlreadyOwnedByYou(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketAlreadyOwnedByYou to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BucketAlreadyOwnedByYou_keys[k], "BucketAlreadyOwnedByYou contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketAlreadyOwnedByYou
--  
function M.BucketAlreadyOwnedByYou(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketAlreadyOwnedByYou")
	local t = { 
	}
	M.AssertBucketAlreadyOwnedByYou(t)
	return t
end

local ListPartsOutput_keys = { "Initiator" = true, "AbortRuleId" = true, "AbortDate" = true, "Bucket" = true, "NextPartNumberMarker" = true, "Parts" = true, "UploadId" = true, "StorageClass" = true, "Key" = true, "RequestCharged" = true, "Owner" = true, "MaxParts" = true, "IsTruncated" = true, "PartNumberMarker" = true, nil }

function M.AssertListPartsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsOutput to be of type 'table'")
	if struct["Initiator"] then M.AssertInitiator(struct["Initiator"]) end
	if struct["AbortRuleId"] then M.AssertAbortRuleId(struct["AbortRuleId"]) end
	if struct["AbortDate"] then M.AssertAbortDate(struct["AbortDate"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["NextPartNumberMarker"] then M.AssertNextPartNumberMarker(struct["NextPartNumberMarker"]) end
	if struct["Parts"] then M.AssertParts(struct["Parts"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["MaxParts"] then M.AssertMaxParts(struct["MaxParts"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["PartNumberMarker"] then M.AssertPartNumberMarker(struct["PartNumberMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListPartsOutput_keys[k], "ListPartsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsOutput
--  
-- @param Initiator [Initiator] Identifies who initiated the multipart upload.
-- @param AbortRuleId [AbortRuleId] Id of the lifecycle rule that makes a multipart upload eligible for abort operation.
-- @param AbortDate [AbortDate] Date when multipart upload will become eligible for abort operation by lifecycle.
-- @param Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- @param NextPartNumberMarker [NextPartNumberMarker] When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
-- @param Parts [Parts]  
-- @param UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose parts are being listed.
-- @param StorageClass [StorageClass] The class of storage used to store the object.
-- @param Key [ObjectKey] Object key for which the multipart upload was initiated.
-- @param RequestCharged [RequestCharged]  
-- @param Owner [Owner]  
-- @param MaxParts [MaxParts] Maximum number of parts that were allowed in the response.
-- @param IsTruncated [IsTruncated] Indicates whether the returned list of parts is truncated.
-- @param PartNumberMarker [PartNumberMarker] Part number after which listing begins.
function M.ListPartsOutput(Initiator, AbortRuleId, AbortDate, Bucket, NextPartNumberMarker, Parts, UploadId, StorageClass, Key, RequestCharged, Owner, MaxParts, IsTruncated, PartNumberMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPartsOutput")
	local t = { 
		["Initiator"] = Initiator,
		["AbortRuleId"] = AbortRuleId,
		["AbortDate"] = AbortDate,
		["Bucket"] = Bucket,
		["NextPartNumberMarker"] = NextPartNumberMarker,
		["Parts"] = Parts,
		["UploadId"] = UploadId,
		["StorageClass"] = StorageClass,
		["Key"] = Key,
		["RequestCharged"] = RequestCharged,
		["Owner"] = Owner,
		["MaxParts"] = MaxParts,
		["IsTruncated"] = IsTruncated,
		["PartNumberMarker"] = PartNumberMarker,
	}
	M.AssertListPartsOutput(t)
	return t
end

local CompletedPart_keys = { "PartNumber" = true, "ETag" = true, nil }

function M.AssertCompletedPart(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompletedPart to be of type 'table'")
	if struct["PartNumber"] then M.AssertPartNumber(struct["PartNumber"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(CompletedPart_keys[k], "CompletedPart contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompletedPart
--  
-- @param PartNumber [PartNumber] Part number that identifies the part. This is a positive integer between 1 and 10,000.
-- @param ETag [ETag] Entity tag returned when the part was uploaded.
function M.CompletedPart(PartNumber, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompletedPart")
	local t = { 
		["PartNumber"] = PartNumber,
		["ETag"] = ETag,
	}
	M.AssertCompletedPart(t)
	return t
end

local PutBucketAnalyticsConfigurationRequest_keys = { "AnalyticsConfiguration" = true, "Bucket" = true, "Id" = true, nil }

function M.AssertPutBucketAnalyticsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketAnalyticsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["AnalyticsConfiguration"], "Expected key AnalyticsConfiguration to exist in table")
	if struct["AnalyticsConfiguration"] then M.AssertAnalyticsConfiguration(struct["AnalyticsConfiguration"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketAnalyticsConfigurationRequest_keys[k], "PutBucketAnalyticsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketAnalyticsConfigurationRequest
--  
-- @param AnalyticsConfiguration [AnalyticsConfiguration] The configuration and any analyses for the analytics filter.
-- @param Bucket [BucketName] The name of the bucket to which an analytics configuration is stored.
-- @param Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required parameter: Bucket
-- Required parameter: Id
-- Required parameter: AnalyticsConfiguration
function M.PutBucketAnalyticsConfigurationRequest(AnalyticsConfiguration, Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketAnalyticsConfigurationRequest")
	local t = { 
		["AnalyticsConfiguration"] = AnalyticsConfiguration,
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertPutBucketAnalyticsConfigurationRequest(t)
	return t
end

local CORSConfiguration_keys = { "CORSRules" = true, nil }

function M.AssertCORSConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CORSConfiguration to be of type 'table'")
	assert(struct["CORSRules"], "Expected key CORSRules to exist in table")
	if struct["CORSRules"] then M.AssertCORSRules(struct["CORSRules"]) end
	for k,_ in pairs(struct) do
		assert(CORSConfiguration_keys[k], "CORSConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CORSConfiguration
--  
-- @param CORSRules [CORSRules]  
-- Required parameter: CORSRules
function M.CORSConfiguration(CORSRules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CORSConfiguration")
	local t = { 
		["CORSRules"] = CORSRules,
	}
	M.AssertCORSConfiguration(t)
	return t
end

local GetObjectOutput_keys = { "LastModified" = true, "ContentRange" = true, "RequestCharged" = true, "ContentEncoding" = true, "ReplicationStatus" = true, "StorageClass" = true, "ServerSideEncryption" = true, "SSEKMSKeyId" = true, "TagCount" = true, "ContentDisposition" = true, "Metadata" = true, "Body" = true, "AcceptRanges" = true, "WebsiteRedirectLocation" = true, "Expires" = true, "DeleteMarker" = true, "CacheControl" = true, "PartsCount" = true, "ContentLength" = true, "Expiration" = true, "MissingMeta" = true, "Restore" = true, "SSECustomerAlgorithm" = true, "ContentType" = true, "ContentLanguage" = true, "VersionId" = true, "ETag" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertGetObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectOutput to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["ContentRange"] then M.AssertContentRange(struct["ContentRange"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["ContentEncoding"] then M.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["ReplicationStatus"] then M.AssertReplicationStatus(struct["ReplicationStatus"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["TagCount"] then M.AssertTagCount(struct["TagCount"]) end
	if struct["ContentDisposition"] then M.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	if struct["Body"] then M.AssertBody(struct["Body"]) end
	if struct["AcceptRanges"] then M.AssertAcceptRanges(struct["AcceptRanges"]) end
	if struct["WebsiteRedirectLocation"] then M.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then M.AssertExpires(struct["Expires"]) end
	if struct["DeleteMarker"] then M.AssertDeleteMarker(struct["DeleteMarker"]) end
	if struct["CacheControl"] then M.AssertCacheControl(struct["CacheControl"]) end
	if struct["PartsCount"] then M.AssertPartsCount(struct["PartsCount"]) end
	if struct["ContentLength"] then M.AssertContentLength(struct["ContentLength"]) end
	if struct["Expiration"] then M.AssertExpiration(struct["Expiration"]) end
	if struct["MissingMeta"] then M.AssertMissingMeta(struct["MissingMeta"]) end
	if struct["Restore"] then M.AssertRestore(struct["Restore"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then M.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then M.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectOutput_keys[k], "GetObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectOutput
--  
-- @param LastModified [LastModified] Last modified date of the object
-- @param ContentRange [ContentRange] The portion of the object returned in the response.
-- @param RequestCharged [RequestCharged]  
-- @param ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- @param ReplicationStatus [ReplicationStatus]  
-- @param StorageClass [StorageClass]  
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @param TagCount [TagCount] The number of tags, if any, on the object.
-- @param ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- @param Metadata [Metadata] A map of metadata to store with the object in S3.
-- @param Body [Body] Object data.
-- @param AcceptRanges [AcceptRanges]  
-- @param WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- @param Expires [Expires] The date and time at which the object is no longer cacheable.
-- @param DeleteMarker [DeleteMarker] Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
-- @param CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- @param PartsCount [PartsCount] The count of parts this object has.
-- @param ContentLength [ContentLength] Size of the body in bytes.
-- @param Expiration [Expiration] If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
-- @param MissingMeta [MissingMeta] This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
-- @param Restore [Restore] Provides information about object restoration operation and expiration time of the restored object copy.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param ContentType [ContentType] A standard MIME type describing the format of the object data.
-- @param ContentLanguage [ContentLanguage] The language the content is in.
-- @param VersionId [ObjectVersionId] Version of the object.
-- @param ETag [ETag] An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
function M.GetObjectOutput(LastModified, ContentRange, RequestCharged, ContentEncoding, ReplicationStatus, StorageClass, ServerSideEncryption, SSEKMSKeyId, TagCount, ContentDisposition, Metadata, Body, AcceptRanges, WebsiteRedirectLocation, Expires, DeleteMarker, CacheControl, PartsCount, ContentLength, Expiration, MissingMeta, Restore, SSECustomerAlgorithm, ContentType, ContentLanguage, VersionId, ETag, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectOutput")
	local t = { 
		["LastModified"] = LastModified,
		["ContentRange"] = ContentRange,
		["RequestCharged"] = RequestCharged,
		["ContentEncoding"] = ContentEncoding,
		["ReplicationStatus"] = ReplicationStatus,
		["StorageClass"] = StorageClass,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["TagCount"] = TagCount,
		["ContentDisposition"] = ContentDisposition,
		["Metadata"] = Metadata,
		["Body"] = Body,
		["AcceptRanges"] = AcceptRanges,
		["WebsiteRedirectLocation"] = WebsiteRedirectLocation,
		["Expires"] = Expires,
		["DeleteMarker"] = DeleteMarker,
		["CacheControl"] = CacheControl,
		["PartsCount"] = PartsCount,
		["ContentLength"] = ContentLength,
		["Expiration"] = Expiration,
		["MissingMeta"] = MissingMeta,
		["Restore"] = Restore,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ContentType"] = ContentType,
		["ContentLanguage"] = ContentLanguage,
		["VersionId"] = VersionId,
		["ETag"] = ETag,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertGetObjectOutput(t)
	return t
end

local GetBucketVersioningRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketVersioningRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketVersioningRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketVersioningRequest_keys[k], "GetBucketVersioningRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketVersioningRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketVersioningRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketVersioningRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketVersioningRequest(t)
	return t
end

local PutBucketAccelerateConfigurationRequest_keys = { "AccelerateConfiguration" = true, "Bucket" = true, nil }

function M.AssertPutBucketAccelerateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketAccelerateConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["AccelerateConfiguration"], "Expected key AccelerateConfiguration to exist in table")
	if struct["AccelerateConfiguration"] then M.AssertAccelerateConfiguration(struct["AccelerateConfiguration"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketAccelerateConfigurationRequest_keys[k], "PutBucketAccelerateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketAccelerateConfigurationRequest
--  
-- @param AccelerateConfiguration [AccelerateConfiguration] Specifies the Accelerate Configuration you want to set for the bucket.
-- @param Bucket [BucketName] Name of the bucket for which the accelerate configuration is set.
-- Required parameter: Bucket
-- Required parameter: AccelerateConfiguration
function M.PutBucketAccelerateConfigurationRequest(AccelerateConfiguration, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketAccelerateConfigurationRequest")
	local t = { 
		["AccelerateConfiguration"] = AccelerateConfiguration,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketAccelerateConfigurationRequest(t)
	return t
end

local PutBucketRequestPaymentRequest_keys = { "RequestPaymentConfiguration" = true, "ContentMD5" = true, "Bucket" = true, nil }

function M.AssertPutBucketRequestPaymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketRequestPaymentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["RequestPaymentConfiguration"], "Expected key RequestPaymentConfiguration to exist in table")
	if struct["RequestPaymentConfiguration"] then M.AssertRequestPaymentConfiguration(struct["RequestPaymentConfiguration"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketRequestPaymentRequest_keys[k], "PutBucketRequestPaymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketRequestPaymentRequest
--  
-- @param RequestPaymentConfiguration [RequestPaymentConfiguration]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
-- Required parameter: RequestPaymentConfiguration
function M.PutBucketRequestPaymentRequest(RequestPaymentConfiguration, ContentMD5, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketRequestPaymentRequest")
	local t = { 
		["RequestPaymentConfiguration"] = RequestPaymentConfiguration,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketRequestPaymentRequest(t)
	return t
end

local GetBucketLocationOutput_keys = { "LocationConstraint" = true, nil }

function M.AssertGetBucketLocationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLocationOutput to be of type 'table'")
	if struct["LocationConstraint"] then M.AssertBucketLocationConstraint(struct["LocationConstraint"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLocationOutput_keys[k], "GetBucketLocationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLocationOutput
--  
-- @param LocationConstraint [BucketLocationConstraint]  
function M.GetBucketLocationOutput(LocationConstraint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLocationOutput")
	local t = { 
		["LocationConstraint"] = LocationConstraint,
	}
	M.AssertGetBucketLocationOutput(t)
	return t
end

local GetBucketInventoryConfigurationRequest_keys = { "Bucket" = true, "Id" = true, nil }

function M.AssertGetBucketInventoryConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketInventoryConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketInventoryConfigurationRequest_keys[k], "GetBucketInventoryConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketInventoryConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket containing the inventory configuration to retrieve.
-- @param Id [InventoryId] The ID used to identify the inventory configuration.
-- Required parameter: Bucket
-- Required parameter: Id
function M.GetBucketInventoryConfigurationRequest(Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketInventoryConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertGetBucketInventoryConfigurationRequest(t)
	return t
end

local GetBucketTaggingRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketTaggingRequest_keys[k], "GetBucketTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketTaggingRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketTaggingRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketTaggingRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketTaggingRequest(t)
	return t
end

local AnalyticsFilter_keys = { "And" = true, "Prefix" = true, "Tag" = true, nil }

function M.AssertAnalyticsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsFilter to be of type 'table'")
	if struct["And"] then M.AssertAnalyticsAndOperator(struct["And"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then M.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(AnalyticsFilter_keys[k], "AnalyticsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsFilter
--  
-- @param And [AnalyticsAndOperator] A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.
-- @param Prefix [Prefix] The prefix to use when evaluating an analytics filter.
-- @param Tag [Tag] The tag to use when evaluating an analytics filter.
function M.AnalyticsFilter(And, Prefix, Tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalyticsFilter")
	local t = { 
		["And"] = And,
		["Prefix"] = Prefix,
		["Tag"] = Tag,
	}
	M.AssertAnalyticsFilter(t)
	return t
end

local CommonPrefix_keys = { "Prefix" = true, nil }

function M.AssertCommonPrefix(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommonPrefix to be of type 'table'")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(CommonPrefix_keys[k], "CommonPrefix contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommonPrefix
--  
-- @param Prefix [Prefix]  
function M.CommonPrefix(Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommonPrefix")
	local t = { 
		["Prefix"] = Prefix,
	}
	M.AssertCommonPrefix(t)
	return t
end

local LifecycleConfiguration_keys = { "Rules" = true, nil }

function M.AssertLifecycleConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleConfiguration to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then M.AssertRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleConfiguration_keys[k], "LifecycleConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleConfiguration
--  
-- @param Rules [Rules]  
-- Required parameter: Rules
function M.LifecycleConfiguration(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleConfiguration")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertLifecycleConfiguration(t)
	return t
end

local DeleteBucketTaggingRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketTaggingRequest_keys[k], "DeleteBucketTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketTaggingRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketTaggingRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketTaggingRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketTaggingRequest(t)
	return t
end

local GetBucketWebsiteOutput_keys = { "RedirectAllRequestsTo" = true, "IndexDocument" = true, "ErrorDocument" = true, "RoutingRules" = true, nil }

function M.AssertGetBucketWebsiteOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketWebsiteOutput to be of type 'table'")
	if struct["RedirectAllRequestsTo"] then M.AssertRedirectAllRequestsTo(struct["RedirectAllRequestsTo"]) end
	if struct["IndexDocument"] then M.AssertIndexDocument(struct["IndexDocument"]) end
	if struct["ErrorDocument"] then M.AssertErrorDocument(struct["ErrorDocument"]) end
	if struct["RoutingRules"] then M.AssertRoutingRules(struct["RoutingRules"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketWebsiteOutput_keys[k], "GetBucketWebsiteOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketWebsiteOutput
--  
-- @param RedirectAllRequestsTo [RedirectAllRequestsTo]  
-- @param IndexDocument [IndexDocument]  
-- @param ErrorDocument [ErrorDocument]  
-- @param RoutingRules [RoutingRules]  
function M.GetBucketWebsiteOutput(RedirectAllRequestsTo, IndexDocument, ErrorDocument, RoutingRules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketWebsiteOutput")
	local t = { 
		["RedirectAllRequestsTo"] = RedirectAllRequestsTo,
		["IndexDocument"] = IndexDocument,
		["ErrorDocument"] = ErrorDocument,
		["RoutingRules"] = RoutingRules,
	}
	M.AssertGetBucketWebsiteOutput(t)
	return t
end

local S3KeyFilter_keys = { "FilterRules" = true, nil }

function M.AssertS3KeyFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3KeyFilter to be of type 'table'")
	if struct["FilterRules"] then M.AssertFilterRuleList(struct["FilterRules"]) end
	for k,_ in pairs(struct) do
		assert(S3KeyFilter_keys[k], "S3KeyFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3KeyFilter
-- Container for object key name prefix and suffix filtering rules.
-- @param FilterRules [FilterRuleList] Container for object key name prefix and suffix filtering rules.
function M.S3KeyFilter(FilterRules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3KeyFilter")
	local t = { 
		["FilterRules"] = FilterRules,
	}
	M.AssertS3KeyFilter(t)
	return t
end

local GetBucketLocationRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketLocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLocationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLocationRequest_keys[k], "GetBucketLocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLocationRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketLocationRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLocationRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketLocationRequest(t)
	return t
end

local RedirectAllRequestsTo_keys = { "HostName" = true, "Protocol" = true, nil }

function M.AssertRedirectAllRequestsTo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RedirectAllRequestsTo to be of type 'table'")
	assert(struct["HostName"], "Expected key HostName to exist in table")
	if struct["HostName"] then M.AssertHostName(struct["HostName"]) end
	if struct["Protocol"] then M.AssertProtocol(struct["Protocol"]) end
	for k,_ in pairs(struct) do
		assert(RedirectAllRequestsTo_keys[k], "RedirectAllRequestsTo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RedirectAllRequestsTo
--  
-- @param HostName [HostName] Name of the host where requests will be redirected.
-- @param Protocol [Protocol] Protocol to use (http, https) when redirecting requests. The default is the protocol that is used in the original request.
-- Required parameter: HostName
function M.RedirectAllRequestsTo(HostName, Protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RedirectAllRequestsTo")
	local t = { 
		["HostName"] = HostName,
		["Protocol"] = Protocol,
	}
	M.AssertRedirectAllRequestsTo(t)
	return t
end

local CreateBucketOutput_keys = { "Location" = true, nil }

function M.AssertCreateBucketOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBucketOutput to be of type 'table'")
	if struct["Location"] then M.AssertLocation(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateBucketOutput_keys[k], "CreateBucketOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBucketOutput
--  
-- @param Location [Location]  
function M.CreateBucketOutput(Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBucketOutput")
	local t = { 
		["Location"] = Location,
	}
	M.AssertCreateBucketOutput(t)
	return t
end

local PutBucketAclRequest_keys = { "GrantFullControl" = true, "GrantWriteACP" = true, "ContentMD5" = true, "Bucket" = true, "ACL" = true, "AccessControlPolicy" = true, "GrantWrite" = true, "GrantRead" = true, "GrantReadACP" = true, nil }

function M.AssertPutBucketAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["GrantFullControl"] then M.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["GrantWriteACP"] then M.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["ACL"] then M.AssertBucketCannedACL(struct["ACL"]) end
	if struct["AccessControlPolicy"] then M.AssertAccessControlPolicy(struct["AccessControlPolicy"]) end
	if struct["GrantWrite"] then M.AssertGrantWrite(struct["GrantWrite"]) end
	if struct["GrantRead"] then M.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantReadACP"] then M.AssertGrantReadACP(struct["GrantReadACP"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketAclRequest_keys[k], "PutBucketAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketAclRequest
--  
-- @param GrantFullControl [GrantFullControl] Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
-- @param GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable bucket.
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param ACL [BucketCannedACL] The canned ACL to apply to the bucket.
-- @param AccessControlPolicy [AccessControlPolicy]  
-- @param GrantWrite [GrantWrite] Allows grantee to create, overwrite, and delete any object in the bucket.
-- @param GrantRead [GrantRead] Allows grantee to list the objects in the bucket.
-- @param GrantReadACP [GrantReadACP] Allows grantee to read the bucket ACL.
-- Required parameter: Bucket
function M.PutBucketAclRequest(GrantFullControl, GrantWriteACP, ContentMD5, Bucket, ACL, AccessControlPolicy, GrantWrite, GrantRead, GrantReadACP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketAclRequest")
	local t = { 
		["GrantFullControl"] = GrantFullControl,
		["GrantWriteACP"] = GrantWriteACP,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["ACL"] = ACL,
		["AccessControlPolicy"] = AccessControlPolicy,
		["GrantWrite"] = GrantWrite,
		["GrantRead"] = GrantRead,
		["GrantReadACP"] = GrantReadACP,
	}
	M.AssertPutBucketAclRequest(t)
	return t
end

local PutBucketPolicyRequest_keys = { "Policy" = true, "ContentMD5" = true, "Bucket" = true, nil }

function M.AssertPutBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketPolicyRequest_keys[k], "PutBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketPolicyRequest
--  
-- @param Policy [Policy] The bucket policy as a JSON document.
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
-- Required parameter: Policy
function M.PutBucketPolicyRequest(Policy, ContentMD5, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketPolicyRequest")
	local t = { 
		["Policy"] = Policy,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketPolicyRequest(t)
	return t
end

local GetBucketCorsRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketCorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketCorsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketCorsRequest_keys[k], "GetBucketCorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketCorsRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketCorsRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketCorsRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketCorsRequest(t)
	return t
end

local StorageClassAnalysis_keys = { "DataExport" = true, nil }

function M.AssertStorageClassAnalysis(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageClassAnalysis to be of type 'table'")
	if struct["DataExport"] then M.AssertStorageClassAnalysisDataExport(struct["DataExport"]) end
	for k,_ in pairs(struct) do
		assert(StorageClassAnalysis_keys[k], "StorageClassAnalysis contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageClassAnalysis
--  
-- @param DataExport [StorageClassAnalysisDataExport] A container used to describe how data related to the storage class analysis should be exported.
function M.StorageClassAnalysis(DataExport, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageClassAnalysis")
	local t = { 
		["DataExport"] = DataExport,
	}
	M.AssertStorageClassAnalysis(t)
	return t
end

local AccelerateConfiguration_keys = { "Status" = true, nil }

function M.AssertAccelerateConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccelerateConfiguration to be of type 'table'")
	if struct["Status"] then M.AssertBucketAccelerateStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(AccelerateConfiguration_keys[k], "AccelerateConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccelerateConfiguration
--  
-- @param Status [BucketAccelerateStatus] The accelerate configuration of the bucket.
function M.AccelerateConfiguration(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccelerateConfiguration")
	local t = { 
		["Status"] = Status,
	}
	M.AssertAccelerateConfiguration(t)
	return t
end

local PutBucketCorsRequest_keys = { "ContentMD5" = true, "Bucket" = true, "CORSConfiguration" = true, nil }

function M.AssertPutBucketCorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketCorsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["CORSConfiguration"], "Expected key CORSConfiguration to exist in table")
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["CORSConfiguration"] then M.AssertCORSConfiguration(struct["CORSConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketCorsRequest_keys[k], "PutBucketCorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketCorsRequest
--  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param CORSConfiguration [CORSConfiguration]  
-- Required parameter: Bucket
-- Required parameter: CORSConfiguration
function M.PutBucketCorsRequest(ContentMD5, Bucket, CORSConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketCorsRequest")
	local t = { 
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["CORSConfiguration"] = CORSConfiguration,
	}
	M.AssertPutBucketCorsRequest(t)
	return t
end

local PutBucketWebsiteRequest_keys = { "ContentMD5" = true, "Bucket" = true, "WebsiteConfiguration" = true, nil }

function M.AssertPutBucketWebsiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketWebsiteRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["WebsiteConfiguration"], "Expected key WebsiteConfiguration to exist in table")
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["WebsiteConfiguration"] then M.AssertWebsiteConfiguration(struct["WebsiteConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketWebsiteRequest_keys[k], "PutBucketWebsiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketWebsiteRequest
--  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param WebsiteConfiguration [WebsiteConfiguration]  
-- Required parameter: Bucket
-- Required parameter: WebsiteConfiguration
function M.PutBucketWebsiteRequest(ContentMD5, Bucket, WebsiteConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketWebsiteRequest")
	local t = { 
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["WebsiteConfiguration"] = WebsiteConfiguration,
	}
	M.AssertPutBucketWebsiteRequest(t)
	return t
end

local TopicConfigurationDeprecated_keys = { "Topic" = true, "Id" = true, "Event" = true, "Events" = true, nil }

function M.AssertTopicConfigurationDeprecated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicConfigurationDeprecated to be of type 'table'")
	if struct["Topic"] then M.AssertTopicArn(struct["Topic"]) end
	if struct["Id"] then M.AssertNotificationId(struct["Id"]) end
	if struct["Event"] then M.AssertEvent(struct["Event"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(TopicConfigurationDeprecated_keys[k], "TopicConfigurationDeprecated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicConfigurationDeprecated
--  
-- @param Topic [TopicArn] Amazon SNS topic to which Amazon S3 will publish a message to report the specified events for the bucket.
-- @param Id [NotificationId]  
-- @param Event [Event] Bucket event for which to send notifications.
-- @param Events [EventList]  
function M.TopicConfigurationDeprecated(Topic, Id, Event, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicConfigurationDeprecated")
	local t = { 
		["Topic"] = Topic,
		["Id"] = Id,
		["Event"] = Event,
		["Events"] = Events,
	}
	M.AssertTopicConfigurationDeprecated(t)
	return t
end

local BucketAlreadyExists_keys = { nil }

function M.AssertBucketAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketAlreadyExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BucketAlreadyExists_keys[k], "BucketAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketAlreadyExists
-- The requested bucket name is not available. The bucket namespace is shared by all users of the system. Please select a different name and try again.
function M.BucketAlreadyExists(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketAlreadyExists")
	local t = { 
	}
	M.AssertBucketAlreadyExists(t)
	return t
end

local PutObjectAclRequest_keys = { "GrantFullControl" = true, "GrantWriteACP" = true, "Key" = true, "RequestPayer" = true, "ContentMD5" = true, "Bucket" = true, "ACL" = true, "AccessControlPolicy" = true, "GrantWrite" = true, "VersionId" = true, "GrantRead" = true, "GrantReadACP" = true, nil }

function M.AssertPutObjectAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["GrantFullControl"] then M.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["GrantWriteACP"] then M.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["ACL"] then M.AssertObjectCannedACL(struct["ACL"]) end
	if struct["AccessControlPolicy"] then M.AssertAccessControlPolicy(struct["AccessControlPolicy"]) end
	if struct["GrantWrite"] then M.AssertGrantWrite(struct["GrantWrite"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["GrantRead"] then M.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantReadACP"] then M.AssertGrantReadACP(struct["GrantReadACP"]) end
	for k,_ in pairs(struct) do
		assert(PutObjectAclRequest_keys[k], "PutObjectAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectAclRequest
--  
-- @param GrantFullControl [GrantFullControl] Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
-- @param GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable bucket.
-- @param Key [ObjectKey]  
-- @param RequestPayer [RequestPayer]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- @param AccessControlPolicy [AccessControlPolicy]  
-- @param GrantWrite [GrantWrite] Allows grantee to create, overwrite, and delete any object in the bucket.
-- @param VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- @param GrantRead [GrantRead] Allows grantee to list the objects in the bucket.
-- @param GrantReadACP [GrantReadACP] Allows grantee to read the bucket ACL.
-- Required parameter: Bucket
-- Required parameter: Key
function M.PutObjectAclRequest(GrantFullControl, GrantWriteACP, Key, RequestPayer, ContentMD5, Bucket, ACL, AccessControlPolicy, GrantWrite, VersionId, GrantRead, GrantReadACP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutObjectAclRequest")
	local t = { 
		["GrantFullControl"] = GrantFullControl,
		["GrantWriteACP"] = GrantWriteACP,
		["Key"] = Key,
		["RequestPayer"] = RequestPayer,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["ACL"] = ACL,
		["AccessControlPolicy"] = AccessControlPolicy,
		["GrantWrite"] = GrantWrite,
		["VersionId"] = VersionId,
		["GrantRead"] = GrantRead,
		["GrantReadACP"] = GrantReadACP,
	}
	M.AssertPutObjectAclRequest(t)
	return t
end

local DeleteObjectOutput_keys = { "VersionId" = true, "RequestCharged" = true, "DeleteMarker" = true, nil }

function M.AssertDeleteObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectOutput to be of type 'table'")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["DeleteMarker"] then M.AssertDeleteMarker(struct["DeleteMarker"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectOutput_keys[k], "DeleteObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectOutput
--  
-- @param VersionId [ObjectVersionId] Returns the version ID of the delete marker created as a result of the DELETE operation.
-- @param RequestCharged [RequestCharged]  
-- @param DeleteMarker [DeleteMarker] Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker.
function M.DeleteObjectOutput(VersionId, RequestCharged, DeleteMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectOutput")
	local t = { 
		["VersionId"] = VersionId,
		["RequestCharged"] = RequestCharged,
		["DeleteMarker"] = DeleteMarker,
	}
	M.AssertDeleteObjectOutput(t)
	return t
end

local CreateBucketConfiguration_keys = { "LocationConstraint" = true, nil }

function M.AssertCreateBucketConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBucketConfiguration to be of type 'table'")
	if struct["LocationConstraint"] then M.AssertBucketLocationConstraint(struct["LocationConstraint"]) end
	for k,_ in pairs(struct) do
		assert(CreateBucketConfiguration_keys[k], "CreateBucketConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBucketConfiguration
--  
-- @param LocationConstraint [BucketLocationConstraint] Specifies the region where the bucket will be created. If you don't specify a region, the bucket will be created in US Standard.
function M.CreateBucketConfiguration(LocationConstraint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBucketConfiguration")
	local t = { 
		["LocationConstraint"] = LocationConstraint,
	}
	M.AssertCreateBucketConfiguration(t)
	return t
end

local GetBucketAccelerateConfigurationOutput_keys = { "Status" = true, nil }

function M.AssertGetBucketAccelerateConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAccelerateConfigurationOutput to be of type 'table'")
	if struct["Status"] then M.AssertBucketAccelerateStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketAccelerateConfigurationOutput_keys[k], "GetBucketAccelerateConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAccelerateConfigurationOutput
--  
-- @param Status [BucketAccelerateStatus] The accelerate configuration of the bucket.
function M.GetBucketAccelerateConfigurationOutput(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketAccelerateConfigurationOutput")
	local t = { 
		["Status"] = Status,
	}
	M.AssertGetBucketAccelerateConfigurationOutput(t)
	return t
end

local ListObjectsRequest_keys = { "RequestPayer" = true, "Bucket" = true, "Prefix" = true, "MaxKeys" = true, "Delimiter" = true, "Marker" = true, "EncodingType" = true, nil }

function M.AssertListObjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["MaxKeys"] then M.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["Marker"] then M.AssertMarker(struct["Marker"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectsRequest_keys[k], "ListObjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsRequest
--  
-- @param RequestPayer [RequestPayer] Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.
-- @param Bucket [BucketName]  
-- @param Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- @param MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- @param Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- @param Marker [Marker] Specifies the key to start with when listing objects in a bucket.
-- @param EncodingType [EncodingType]  
-- Required parameter: Bucket
function M.ListObjectsRequest(RequestPayer, Bucket, Prefix, MaxKeys, Delimiter, Marker, EncodingType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectsRequest")
	local t = { 
		["RequestPayer"] = RequestPayer,
		["Bucket"] = Bucket,
		["Prefix"] = Prefix,
		["MaxKeys"] = MaxKeys,
		["Delimiter"] = Delimiter,
		["Marker"] = Marker,
		["EncodingType"] = EncodingType,
	}
	M.AssertListObjectsRequest(t)
	return t
end

local DeleteBucketRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketRequest_keys[k], "DeleteBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketRequest(t)
	return t
end

local DeleteBucketPolicyRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketPolicyRequest_keys[k], "DeleteBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketPolicyRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketPolicyRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketPolicyRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketPolicyRequest(t)
	return t
end

local VersioningConfiguration_keys = { "Status" = true, "MFADelete" = true, nil }

function M.AssertVersioningConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersioningConfiguration to be of type 'table'")
	if struct["Status"] then M.AssertBucketVersioningStatus(struct["Status"]) end
	if struct["MFADelete"] then M.AssertMFADelete(struct["MFADelete"]) end
	for k,_ in pairs(struct) do
		assert(VersioningConfiguration_keys[k], "VersioningConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersioningConfiguration
--  
-- @param Status [BucketVersioningStatus] The versioning state of the bucket.
-- @param MFADelete [MFADelete] Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
function M.VersioningConfiguration(Status, MFADelete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersioningConfiguration")
	local t = { 
		["Status"] = Status,
		["MFADelete"] = MFADelete,
	}
	M.AssertVersioningConfiguration(t)
	return t
end

local CreateBucketRequest_keys = { "GrantFullControl" = true, "CreateBucketConfiguration" = true, "GrantWriteACP" = true, "Bucket" = true, "ACL" = true, "GrantWrite" = true, "GrantRead" = true, "GrantReadACP" = true, nil }

function M.AssertCreateBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBucketRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["GrantFullControl"] then M.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["CreateBucketConfiguration"] then M.AssertCreateBucketConfiguration(struct["CreateBucketConfiguration"]) end
	if struct["GrantWriteACP"] then M.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["ACL"] then M.AssertBucketCannedACL(struct["ACL"]) end
	if struct["GrantWrite"] then M.AssertGrantWrite(struct["GrantWrite"]) end
	if struct["GrantRead"] then M.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantReadACP"] then M.AssertGrantReadACP(struct["GrantReadACP"]) end
	for k,_ in pairs(struct) do
		assert(CreateBucketRequest_keys[k], "CreateBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBucketRequest
--  
-- @param GrantFullControl [GrantFullControl] Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
-- @param CreateBucketConfiguration [CreateBucketConfiguration]  
-- @param GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable bucket.
-- @param Bucket [BucketName]  
-- @param ACL [BucketCannedACL] The canned ACL to apply to the bucket.
-- @param GrantWrite [GrantWrite] Allows grantee to create, overwrite, and delete any object in the bucket.
-- @param GrantRead [GrantRead] Allows grantee to list the objects in the bucket.
-- @param GrantReadACP [GrantReadACP] Allows grantee to read the bucket ACL.
-- Required parameter: Bucket
function M.CreateBucketRequest(GrantFullControl, CreateBucketConfiguration, GrantWriteACP, Bucket, ACL, GrantWrite, GrantRead, GrantReadACP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBucketRequest")
	local t = { 
		["GrantFullControl"] = GrantFullControl,
		["CreateBucketConfiguration"] = CreateBucketConfiguration,
		["GrantWriteACP"] = GrantWriteACP,
		["Bucket"] = Bucket,
		["ACL"] = ACL,
		["GrantWrite"] = GrantWrite,
		["GrantRead"] = GrantRead,
		["GrantReadACP"] = GrantReadACP,
	}
	M.AssertCreateBucketRequest(t)
	return t
end

local NotificationConfigurationFilter_keys = { "Key" = true, nil }

function M.AssertNotificationConfigurationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfigurationFilter to be of type 'table'")
	if struct["Key"] then M.AssertS3KeyFilter(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(NotificationConfigurationFilter_keys[k], "NotificationConfigurationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfigurationFilter
-- Container for object key name filtering rules. For information about key name filtering, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.
-- @param Key [S3KeyFilter] Container for object key name filtering rules. For information about key name filtering, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.
function M.NotificationConfigurationFilter(Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfigurationFilter")
	local t = { 
		["Key"] = Key,
	}
	M.AssertNotificationConfigurationFilter(t)
	return t
end

local GetBucketInventoryConfigurationOutput_keys = { "InventoryConfiguration" = true, nil }

function M.AssertGetBucketInventoryConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketInventoryConfigurationOutput to be of type 'table'")
	if struct["InventoryConfiguration"] then M.AssertInventoryConfiguration(struct["InventoryConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketInventoryConfigurationOutput_keys[k], "GetBucketInventoryConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketInventoryConfigurationOutput
--  
-- @param InventoryConfiguration [InventoryConfiguration] Specifies the inventory configuration.
function M.GetBucketInventoryConfigurationOutput(InventoryConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketInventoryConfigurationOutput")
	local t = { 
		["InventoryConfiguration"] = InventoryConfiguration,
	}
	M.AssertGetBucketInventoryConfigurationOutput(t)
	return t
end

local AccessControlPolicy_keys = { "Owner" = true, "Grants" = true, nil }

function M.AssertAccessControlPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessControlPolicy to be of type 'table'")
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["Grants"] then M.AssertGrants(struct["Grants"]) end
	for k,_ in pairs(struct) do
		assert(AccessControlPolicy_keys[k], "AccessControlPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessControlPolicy
--  
-- @param Owner [Owner]  
-- @param Grants [Grants] A list of grants.
function M.AccessControlPolicy(Owner, Grants, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessControlPolicy")
	local t = { 
		["Owner"] = Owner,
		["Grants"] = Grants,
	}
	M.AssertAccessControlPolicy(t)
	return t
end

local Delete_keys = { "Objects" = true, "Quiet" = true, nil }

function M.AssertDelete(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Delete to be of type 'table'")
	assert(struct["Objects"], "Expected key Objects to exist in table")
	if struct["Objects"] then M.AssertObjectIdentifierList(struct["Objects"]) end
	if struct["Quiet"] then M.AssertQuiet(struct["Quiet"]) end
	for k,_ in pairs(struct) do
		assert(Delete_keys[k], "Delete contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Delete
--  
-- @param Objects [ObjectIdentifierList]  
-- @param Quiet [Quiet] Element to enable quiet mode for the request. When you add this element, you must set its value to true.
-- Required parameter: Objects
function M.Delete(Objects, Quiet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Delete")
	local t = { 
		["Objects"] = Objects,
		["Quiet"] = Quiet,
	}
	M.AssertDelete(t)
	return t
end

local PutBucketNotificationConfigurationRequest_keys = { "NotificationConfiguration" = true, "Bucket" = true, nil }

function M.AssertPutBucketNotificationConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketNotificationConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["NotificationConfiguration"], "Expected key NotificationConfiguration to exist in table")
	if struct["NotificationConfiguration"] then M.AssertNotificationConfiguration(struct["NotificationConfiguration"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketNotificationConfigurationRequest_keys[k], "PutBucketNotificationConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketNotificationConfigurationRequest
--  
-- @param NotificationConfiguration [NotificationConfiguration]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
-- Required parameter: NotificationConfiguration
function M.PutBucketNotificationConfigurationRequest(NotificationConfiguration, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketNotificationConfigurationRequest")
	local t = { 
		["NotificationConfiguration"] = NotificationConfiguration,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketNotificationConfigurationRequest(t)
	return t
end

local AnalyticsExportDestination_keys = { "S3BucketDestination" = true, nil }

function M.AssertAnalyticsExportDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsExportDestination to be of type 'table'")
	assert(struct["S3BucketDestination"], "Expected key S3BucketDestination to exist in table")
	if struct["S3BucketDestination"] then M.AssertAnalyticsS3BucketDestination(struct["S3BucketDestination"]) end
	for k,_ in pairs(struct) do
		assert(AnalyticsExportDestination_keys[k], "AnalyticsExportDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsExportDestination
--  
-- @param S3BucketDestination [AnalyticsS3BucketDestination] A destination signifying output to an S3 bucket.
-- Required parameter: S3BucketDestination
function M.AnalyticsExportDestination(S3BucketDestination, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalyticsExportDestination")
	local t = { 
		["S3BucketDestination"] = S3BucketDestination,
	}
	M.AssertAnalyticsExportDestination(t)
	return t
end

local InventoryConfiguration_keys = { "Schedule" = true, "IsEnabled" = true, "Destination" = true, "OptionalFields" = true, "Filter" = true, "IncludedObjectVersions" = true, "Id" = true, nil }

function M.AssertInventoryConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryConfiguration to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["IsEnabled"], "Expected key IsEnabled to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["IncludedObjectVersions"], "Expected key IncludedObjectVersions to exist in table")
	assert(struct["Schedule"], "Expected key Schedule to exist in table")
	if struct["Schedule"] then M.AssertInventorySchedule(struct["Schedule"]) end
	if struct["IsEnabled"] then M.AssertIsEnabled(struct["IsEnabled"]) end
	if struct["Destination"] then M.AssertInventoryDestination(struct["Destination"]) end
	if struct["OptionalFields"] then M.AssertInventoryOptionalFields(struct["OptionalFields"]) end
	if struct["Filter"] then M.AssertInventoryFilter(struct["Filter"]) end
	if struct["IncludedObjectVersions"] then M.AssertInventoryIncludedObjectVersions(struct["IncludedObjectVersions"]) end
	if struct["Id"] then M.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(InventoryConfiguration_keys[k], "InventoryConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryConfiguration
--  
-- @param Schedule [InventorySchedule] Specifies the schedule for generating inventory results.
-- @param IsEnabled [IsEnabled] Specifies whether the inventory is enabled or disabled.
-- @param Destination [InventoryDestination] Contains information about where to publish the inventory results.
-- @param OptionalFields [InventoryOptionalFields] Contains the optional fields that are included in the inventory results.
-- @param Filter [InventoryFilter] Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
-- @param IncludedObjectVersions [InventoryIncludedObjectVersions] Specifies which object version(s) to included in the inventory results.
-- @param Id [InventoryId] The ID used to identify the inventory configuration.
-- Required parameter: Destination
-- Required parameter: IsEnabled
-- Required parameter: Id
-- Required parameter: IncludedObjectVersions
-- Required parameter: Schedule
function M.InventoryConfiguration(Schedule, IsEnabled, Destination, OptionalFields, Filter, IncludedObjectVersions, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryConfiguration")
	local t = { 
		["Schedule"] = Schedule,
		["IsEnabled"] = IsEnabled,
		["Destination"] = Destination,
		["OptionalFields"] = OptionalFields,
		["Filter"] = Filter,
		["IncludedObjectVersions"] = IncludedObjectVersions,
		["Id"] = Id,
	}
	M.AssertInventoryConfiguration(t)
	return t
end

local LambdaFunctionConfiguration_keys = { "Filter" = true, "LambdaFunctionArn" = true, "Id" = true, "Events" = true, nil }

function M.AssertLambdaFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionConfiguration to be of type 'table'")
	assert(struct["LambdaFunctionArn"], "Expected key LambdaFunctionArn to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["Filter"] then M.AssertNotificationConfigurationFilter(struct["Filter"]) end
	if struct["LambdaFunctionArn"] then M.AssertLambdaFunctionArn(struct["LambdaFunctionArn"]) end
	if struct["Id"] then M.AssertNotificationId(struct["Id"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionConfiguration_keys[k], "LambdaFunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionConfiguration
-- Container for specifying the AWS Lambda notification configuration.
-- @param Filter [NotificationConfigurationFilter] Container for specifying the AWS Lambda notification configuration.
-- @param LambdaFunctionArn [LambdaFunctionArn] Lambda cloud function ARN that Amazon S3 can invoke when it detects events of the specified type.
-- @param Id [NotificationId] Container for specifying the AWS Lambda notification configuration.
-- @param Events [EventList] Container for specifying the AWS Lambda notification configuration.
-- Required parameter: LambdaFunctionArn
-- Required parameter: Events
function M.LambdaFunctionConfiguration(Filter, LambdaFunctionArn, Id, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionConfiguration")
	local t = { 
		["Filter"] = Filter,
		["LambdaFunctionArn"] = LambdaFunctionArn,
		["Id"] = Id,
		["Events"] = Events,
	}
	M.AssertLambdaFunctionConfiguration(t)
	return t
end

local GetBucketLifecycleConfigurationOutput_keys = { "Rules" = true, nil }

function M.AssertGetBucketLifecycleConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleConfigurationOutput to be of type 'table'")
	if struct["Rules"] then M.AssertLifecycleRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLifecycleConfigurationOutput_keys[k], "GetBucketLifecycleConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleConfigurationOutput
--  
-- @param Rules [LifecycleRules]  
function M.GetBucketLifecycleConfigurationOutput(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLifecycleConfigurationOutput")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertGetBucketLifecycleConfigurationOutput(t)
	return t
end

local NoncurrentVersionExpiration_keys = { "NoncurrentDays" = true, nil }

function M.AssertNoncurrentVersionExpiration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoncurrentVersionExpiration to be of type 'table'")
	if struct["NoncurrentDays"] then M.AssertDays(struct["NoncurrentDays"]) end
	for k,_ in pairs(struct) do
		assert(NoncurrentVersionExpiration_keys[k], "NoncurrentVersionExpiration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoncurrentVersionExpiration
-- Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
-- @param NoncurrentDays [Days] Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">How Amazon S3 Calculates When an Object Became Noncurrent</a> in the Amazon Simple Storage Service Developer Guide.
function M.NoncurrentVersionExpiration(NoncurrentDays, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoncurrentVersionExpiration")
	local t = { 
		["NoncurrentDays"] = NoncurrentDays,
	}
	M.AssertNoncurrentVersionExpiration(t)
	return t
end

local FilterRule_keys = { "Name" = true, "Value" = true, nil }

function M.AssertFilterRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterRule to be of type 'table'")
	if struct["Name"] then M.AssertFilterRuleName(struct["Name"]) end
	if struct["Value"] then M.AssertFilterRuleValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(FilterRule_keys[k], "FilterRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterRule
-- Container for key value pair that defines the criteria for the filter rule.
-- @param Name [FilterRuleName] Object key name prefix or suffix identifying one or more objects to which the filtering rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes and suffixes are not supported. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.
-- @param Value [FilterRuleValue] Container for key value pair that defines the criteria for the filter rule.
function M.FilterRule(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FilterRule")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertFilterRule(t)
	return t
end

local HeadObjectOutput_keys = { "LastModified" = true, "RequestCharged" = true, "ContentEncoding" = true, "ReplicationStatus" = true, "StorageClass" = true, "ServerSideEncryption" = true, "SSEKMSKeyId" = true, "ContentDisposition" = true, "Metadata" = true, "AcceptRanges" = true, "WebsiteRedirectLocation" = true, "Expires" = true, "DeleteMarker" = true, "CacheControl" = true, "PartsCount" = true, "ContentLength" = true, "Expiration" = true, "MissingMeta" = true, "Restore" = true, "SSECustomerAlgorithm" = true, "ContentType" = true, "ContentLanguage" = true, "VersionId" = true, "ETag" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertHeadObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HeadObjectOutput to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["ContentEncoding"] then M.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["ReplicationStatus"] then M.AssertReplicationStatus(struct["ReplicationStatus"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then M.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	if struct["AcceptRanges"] then M.AssertAcceptRanges(struct["AcceptRanges"]) end
	if struct["WebsiteRedirectLocation"] then M.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then M.AssertExpires(struct["Expires"]) end
	if struct["DeleteMarker"] then M.AssertDeleteMarker(struct["DeleteMarker"]) end
	if struct["CacheControl"] then M.AssertCacheControl(struct["CacheControl"]) end
	if struct["PartsCount"] then M.AssertPartsCount(struct["PartsCount"]) end
	if struct["ContentLength"] then M.AssertContentLength(struct["ContentLength"]) end
	if struct["Expiration"] then M.AssertExpiration(struct["Expiration"]) end
	if struct["MissingMeta"] then M.AssertMissingMeta(struct["MissingMeta"]) end
	if struct["Restore"] then M.AssertRestore(struct["Restore"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then M.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then M.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(HeadObjectOutput_keys[k], "HeadObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HeadObjectOutput
--  
-- @param LastModified [LastModified] Last modified date of the object
-- @param RequestCharged [RequestCharged]  
-- @param ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- @param ReplicationStatus [ReplicationStatus]  
-- @param StorageClass [StorageClass]  
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @param ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- @param Metadata [Metadata] A map of metadata to store with the object in S3.
-- @param AcceptRanges [AcceptRanges]  
-- @param WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- @param Expires [Expires] The date and time at which the object is no longer cacheable.
-- @param DeleteMarker [DeleteMarker] Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
-- @param CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- @param PartsCount [PartsCount] The count of parts this object has.
-- @param ContentLength [ContentLength] Size of the body in bytes.
-- @param Expiration [Expiration] If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
-- @param MissingMeta [MissingMeta] This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
-- @param Restore [Restore] Provides information about object restoration operation and expiration time of the restored object copy.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param ContentType [ContentType] A standard MIME type describing the format of the object data.
-- @param ContentLanguage [ContentLanguage] The language the content is in.
-- @param VersionId [ObjectVersionId] Version of the object.
-- @param ETag [ETag] An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
function M.HeadObjectOutput(LastModified, RequestCharged, ContentEncoding, ReplicationStatus, StorageClass, ServerSideEncryption, SSEKMSKeyId, ContentDisposition, Metadata, AcceptRanges, WebsiteRedirectLocation, Expires, DeleteMarker, CacheControl, PartsCount, ContentLength, Expiration, MissingMeta, Restore, SSECustomerAlgorithm, ContentType, ContentLanguage, VersionId, ETag, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HeadObjectOutput")
	local t = { 
		["LastModified"] = LastModified,
		["RequestCharged"] = RequestCharged,
		["ContentEncoding"] = ContentEncoding,
		["ReplicationStatus"] = ReplicationStatus,
		["StorageClass"] = StorageClass,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["ContentDisposition"] = ContentDisposition,
		["Metadata"] = Metadata,
		["AcceptRanges"] = AcceptRanges,
		["WebsiteRedirectLocation"] = WebsiteRedirectLocation,
		["Expires"] = Expires,
		["DeleteMarker"] = DeleteMarker,
		["CacheControl"] = CacheControl,
		["PartsCount"] = PartsCount,
		["ContentLength"] = ContentLength,
		["Expiration"] = Expiration,
		["MissingMeta"] = MissingMeta,
		["Restore"] = Restore,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ContentType"] = ContentType,
		["ContentLanguage"] = ContentLanguage,
		["VersionId"] = VersionId,
		["ETag"] = ETag,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertHeadObjectOutput(t)
	return t
end

local GetBucketAnalyticsConfigurationOutput_keys = { "AnalyticsConfiguration" = true, nil }

function M.AssertGetBucketAnalyticsConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAnalyticsConfigurationOutput to be of type 'table'")
	if struct["AnalyticsConfiguration"] then M.AssertAnalyticsConfiguration(struct["AnalyticsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketAnalyticsConfigurationOutput_keys[k], "GetBucketAnalyticsConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAnalyticsConfigurationOutput
--  
-- @param AnalyticsConfiguration [AnalyticsConfiguration] The configuration and any analyses for the analytics filter.
function M.GetBucketAnalyticsConfigurationOutput(AnalyticsConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketAnalyticsConfigurationOutput")
	local t = { 
		["AnalyticsConfiguration"] = AnalyticsConfiguration,
	}
	M.AssertGetBucketAnalyticsConfigurationOutput(t)
	return t
end

local NoncurrentVersionTransition_keys = { "NoncurrentDays" = true, "StorageClass" = true, nil }

function M.AssertNoncurrentVersionTransition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoncurrentVersionTransition to be of type 'table'")
	if struct["NoncurrentDays"] then M.AssertDays(struct["NoncurrentDays"]) end
	if struct["StorageClass"] then M.AssertTransitionStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(NoncurrentVersionTransition_keys[k], "NoncurrentVersionTransition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoncurrentVersionTransition
-- Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA or GLACIER storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA or GLACIER storage class at a specific period in the object's lifetime.
-- @param NoncurrentDays [Days] Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">How Amazon S3 Calculates When an Object Became Noncurrent</a> in the Amazon Simple Storage Service Developer Guide.
-- @param StorageClass [TransitionStorageClass] The class of storage used to store the object.
function M.NoncurrentVersionTransition(NoncurrentDays, StorageClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoncurrentVersionTransition")
	local t = { 
		["NoncurrentDays"] = NoncurrentDays,
		["StorageClass"] = StorageClass,
	}
	M.AssertNoncurrentVersionTransition(t)
	return t
end

local PutBucketNotificationRequest_keys = { "NotificationConfiguration" = true, "ContentMD5" = true, "Bucket" = true, nil }

function M.AssertPutBucketNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketNotificationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["NotificationConfiguration"], "Expected key NotificationConfiguration to exist in table")
	if struct["NotificationConfiguration"] then M.AssertNotificationConfigurationDeprecated(struct["NotificationConfiguration"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketNotificationRequest_keys[k], "PutBucketNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketNotificationRequest
--  
-- @param NotificationConfiguration [NotificationConfigurationDeprecated]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
-- Required parameter: NotificationConfiguration
function M.PutBucketNotificationRequest(NotificationConfiguration, ContentMD5, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketNotificationRequest")
	local t = { 
		["NotificationConfiguration"] = NotificationConfiguration,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketNotificationRequest(t)
	return t
end

local DeleteObjectsRequest_keys = { "MFA" = true, "Bucket" = true, "RequestPayer" = true, "Delete" = true, nil }

function M.AssertDeleteObjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Delete"], "Expected key Delete to exist in table")
	if struct["MFA"] then M.AssertMFA(struct["MFA"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Delete"] then M.AssertDelete(struct["Delete"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectsRequest_keys[k], "DeleteObjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectsRequest
--  
-- @param MFA [MFA] The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Delete [Delete]  
-- Required parameter: Bucket
-- Required parameter: Delete
function M.DeleteObjectsRequest(MFA, Bucket, RequestPayer, Delete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectsRequest")
	local t = { 
		["MFA"] = MFA,
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Delete"] = Delete,
	}
	M.AssertDeleteObjectsRequest(t)
	return t
end

local Redirect_keys = { "ReplaceKeyWith" = true, "HostName" = true, "Protocol" = true, "ReplaceKeyPrefixWith" = true, "HttpRedirectCode" = true, nil }

function M.AssertRedirect(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Redirect to be of type 'table'")
	if struct["ReplaceKeyWith"] then M.AssertReplaceKeyWith(struct["ReplaceKeyWith"]) end
	if struct["HostName"] then M.AssertHostName(struct["HostName"]) end
	if struct["Protocol"] then M.AssertProtocol(struct["Protocol"]) end
	if struct["ReplaceKeyPrefixWith"] then M.AssertReplaceKeyPrefixWith(struct["ReplaceKeyPrefixWith"]) end
	if struct["HttpRedirectCode"] then M.AssertHttpRedirectCode(struct["HttpRedirectCode"]) end
	for k,_ in pairs(struct) do
		assert(Redirect_keys[k], "Redirect contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Redirect
--  
-- @param ReplaceKeyWith [ReplaceKeyWith] The specific object key to use in the redirect request. For example, redirect request to error.html. Not required if one of the sibling is present. Can be present only if ReplaceKeyPrefixWith is not provided.
-- @param HostName [HostName] The host name to use in the redirect request.
-- @param Protocol [Protocol] Protocol to use (http, https) when redirecting requests. The default is the protocol that is used in the original request.
-- @param ReplaceKeyPrefixWith [ReplaceKeyPrefixWith] The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix docs/ (objects in the docs/ folder) to documents/, you can set a condition block with KeyPrefixEquals set to docs/ and in the Redirect set ReplaceKeyPrefixWith to /documents. Not required if one of the siblings is present. Can be present only if ReplaceKeyWith is not provided.
-- @param HttpRedirectCode [HttpRedirectCode] The HTTP redirect code to use on the response. Not required if one of the siblings is present.
function M.Redirect(ReplaceKeyWith, HostName, Protocol, ReplaceKeyPrefixWith, HttpRedirectCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Redirect")
	local t = { 
		["ReplaceKeyWith"] = ReplaceKeyWith,
		["HostName"] = HostName,
		["Protocol"] = Protocol,
		["ReplaceKeyPrefixWith"] = ReplaceKeyPrefixWith,
		["HttpRedirectCode"] = HttpRedirectCode,
	}
	M.AssertRedirect(t)
	return t
end

local UploadPartCopyRequest_keys = { "CopySourceIfMatch" = true, "SSECustomerAlgorithm" = true, "CopySourceSSECustomerKeyMD5" = true, "RequestPayer" = true, "CopySourceSSECustomerKey" = true, "CopySourceSSECustomerAlgorithm" = true, "CopySource" = true, "CopySourceIfModifiedSince" = true, "Bucket" = true, "SSECustomerKey" = true, "CopySourceIfUnmodifiedSince" = true, "CopySourceIfNoneMatch" = true, "UploadId" = true, "Key" = true, "CopySourceRange" = true, "SSECustomerKeyMD5" = true, "PartNumber" = true, nil }

function M.AssertUploadPartCopyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartCopyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["CopySource"], "Expected key CopySource to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["PartNumber"], "Expected key PartNumber to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["CopySourceIfMatch"] then M.AssertCopySourceIfMatch(struct["CopySourceIfMatch"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["CopySourceSSECustomerKeyMD5"] then M.AssertCopySourceSSECustomerKeyMD5(struct["CopySourceSSECustomerKeyMD5"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["CopySourceSSECustomerKey"] then M.AssertCopySourceSSECustomerKey(struct["CopySourceSSECustomerKey"]) end
	if struct["CopySourceSSECustomerAlgorithm"] then M.AssertCopySourceSSECustomerAlgorithm(struct["CopySourceSSECustomerAlgorithm"]) end
	if struct["CopySource"] then M.AssertCopySource(struct["CopySource"]) end
	if struct["CopySourceIfModifiedSince"] then M.AssertCopySourceIfModifiedSince(struct["CopySourceIfModifiedSince"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["CopySourceIfUnmodifiedSince"] then M.AssertCopySourceIfUnmodifiedSince(struct["CopySourceIfUnmodifiedSince"]) end
	if struct["CopySourceIfNoneMatch"] then M.AssertCopySourceIfNoneMatch(struct["CopySourceIfNoneMatch"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["CopySourceRange"] then M.AssertCopySourceRange(struct["CopySourceRange"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["PartNumber"] then M.AssertPartNumber(struct["PartNumber"]) end
	for k,_ in pairs(struct) do
		assert(UploadPartCopyRequest_keys[k], "UploadPartCopyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartCopyRequest
--  
-- @param CopySourceIfMatch [CopySourceIfMatch] Copies the object if its entity tag (ETag) matches the specified tag.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param CopySourceSSECustomerKeyMD5 [CopySourceSSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- @param RequestPayer [RequestPayer]  
-- @param CopySourceSSECustomerKey [CopySourceSSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
-- @param CopySourceSSECustomerAlgorithm [CopySourceSSECustomerAlgorithm] Specifies the algorithm to use when decrypting the source object (e.g., AES256).
-- @param CopySource [CopySource] The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.
-- @param CopySourceIfModifiedSince [CopySourceIfModifiedSince] Copies the object if it has been modified since the specified time.
-- @param Bucket [BucketName]  
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.
-- @param CopySourceIfUnmodifiedSince [CopySourceIfUnmodifiedSince] Copies the object if it hasn't been modified since the specified time.
-- @param CopySourceIfNoneMatch [CopySourceIfNoneMatch] Copies the object if its entity tag (ETag) is different than the specified ETag.
-- @param UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose part is being copied.
-- @param Key [ObjectKey]  
-- @param CopySourceRange [CopySourceRange] The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first ten bytes of the source. You can copy a range only if the source object is greater than 5 GB.
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- @param PartNumber [PartNumber] Part number of part being copied. This is a positive integer between 1 and 10,000.
-- Required parameter: Bucket
-- Required parameter: CopySource
-- Required parameter: Key
-- Required parameter: PartNumber
-- Required parameter: UploadId
function M.UploadPartCopyRequest(CopySourceIfMatch, SSECustomerAlgorithm, CopySourceSSECustomerKeyMD5, RequestPayer, CopySourceSSECustomerKey, CopySourceSSECustomerAlgorithm, CopySource, CopySourceIfModifiedSince, Bucket, SSECustomerKey, CopySourceIfUnmodifiedSince, CopySourceIfNoneMatch, UploadId, Key, CopySourceRange, SSECustomerKeyMD5, PartNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadPartCopyRequest")
	local t = { 
		["CopySourceIfMatch"] = CopySourceIfMatch,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["CopySourceSSECustomerKeyMD5"] = CopySourceSSECustomerKeyMD5,
		["RequestPayer"] = RequestPayer,
		["CopySourceSSECustomerKey"] = CopySourceSSECustomerKey,
		["CopySourceSSECustomerAlgorithm"] = CopySourceSSECustomerAlgorithm,
		["CopySource"] = CopySource,
		["CopySourceIfModifiedSince"] = CopySourceIfModifiedSince,
		["Bucket"] = Bucket,
		["SSECustomerKey"] = SSECustomerKey,
		["CopySourceIfUnmodifiedSince"] = CopySourceIfUnmodifiedSince,
		["CopySourceIfNoneMatch"] = CopySourceIfNoneMatch,
		["UploadId"] = UploadId,
		["Key"] = Key,
		["CopySourceRange"] = CopySourceRange,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["PartNumber"] = PartNumber,
	}
	M.AssertUploadPartCopyRequest(t)
	return t
end

local CompletedMultipartUpload_keys = { "Parts" = true, nil }

function M.AssertCompletedMultipartUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompletedMultipartUpload to be of type 'table'")
	if struct["Parts"] then M.AssertCompletedPartList(struct["Parts"]) end
	for k,_ in pairs(struct) do
		assert(CompletedMultipartUpload_keys[k], "CompletedMultipartUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompletedMultipartUpload
--  
-- @param Parts [CompletedPartList]  
function M.CompletedMultipartUpload(Parts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompletedMultipartUpload")
	local t = { 
		["Parts"] = Parts,
	}
	M.AssertCompletedMultipartUpload(t)
	return t
end

local DeleteBucketReplicationRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketReplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketReplicationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketReplicationRequest_keys[k], "DeleteBucketReplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketReplicationRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketReplicationRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketReplicationRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketReplicationRequest(t)
	return t
end

local Tagging_keys = { "TagSet" = true, nil }

function M.AssertTagging(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tagging to be of type 'table'")
	assert(struct["TagSet"], "Expected key TagSet to exist in table")
	if struct["TagSet"] then M.AssertTagSet(struct["TagSet"]) end
	for k,_ in pairs(struct) do
		assert(Tagging_keys[k], "Tagging contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tagging
--  
-- @param TagSet [TagSet]  
-- Required parameter: TagSet
function M.Tagging(TagSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tagging")
	local t = { 
		["TagSet"] = TagSet,
	}
	M.AssertTagging(t)
	return t
end

local AnalyticsAndOperator_keys = { "Prefix" = true, "Tags" = true, nil }

function M.AssertAnalyticsAndOperator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsAndOperator to be of type 'table'")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Tags"] then M.AssertTagSet(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AnalyticsAndOperator_keys[k], "AnalyticsAndOperator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsAndOperator
--  
-- @param Prefix [Prefix] The prefix to use when evaluating an AND predicate.
-- @param Tags [TagSet] The list of tags to use when evaluating an AND predicate.
function M.AnalyticsAndOperator(Prefix, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalyticsAndOperator")
	local t = { 
		["Prefix"] = Prefix,
		["Tags"] = Tags,
	}
	M.AssertAnalyticsAndOperator(t)
	return t
end

local RestoreObjectRequest_keys = { "VersionId" = true, "RestoreRequest" = true, "Bucket" = true, "RequestPayer" = true, "Key" = true, nil }

function M.AssertRestoreObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RestoreRequest"] then M.AssertRestoreRequest(struct["RestoreRequest"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(RestoreObjectRequest_keys[k], "RestoreObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreObjectRequest
--  
-- @param VersionId [ObjectVersionId]  
-- @param RestoreRequest [RestoreRequest]  
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
function M.RestoreObjectRequest(VersionId, RestoreRequest, Bucket, RequestPayer, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreObjectRequest")
	local t = { 
		["VersionId"] = VersionId,
		["RestoreRequest"] = RestoreRequest,
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Key"] = Key,
	}
	M.AssertRestoreObjectRequest(t)
	return t
end

local GetObjectTorrentRequest_keys = { "Bucket" = true, "RequestPayer" = true, "Key" = true, nil }

function M.AssertGetObjectTorrentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTorrentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectTorrentRequest_keys[k], "GetObjectTorrentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTorrentRequest
--  
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
function M.GetObjectTorrentRequest(Bucket, RequestPayer, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectTorrentRequest")
	local t = { 
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Key"] = Key,
	}
	M.AssertGetObjectTorrentRequest(t)
	return t
end

local GetBucketLifecycleConfigurationRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketLifecycleConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLifecycleConfigurationRequest_keys[k], "GetBucketLifecycleConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleConfigurationRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketLifecycleConfigurationRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLifecycleConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketLifecycleConfigurationRequest(t)
	return t
end

local ListBucketMetricsConfigurationsOutput_keys = { "MetricsConfigurationList" = true, "NextContinuationToken" = true, "IsTruncated" = true, "ContinuationToken" = true, nil }

function M.AssertListBucketMetricsConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketMetricsConfigurationsOutput to be of type 'table'")
	if struct["MetricsConfigurationList"] then M.AssertMetricsConfigurationList(struct["MetricsConfigurationList"]) end
	if struct["NextContinuationToken"] then M.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketMetricsConfigurationsOutput_keys[k], "ListBucketMetricsConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketMetricsConfigurationsOutput
--  
-- @param MetricsConfigurationList [MetricsConfigurationList] The list of metrics configurations for a bucket.
-- @param NextContinuationToken [NextToken] The marker used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
-- @param IsTruncated [IsTruncated] Indicates whether the returned list of metrics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
-- @param ContinuationToken [Token] The marker that is used as a starting point for this metrics configuration list response. This value is present if it was sent in the request.
function M.ListBucketMetricsConfigurationsOutput(MetricsConfigurationList, NextContinuationToken, IsTruncated, ContinuationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketMetricsConfigurationsOutput")
	local t = { 
		["MetricsConfigurationList"] = MetricsConfigurationList,
		["NextContinuationToken"] = NextContinuationToken,
		["IsTruncated"] = IsTruncated,
		["ContinuationToken"] = ContinuationToken,
	}
	M.AssertListBucketMetricsConfigurationsOutput(t)
	return t
end

local ListMultipartUploadsOutput_keys = { "UploadIdMarker" = true, "CommonPrefixes" = true, "NextKeyMarker" = true, "Bucket" = true, "Delimiter" = true, "NextUploadIdMarker" = true, "Prefix" = true, "Uploads" = true, "KeyMarker" = true, "MaxUploads" = true, "EncodingType" = true, "IsTruncated" = true, nil }

function M.AssertListMultipartUploadsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsOutput to be of type 'table'")
	if struct["UploadIdMarker"] then M.AssertUploadIdMarker(struct["UploadIdMarker"]) end
	if struct["CommonPrefixes"] then M.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	if struct["NextKeyMarker"] then M.AssertNextKeyMarker(struct["NextKeyMarker"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["NextUploadIdMarker"] then M.AssertNextUploadIdMarker(struct["NextUploadIdMarker"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Uploads"] then M.AssertMultipartUploadList(struct["Uploads"]) end
	if struct["KeyMarker"] then M.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["MaxUploads"] then M.AssertMaxUploads(struct["MaxUploads"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListMultipartUploadsOutput_keys[k], "ListMultipartUploadsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsOutput
--  
-- @param UploadIdMarker [UploadIdMarker] Upload ID after which listing began.
-- @param CommonPrefixes [CommonPrefixList]  
-- @param NextKeyMarker [NextKeyMarker] When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.
-- @param Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- @param Delimiter [Delimiter]  
-- @param NextUploadIdMarker [NextUploadIdMarker] When a list is truncated, this element specifies the value that should be used for the upload-id-marker request parameter in a subsequent request.
-- @param Prefix [Prefix] When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.
-- @param Uploads [MultipartUploadList]  
-- @param KeyMarker [KeyMarker] The key at or after which the listing began.
-- @param MaxUploads [MaxUploads] Maximum number of multipart uploads that could have been included in the response.
-- @param EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- @param IsTruncated [IsTruncated] Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.
function M.ListMultipartUploadsOutput(UploadIdMarker, CommonPrefixes, NextKeyMarker, Bucket, Delimiter, NextUploadIdMarker, Prefix, Uploads, KeyMarker, MaxUploads, EncodingType, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMultipartUploadsOutput")
	local t = { 
		["UploadIdMarker"] = UploadIdMarker,
		["CommonPrefixes"] = CommonPrefixes,
		["NextKeyMarker"] = NextKeyMarker,
		["Bucket"] = Bucket,
		["Delimiter"] = Delimiter,
		["NextUploadIdMarker"] = NextUploadIdMarker,
		["Prefix"] = Prefix,
		["Uploads"] = Uploads,
		["KeyMarker"] = KeyMarker,
		["MaxUploads"] = MaxUploads,
		["EncodingType"] = EncodingType,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListMultipartUploadsOutput(t)
	return t
end

local GetBucketLifecycleRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketLifecycleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLifecycleRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLifecycleRequest_keys[k], "GetBucketLifecycleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLifecycleRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketLifecycleRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLifecycleRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketLifecycleRequest(t)
	return t
end

local PutBucketLifecycleConfigurationRequest_keys = { "LifecycleConfiguration" = true, "Bucket" = true, nil }

function M.AssertPutBucketLifecycleConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketLifecycleConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["LifecycleConfiguration"] then M.AssertBucketLifecycleConfiguration(struct["LifecycleConfiguration"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketLifecycleConfigurationRequest_keys[k], "PutBucketLifecycleConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketLifecycleConfigurationRequest
--  
-- @param LifecycleConfiguration [BucketLifecycleConfiguration]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.PutBucketLifecycleConfigurationRequest(LifecycleConfiguration, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketLifecycleConfigurationRequest")
	local t = { 
		["LifecycleConfiguration"] = LifecycleConfiguration,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketLifecycleConfigurationRequest(t)
	return t
end

local PutBucketLoggingRequest_keys = { "BucketLoggingStatus" = true, "ContentMD5" = true, "Bucket" = true, nil }

function M.AssertPutBucketLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketLoggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["BucketLoggingStatus"], "Expected key BucketLoggingStatus to exist in table")
	if struct["BucketLoggingStatus"] then M.AssertBucketLoggingStatus(struct["BucketLoggingStatus"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketLoggingRequest_keys[k], "PutBucketLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketLoggingRequest
--  
-- @param BucketLoggingStatus [BucketLoggingStatus]  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
-- Required parameter: BucketLoggingStatus
function M.PutBucketLoggingRequest(BucketLoggingStatus, ContentMD5, Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketLoggingRequest")
	local t = { 
		["BucketLoggingStatus"] = BucketLoggingStatus,
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
	}
	M.AssertPutBucketLoggingRequest(t)
	return t
end

local GetBucketAccelerateConfigurationRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketAccelerateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAccelerateConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketAccelerateConfigurationRequest_keys[k], "GetBucketAccelerateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAccelerateConfigurationRequest
--  
-- @param Bucket [BucketName] Name of the bucket for which the accelerate configuration is retrieved.
-- Required parameter: Bucket
function M.GetBucketAccelerateConfigurationRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketAccelerateConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketAccelerateConfigurationRequest(t)
	return t
end

local GetBucketMetricsConfigurationOutput_keys = { "MetricsConfiguration" = true, nil }

function M.AssertGetBucketMetricsConfigurationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketMetricsConfigurationOutput to be of type 'table'")
	if struct["MetricsConfiguration"] then M.AssertMetricsConfiguration(struct["MetricsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketMetricsConfigurationOutput_keys[k], "GetBucketMetricsConfigurationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketMetricsConfigurationOutput
--  
-- @param MetricsConfiguration [MetricsConfiguration] Specifies the metrics configuration.
function M.GetBucketMetricsConfigurationOutput(MetricsConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketMetricsConfigurationOutput")
	local t = { 
		["MetricsConfiguration"] = MetricsConfiguration,
	}
	M.AssertGetBucketMetricsConfigurationOutput(t)
	return t
end

local AbortIncompleteMultipartUpload_keys = { "DaysAfterInitiation" = true, nil }

function M.AssertAbortIncompleteMultipartUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortIncompleteMultipartUpload to be of type 'table'")
	if struct["DaysAfterInitiation"] then M.AssertDaysAfterInitiation(struct["DaysAfterInitiation"]) end
	for k,_ in pairs(struct) do
		assert(AbortIncompleteMultipartUpload_keys[k], "AbortIncompleteMultipartUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortIncompleteMultipartUpload
-- Specifies the days since the initiation of an Incomplete Multipart Upload that Lifecycle will wait before permanently removing all parts of the upload.
-- @param DaysAfterInitiation [DaysAfterInitiation] Indicates the number of days that must pass since initiation for Lifecycle to abort an Incomplete Multipart Upload.
function M.AbortIncompleteMultipartUpload(DaysAfterInitiation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortIncompleteMultipartUpload")
	local t = { 
		["DaysAfterInitiation"] = DaysAfterInitiation,
	}
	M.AssertAbortIncompleteMultipartUpload(t)
	return t
end

local GetBucketReplicationRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketReplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketReplicationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketReplicationRequest_keys[k], "GetBucketReplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketReplicationRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketReplicationRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketReplicationRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketReplicationRequest(t)
	return t
end

local PutObjectAclOutput_keys = { "RequestCharged" = true, nil }

function M.AssertPutObjectAclOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectAclOutput to be of type 'table'")
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(PutObjectAclOutput_keys[k], "PutObjectAclOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectAclOutput
--  
-- @param RequestCharged [RequestCharged]  
function M.PutObjectAclOutput(RequestCharged, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutObjectAclOutput")
	local t = { 
		["RequestCharged"] = RequestCharged,
	}
	M.AssertPutObjectAclOutput(t)
	return t
end

local IndexDocument_keys = { "Suffix" = true, nil }

function M.AssertIndexDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexDocument to be of type 'table'")
	assert(struct["Suffix"], "Expected key Suffix to exist in table")
	if struct["Suffix"] then M.AssertSuffix(struct["Suffix"]) end
	for k,_ in pairs(struct) do
		assert(IndexDocument_keys[k], "IndexDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexDocument
--  
-- @param Suffix [Suffix] A suffix that is appended to a request that is for a directory on the website endpoint (e.g. if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html) The suffix must not be empty and must not include a slash character.
-- Required parameter: Suffix
function M.IndexDocument(Suffix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexDocument")
	local t = { 
		["Suffix"] = Suffix,
	}
	M.AssertIndexDocument(t)
	return t
end

local CreateMultipartUploadRequest_keys = { "RequestPayer" = true, "ContentEncoding" = true, "StorageClass" = true, "GrantReadACP" = true, "ServerSideEncryption" = true, "SSEKMSKeyId" = true, "ContentDisposition" = true, "Metadata" = true, "SSECustomerKey" = true, "WebsiteRedirectLocation" = true, "Expires" = true, "Key" = true, "CacheControl" = true, "Bucket" = true, "GrantRead" = true, "GrantWriteACP" = true, "ACL" = true, "GrantFullControl" = true, "SSECustomerAlgorithm" = true, "ContentType" = true, "ContentLanguage" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertCreateMultipartUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMultipartUploadRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentEncoding"] then M.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["GrantReadACP"] then M.AssertGrantReadACP(struct["GrantReadACP"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then M.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["WebsiteRedirectLocation"] then M.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then M.AssertExpires(struct["Expires"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["CacheControl"] then M.AssertCacheControl(struct["CacheControl"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["GrantRead"] then M.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantWriteACP"] then M.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["ACL"] then M.AssertObjectCannedACL(struct["ACL"]) end
	if struct["GrantFullControl"] then M.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then M.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then M.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(CreateMultipartUploadRequest_keys[k], "CreateMultipartUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMultipartUploadRequest
--  
-- @param RequestPayer [RequestPayer]  
-- @param ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- @param StorageClass [StorageClass] The type of storage to use for the object. Defaults to 'STANDARD'.
-- @param GrantReadACP [GrantReadACP] Allows grantee to read the object ACL.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSEKMSKeyId [SSEKMSKeyId] Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
-- @param ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- @param Metadata [Metadata] A map of metadata to store with the object in S3.
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- @param WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- @param Expires [Expires] The date and time at which the object is no longer cacheable.
-- @param Key [ObjectKey]  
-- @param CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- @param Bucket [BucketName]  
-- @param GrantRead [GrantRead] Allows grantee to read the object data and its metadata.
-- @param GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable object.
-- @param ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- @param GrantFullControl [GrantFullControl] Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param ContentType [ContentType] A standard MIME type describing the format of the object data.
-- @param ContentLanguage [ContentLanguage] The language the content is in.
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required parameter: Bucket
-- Required parameter: Key
function M.CreateMultipartUploadRequest(RequestPayer, ContentEncoding, StorageClass, GrantReadACP, ServerSideEncryption, SSEKMSKeyId, ContentDisposition, Metadata, SSECustomerKey, WebsiteRedirectLocation, Expires, Key, CacheControl, Bucket, GrantRead, GrantWriteACP, ACL, GrantFullControl, SSECustomerAlgorithm, ContentType, ContentLanguage, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMultipartUploadRequest")
	local t = { 
		["RequestPayer"] = RequestPayer,
		["ContentEncoding"] = ContentEncoding,
		["StorageClass"] = StorageClass,
		["GrantReadACP"] = GrantReadACP,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["ContentDisposition"] = ContentDisposition,
		["Metadata"] = Metadata,
		["SSECustomerKey"] = SSECustomerKey,
		["WebsiteRedirectLocation"] = WebsiteRedirectLocation,
		["Expires"] = Expires,
		["Key"] = Key,
		["CacheControl"] = CacheControl,
		["Bucket"] = Bucket,
		["GrantRead"] = GrantRead,
		["GrantWriteACP"] = GrantWriteACP,
		["ACL"] = ACL,
		["GrantFullControl"] = GrantFullControl,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ContentType"] = ContentType,
		["ContentLanguage"] = ContentLanguage,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertCreateMultipartUploadRequest(t)
	return t
end

local GetBucketMetricsConfigurationRequest_keys = { "Bucket" = true, "Id" = true, nil }

function M.AssertGetBucketMetricsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketMetricsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertMetricsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketMetricsConfigurationRequest_keys[k], "GetBucketMetricsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketMetricsConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket containing the metrics configuration to retrieve.
-- @param Id [MetricsId] The ID used to identify the metrics configuration.
-- Required parameter: Bucket
-- Required parameter: Id
function M.GetBucketMetricsConfigurationRequest(Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketMetricsConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertGetBucketMetricsConfigurationRequest(t)
	return t
end

local GetBucketCorsOutput_keys = { "CORSRules" = true, nil }

function M.AssertGetBucketCorsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketCorsOutput to be of type 'table'")
	if struct["CORSRules"] then M.AssertCORSRules(struct["CORSRules"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketCorsOutput_keys[k], "GetBucketCorsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketCorsOutput
--  
-- @param CORSRules [CORSRules]  
function M.GetBucketCorsOutput(CORSRules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketCorsOutput")
	local t = { 
		["CORSRules"] = CORSRules,
	}
	M.AssertGetBucketCorsOutput(t)
	return t
end

local BucketLifecycleConfiguration_keys = { "Rules" = true, nil }

function M.AssertBucketLifecycleConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketLifecycleConfiguration to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then M.AssertLifecycleRules(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(BucketLifecycleConfiguration_keys[k], "BucketLifecycleConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketLifecycleConfiguration
--  
-- @param Rules [LifecycleRules]  
-- Required parameter: Rules
function M.BucketLifecycleConfiguration(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketLifecycleConfiguration")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertBucketLifecycleConfiguration(t)
	return t
end

local DeleteBucketMetricsConfigurationRequest_keys = { "Bucket" = true, "Id" = true, nil }

function M.AssertDeleteBucketMetricsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketMetricsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertMetricsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketMetricsConfigurationRequest_keys[k], "DeleteBucketMetricsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketMetricsConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket containing the metrics configuration to delete.
-- @param Id [MetricsId] The ID used to identify the metrics configuration.
-- Required parameter: Bucket
-- Required parameter: Id
function M.DeleteBucketMetricsConfigurationRequest(Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketMetricsConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertDeleteBucketMetricsConfigurationRequest(t)
	return t
end

local HeadBucketRequest_keys = { "Bucket" = true, nil }

function M.AssertHeadBucketRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HeadBucketRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(HeadBucketRequest_keys[k], "HeadBucketRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HeadBucketRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.HeadBucketRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HeadBucketRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertHeadBucketRequest(t)
	return t
end

local AbortMultipartUploadRequest_keys = { "UploadId" = true, "Bucket" = true, "RequestPayer" = true, "Key" = true, nil }

function M.AssertAbortMultipartUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortMultipartUploadRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(AbortMultipartUploadRequest_keys[k], "AbortMultipartUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortMultipartUploadRequest
--  
-- @param UploadId [MultipartUploadId]  
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
-- Required parameter: UploadId
function M.AbortMultipartUploadRequest(UploadId, Bucket, RequestPayer, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortMultipartUploadRequest")
	local t = { 
		["UploadId"] = UploadId,
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Key"] = Key,
	}
	M.AssertAbortMultipartUploadRequest(t)
	return t
end

local LifecycleRuleFilter_keys = { "And" = true, "Prefix" = true, "Tag" = true, nil }

function M.AssertLifecycleRuleFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleRuleFilter to be of type 'table'")
	if struct["And"] then M.AssertLifecycleRuleAndOperator(struct["And"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then M.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleRuleFilter_keys[k], "LifecycleRuleFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleRuleFilter
-- The Filter is used to identify objects that a Lifecycle Rule applies to. A Filter must have exactly one of Prefix, Tag, or And specified.
-- @param And [LifecycleRuleAndOperator] The Filter is used to identify objects that a Lifecycle Rule applies to. A Filter must have exactly one of Prefix, Tag, or And specified.
-- @param Prefix [Prefix] Prefix identifying one or more objects to which the rule applies.
-- @param Tag [Tag] This tag must exist in the object's tag set in order for the rule to apply.
function M.LifecycleRuleFilter(And, Prefix, Tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleRuleFilter")
	local t = { 
		["And"] = And,
		["Prefix"] = Prefix,
		["Tag"] = Tag,
	}
	M.AssertLifecycleRuleFilter(t)
	return t
end

local Grant_keys = { "Grantee" = true, "Permission" = true, nil }

function M.AssertGrant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Grant to be of type 'table'")
	if struct["Grantee"] then M.AssertGrantee(struct["Grantee"]) end
	if struct["Permission"] then M.AssertPermission(struct["Permission"]) end
	for k,_ in pairs(struct) do
		assert(Grant_keys[k], "Grant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Grant
--  
-- @param Grantee [Grantee]  
-- @param Permission [Permission] Specifies the permission given to the grantee.
function M.Grant(Grantee, Permission, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Grant")
	local t = { 
		["Grantee"] = Grantee,
		["Permission"] = Permission,
	}
	M.AssertGrant(t)
	return t
end

local InventoryFilter_keys = { "Prefix" = true, nil }

function M.AssertInventoryFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryFilter to be of type 'table'")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	for k,_ in pairs(struct) do
		assert(InventoryFilter_keys[k], "InventoryFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryFilter
--  
-- @param Prefix [Prefix] The prefix that an object must have to be included in the inventory results.
-- Required parameter: Prefix
function M.InventoryFilter(Prefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryFilter")
	local t = { 
		["Prefix"] = Prefix,
	}
	M.AssertInventoryFilter(t)
	return t
end

local MultipartUpload_keys = { "Initiator" = true, "Initiated" = true, "UploadId" = true, "StorageClass" = true, "Key" = true, "Owner" = true, nil }

function M.AssertMultipartUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MultipartUpload to be of type 'table'")
	if struct["Initiator"] then M.AssertInitiator(struct["Initiator"]) end
	if struct["Initiated"] then M.AssertInitiated(struct["Initiated"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	for k,_ in pairs(struct) do
		assert(MultipartUpload_keys[k], "MultipartUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MultipartUpload
--  
-- @param Initiator [Initiator] Identifies who initiated the multipart upload.
-- @param Initiated [Initiated] Date and time at which the multipart upload was initiated.
-- @param UploadId [MultipartUploadId] Upload ID that identifies the multipart upload.
-- @param StorageClass [StorageClass] The class of storage used to store the object.
-- @param Key [ObjectKey] Key of the object for which the multipart upload was initiated.
-- @param Owner [Owner]  
function M.MultipartUpload(Initiator, Initiated, UploadId, StorageClass, Key, Owner, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MultipartUpload")
	local t = { 
		["Initiator"] = Initiator,
		["Initiated"] = Initiated,
		["UploadId"] = UploadId,
		["StorageClass"] = StorageClass,
		["Key"] = Key,
		["Owner"] = Owner,
	}
	M.AssertMultipartUpload(t)
	return t
end

local Part_keys = { "LastModified" = true, "PartNumber" = true, "ETag" = true, "Size" = true, nil }

function M.AssertPart(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Part to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["PartNumber"] then M.AssertPartNumber(struct["PartNumber"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["Size"] then M.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(Part_keys[k], "Part contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Part
--  
-- @param LastModified [LastModified] Date and time at which the part was uploaded.
-- @param PartNumber [PartNumber] Part number identifying the part. This is a positive integer between 1 and 10,000.
-- @param ETag [ETag] Entity tag returned when the part was uploaded.
-- @param Size [Size] Size of the uploaded part data.
function M.Part(LastModified, PartNumber, ETag, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Part")
	local t = { 
		["LastModified"] = LastModified,
		["PartNumber"] = PartNumber,
		["ETag"] = ETag,
		["Size"] = Size,
	}
	M.AssertPart(t)
	return t
end

local ListBucketAnalyticsConfigurationsRequest_keys = { "Bucket" = true, "ContinuationToken" = true, nil }

function M.AssertListBucketAnalyticsConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketAnalyticsConfigurationsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketAnalyticsConfigurationsRequest_keys[k], "ListBucketAnalyticsConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketAnalyticsConfigurationsRequest
--  
-- @param Bucket [BucketName] The name of the bucket from which analytics configurations are retrieved.
-- @param ContinuationToken [Token] The ContinuationToken that represents a placeholder from where this request should begin.
-- Required parameter: Bucket
function M.ListBucketAnalyticsConfigurationsRequest(Bucket, ContinuationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketAnalyticsConfigurationsRequest")
	local t = { 
		["Bucket"] = Bucket,
		["ContinuationToken"] = ContinuationToken,
	}
	M.AssertListBucketAnalyticsConfigurationsRequest(t)
	return t
end

local CloudFunctionConfiguration_keys = { "InvocationRole" = true, "CloudFunction" = true, "Events" = true, "Id" = true, "Event" = true, nil }

function M.AssertCloudFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFunctionConfiguration to be of type 'table'")
	if struct["InvocationRole"] then M.AssertCloudFunctionInvocationRole(struct["InvocationRole"]) end
	if struct["CloudFunction"] then M.AssertCloudFunction(struct["CloudFunction"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	if struct["Id"] then M.AssertNotificationId(struct["Id"]) end
	if struct["Event"] then M.AssertEvent(struct["Event"]) end
	for k,_ in pairs(struct) do
		assert(CloudFunctionConfiguration_keys[k], "CloudFunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFunctionConfiguration
--  
-- @param InvocationRole [CloudFunctionInvocationRole]  
-- @param CloudFunction [CloudFunction]  
-- @param Events [EventList]  
-- @param Id [NotificationId]  
-- @param Event [Event]  
function M.CloudFunctionConfiguration(InvocationRole, CloudFunction, Events, Id, Event, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFunctionConfiguration")
	local t = { 
		["InvocationRole"] = InvocationRole,
		["CloudFunction"] = CloudFunction,
		["Events"] = Events,
		["Id"] = Id,
		["Event"] = Event,
	}
	M.AssertCloudFunctionConfiguration(t)
	return t
end

local CopyObjectRequest_keys = { "RequestPayer" = true, "CopySourceIfModifiedSince" = true, "CopySourceIfUnmodifiedSince" = true, "ContentEncoding" = true, "CopySourceSSECustomerKey" = true, "StorageClass" = true, "GrantReadACP" = true, "ServerSideEncryption" = true, "SSEKMSKeyId" = true, "ContentDisposition" = true, "Metadata" = true, "SSECustomerKey" = true, "WebsiteRedirectLocation" = true, "CopySource" = true, "Expires" = true, "Key" = true, "CacheControl" = true, "Tagging" = true, "CopySourceSSECustomerAlgorithm" = true, "Bucket" = true, "GrantRead" = true, "GrantWriteACP" = true, "CopySourceSSECustomerKeyMD5" = true, "ACL" = true, "GrantFullControl" = true, "CopySourceIfMatch" = true, "SSECustomerAlgorithm" = true, "ContentType" = true, "ContentLanguage" = true, "TaggingDirective" = true, "MetadataDirective" = true, "CopySourceIfNoneMatch" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertCopyObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["CopySource"], "Expected key CopySource to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["CopySourceIfModifiedSince"] then M.AssertCopySourceIfModifiedSince(struct["CopySourceIfModifiedSince"]) end
	if struct["CopySourceIfUnmodifiedSince"] then M.AssertCopySourceIfUnmodifiedSince(struct["CopySourceIfUnmodifiedSince"]) end
	if struct["ContentEncoding"] then M.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["CopySourceSSECustomerKey"] then M.AssertCopySourceSSECustomerKey(struct["CopySourceSSECustomerKey"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["GrantReadACP"] then M.AssertGrantReadACP(struct["GrantReadACP"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then M.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["WebsiteRedirectLocation"] then M.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["CopySource"] then M.AssertCopySource(struct["CopySource"]) end
	if struct["Expires"] then M.AssertExpires(struct["Expires"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["CacheControl"] then M.AssertCacheControl(struct["CacheControl"]) end
	if struct["Tagging"] then M.AssertTaggingHeader(struct["Tagging"]) end
	if struct["CopySourceSSECustomerAlgorithm"] then M.AssertCopySourceSSECustomerAlgorithm(struct["CopySourceSSECustomerAlgorithm"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["GrantRead"] then M.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantWriteACP"] then M.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["CopySourceSSECustomerKeyMD5"] then M.AssertCopySourceSSECustomerKeyMD5(struct["CopySourceSSECustomerKeyMD5"]) end
	if struct["ACL"] then M.AssertObjectCannedACL(struct["ACL"]) end
	if struct["GrantFullControl"] then M.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["CopySourceIfMatch"] then M.AssertCopySourceIfMatch(struct["CopySourceIfMatch"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then M.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then M.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["TaggingDirective"] then M.AssertTaggingDirective(struct["TaggingDirective"]) end
	if struct["MetadataDirective"] then M.AssertMetadataDirective(struct["MetadataDirective"]) end
	if struct["CopySourceIfNoneMatch"] then M.AssertCopySourceIfNoneMatch(struct["CopySourceIfNoneMatch"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(CopyObjectRequest_keys[k], "CopyObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyObjectRequest
--  
-- @param RequestPayer [RequestPayer]  
-- @param CopySourceIfModifiedSince [CopySourceIfModifiedSince] Copies the object if it has been modified since the specified time.
-- @param CopySourceIfUnmodifiedSince [CopySourceIfUnmodifiedSince] Copies the object if it hasn't been modified since the specified time.
-- @param ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- @param CopySourceSSECustomerKey [CopySourceSSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
-- @param StorageClass [StorageClass] The type of storage to use for the object. Defaults to 'STANDARD'.
-- @param GrantReadACP [GrantReadACP] Allows grantee to read the object ACL.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSEKMSKeyId [SSEKMSKeyId] Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
-- @param ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- @param Metadata [Metadata] A map of metadata to store with the object in S3.
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- @param WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- @param CopySource [CopySource] The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.
-- @param Expires [Expires] The date and time at which the object is no longer cacheable.
-- @param Key [ObjectKey]  
-- @param CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- @param Tagging [TaggingHeader] The tag-set for the object destination object this value must be used in conjunction with the TaggingDirective. The tag-set must be encoded as URL Query parameters
-- @param CopySourceSSECustomerAlgorithm [CopySourceSSECustomerAlgorithm] Specifies the algorithm to use when decrypting the source object (e.g., AES256).
-- @param Bucket [BucketName]  
-- @param GrantRead [GrantRead] Allows grantee to read the object data and its metadata.
-- @param GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable object.
-- @param CopySourceSSECustomerKeyMD5 [CopySourceSSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- @param ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- @param GrantFullControl [GrantFullControl] Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
-- @param CopySourceIfMatch [CopySourceIfMatch] Copies the object if its entity tag (ETag) matches the specified tag.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param ContentType [ContentType] A standard MIME type describing the format of the object data.
-- @param ContentLanguage [ContentLanguage] The language the content is in.
-- @param TaggingDirective [TaggingDirective] Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request.
-- @param MetadataDirective [MetadataDirective] Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request.
-- @param CopySourceIfNoneMatch [CopySourceIfNoneMatch] Copies the object if its entity tag (ETag) is different than the specified ETag.
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required parameter: Bucket
-- Required parameter: CopySource
-- Required parameter: Key
function M.CopyObjectRequest(RequestPayer, CopySourceIfModifiedSince, CopySourceIfUnmodifiedSince, ContentEncoding, CopySourceSSECustomerKey, StorageClass, GrantReadACP, ServerSideEncryption, SSEKMSKeyId, ContentDisposition, Metadata, SSECustomerKey, WebsiteRedirectLocation, CopySource, Expires, Key, CacheControl, Tagging, CopySourceSSECustomerAlgorithm, Bucket, GrantRead, GrantWriteACP, CopySourceSSECustomerKeyMD5, ACL, GrantFullControl, CopySourceIfMatch, SSECustomerAlgorithm, ContentType, ContentLanguage, TaggingDirective, MetadataDirective, CopySourceIfNoneMatch, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyObjectRequest")
	local t = { 
		["RequestPayer"] = RequestPayer,
		["CopySourceIfModifiedSince"] = CopySourceIfModifiedSince,
		["CopySourceIfUnmodifiedSince"] = CopySourceIfUnmodifiedSince,
		["ContentEncoding"] = ContentEncoding,
		["CopySourceSSECustomerKey"] = CopySourceSSECustomerKey,
		["StorageClass"] = StorageClass,
		["GrantReadACP"] = GrantReadACP,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["ContentDisposition"] = ContentDisposition,
		["Metadata"] = Metadata,
		["SSECustomerKey"] = SSECustomerKey,
		["WebsiteRedirectLocation"] = WebsiteRedirectLocation,
		["CopySource"] = CopySource,
		["Expires"] = Expires,
		["Key"] = Key,
		["CacheControl"] = CacheControl,
		["Tagging"] = Tagging,
		["CopySourceSSECustomerAlgorithm"] = CopySourceSSECustomerAlgorithm,
		["Bucket"] = Bucket,
		["GrantRead"] = GrantRead,
		["GrantWriteACP"] = GrantWriteACP,
		["CopySourceSSECustomerKeyMD5"] = CopySourceSSECustomerKeyMD5,
		["ACL"] = ACL,
		["GrantFullControl"] = GrantFullControl,
		["CopySourceIfMatch"] = CopySourceIfMatch,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ContentType"] = ContentType,
		["ContentLanguage"] = ContentLanguage,
		["TaggingDirective"] = TaggingDirective,
		["MetadataDirective"] = MetadataDirective,
		["CopySourceIfNoneMatch"] = CopySourceIfNoneMatch,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertCopyObjectRequest(t)
	return t
end

local CreateMultipartUploadOutput_keys = { "SSECustomerAlgorithm" = true, "AbortRuleId" = true, "AbortDate" = true, "Bucket" = true, "RequestCharged" = true, "UploadId" = true, "Key" = true, "ServerSideEncryption" = true, "SSECustomerKeyMD5" = true, "SSEKMSKeyId" = true, nil }

function M.AssertCreateMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMultipartUploadOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["AbortRuleId"] then M.AssertAbortRuleId(struct["AbortRuleId"]) end
	if struct["AbortDate"] then M.AssertAbortDate(struct["AbortDate"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(CreateMultipartUploadOutput_keys[k], "CreateMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMultipartUploadOutput
--  
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param AbortRuleId [AbortRuleId] Id of the lifecycle rule that makes a multipart upload eligible for abort operation.
-- @param AbortDate [AbortDate] Date when multipart upload will become eligible for abort operation by lifecycle.
-- @param Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- @param RequestCharged [RequestCharged]  
-- @param UploadId [MultipartUploadId] ID for the initiated multipart upload.
-- @param Key [ObjectKey] Object key for which the multipart upload was initiated.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
function M.CreateMultipartUploadOutput(SSECustomerAlgorithm, AbortRuleId, AbortDate, Bucket, RequestCharged, UploadId, Key, ServerSideEncryption, SSECustomerKeyMD5, SSEKMSKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMultipartUploadOutput")
	local t = { 
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["AbortRuleId"] = AbortRuleId,
		["AbortDate"] = AbortDate,
		["Bucket"] = Bucket,
		["RequestCharged"] = RequestCharged,
		["UploadId"] = UploadId,
		["Key"] = Key,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["SSEKMSKeyId"] = SSEKMSKeyId,
	}
	M.AssertCreateMultipartUploadOutput(t)
	return t
end

local AnalyticsS3BucketDestination_keys = { "Prefix" = true, "BucketAccountId" = true, "Bucket" = true, "Format" = true, nil }

function M.AssertAnalyticsS3BucketDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsS3BucketDestination to be of type 'table'")
	assert(struct["Format"], "Expected key Format to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["BucketAccountId"] then M.AssertAccountId(struct["BucketAccountId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Format"] then M.AssertAnalyticsS3ExportFileFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(AnalyticsS3BucketDestination_keys[k], "AnalyticsS3BucketDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsS3BucketDestination
--  
-- @param Prefix [Prefix] The prefix to use when exporting data. The exported data begins with this prefix.
-- @param BucketAccountId [AccountId] The account ID that owns the destination bucket. If no account ID is provided, the owner will not be validated prior to exporting data.
-- @param Bucket [BucketName] The Amazon resource name (ARN) of the bucket to which data is exported.
-- @param Format [AnalyticsS3ExportFileFormat] The file format used when exporting data to Amazon S3.
-- Required parameter: Format
-- Required parameter: Bucket
function M.AnalyticsS3BucketDestination(Prefix, BucketAccountId, Bucket, Format, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnalyticsS3BucketDestination")
	local t = { 
		["Prefix"] = Prefix,
		["BucketAccountId"] = BucketAccountId,
		["Bucket"] = Bucket,
		["Format"] = Format,
	}
	M.AssertAnalyticsS3BucketDestination(t)
	return t
end

local GetBucketAnalyticsConfigurationRequest_keys = { "Bucket" = true, "Id" = true, nil }

function M.AssertGetBucketAnalyticsConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAnalyticsConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertAnalyticsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketAnalyticsConfigurationRequest_keys[k], "GetBucketAnalyticsConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAnalyticsConfigurationRequest
--  
-- @param Bucket [BucketName] The name of the bucket from which an analytics configuration is retrieved.
-- @param Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required parameter: Bucket
-- Required parameter: Id
function M.GetBucketAnalyticsConfigurationRequest(Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketAnalyticsConfigurationRequest")
	local t = { 
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertGetBucketAnalyticsConfigurationRequest(t)
	return t
end

local DeletedObject_keys = { "VersionId" = true, "DeleteMarkerVersionId" = true, "Key" = true, "DeleteMarker" = true, nil }

function M.AssertDeletedObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletedObject to be of type 'table'")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["DeleteMarkerVersionId"] then M.AssertDeleteMarkerVersionId(struct["DeleteMarkerVersionId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["DeleteMarker"] then M.AssertDeleteMarker(struct["DeleteMarker"]) end
	for k,_ in pairs(struct) do
		assert(DeletedObject_keys[k], "DeletedObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletedObject
--  
-- @param VersionId [ObjectVersionId]  
-- @param DeleteMarkerVersionId [DeleteMarkerVersionId]  
-- @param Key [ObjectKey]  
-- @param DeleteMarker [DeleteMarker]  
function M.DeletedObject(VersionId, DeleteMarkerVersionId, Key, DeleteMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletedObject")
	local t = { 
		["VersionId"] = VersionId,
		["DeleteMarkerVersionId"] = DeleteMarkerVersionId,
		["Key"] = Key,
		["DeleteMarker"] = DeleteMarker,
	}
	M.AssertDeletedObject(t)
	return t
end

local CompleteMultipartUploadRequest_keys = { "MultipartUpload" = true, "UploadId" = true, "Bucket" = true, "RequestPayer" = true, "Key" = true, nil }

function M.AssertCompleteMultipartUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteMultipartUploadRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["MultipartUpload"] then M.AssertCompletedMultipartUpload(struct["MultipartUpload"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(CompleteMultipartUploadRequest_keys[k], "CompleteMultipartUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteMultipartUploadRequest
--  
-- @param MultipartUpload [CompletedMultipartUpload]  
-- @param UploadId [MultipartUploadId]  
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
-- Required parameter: UploadId
function M.CompleteMultipartUploadRequest(MultipartUpload, UploadId, Bucket, RequestPayer, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteMultipartUploadRequest")
	local t = { 
		["MultipartUpload"] = MultipartUpload,
		["UploadId"] = UploadId,
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Key"] = Key,
	}
	M.AssertCompleteMultipartUploadRequest(t)
	return t
end

local ListPartsRequest_keys = { "RequestPayer" = true, "Bucket" = true, "UploadId" = true, "Key" = true, "MaxParts" = true, "PartNumberMarker" = true, nil }

function M.AssertListPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPartsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["UploadId"], "Expected key UploadId to exist in table")
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["UploadId"] then M.AssertMultipartUploadId(struct["UploadId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["MaxParts"] then M.AssertMaxParts(struct["MaxParts"]) end
	if struct["PartNumberMarker"] then M.AssertPartNumberMarker(struct["PartNumberMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListPartsRequest_keys[k], "ListPartsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPartsRequest
--  
-- @param RequestPayer [RequestPayer]  
-- @param Bucket [BucketName]  
-- @param UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose parts are being listed.
-- @param Key [ObjectKey]  
-- @param MaxParts [MaxParts] Sets the maximum number of parts to return.
-- @param PartNumberMarker [PartNumberMarker] Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.
-- Required parameter: Bucket
-- Required parameter: Key
-- Required parameter: UploadId
function M.ListPartsRequest(RequestPayer, Bucket, UploadId, Key, MaxParts, PartNumberMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPartsRequest")
	local t = { 
		["RequestPayer"] = RequestPayer,
		["Bucket"] = Bucket,
		["UploadId"] = UploadId,
		["Key"] = Key,
		["MaxParts"] = MaxParts,
		["PartNumberMarker"] = PartNumberMarker,
	}
	M.AssertListPartsRequest(t)
	return t
end

local InventoryS3BucketDestination_keys = { "Prefix" = true, "Format" = true, "Bucket" = true, "AccountId" = true, nil }

function M.AssertInventoryS3BucketDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryS3BucketDestination to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Format"], "Expected key Format to exist in table")
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Format"] then M.AssertInventoryFormat(struct["Format"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(InventoryS3BucketDestination_keys[k], "InventoryS3BucketDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryS3BucketDestination
--  
-- @param Prefix [Prefix] The prefix that is prepended to all inventory results.
-- @param Format [InventoryFormat] Specifies the output format of the inventory results.
-- @param Bucket [BucketName] The Amazon resource name (ARN) of the bucket where inventory results will be published.
-- @param AccountId [AccountId] The ID of the account that owns the destination bucket.
-- Required parameter: Bucket
-- Required parameter: Format
function M.InventoryS3BucketDestination(Prefix, Format, Bucket, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryS3BucketDestination")
	local t = { 
		["Prefix"] = Prefix,
		["Format"] = Format,
		["Bucket"] = Bucket,
		["AccountId"] = AccountId,
	}
	M.AssertInventoryS3BucketDestination(t)
	return t
end

local WebsiteConfiguration_keys = { "RedirectAllRequestsTo" = true, "IndexDocument" = true, "ErrorDocument" = true, "RoutingRules" = true, nil }

function M.AssertWebsiteConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebsiteConfiguration to be of type 'table'")
	if struct["RedirectAllRequestsTo"] then M.AssertRedirectAllRequestsTo(struct["RedirectAllRequestsTo"]) end
	if struct["IndexDocument"] then M.AssertIndexDocument(struct["IndexDocument"]) end
	if struct["ErrorDocument"] then M.AssertErrorDocument(struct["ErrorDocument"]) end
	if struct["RoutingRules"] then M.AssertRoutingRules(struct["RoutingRules"]) end
	for k,_ in pairs(struct) do
		assert(WebsiteConfiguration_keys[k], "WebsiteConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebsiteConfiguration
--  
-- @param RedirectAllRequestsTo [RedirectAllRequestsTo]  
-- @param IndexDocument [IndexDocument]  
-- @param ErrorDocument [ErrorDocument]  
-- @param RoutingRules [RoutingRules]  
function M.WebsiteConfiguration(RedirectAllRequestsTo, IndexDocument, ErrorDocument, RoutingRules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WebsiteConfiguration")
	local t = { 
		["RedirectAllRequestsTo"] = RedirectAllRequestsTo,
		["IndexDocument"] = IndexDocument,
		["ErrorDocument"] = ErrorDocument,
		["RoutingRules"] = RoutingRules,
	}
	M.AssertWebsiteConfiguration(t)
	return t
end

local UploadPartOutput_keys = { "SSECustomerAlgorithm" = true, "ServerSideEncryption" = true, "ETag" = true, "RequestCharged" = true, "SSECustomerKeyMD5" = true, "SSEKMSKeyId" = true, nil }

function M.AssertUploadPartOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadPartOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	for k,_ in pairs(struct) do
		assert(UploadPartOutput_keys[k], "UploadPartOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadPartOutput
--  
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param ETag [ETag] Entity tag for the uploaded object.
-- @param RequestCharged [RequestCharged]  
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
function M.UploadPartOutput(SSECustomerAlgorithm, ServerSideEncryption, ETag, RequestCharged, SSECustomerKeyMD5, SSEKMSKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadPartOutput")
	local t = { 
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ServerSideEncryption"] = ServerSideEncryption,
		["ETag"] = ETag,
		["RequestCharged"] = RequestCharged,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
		["SSEKMSKeyId"] = SSEKMSKeyId,
	}
	M.AssertUploadPartOutput(t)
	return t
end

local InventorySchedule_keys = { "Frequency" = true, nil }

function M.AssertInventorySchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventorySchedule to be of type 'table'")
	assert(struct["Frequency"], "Expected key Frequency to exist in table")
	if struct["Frequency"] then M.AssertInventoryFrequency(struct["Frequency"]) end
	for k,_ in pairs(struct) do
		assert(InventorySchedule_keys[k], "InventorySchedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventorySchedule
--  
-- @param Frequency [InventoryFrequency] Specifies how frequently inventory results are produced.
-- Required parameter: Frequency
function M.InventorySchedule(Frequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventorySchedule")
	local t = { 
		["Frequency"] = Frequency,
	}
	M.AssertInventorySchedule(t)
	return t
end

local DeleteObjectsOutput_keys = { "Deleted" = true, "Errors" = true, "RequestCharged" = true, nil }

function M.AssertDeleteObjectsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectsOutput to be of type 'table'")
	if struct["Deleted"] then M.AssertDeletedObjects(struct["Deleted"]) end
	if struct["Errors"] then M.AssertErrors(struct["Errors"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectsOutput_keys[k], "DeleteObjectsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectsOutput
--  
-- @param Deleted [DeletedObjects]  
-- @param Errors [Errors]  
-- @param RequestCharged [RequestCharged]  
function M.DeleteObjectsOutput(Deleted, Errors, RequestCharged, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectsOutput")
	local t = { 
		["Deleted"] = Deleted,
		["Errors"] = Errors,
		["RequestCharged"] = RequestCharged,
	}
	M.AssertDeleteObjectsOutput(t)
	return t
end

local StorageClassAnalysisDataExport_keys = { "Destination" = true, "OutputSchemaVersion" = true, nil }

function M.AssertStorageClassAnalysisDataExport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageClassAnalysisDataExport to be of type 'table'")
	assert(struct["OutputSchemaVersion"], "Expected key OutputSchemaVersion to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["Destination"] then M.AssertAnalyticsExportDestination(struct["Destination"]) end
	if struct["OutputSchemaVersion"] then M.AssertStorageClassAnalysisSchemaVersion(struct["OutputSchemaVersion"]) end
	for k,_ in pairs(struct) do
		assert(StorageClassAnalysisDataExport_keys[k], "StorageClassAnalysisDataExport contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageClassAnalysisDataExport
--  
-- @param Destination [AnalyticsExportDestination] The place to store the data for an analysis.
-- @param OutputSchemaVersion [StorageClassAnalysisSchemaVersion] The version of the output schema to use when exporting data. Must be V_1.
-- Required parameter: OutputSchemaVersion
-- Required parameter: Destination
function M.StorageClassAnalysisDataExport(Destination, OutputSchemaVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageClassAnalysisDataExport")
	local t = { 
		["Destination"] = Destination,
		["OutputSchemaVersion"] = OutputSchemaVersion,
	}
	M.AssertStorageClassAnalysisDataExport(t)
	return t
end

local RoutingRule_keys = { "Redirect" = true, "Condition" = true, nil }

function M.AssertRoutingRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoutingRule to be of type 'table'")
	assert(struct["Redirect"], "Expected key Redirect to exist in table")
	if struct["Redirect"] then M.AssertRedirect(struct["Redirect"]) end
	if struct["Condition"] then M.AssertCondition(struct["Condition"]) end
	for k,_ in pairs(struct) do
		assert(RoutingRule_keys[k], "RoutingRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoutingRule
--  
-- @param Redirect [Redirect] Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can can specify a different error code to return.
-- @param Condition [Condition] A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the /docs folder, redirect to the /documents folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
-- Required parameter: Redirect
function M.RoutingRule(Redirect, Condition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoutingRule")
	local t = { 
		["Redirect"] = Redirect,
		["Condition"] = Condition,
	}
	M.AssertRoutingRule(t)
	return t
end

local PutObjectRequest_keys = { "RequestPayer" = true, "ContentEncoding" = true, "StorageClass" = true, "GrantReadACP" = true, "ServerSideEncryption" = true, "SSEKMSKeyId" = true, "ContentDisposition" = true, "Metadata" = true, "Body" = true, "SSECustomerKey" = true, "WebsiteRedirectLocation" = true, "Expires" = true, "Key" = true, "CacheControl" = true, "Tagging" = true, "ContentLength" = true, "Bucket" = true, "GrantRead" = true, "GrantWriteACP" = true, "ACL" = true, "GrantFullControl" = true, "SSECustomerAlgorithm" = true, "ContentType" = true, "ContentLanguage" = true, "ContentMD5" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertPutObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ContentEncoding"] then M.AssertContentEncoding(struct["ContentEncoding"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["GrantReadACP"] then M.AssertGrantReadACP(struct["GrantReadACP"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["ContentDisposition"] then M.AssertContentDisposition(struct["ContentDisposition"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	if struct["Body"] then M.AssertBody(struct["Body"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["WebsiteRedirectLocation"] then M.AssertWebsiteRedirectLocation(struct["WebsiteRedirectLocation"]) end
	if struct["Expires"] then M.AssertExpires(struct["Expires"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["CacheControl"] then M.AssertCacheControl(struct["CacheControl"]) end
	if struct["Tagging"] then M.AssertTaggingHeader(struct["Tagging"]) end
	if struct["ContentLength"] then M.AssertContentLength(struct["ContentLength"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["GrantRead"] then M.AssertGrantRead(struct["GrantRead"]) end
	if struct["GrantWriteACP"] then M.AssertGrantWriteACP(struct["GrantWriteACP"]) end
	if struct["ACL"] then M.AssertObjectCannedACL(struct["ACL"]) end
	if struct["GrantFullControl"] then M.AssertGrantFullControl(struct["GrantFullControl"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ContentType"] then M.AssertContentType(struct["ContentType"]) end
	if struct["ContentLanguage"] then M.AssertContentLanguage(struct["ContentLanguage"]) end
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(PutObjectRequest_keys[k], "PutObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectRequest
--  
-- @param RequestPayer [RequestPayer]  
-- @param ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- @param StorageClass [StorageClass] The type of storage to use for the object. Defaults to 'STANDARD'.
-- @param GrantReadACP [GrantReadACP] Allows grantee to read the object ACL.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param SSEKMSKeyId [SSEKMSKeyId] Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
-- @param ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- @param Metadata [Metadata] A map of metadata to store with the object in S3.
-- @param Body [Body] Object data.
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- @param WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- @param Expires [Expires] The date and time at which the object is no longer cacheable.
-- @param Key [ObjectKey] Object key for which the PUT operation was initiated.
-- @param CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- @param Tagging [TaggingHeader] The tag-set for the object. The tag-set must be encoded as URL Query parameters
-- @param ContentLength [ContentLength] Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.
-- @param Bucket [BucketName] Name of the bucket to which the PUT operation was initiated.
-- @param GrantRead [GrantRead] Allows grantee to read the object data and its metadata.
-- @param GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable object.
-- @param ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- @param GrantFullControl [GrantFullControl] Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param ContentType [ContentType] A standard MIME type describing the format of the object data.
-- @param ContentLanguage [ContentLanguage] The language the content is in.
-- @param ContentMD5 [ContentMD5] The base64-encoded 128-bit MD5 digest of the part data.
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required parameter: Bucket
-- Required parameter: Key
function M.PutObjectRequest(RequestPayer, ContentEncoding, StorageClass, GrantReadACP, ServerSideEncryption, SSEKMSKeyId, ContentDisposition, Metadata, Body, SSECustomerKey, WebsiteRedirectLocation, Expires, Key, CacheControl, Tagging, ContentLength, Bucket, GrantRead, GrantWriteACP, ACL, GrantFullControl, SSECustomerAlgorithm, ContentType, ContentLanguage, ContentMD5, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutObjectRequest")
	local t = { 
		["RequestPayer"] = RequestPayer,
		["ContentEncoding"] = ContentEncoding,
		["StorageClass"] = StorageClass,
		["GrantReadACP"] = GrantReadACP,
		["ServerSideEncryption"] = ServerSideEncryption,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["ContentDisposition"] = ContentDisposition,
		["Metadata"] = Metadata,
		["Body"] = Body,
		["SSECustomerKey"] = SSECustomerKey,
		["WebsiteRedirectLocation"] = WebsiteRedirectLocation,
		["Expires"] = Expires,
		["Key"] = Key,
		["CacheControl"] = CacheControl,
		["Tagging"] = Tagging,
		["ContentLength"] = ContentLength,
		["Bucket"] = Bucket,
		["GrantRead"] = GrantRead,
		["GrantWriteACP"] = GrantWriteACP,
		["ACL"] = ACL,
		["GrantFullControl"] = GrantFullControl,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ContentType"] = ContentType,
		["ContentLanguage"] = ContentLanguage,
		["ContentMD5"] = ContentMD5,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertPutObjectRequest(t)
	return t
end

local ObjectVersion_keys = { "LastModified" = true, "VersionId" = true, "ETag" = true, "StorageClass" = true, "Key" = true, "Owner" = true, "IsLatest" = true, "Size" = true, nil }

function M.AssertObjectVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectVersion to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	if struct["StorageClass"] then M.AssertObjectVersionStorageClass(struct["StorageClass"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["IsLatest"] then M.AssertIsLatest(struct["IsLatest"]) end
	if struct["Size"] then M.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(ObjectVersion_keys[k], "ObjectVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectVersion
--  
-- @param LastModified [LastModified] Date and time the object was last modified.
-- @param VersionId [ObjectVersionId] Version ID of an object.
-- @param ETag [ETag]  
-- @param StorageClass [ObjectVersionStorageClass] The class of storage used to store the object.
-- @param Key [ObjectKey] The object key.
-- @param Owner [Owner]  
-- @param IsLatest [IsLatest] Specifies whether the object is (true) or is not (false) the latest version of an object.
-- @param Size [Size] Size in bytes of the object.
function M.ObjectVersion(LastModified, VersionId, ETag, StorageClass, Key, Owner, IsLatest, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectVersion")
	local t = { 
		["LastModified"] = LastModified,
		["VersionId"] = VersionId,
		["ETag"] = ETag,
		["StorageClass"] = StorageClass,
		["Key"] = Key,
		["Owner"] = Owner,
		["IsLatest"] = IsLatest,
		["Size"] = Size,
	}
	M.AssertObjectVersion(t)
	return t
end

local ListBucketInventoryConfigurationsOutput_keys = { "NextContinuationToken" = true, "InventoryConfigurationList" = true, "ContinuationToken" = true, "IsTruncated" = true, nil }

function M.AssertListBucketInventoryConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketInventoryConfigurationsOutput to be of type 'table'")
	if struct["NextContinuationToken"] then M.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["InventoryConfigurationList"] then M.AssertInventoryConfigurationList(struct["InventoryConfigurationList"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketInventoryConfigurationsOutput_keys[k], "ListBucketInventoryConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketInventoryConfigurationsOutput
--  
-- @param NextContinuationToken [NextToken] The marker used to continue this inventory configuration listing. Use the NextContinuationToken from this response to continue the listing in a subsequent request. The continuation token is an opaque value that Amazon S3 understands.
-- @param InventoryConfigurationList [InventoryConfigurationList] The list of inventory configurations for a bucket.
-- @param ContinuationToken [Token] If sent in the request, the marker that is used as a starting point for this inventory configuration list response.
-- @param IsTruncated [IsTruncated] Indicates whether the returned list of inventory configurations is truncated in this response. A value of true indicates that the list is truncated.
function M.ListBucketInventoryConfigurationsOutput(NextContinuationToken, InventoryConfigurationList, ContinuationToken, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketInventoryConfigurationsOutput")
	local t = { 
		["NextContinuationToken"] = NextContinuationToken,
		["InventoryConfigurationList"] = InventoryConfigurationList,
		["ContinuationToken"] = ContinuationToken,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListBucketInventoryConfigurationsOutput(t)
	return t
end

local GetObjectTaggingOutput_keys = { "VersionId" = true, "TagSet" = true, nil }

function M.AssertGetObjectTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectTaggingOutput to be of type 'table'")
	assert(struct["TagSet"], "Expected key TagSet to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["TagSet"] then M.AssertTagSet(struct["TagSet"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectTaggingOutput_keys[k], "GetObjectTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectTaggingOutput
--  
-- @param VersionId [ObjectVersionId]  
-- @param TagSet [TagSet]  
-- Required parameter: TagSet
function M.GetObjectTaggingOutput(VersionId, TagSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectTaggingOutput")
	local t = { 
		["VersionId"] = VersionId,
		["TagSet"] = TagSet,
	}
	M.AssertGetObjectTaggingOutput(t)
	return t
end

local RestoreObjectOutput_keys = { "RequestCharged" = true, nil }

function M.AssertRestoreObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreObjectOutput to be of type 'table'")
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(RestoreObjectOutput_keys[k], "RestoreObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreObjectOutput
--  
-- @param RequestCharged [RequestCharged]  
function M.RestoreObjectOutput(RequestCharged, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreObjectOutput")
	local t = { 
		["RequestCharged"] = RequestCharged,
	}
	M.AssertRestoreObjectOutput(t)
	return t
end

local GetBucketLoggingRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketLoggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketLoggingRequest_keys[k], "GetBucketLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketLoggingRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketLoggingRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketLoggingRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketLoggingRequest(t)
	return t
end

local TopicConfiguration_keys = { "Filter" = true, "Id" = true, "TopicArn" = true, "Events" = true, nil }

function M.AssertTopicConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicConfiguration to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["Filter"] then M.AssertNotificationConfigurationFilter(struct["Filter"]) end
	if struct["Id"] then M.AssertNotificationId(struct["Id"]) end
	if struct["TopicArn"] then M.AssertTopicArn(struct["TopicArn"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(TopicConfiguration_keys[k], "TopicConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicConfiguration
-- Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.
-- @param Filter [NotificationConfigurationFilter] Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.
-- @param Id [NotificationId] Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.
-- @param TopicArn [TopicArn] Amazon SNS topic ARN to which Amazon S3 will publish a message when it detects events of specified type.
-- @param Events [EventList] Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.
-- Required parameter: TopicArn
-- Required parameter: Events
function M.TopicConfiguration(Filter, Id, TopicArn, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicConfiguration")
	local t = { 
		["Filter"] = Filter,
		["Id"] = Id,
		["TopicArn"] = TopicArn,
		["Events"] = Events,
	}
	M.AssertTopicConfiguration(t)
	return t
end

local PutBucketTaggingRequest_keys = { "ContentMD5" = true, "Bucket" = true, "Tagging" = true, nil }

function M.AssertPutBucketTaggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketTaggingRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Tagging"], "Expected key Tagging to exist in table")
	if struct["ContentMD5"] then M.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Tagging"] then M.AssertTagging(struct["Tagging"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketTaggingRequest_keys[k], "PutBucketTaggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketTaggingRequest
--  
-- @param ContentMD5 [ContentMD5]  
-- @param Bucket [BucketName]  
-- @param Tagging [Tagging]  
-- Required parameter: Bucket
-- Required parameter: Tagging
function M.PutBucketTaggingRequest(ContentMD5, Bucket, Tagging, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketTaggingRequest")
	local t = { 
		["ContentMD5"] = ContentMD5,
		["Bucket"] = Bucket,
		["Tagging"] = Tagging,
	}
	M.AssertPutBucketTaggingRequest(t)
	return t
end

local Bucket_keys = { "CreationDate" = true, "Name" = true, nil }

function M.AssertBucket(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bucket to be of type 'table'")
	if struct["CreationDate"] then M.AssertCreationDate(struct["CreationDate"]) end
	if struct["Name"] then M.AssertBucketName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Bucket_keys[k], "Bucket contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Bucket
--  
-- @param CreationDate [CreationDate] Date the bucket was created.
-- @param Name [BucketName] The name of the bucket.
function M.Bucket(CreationDate, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Bucket")
	local t = { 
		["CreationDate"] = CreationDate,
		["Name"] = Name,
	}
	M.AssertBucket(t)
	return t
end

local NoSuchUpload_keys = { nil }

function M.AssertNoSuchUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchUpload to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchUpload_keys[k], "NoSuchUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchUpload
-- The specified multipart upload does not exist.
function M.NoSuchUpload(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchUpload")
	local t = { 
	}
	M.AssertNoSuchUpload(t)
	return t
end

local LifecycleExpiration_keys = { "Date" = true, "ExpiredObjectDeleteMarker" = true, "Days" = true, nil }

function M.AssertLifecycleExpiration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecycleExpiration to be of type 'table'")
	if struct["Date"] then M.AssertDate(struct["Date"]) end
	if struct["ExpiredObjectDeleteMarker"] then M.AssertExpiredObjectDeleteMarker(struct["ExpiredObjectDeleteMarker"]) end
	if struct["Days"] then M.AssertDays(struct["Days"]) end
	for k,_ in pairs(struct) do
		assert(LifecycleExpiration_keys[k], "LifecycleExpiration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecycleExpiration
--  
-- @param Date [Date] Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
-- @param ExpiredObjectDeleteMarker [ExpiredObjectDeleteMarker] Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
-- @param Days [Days] Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
function M.LifecycleExpiration(Date, ExpiredObjectDeleteMarker, Days, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LifecycleExpiration")
	local t = { 
		["Date"] = Date,
		["ExpiredObjectDeleteMarker"] = ExpiredObjectDeleteMarker,
		["Days"] = Days,
	}
	M.AssertLifecycleExpiration(t)
	return t
end

local Destination_keys = { "Bucket" = true, "StorageClass" = true, nil }

function M.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(Destination_keys[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
--  
-- @param Bucket [BucketName] Amazon resource name (ARN) of the bucket where you want Amazon S3 to store replicas of the object identified by the rule.
-- @param StorageClass [StorageClass] The class of storage used to store the object.
-- Required parameter: Bucket
function M.Destination(Bucket, StorageClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Destination")
	local t = { 
		["Bucket"] = Bucket,
		["StorageClass"] = StorageClass,
	}
	M.AssertDestination(t)
	return t
end

local NoSuchBucket_keys = { nil }

function M.AssertNoSuchBucket(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchBucket to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchBucket_keys[k], "NoSuchBucket contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchBucket
-- The specified bucket does not exist.
function M.NoSuchBucket(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchBucket")
	local t = { 
	}
	M.AssertNoSuchBucket(t)
	return t
end

local GetBucketTaggingOutput_keys = { "TagSet" = true, nil }

function M.AssertGetBucketTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketTaggingOutput to be of type 'table'")
	assert(struct["TagSet"], "Expected key TagSet to exist in table")
	if struct["TagSet"] then M.AssertTagSet(struct["TagSet"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketTaggingOutput_keys[k], "GetBucketTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketTaggingOutput
--  
-- @param TagSet [TagSet]  
-- Required parameter: TagSet
function M.GetBucketTaggingOutput(TagSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketTaggingOutput")
	local t = { 
		["TagSet"] = TagSet,
	}
	M.AssertGetBucketTaggingOutput(t)
	return t
end

local MetricsFilter_keys = { "And" = true, "Prefix" = true, "Tag" = true, nil }

function M.AssertMetricsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricsFilter to be of type 'table'")
	if struct["And"] then M.AssertMetricsAndOperator(struct["And"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["Tag"] then M.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(MetricsFilter_keys[k], "MetricsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricsFilter
--  
-- @param And [MetricsAndOperator] A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
-- @param Prefix [Prefix] The prefix used when evaluating a metrics filter.
-- @param Tag [Tag] The tag used when evaluating a metrics filter.
function M.MetricsFilter(And, Prefix, Tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricsFilter")
	local t = { 
		["And"] = And,
		["Prefix"] = Prefix,
		["Tag"] = Tag,
	}
	M.AssertMetricsFilter(t)
	return t
end

local ReplicationConfiguration_keys = { "Rules" = true, "Role" = true, nil }

function M.AssertReplicationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationConfiguration to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then M.AssertReplicationRules(struct["Rules"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationConfiguration_keys[k], "ReplicationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationConfiguration
-- Container for replication rules. You can add as many as 1,000 rules. Total replication configuration size can be up to 2 MB.
-- @param Rules [ReplicationRules] Container for information about a particular replication rule. Replication configuration must have at least one rule and can contain up to 1,000 rules.
-- @param Role [Role] Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume when replicating the objects.
-- Required parameter: Role
-- Required parameter: Rules
function M.ReplicationConfiguration(Rules, Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationConfiguration")
	local t = { 
		["Rules"] = Rules,
		["Role"] = Role,
	}
	M.AssertReplicationConfiguration(t)
	return t
end

local ListMultipartUploadsRequest_keys = { "UploadIdMarker" = true, "Bucket" = true, "Delimiter" = true, "Prefix" = true, "KeyMarker" = true, "MaxUploads" = true, "EncodingType" = true, nil }

function M.AssertListMultipartUploadsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMultipartUploadsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["UploadIdMarker"] then M.AssertUploadIdMarker(struct["UploadIdMarker"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["KeyMarker"] then M.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["MaxUploads"] then M.AssertMaxUploads(struct["MaxUploads"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	for k,_ in pairs(struct) do
		assert(ListMultipartUploadsRequest_keys[k], "ListMultipartUploadsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMultipartUploadsRequest
--  
-- @param UploadIdMarker [UploadIdMarker] Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored.
-- @param Bucket [BucketName]  
-- @param Delimiter [Delimiter] Character you use to group keys.
-- @param Prefix [Prefix] Lists in-progress uploads only for those keys that begin with the specified prefix.
-- @param KeyMarker [KeyMarker] Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin.
-- @param MaxUploads [MaxUploads] Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.
-- @param EncodingType [EncodingType]  
-- Required parameter: Bucket
function M.ListMultipartUploadsRequest(UploadIdMarker, Bucket, Delimiter, Prefix, KeyMarker, MaxUploads, EncodingType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMultipartUploadsRequest")
	local t = { 
		["UploadIdMarker"] = UploadIdMarker,
		["Bucket"] = Bucket,
		["Delimiter"] = Delimiter,
		["Prefix"] = Prefix,
		["KeyMarker"] = KeyMarker,
		["MaxUploads"] = MaxUploads,
		["EncodingType"] = EncodingType,
	}
	M.AssertListMultipartUploadsRequest(t)
	return t
end

local GetBucketPolicyRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketPolicyRequest_keys[k], "GetBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketPolicyRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketPolicyRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketPolicyRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketPolicyRequest(t)
	return t
end

local DeleteBucketWebsiteRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketWebsiteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketWebsiteRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketWebsiteRequest_keys[k], "DeleteBucketWebsiteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketWebsiteRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketWebsiteRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketWebsiteRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketWebsiteRequest(t)
	return t
end

local GetObjectAclRequest_keys = { "VersionId" = true, "Bucket" = true, "RequestPayer" = true, "Key" = true, nil }

function M.AssertGetObjectAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectAclRequest_keys[k], "GetObjectAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectAclRequest
--  
-- @param VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- @param Bucket [BucketName]  
-- @param RequestPayer [RequestPayer]  
-- @param Key [ObjectKey]  
-- Required parameter: Bucket
-- Required parameter: Key
function M.GetObjectAclRequest(VersionId, Bucket, RequestPayer, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectAclRequest")
	local t = { 
		["VersionId"] = VersionId,
		["Bucket"] = Bucket,
		["RequestPayer"] = RequestPayer,
		["Key"] = Key,
	}
	M.AssertGetObjectAclRequest(t)
	return t
end

local AbortMultipartUploadOutput_keys = { "RequestCharged" = true, nil }

function M.AssertAbortMultipartUploadOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortMultipartUploadOutput to be of type 'table'")
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(AbortMultipartUploadOutput_keys[k], "AbortMultipartUploadOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortMultipartUploadOutput
--  
-- @param RequestCharged [RequestCharged]  
function M.AbortMultipartUploadOutput(RequestCharged, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortMultipartUploadOutput")
	local t = { 
		["RequestCharged"] = RequestCharged,
	}
	M.AssertAbortMultipartUploadOutput(t)
	return t
end

local PutObjectTaggingOutput_keys = { "VersionId" = true, nil }

function M.AssertPutObjectTaggingOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectTaggingOutput to be of type 'table'")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	for k,_ in pairs(struct) do
		assert(PutObjectTaggingOutput_keys[k], "PutObjectTaggingOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectTaggingOutput
--  
-- @param VersionId [ObjectVersionId]  
function M.PutObjectTaggingOutput(VersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutObjectTaggingOutput")
	local t = { 
		["VersionId"] = VersionId,
	}
	M.AssertPutObjectTaggingOutput(t)
	return t
end

local QueueConfiguration_keys = { "Filter" = true, "Id" = true, "QueueArn" = true, "Events" = true, nil }

function M.AssertQueueConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueConfiguration to be of type 'table'")
	assert(struct["QueueArn"], "Expected key QueueArn to exist in table")
	assert(struct["Events"], "Expected key Events to exist in table")
	if struct["Filter"] then M.AssertNotificationConfigurationFilter(struct["Filter"]) end
	if struct["Id"] then M.AssertNotificationId(struct["Id"]) end
	if struct["QueueArn"] then M.AssertQueueArn(struct["QueueArn"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(QueueConfiguration_keys[k], "QueueConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueConfiguration
-- Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
-- @param Filter [NotificationConfigurationFilter] Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
-- @param Id [NotificationId] Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
-- @param QueueArn [QueueArn] Amazon SQS queue ARN to which Amazon S3 will publish a message when it detects events of specified type.
-- @param Events [EventList] Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
-- Required parameter: QueueArn
-- Required parameter: Events
function M.QueueConfiguration(Filter, Id, QueueArn, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueConfiguration")
	local t = { 
		["Filter"] = Filter,
		["Id"] = Id,
		["QueueArn"] = QueueArn,
		["Events"] = Events,
	}
	M.AssertQueueConfiguration(t)
	return t
end

local ListObjectsV2Output_keys = { "Name" = true, "StartAfter" = true, "Prefix" = true, "ContinuationToken" = true, "MaxKeys" = true, "Delimiter" = true, "KeyCount" = true, "EncodingType" = true, "NextContinuationToken" = true, "IsTruncated" = true, "Contents" = true, "CommonPrefixes" = true, nil }

function M.AssertListObjectsV2Output(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsV2Output to be of type 'table'")
	if struct["Name"] then M.AssertBucketName(struct["Name"]) end
	if struct["StartAfter"] then M.AssertStartAfter(struct["StartAfter"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	if struct["MaxKeys"] then M.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["KeyCount"] then M.AssertKeyCount(struct["KeyCount"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	if struct["NextContinuationToken"] then M.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["Contents"] then M.AssertObjectList(struct["Contents"]) end
	if struct["CommonPrefixes"] then M.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectsV2Output_keys[k], "ListObjectsV2Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsV2Output
--  
-- @param Name [BucketName] Name of the bucket to list.
-- @param StartAfter [StartAfter] StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket
-- @param Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- @param ContinuationToken [Token] ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key
-- @param MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- @param Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- @param KeyCount [KeyCount] KeyCount is the number of keys returned with this request. KeyCount will always be less than equals to MaxKeys field. Say you ask for 50 keys, your result will include less than equals 50 keys
-- @param EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- @param NextContinuationToken [NextToken] NextContinuationToken is sent when isTruncated is true which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this NextContinuationToken. NextContinuationToken is obfuscated and is not a real key
-- @param IsTruncated [IsTruncated] A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria.
-- @param Contents [ObjectList] Metadata about each object returned.
-- @param CommonPrefixes [CommonPrefixList] CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by delimiter
function M.ListObjectsV2Output(Name, StartAfter, Prefix, ContinuationToken, MaxKeys, Delimiter, KeyCount, EncodingType, NextContinuationToken, IsTruncated, Contents, CommonPrefixes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectsV2Output")
	local t = { 
		["Name"] = Name,
		["StartAfter"] = StartAfter,
		["Prefix"] = Prefix,
		["ContinuationToken"] = ContinuationToken,
		["MaxKeys"] = MaxKeys,
		["Delimiter"] = Delimiter,
		["KeyCount"] = KeyCount,
		["EncodingType"] = EncodingType,
		["NextContinuationToken"] = NextContinuationToken,
		["IsTruncated"] = IsTruncated,
		["Contents"] = Contents,
		["CommonPrefixes"] = CommonPrefixes,
	}
	M.AssertListObjectsV2Output(t)
	return t
end

local DeleteBucketCorsRequest_keys = { "Bucket" = true, nil }

function M.AssertDeleteBucketCorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBucketCorsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBucketCorsRequest_keys[k], "DeleteBucketCorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBucketCorsRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.DeleteBucketCorsRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBucketCorsRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertDeleteBucketCorsRequest(t)
	return t
end

local CORSRule_keys = { "AllowedHeaders" = true, "ExposeHeaders" = true, "AllowedMethods" = true, "MaxAgeSeconds" = true, "AllowedOrigins" = true, nil }

function M.AssertCORSRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CORSRule to be of type 'table'")
	assert(struct["AllowedMethods"], "Expected key AllowedMethods to exist in table")
	assert(struct["AllowedOrigins"], "Expected key AllowedOrigins to exist in table")
	if struct["AllowedHeaders"] then M.AssertAllowedHeaders(struct["AllowedHeaders"]) end
	if struct["ExposeHeaders"] then M.AssertExposeHeaders(struct["ExposeHeaders"]) end
	if struct["AllowedMethods"] then M.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MaxAgeSeconds"] then M.AssertMaxAgeSeconds(struct["MaxAgeSeconds"]) end
	if struct["AllowedOrigins"] then M.AssertAllowedOrigins(struct["AllowedOrigins"]) end
	for k,_ in pairs(struct) do
		assert(CORSRule_keys[k], "CORSRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CORSRule
--  
-- @param AllowedHeaders [AllowedHeaders] Specifies which headers are allowed in a pre-flight OPTIONS request.
-- @param ExposeHeaders [ExposeHeaders] One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).
-- @param AllowedMethods [AllowedMethods] Identifies HTTP methods that the domain/origin specified in the rule is allowed to execute.
-- @param MaxAgeSeconds [MaxAgeSeconds] The time in seconds that your browser is to cache the preflight response for the specified resource.
-- @param AllowedOrigins [AllowedOrigins] One or more origins you want customers to be able to access the bucket from.
-- Required parameter: AllowedMethods
-- Required parameter: AllowedOrigins
function M.CORSRule(AllowedHeaders, ExposeHeaders, AllowedMethods, MaxAgeSeconds, AllowedOrigins, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CORSRule")
	local t = { 
		["AllowedHeaders"] = AllowedHeaders,
		["ExposeHeaders"] = ExposeHeaders,
		["AllowedMethods"] = AllowedMethods,
		["MaxAgeSeconds"] = MaxAgeSeconds,
		["AllowedOrigins"] = AllowedOrigins,
	}
	M.AssertCORSRule(t)
	return t
end

local GetBucketRequestPaymentRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketRequestPaymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketRequestPaymentRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketRequestPaymentRequest_keys[k], "GetBucketRequestPaymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketRequestPaymentRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketRequestPaymentRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketRequestPaymentRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketRequestPaymentRequest(t)
	return t
end

local GetBucketReplicationOutput_keys = { "ReplicationConfiguration" = true, nil }

function M.AssertGetBucketReplicationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketReplicationOutput to be of type 'table'")
	if struct["ReplicationConfiguration"] then M.AssertReplicationConfiguration(struct["ReplicationConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketReplicationOutput_keys[k], "GetBucketReplicationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketReplicationOutput
--  
-- @param ReplicationConfiguration [ReplicationConfiguration]  
function M.GetBucketReplicationOutput(ReplicationConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketReplicationOutput")
	local t = { 
		["ReplicationConfiguration"] = ReplicationConfiguration,
	}
	M.AssertGetBucketReplicationOutput(t)
	return t
end

local GetBucketAclOutput_keys = { "Owner" = true, "Grants" = true, nil }

function M.AssertGetBucketAclOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAclOutput to be of type 'table'")
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["Grants"] then M.AssertGrants(struct["Grants"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketAclOutput_keys[k], "GetBucketAclOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAclOutput
--  
-- @param Owner [Owner]  
-- @param Grants [Grants] A list of grants.
function M.GetBucketAclOutput(Owner, Grants, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketAclOutput")
	local t = { 
		["Owner"] = Owner,
		["Grants"] = Grants,
	}
	M.AssertGetBucketAclOutput(t)
	return t
end

local ListBucketAnalyticsConfigurationsOutput_keys = { "AnalyticsConfigurationList" = true, "NextContinuationToken" = true, "IsTruncated" = true, "ContinuationToken" = true, nil }

function M.AssertListBucketAnalyticsConfigurationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketAnalyticsConfigurationsOutput to be of type 'table'")
	if struct["AnalyticsConfigurationList"] then M.AssertAnalyticsConfigurationList(struct["AnalyticsConfigurationList"]) end
	if struct["NextContinuationToken"] then M.AssertNextToken(struct["NextContinuationToken"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketAnalyticsConfigurationsOutput_keys[k], "ListBucketAnalyticsConfigurationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketAnalyticsConfigurationsOutput
--  
-- @param AnalyticsConfigurationList [AnalyticsConfigurationList] The list of analytics configurations for a bucket.
-- @param NextContinuationToken [NextToken] NextContinuationToken is sent when isTruncated is true, which indicates that there are more analytics configurations to list. The next request must include this NextContinuationToken. The token is obfuscated and is not a usable value.
-- @param IsTruncated [IsTruncated] Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
-- @param ContinuationToken [Token] The ContinuationToken that represents where this request began.
function M.ListBucketAnalyticsConfigurationsOutput(AnalyticsConfigurationList, NextContinuationToken, IsTruncated, ContinuationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketAnalyticsConfigurationsOutput")
	local t = { 
		["AnalyticsConfigurationList"] = AnalyticsConfigurationList,
		["NextContinuationToken"] = NextContinuationToken,
		["IsTruncated"] = IsTruncated,
		["ContinuationToken"] = ContinuationToken,
	}
	M.AssertListBucketAnalyticsConfigurationsOutput(t)
	return t
end

local ListBucketsOutput_keys = { "Owner" = true, "Buckets" = true, nil }

function M.AssertListBucketsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketsOutput to be of type 'table'")
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["Buckets"] then M.AssertBuckets(struct["Buckets"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketsOutput_keys[k], "ListBucketsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketsOutput
--  
-- @param Owner [Owner]  
-- @param Buckets [Buckets]  
function M.ListBucketsOutput(Owner, Buckets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketsOutput")
	local t = { 
		["Owner"] = Owner,
		["Buckets"] = Buckets,
	}
	M.AssertListBucketsOutput(t)
	return t
end

local NotificationConfiguration_keys = { "QueueConfigurations" = true, "LambdaFunctionConfigurations" = true, "TopicConfigurations" = true, nil }

function M.AssertNotificationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfiguration to be of type 'table'")
	if struct["QueueConfigurations"] then M.AssertQueueConfigurationList(struct["QueueConfigurations"]) end
	if struct["LambdaFunctionConfigurations"] then M.AssertLambdaFunctionConfigurationList(struct["LambdaFunctionConfigurations"]) end
	if struct["TopicConfigurations"] then M.AssertTopicConfigurationList(struct["TopicConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(NotificationConfiguration_keys[k], "NotificationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfiguration
-- Container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off on the bucket.
-- @param QueueConfigurations [QueueConfigurationList] Container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off on the bucket.
-- @param LambdaFunctionConfigurations [LambdaFunctionConfigurationList] Container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off on the bucket.
-- @param TopicConfigurations [TopicConfigurationList] Container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off on the bucket.
function M.NotificationConfiguration(QueueConfigurations, LambdaFunctionConfigurations, TopicConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfiguration")
	local t = { 
		["QueueConfigurations"] = QueueConfigurations,
		["LambdaFunctionConfigurations"] = LambdaFunctionConfigurations,
		["TopicConfigurations"] = TopicConfigurations,
	}
	M.AssertNotificationConfiguration(t)
	return t
end

local ListObjectsV2Request_keys = { "RequestPayer" = true, "StartAfter" = true, "Bucket" = true, "Prefix" = true, "FetchOwner" = true, "MaxKeys" = true, "Delimiter" = true, "EncodingType" = true, "ContinuationToken" = true, nil }

function M.AssertListObjectsV2Request(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectsV2Request to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["StartAfter"] then M.AssertStartAfter(struct["StartAfter"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["FetchOwner"] then M.AssertFetchOwner(struct["FetchOwner"]) end
	if struct["MaxKeys"] then M.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectsV2Request_keys[k], "ListObjectsV2Request contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectsV2Request
--  
-- @param RequestPayer [RequestPayer] Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.
-- @param StartAfter [StartAfter] StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket
-- @param Bucket [BucketName] Name of the bucket to list.
-- @param Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- @param FetchOwner [FetchOwner] The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true
-- @param MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- @param Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- @param EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- @param ContinuationToken [Token] ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key
-- Required parameter: Bucket
function M.ListObjectsV2Request(RequestPayer, StartAfter, Bucket, Prefix, FetchOwner, MaxKeys, Delimiter, EncodingType, ContinuationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectsV2Request")
	local t = { 
		["RequestPayer"] = RequestPayer,
		["StartAfter"] = StartAfter,
		["Bucket"] = Bucket,
		["Prefix"] = Prefix,
		["FetchOwner"] = FetchOwner,
		["MaxKeys"] = MaxKeys,
		["Delimiter"] = Delimiter,
		["EncodingType"] = EncodingType,
		["ContinuationToken"] = ContinuationToken,
	}
	M.AssertListObjectsV2Request(t)
	return t
end

local ListBucketInventoryConfigurationsRequest_keys = { "Bucket" = true, "ContinuationToken" = true, nil }

function M.AssertListBucketInventoryConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBucketInventoryConfigurationsRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["ContinuationToken"] then M.AssertToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListBucketInventoryConfigurationsRequest_keys[k], "ListBucketInventoryConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBucketInventoryConfigurationsRequest
--  
-- @param Bucket [BucketName] The name of the bucket containing the inventory configurations to retrieve.
-- @param ContinuationToken [Token] The marker used to continue an inventory configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
-- Required parameter: Bucket
function M.ListBucketInventoryConfigurationsRequest(Bucket, ContinuationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBucketInventoryConfigurationsRequest")
	local t = { 
		["Bucket"] = Bucket,
		["ContinuationToken"] = ContinuationToken,
	}
	M.AssertListBucketInventoryConfigurationsRequest(t)
	return t
end

local CopyPartResult_keys = { "LastModified" = true, "ETag" = true, nil }

function M.AssertCopyPartResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyPartResult to be of type 'table'")
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["ETag"] then M.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(CopyPartResult_keys[k], "CopyPartResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyPartResult
--  
-- @param LastModified [LastModified] Date and time at which the object was uploaded.
-- @param ETag [ETag] Entity tag of the object.
function M.CopyPartResult(LastModified, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyPartResult")
	local t = { 
		["LastModified"] = LastModified,
		["ETag"] = ETag,
	}
	M.AssertCopyPartResult(t)
	return t
end

local GetBucketAclRequest_keys = { "Bucket" = true, nil }

function M.AssertGetBucketAclRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketAclRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketAclRequest_keys[k], "GetBucketAclRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketAclRequest
--  
-- @param Bucket [BucketName]  
-- Required parameter: Bucket
function M.GetBucketAclRequest(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketAclRequest")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertGetBucketAclRequest(t)
	return t
end

local CopyObjectOutput_keys = { "SSECustomerAlgorithm" = true, "CopySourceVersionId" = true, "RequestCharged" = true, "VersionId" = true, "Expiration" = true, "ServerSideEncryption" = true, "CopyObjectResult" = true, "SSEKMSKeyId" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertCopyObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyObjectOutput to be of type 'table'")
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["CopySourceVersionId"] then M.AssertCopySourceVersionId(struct["CopySourceVersionId"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Expiration"] then M.AssertExpiration(struct["Expiration"]) end
	if struct["ServerSideEncryption"] then M.AssertServerSideEncryption(struct["ServerSideEncryption"]) end
	if struct["CopyObjectResult"] then M.AssertCopyObjectResult(struct["CopyObjectResult"]) end
	if struct["SSEKMSKeyId"] then M.AssertSSEKMSKeyId(struct["SSEKMSKeyId"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(CopyObjectOutput_keys[k], "CopyObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyObjectOutput
--  
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- @param CopySourceVersionId [CopySourceVersionId]  
-- @param RequestCharged [RequestCharged]  
-- @param VersionId [ObjectVersionId] Version ID of the newly created copy.
-- @param Expiration [Expiration] If the object expiration is configured, the response includes this header.
-- @param ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- @param CopyObjectResult [CopyObjectResult]  
-- @param SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
function M.CopyObjectOutput(SSECustomerAlgorithm, CopySourceVersionId, RequestCharged, VersionId, Expiration, ServerSideEncryption, CopyObjectResult, SSEKMSKeyId, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyObjectOutput")
	local t = { 
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["CopySourceVersionId"] = CopySourceVersionId,
		["RequestCharged"] = RequestCharged,
		["VersionId"] = VersionId,
		["Expiration"] = Expiration,
		["ServerSideEncryption"] = ServerSideEncryption,
		["CopyObjectResult"] = CopyObjectResult,
		["SSEKMSKeyId"] = SSEKMSKeyId,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertCopyObjectOutput(t)
	return t
end

local GetObjectAclOutput_keys = { "Owner" = true, "Grants" = true, "RequestCharged" = true, nil }

function M.AssertGetObjectAclOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectAclOutput to be of type 'table'")
	if struct["Owner"] then M.AssertOwner(struct["Owner"]) end
	if struct["Grants"] then M.AssertGrants(struct["Grants"]) end
	if struct["RequestCharged"] then M.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectAclOutput_keys[k], "GetObjectAclOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectAclOutput
--  
-- @param Owner [Owner]  
-- @param Grants [Grants] A list of grants.
-- @param RequestCharged [RequestCharged]  
function M.GetObjectAclOutput(Owner, Grants, RequestCharged, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectAclOutput")
	local t = { 
		["Owner"] = Owner,
		["Grants"] = Grants,
		["RequestCharged"] = RequestCharged,
	}
	M.AssertGetObjectAclOutput(t)
	return t
end

local ObjectNotInActiveTierError_keys = { nil }

function M.AssertObjectNotInActiveTierError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectNotInActiveTierError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ObjectNotInActiveTierError_keys[k], "ObjectNotInActiveTierError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectNotInActiveTierError
-- The source object of the COPY operation is not in the active tier and is only stored in Amazon Glacier.
function M.ObjectNotInActiveTierError(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectNotInActiveTierError")
	local t = { 
	}
	M.AssertObjectNotInActiveTierError(t)
	return t
end

local ListObjectVersionsOutput_keys = { "Name" = true, "Versions" = true, "DeleteMarkers" = true, "NextKeyMarker" = true, "Delimiter" = true, "MaxKeys" = true, "Prefix" = true, "KeyMarker" = true, "NextVersionIdMarker" = true, "EncodingType" = true, "IsTruncated" = true, "VersionIdMarker" = true, "CommonPrefixes" = true, nil }

function M.AssertListObjectVersionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectVersionsOutput to be of type 'table'")
	if struct["Name"] then M.AssertBucketName(struct["Name"]) end
	if struct["Versions"] then M.AssertObjectVersionList(struct["Versions"]) end
	if struct["DeleteMarkers"] then M.AssertDeleteMarkers(struct["DeleteMarkers"]) end
	if struct["NextKeyMarker"] then M.AssertNextKeyMarker(struct["NextKeyMarker"]) end
	if struct["Delimiter"] then M.AssertDelimiter(struct["Delimiter"]) end
	if struct["MaxKeys"] then M.AssertMaxKeys(struct["MaxKeys"]) end
	if struct["Prefix"] then M.AssertPrefix(struct["Prefix"]) end
	if struct["KeyMarker"] then M.AssertKeyMarker(struct["KeyMarker"]) end
	if struct["NextVersionIdMarker"] then M.AssertNextVersionIdMarker(struct["NextVersionIdMarker"]) end
	if struct["EncodingType"] then M.AssertEncodingType(struct["EncodingType"]) end
	if struct["IsTruncated"] then M.AssertIsTruncated(struct["IsTruncated"]) end
	if struct["VersionIdMarker"] then M.AssertVersionIdMarker(struct["VersionIdMarker"]) end
	if struct["CommonPrefixes"] then M.AssertCommonPrefixList(struct["CommonPrefixes"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectVersionsOutput_keys[k], "ListObjectVersionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectVersionsOutput
--  
-- @param Name [BucketName]  
-- @param Versions [ObjectVersionList]  
-- @param DeleteMarkers [DeleteMarkers]  
-- @param NextKeyMarker [NextKeyMarker] Use this value for the key marker request parameter in a subsequent request.
-- @param Delimiter [Delimiter]  
-- @param MaxKeys [MaxKeys]  
-- @param Prefix [Prefix]  
-- @param KeyMarker [KeyMarker] Marks the last Key returned in a truncated response.
-- @param NextVersionIdMarker [NextVersionIdMarker] Use this value for the next version id marker parameter in a subsequent request.
-- @param EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- @param IsTruncated [IsTruncated] A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.
-- @param VersionIdMarker [VersionIdMarker]  
-- @param CommonPrefixes [CommonPrefixList]  
function M.ListObjectVersionsOutput(Name, Versions, DeleteMarkers, NextKeyMarker, Delimiter, MaxKeys, Prefix, KeyMarker, NextVersionIdMarker, EncodingType, IsTruncated, VersionIdMarker, CommonPrefixes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectVersionsOutput")
	local t = { 
		["Name"] = Name,
		["Versions"] = Versions,
		["DeleteMarkers"] = DeleteMarkers,
		["NextKeyMarker"] = NextKeyMarker,
		["Delimiter"] = Delimiter,
		["MaxKeys"] = MaxKeys,
		["Prefix"] = Prefix,
		["KeyMarker"] = KeyMarker,
		["NextVersionIdMarker"] = NextVersionIdMarker,
		["EncodingType"] = EncodingType,
		["IsTruncated"] = IsTruncated,
		["VersionIdMarker"] = VersionIdMarker,
		["CommonPrefixes"] = CommonPrefixes,
	}
	M.AssertListObjectVersionsOutput(t)
	return t
end

local Condition_keys = { "HttpErrorCodeReturnedEquals" = true, "KeyPrefixEquals" = true, nil }

function M.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	if struct["HttpErrorCodeReturnedEquals"] then M.AssertHttpErrorCodeReturnedEquals(struct["HttpErrorCodeReturnedEquals"]) end
	if struct["KeyPrefixEquals"] then M.AssertKeyPrefixEquals(struct["KeyPrefixEquals"]) end
	for k,_ in pairs(struct) do
		assert(Condition_keys[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
--  
-- @param HttpErrorCodeReturnedEquals [HttpErrorCodeReturnedEquals] The HTTP error code when the redirect is applied. In the event of an error, if the error code equals this value, then the specified redirect is applied. Required when parent element Condition is specified and sibling KeyPrefixEquals is not specified. If both are specified, then both must be true for the redirect to be applied.
-- @param KeyPrefixEquals [KeyPrefixEquals] The object key name prefix when the redirect is applied. For example, to redirect requests for ExamplePage.html, the key prefix will be ExamplePage.html. To redirect request for all pages with the prefix docs/, the key prefix will be /docs, which identifies all objects in the docs/ folder. Required when the parent element Condition is specified and sibling HttpErrorCodeReturnedEquals is not specified. If both conditions are specified, both must be true for the redirect to be applied.
function M.Condition(HttpErrorCodeReturnedEquals, KeyPrefixEquals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Condition")
	local t = { 
		["HttpErrorCodeReturnedEquals"] = HttpErrorCodeReturnedEquals,
		["KeyPrefixEquals"] = KeyPrefixEquals,
	}
	M.AssertCondition(t)
	return t
end

local ErrorDocument_keys = { "Key" = true, nil }

function M.AssertErrorDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDocument to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ErrorDocument_keys[k], "ErrorDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDocument
--  
-- @param Key [ObjectKey] The object key name to use when a 4XX class error occurs.
-- Required parameter: Key
function M.ErrorDocument(Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorDocument")
	local t = { 
		["Key"] = Key,
	}
	M.AssertErrorDocument(t)
	return t
end

local MetricsConfiguration_keys = { "Filter" = true, "Id" = true, nil }

function M.AssertMetricsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricsConfiguration to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Filter"] then M.AssertMetricsFilter(struct["Filter"]) end
	if struct["Id"] then M.AssertMetricsId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(MetricsConfiguration_keys[k], "MetricsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricsConfiguration
--  
-- @param Filter [MetricsFilter] Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction (MetricsAndOperator).
-- @param Id [MetricsId] The ID used to identify the metrics configuration.
-- Required parameter: Id
function M.MetricsConfiguration(Filter, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricsConfiguration")
	local t = { 
		["Filter"] = Filter,
		["Id"] = Id,
	}
	M.AssertMetricsConfiguration(t)
	return t
end

local LoggingEnabled_keys = { "TargetPrefix" = true, "TargetBucket" = true, "TargetGrants" = true, nil }

function M.AssertLoggingEnabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingEnabled to be of type 'table'")
	if struct["TargetPrefix"] then M.AssertTargetPrefix(struct["TargetPrefix"]) end
	if struct["TargetBucket"] then M.AssertTargetBucket(struct["TargetBucket"]) end
	if struct["TargetGrants"] then M.AssertTargetGrants(struct["TargetGrants"]) end
	for k,_ in pairs(struct) do
		assert(LoggingEnabled_keys[k], "LoggingEnabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingEnabled
--  
-- @param TargetPrefix [TargetPrefix] This element lets you specify a prefix for the keys that the log files will be stored under.
-- @param TargetBucket [TargetBucket] Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case you should choose a different TargetPrefix for each source bucket so that the delivered log files can be distinguished by key.
-- @param TargetGrants [TargetGrants]  
function M.LoggingEnabled(TargetPrefix, TargetBucket, TargetGrants, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingEnabled")
	local t = { 
		["TargetPrefix"] = TargetPrefix,
		["TargetBucket"] = TargetBucket,
		["TargetGrants"] = TargetGrants,
	}
	M.AssertLoggingEnabled(t)
	return t
end

local Transition_keys = { "Date" = true, "Days" = true, "StorageClass" = true, nil }

function M.AssertTransition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Transition to be of type 'table'")
	if struct["Date"] then M.AssertDate(struct["Date"]) end
	if struct["Days"] then M.AssertDays(struct["Days"]) end
	if struct["StorageClass"] then M.AssertTransitionStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(Transition_keys[k], "Transition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Transition
--  
-- @param Date [Date] Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
-- @param Days [Days] Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
-- @param StorageClass [TransitionStorageClass] The class of storage used to store the object.
function M.Transition(Date, Days, StorageClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Transition")
	local t = { 
		["Date"] = Date,
		["Days"] = Days,
		["StorageClass"] = StorageClass,
	}
	M.AssertTransition(t)
	return t
end

local QueueConfigurationDeprecated_keys = { "Queue" = true, "Events" = true, "Id" = true, "Event" = true, nil }

function M.AssertQueueConfigurationDeprecated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueConfigurationDeprecated to be of type 'table'")
	if struct["Queue"] then M.AssertQueueArn(struct["Queue"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	if struct["Id"] then M.AssertNotificationId(struct["Id"]) end
	if struct["Event"] then M.AssertEvent(struct["Event"]) end
	for k,_ in pairs(struct) do
		assert(QueueConfigurationDeprecated_keys[k], "QueueConfigurationDeprecated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueConfigurationDeprecated
--  
-- @param Queue [QueueArn]  
-- @param Events [EventList]  
-- @param Id [NotificationId]  
-- @param Event [Event]  
function M.QueueConfigurationDeprecated(Queue, Events, Id, Event, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueConfigurationDeprecated")
	local t = { 
		["Queue"] = Queue,
		["Events"] = Events,
		["Id"] = Id,
		["Event"] = Event,
	}
	M.AssertQueueConfigurationDeprecated(t)
	return t
end

local Error_keys = { "VersionId" = true, "Code" = true, "Message" = true, "Key" = true, nil }

function M.AssertError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Error to be of type 'table'")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Code"] then M.AssertCode(struct["Code"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Error_keys[k], "Error contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Error
--  
-- @param VersionId [ObjectVersionId]  
-- @param Code [Code]  
-- @param Message [Message]  
-- @param Key [ObjectKey]  
function M.Error(VersionId, Code, Message, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Error")
	local t = { 
		["VersionId"] = VersionId,
		["Code"] = Code,
		["Message"] = Message,
		["Key"] = Key,
	}
	M.AssertError(t)
	return t
end

local BucketLoggingStatus_keys = { "LoggingEnabled" = true, nil }

function M.AssertBucketLoggingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketLoggingStatus to be of type 'table'")
	if struct["LoggingEnabled"] then M.AssertLoggingEnabled(struct["LoggingEnabled"]) end
	for k,_ in pairs(struct) do
		assert(BucketLoggingStatus_keys[k], "BucketLoggingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketLoggingStatus
--  
-- @param LoggingEnabled [LoggingEnabled]  
function M.BucketLoggingStatus(LoggingEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketLoggingStatus")
	local t = { 
		["LoggingEnabled"] = LoggingEnabled,
	}
	M.AssertBucketLoggingStatus(t)
	return t
end

local PutBucketInventoryConfigurationRequest_keys = { "InventoryConfiguration" = true, "Bucket" = true, "Id" = true, nil }

function M.AssertPutBucketInventoryConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketInventoryConfigurationRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["InventoryConfiguration"], "Expected key InventoryConfiguration to exist in table")
	if struct["InventoryConfiguration"] then M.AssertInventoryConfiguration(struct["InventoryConfiguration"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["Id"] then M.AssertInventoryId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(PutBucketInventoryConfigurationRequest_keys[k], "PutBucketInventoryConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketInventoryConfigurationRequest
--  
-- @param InventoryConfiguration [InventoryConfiguration] Specifies the inventory configuration.
-- @param Bucket [BucketName] The name of the bucket where the inventory configuration will be stored.
-- @param Id [InventoryId] The ID used to identify the inventory configuration.
-- Required parameter: Bucket
-- Required parameter: Id
-- Required parameter: InventoryConfiguration
function M.PutBucketInventoryConfigurationRequest(InventoryConfiguration, Bucket, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBucketInventoryConfigurationRequest")
	local t = { 
		["InventoryConfiguration"] = InventoryConfiguration,
		["Bucket"] = Bucket,
		["Id"] = Id,
	}
	M.AssertPutBucketInventoryConfigurationRequest(t)
	return t
end

local RestoreRequest_keys = { "GlacierJobParameters" = true, "Days" = true, nil }

function M.AssertRestoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreRequest to be of type 'table'")
	assert(struct["Days"], "Expected key Days to exist in table")
	if struct["GlacierJobParameters"] then M.AssertGlacierJobParameters(struct["GlacierJobParameters"]) end
	if struct["Days"] then M.AssertDays(struct["Days"]) end
	for k,_ in pairs(struct) do
		assert(RestoreRequest_keys[k], "RestoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreRequest
--  
-- @param GlacierJobParameters [GlacierJobParameters] Glacier related prameters pertaining to this job.
-- @param Days [Days] Lifetime of the active copy in days
-- Required parameter: Days
function M.RestoreRequest(GlacierJobParameters, Days, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreRequest")
	local t = { 
		["GlacierJobParameters"] = GlacierJobParameters,
		["Days"] = Days,
	}
	M.AssertRestoreRequest(t)
	return t
end

local NotificationConfigurationDeprecated_keys = { "CloudFunctionConfiguration" = true, "QueueConfiguration" = true, "TopicConfiguration" = true, nil }

function M.AssertNotificationConfigurationDeprecated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfigurationDeprecated to be of type 'table'")
	if struct["CloudFunctionConfiguration"] then M.AssertCloudFunctionConfiguration(struct["CloudFunctionConfiguration"]) end
	if struct["QueueConfiguration"] then M.AssertQueueConfigurationDeprecated(struct["QueueConfiguration"]) end
	if struct["TopicConfiguration"] then M.AssertTopicConfigurationDeprecated(struct["TopicConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(NotificationConfigurationDeprecated_keys[k], "NotificationConfigurationDeprecated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfigurationDeprecated
--  
-- @param CloudFunctionConfiguration [CloudFunctionConfiguration]  
-- @param QueueConfiguration [QueueConfigurationDeprecated]  
-- @param TopicConfiguration [TopicConfigurationDeprecated]  
function M.NotificationConfigurationDeprecated(CloudFunctionConfiguration, QueueConfiguration, TopicConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfigurationDeprecated")
	local t = { 
		["CloudFunctionConfiguration"] = CloudFunctionConfiguration,
		["QueueConfiguration"] = QueueConfiguration,
		["TopicConfiguration"] = TopicConfiguration,
	}
	M.AssertNotificationConfigurationDeprecated(t)
	return t
end

local GetBucketVersioningOutput_keys = { "Status" = true, "MFADelete" = true, nil }

function M.AssertGetBucketVersioningOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketVersioningOutput to be of type 'table'")
	if struct["Status"] then M.AssertBucketVersioningStatus(struct["Status"]) end
	if struct["MFADelete"] then M.AssertMFADeleteStatus(struct["MFADelete"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketVersioningOutput_keys[k], "GetBucketVersioningOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketVersioningOutput
--  
-- @param Status [BucketVersioningStatus] The versioning state of the bucket.
-- @param MFADelete [MFADeleteStatus] Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
function M.GetBucketVersioningOutput(Status, MFADelete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketVersioningOutput")
	local t = { 
		["Status"] = Status,
		["MFADelete"] = MFADelete,
	}
	M.AssertGetBucketVersioningOutput(t)
	return t
end

local GetObjectRequest_keys = { "ResponseContentEncoding" = true, "ResponseContentLanguage" = true, "SSECustomerAlgorithm" = true, "ResponseContentType" = true, "IfUnmodifiedSince" = true, "VersionId" = true, "RequestPayer" = true, "ResponseCacheControl" = true, "SSECustomerKey" = true, "Bucket" = true, "IfNoneMatch" = true, "ResponseContentDisposition" = true, "Range" = true, "Key" = true, "IfMatch" = true, "ResponseExpires" = true, "PartNumber" = true, "IfModifiedSince" = true, "SSECustomerKeyMD5" = true, nil }

function M.AssertGetObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["ResponseContentEncoding"] then M.AssertResponseContentEncoding(struct["ResponseContentEncoding"]) end
	if struct["ResponseContentLanguage"] then M.AssertResponseContentLanguage(struct["ResponseContentLanguage"]) end
	if struct["SSECustomerAlgorithm"] then M.AssertSSECustomerAlgorithm(struct["SSECustomerAlgorithm"]) end
	if struct["ResponseContentType"] then M.AssertResponseContentType(struct["ResponseContentType"]) end
	if struct["IfUnmodifiedSince"] then M.AssertIfUnmodifiedSince(struct["IfUnmodifiedSince"]) end
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["RequestPayer"] then M.AssertRequestPayer(struct["RequestPayer"]) end
	if struct["ResponseCacheControl"] then M.AssertResponseCacheControl(struct["ResponseCacheControl"]) end
	if struct["SSECustomerKey"] then M.AssertSSECustomerKey(struct["SSECustomerKey"]) end
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["IfNoneMatch"] then M.AssertIfNoneMatch(struct["IfNoneMatch"]) end
	if struct["ResponseContentDisposition"] then M.AssertResponseContentDisposition(struct["ResponseContentDisposition"]) end
	if struct["Range"] then M.AssertRange(struct["Range"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	if struct["IfMatch"] then M.AssertIfMatch(struct["IfMatch"]) end
	if struct["ResponseExpires"] then M.AssertResponseExpires(struct["ResponseExpires"]) end
	if struct["PartNumber"] then M.AssertPartNumber(struct["PartNumber"]) end
	if struct["IfModifiedSince"] then M.AssertIfModifiedSince(struct["IfModifiedSince"]) end
	if struct["SSECustomerKeyMD5"] then M.AssertSSECustomerKeyMD5(struct["SSECustomerKeyMD5"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectRequest_keys[k], "GetObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectRequest
--  
-- @param ResponseContentEncoding [ResponseContentEncoding] Sets the Content-Encoding header of the response.
-- @param ResponseContentLanguage [ResponseContentLanguage] Sets the Content-Language header of the response.
-- @param SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- @param ResponseContentType [ResponseContentType] Sets the Content-Type header of the response.
-- @param IfUnmodifiedSince [IfUnmodifiedSince] Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
-- @param VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- @param RequestPayer [RequestPayer]  
-- @param ResponseCacheControl [ResponseCacheControl] Sets the Cache-Control header of the response.
-- @param SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- @param Bucket [BucketName]  
-- @param IfNoneMatch [IfNoneMatch] Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
-- @param ResponseContentDisposition [ResponseContentDisposition] Sets the Content-Disposition header of the response
-- @param Range [Range] Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
-- @param Key [ObjectKey]  
-- @param IfMatch [IfMatch] Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
-- @param ResponseExpires [ResponseExpires] Sets the Expires header of the response.
-- @param PartNumber [PartNumber] Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.
-- @param IfModifiedSince [IfModifiedSince] Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
-- @param SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required parameter: Bucket
-- Required parameter: Key
function M.GetObjectRequest(ResponseContentEncoding, ResponseContentLanguage, SSECustomerAlgorithm, ResponseContentType, IfUnmodifiedSince, VersionId, RequestPayer, ResponseCacheControl, SSECustomerKey, Bucket, IfNoneMatch, ResponseContentDisposition, Range, Key, IfMatch, ResponseExpires, PartNumber, IfModifiedSince, SSECustomerKeyMD5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectRequest")
	local t = { 
		["ResponseContentEncoding"] = ResponseContentEncoding,
		["ResponseContentLanguage"] = ResponseContentLanguage,
		["SSECustomerAlgorithm"] = SSECustomerAlgorithm,
		["ResponseContentType"] = ResponseContentType,
		["IfUnmodifiedSince"] = IfUnmodifiedSince,
		["VersionId"] = VersionId,
		["RequestPayer"] = RequestPayer,
		["ResponseCacheControl"] = ResponseCacheControl,
		["SSECustomerKey"] = SSECustomerKey,
		["Bucket"] = Bucket,
		["IfNoneMatch"] = IfNoneMatch,
		["ResponseContentDisposition"] = ResponseContentDisposition,
		["Range"] = Range,
		["Key"] = Key,
		["IfMatch"] = IfMatch,
		["ResponseExpires"] = ResponseExpires,
		["PartNumber"] = PartNumber,
		["IfModifiedSince"] = IfModifiedSince,
		["SSECustomerKeyMD5"] = SSECustomerKeyMD5,
	}
	M.AssertGetObjectRequest(t)
	return t
end

local GetBucketPolicyOutput_keys = { "Policy" = true, nil }

function M.AssertGetBucketPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBucketPolicyOutput to be of type 'table'")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(GetBucketPolicyOutput_keys[k], "GetBucketPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBucketPolicyOutput
--  
-- @param Policy [Policy] The bucket policy as a JSON document.
function M.GetBucketPolicyOutput(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBucketPolicyOutput")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertGetBucketPolicyOutput(t)
	return t
end

local ObjectIdentifier_keys = { "VersionId" = true, "Key" = true, nil }

function M.AssertObjectIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectIdentifier to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["VersionId"] then M.AssertObjectVersionId(struct["VersionId"]) end
	if struct["Key"] then M.AssertObjectKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ObjectIdentifier_keys[k], "ObjectIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectIdentifier
--  
-- @param VersionId [ObjectVersionId] VersionId for the specific version of the object to delete.
-- @param Key [ObjectKey] Key name of the object to delete.
-- Required parameter: Key
function M.ObjectIdentifier(VersionId, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectIdentifier")
	local t = { 
		["VersionId"] = VersionId,
		["Key"] = Key,
	}
	M.AssertObjectIdentifier(t)
	return t
end

local Initiator_keys = { "DisplayName" = true, "ID" = true, nil }

function M.AssertInitiator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Initiator to be of type 'table'")
	if struct["DisplayName"] then M.AssertDisplayName(struct["DisplayName"]) end
	if struct["ID"] then M.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(Initiator_keys[k], "Initiator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Initiator
--  
-- @param DisplayName [DisplayName] Name of the Principal.
-- @param ID [ID] If the principal is an AWS account, it provides the Canonical User ID. If the principal is an IAM User, it provides a user ARN value.
function M.Initiator(DisplayName, ID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Initiator")
	local t = { 
		["DisplayName"] = DisplayName,
		["ID"] = ID,
	}
	M.AssertInitiator(t)
	return t
end

local NoSuchKey_keys = { nil }

function M.AssertNoSuchKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchKey to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoSuchKey_keys[k], "NoSuchKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchKey
-- The specified key does not exist.
function M.NoSuchKey(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchKey")
	local t = { 
	}
	M.AssertNoSuchKey(t)
	return t
end

local RequestPaymentConfiguration_keys = { "Payer" = true, nil }

function M.AssertRequestPaymentConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestPaymentConfiguration to be of type 'table'")
	assert(struct["Payer"], "Expected key Payer to exist in table")
	if struct["Payer"] then M.AssertPayer(struct["Payer"]) end
	for k,_ in pairs(struct) do
		assert(RequestPaymentConfiguration_keys[k], "RequestPaymentConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestPaymentConfiguration
--  
-- @param Payer [Payer] Specifies who pays for the download and request fees.
-- Required parameter: Payer
function M.RequestPaymentConfiguration(Payer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestPaymentConfiguration")
	local t = { 
		["Payer"] = Payer,
	}
	M.AssertRequestPaymentConfiguration(t)
	return t
end

function M.AssertRestore(str)
	assert(str)
	assert(type(str) == "string", "Expected Restore to be of type 'string'")
end

--  
function M.Restore(str)
	M.AssertRestore(str)
	return str
end

function M.AssertCopySourceVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceVersionId to be of type 'string'")
end

--  
function M.CopySourceVersionId(str)
	M.AssertCopySourceVersionId(str)
	return str
end

function M.AssertExposeHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected ExposeHeader to be of type 'string'")
end

--  
function M.ExposeHeader(str)
	M.AssertExposeHeader(str)
	return str
end

function M.AssertMultipartUploadId(str)
	assert(str)
	assert(type(str) == "string", "Expected MultipartUploadId to be of type 'string'")
end

--  
function M.MultipartUploadId(str)
	M.AssertMultipartUploadId(str)
	return str
end

function M.AssertObjectStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectStorageClass to be of type 'string'")
end

--  
function M.ObjectStorageClass(str)
	M.AssertObjectStorageClass(str)
	return str
end

function M.AssertWebsiteRedirectLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected WebsiteRedirectLocation to be of type 'string'")
end

--  
function M.WebsiteRedirectLocation(str)
	M.AssertWebsiteRedirectLocation(str)
	return str
end

function M.AssertProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected Protocol to be of type 'string'")
end

--  
function M.Protocol(str)
	M.AssertProtocol(str)
	return str
end

function M.AssertSuffix(str)
	assert(str)
	assert(type(str) == "string", "Expected Suffix to be of type 'string'")
end

--  
function M.Suffix(str)
	M.AssertSuffix(str)
	return str
end

function M.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
end

--  
function M.BucketName(str)
	M.AssertBucketName(str)
	return str
end

function M.AssertBucketLogsPermission(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketLogsPermission to be of type 'string'")
end

--  
function M.BucketLogsPermission(str)
	M.AssertBucketLogsPermission(str)
	return str
end

function M.AssertReplicationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationStatus to be of type 'string'")
end

--  
function M.ReplicationStatus(str)
	M.AssertReplicationStatus(str)
	return str
end

function M.AssertTargetPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetPrefix to be of type 'string'")
end

--  
function M.TargetPrefix(str)
	M.AssertTargetPrefix(str)
	return str
end

function M.AssertCloudFunctionInvocationRole(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudFunctionInvocationRole to be of type 'string'")
end

--  
function M.CloudFunctionInvocationRole(str)
	M.AssertCloudFunctionInvocationRole(str)
	return str
end

function M.AssertMetadataValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetadataValue to be of type 'string'")
end

--  
function M.MetadataValue(str)
	M.AssertMetadataValue(str)
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

function M.AssertGrantRead(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantRead to be of type 'string'")
end

--  
function M.GrantRead(str)
	M.AssertGrantRead(str)
	return str
end

function M.AssertSSECustomerKeyMD5(str)
	assert(str)
	assert(type(str) == "string", "Expected SSECustomerKeyMD5 to be of type 'string'")
end

--  
function M.SSECustomerKeyMD5(str)
	M.AssertSSECustomerKeyMD5(str)
	return str
end

function M.AssertGrantWriteACP(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantWriteACP to be of type 'string'")
end

--  
function M.GrantWriteACP(str)
	M.AssertGrantWriteACP(str)
	return str
end

function M.AssertContentLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentLanguage to be of type 'string'")
end

--  
function M.ContentLanguage(str)
	M.AssertContentLanguage(str)
	return str
end

function M.AssertHttpErrorCodeReturnedEquals(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpErrorCodeReturnedEquals to be of type 'string'")
end

--  
function M.HttpErrorCodeReturnedEquals(str)
	M.AssertHttpErrorCodeReturnedEquals(str)
	return str
end

function M.AssertTaggingHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected TaggingHeader to be of type 'string'")
end

--  
function M.TaggingHeader(str)
	M.AssertTaggingHeader(str)
	return str
end

function M.AssertAcceptRanges(str)
	assert(str)
	assert(type(str) == "string", "Expected AcceptRanges to be of type 'string'")
end

--  
function M.AcceptRanges(str)
	M.AssertAcceptRanges(str)
	return str
end

function M.AssertCopySource(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySource to be of type 'string'")
	assert(str:match("%/.+%/.+"), "Expected string to match pattern '%/.+%/.+'")
end

--  
function M.CopySource(str)
	M.AssertCopySource(str)
	return str
end

function M.AssertTransitionStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected TransitionStorageClass to be of type 'string'")
end

--  
function M.TransitionStorageClass(str)
	M.AssertTransitionStorageClass(str)
	return str
end

function M.AssertCacheControl(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheControl to be of type 'string'")
end

--  
function M.CacheControl(str)
	M.AssertCacheControl(str)
	return str
end

function M.AssertReplaceKeyWith(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplaceKeyWith to be of type 'string'")
end

--  
function M.ReplaceKeyWith(str)
	M.AssertReplaceKeyWith(str)
	return str
end

function M.AssertPayer(str)
	assert(str)
	assert(type(str) == "string", "Expected Payer to be of type 'string'")
end

--  
function M.Payer(str)
	M.AssertPayer(str)
	return str
end

function M.AssertExpirationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpirationStatus to be of type 'string'")
end

--  
function M.ExpirationStatus(str)
	M.AssertExpirationStatus(str)
	return str
end

function M.AssertQueueArn(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueArn to be of type 'string'")
end

--  
function M.QueueArn(str)
	M.AssertQueueArn(str)
	return str
end

function M.AssertInventoryFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFrequency to be of type 'string'")
end

--  
function M.InventoryFrequency(str)
	M.AssertInventoryFrequency(str)
	return str
end

function M.AssertPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected Policy to be of type 'string'")
end

--  
function M.Policy(str)
	M.AssertPolicy(str)
	return str
end

function M.AssertResponseContentEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentEncoding to be of type 'string'")
end

--  
function M.ResponseContentEncoding(str)
	M.AssertResponseContentEncoding(str)
	return str
end

function M.AssertHostName(str)
	assert(str)
	assert(type(str) == "string", "Expected HostName to be of type 'string'")
end

--  
function M.HostName(str)
	M.AssertHostName(str)
	return str
end

function M.AssertDelimiter(str)
	assert(str)
	assert(type(str) == "string", "Expected Delimiter to be of type 'string'")
end

--  
function M.Delimiter(str)
	M.AssertDelimiter(str)
	return str
end

function M.AssertEncodingType(str)
	assert(str)
	assert(type(str) == "string", "Expected EncodingType to be of type 'string'")
end

-- Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
function M.EncodingType(str)
	M.AssertEncodingType(str)
	return str
end

function M.AssertNotificationId(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationId to be of type 'string'")
end

-- Optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
function M.NotificationId(str)
	M.AssertNotificationId(str)
	return str
end

function M.AssertIfNoneMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected IfNoneMatch to be of type 'string'")
end

--  
function M.IfNoneMatch(str)
	M.AssertIfNoneMatch(str)
	return str
end

function M.AssertObjectVersionStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectVersionStorageClass to be of type 'string'")
end

--  
function M.ObjectVersionStorageClass(str)
	M.AssertObjectVersionStorageClass(str)
	return str
end

function M.AssertAnalyticsS3ExportFileFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected AnalyticsS3ExportFileFormat to be of type 'string'")
end

--  
function M.AnalyticsS3ExportFileFormat(str)
	M.AssertAnalyticsS3ExportFileFormat(str)
	return str
end

function M.AssertTargetBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetBucket to be of type 'string'")
end

--  
function M.TargetBucket(str)
	M.AssertTargetBucket(str)
	return str
end

function M.AssertURI(str)
	assert(str)
	assert(type(str) == "string", "Expected URI to be of type 'string'")
end

--  
function M.URI(str)
	M.AssertURI(str)
	return str
end

function M.AssertGrantFullControl(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantFullControl to be of type 'string'")
end

--  
function M.GrantFullControl(str)
	M.AssertGrantFullControl(str)
	return str
end

function M.AssertInventoryFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFormat to be of type 'string'")
end

--  
function M.InventoryFormat(str)
	M.AssertInventoryFormat(str)
	return str
end

function M.AssertBucketCannedACL(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketCannedACL to be of type 'string'")
end

--  
function M.BucketCannedACL(str)
	M.AssertBucketCannedACL(str)
	return str
end

function M.AssertCopySourceIfNoneMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceIfNoneMatch to be of type 'string'")
end

--  
function M.CopySourceIfNoneMatch(str)
	M.AssertCopySourceIfNoneMatch(str)
	return str
end

function M.AssertHttpRedirectCode(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpRedirectCode to be of type 'string'")
end

--  
function M.HttpRedirectCode(str)
	M.AssertHttpRedirectCode(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertType(str)
	assert(str)
	assert(type(str) == "string", "Expected Type to be of type 'string'")
end

--  
function M.Type(str)
	M.AssertType(str)
	return str
end

function M.AssertPermission(str)
	assert(str)
	assert(type(str) == "string", "Expected Permission to be of type 'string'")
end

--  
function M.Permission(str)
	M.AssertPermission(str)
	return str
end

function M.AssertAnalyticsId(str)
	assert(str)
	assert(type(str) == "string", "Expected AnalyticsId to be of type 'string'")
end

--  
function M.AnalyticsId(str)
	M.AssertAnalyticsId(str)
	return str
end

function M.AssertNextVersionIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextVersionIdMarker to be of type 'string'")
end

--  
function M.NextVersionIdMarker(str)
	M.AssertNextVersionIdMarker(str)
	return str
end

function M.AssertResponseContentLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentLanguage to be of type 'string'")
end

--  
function M.ResponseContentLanguage(str)
	M.AssertResponseContentLanguage(str)
	return str
end

function M.AssertNextUploadIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextUploadIdMarker to be of type 'string'")
end

--  
function M.NextUploadIdMarker(str)
	M.AssertNextUploadIdMarker(str)
	return str
end

function M.AssertNextMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextMarker to be of type 'string'")
end

--  
function M.NextMarker(str)
	M.AssertNextMarker(str)
	return str
end

function M.AssertResponseContentDisposition(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentDisposition to be of type 'string'")
end

--  
function M.ResponseContentDisposition(str)
	M.AssertResponseContentDisposition(str)
	return str
end

function M.AssertRequestCharged(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCharged to be of type 'string'")
end

-- If present, indicates that the requester was successfully charged for the request.
function M.RequestCharged(str)
	M.AssertRequestCharged(str)
	return str
end

function M.AssertFilterRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterRuleName to be of type 'string'")
end

--  
function M.FilterRuleName(str)
	M.AssertFilterRuleName(str)
	return str
end

function M.AssertTier(str)
	assert(str)
	assert(type(str) == "string", "Expected Tier to be of type 'string'")
end

--  
function M.Tier(str)
	M.AssertTier(str)
	return str
end

function M.AssertCopySourceSSECustomerKeyMD5(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceSSECustomerKeyMD5 to be of type 'string'")
end

--  
function M.CopySourceSSECustomerKeyMD5(str)
	M.AssertCopySourceSSECustomerKeyMD5(str)
	return str
end

function M.AssertCode(str)
	assert(str)
	assert(type(str) == "string", "Expected Code to be of type 'string'")
end

--  
function M.Code(str)
	M.AssertCode(str)
	return str
end

function M.AssertEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddress to be of type 'string'")
end

--  
function M.EmailAddress(str)
	M.AssertEmailAddress(str)
	return str
end

function M.AssertObjectVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectVersionId to be of type 'string'")
end

--  
function M.ObjectVersionId(str)
	M.AssertObjectVersionId(str)
	return str
end

function M.AssertBucketAccelerateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketAccelerateStatus to be of type 'string'")
end

--  
function M.BucketAccelerateStatus(str)
	M.AssertBucketAccelerateStatus(str)
	return str
end

function M.AssertExpiration(str)
	assert(str)
	assert(type(str) == "string", "Expected Expiration to be of type 'string'")
end

--  
function M.Expiration(str)
	M.AssertExpiration(str)
	return str
end

function M.AssertIfMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected IfMatch to be of type 'string'")
end

--  
function M.IfMatch(str)
	M.AssertIfMatch(str)
	return str
end

function M.AssertETag(str)
	assert(str)
	assert(type(str) == "string", "Expected ETag to be of type 'string'")
end

--  
function M.ETag(str)
	M.AssertETag(str)
	return str
end

function M.AssertReplicationRuleStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplicationRuleStatus to be of type 'string'")
end

--  
function M.ReplicationRuleStatus(str)
	M.AssertReplicationRuleStatus(str)
	return str
end

function M.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	M.AssertRole(str)
	return str
end

function M.AssertFilterRuleValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterRuleValue to be of type 'string'")
end

--  
function M.FilterRuleValue(str)
	M.AssertFilterRuleValue(str)
	return str
end

function M.AssertMFADeleteStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected MFADeleteStatus to be of type 'string'")
end

--  
function M.MFADeleteStatus(str)
	M.AssertMFADeleteStatus(str)
	return str
end

function M.AssertCloudFunction(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudFunction to be of type 'string'")
end

--  
function M.CloudFunction(str)
	M.AssertCloudFunction(str)
	return str
end

function M.AssertAbortRuleId(str)
	assert(str)
	assert(type(str) == "string", "Expected AbortRuleId to be of type 'string'")
end

--  
function M.AbortRuleId(str)
	M.AssertAbortRuleId(str)
	return str
end

function M.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	M.AssertValue(str)
	return str
end

function M.AssertKeyMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyMarker to be of type 'string'")
end

--  
function M.KeyMarker(str)
	M.AssertKeyMarker(str)
	return str
end

function M.AssertAllowedMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedMethod to be of type 'string'")
end

--  
function M.AllowedMethod(str)
	M.AssertAllowedMethod(str)
	return str
end

function M.AssertTaggingDirective(str)
	assert(str)
	assert(type(str) == "string", "Expected TaggingDirective to be of type 'string'")
end

--  
function M.TaggingDirective(str)
	M.AssertTaggingDirective(str)
	return str
end

function M.AssertVersionIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionIdMarker to be of type 'string'")
end

--  
function M.VersionIdMarker(str)
	M.AssertVersionIdMarker(str)
	return str
end

function M.AssertLocation(str)
	assert(str)
	assert(type(str) == "string", "Expected Location to be of type 'string'")
end

--  
function M.Location(str)
	M.AssertLocation(str)
	return str
end

function M.AssertMFA(str)
	assert(str)
	assert(type(str) == "string", "Expected MFA to be of type 'string'")
end

--  
function M.MFA(str)
	M.AssertMFA(str)
	return str
end

function M.AssertSSEKMSKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected SSEKMSKeyId to be of type 'string'")
end

--  
function M.SSEKMSKeyId(str)
	M.AssertSSEKMSKeyId(str)
	return str
end

function M.AssertInventoryOptionalField(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryOptionalField to be of type 'string'")
end

--  
function M.InventoryOptionalField(str)
	M.AssertInventoryOptionalField(str)
	return str
end

function M.AssertKeyPrefixEquals(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyPrefixEquals to be of type 'string'")
end

--  
function M.KeyPrefixEquals(str)
	M.AssertKeyPrefixEquals(str)
	return str
end

function M.AssertStorageClassAnalysisSchemaVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClassAnalysisSchemaVersion to be of type 'string'")
end

--  
function M.StorageClassAnalysisSchemaVersion(str)
	M.AssertStorageClassAnalysisSchemaVersion(str)
	return str
end

function M.AssertMFADelete(str)
	assert(str)
	assert(type(str) == "string", "Expected MFADelete to be of type 'string'")
end

--  
function M.MFADelete(str)
	M.AssertMFADelete(str)
	return str
end

function M.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	M.AssertMarker(str)
	return str
end

function M.AssertObjectCannedACL(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectCannedACL to be of type 'string'")
end

--  
function M.ObjectCannedACL(str)
	M.AssertObjectCannedACL(str)
	return str
end

function M.AssertNextKeyMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected NextKeyMarker to be of type 'string'")
end

--  
function M.NextKeyMarker(str)
	M.AssertNextKeyMarker(str)
	return str
end

function M.AssertServerSideEncryption(str)
	assert(str)
	assert(type(str) == "string", "Expected ServerSideEncryption to be of type 'string'")
end

--  
function M.ServerSideEncryption(str)
	M.AssertServerSideEncryption(str)
	return str
end

function M.AssertContentDisposition(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentDisposition to be of type 'string'")
end

--  
function M.ContentDisposition(str)
	M.AssertContentDisposition(str)
	return str
end

function M.AssertMetadataKey(str)
	assert(str)
	assert(type(str) == "string", "Expected MetadataKey to be of type 'string'")
end

--  
function M.MetadataKey(str)
	M.AssertMetadataKey(str)
	return str
end

function M.AssertUploadIdMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadIdMarker to be of type 'string'")
end

--  
function M.UploadIdMarker(str)
	M.AssertUploadIdMarker(str)
	return str
end

function M.AssertCopySourceRange(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceRange to be of type 'string'")
end

--  
function M.CopySourceRange(str)
	M.AssertCopySourceRange(str)
	return str
end

function M.AssertID(str)
	assert(str)
	assert(type(str) == "string", "Expected ID to be of type 'string'")
end

--  
function M.ID(str)
	M.AssertID(str)
	return str
end

function M.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	M.AssertContentType(str)
	return str
end

function M.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	M.AssertToken(str)
	return str
end

function M.AssertObjectKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ObjectKey(str)
	M.AssertObjectKey(str)
	return str
end

function M.AssertRequestPayer(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestPayer to be of type 'string'")
end

-- Confirms that the requester knows that she or he will be charged for the request. Bucket owners need not specify this parameter in their requests. Documentation on downloading objects from requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
function M.RequestPayer(str)
	M.AssertRequestPayer(str)
	return str
end

function M.AssertBucketVersioningStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketVersioningStatus to be of type 'string'")
end

--  
function M.BucketVersioningStatus(str)
	M.AssertBucketVersioningStatus(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertReplaceKeyPrefixWith(str)
	assert(str)
	assert(type(str) == "string", "Expected ReplaceKeyPrefixWith to be of type 'string'")
end

--  
function M.ReplaceKeyPrefixWith(str)
	M.AssertReplaceKeyPrefixWith(str)
	return str
end

function M.AssertCopySourceSSECustomerAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceSSECustomerAlgorithm to be of type 'string'")
end

--  
function M.CopySourceSSECustomerAlgorithm(str)
	M.AssertCopySourceSSECustomerAlgorithm(str)
	return str
end

function M.AssertSSECustomerAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected SSECustomerAlgorithm to be of type 'string'")
end

--  
function M.SSECustomerAlgorithm(str)
	M.AssertSSECustomerAlgorithm(str)
	return str
end

function M.AssertBucketLocationConstraint(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketLocationConstraint to be of type 'string'")
end

--  
function M.BucketLocationConstraint(str)
	M.AssertBucketLocationConstraint(str)
	return str
end

function M.AssertDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected DisplayName to be of type 'string'")
end

--  
function M.DisplayName(str)
	M.AssertDisplayName(str)
	return str
end

function M.AssertGrantReadACP(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantReadACP to be of type 'string'")
end

--  
function M.GrantReadACP(str)
	M.AssertGrantReadACP(str)
	return str
end

function M.AssertResponseContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseContentType to be of type 'string'")
end

--  
function M.ResponseContentType(str)
	M.AssertResponseContentType(str)
	return str
end

function M.AssertResponseCacheControl(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseCacheControl to be of type 'string'")
end

--  
function M.ResponseCacheControl(str)
	M.AssertResponseCacheControl(str)
	return str
end

function M.AssertRange(str)
	assert(str)
	assert(type(str) == "string", "Expected Range to be of type 'string'")
end

--  
function M.Range(str)
	M.AssertRange(str)
	return str
end

function M.AssertEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected Event to be of type 'string'")
end

-- Bucket event for which to send notifications.
function M.Event(str)
	M.AssertEvent(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertContentEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentEncoding to be of type 'string'")
end

--  
function M.ContentEncoding(str)
	M.AssertContentEncoding(str)
	return str
end

function M.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
end

--  
function M.StorageClass(str)
	M.AssertStorageClass(str)
	return str
end

function M.AssertStartAfter(str)
	assert(str)
	assert(type(str) == "string", "Expected StartAfter to be of type 'string'")
end

--  
function M.StartAfter(str)
	M.AssertStartAfter(str)
	return str
end

function M.AssertAllowedOrigin(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedOrigin to be of type 'string'")
end

--  
function M.AllowedOrigin(str)
	M.AssertAllowedOrigin(str)
	return str
end

function M.AssertInventoryIncludedObjectVersions(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryIncludedObjectVersions to be of type 'string'")
end

--  
function M.InventoryIncludedObjectVersions(str)
	M.AssertInventoryIncludedObjectVersions(str)
	return str
end

function M.AssertTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicArn to be of type 'string'")
end

--  
function M.TopicArn(str)
	M.AssertTopicArn(str)
	return str
end

function M.AssertMetricsId(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricsId to be of type 'string'")
end

--  
function M.MetricsId(str)
	M.AssertMetricsId(str)
	return str
end

function M.AssertContentMD5(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentMD5 to be of type 'string'")
end

--  
function M.ContentMD5(str)
	M.AssertContentMD5(str)
	return str
end

function M.AssertMetadataDirective(str)
	assert(str)
	assert(type(str) == "string", "Expected MetadataDirective to be of type 'string'")
end

--  
function M.MetadataDirective(str)
	M.AssertMetadataDirective(str)
	return str
end

function M.AssertPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected Prefix to be of type 'string'")
end

--  
function M.Prefix(str)
	M.AssertPrefix(str)
	return str
end

function M.AssertInventoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryId to be of type 'string'")
end

--  
function M.InventoryId(str)
	M.AssertInventoryId(str)
	return str
end

function M.AssertContentRange(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentRange to be of type 'string'")
end

--  
function M.ContentRange(str)
	M.AssertContentRange(str)
	return str
end

function M.AssertGrantWrite(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantWrite to be of type 'string'")
end

--  
function M.GrantWrite(str)
	M.AssertGrantWrite(str)
	return str
end

function M.AssertCopySourceIfMatch(str)
	assert(str)
	assert(type(str) == "string", "Expected CopySourceIfMatch to be of type 'string'")
end

--  
function M.CopySourceIfMatch(str)
	M.AssertCopySourceIfMatch(str)
	return str
end

function M.AssertAllowedHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedHeader to be of type 'string'")
end

--  
function M.AllowedHeader(str)
	M.AssertAllowedHeader(str)
	return str
end

function M.AssertDeleteMarkerVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeleteMarkerVersionId to be of type 'string'")
end

--  
function M.DeleteMarkerVersionId(str)
	M.AssertDeleteMarkerVersionId(str)
	return str
end

function M.AssertContentLength(long)
	assert(long)
	assert(type(long) == "number", "Expected ContentLength to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ContentLength(long)
	M.AssertContentLength(long)
	return long
end

function M.AssertDaysAfterInitiation(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DaysAfterInitiation to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.DaysAfterInitiation(integer)
	M.AssertDaysAfterInitiation(integer)
	return integer
end

function M.AssertMaxKeys(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxKeys to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxKeys(integer)
	M.AssertMaxKeys(integer)
	return integer
end

function M.AssertMissingMeta(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MissingMeta to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MissingMeta(integer)
	M.AssertMissingMeta(integer)
	return integer
end

function M.AssertKeyCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected KeyCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.KeyCount(integer)
	M.AssertKeyCount(integer)
	return integer
end

function M.AssertMaxParts(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxParts to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxParts(integer)
	M.AssertMaxParts(integer)
	return integer
end

function M.AssertTagCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TagCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TagCount(integer)
	M.AssertTagCount(integer)
	return integer
end

function M.AssertDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Days to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Days(integer)
	M.AssertDays(integer)
	return integer
end

function M.AssertPartsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PartsCount(integer)
	M.AssertPartsCount(integer)
	return integer
end

function M.AssertMaxUploads(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxUploads to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxUploads(integer)
	M.AssertMaxUploads(integer)
	return integer
end

function M.AssertSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Size to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Size(integer)
	M.AssertSize(integer)
	return integer
end

function M.AssertMaxAgeSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxAgeSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxAgeSeconds(integer)
	M.AssertMaxAgeSeconds(integer)
	return integer
end

function M.AssertPartNumberMarker(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartNumberMarker to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PartNumberMarker(integer)
	M.AssertPartNumberMarker(integer)
	return integer
end

function M.AssertPartNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PartNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PartNumber(integer)
	M.AssertPartNumber(integer)
	return integer
end

function M.AssertNextPartNumberMarker(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NextPartNumberMarker to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NextPartNumberMarker(integer)
	M.AssertNextPartNumberMarker(integer)
	return integer
end

function M.AssertIsEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsEnabled to be of type 'boolean'")
end

function M.IsEnabled(boolean)
	M.AssertIsEnabled(boolean)
	return boolean
end

function M.AssertQuiet(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Quiet to be of type 'boolean'")
end

function M.Quiet(boolean)
	M.AssertQuiet(boolean)
	return boolean
end

function M.AssertDeleteMarker(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteMarker to be of type 'boolean'")
end

function M.DeleteMarker(boolean)
	M.AssertDeleteMarker(boolean)
	return boolean
end

function M.AssertExpiredObjectDeleteMarker(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ExpiredObjectDeleteMarker to be of type 'boolean'")
end

function M.ExpiredObjectDeleteMarker(boolean)
	M.AssertExpiredObjectDeleteMarker(boolean)
	return boolean
end

function M.AssertIsTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsTruncated to be of type 'boolean'")
end

function M.IsTruncated(boolean)
	M.AssertIsTruncated(boolean)
	return boolean
end

function M.AssertIsLatest(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsLatest to be of type 'boolean'")
end

function M.IsLatest(boolean)
	M.AssertIsLatest(boolean)
	return boolean
end

function M.AssertFetchOwner(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected FetchOwner to be of type 'boolean'")
end

function M.FetchOwner(boolean)
	M.AssertFetchOwner(boolean)
	return boolean
end

function M.AssertMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected Metadata to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertMetadataKey(k)
		M.AssertMetadataValue(v)
	end
end

function M.Metadata(map)
	M.AssertMetadata(map)
	return map
end

function M.AssertIfUnmodifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IfUnmodifiedSince to be of type 'string'")
end

function M.IfUnmodifiedSince(timestamp)
	M.AssertIfUnmodifiedSince(timestamp)
	return timestamp
end

function M.AssertIfModifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected IfModifiedSince to be of type 'string'")
end

function M.IfModifiedSince(timestamp)
	M.AssertIfModifiedSince(timestamp)
	return timestamp
end

function M.AssertExpires(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Expires to be of type 'string'")
end

function M.Expires(timestamp)
	M.AssertExpires(timestamp)
	return timestamp
end

function M.AssertAbortDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AbortDate to be of type 'string'")
end

function M.AbortDate(timestamp)
	M.AssertAbortDate(timestamp)
	return timestamp
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertCopySourceIfUnmodifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CopySourceIfUnmodifiedSince to be of type 'string'")
end

function M.CopySourceIfUnmodifiedSince(timestamp)
	M.AssertCopySourceIfUnmodifiedSince(timestamp)
	return timestamp
end

function M.AssertResponseExpires(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ResponseExpires to be of type 'string'")
end

function M.ResponseExpires(timestamp)
	M.AssertResponseExpires(timestamp)
	return timestamp
end

function M.AssertInitiated(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Initiated to be of type 'string'")
end

function M.Initiated(timestamp)
	M.AssertInitiated(timestamp)
	return timestamp
end

function M.AssertLastModified(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModified to be of type 'string'")
end

function M.LastModified(timestamp)
	M.AssertLastModified(timestamp)
	return timestamp
end

function M.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	M.AssertCreationDate(timestamp)
	return timestamp
end

function M.AssertCopySourceIfModifiedSince(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CopySourceIfModifiedSince to be of type 'string'")
end

function M.CopySourceIfModifiedSince(timestamp)
	M.AssertCopySourceIfModifiedSince(timestamp)
	return timestamp
end

function M.AssertCopySourceSSECustomerKey(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CopySourceSSECustomerKey to be of type 'string'")
end

function M.CopySourceSSECustomerKey(blob)
	M.AssertCopySourceSSECustomerKey(blob)
	return blob
end

function M.AssertBody(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Body to be of type 'string'")
end

function M.Body(blob)
	M.AssertBody(blob)
	return blob
end

function M.AssertSSECustomerKey(blob)
	assert(blob)
	assert(type(string) == "string", "Expected SSECustomerKey to be of type 'string'")
end

function M.SSECustomerKey(blob)
	M.AssertSSECustomerKey(blob)
	return blob
end

function M.AssertTopicConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTopicConfiguration(v)
	end
end

--  
-- List of TopicConfiguration objects
function M.TopicConfigurationList(list)
	M.AssertTopicConfigurationList(list)
	return list
end

function M.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	M.AssertEventList(list)
	return list
end

function M.AssertInventoryOptionalFields(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryOptionalFields to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInventoryOptionalField(v)
	end
end

--  
-- List of InventoryOptionalField objects
function M.InventoryOptionalFields(list)
	M.AssertInventoryOptionalFields(list)
	return list
end

function M.AssertTransitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TransitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTransition(v)
	end
end

--  
-- List of Transition objects
function M.TransitionList(list)
	M.AssertTransitionList(list)
	return list
end

function M.AssertObjectList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObject(v)
	end
end

--  
-- List of Object objects
function M.ObjectList(list)
	M.AssertObjectList(list)
	return list
end

function M.AssertParts(list)
	assert(list)
	assert(type(list) == "table", "Expected Parts to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPart(v)
	end
end

--  
-- List of Part objects
function M.Parts(list)
	M.AssertParts(list)
	return list
end

function M.AssertReplicationRules(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationRule(v)
	end
end

--  
-- List of ReplicationRule objects
function M.ReplicationRules(list)
	M.AssertReplicationRules(list)
	return list
end

function M.AssertRules(list)
	assert(list)
	assert(type(list) == "table", "Expected Rules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.Rules(list)
	M.AssertRules(list)
	return list
end

function M.AssertDeleteMarkers(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMarkers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeleteMarkerEntry(v)
	end
end

--  
-- List of DeleteMarkerEntry objects
function M.DeleteMarkers(list)
	M.AssertDeleteMarkers(list)
	return list
end

function M.AssertCommonPrefixList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommonPrefixList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommonPrefix(v)
	end
end

--  
-- List of CommonPrefix objects
function M.CommonPrefixList(list)
	M.AssertCommonPrefixList(list)
	return list
end

function M.AssertCORSRules(list)
	assert(list)
	assert(type(list) == "table", "Expected CORSRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCORSRule(v)
	end
end

--  
-- List of CORSRule objects
function M.CORSRules(list)
	M.AssertCORSRules(list)
	return list
end

function M.AssertTargetGrants(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetGrants to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTargetGrant(v)
	end
end

--  
-- List of TargetGrant objects
function M.TargetGrants(list)
	M.AssertTargetGrants(list)
	return list
end

function M.AssertRoutingRules(list)
	assert(list)
	assert(type(list) == "table", "Expected RoutingRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRoutingRule(v)
	end
end

--  
-- List of RoutingRule objects
function M.RoutingRules(list)
	M.AssertRoutingRules(list)
	return list
end

function M.AssertLambdaFunctionConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaFunctionConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLambdaFunctionConfiguration(v)
	end
end

--  
-- List of LambdaFunctionConfiguration objects
function M.LambdaFunctionConfigurationList(list)
	M.AssertLambdaFunctionConfigurationList(list)
	return list
end

function M.AssertObjectVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectVersionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObjectVersion(v)
	end
end

--  
-- List of ObjectVersion objects
function M.ObjectVersionList(list)
	M.AssertObjectVersionList(list)
	return list
end

function M.AssertLifecycleRules(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecycleRules to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLifecycleRule(v)
	end
end

--  
-- List of LifecycleRule objects
function M.LifecycleRules(list)
	M.AssertLifecycleRules(list)
	return list
end

function M.AssertDeletedObjects(list)
	assert(list)
	assert(type(list) == "table", "Expected DeletedObjects to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeletedObject(v)
	end
end

--  
-- List of DeletedObject objects
function M.DeletedObjects(list)
	M.AssertDeletedObjects(list)
	return list
end

function M.AssertTagSet(list)
	assert(list)
	assert(type(list) == "table", "Expected TagSet to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagSet(list)
	M.AssertTagSet(list)
	return list
end

function M.AssertInventoryConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInventoryConfiguration(v)
	end
end

--  
-- List of InventoryConfiguration objects
function M.InventoryConfigurationList(list)
	M.AssertInventoryConfigurationList(list)
	return list
end

function M.AssertObjectIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObjectIdentifier(v)
	end
end

--  
-- List of ObjectIdentifier objects
function M.ObjectIdentifierList(list)
	M.AssertObjectIdentifierList(list)
	return list
end

function M.AssertCompletedPartList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompletedPartList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCompletedPart(v)
	end
end

--  
-- List of CompletedPart objects
function M.CompletedPartList(list)
	M.AssertCompletedPartList(list)
	return list
end

function M.AssertNoncurrentVersionTransitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected NoncurrentVersionTransitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNoncurrentVersionTransition(v)
	end
end

--  
-- List of NoncurrentVersionTransition objects
function M.NoncurrentVersionTransitionList(list)
	M.AssertNoncurrentVersionTransitionList(list)
	return list
end

function M.AssertMultipartUploadList(list)
	assert(list)
	assert(type(list) == "table", "Expected MultipartUploadList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMultipartUpload(v)
	end
end

--  
-- List of MultipartUpload objects
function M.MultipartUploadList(list)
	M.AssertMultipartUploadList(list)
	return list
end

function M.AssertFilterRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterRuleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFilterRule(v)
	end
end

-- A list of containers for key value pair that defines the criteria for the filter rule.
-- List of FilterRule objects
function M.FilterRuleList(list)
	M.AssertFilterRuleList(list)
	return list
end

function M.AssertErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected Errors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertError(v)
	end
end

--  
-- List of Error objects
function M.Errors(list)
	M.AssertErrors(list)
	return list
end

function M.AssertExposeHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected ExposeHeaders to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExposeHeader(v)
	end
end

--  
-- List of ExposeHeader objects
function M.ExposeHeaders(list)
	M.AssertExposeHeaders(list)
	return list
end

function M.AssertAllowedMethods(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedMethods to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAllowedMethod(v)
	end
end

--  
-- List of AllowedMethod objects
function M.AllowedMethods(list)
	M.AssertAllowedMethods(list)
	return list
end

function M.AssertGrants(list)
	assert(list)
	assert(type(list) == "table", "Expected Grants to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGrant(v)
	end
end

--  
-- List of Grant objects
function M.Grants(list)
	M.AssertGrants(list)
	return list
end

function M.AssertQueueConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueueConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQueueConfiguration(v)
	end
end

--  
-- List of QueueConfiguration objects
function M.QueueConfigurationList(list)
	M.AssertQueueConfigurationList(list)
	return list
end

function M.AssertAllowedOrigins(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedOrigins to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAllowedOrigin(v)
	end
end

--  
-- List of AllowedOrigin objects
function M.AllowedOrigins(list)
	M.AssertAllowedOrigins(list)
	return list
end

function M.AssertAllowedHeaders(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedHeaders to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAllowedHeader(v)
	end
end

--  
-- List of AllowedHeader objects
function M.AllowedHeaders(list)
	M.AssertAllowedHeaders(list)
	return list
end

function M.AssertMetricsConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricsConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricsConfiguration(v)
	end
end

--  
-- List of MetricsConfiguration objects
function M.MetricsConfigurationList(list)
	M.AssertMetricsConfigurationList(list)
	return list
end

function M.AssertBuckets(list)
	assert(list)
	assert(type(list) == "table", "Expected Buckets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBucket(v)
	end
end

--  
-- List of Bucket objects
function M.Buckets(list)
	M.AssertBuckets(list)
	return list
end

function M.AssertAnalyticsConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AnalyticsConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAnalyticsConfiguration(v)
	end
end

--  
-- List of AnalyticsConfiguration objects
function M.AnalyticsConfigurationList(list)
	M.AssertAnalyticsConfigurationList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ListObjectVersions
-- @param ListObjectVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectVersionsAsync(ListObjectVersionsRequest, cb)
	assert(ListObjectVersionsRequest, "You must provide a ListObjectVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?versions", ListObjectVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketPolicy
-- @param PutBucketPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketPolicyAsync(PutBucketPolicyRequest, cb)
	assert(PutBucketPolicyRequest, "You must provide a PutBucketPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?policy", PutBucketPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBucketInventoryConfigurations
-- @param ListBucketInventoryConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketInventoryConfigurationsAsync(ListBucketInventoryConfigurationsRequest, cb)
	assert(ListBucketInventoryConfigurationsRequest, "You must provide a ListBucketInventoryConfigurationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListBucketInventoryConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?inventory", ListBucketInventoryConfigurationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketPolicy
-- @param DeleteBucketPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketPolicyAsync(DeleteBucketPolicyRequest, cb)
	assert(DeleteBucketPolicyRequest, "You must provide a DeleteBucketPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?policy", DeleteBucketPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketLifecycleConfiguration
-- @param PutBucketLifecycleConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketLifecycleConfigurationAsync(PutBucketLifecycleConfigurationRequest, cb)
	assert(PutBucketLifecycleConfigurationRequest, "You must provide a PutBucketLifecycleConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketLifecycleConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?lifecycle", PutBucketLifecycleConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketRequestPayment
-- @param PutBucketRequestPaymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketRequestPaymentAsync(PutBucketRequestPaymentRequest, cb)
	assert(PutBucketRequestPaymentRequest, "You must provide a PutBucketRequestPaymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketRequestPayment",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?requestPayment", PutBucketRequestPaymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjects
-- @param ListObjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectsAsync(ListObjectsRequest, cb)
	assert(ListObjectsRequest, "You must provide a ListObjectsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjects",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}", ListObjectsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketMetricsConfiguration
-- @param GetBucketMetricsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketMetricsConfigurationAsync(GetBucketMetricsConfigurationRequest, cb)
	assert(GetBucketMetricsConfigurationRequest, "You must provide a GetBucketMetricsConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketMetricsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?metrics", GetBucketMetricsConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketInventoryConfiguration
-- @param PutBucketInventoryConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketInventoryConfigurationAsync(PutBucketInventoryConfigurationRequest, cb)
	assert(PutBucketInventoryConfigurationRequest, "You must provide a PutBucketInventoryConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketInventoryConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?inventory", PutBucketInventoryConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketLogging
-- @param PutBucketLoggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketLoggingAsync(PutBucketLoggingRequest, cb)
	assert(PutBucketLoggingRequest, "You must provide a PutBucketLoggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketLogging",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?logging", PutBucketLoggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketReplication
-- @param PutBucketReplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketReplicationAsync(PutBucketReplicationRequest, cb)
	assert(PutBucketReplicationRequest, "You must provide a PutBucketReplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketReplication",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?replication", PutBucketReplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketAccelerateConfiguration
-- @param PutBucketAccelerateConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketAccelerateConfigurationAsync(PutBucketAccelerateConfigurationRequest, cb)
	assert(PutBucketAccelerateConfigurationRequest, "You must provide a PutBucketAccelerateConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketAccelerateConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?accelerate", PutBucketAccelerateConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketAcl
-- @param PutBucketAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketAclAsync(PutBucketAclRequest, cb)
	assert(PutBucketAclRequest, "You must provide a PutBucketAclRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketAcl",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?acl", PutBucketAclRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadPart
-- @param UploadPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadPartAsync(UploadPartRequest, cb)
	assert(UploadPartRequest, "You must provide a UploadPartRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadPart",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", UploadPartRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutObject
-- @param PutObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutObjectAsync(PutObjectRequest, cb)
	assert(PutObjectRequest, "You must provide a PutObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", PutObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketCors
-- @param DeleteBucketCorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketCorsAsync(DeleteBucketCorsRequest, cb)
	assert(DeleteBucketCorsRequest, "You must provide a DeleteBucketCorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketCors",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?cors", DeleteBucketCorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketVersioning
-- @param PutBucketVersioningRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketVersioningAsync(PutBucketVersioningRequest, cb)
	assert(PutBucketVersioningRequest, "You must provide a PutBucketVersioningRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketVersioning",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?versioning", PutBucketVersioningRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketCors
-- @param GetBucketCorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketCorsAsync(GetBucketCorsRequest, cb)
	assert(GetBucketCorsRequest, "You must provide a GetBucketCorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketCors",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?cors", GetBucketCorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketLifecycle
-- @param PutBucketLifecycleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketLifecycleAsync(PutBucketLifecycleRequest, cb)
	assert(PutBucketLifecycleRequest, "You must provide a PutBucketLifecycleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketLifecycle",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?lifecycle", PutBucketLifecycleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketAcl
-- @param GetBucketAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketAclAsync(GetBucketAclRequest, cb)
	assert(GetBucketAclRequest, "You must provide a GetBucketAclRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketAcl",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?acl", GetBucketAclRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketMetricsConfiguration
-- @param DeleteBucketMetricsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketMetricsConfigurationAsync(DeleteBucketMetricsConfigurationRequest, cb)
	assert(DeleteBucketMetricsConfigurationRequest, "You must provide a DeleteBucketMetricsConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketMetricsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?metrics", DeleteBucketMetricsConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketLogging
-- @param GetBucketLoggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLoggingAsync(GetBucketLoggingRequest, cb)
	assert(GetBucketLoggingRequest, "You must provide a GetBucketLoggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketLogging",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?logging", GetBucketLoggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetObjectTagging
-- @param GetObjectTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectTaggingAsync(GetObjectTaggingRequest, cb)
	assert(GetObjectTaggingRequest, "You must provide a GetObjectTaggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetObjectTagging",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?tagging", GetObjectTaggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- HeadBucket
-- @param HeadBucketRequest
-- @param cb Callback function accepting two args: response, error_message
function M.HeadBucketAsync(HeadBucketRequest, cb)
	assert(HeadBucketRequest, "You must provide a HeadBucketRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".HeadBucket",
	}

	local request_handler, err = request_handlers.from_http_method("HEAD")
	if request_handler then
		request_handler(uri .. "/{Bucket}", HeadBucketRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBucketMetricsConfigurations
-- @param ListBucketMetricsConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketMetricsConfigurationsAsync(ListBucketMetricsConfigurationsRequest, cb)
	assert(ListBucketMetricsConfigurationsRequest, "You must provide a ListBucketMetricsConfigurationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListBucketMetricsConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?metrics", ListBucketMetricsConfigurationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBuckets
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketsAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListBuckets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketWebsite
-- @param DeleteBucketWebsiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketWebsiteAsync(DeleteBucketWebsiteRequest, cb)
	assert(DeleteBucketWebsiteRequest, "You must provide a DeleteBucketWebsiteRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketWebsite",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?website", DeleteBucketWebsiteRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketInventoryConfiguration
-- @param DeleteBucketInventoryConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketInventoryConfigurationAsync(DeleteBucketInventoryConfigurationRequest, cb)
	assert(DeleteBucketInventoryConfigurationRequest, "You must provide a DeleteBucketInventoryConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketInventoryConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?inventory", DeleteBucketInventoryConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketNotificationConfiguration
-- @param GetBucketNotificationConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketNotificationConfigurationAsync(GetBucketNotificationConfigurationRequest, cb)
	assert(GetBucketNotificationConfigurationRequest, "You must provide a GetBucketNotificationConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketNotificationConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?notification", GetBucketNotificationConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteObjects
-- @param DeleteObjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectsAsync(DeleteObjectsRequest, cb)
	assert(DeleteObjectsRequest, "You must provide a DeleteObjectsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteObjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{Bucket}?delete", DeleteObjectsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketReplication
-- @param DeleteBucketReplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketReplicationAsync(DeleteBucketReplicationRequest, cb)
	assert(DeleteBucketReplicationRequest, "You must provide a DeleteBucketReplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketReplication",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?replication", DeleteBucketReplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketWebsite
-- @param PutBucketWebsiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketWebsiteAsync(PutBucketWebsiteRequest, cb)
	assert(PutBucketWebsiteRequest, "You must provide a PutBucketWebsiteRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketWebsite",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?website", PutBucketWebsiteRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopyObject
-- @param CopyObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CopyObjectAsync(CopyObjectRequest, cb)
	assert(CopyObjectRequest, "You must provide a CopyObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", CopyObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketReplication
-- @param GetBucketReplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketReplicationAsync(GetBucketReplicationRequest, cb)
	assert(GetBucketReplicationRequest, "You must provide a GetBucketReplicationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketReplication",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?replication", GetBucketReplicationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketAnalyticsConfiguration
-- @param GetBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketAnalyticsConfigurationAsync(GetBucketAnalyticsConfigurationRequest, cb)
	assert(GetBucketAnalyticsConfigurationRequest, "You must provide a GetBucketAnalyticsConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketAnalyticsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?analytics", GetBucketAnalyticsConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketNotificationConfiguration
-- @param PutBucketNotificationConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketNotificationConfigurationAsync(PutBucketNotificationConfigurationRequest, cb)
	assert(PutBucketNotificationConfigurationRequest, "You must provide a PutBucketNotificationConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketNotificationConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?notification", PutBucketNotificationConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketAccelerateConfiguration
-- @param GetBucketAccelerateConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketAccelerateConfigurationAsync(GetBucketAccelerateConfigurationRequest, cb)
	assert(GetBucketAccelerateConfigurationRequest, "You must provide a GetBucketAccelerateConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketAccelerateConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?accelerate", GetBucketAccelerateConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteObjectTagging
-- @param DeleteObjectTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectTaggingAsync(DeleteObjectTaggingRequest, cb)
	assert(DeleteObjectTaggingRequest, "You must provide a DeleteObjectTaggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteObjectTagging",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?tagging", DeleteObjectTaggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketTagging
-- @param DeleteBucketTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketTaggingAsync(DeleteBucketTaggingRequest, cb)
	assert(DeleteBucketTaggingRequest, "You must provide a DeleteBucketTaggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketTagging",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?tagging", DeleteBucketTaggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetObjectTorrent
-- @param GetObjectTorrentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectTorrentAsync(GetObjectTorrentRequest, cb)
	assert(GetObjectTorrentRequest, "You must provide a GetObjectTorrentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetObjectTorrent",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?torrent", GetObjectTorrentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketLifecycle
-- @param GetBucketLifecycleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLifecycleAsync(GetBucketLifecycleRequest, cb)
	assert(GetBucketLifecycleRequest, "You must provide a GetBucketLifecycleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketLifecycle",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?lifecycle", GetBucketLifecycleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBucket
-- @param CreateBucketRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBucketAsync(CreateBucketRequest, cb)
	assert(CreateBucketRequest, "You must provide a CreateBucketRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateBucket",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}", CreateBucketRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CompleteMultipartUpload
-- @param CompleteMultipartUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CompleteMultipartUploadAsync(CompleteMultipartUploadRequest, cb)
	assert(CompleteMultipartUploadRequest, "You must provide a CompleteMultipartUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CompleteMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", CompleteMultipartUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketWebsite
-- @param GetBucketWebsiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketWebsiteAsync(GetBucketWebsiteRequest, cb)
	assert(GetBucketWebsiteRequest, "You must provide a GetBucketWebsiteRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketWebsite",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?website", GetBucketWebsiteRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateMultipartUpload
-- @param CreateMultipartUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMultipartUploadAsync(CreateMultipartUploadRequest, cb)
	assert(CreateMultipartUploadRequest, "You must provide a CreateMultipartUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?uploads", CreateMultipartUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucket
-- @param DeleteBucketRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketAsync(DeleteBucketRequest, cb)
	assert(DeleteBucketRequest, "You must provide a DeleteBucketRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucket",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}", DeleteBucketRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketNotification
-- @param PutBucketNotificationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketNotificationAsync(PutBucketNotificationRequest, cb)
	assert(PutBucketNotificationRequest, "You must provide a PutBucketNotificationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketNotification",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?notification", PutBucketNotificationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetObject
-- @param GetObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectAsync(GetObjectRequest, cb)
	assert(GetObjectRequest, "You must provide a GetObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetObject",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", GetObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutObjectTagging
-- @param PutObjectTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutObjectTaggingAsync(PutObjectTaggingRequest, cb)
	assert(PutObjectTaggingRequest, "You must provide a PutObjectTaggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutObjectTagging",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?tagging", PutObjectTaggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketPolicy
-- @param GetBucketPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketPolicyAsync(GetBucketPolicyRequest, cb)
	assert(GetBucketPolicyRequest, "You must provide a GetBucketPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?policy", GetBucketPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketVersioning
-- @param GetBucketVersioningRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketVersioningAsync(GetBucketVersioningRequest, cb)
	assert(GetBucketVersioningRequest, "You must provide a GetBucketVersioningRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketVersioning",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?versioning", GetBucketVersioningRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- HeadObject
-- @param HeadObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.HeadObjectAsync(HeadObjectRequest, cb)
	assert(HeadObjectRequest, "You must provide a HeadObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".HeadObject",
	}

	local request_handler, err = request_handlers.from_http_method("HEAD")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", HeadObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListMultipartUploads
-- @param ListMultipartUploadsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListMultipartUploadsAsync(ListMultipartUploadsRequest, cb)
	assert(ListMultipartUploadsRequest, "You must provide a ListMultipartUploadsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListMultipartUploads",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?uploads", ListMultipartUploadsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketLifecycleConfiguration
-- @param GetBucketLifecycleConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLifecycleConfigurationAsync(GetBucketLifecycleConfigurationRequest, cb)
	assert(GetBucketLifecycleConfigurationRequest, "You must provide a GetBucketLifecycleConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketLifecycleConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?lifecycle", GetBucketLifecycleConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketRequestPayment
-- @param GetBucketRequestPaymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketRequestPaymentAsync(GetBucketRequestPaymentRequest, cb)
	assert(GetBucketRequestPaymentRequest, "You must provide a GetBucketRequestPaymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketRequestPayment",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?requestPayment", GetBucketRequestPaymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketCors
-- @param PutBucketCorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketCorsAsync(PutBucketCorsRequest, cb)
	assert(PutBucketCorsRequest, "You must provide a PutBucketCorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketCors",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?cors", PutBucketCorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketTagging
-- @param PutBucketTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketTaggingAsync(PutBucketTaggingRequest, cb)
	assert(PutBucketTaggingRequest, "You must provide a PutBucketTaggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketTagging",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?tagging", PutBucketTaggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketTagging
-- @param GetBucketTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketTaggingAsync(GetBucketTaggingRequest, cb)
	assert(GetBucketTaggingRequest, "You must provide a GetBucketTaggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketTagging",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?tagging", GetBucketTaggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AbortMultipartUpload
-- @param AbortMultipartUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AbortMultipartUploadAsync(AbortMultipartUploadRequest, cb)
	assert(AbortMultipartUploadRequest, "You must provide a AbortMultipartUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AbortMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", AbortMultipartUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutObjectAcl
-- @param PutObjectAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutObjectAclAsync(PutObjectAclRequest, cb)
	assert(PutObjectAclRequest, "You must provide a PutObjectAclRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutObjectAcl",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?acl", PutObjectAclRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjectsV2
-- @param ListObjectsV2Request
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectsV2Async(ListObjectsV2Request, cb)
	assert(ListObjectsV2Request, "You must provide a ListObjectsV2Request")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectsV2",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?list-type=2", ListObjectsV2Request, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketLocation
-- @param GetBucketLocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLocationAsync(GetBucketLocationRequest, cb)
	assert(GetBucketLocationRequest, "You must provide a GetBucketLocationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketLocation",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?location", GetBucketLocationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketInventoryConfiguration
-- @param GetBucketInventoryConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketInventoryConfigurationAsync(GetBucketInventoryConfigurationRequest, cb)
	assert(GetBucketInventoryConfigurationRequest, "You must provide a GetBucketInventoryConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketInventoryConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?inventory", GetBucketInventoryConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketLifecycle
-- @param DeleteBucketLifecycleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketLifecycleAsync(DeleteBucketLifecycleRequest, cb)
	assert(DeleteBucketLifecycleRequest, "You must provide a DeleteBucketLifecycleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketLifecycle",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?lifecycle", DeleteBucketLifecycleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBucketNotification
-- @param GetBucketNotificationConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketNotificationAsync(GetBucketNotificationConfigurationRequest, cb)
	assert(GetBucketNotificationConfigurationRequest, "You must provide a GetBucketNotificationConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBucketNotification",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?notification", GetBucketNotificationConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketAnalyticsConfiguration
-- @param PutBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketAnalyticsConfigurationAsync(PutBucketAnalyticsConfigurationRequest, cb)
	assert(PutBucketAnalyticsConfigurationRequest, "You must provide a PutBucketAnalyticsConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketAnalyticsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?analytics", PutBucketAnalyticsConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListParts
-- @param ListPartsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPartsAsync(ListPartsRequest, cb)
	assert(ListPartsRequest, "You must provide a ListPartsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListParts",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", ListPartsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBucketAnalyticsConfigurations
-- @param ListBucketAnalyticsConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketAnalyticsConfigurationsAsync(ListBucketAnalyticsConfigurationsRequest, cb)
	assert(ListBucketAnalyticsConfigurationsRequest, "You must provide a ListBucketAnalyticsConfigurationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListBucketAnalyticsConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}?analytics", ListBucketAnalyticsConfigurationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetObjectAcl
-- @param GetObjectAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectAclAsync(GetObjectAclRequest, cb)
	assert(GetObjectAclRequest, "You must provide a GetObjectAclRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetObjectAcl",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?acl", GetObjectAclRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadPartCopy
-- @param UploadPartCopyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadPartCopyAsync(UploadPartCopyRequest, cb)
	assert(UploadPartCopyRequest, "You must provide a UploadPartCopyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadPartCopy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", UploadPartCopyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBucketMetricsConfiguration
-- @param PutBucketMetricsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketMetricsConfigurationAsync(PutBucketMetricsConfigurationRequest, cb)
	assert(PutBucketMetricsConfigurationRequest, "You must provide a PutBucketMetricsConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBucketMetricsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/{Bucket}?metrics", PutBucketMetricsConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteObject
-- @param DeleteObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectAsync(DeleteObjectRequest, cb)
	assert(DeleteObjectRequest, "You must provide a DeleteObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteObject",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}", DeleteObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreObject
-- @param RestoreObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreObjectAsync(RestoreObjectRequest, cb)
	assert(RestoreObjectRequest, "You must provide a RestoreObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreObject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/{Bucket}/{Key+}?restore", RestoreObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBucketAnalyticsConfiguration
-- @param DeleteBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketAnalyticsConfigurationAsync(DeleteBucketAnalyticsConfigurationRequest, cb)
	assert(DeleteBucketAnalyticsConfigurationRequest, "You must provide a DeleteBucketAnalyticsConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBucketAnalyticsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/{Bucket}?analytics", DeleteBucketAnalyticsConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
