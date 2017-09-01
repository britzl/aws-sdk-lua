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
-- * MFA [MFA] The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * VersioningConfiguration [VersioningConfiguration] 
-- Required key: Bucket
-- Required key: VersioningConfiguration
-- @return PutBucketVersioningRequest structure as a key-value pair table
function M.PutBucketVersioningRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketVersioningRequest")
	local t = { 
		["MFA"] = args["MFA"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["VersioningConfiguration"] = args["VersioningConfiguration"],
	}
	asserts.AssertPutBucketVersioningRequest(t)
	return t
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
-- * VersionId [ObjectVersionId] The versionId of the object the tag-set was removed from.
-- @return DeleteObjectTaggingOutput structure as a key-value pair table
function M.DeleteObjectTaggingOutput(args)
	assert(args, "You must provdide an argument table when creating DeleteObjectTaggingOutput")
	local t = { 
		["VersionId"] = args["VersionId"],
	}
	asserts.AssertDeleteObjectTaggingOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketReplicationRequest")
	local t = { 
		["ReplicationConfiguration"] = args["ReplicationConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketReplicationRequest(t)
	return t
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
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * RequestCharged [RequestCharged] 
-- * VersionId [ObjectVersionId] Version of the object.
-- * ETag [ETag] Entity tag for the uploaded object.
-- * Expiration [Expiration] If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @return PutObjectOutput structure as a key-value pair table
function M.PutObjectOutput(args)
	assert(args, "You must provdide an argument table when creating PutObjectOutput")
	local t = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["RequestCharged"] = args["RequestCharged"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["Expiration"] = args["Expiration"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertPutObjectOutput(t)
	return t
end

keys.ReplicationRule = { ["Status"] = true, ["Prefix"] = true, ["Destination"] = true, ["ID"] = true, nil }

function asserts.AssertReplicationRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationRule to be of type 'table'")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["Status"] then asserts.AssertReplicationRuleStatus(struct["Status"]) end
	if struct["Prefix"] then asserts.AssertPrefix(struct["Prefix"]) end
	if struct["Destination"] then asserts.AssertDestination(struct["Destination"]) end
	if struct["ID"] then asserts.AssertID(struct["ID"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationRule[k], "ReplicationRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationRule
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ReplicationRuleStatus] The rule is ignored if status is not Enabled.
-- * Prefix [Prefix] Object keyname prefix identifying one or more objects to which the rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes are not supported.
-- * Destination [Destination] 
-- * ID [ID] Unique identifier for the rule. The value cannot be longer than 255 characters.
-- Required key: Prefix
-- Required key: Status
-- Required key: Destination
-- @return ReplicationRule structure as a key-value pair table
function M.ReplicationRule(args)
	assert(args, "You must provdide an argument table when creating ReplicationRule")
	local t = { 
		["Status"] = args["Status"],
		["Prefix"] = args["Prefix"],
		["Destination"] = args["Destination"],
		["ID"] = args["ID"],
	}
	asserts.AssertReplicationRule(t)
	return t
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
-- * StorageClass [ObjectStorageClass] The class of storage used to store the object.
-- * Key [ObjectKey] 
-- * Owner [Owner] 
-- * Size [Size] 
-- @return Object structure as a key-value pair table
function M.Object(args)
	assert(args, "You must provdide an argument table when creating Object")
	local t = { 
		["LastModified"] = args["LastModified"],
		["ETag"] = args["ETag"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["Owner"] = args["Owner"],
		["Size"] = args["Size"],
	}
	asserts.AssertObject(t)
	return t
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
-- * IsLatest [IsLatest] Specifies whether the object is (true) or is not (false) the latest version of an object.
-- * VersionId [ObjectVersionId] Version ID of an object.
-- * Key [ObjectKey] The object key.
-- * LastModified [LastModified] Date and time the object was last modified.
-- @return DeleteMarkerEntry structure as a key-value pair table
function M.DeleteMarkerEntry(args)
	assert(args, "You must provdide an argument table when creating DeleteMarkerEntry")
	local t = { 
		["Owner"] = args["Owner"],
		["IsLatest"] = args["IsLatest"],
		["VersionId"] = args["VersionId"],
		["Key"] = args["Key"],
		["LastModified"] = args["LastModified"],
	}
	asserts.AssertDeleteMarkerEntry(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket from which an analytics configuration is deleted.
-- * Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required key: Bucket
-- Required key: Id
-- @return DeleteBucketAnalyticsConfigurationRequest structure as a key-value pair table
function M.DeleteBucketAnalyticsConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBucketAnalyticsConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteBucketAnalyticsConfigurationRequest(t)
	return t
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
-- * Filter [AnalyticsFilter] The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
-- * StorageClassAnalysis [StorageClassAnalysis] If present, it indicates that data related to access patterns will be collected and made available to analyze the tradeoffs between different storage classes.
-- * Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required key: Id
-- Required key: StorageClassAnalysis
-- @return AnalyticsConfiguration structure as a key-value pair table
function M.AnalyticsConfiguration(args)
	assert(args, "You must provdide an argument table when creating AnalyticsConfiguration")
	local t = { 
		["Filter"] = args["Filter"],
		["StorageClassAnalysis"] = args["StorageClassAnalysis"],
		["Id"] = args["Id"],
	}
	asserts.AssertAnalyticsConfiguration(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteBucketLifecycleRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketLifecycleRequest(t)
	return t
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
-- * S3BucketDestination [InventoryS3BucketDestination] Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
-- Required key: S3BucketDestination
-- @return InventoryDestination structure as a key-value pair table
function M.InventoryDestination(args)
	assert(args, "You must provdide an argument table when creating InventoryDestination")
	local t = { 
		["S3BucketDestination"] = args["S3BucketDestination"],
	}
	asserts.AssertInventoryDestination(t)
	return t
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
-- * Body [Body] Object data.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * RequestPayer [RequestPayer] 
-- * ContentLength [ContentLength] Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.
-- * ContentMD5 [ContentMD5] The base64-encoded 128-bit MD5 digest of the part data.
-- * Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.
-- * UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose part is being uploaded.
-- * Key [ObjectKey] Object key for which the multipart upload was initiated.
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- * PartNumber [PartNumber] Part number of part being uploaded. This is a positive integer between 1 and 10,000.
-- Required key: Bucket
-- Required key: Key
-- Required key: PartNumber
-- Required key: UploadId
-- @return UploadPartRequest structure as a key-value pair table
function M.UploadPartRequest(args)
	assert(args, "You must provdide an argument table when creating UploadPartRequest")
	local t = { 
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
	asserts.AssertUploadPartRequest(t)
	return t
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
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * CopySourceVersionId [CopySourceVersionId] The version of the source object that was copied, if you have enabled versioning on the source bucket.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * RequestCharged [RequestCharged] 
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- * CopyPartResult [CopyPartResult] 
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @return UploadPartCopyOutput structure as a key-value pair table
function M.UploadPartCopyOutput(args)
	assert(args, "You must provdide an argument table when creating UploadPartCopyOutput")
	local t = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["CopySourceVersionId"] = args["CopySourceVersionId"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["RequestCharged"] = args["RequestCharged"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["CopyPartResult"] = args["CopyPartResult"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertUploadPartCopyOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutObjectTaggingRequest")
	local t = { 
		["VersionId"] = args["VersionId"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["Tagging"] = args["Tagging"],
		["Key"] = args["Key"],
	}
	asserts.AssertPutObjectTaggingRequest(t)
	return t
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
-- * Value [Value] Value of the tag.
-- * Key [ObjectKey] Name of the tag.
-- Required key: Key
-- Required key: Value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provdide an argument table when creating Tag")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(t)
	return t
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
-- * Bucket [BucketName] Name of the bucket to get the notification configuration for.
-- Required key: Bucket
-- @return GetBucketNotificationConfigurationRequest structure as a key-value pair table
function M.GetBucketNotificationConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating GetBucketNotificationConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketNotificationConfigurationRequest(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket for which the metrics configuration is set.
-- * Id [MetricsId] The ID used to identify the metrics configuration.
-- * MetricsConfiguration [MetricsConfiguration] Specifies the metrics configuration.
-- Required key: Bucket
-- Required key: Id
-- Required key: MetricsConfiguration
-- @return PutBucketMetricsConfigurationRequest structure as a key-value pair table
function M.PutBucketMetricsConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketMetricsConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
		["MetricsConfiguration"] = args["MetricsConfiguration"],
	}
	asserts.AssertPutBucketMetricsConfigurationRequest(t)
	return t
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
-- * Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- * MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- * Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- * KeyMarker [KeyMarker] Specifies the key to start with when listing objects in a bucket.
-- * EncodingType [EncodingType] 
-- * VersionIdMarker [VersionIdMarker] Specifies the object version you want to start listing from.
-- Required key: Bucket
-- @return ListObjectVersionsRequest structure as a key-value pair table
function M.ListObjectVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListObjectVersionsRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["MaxKeys"] = args["MaxKeys"],
		["Delimiter"] = args["Delimiter"],
		["KeyMarker"] = args["KeyMarker"],
		["EncodingType"] = args["EncodingType"],
		["VersionIdMarker"] = args["VersionIdMarker"],
	}
	asserts.AssertListObjectVersionsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLoggingOutput")
	local t = { 
		["LoggingEnabled"] = args["LoggingEnabled"],
	}
	asserts.AssertGetBucketLoggingOutput(t)
	return t
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
-- * Tier [Tier] Glacier retrieval tier at which the restore will be processed.
-- Required key: Tier
-- @return GlacierJobParameters structure as a key-value pair table
function M.GlacierJobParameters(args)
	assert(args, "You must provdide an argument table when creating GlacierJobParameters")
	local t = { 
		["Tier"] = args["Tier"],
	}
	asserts.AssertGlacierJobParameters(t)
	return t
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
-- * Permission [BucketLogsPermission] Logging permissions assigned to the Grantee for the bucket.
-- @return TargetGrant structure as a key-value pair table
function M.TargetGrant(args)
	assert(args, "You must provdide an argument table when creating TargetGrant")
	local t = { 
		["Grantee"] = args["Grantee"],
		["Permission"] = args["Permission"],
	}
	asserts.AssertTargetGrant(t)
	return t
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
-- * Prefix [Prefix] The prefix used when evaluating an AND predicate.
-- * Tags [TagSet] The list of tags used when evaluating an AND predicate.
-- @return MetricsAndOperator structure as a key-value pair table
function M.MetricsAndOperator(args)
	assert(args, "You must provdide an argument table when creating MetricsAndOperator")
	local t = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertMetricsAndOperator(t)
	return t
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
-- * NextMarker [NextMarker] When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMaker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
-- * Delimiter [Delimiter] 
-- * MaxKeys [MaxKeys] 
-- * Prefix [Prefix] 
-- * Marker [Marker] 
-- * EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- * IsTruncated [IsTruncated] A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria.
-- * Contents [ObjectList] 
-- * CommonPrefixes [CommonPrefixList] 
-- @return ListObjectsOutput structure as a key-value pair table
function M.ListObjectsOutput(args)
	assert(args, "You must provdide an argument table when creating ListObjectsOutput")
	local t = { 
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
	asserts.AssertListObjectsOutput(t)
	return t
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
-- * MFA [MFA] The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
-- * VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return DeleteObjectRequest structure as a key-value pair table
function M.DeleteObjectRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteObjectRequest")
	local t = { 
		["MFA"] = args["MFA"],
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertDeleteObjectRequest(t)
	return t
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
-- This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Prefix [Prefix] 
-- * Tags [TagSet] All of these tags must exist in the object's tag set in order for the rule to apply.
-- @return LifecycleRuleAndOperator structure as a key-value pair table
function M.LifecycleRuleAndOperator(args)
	assert(args, "You must provdide an argument table when creating LifecycleRuleAndOperator")
	local t = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertLifecycleRuleAndOperator(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketWebsiteRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketWebsiteRequest(t)
	return t
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
-- * Payer [Payer] Specifies who pays for the download and request fees.
-- @return GetBucketRequestPaymentOutput structure as a key-value pair table
function M.GetBucketRequestPaymentOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketRequestPaymentOutput")
	local t = { 
		["Payer"] = args["Payer"],
	}
	asserts.AssertGetBucketRequestPaymentOutput(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket containing the metrics configurations to retrieve.
-- * ContinuationToken [Token] The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
-- Required key: Bucket
-- @return ListBucketMetricsConfigurationsRequest structure as a key-value pair table
function M.ListBucketMetricsConfigurationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListBucketMetricsConfigurationsRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketMetricsConfigurationsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Owner")
	local t = { 
		["DisplayName"] = args["DisplayName"],
		["ID"] = args["ID"],
	}
	asserts.AssertOwner(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CopyObjectResult")
	local t = { 
		["LastModified"] = args["LastModified"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCopyObjectResult(t)
	return t
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
-- * Status [ExpirationStatus] If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
-- * NoncurrentVersionExpiration [NoncurrentVersionExpiration] 
-- * NoncurrentVersionTransitions [NoncurrentVersionTransitionList] 
-- * Filter [LifecycleRuleFilter] 
-- * Prefix [Prefix] Prefix identifying one or more objects to which the rule applies. This is deprecated; use Filter instead.
-- * Expiration [LifecycleExpiration] 
-- * AbortIncompleteMultipartUpload [AbortIncompleteMultipartUpload] 
-- * Transitions [TransitionList] 
-- * ID [ID] Unique identifier for the rule. The value cannot be longer than 255 characters.
-- Required key: Status
-- @return LifecycleRule structure as a key-value pair table
function M.LifecycleRule(args)
	assert(args, "You must provdide an argument table when creating LifecycleRule")
	local t = { 
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
	asserts.AssertLifecycleRule(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLifecycleOutput")
	local t = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertGetBucketLifecycleOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetObjectTaggingRequest")
	local t = { 
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetObjectTaggingRequest(t)
	return t
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
-- * VersionId [ObjectVersionId] Version of the object.
-- * ETag [ETag] Entity tag of the object.
-- * Location [Location] 
-- * Key [ObjectKey] 
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- * Expiration [Expiration] If the object expiration is configured, this will contain the expiration date (expiry-date) and rule ID (rule-id). The value of rule-id is URL encoded.
-- @return CompleteMultipartUploadOutput structure as a key-value pair table
function M.CompleteMultipartUploadOutput(args)
	assert(args, "You must provdide an argument table when creating CompleteMultipartUploadOutput")
	local t = { 
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
	asserts.AssertCompleteMultipartUploadOutput(t)
	return t
end

keys.ObjectAlreadyInActiveTierError = { nil }

function asserts.AssertObjectAlreadyInActiveTierError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAlreadyInActiveTierError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ObjectAlreadyInActiveTierError[k], "ObjectAlreadyInActiveTierError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAlreadyInActiveTierError
-- This operation is not allowed against this storage tier
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ObjectAlreadyInActiveTierError structure as a key-value pair table
function M.ObjectAlreadyInActiveTierError(args)
	assert(args, "You must provdide an argument table when creating ObjectAlreadyInActiveTierError")
	local t = { 
	}
	asserts.AssertObjectAlreadyInActiveTierError(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket containing the inventory configuration to delete.
-- * Id [InventoryId] The ID used to identify the inventory configuration.
-- Required key: Bucket
-- Required key: Id
-- @return DeleteBucketInventoryConfigurationRequest structure as a key-value pair table
function M.DeleteBucketInventoryConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBucketInventoryConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteBucketInventoryConfigurationRequest(t)
	return t
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
-- * EmailAddress [EmailAddress] Email address of the grantee.
-- * Type [Type] Type of grantee
-- * DisplayName [DisplayName] Screen name of the grantee.
-- * ID [ID] The canonical user ID of the grantee.
-- * URI [URI] URI of the grantee group.
-- Required key: Type
-- @return Grantee structure as a key-value pair table
function M.Grantee(args)
	assert(args, "You must provdide an argument table when creating Grantee")
	local t = { 
		["EmailAddress"] = args["EmailAddress"],
		["Type"] = args["Type"],
		["DisplayName"] = args["DisplayName"],
		["ID"] = args["ID"],
		["URI"] = args["URI"],
	}
	asserts.AssertGrantee(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketLifecycleRequest")
	local t = { 
		["LifecycleConfiguration"] = args["LifecycleConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketLifecycleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetObjectTorrentOutput")
	local t = { 
		["Body"] = args["Body"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertGetObjectTorrentOutput(t)
	return t
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
-- * Status [ExpirationStatus] If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being applied.
-- * NoncurrentVersionExpiration [NoncurrentVersionExpiration] 
-- * Transition [Transition] 
-- * Prefix [Prefix] Prefix identifying one or more objects to which the rule applies.
-- * Expiration [LifecycleExpiration] 
-- * AbortIncompleteMultipartUpload [AbortIncompleteMultipartUpload] 
-- * NoncurrentVersionTransition [NoncurrentVersionTransition] 
-- * ID [ID] Unique identifier for the rule. The value cannot be longer than 255 characters.
-- Required key: Prefix
-- Required key: Status
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provdide an argument table when creating Rule")
	local t = { 
		["Status"] = args["Status"],
		["NoncurrentVersionExpiration"] = args["NoncurrentVersionExpiration"],
		["Transition"] = args["Transition"],
		["Prefix"] = args["Prefix"],
		["Expiration"] = args["Expiration"],
		["AbortIncompleteMultipartUpload"] = args["AbortIncompleteMultipartUpload"],
		["NoncurrentVersionTransition"] = args["NoncurrentVersionTransition"],
		["ID"] = args["ID"],
	}
	asserts.AssertRule(t)
	return t
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
-- * VersionId [ObjectVersionId] The versionId of the object that the tag-set will be removed from.
-- * Bucket [BucketName] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return DeleteObjectTaggingRequest structure as a key-value pair table
function M.DeleteObjectTaggingRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteObjectTaggingRequest")
	local t = { 
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["Key"] = args["Key"],
	}
	asserts.AssertDeleteObjectTaggingRequest(t)
	return t
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
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- * IfUnmodifiedSince [IfUnmodifiedSince] Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
-- * VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- * RequestPayer [RequestPayer] 
-- * Bucket [BucketName] 
-- * IfNoneMatch [IfNoneMatch] Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
-- * Range [Range] Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
-- * Key [ObjectKey] 
-- * IfMatch [IfMatch] Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- * PartNumber [PartNumber] Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and the number of parts in this object.
-- * IfModifiedSince [IfModifiedSince] Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
-- Required key: Bucket
-- Required key: Key
-- @return HeadObjectRequest structure as a key-value pair table
function M.HeadObjectRequest(args)
	assert(args, "You must provdide an argument table when creating HeadObjectRequest")
	local t = { 
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
	asserts.AssertHeadObjectRequest(t)
	return t
end

keys.BucketAlreadyOwnedByYou = { nil }

function asserts.AssertBucketAlreadyOwnedByYou(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketAlreadyOwnedByYou to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BucketAlreadyOwnedByYou[k], "BucketAlreadyOwnedByYou contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketAlreadyOwnedByYou
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BucketAlreadyOwnedByYou structure as a key-value pair table
function M.BucketAlreadyOwnedByYou(args)
	assert(args, "You must provdide an argument table when creating BucketAlreadyOwnedByYou")
	local t = { 
	}
	asserts.AssertBucketAlreadyOwnedByYou(t)
	return t
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
-- * Initiator [Initiator] Identifies who initiated the multipart upload.
-- * AbortRuleId [AbortRuleId] Id of the lifecycle rule that makes a multipart upload eligible for abort operation.
-- * AbortDate [AbortDate] Date when multipart upload will become eligible for abort operation by lifecycle.
-- * Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- * NextPartNumberMarker [NextPartNumberMarker] When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
-- * Parts [Parts] 
-- * UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose parts are being listed.
-- * StorageClass [StorageClass] The class of storage used to store the object.
-- * Key [ObjectKey] Object key for which the multipart upload was initiated.
-- * RequestCharged [RequestCharged] 
-- * Owner [Owner] 
-- * MaxParts [MaxParts] Maximum number of parts that were allowed in the response.
-- * IsTruncated [IsTruncated] Indicates whether the returned list of parts is truncated.
-- * PartNumberMarker [PartNumberMarker] Part number after which listing begins.
-- @return ListPartsOutput structure as a key-value pair table
function M.ListPartsOutput(args)
	assert(args, "You must provdide an argument table when creating ListPartsOutput")
	local t = { 
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
	asserts.AssertListPartsOutput(t)
	return t
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
-- * PartNumber [PartNumber] Part number that identifies the part. This is a positive integer between 1 and 10,000.
-- * ETag [ETag] Entity tag returned when the part was uploaded.
-- @return CompletedPart structure as a key-value pair table
function M.CompletedPart(args)
	assert(args, "You must provdide an argument table when creating CompletedPart")
	local t = { 
		["PartNumber"] = args["PartNumber"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCompletedPart(t)
	return t
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
-- * AnalyticsConfiguration [AnalyticsConfiguration] The configuration and any analyses for the analytics filter.
-- * Bucket [BucketName] The name of the bucket to which an analytics configuration is stored.
-- * Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required key: Bucket
-- Required key: Id
-- Required key: AnalyticsConfiguration
-- @return PutBucketAnalyticsConfigurationRequest structure as a key-value pair table
function M.PutBucketAnalyticsConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketAnalyticsConfigurationRequest")
	local t = { 
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertPutBucketAnalyticsConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CORSConfiguration")
	local t = { 
		["CORSRules"] = args["CORSRules"],
	}
	asserts.AssertCORSConfiguration(t)
	return t
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
-- * LastModified [LastModified] Last modified date of the object
-- * ContentRange [ContentRange] The portion of the object returned in the response.
-- * RequestCharged [RequestCharged] 
-- * ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- * ReplicationStatus [ReplicationStatus] 
-- * StorageClass [StorageClass] 
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- * TagCount [TagCount] The number of tags, if any, on the object.
-- * ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- * Metadata [Metadata] A map of metadata to store with the object in S3.
-- * Body [Body] Object data.
-- * AcceptRanges [AcceptRanges] 
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- * Expires [Expires] The date and time at which the object is no longer cacheable.
-- * DeleteMarker [DeleteMarker] Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
-- * CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- * PartsCount [PartsCount] The count of parts this object has.
-- * ContentLength [ContentLength] Size of the body in bytes.
-- * Expiration [Expiration] If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
-- * MissingMeta [MissingMeta] This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
-- * Restore [Restore] Provides information about object restoration operation and expiration time of the restored object copy.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * ContentType [ContentType] A standard MIME type describing the format of the object data.
-- * ContentLanguage [ContentLanguage] The language the content is in.
-- * VersionId [ObjectVersionId] Version of the object.
-- * ETag [ETag] An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @return GetObjectOutput structure as a key-value pair table
function M.GetObjectOutput(args)
	assert(args, "You must provdide an argument table when creating GetObjectOutput")
	local t = { 
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
	asserts.AssertGetObjectOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketVersioningRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketVersioningRequest(t)
	return t
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
-- * AccelerateConfiguration [AccelerateConfiguration] Specifies the Accelerate Configuration you want to set for the bucket.
-- * Bucket [BucketName] Name of the bucket for which the accelerate configuration is set.
-- Required key: Bucket
-- Required key: AccelerateConfiguration
-- @return PutBucketAccelerateConfigurationRequest structure as a key-value pair table
function M.PutBucketAccelerateConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketAccelerateConfigurationRequest")
	local t = { 
		["AccelerateConfiguration"] = args["AccelerateConfiguration"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketAccelerateConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketRequestPaymentRequest")
	local t = { 
		["RequestPaymentConfiguration"] = args["RequestPaymentConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketRequestPaymentRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLocationOutput")
	local t = { 
		["LocationConstraint"] = args["LocationConstraint"],
	}
	asserts.AssertGetBucketLocationOutput(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket containing the inventory configuration to retrieve.
-- * Id [InventoryId] The ID used to identify the inventory configuration.
-- Required key: Bucket
-- Required key: Id
-- @return GetBucketInventoryConfigurationRequest structure as a key-value pair table
function M.GetBucketInventoryConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating GetBucketInventoryConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetBucketInventoryConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketTaggingRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketTaggingRequest(t)
	return t
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
-- * And [AnalyticsAndOperator] A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.
-- * Prefix [Prefix] The prefix to use when evaluating an analytics filter.
-- * Tag [Tag] The tag to use when evaluating an analytics filter.
-- @return AnalyticsFilter structure as a key-value pair table
function M.AnalyticsFilter(args)
	assert(args, "You must provdide an argument table when creating AnalyticsFilter")
	local t = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertAnalyticsFilter(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CommonPrefix")
	local t = { 
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertCommonPrefix(t)
	return t
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
	assert(args, "You must provdide an argument table when creating LifecycleConfiguration")
	local t = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertLifecycleConfiguration(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteBucketTaggingRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketTaggingRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketWebsiteOutput")
	local t = { 
		["RedirectAllRequestsTo"] = args["RedirectAllRequestsTo"],
		["IndexDocument"] = args["IndexDocument"],
		["ErrorDocument"] = args["ErrorDocument"],
		["RoutingRules"] = args["RoutingRules"],
	}
	asserts.AssertGetBucketWebsiteOutput(t)
	return t
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
-- Container for object key name prefix and suffix filtering rules.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterRules [FilterRuleList] 
-- @return S3KeyFilter structure as a key-value pair table
function M.S3KeyFilter(args)
	assert(args, "You must provdide an argument table when creating S3KeyFilter")
	local t = { 
		["FilterRules"] = args["FilterRules"],
	}
	asserts.AssertS3KeyFilter(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLocationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLocationRequest(t)
	return t
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
-- * HostName [HostName] Name of the host where requests will be redirected.
-- * Protocol [Protocol] Protocol to use (http, https) when redirecting requests. The default is the protocol that is used in the original request.
-- Required key: HostName
-- @return RedirectAllRequestsTo structure as a key-value pair table
function M.RedirectAllRequestsTo(args)
	assert(args, "You must provdide an argument table when creating RedirectAllRequestsTo")
	local t = { 
		["HostName"] = args["HostName"],
		["Protocol"] = args["Protocol"],
	}
	asserts.AssertRedirectAllRequestsTo(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateBucketOutput")
	local t = { 
		["Location"] = args["Location"],
	}
	asserts.AssertCreateBucketOutput(t)
	return t
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
-- * GrantFullControl [GrantFullControl] Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
-- * GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable bucket.
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * ACL [BucketCannedACL] The canned ACL to apply to the bucket.
-- * AccessControlPolicy [AccessControlPolicy] 
-- * GrantWrite [GrantWrite] Allows grantee to create, overwrite, and delete any object in the bucket.
-- * GrantRead [GrantRead] Allows grantee to list the objects in the bucket.
-- * GrantReadACP [GrantReadACP] Allows grantee to read the bucket ACL.
-- Required key: Bucket
-- @return PutBucketAclRequest structure as a key-value pair table
function M.PutBucketAclRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketAclRequest")
	local t = { 
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
	asserts.AssertPutBucketAclRequest(t)
	return t
end

keys.PutBucketPolicyRequest = { ["Policy"] = true, ["ContentMD5"] = true, ["Bucket"] = true, nil }

function asserts.AssertPutBucketPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBucketPolicyRequest to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	if struct["ContentMD5"] then asserts.AssertContentMD5(struct["ContentMD5"]) end
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBucketPolicyRequest[k], "PutBucketPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBucketPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] The bucket policy as a JSON document.
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- Required key: Bucket
-- Required key: Policy
-- @return PutBucketPolicyRequest structure as a key-value pair table
function M.PutBucketPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketPolicyRequest")
	local t = { 
		["Policy"] = args["Policy"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketPolicyRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketCorsRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketCorsRequest(t)
	return t
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
-- * DataExport [StorageClassAnalysisDataExport] A container used to describe how data related to the storage class analysis should be exported.
-- @return StorageClassAnalysis structure as a key-value pair table
function M.StorageClassAnalysis(args)
	assert(args, "You must provdide an argument table when creating StorageClassAnalysis")
	local t = { 
		["DataExport"] = args["DataExport"],
	}
	asserts.AssertStorageClassAnalysis(t)
	return t
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
-- * Status [BucketAccelerateStatus] The accelerate configuration of the bucket.
-- @return AccelerateConfiguration structure as a key-value pair table
function M.AccelerateConfiguration(args)
	assert(args, "You must provdide an argument table when creating AccelerateConfiguration")
	local t = { 
		["Status"] = args["Status"],
	}
	asserts.AssertAccelerateConfiguration(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketCorsRequest")
	local t = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["CORSConfiguration"] = args["CORSConfiguration"],
	}
	asserts.AssertPutBucketCorsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketWebsiteRequest")
	local t = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["WebsiteConfiguration"] = args["WebsiteConfiguration"],
	}
	asserts.AssertPutBucketWebsiteRequest(t)
	return t
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
-- * Topic [TopicArn] Amazon SNS topic to which Amazon S3 will publish a message to report the specified events for the bucket.
-- * Id [NotificationId] 
-- * Event [Event] Bucket event for which to send notifications.
-- * Events [EventList] 
-- @return TopicConfigurationDeprecated structure as a key-value pair table
function M.TopicConfigurationDeprecated(args)
	assert(args, "You must provdide an argument table when creating TopicConfigurationDeprecated")
	local t = { 
		["Topic"] = args["Topic"],
		["Id"] = args["Id"],
		["Event"] = args["Event"],
		["Events"] = args["Events"],
	}
	asserts.AssertTopicConfigurationDeprecated(t)
	return t
end

keys.BucketAlreadyExists = { nil }

function asserts.AssertBucketAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketAlreadyExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BucketAlreadyExists[k], "BucketAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketAlreadyExists
-- The requested bucket name is not available. The bucket namespace is shared by all users of the system. Please select a different name and try again.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BucketAlreadyExists structure as a key-value pair table
function M.BucketAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating BucketAlreadyExists")
	local t = { 
	}
	asserts.AssertBucketAlreadyExists(t)
	return t
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
-- * GrantFullControl [GrantFullControl] Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
-- * GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable bucket.
-- * Key [ObjectKey] 
-- * RequestPayer [RequestPayer] 
-- * ContentMD5 [ContentMD5] 
-- * Bucket [BucketName] 
-- * ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- * AccessControlPolicy [AccessControlPolicy] 
-- * GrantWrite [GrantWrite] Allows grantee to create, overwrite, and delete any object in the bucket.
-- * VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- * GrantRead [GrantRead] Allows grantee to list the objects in the bucket.
-- * GrantReadACP [GrantReadACP] Allows grantee to read the bucket ACL.
-- Required key: Bucket
-- Required key: Key
-- @return PutObjectAclRequest structure as a key-value pair table
function M.PutObjectAclRequest(args)
	assert(args, "You must provdide an argument table when creating PutObjectAclRequest")
	local t = { 
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
	asserts.AssertPutObjectAclRequest(t)
	return t
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
-- * VersionId [ObjectVersionId] Returns the version ID of the delete marker created as a result of the DELETE operation.
-- * RequestCharged [RequestCharged] 
-- * DeleteMarker [DeleteMarker] Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker.
-- @return DeleteObjectOutput structure as a key-value pair table
function M.DeleteObjectOutput(args)
	assert(args, "You must provdide an argument table when creating DeleteObjectOutput")
	local t = { 
		["VersionId"] = args["VersionId"],
		["RequestCharged"] = args["RequestCharged"],
		["DeleteMarker"] = args["DeleteMarker"],
	}
	asserts.AssertDeleteObjectOutput(t)
	return t
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
-- * LocationConstraint [BucketLocationConstraint] Specifies the region where the bucket will be created. If you don't specify a region, the bucket will be created in US Standard.
-- @return CreateBucketConfiguration structure as a key-value pair table
function M.CreateBucketConfiguration(args)
	assert(args, "You must provdide an argument table when creating CreateBucketConfiguration")
	local t = { 
		["LocationConstraint"] = args["LocationConstraint"],
	}
	asserts.AssertCreateBucketConfiguration(t)
	return t
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
-- * Status [BucketAccelerateStatus] The accelerate configuration of the bucket.
-- @return GetBucketAccelerateConfigurationOutput structure as a key-value pair table
function M.GetBucketAccelerateConfigurationOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketAccelerateConfigurationOutput")
	local t = { 
		["Status"] = args["Status"],
	}
	asserts.AssertGetBucketAccelerateConfigurationOutput(t)
	return t
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
-- * RequestPayer [RequestPayer] Confirms that the requester knows that she or he will be charged for the list objects request. Bucket owners need not specify this parameter in their requests.
-- * Bucket [BucketName] 
-- * Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- * MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- * Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- * Marker [Marker] Specifies the key to start with when listing objects in a bucket.
-- * EncodingType [EncodingType] 
-- Required key: Bucket
-- @return ListObjectsRequest structure as a key-value pair table
function M.ListObjectsRequest(args)
	assert(args, "You must provdide an argument table when creating ListObjectsRequest")
	local t = { 
		["RequestPayer"] = args["RequestPayer"],
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["MaxKeys"] = args["MaxKeys"],
		["Delimiter"] = args["Delimiter"],
		["Marker"] = args["Marker"],
		["EncodingType"] = args["EncodingType"],
	}
	asserts.AssertListObjectsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteBucketRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteBucketPolicyRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketPolicyRequest(t)
	return t
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
-- * Status [BucketVersioningStatus] The versioning state of the bucket.
-- * MFADelete [MFADelete] Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
-- @return VersioningConfiguration structure as a key-value pair table
function M.VersioningConfiguration(args)
	assert(args, "You must provdide an argument table when creating VersioningConfiguration")
	local t = { 
		["Status"] = args["Status"],
		["MFADelete"] = args["MFADelete"],
	}
	asserts.AssertVersioningConfiguration(t)
	return t
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
-- * GrantFullControl [GrantFullControl] Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.
-- * CreateBucketConfiguration [CreateBucketConfiguration] 
-- * GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable bucket.
-- * Bucket [BucketName] 
-- * ACL [BucketCannedACL] The canned ACL to apply to the bucket.
-- * GrantWrite [GrantWrite] Allows grantee to create, overwrite, and delete any object in the bucket.
-- * GrantRead [GrantRead] Allows grantee to list the objects in the bucket.
-- * GrantReadACP [GrantReadACP] Allows grantee to read the bucket ACL.
-- Required key: Bucket
-- @return CreateBucketRequest structure as a key-value pair table
function M.CreateBucketRequest(args)
	assert(args, "You must provdide an argument table when creating CreateBucketRequest")
	local t = { 
		["GrantFullControl"] = args["GrantFullControl"],
		["CreateBucketConfiguration"] = args["CreateBucketConfiguration"],
		["GrantWriteACP"] = args["GrantWriteACP"],
		["Bucket"] = args["Bucket"],
		["ACL"] = args["ACL"],
		["GrantWrite"] = args["GrantWrite"],
		["GrantRead"] = args["GrantRead"],
		["GrantReadACP"] = args["GrantReadACP"],
	}
	asserts.AssertCreateBucketRequest(t)
	return t
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
-- Container for object key name filtering rules. For information about key name filtering, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Key [S3KeyFilter] 
-- @return NotificationConfigurationFilter structure as a key-value pair table
function M.NotificationConfigurationFilter(args)
	assert(args, "You must provdide an argument table when creating NotificationConfigurationFilter")
	local t = { 
		["Key"] = args["Key"],
	}
	asserts.AssertNotificationConfigurationFilter(t)
	return t
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
-- * InventoryConfiguration [InventoryConfiguration] Specifies the inventory configuration.
-- @return GetBucketInventoryConfigurationOutput structure as a key-value pair table
function M.GetBucketInventoryConfigurationOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketInventoryConfigurationOutput")
	local t = { 
		["InventoryConfiguration"] = args["InventoryConfiguration"],
	}
	asserts.AssertGetBucketInventoryConfigurationOutput(t)
	return t
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
-- * Grants [Grants] A list of grants.
-- @return AccessControlPolicy structure as a key-value pair table
function M.AccessControlPolicy(args)
	assert(args, "You must provdide an argument table when creating AccessControlPolicy")
	local t = { 
		["Owner"] = args["Owner"],
		["Grants"] = args["Grants"],
	}
	asserts.AssertAccessControlPolicy(t)
	return t
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
-- * Quiet [Quiet] Element to enable quiet mode for the request. When you add this element, you must set its value to true.
-- Required key: Objects
-- @return Delete structure as a key-value pair table
function M.Delete(args)
	assert(args, "You must provdide an argument table when creating Delete")
	local t = { 
		["Objects"] = args["Objects"],
		["Quiet"] = args["Quiet"],
	}
	asserts.AssertDelete(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketNotificationConfigurationRequest")
	local t = { 
		["NotificationConfiguration"] = args["NotificationConfiguration"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketNotificationConfigurationRequest(t)
	return t
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
-- * S3BucketDestination [AnalyticsS3BucketDestination] A destination signifying output to an S3 bucket.
-- Required key: S3BucketDestination
-- @return AnalyticsExportDestination structure as a key-value pair table
function M.AnalyticsExportDestination(args)
	assert(args, "You must provdide an argument table when creating AnalyticsExportDestination")
	local t = { 
		["S3BucketDestination"] = args["S3BucketDestination"],
	}
	asserts.AssertAnalyticsExportDestination(t)
	return t
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
-- * Schedule [InventorySchedule] Specifies the schedule for generating inventory results.
-- * IsEnabled [IsEnabled] Specifies whether the inventory is enabled or disabled.
-- * Destination [InventoryDestination] Contains information about where to publish the inventory results.
-- * OptionalFields [InventoryOptionalFields] Contains the optional fields that are included in the inventory results.
-- * Filter [InventoryFilter] Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
-- * IncludedObjectVersions [InventoryIncludedObjectVersions] Specifies which object version(s) to included in the inventory results.
-- * Id [InventoryId] The ID used to identify the inventory configuration.
-- Required key: Destination
-- Required key: IsEnabled
-- Required key: Id
-- Required key: IncludedObjectVersions
-- Required key: Schedule
-- @return InventoryConfiguration structure as a key-value pair table
function M.InventoryConfiguration(args)
	assert(args, "You must provdide an argument table when creating InventoryConfiguration")
	local t = { 
		["Schedule"] = args["Schedule"],
		["IsEnabled"] = args["IsEnabled"],
		["Destination"] = args["Destination"],
		["OptionalFields"] = args["OptionalFields"],
		["Filter"] = args["Filter"],
		["IncludedObjectVersions"] = args["IncludedObjectVersions"],
		["Id"] = args["Id"],
	}
	asserts.AssertInventoryConfiguration(t)
	return t
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
-- Container for specifying the AWS Lambda notification configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NotificationConfigurationFilter] 
-- * LambdaFunctionArn [LambdaFunctionArn] Lambda cloud function ARN that Amazon S3 can invoke when it detects events of the specified type.
-- * Id [NotificationId] 
-- * Events [EventList] 
-- Required key: LambdaFunctionArn
-- Required key: Events
-- @return LambdaFunctionConfiguration structure as a key-value pair table
function M.LambdaFunctionConfiguration(args)
	assert(args, "You must provdide an argument table when creating LambdaFunctionConfiguration")
	local t = { 
		["Filter"] = args["Filter"],
		["LambdaFunctionArn"] = args["LambdaFunctionArn"],
		["Id"] = args["Id"],
		["Events"] = args["Events"],
	}
	asserts.AssertLambdaFunctionConfiguration(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLifecycleConfigurationOutput")
	local t = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertGetBucketLifecycleConfigurationOutput(t)
	return t
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
-- Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NoncurrentDays [Days] Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">How Amazon S3 Calculates When an Object Became Noncurrent</a> in the Amazon Simple Storage Service Developer Guide.
-- @return NoncurrentVersionExpiration structure as a key-value pair table
function M.NoncurrentVersionExpiration(args)
	assert(args, "You must provdide an argument table when creating NoncurrentVersionExpiration")
	local t = { 
		["NoncurrentDays"] = args["NoncurrentDays"],
	}
	asserts.AssertNoncurrentVersionExpiration(t)
	return t
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
-- Container for key value pair that defines the criteria for the filter rule.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [FilterRuleName] Object key name prefix or suffix identifying one or more objects to which the filtering rule applies. Maximum prefix length can be up to 1,024 characters. Overlapping prefixes and suffixes are not supported. For more information, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.
-- * Value [FilterRuleValue] 
-- @return FilterRule structure as a key-value pair table
function M.FilterRule(args)
	assert(args, "You must provdide an argument table when creating FilterRule")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertFilterRule(t)
	return t
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
-- * LastModified [LastModified] Last modified date of the object
-- * RequestCharged [RequestCharged] 
-- * ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- * ReplicationStatus [ReplicationStatus] 
-- * StorageClass [StorageClass] 
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- * ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- * Metadata [Metadata] A map of metadata to store with the object in S3.
-- * AcceptRanges [AcceptRanges] 
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- * Expires [Expires] The date and time at which the object is no longer cacheable.
-- * DeleteMarker [DeleteMarker] Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
-- * CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- * PartsCount [PartsCount] The count of parts this object has.
-- * ContentLength [ContentLength] Size of the body in bytes.
-- * Expiration [Expiration] If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
-- * MissingMeta [MissingMeta] This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
-- * Restore [Restore] Provides information about object restoration operation and expiration time of the restored object copy.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * ContentType [ContentType] A standard MIME type describing the format of the object data.
-- * ContentLanguage [ContentLanguage] The language the content is in.
-- * VersionId [ObjectVersionId] Version of the object.
-- * ETag [ETag] An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @return HeadObjectOutput structure as a key-value pair table
function M.HeadObjectOutput(args)
	assert(args, "You must provdide an argument table when creating HeadObjectOutput")
	local t = { 
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
	asserts.AssertHeadObjectOutput(t)
	return t
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
-- * AnalyticsConfiguration [AnalyticsConfiguration] The configuration and any analyses for the analytics filter.
-- @return GetBucketAnalyticsConfigurationOutput structure as a key-value pair table
function M.GetBucketAnalyticsConfigurationOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketAnalyticsConfigurationOutput")
	local t = { 
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
	}
	asserts.AssertGetBucketAnalyticsConfigurationOutput(t)
	return t
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
-- Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA or GLACIER storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA or GLACIER storage class at a specific period in the object's lifetime.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NoncurrentDays [Days] Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">How Amazon S3 Calculates When an Object Became Noncurrent</a> in the Amazon Simple Storage Service Developer Guide.
-- * StorageClass [TransitionStorageClass] The class of storage used to store the object.
-- @return NoncurrentVersionTransition structure as a key-value pair table
function M.NoncurrentVersionTransition(args)
	assert(args, "You must provdide an argument table when creating NoncurrentVersionTransition")
	local t = { 
		["NoncurrentDays"] = args["NoncurrentDays"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertNoncurrentVersionTransition(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketNotificationRequest")
	local t = { 
		["NotificationConfiguration"] = args["NotificationConfiguration"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketNotificationRequest(t)
	return t
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
-- * MFA [MFA] The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Delete [Delete] 
-- Required key: Bucket
-- Required key: Delete
-- @return DeleteObjectsRequest structure as a key-value pair table
function M.DeleteObjectsRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteObjectsRequest")
	local t = { 
		["MFA"] = args["MFA"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Delete"] = args["Delete"],
	}
	asserts.AssertDeleteObjectsRequest(t)
	return t
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
-- * ReplaceKeyWith [ReplaceKeyWith] The specific object key to use in the redirect request. For example, redirect request to error.html. Not required if one of the sibling is present. Can be present only if ReplaceKeyPrefixWith is not provided.
-- * HostName [HostName] The host name to use in the redirect request.
-- * Protocol [Protocol] Protocol to use (http, https) when redirecting requests. The default is the protocol that is used in the original request.
-- * ReplaceKeyPrefixWith [ReplaceKeyPrefixWith] The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix docs/ (objects in the docs/ folder) to documents/, you can set a condition block with KeyPrefixEquals set to docs/ and in the Redirect set ReplaceKeyPrefixWith to /documents. Not required if one of the siblings is present. Can be present only if ReplaceKeyWith is not provided.
-- * HttpRedirectCode [HttpRedirectCode] The HTTP redirect code to use on the response. Not required if one of the siblings is present.
-- @return Redirect structure as a key-value pair table
function M.Redirect(args)
	assert(args, "You must provdide an argument table when creating Redirect")
	local t = { 
		["ReplaceKeyWith"] = args["ReplaceKeyWith"],
		["HostName"] = args["HostName"],
		["Protocol"] = args["Protocol"],
		["ReplaceKeyPrefixWith"] = args["ReplaceKeyPrefixWith"],
		["HttpRedirectCode"] = args["HttpRedirectCode"],
	}
	asserts.AssertRedirect(t)
	return t
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
-- * CopySourceIfMatch [CopySourceIfMatch] Copies the object if its entity tag (ETag) matches the specified tag.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * CopySourceSSECustomerKeyMD5 [CopySourceSSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- * RequestPayer [RequestPayer] 
-- * CopySourceSSECustomerKey [CopySourceSSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
-- * CopySourceSSECustomerAlgorithm [CopySourceSSECustomerAlgorithm] Specifies the algorithm to use when decrypting the source object (e.g., AES256).
-- * CopySource [CopySource] The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.
-- * CopySourceIfModifiedSince [CopySourceIfModifiedSince] Copies the object if it has been modified since the specified time.
-- * Bucket [BucketName] 
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.
-- * CopySourceIfUnmodifiedSince [CopySourceIfUnmodifiedSince] Copies the object if it hasn't been modified since the specified time.
-- * CopySourceIfNoneMatch [CopySourceIfNoneMatch] Copies the object if its entity tag (ETag) is different than the specified ETag.
-- * UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose part is being copied.
-- * Key [ObjectKey] 
-- * CopySourceRange [CopySourceRange] The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first ten bytes of the source. You can copy a range only if the source object is greater than 5 GB.
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- * PartNumber [PartNumber] Part number of part being copied. This is a positive integer between 1 and 10,000.
-- Required key: Bucket
-- Required key: CopySource
-- Required key: Key
-- Required key: PartNumber
-- Required key: UploadId
-- @return UploadPartCopyRequest structure as a key-value pair table
function M.UploadPartCopyRequest(args)
	assert(args, "You must provdide an argument table when creating UploadPartCopyRequest")
	local t = { 
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
	asserts.AssertUploadPartCopyRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CompletedMultipartUpload")
	local t = { 
		["Parts"] = args["Parts"],
	}
	asserts.AssertCompletedMultipartUpload(t)
	return t
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
-- * Bucket [BucketName] 
-- Required key: Bucket
-- @return DeleteBucketReplicationRequest structure as a key-value pair table
function M.DeleteBucketReplicationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBucketReplicationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketReplicationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Tagging")
	local t = { 
		["TagSet"] = args["TagSet"],
	}
	asserts.AssertTagging(t)
	return t
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
-- * Prefix [Prefix] The prefix to use when evaluating an AND predicate.
-- * Tags [TagSet] The list of tags to use when evaluating an AND predicate.
-- @return AnalyticsAndOperator structure as a key-value pair table
function M.AnalyticsAndOperator(args)
	assert(args, "You must provdide an argument table when creating AnalyticsAndOperator")
	local t = { 
		["Prefix"] = args["Prefix"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAnalyticsAndOperator(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RestoreObjectRequest")
	local t = { 
		["VersionId"] = args["VersionId"],
		["RestoreRequest"] = args["RestoreRequest"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertRestoreObjectRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetObjectTorrentRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetObjectTorrentRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLifecycleConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLifecycleConfigurationRequest(t)
	return t
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
-- * MetricsConfigurationList [MetricsConfigurationList] The list of metrics configurations for a bucket.
-- * NextContinuationToken [NextToken] The marker used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
-- * IsTruncated [IsTruncated] Indicates whether the returned list of metrics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
-- * ContinuationToken [Token] The marker that is used as a starting point for this metrics configuration list response. This value is present if it was sent in the request.
-- @return ListBucketMetricsConfigurationsOutput structure as a key-value pair table
function M.ListBucketMetricsConfigurationsOutput(args)
	assert(args, "You must provdide an argument table when creating ListBucketMetricsConfigurationsOutput")
	local t = { 
		["MetricsConfigurationList"] = args["MetricsConfigurationList"],
		["NextContinuationToken"] = args["NextContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketMetricsConfigurationsOutput(t)
	return t
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
-- * UploadIdMarker [UploadIdMarker] Upload ID after which listing began.
-- * CommonPrefixes [CommonPrefixList] 
-- * NextKeyMarker [NextKeyMarker] When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.
-- * Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- * Delimiter [Delimiter] 
-- * NextUploadIdMarker [NextUploadIdMarker] When a list is truncated, this element specifies the value that should be used for the upload-id-marker request parameter in a subsequent request.
-- * Prefix [Prefix] When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.
-- * Uploads [MultipartUploadList] 
-- * KeyMarker [KeyMarker] The key at or after which the listing began.
-- * MaxUploads [MaxUploads] Maximum number of multipart uploads that could have been included in the response.
-- * EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- * IsTruncated [IsTruncated] Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.
-- @return ListMultipartUploadsOutput structure as a key-value pair table
function M.ListMultipartUploadsOutput(args)
	assert(args, "You must provdide an argument table when creating ListMultipartUploadsOutput")
	local t = { 
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
	asserts.AssertListMultipartUploadsOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLifecycleRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLifecycleRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketLifecycleConfigurationRequest")
	local t = { 
		["LifecycleConfiguration"] = args["LifecycleConfiguration"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketLifecycleConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketLoggingRequest")
	local t = { 
		["BucketLoggingStatus"] = args["BucketLoggingStatus"],
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertPutBucketLoggingRequest(t)
	return t
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
-- * Bucket [BucketName] Name of the bucket for which the accelerate configuration is retrieved.
-- Required key: Bucket
-- @return GetBucketAccelerateConfigurationRequest structure as a key-value pair table
function M.GetBucketAccelerateConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating GetBucketAccelerateConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketAccelerateConfigurationRequest(t)
	return t
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
-- * MetricsConfiguration [MetricsConfiguration] Specifies the metrics configuration.
-- @return GetBucketMetricsConfigurationOutput structure as a key-value pair table
function M.GetBucketMetricsConfigurationOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketMetricsConfigurationOutput")
	local t = { 
		["MetricsConfiguration"] = args["MetricsConfiguration"],
	}
	asserts.AssertGetBucketMetricsConfigurationOutput(t)
	return t
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
-- Specifies the days since the initiation of an Incomplete Multipart Upload that Lifecycle will wait before permanently removing all parts of the upload.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DaysAfterInitiation [DaysAfterInitiation] Indicates the number of days that must pass since initiation for Lifecycle to abort an Incomplete Multipart Upload.
-- @return AbortIncompleteMultipartUpload structure as a key-value pair table
function M.AbortIncompleteMultipartUpload(args)
	assert(args, "You must provdide an argument table when creating AbortIncompleteMultipartUpload")
	local t = { 
		["DaysAfterInitiation"] = args["DaysAfterInitiation"],
	}
	asserts.AssertAbortIncompleteMultipartUpload(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketReplicationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketReplicationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutObjectAclOutput")
	local t = { 
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertPutObjectAclOutput(t)
	return t
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
-- * Suffix [Suffix] A suffix that is appended to a request that is for a directory on the website endpoint (e.g. if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html) The suffix must not be empty and must not include a slash character.
-- Required key: Suffix
-- @return IndexDocument structure as a key-value pair table
function M.IndexDocument(args)
	assert(args, "You must provdide an argument table when creating IndexDocument")
	local t = { 
		["Suffix"] = args["Suffix"],
	}
	asserts.AssertIndexDocument(t)
	return t
end

keys.CreateMultipartUploadRequest = { ["RequestPayer"] = true, ["ContentEncoding"] = true, ["StorageClass"] = true, ["GrantReadACP"] = true, ["ServerSideEncryption"] = true, ["SSEKMSKeyId"] = true, ["ContentDisposition"] = true, ["Metadata"] = true, ["SSECustomerKey"] = true, ["WebsiteRedirectLocation"] = true, ["Expires"] = true, ["Key"] = true, ["CacheControl"] = true, ["Bucket"] = true, ["GrantRead"] = true, ["GrantWriteACP"] = true, ["ACL"] = true, ["GrantFullControl"] = true, ["SSECustomerAlgorithm"] = true, ["ContentType"] = true, ["ContentLanguage"] = true, ["SSECustomerKeyMD5"] = true, nil }

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
-- * ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- * StorageClass [StorageClass] The type of storage to use for the object. Defaults to 'STANDARD'.
-- * GrantReadACP [GrantReadACP] Allows grantee to read the object ACL.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSEKMSKeyId [SSEKMSKeyId] Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
-- * ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- * Metadata [Metadata] A map of metadata to store with the object in S3.
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- * Expires [Expires] The date and time at which the object is no longer cacheable.
-- * Key [ObjectKey] 
-- * CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- * Bucket [BucketName] 
-- * GrantRead [GrantRead] Allows grantee to read the object data and its metadata.
-- * GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable object.
-- * ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- * GrantFullControl [GrantFullControl] Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * ContentType [ContentType] A standard MIME type describing the format of the object data.
-- * ContentLanguage [ContentLanguage] The language the content is in.
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required key: Bucket
-- Required key: Key
-- @return CreateMultipartUploadRequest structure as a key-value pair table
function M.CreateMultipartUploadRequest(args)
	assert(args, "You must provdide an argument table when creating CreateMultipartUploadRequest")
	local t = { 
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
	asserts.AssertCreateMultipartUploadRequest(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket containing the metrics configuration to retrieve.
-- * Id [MetricsId] The ID used to identify the metrics configuration.
-- Required key: Bucket
-- Required key: Id
-- @return GetBucketMetricsConfigurationRequest structure as a key-value pair table
function M.GetBucketMetricsConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating GetBucketMetricsConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetBucketMetricsConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketCorsOutput")
	local t = { 
		["CORSRules"] = args["CORSRules"],
	}
	asserts.AssertGetBucketCorsOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating BucketLifecycleConfiguration")
	local t = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertBucketLifecycleConfiguration(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket containing the metrics configuration to delete.
-- * Id [MetricsId] The ID used to identify the metrics configuration.
-- Required key: Bucket
-- Required key: Id
-- @return DeleteBucketMetricsConfigurationRequest structure as a key-value pair table
function M.DeleteBucketMetricsConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBucketMetricsConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteBucketMetricsConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating HeadBucketRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertHeadBucketRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AbortMultipartUploadRequest")
	local t = { 
		["UploadId"] = args["UploadId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertAbortMultipartUploadRequest(t)
	return t
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
-- The Filter is used to identify objects that a Lifecycle Rule applies to. A Filter must have exactly one of Prefix, Tag, or And specified.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * And [LifecycleRuleAndOperator] 
-- * Prefix [Prefix] Prefix identifying one or more objects to which the rule applies.
-- * Tag [Tag] This tag must exist in the object's tag set in order for the rule to apply.
-- @return LifecycleRuleFilter structure as a key-value pair table
function M.LifecycleRuleFilter(args)
	assert(args, "You must provdide an argument table when creating LifecycleRuleFilter")
	local t = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertLifecycleRuleFilter(t)
	return t
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
-- * Permission [Permission] Specifies the permission given to the grantee.
-- @return Grant structure as a key-value pair table
function M.Grant(args)
	assert(args, "You must provdide an argument table when creating Grant")
	local t = { 
		["Grantee"] = args["Grantee"],
		["Permission"] = args["Permission"],
	}
	asserts.AssertGrant(t)
	return t
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
-- * Prefix [Prefix] The prefix that an object must have to be included in the inventory results.
-- Required key: Prefix
-- @return InventoryFilter structure as a key-value pair table
function M.InventoryFilter(args)
	assert(args, "You must provdide an argument table when creating InventoryFilter")
	local t = { 
		["Prefix"] = args["Prefix"],
	}
	asserts.AssertInventoryFilter(t)
	return t
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
-- * Initiator [Initiator] Identifies who initiated the multipart upload.
-- * Initiated [Initiated] Date and time at which the multipart upload was initiated.
-- * UploadId [MultipartUploadId] Upload ID that identifies the multipart upload.
-- * StorageClass [StorageClass] The class of storage used to store the object.
-- * Key [ObjectKey] Key of the object for which the multipart upload was initiated.
-- * Owner [Owner] 
-- @return MultipartUpload structure as a key-value pair table
function M.MultipartUpload(args)
	assert(args, "You must provdide an argument table when creating MultipartUpload")
	local t = { 
		["Initiator"] = args["Initiator"],
		["Initiated"] = args["Initiated"],
		["UploadId"] = args["UploadId"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["Owner"] = args["Owner"],
	}
	asserts.AssertMultipartUpload(t)
	return t
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
-- * LastModified [LastModified] Date and time at which the part was uploaded.
-- * PartNumber [PartNumber] Part number identifying the part. This is a positive integer between 1 and 10,000.
-- * ETag [ETag] Entity tag returned when the part was uploaded.
-- * Size [Size] Size of the uploaded part data.
-- @return Part structure as a key-value pair table
function M.Part(args)
	assert(args, "You must provdide an argument table when creating Part")
	local t = { 
		["LastModified"] = args["LastModified"],
		["PartNumber"] = args["PartNumber"],
		["ETag"] = args["ETag"],
		["Size"] = args["Size"],
	}
	asserts.AssertPart(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket from which analytics configurations are retrieved.
-- * ContinuationToken [Token] The ContinuationToken that represents a placeholder from where this request should begin.
-- Required key: Bucket
-- @return ListBucketAnalyticsConfigurationsRequest structure as a key-value pair table
function M.ListBucketAnalyticsConfigurationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListBucketAnalyticsConfigurationsRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketAnalyticsConfigurationsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CloudFunctionConfiguration")
	local t = { 
		["InvocationRole"] = args["InvocationRole"],
		["CloudFunction"] = args["CloudFunction"],
		["Events"] = args["Events"],
		["Id"] = args["Id"],
		["Event"] = args["Event"],
	}
	asserts.AssertCloudFunctionConfiguration(t)
	return t
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
-- * CopySourceIfModifiedSince [CopySourceIfModifiedSince] Copies the object if it has been modified since the specified time.
-- * CopySourceIfUnmodifiedSince [CopySourceIfUnmodifiedSince] Copies the object if it hasn't been modified since the specified time.
-- * ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- * CopySourceSSECustomerKey [CopySourceSSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
-- * StorageClass [StorageClass] The type of storage to use for the object. Defaults to 'STANDARD'.
-- * GrantReadACP [GrantReadACP] Allows grantee to read the object ACL.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSEKMSKeyId [SSEKMSKeyId] Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
-- * ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- * Metadata [Metadata] A map of metadata to store with the object in S3.
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- * CopySource [CopySource] The name of the source bucket and key name of the source object, separated by a slash (/). Must be URL-encoded.
-- * Expires [Expires] The date and time at which the object is no longer cacheable.
-- * Key [ObjectKey] 
-- * CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- * Tagging [TaggingHeader] The tag-set for the object destination object this value must be used in conjunction with the TaggingDirective. The tag-set must be encoded as URL Query parameters
-- * CopySourceSSECustomerAlgorithm [CopySourceSSECustomerAlgorithm] Specifies the algorithm to use when decrypting the source object (e.g., AES256).
-- * Bucket [BucketName] 
-- * GrantRead [GrantRead] Allows grantee to read the object data and its metadata.
-- * GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable object.
-- * CopySourceSSECustomerKeyMD5 [CopySourceSSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- * ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- * GrantFullControl [GrantFullControl] Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
-- * CopySourceIfMatch [CopySourceIfMatch] Copies the object if its entity tag (ETag) matches the specified tag.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * ContentType [ContentType] A standard MIME type describing the format of the object data.
-- * ContentLanguage [ContentLanguage] The language the content is in.
-- * TaggingDirective [TaggingDirective] Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request.
-- * MetadataDirective [MetadataDirective] Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request.
-- * CopySourceIfNoneMatch [CopySourceIfNoneMatch] Copies the object if its entity tag (ETag) is different than the specified ETag.
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required key: Bucket
-- Required key: CopySource
-- Required key: Key
-- @return CopyObjectRequest structure as a key-value pair table
function M.CopyObjectRequest(args)
	assert(args, "You must provdide an argument table when creating CopyObjectRequest")
	local t = { 
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
	asserts.AssertCopyObjectRequest(t)
	return t
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
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * AbortRuleId [AbortRuleId] Id of the lifecycle rule that makes a multipart upload eligible for abort operation.
-- * AbortDate [AbortDate] Date when multipart upload will become eligible for abort operation by lifecycle.
-- * Bucket [BucketName] Name of the bucket to which the multipart upload was initiated.
-- * RequestCharged [RequestCharged] 
-- * UploadId [MultipartUploadId] ID for the initiated multipart upload.
-- * Key [ObjectKey] Object key for which the multipart upload was initiated.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @return CreateMultipartUploadOutput structure as a key-value pair table
function M.CreateMultipartUploadOutput(args)
	assert(args, "You must provdide an argument table when creating CreateMultipartUploadOutput")
	local t = { 
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
	asserts.AssertCreateMultipartUploadOutput(t)
	return t
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
-- * Prefix [Prefix] The prefix to use when exporting data. The exported data begins with this prefix.
-- * BucketAccountId [AccountId] The account ID that owns the destination bucket. If no account ID is provided, the owner will not be validated prior to exporting data.
-- * Bucket [BucketName] The Amazon resource name (ARN) of the bucket to which data is exported.
-- * Format [AnalyticsS3ExportFileFormat] The file format used when exporting data to Amazon S3.
-- Required key: Format
-- Required key: Bucket
-- @return AnalyticsS3BucketDestination structure as a key-value pair table
function M.AnalyticsS3BucketDestination(args)
	assert(args, "You must provdide an argument table when creating AnalyticsS3BucketDestination")
	local t = { 
		["Prefix"] = args["Prefix"],
		["BucketAccountId"] = args["BucketAccountId"],
		["Bucket"] = args["Bucket"],
		["Format"] = args["Format"],
	}
	asserts.AssertAnalyticsS3BucketDestination(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket from which an analytics configuration is retrieved.
-- * Id [AnalyticsId] The identifier used to represent an analytics configuration.
-- Required key: Bucket
-- Required key: Id
-- @return GetBucketAnalyticsConfigurationRequest structure as a key-value pair table
function M.GetBucketAnalyticsConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating GetBucketAnalyticsConfigurationRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetBucketAnalyticsConfigurationRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeletedObject")
	local t = { 
		["VersionId"] = args["VersionId"],
		["DeleteMarkerVersionId"] = args["DeleteMarkerVersionId"],
		["Key"] = args["Key"],
		["DeleteMarker"] = args["DeleteMarker"],
	}
	asserts.AssertDeletedObject(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CompleteMultipartUploadRequest")
	local t = { 
		["MultipartUpload"] = args["MultipartUpload"],
		["UploadId"] = args["UploadId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertCompleteMultipartUploadRequest(t)
	return t
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
-- * UploadId [MultipartUploadId] Upload ID identifying the multipart upload whose parts are being listed.
-- * Key [ObjectKey] 
-- * MaxParts [MaxParts] Sets the maximum number of parts to return.
-- * PartNumberMarker [PartNumberMarker] Specifies the part after which listing should begin. Only parts with higher part numbers will be listed.
-- Required key: Bucket
-- Required key: Key
-- Required key: UploadId
-- @return ListPartsRequest structure as a key-value pair table
function M.ListPartsRequest(args)
	assert(args, "You must provdide an argument table when creating ListPartsRequest")
	local t = { 
		["RequestPayer"] = args["RequestPayer"],
		["Bucket"] = args["Bucket"],
		["UploadId"] = args["UploadId"],
		["Key"] = args["Key"],
		["MaxParts"] = args["MaxParts"],
		["PartNumberMarker"] = args["PartNumberMarker"],
	}
	asserts.AssertListPartsRequest(t)
	return t
end

keys.InventoryS3BucketDestination = { ["Prefix"] = true, ["Format"] = true, ["Bucket"] = true, ["AccountId"] = true, nil }

function asserts.AssertInventoryS3BucketDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryS3BucketDestination to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Format"], "Expected key Format to exist in table")
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
-- * Prefix [Prefix] The prefix that is prepended to all inventory results.
-- * Format [InventoryFormat] Specifies the output format of the inventory results.
-- * Bucket [BucketName] The Amazon resource name (ARN) of the bucket where inventory results will be published.
-- * AccountId [AccountId] The ID of the account that owns the destination bucket.
-- Required key: Bucket
-- Required key: Format
-- @return InventoryS3BucketDestination structure as a key-value pair table
function M.InventoryS3BucketDestination(args)
	assert(args, "You must provdide an argument table when creating InventoryS3BucketDestination")
	local t = { 
		["Prefix"] = args["Prefix"],
		["Format"] = args["Format"],
		["Bucket"] = args["Bucket"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertInventoryS3BucketDestination(t)
	return t
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
	assert(args, "You must provdide an argument table when creating WebsiteConfiguration")
	local t = { 
		["RedirectAllRequestsTo"] = args["RedirectAllRequestsTo"],
		["IndexDocument"] = args["IndexDocument"],
		["ErrorDocument"] = args["ErrorDocument"],
		["RoutingRules"] = args["RoutingRules"],
	}
	asserts.AssertWebsiteConfiguration(t)
	return t
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
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * ETag [ETag] Entity tag for the uploaded object.
-- * RequestCharged [RequestCharged] 
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- @return UploadPartOutput structure as a key-value pair table
function M.UploadPartOutput(args)
	assert(args, "You must provdide an argument table when creating UploadPartOutput")
	local t = { 
		["SSECustomerAlgorithm"] = args["SSECustomerAlgorithm"],
		["ServerSideEncryption"] = args["ServerSideEncryption"],
		["ETag"] = args["ETag"],
		["RequestCharged"] = args["RequestCharged"],
		["SSECustomerKeyMD5"] = args["SSECustomerKeyMD5"],
		["SSEKMSKeyId"] = args["SSEKMSKeyId"],
	}
	asserts.AssertUploadPartOutput(t)
	return t
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
-- * Frequency [InventoryFrequency] Specifies how frequently inventory results are produced.
-- Required key: Frequency
-- @return InventorySchedule structure as a key-value pair table
function M.InventorySchedule(args)
	assert(args, "You must provdide an argument table when creating InventorySchedule")
	local t = { 
		["Frequency"] = args["Frequency"],
	}
	asserts.AssertInventorySchedule(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteObjectsOutput")
	local t = { 
		["Deleted"] = args["Deleted"],
		["Errors"] = args["Errors"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertDeleteObjectsOutput(t)
	return t
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
-- * Destination [AnalyticsExportDestination] The place to store the data for an analysis.
-- * OutputSchemaVersion [StorageClassAnalysisSchemaVersion] The version of the output schema to use when exporting data. Must be V_1.
-- Required key: OutputSchemaVersion
-- Required key: Destination
-- @return StorageClassAnalysisDataExport structure as a key-value pair table
function M.StorageClassAnalysisDataExport(args)
	assert(args, "You must provdide an argument table when creating StorageClassAnalysisDataExport")
	local t = { 
		["Destination"] = args["Destination"],
		["OutputSchemaVersion"] = args["OutputSchemaVersion"],
	}
	asserts.AssertStorageClassAnalysisDataExport(t)
	return t
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
-- * Redirect [Redirect] Container for redirect information. You can redirect requests to another host, to another page, or with another protocol. In the event of an error, you can can specify a different error code to return.
-- * Condition [Condition] A container for describing a condition that must be met for the specified redirect to apply. For example, 1. If request is for pages in the /docs folder, redirect to the /documents folder. 2. If request results in HTTP error 4xx, redirect request to another host where you might process the error.
-- Required key: Redirect
-- @return RoutingRule structure as a key-value pair table
function M.RoutingRule(args)
	assert(args, "You must provdide an argument table when creating RoutingRule")
	local t = { 
		["Redirect"] = args["Redirect"],
		["Condition"] = args["Condition"],
	}
	asserts.AssertRoutingRule(t)
	return t
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
-- * ContentEncoding [ContentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
-- * StorageClass [StorageClass] The type of storage to use for the object. Defaults to 'STANDARD'.
-- * GrantReadACP [GrantReadACP] Allows grantee to read the object ACL.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * SSEKMSKeyId [SSEKMSKeyId] Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
-- * ContentDisposition [ContentDisposition] Specifies presentational information for the object.
-- * Metadata [Metadata] A map of metadata to store with the object in S3.
-- * Body [Body] Object data.
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- * WebsiteRedirectLocation [WebsiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
-- * Expires [Expires] The date and time at which the object is no longer cacheable.
-- * Key [ObjectKey] Object key for which the PUT operation was initiated.
-- * CacheControl [CacheControl] Specifies caching behavior along the request/reply chain.
-- * Tagging [TaggingHeader] The tag-set for the object. The tag-set must be encoded as URL Query parameters
-- * ContentLength [ContentLength] Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.
-- * Bucket [BucketName] Name of the bucket to which the PUT operation was initiated.
-- * GrantRead [GrantRead] Allows grantee to read the object data and its metadata.
-- * GrantWriteACP [GrantWriteACP] Allows grantee to write the ACL for the applicable object.
-- * ACL [ObjectCannedACL] The canned ACL to apply to the object.
-- * GrantFullControl [GrantFullControl] Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * ContentType [ContentType] A standard MIME type describing the format of the object data.
-- * ContentLanguage [ContentLanguage] The language the content is in.
-- * ContentMD5 [ContentMD5] The base64-encoded 128-bit MD5 digest of the part data.
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required key: Bucket
-- Required key: Key
-- @return PutObjectRequest structure as a key-value pair table
function M.PutObjectRequest(args)
	assert(args, "You must provdide an argument table when creating PutObjectRequest")
	local t = { 
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
	asserts.AssertPutObjectRequest(t)
	return t
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
-- * LastModified [LastModified] Date and time the object was last modified.
-- * VersionId [ObjectVersionId] Version ID of an object.
-- * ETag [ETag] 
-- * StorageClass [ObjectVersionStorageClass] The class of storage used to store the object.
-- * Key [ObjectKey] The object key.
-- * Owner [Owner] 
-- * IsLatest [IsLatest] Specifies whether the object is (true) or is not (false) the latest version of an object.
-- * Size [Size] Size in bytes of the object.
-- @return ObjectVersion structure as a key-value pair table
function M.ObjectVersion(args)
	assert(args, "You must provdide an argument table when creating ObjectVersion")
	local t = { 
		["LastModified"] = args["LastModified"],
		["VersionId"] = args["VersionId"],
		["ETag"] = args["ETag"],
		["StorageClass"] = args["StorageClass"],
		["Key"] = args["Key"],
		["Owner"] = args["Owner"],
		["IsLatest"] = args["IsLatest"],
		["Size"] = args["Size"],
	}
	asserts.AssertObjectVersion(t)
	return t
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
-- * NextContinuationToken [NextToken] The marker used to continue this inventory configuration listing. Use the NextContinuationToken from this response to continue the listing in a subsequent request. The continuation token is an opaque value that Amazon S3 understands.
-- * InventoryConfigurationList [InventoryConfigurationList] The list of inventory configurations for a bucket.
-- * ContinuationToken [Token] If sent in the request, the marker that is used as a starting point for this inventory configuration list response.
-- * IsTruncated [IsTruncated] Indicates whether the returned list of inventory configurations is truncated in this response. A value of true indicates that the list is truncated.
-- @return ListBucketInventoryConfigurationsOutput structure as a key-value pair table
function M.ListBucketInventoryConfigurationsOutput(args)
	assert(args, "You must provdide an argument table when creating ListBucketInventoryConfigurationsOutput")
	local t = { 
		["NextContinuationToken"] = args["NextContinuationToken"],
		["InventoryConfigurationList"] = args["InventoryConfigurationList"],
		["ContinuationToken"] = args["ContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListBucketInventoryConfigurationsOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetObjectTaggingOutput")
	local t = { 
		["VersionId"] = args["VersionId"],
		["TagSet"] = args["TagSet"],
	}
	asserts.AssertGetObjectTaggingOutput(t)
	return t
end

keys.RestoreObjectOutput = { ["RequestCharged"] = true, nil }

function asserts.AssertRestoreObjectOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreObjectOutput to be of type 'table'")
	if struct["RequestCharged"] then asserts.AssertRequestCharged(struct["RequestCharged"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreObjectOutput[k], "RestoreObjectOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreObjectOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequestCharged [RequestCharged] 
-- @return RestoreObjectOutput structure as a key-value pair table
function M.RestoreObjectOutput(args)
	assert(args, "You must provdide an argument table when creating RestoreObjectOutput")
	local t = { 
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertRestoreObjectOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketLoggingRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketLoggingRequest(t)
	return t
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
-- Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NotificationConfigurationFilter] 
-- * Id [NotificationId] 
-- * TopicArn [TopicArn] Amazon SNS topic ARN to which Amazon S3 will publish a message when it detects events of specified type.
-- * Events [EventList] 
-- Required key: TopicArn
-- Required key: Events
-- @return TopicConfiguration structure as a key-value pair table
function M.TopicConfiguration(args)
	assert(args, "You must provdide an argument table when creating TopicConfiguration")
	local t = { 
		["Filter"] = args["Filter"],
		["Id"] = args["Id"],
		["TopicArn"] = args["TopicArn"],
		["Events"] = args["Events"],
	}
	asserts.AssertTopicConfiguration(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutBucketTaggingRequest")
	local t = { 
		["ContentMD5"] = args["ContentMD5"],
		["Bucket"] = args["Bucket"],
		["Tagging"] = args["Tagging"],
	}
	asserts.AssertPutBucketTaggingRequest(t)
	return t
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
-- * CreationDate [CreationDate] Date the bucket was created.
-- * Name [BucketName] The name of the bucket.
-- @return Bucket structure as a key-value pair table
function M.Bucket(args)
	assert(args, "You must provdide an argument table when creating Bucket")
	local t = { 
		["CreationDate"] = args["CreationDate"],
		["Name"] = args["Name"],
	}
	asserts.AssertBucket(t)
	return t
end

keys.NoSuchUpload = { nil }

function asserts.AssertNoSuchUpload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchUpload to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchUpload[k], "NoSuchUpload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchUpload
-- The specified multipart upload does not exist.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NoSuchUpload structure as a key-value pair table
function M.NoSuchUpload(args)
	assert(args, "You must provdide an argument table when creating NoSuchUpload")
	local t = { 
	}
	asserts.AssertNoSuchUpload(t)
	return t
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
-- * Date [Date] Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
-- * ExpiredObjectDeleteMarker [ExpiredObjectDeleteMarker] Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
-- * Days [Days] Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
-- @return LifecycleExpiration structure as a key-value pair table
function M.LifecycleExpiration(args)
	assert(args, "You must provdide an argument table when creating LifecycleExpiration")
	local t = { 
		["Date"] = args["Date"],
		["ExpiredObjectDeleteMarker"] = args["ExpiredObjectDeleteMarker"],
		["Days"] = args["Days"],
	}
	asserts.AssertLifecycleExpiration(t)
	return t
end

keys.Destination = { ["Bucket"] = true, ["StorageClass"] = true, nil }

function asserts.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	if struct["Bucket"] then asserts.AssertBucketName(struct["Bucket"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.Destination[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [BucketName] Amazon resource name (ARN) of the bucket where you want Amazon S3 to store replicas of the object identified by the rule.
-- * StorageClass [StorageClass] The class of storage used to store the object.
-- Required key: Bucket
-- @return Destination structure as a key-value pair table
function M.Destination(args)
	assert(args, "You must provdide an argument table when creating Destination")
	local t = { 
		["Bucket"] = args["Bucket"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertDestination(t)
	return t
end

keys.NoSuchBucket = { nil }

function asserts.AssertNoSuchBucket(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchBucket to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchBucket[k], "NoSuchBucket contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchBucket
-- The specified bucket does not exist.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NoSuchBucket structure as a key-value pair table
function M.NoSuchBucket(args)
	assert(args, "You must provdide an argument table when creating NoSuchBucket")
	local t = { 
	}
	asserts.AssertNoSuchBucket(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketTaggingOutput")
	local t = { 
		["TagSet"] = args["TagSet"],
	}
	asserts.AssertGetBucketTaggingOutput(t)
	return t
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
-- * And [MetricsAndOperator] A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
-- * Prefix [Prefix] The prefix used when evaluating a metrics filter.
-- * Tag [Tag] The tag used when evaluating a metrics filter.
-- @return MetricsFilter structure as a key-value pair table
function M.MetricsFilter(args)
	assert(args, "You must provdide an argument table when creating MetricsFilter")
	local t = { 
		["And"] = args["And"],
		["Prefix"] = args["Prefix"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertMetricsFilter(t)
	return t
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
-- Container for replication rules. You can add as many as 1,000 rules. Total replication configuration size can be up to 2 MB.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [ReplicationRules] Container for information about a particular replication rule. Replication configuration must have at least one rule and can contain up to 1,000 rules.
-- * Role [Role] Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume when replicating the objects.
-- Required key: Role
-- Required key: Rules
-- @return ReplicationConfiguration structure as a key-value pair table
function M.ReplicationConfiguration(args)
	assert(args, "You must provdide an argument table when creating ReplicationConfiguration")
	local t = { 
		["Rules"] = args["Rules"],
		["Role"] = args["Role"],
	}
	asserts.AssertReplicationConfiguration(t)
	return t
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
-- * UploadIdMarker [UploadIdMarker] Together with key-marker, specifies the multipart upload after which listing should begin. If key-marker is not specified, the upload-id-marker parameter is ignored.
-- * Bucket [BucketName] 
-- * Delimiter [Delimiter] Character you use to group keys.
-- * Prefix [Prefix] Lists in-progress uploads only for those keys that begin with the specified prefix.
-- * KeyMarker [KeyMarker] Together with upload-id-marker, this parameter specifies the multipart upload after which listing should begin.
-- * MaxUploads [MaxUploads] Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000 is the maximum number of uploads that can be returned in a response.
-- * EncodingType [EncodingType] 
-- Required key: Bucket
-- @return ListMultipartUploadsRequest structure as a key-value pair table
function M.ListMultipartUploadsRequest(args)
	assert(args, "You must provdide an argument table when creating ListMultipartUploadsRequest")
	local t = { 
		["UploadIdMarker"] = args["UploadIdMarker"],
		["Bucket"] = args["Bucket"],
		["Delimiter"] = args["Delimiter"],
		["Prefix"] = args["Prefix"],
		["KeyMarker"] = args["KeyMarker"],
		["MaxUploads"] = args["MaxUploads"],
		["EncodingType"] = args["EncodingType"],
	}
	asserts.AssertListMultipartUploadsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketPolicyRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketPolicyRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteBucketWebsiteRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketWebsiteRequest(t)
	return t
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
-- * VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- * Bucket [BucketName] 
-- * RequestPayer [RequestPayer] 
-- * Key [ObjectKey] 
-- Required key: Bucket
-- Required key: Key
-- @return GetObjectAclRequest structure as a key-value pair table
function M.GetObjectAclRequest(args)
	assert(args, "You must provdide an argument table when creating GetObjectAclRequest")
	local t = { 
		["VersionId"] = args["VersionId"],
		["Bucket"] = args["Bucket"],
		["RequestPayer"] = args["RequestPayer"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetObjectAclRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AbortMultipartUploadOutput")
	local t = { 
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertAbortMultipartUploadOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutObjectTaggingOutput")
	local t = { 
		["VersionId"] = args["VersionId"],
	}
	asserts.AssertPutObjectTaggingOutput(t)
	return t
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
-- Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NotificationConfigurationFilter] 
-- * Id [NotificationId] 
-- * QueueArn [QueueArn] Amazon SQS queue ARN to which Amazon S3 will publish a message when it detects events of specified type.
-- * Events [EventList] 
-- Required key: QueueArn
-- Required key: Events
-- @return QueueConfiguration structure as a key-value pair table
function M.QueueConfiguration(args)
	assert(args, "You must provdide an argument table when creating QueueConfiguration")
	local t = { 
		["Filter"] = args["Filter"],
		["Id"] = args["Id"],
		["QueueArn"] = args["QueueArn"],
		["Events"] = args["Events"],
	}
	asserts.AssertQueueConfiguration(t)
	return t
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
-- * Name [BucketName] Name of the bucket to list.
-- * StartAfter [StartAfter] StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket
-- * Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- * ContinuationToken [Token] ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key
-- * MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- * Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- * KeyCount [KeyCount] KeyCount is the number of keys returned with this request. KeyCount will always be less than equals to MaxKeys field. Say you ask for 50 keys, your result will include less than equals 50 keys
-- * EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- * NextContinuationToken [NextToken] NextContinuationToken is sent when isTruncated is true which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this NextContinuationToken. NextContinuationToken is obfuscated and is not a real key
-- * IsTruncated [IsTruncated] A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria.
-- * Contents [ObjectList] Metadata about each object returned.
-- * CommonPrefixes [CommonPrefixList] CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by delimiter
-- @return ListObjectsV2Output structure as a key-value pair table
function M.ListObjectsV2Output(args)
	assert(args, "You must provdide an argument table when creating ListObjectsV2Output")
	local t = { 
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
	asserts.AssertListObjectsV2Output(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteBucketCorsRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertDeleteBucketCorsRequest(t)
	return t
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
-- * AllowedHeaders [AllowedHeaders] Specifies which headers are allowed in a pre-flight OPTIONS request.
-- * ExposeHeaders [ExposeHeaders] One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).
-- * AllowedMethods [AllowedMethods] Identifies HTTP methods that the domain/origin specified in the rule is allowed to execute.
-- * MaxAgeSeconds [MaxAgeSeconds] The time in seconds that your browser is to cache the preflight response for the specified resource.
-- * AllowedOrigins [AllowedOrigins] One or more origins you want customers to be able to access the bucket from.
-- Required key: AllowedMethods
-- Required key: AllowedOrigins
-- @return CORSRule structure as a key-value pair table
function M.CORSRule(args)
	assert(args, "You must provdide an argument table when creating CORSRule")
	local t = { 
		["AllowedHeaders"] = args["AllowedHeaders"],
		["ExposeHeaders"] = args["ExposeHeaders"],
		["AllowedMethods"] = args["AllowedMethods"],
		["MaxAgeSeconds"] = args["MaxAgeSeconds"],
		["AllowedOrigins"] = args["AllowedOrigins"],
	}
	asserts.AssertCORSRule(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketRequestPaymentRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketRequestPaymentRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketReplicationOutput")
	local t = { 
		["ReplicationConfiguration"] = args["ReplicationConfiguration"],
	}
	asserts.AssertGetBucketReplicationOutput(t)
	return t
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
-- * Grants [Grants] A list of grants.
-- @return GetBucketAclOutput structure as a key-value pair table
function M.GetBucketAclOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketAclOutput")
	local t = { 
		["Owner"] = args["Owner"],
		["Grants"] = args["Grants"],
	}
	asserts.AssertGetBucketAclOutput(t)
	return t
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
-- * AnalyticsConfigurationList [AnalyticsConfigurationList] The list of analytics configurations for a bucket.
-- * NextContinuationToken [NextToken] NextContinuationToken is sent when isTruncated is true, which indicates that there are more analytics configurations to list. The next request must include this NextContinuationToken. The token is obfuscated and is not a usable value.
-- * IsTruncated [IsTruncated] Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
-- * ContinuationToken [Token] The ContinuationToken that represents where this request began.
-- @return ListBucketAnalyticsConfigurationsOutput structure as a key-value pair table
function M.ListBucketAnalyticsConfigurationsOutput(args)
	assert(args, "You must provdide an argument table when creating ListBucketAnalyticsConfigurationsOutput")
	local t = { 
		["AnalyticsConfigurationList"] = args["AnalyticsConfigurationList"],
		["NextContinuationToken"] = args["NextContinuationToken"],
		["IsTruncated"] = args["IsTruncated"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketAnalyticsConfigurationsOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListBucketsOutput")
	local t = { 
		["Owner"] = args["Owner"],
		["Buckets"] = args["Buckets"],
	}
	asserts.AssertListBucketsOutput(t)
	return t
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
-- Container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off on the bucket.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueConfigurations [QueueConfigurationList] 
-- * LambdaFunctionConfigurations [LambdaFunctionConfigurationList] 
-- * TopicConfigurations [TopicConfigurationList] 
-- @return NotificationConfiguration structure as a key-value pair table
function M.NotificationConfiguration(args)
	assert(args, "You must provdide an argument table when creating NotificationConfiguration")
	local t = { 
		["QueueConfigurations"] = args["QueueConfigurations"],
		["LambdaFunctionConfigurations"] = args["LambdaFunctionConfigurations"],
		["TopicConfigurations"] = args["TopicConfigurations"],
	}
	asserts.AssertNotificationConfiguration(t)
	return t
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
-- * RequestPayer [RequestPayer] Confirms that the requester knows that she or he will be charged for the list objects request in V2 style. Bucket owners need not specify this parameter in their requests.
-- * StartAfter [StartAfter] StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket
-- * Bucket [BucketName] Name of the bucket to list.
-- * Prefix [Prefix] Limits the response to keys that begin with the specified prefix.
-- * FetchOwner [FetchOwner] The owner field is not present in listV2 by default, if you want to return owner field with each key in the result then set the fetch owner field to true
-- * MaxKeys [MaxKeys] Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.
-- * Delimiter [Delimiter] A delimiter is a character you use to group keys.
-- * EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- * ContinuationToken [Token] ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a token. ContinuationToken is obfuscated and is not a real key
-- Required key: Bucket
-- @return ListObjectsV2Request structure as a key-value pair table
function M.ListObjectsV2Request(args)
	assert(args, "You must provdide an argument table when creating ListObjectsV2Request")
	local t = { 
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
	asserts.AssertListObjectsV2Request(t)
	return t
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
-- * Bucket [BucketName] The name of the bucket containing the inventory configurations to retrieve.
-- * ContinuationToken [Token] The marker used to continue an inventory configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
-- Required key: Bucket
-- @return ListBucketInventoryConfigurationsRequest structure as a key-value pair table
function M.ListBucketInventoryConfigurationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListBucketInventoryConfigurationsRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertListBucketInventoryConfigurationsRequest(t)
	return t
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
-- * LastModified [LastModified] Date and time at which the object was uploaded.
-- * ETag [ETag] Entity tag of the object.
-- @return CopyPartResult structure as a key-value pair table
function M.CopyPartResult(args)
	assert(args, "You must provdide an argument table when creating CopyPartResult")
	local t = { 
		["LastModified"] = args["LastModified"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCopyPartResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBucketAclRequest")
	local t = { 
		["Bucket"] = args["Bucket"],
	}
	asserts.AssertGetBucketAclRequest(t)
	return t
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
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
-- * CopySourceVersionId [CopySourceVersionId] 
-- * RequestCharged [RequestCharged] 
-- * VersionId [ObjectVersionId] Version ID of the newly created copy.
-- * Expiration [Expiration] If the object expiration is configured, the response includes this header.
-- * ServerSideEncryption [ServerSideEncryption] The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms).
-- * CopyObjectResult [CopyObjectResult] 
-- * SSEKMSKeyId [SSEKMSKeyId] If present, specifies the ID of the AWS Key Management Service (KMS) master encryption key that was used for the object.
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round trip message integrity verification of the customer-provided encryption key.
-- @return CopyObjectOutput structure as a key-value pair table
function M.CopyObjectOutput(args)
	assert(args, "You must provdide an argument table when creating CopyObjectOutput")
	local t = { 
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
	asserts.AssertCopyObjectOutput(t)
	return t
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
-- * Grants [Grants] A list of grants.
-- * RequestCharged [RequestCharged] 
-- @return GetObjectAclOutput structure as a key-value pair table
function M.GetObjectAclOutput(args)
	assert(args, "You must provdide an argument table when creating GetObjectAclOutput")
	local t = { 
		["Owner"] = args["Owner"],
		["Grants"] = args["Grants"],
		["RequestCharged"] = args["RequestCharged"],
	}
	asserts.AssertGetObjectAclOutput(t)
	return t
end

keys.ObjectNotInActiveTierError = { nil }

function asserts.AssertObjectNotInActiveTierError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectNotInActiveTierError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ObjectNotInActiveTierError[k], "ObjectNotInActiveTierError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectNotInActiveTierError
-- The source object of the COPY operation is not in the active tier and is only stored in Amazon Glacier.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ObjectNotInActiveTierError structure as a key-value pair table
function M.ObjectNotInActiveTierError(args)
	assert(args, "You must provdide an argument table when creating ObjectNotInActiveTierError")
	local t = { 
	}
	asserts.AssertObjectNotInActiveTierError(t)
	return t
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
-- * NextKeyMarker [NextKeyMarker] Use this value for the key marker request parameter in a subsequent request.
-- * Delimiter [Delimiter] 
-- * MaxKeys [MaxKeys] 
-- * Prefix [Prefix] 
-- * KeyMarker [KeyMarker] Marks the last Key returned in a truncated response.
-- * NextVersionIdMarker [NextVersionIdMarker] Use this value for the next version id marker parameter in a subsequent request.
-- * EncodingType [EncodingType] Encoding type used by Amazon S3 to encode object keys in the response.
-- * IsTruncated [IsTruncated] A flag that indicates whether or not Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.
-- * VersionIdMarker [VersionIdMarker] 
-- * CommonPrefixes [CommonPrefixList] 
-- @return ListObjectVersionsOutput structure as a key-value pair table
function M.ListObjectVersionsOutput(args)
	assert(args, "You must provdide an argument table when creating ListObjectVersionsOutput")
	local t = { 
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
	asserts.AssertListObjectVersionsOutput(t)
	return t
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
-- * HttpErrorCodeReturnedEquals [HttpErrorCodeReturnedEquals] The HTTP error code when the redirect is applied. In the event of an error, if the error code equals this value, then the specified redirect is applied. Required when parent element Condition is specified and sibling KeyPrefixEquals is not specified. If both are specified, then both must be true for the redirect to be applied.
-- * KeyPrefixEquals [KeyPrefixEquals] The object key name prefix when the redirect is applied. For example, to redirect requests for ExamplePage.html, the key prefix will be ExamplePage.html. To redirect request for all pages with the prefix docs/, the key prefix will be /docs, which identifies all objects in the docs/ folder. Required when the parent element Condition is specified and sibling HttpErrorCodeReturnedEquals is not specified. If both conditions are specified, both must be true for the redirect to be applied.
-- @return Condition structure as a key-value pair table
function M.Condition(args)
	assert(args, "You must provdide an argument table when creating Condition")
	local t = { 
		["HttpErrorCodeReturnedEquals"] = args["HttpErrorCodeReturnedEquals"],
		["KeyPrefixEquals"] = args["KeyPrefixEquals"],
	}
	asserts.AssertCondition(t)
	return t
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
-- * Key [ObjectKey] The object key name to use when a 4XX class error occurs.
-- Required key: Key
-- @return ErrorDocument structure as a key-value pair table
function M.ErrorDocument(args)
	assert(args, "You must provdide an argument table when creating ErrorDocument")
	local t = { 
		["Key"] = args["Key"],
	}
	asserts.AssertErrorDocument(t)
	return t
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
-- * Filter [MetricsFilter] Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction (MetricsAndOperator).
-- * Id [MetricsId] The ID used to identify the metrics configuration.
-- Required key: Id
-- @return MetricsConfiguration structure as a key-value pair table
function M.MetricsConfiguration(args)
	assert(args, "You must provdide an argument table when creating MetricsConfiguration")
	local t = { 
		["Filter"] = args["Filter"],
		["Id"] = args["Id"],
	}
	asserts.AssertMetricsConfiguration(t)
	return t
end

keys.LoggingEnabled = { ["TargetPrefix"] = true, ["TargetBucket"] = true, ["TargetGrants"] = true, nil }

function asserts.AssertLoggingEnabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingEnabled to be of type 'table'")
	if struct["TargetPrefix"] then asserts.AssertTargetPrefix(struct["TargetPrefix"]) end
	if struct["TargetBucket"] then asserts.AssertTargetBucket(struct["TargetBucket"]) end
	if struct["TargetGrants"] then asserts.AssertTargetGrants(struct["TargetGrants"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingEnabled[k], "LoggingEnabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingEnabled
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetPrefix [TargetPrefix] This element lets you specify a prefix for the keys that the log files will be stored under.
-- * TargetBucket [TargetBucket] Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case you should choose a different TargetPrefix for each source bucket so that the delivered log files can be distinguished by key.
-- * TargetGrants [TargetGrants] 
-- @return LoggingEnabled structure as a key-value pair table
function M.LoggingEnabled(args)
	assert(args, "You must provdide an argument table when creating LoggingEnabled")
	local t = { 
		["TargetPrefix"] = args["TargetPrefix"],
		["TargetBucket"] = args["TargetBucket"],
		["TargetGrants"] = args["TargetGrants"],
	}
	asserts.AssertLoggingEnabled(t)
	return t
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
-- * Date [Date] Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601 Format.
-- * Days [Days] Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
-- * StorageClass [TransitionStorageClass] The class of storage used to store the object.
-- @return Transition structure as a key-value pair table
function M.Transition(args)
	assert(args, "You must provdide an argument table when creating Transition")
	local t = { 
		["Date"] = args["Date"],
		["Days"] = args["Days"],
		["StorageClass"] = args["StorageClass"],
	}
	asserts.AssertTransition(t)
	return t
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
	assert(args, "You must provdide an argument table when creating QueueConfigurationDeprecated")
	local t = { 
		["Queue"] = args["Queue"],
		["Events"] = args["Events"],
		["Id"] = args["Id"],
		["Event"] = args["Event"],
	}
	asserts.AssertQueueConfigurationDeprecated(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Error")
	local t = { 
		["VersionId"] = args["VersionId"],
		["Code"] = args["Code"],
		["Message"] = args["Message"],
		["Key"] = args["Key"],
	}
	asserts.AssertError(t)
	return t
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
	assert(args, "You must provdide an argument table when creating BucketLoggingStatus")
	local t = { 
		["LoggingEnabled"] = args["LoggingEnabled"],
	}
	asserts.AssertBucketLoggingStatus(t)
	return t
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
-- * InventoryConfiguration [InventoryConfiguration] Specifies the inventory configuration.
-- * Bucket [BucketName] The name of the bucket where the inventory configuration will be stored.
-- * Id [InventoryId] The ID used to identify the inventory configuration.
-- Required key: Bucket
-- Required key: Id
-- Required key: InventoryConfiguration
-- @return PutBucketInventoryConfigurationRequest structure as a key-value pair table
function M.PutBucketInventoryConfigurationRequest(args)
	assert(args, "You must provdide an argument table when creating PutBucketInventoryConfigurationRequest")
	local t = { 
		["InventoryConfiguration"] = args["InventoryConfiguration"],
		["Bucket"] = args["Bucket"],
		["Id"] = args["Id"],
	}
	asserts.AssertPutBucketInventoryConfigurationRequest(t)
	return t
end

keys.RestoreRequest = { ["GlacierJobParameters"] = true, ["Days"] = true, nil }

function asserts.AssertRestoreRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreRequest to be of type 'table'")
	assert(struct["Days"], "Expected key Days to exist in table")
	if struct["GlacierJobParameters"] then asserts.AssertGlacierJobParameters(struct["GlacierJobParameters"]) end
	if struct["Days"] then asserts.AssertDays(struct["Days"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreRequest[k], "RestoreRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GlacierJobParameters [GlacierJobParameters] Glacier related prameters pertaining to this job.
-- * Days [Days] Lifetime of the active copy in days
-- Required key: Days
-- @return RestoreRequest structure as a key-value pair table
function M.RestoreRequest(args)
	assert(args, "You must provdide an argument table when creating RestoreRequest")
	local t = { 
		["GlacierJobParameters"] = args["GlacierJobParameters"],
		["Days"] = args["Days"],
	}
	asserts.AssertRestoreRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating NotificationConfigurationDeprecated")
	local t = { 
		["CloudFunctionConfiguration"] = args["CloudFunctionConfiguration"],
		["QueueConfiguration"] = args["QueueConfiguration"],
		["TopicConfiguration"] = args["TopicConfiguration"],
	}
	asserts.AssertNotificationConfigurationDeprecated(t)
	return t
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
-- * Status [BucketVersioningStatus] The versioning state of the bucket.
-- * MFADelete [MFADeleteStatus] Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
-- @return GetBucketVersioningOutput structure as a key-value pair table
function M.GetBucketVersioningOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketVersioningOutput")
	local t = { 
		["Status"] = args["Status"],
		["MFADelete"] = args["MFADelete"],
	}
	asserts.AssertGetBucketVersioningOutput(t)
	return t
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
-- * ResponseContentEncoding [ResponseContentEncoding] Sets the Content-Encoding header of the response.
-- * ResponseContentLanguage [ResponseContentLanguage] Sets the Content-Language header of the response.
-- * SSECustomerAlgorithm [SSECustomerAlgorithm] Specifies the algorithm to use to when encrypting the object (e.g., AES256).
-- * ResponseContentType [ResponseContentType] Sets the Content-Type header of the response.
-- * IfUnmodifiedSince [IfUnmodifiedSince] Return the object only if it has not been modified since the specified time, otherwise return a 412 (precondition failed).
-- * VersionId [ObjectVersionId] VersionId used to reference a specific version of the object.
-- * RequestPayer [RequestPayer] 
-- * ResponseCacheControl [ResponseCacheControl] Sets the Cache-Control header of the response.
-- * SSECustomerKey [SSECustomerKey] Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
-- * Bucket [BucketName] 
-- * IfNoneMatch [IfNoneMatch] Return the object only if its entity tag (ETag) is different from the one specified, otherwise return a 304 (not modified).
-- * ResponseContentDisposition [ResponseContentDisposition] Sets the Content-Disposition header of the response
-- * Range [Range] Downloads the specified range bytes of an object. For more information about the HTTP Range header, go to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
-- * Key [ObjectKey] 
-- * IfMatch [IfMatch] Return the object only if its entity tag (ETag) is the same as the one specified, otherwise return a 412 (precondition failed).
-- * ResponseExpires [ResponseExpires] Sets the Expires header of the response.
-- * PartNumber [PartNumber] Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.
-- * IfModifiedSince [IfModifiedSince] Return the object only if it has been modified since the specified time, otherwise return a 304 (not modified).
-- * SSECustomerKeyMD5 [SSECustomerKeyMD5] Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
-- Required key: Bucket
-- Required key: Key
-- @return GetObjectRequest structure as a key-value pair table
function M.GetObjectRequest(args)
	assert(args, "You must provdide an argument table when creating GetObjectRequest")
	local t = { 
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
	asserts.AssertGetObjectRequest(t)
	return t
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
-- * Policy [Policy] The bucket policy as a JSON document.
-- @return GetBucketPolicyOutput structure as a key-value pair table
function M.GetBucketPolicyOutput(args)
	assert(args, "You must provdide an argument table when creating GetBucketPolicyOutput")
	local t = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetBucketPolicyOutput(t)
	return t
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
-- * VersionId [ObjectVersionId] VersionId for the specific version of the object to delete.
-- * Key [ObjectKey] Key name of the object to delete.
-- Required key: Key
-- @return ObjectIdentifier structure as a key-value pair table
function M.ObjectIdentifier(args)
	assert(args, "You must provdide an argument table when creating ObjectIdentifier")
	local t = { 
		["VersionId"] = args["VersionId"],
		["Key"] = args["Key"],
	}
	asserts.AssertObjectIdentifier(t)
	return t
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
-- * DisplayName [DisplayName] Name of the Principal.
-- * ID [ID] If the principal is an AWS account, it provides the Canonical User ID. If the principal is an IAM User, it provides a user ARN value.
-- @return Initiator structure as a key-value pair table
function M.Initiator(args)
	assert(args, "You must provdide an argument table when creating Initiator")
	local t = { 
		["DisplayName"] = args["DisplayName"],
		["ID"] = args["ID"],
	}
	asserts.AssertInitiator(t)
	return t
end

keys.NoSuchKey = { nil }

function asserts.AssertNoSuchKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchKey to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoSuchKey[k], "NoSuchKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchKey
-- The specified key does not exist.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NoSuchKey structure as a key-value pair table
function M.NoSuchKey(args)
	assert(args, "You must provdide an argument table when creating NoSuchKey")
	local t = { 
	}
	asserts.AssertNoSuchKey(t)
	return t
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
-- * Payer [Payer] Specifies who pays for the download and request fees.
-- Required key: Payer
-- @return RequestPaymentConfiguration structure as a key-value pair table
function M.RequestPaymentConfiguration(args)
	assert(args, "You must provdide an argument table when creating RequestPaymentConfiguration")
	local t = { 
		["Payer"] = args["Payer"],
	}
	asserts.AssertRequestPaymentConfiguration(t)
	return t
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

function asserts.AssertExposeHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected ExposeHeader to be of type 'string'")
end

--  
function M.ExposeHeader(str)
	asserts.AssertExposeHeader(str)
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

function asserts.AssertObjectStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectStorageClass to be of type 'string'")
end

--  
function M.ObjectStorageClass(str)
	asserts.AssertObjectStorageClass(str)
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

-- Requests Amazon S3 to encode the object keys in the response and specifies the encoding method to use. An object key may contain any Unicode character; however, XML 1.0 parser cannot parse some characters, such as characters with an ASCII value from 0 to 10. For characters that are not supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the response.
function M.EncodingType(str)
	asserts.AssertEncodingType(str)
	return str
end

function asserts.AssertNotificationId(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationId to be of type 'string'")
end

-- Optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
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

function asserts.AssertRequestCharged(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCharged to be of type 'string'")
end

-- If present, indicates that the requester was successfully charged for the request.
function M.RequestCharged(str)
	asserts.AssertRequestCharged(str)
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

-- Confirms that the requester knows that she or he will be charged for the request. Bucket owners need not specify this parameter in their requests. Documentation on downloading objects from requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
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

function asserts.AssertResponseCacheControl(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseCacheControl to be of type 'string'")
end

--  
function M.ResponseCacheControl(str)
	asserts.AssertResponseCacheControl(str)
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

function asserts.AssertEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected Event to be of type 'string'")
end

-- Bucket event for which to send notifications.
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

function asserts.AssertContentEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentEncoding to be of type 'string'")
end

--  
function M.ContentEncoding(str)
	asserts.AssertContentEncoding(str)
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

function asserts.AssertMaxKeys(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxKeys to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxKeys(integer)
	asserts.AssertMaxKeys(integer)
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

function asserts.AssertFetchOwner(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected FetchOwner to be of type 'boolean'")
end

function M.FetchOwner(boolean)
	asserts.AssertFetchOwner(boolean)
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
	assert(type(string) == "string", "Expected CopySourceSSECustomerKey to be of type 'string'")
end

function M.CopySourceSSECustomerKey(blob)
	asserts.AssertCopySourceSSECustomerKey(blob)
	return blob
end

function asserts.AssertBody(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Body to be of type 'string'")
end

function M.Body(blob)
	asserts.AssertBody(blob)
	return blob
end

function asserts.AssertSSECustomerKey(blob)
	assert(blob)
	assert(type(string) == "string", "Expected SSECustomerKey to be of type 'string'")
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

-- A list of containers for key value pair that defines the criteria for the filter rule.
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
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectVersionsAsync(ListObjectVersionsRequest, cb)
	assert(ListObjectVersionsRequest, "You must provide a ListObjectVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListObjectVersionsSync(ListObjectVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectVersionsAsync(ListObjectVersionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketPolicy asynchronously, invoking a callback when done
-- @param PutBucketPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketPolicyAsync(PutBucketPolicyRequest, cb)
	assert(PutBucketPolicyRequest, "You must provide a PutBucketPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketPolicySync(PutBucketPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketPolicyAsync(PutBucketPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBucketInventoryConfigurations asynchronously, invoking a callback when done
-- @param ListBucketInventoryConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketInventoryConfigurationsAsync(ListBucketInventoryConfigurationsRequest, cb)
	assert(ListBucketInventoryConfigurationsRequest, "You must provide a ListBucketInventoryConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBucketInventoryConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListBucketInventoryConfigurationsSync(ListBucketInventoryConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketInventoryConfigurationsAsync(ListBucketInventoryConfigurationsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketPolicy asynchronously, invoking a callback when done
-- @param DeleteBucketPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketPolicyAsync(DeleteBucketPolicyRequest, cb)
	assert(DeleteBucketPolicyRequest, "You must provide a DeleteBucketPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketPolicySync(DeleteBucketPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketPolicyAsync(DeleteBucketPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketLifecycleConfiguration asynchronously, invoking a callback when done
-- @param PutBucketLifecycleConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketLifecycleConfigurationAsync(PutBucketLifecycleConfigurationRequest, cb)
	assert(PutBucketLifecycleConfigurationRequest, "You must provide a PutBucketLifecycleConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketLifecycleConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketLifecycleConfigurationSync(PutBucketLifecycleConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketLifecycleConfigurationAsync(PutBucketLifecycleConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketRequestPayment asynchronously, invoking a callback when done
-- @param PutBucketRequestPaymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketRequestPaymentAsync(PutBucketRequestPaymentRequest, cb)
	assert(PutBucketRequestPaymentRequest, "You must provide a PutBucketRequestPaymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketRequestPayment",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketRequestPaymentSync(PutBucketRequestPaymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketRequestPaymentAsync(PutBucketRequestPaymentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjects asynchronously, invoking a callback when done
-- @param ListObjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectsAsync(ListObjectsRequest, cb)
	assert(ListObjectsRequest, "You must provide a ListObjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjects",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListObjectsSync(ListObjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectsAsync(ListObjectsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketMetricsConfiguration asynchronously, invoking a callback when done
-- @param GetBucketMetricsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketMetricsConfigurationAsync(GetBucketMetricsConfigurationRequest, cb)
	assert(GetBucketMetricsConfigurationRequest, "You must provide a GetBucketMetricsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketMetricsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketMetricsConfigurationSync(GetBucketMetricsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketMetricsConfigurationAsync(GetBucketMetricsConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketInventoryConfiguration asynchronously, invoking a callback when done
-- @param PutBucketInventoryConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketInventoryConfigurationAsync(PutBucketInventoryConfigurationRequest, cb)
	assert(PutBucketInventoryConfigurationRequest, "You must provide a PutBucketInventoryConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketInventoryConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketInventoryConfigurationSync(PutBucketInventoryConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketInventoryConfigurationAsync(PutBucketInventoryConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketLogging asynchronously, invoking a callback when done
-- @param PutBucketLoggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketLoggingAsync(PutBucketLoggingRequest, cb)
	assert(PutBucketLoggingRequest, "You must provide a PutBucketLoggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketLogging",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketLoggingSync(PutBucketLoggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketLoggingAsync(PutBucketLoggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketReplication asynchronously, invoking a callback when done
-- @param PutBucketReplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketReplicationAsync(PutBucketReplicationRequest, cb)
	assert(PutBucketReplicationRequest, "You must provide a PutBucketReplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketReplication",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketReplicationSync(PutBucketReplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketReplicationAsync(PutBucketReplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketAccelerateConfiguration asynchronously, invoking a callback when done
-- @param PutBucketAccelerateConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketAccelerateConfigurationAsync(PutBucketAccelerateConfigurationRequest, cb)
	assert(PutBucketAccelerateConfigurationRequest, "You must provide a PutBucketAccelerateConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketAccelerateConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketAccelerateConfigurationSync(PutBucketAccelerateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketAccelerateConfigurationAsync(PutBucketAccelerateConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketAcl asynchronously, invoking a callback when done
-- @param PutBucketAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketAclAsync(PutBucketAclRequest, cb)
	assert(PutBucketAclRequest, "You must provide a PutBucketAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketAcl",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketAclSync(PutBucketAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketAclAsync(PutBucketAclRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadPart asynchronously, invoking a callback when done
-- @param UploadPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadPartAsync(UploadPartRequest, cb)
	assert(UploadPartRequest, "You must provide a UploadPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadPart",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.UploadPartSync(UploadPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadPartAsync(UploadPartRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObject asynchronously, invoking a callback when done
-- @param PutObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutObjectAsync(PutObjectRequest, cb)
	assert(PutObjectRequest, "You must provide a PutObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutObjectSync(PutObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectAsync(PutObjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketCors asynchronously, invoking a callback when done
-- @param DeleteBucketCorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketCorsAsync(DeleteBucketCorsRequest, cb)
	assert(DeleteBucketCorsRequest, "You must provide a DeleteBucketCorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketCors",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketCorsSync(DeleteBucketCorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketCorsAsync(DeleteBucketCorsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketVersioning asynchronously, invoking a callback when done
-- @param PutBucketVersioningRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketVersioningAsync(PutBucketVersioningRequest, cb)
	assert(PutBucketVersioningRequest, "You must provide a PutBucketVersioningRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketVersioning",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketVersioningSync(PutBucketVersioningRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketVersioningAsync(PutBucketVersioningRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketCors asynchronously, invoking a callback when done
-- @param GetBucketCorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketCorsAsync(GetBucketCorsRequest, cb)
	assert(GetBucketCorsRequest, "You must provide a GetBucketCorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketCors",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketCorsSync(GetBucketCorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketCorsAsync(GetBucketCorsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketAcl asynchronously, invoking a callback when done
-- @param GetBucketAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketAclAsync(GetBucketAclRequest, cb)
	assert(GetBucketAclRequest, "You must provide a GetBucketAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketAcl",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketAclSync(GetBucketAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketAclAsync(GetBucketAclRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketMetricsConfiguration asynchronously, invoking a callback when done
-- @param DeleteBucketMetricsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketMetricsConfigurationAsync(DeleteBucketMetricsConfigurationRequest, cb)
	assert(DeleteBucketMetricsConfigurationRequest, "You must provide a DeleteBucketMetricsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketMetricsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketMetricsConfigurationSync(DeleteBucketMetricsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketMetricsConfigurationAsync(DeleteBucketMetricsConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketLogging asynchronously, invoking a callback when done
-- @param GetBucketLoggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLoggingAsync(GetBucketLoggingRequest, cb)
	assert(GetBucketLoggingRequest, "You must provide a GetBucketLoggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketLogging",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketLoggingSync(GetBucketLoggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketLoggingAsync(GetBucketLoggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectTagging asynchronously, invoking a callback when done
-- @param GetObjectTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectTaggingAsync(GetObjectTaggingRequest, cb)
	assert(GetObjectTaggingRequest, "You must provide a GetObjectTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectTagging",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetObjectTaggingSync(GetObjectTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectTaggingAsync(GetObjectTaggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call HeadBucket asynchronously, invoking a callback when done
-- @param HeadBucketRequest
-- @param cb Callback function accepting two args: response, error_message
function M.HeadBucketAsync(HeadBucketRequest, cb)
	assert(HeadBucketRequest, "You must provide a HeadBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".HeadBucket",
	}

	local request_handler, err = request_handlers.from_http_method("HEAD")
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
-- @return error_message
function M.HeadBucketSync(HeadBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.HeadBucketAsync(HeadBucketRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBucketMetricsConfigurations asynchronously, invoking a callback when done
-- @param ListBucketMetricsConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketMetricsConfigurationsAsync(ListBucketMetricsConfigurationsRequest, cb)
	assert(ListBucketMetricsConfigurationsRequest, "You must provide a ListBucketMetricsConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBucketMetricsConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListBucketMetricsConfigurationsSync(ListBucketMetricsConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketMetricsConfigurationsAsync(ListBucketMetricsConfigurationsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBuckets asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBuckets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBuckets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.ListBucketsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketsAsync(function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketWebsite asynchronously, invoking a callback when done
-- @param DeleteBucketWebsiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketWebsiteAsync(DeleteBucketWebsiteRequest, cb)
	assert(DeleteBucketWebsiteRequest, "You must provide a DeleteBucketWebsiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketWebsite",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketWebsiteSync(DeleteBucketWebsiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketWebsiteAsync(DeleteBucketWebsiteRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketInventoryConfiguration asynchronously, invoking a callback when done
-- @param DeleteBucketInventoryConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketInventoryConfigurationAsync(DeleteBucketInventoryConfigurationRequest, cb)
	assert(DeleteBucketInventoryConfigurationRequest, "You must provide a DeleteBucketInventoryConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketInventoryConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketInventoryConfigurationSync(DeleteBucketInventoryConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketInventoryConfigurationAsync(DeleteBucketInventoryConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketNotificationConfiguration asynchronously, invoking a callback when done
-- @param GetBucketNotificationConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketNotificationConfigurationAsync(GetBucketNotificationConfigurationRequest, cb)
	assert(GetBucketNotificationConfigurationRequest, "You must provide a GetBucketNotificationConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketNotificationConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketNotificationConfigurationSync(GetBucketNotificationConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketNotificationConfigurationAsync(GetBucketNotificationConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObjects asynchronously, invoking a callback when done
-- @param DeleteObjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectsAsync(DeleteObjectsRequest, cb)
	assert(DeleteObjectsRequest, "You must provide a DeleteObjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteObjectsSync(DeleteObjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectsAsync(DeleteObjectsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketReplication asynchronously, invoking a callback when done
-- @param DeleteBucketReplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketReplicationAsync(DeleteBucketReplicationRequest, cb)
	assert(DeleteBucketReplicationRequest, "You must provide a DeleteBucketReplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketReplication",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketReplicationSync(DeleteBucketReplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketReplicationAsync(DeleteBucketReplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketWebsite asynchronously, invoking a callback when done
-- @param PutBucketWebsiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketWebsiteAsync(PutBucketWebsiteRequest, cb)
	assert(PutBucketWebsiteRequest, "You must provide a PutBucketWebsiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketWebsite",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketWebsiteSync(PutBucketWebsiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketWebsiteAsync(PutBucketWebsiteRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyObject asynchronously, invoking a callback when done
-- @param CopyObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CopyObjectAsync(CopyObjectRequest, cb)
	assert(CopyObjectRequest, "You must provide a CopyObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.CopyObjectSync(CopyObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyObjectAsync(CopyObjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketReplication asynchronously, invoking a callback when done
-- @param GetBucketReplicationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketReplicationAsync(GetBucketReplicationRequest, cb)
	assert(GetBucketReplicationRequest, "You must provide a GetBucketReplicationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketReplication",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketReplicationSync(GetBucketReplicationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketReplicationAsync(GetBucketReplicationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketAnalyticsConfiguration asynchronously, invoking a callback when done
-- @param GetBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketAnalyticsConfigurationAsync(GetBucketAnalyticsConfigurationRequest, cb)
	assert(GetBucketAnalyticsConfigurationRequest, "You must provide a GetBucketAnalyticsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketAnalyticsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketAnalyticsConfigurationSync(GetBucketAnalyticsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketAnalyticsConfigurationAsync(GetBucketAnalyticsConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketNotificationConfiguration asynchronously, invoking a callback when done
-- @param PutBucketNotificationConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketNotificationConfigurationAsync(PutBucketNotificationConfigurationRequest, cb)
	assert(PutBucketNotificationConfigurationRequest, "You must provide a PutBucketNotificationConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketNotificationConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketNotificationConfigurationSync(PutBucketNotificationConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketNotificationConfigurationAsync(PutBucketNotificationConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketAccelerateConfiguration asynchronously, invoking a callback when done
-- @param GetBucketAccelerateConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketAccelerateConfigurationAsync(GetBucketAccelerateConfigurationRequest, cb)
	assert(GetBucketAccelerateConfigurationRequest, "You must provide a GetBucketAccelerateConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketAccelerateConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketAccelerateConfigurationSync(GetBucketAccelerateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketAccelerateConfigurationAsync(GetBucketAccelerateConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObjectTagging asynchronously, invoking a callback when done
-- @param DeleteObjectTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectTaggingAsync(DeleteObjectTaggingRequest, cb)
	assert(DeleteObjectTaggingRequest, "You must provide a DeleteObjectTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObjectTagging",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteObjectTaggingSync(DeleteObjectTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectTaggingAsync(DeleteObjectTaggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketTagging asynchronously, invoking a callback when done
-- @param DeleteBucketTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketTaggingAsync(DeleteBucketTaggingRequest, cb)
	assert(DeleteBucketTaggingRequest, "You must provide a DeleteBucketTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketTagging",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketTaggingSync(DeleteBucketTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketTaggingAsync(DeleteBucketTaggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectTorrent asynchronously, invoking a callback when done
-- @param GetObjectTorrentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectTorrentAsync(GetObjectTorrentRequest, cb)
	assert(GetObjectTorrentRequest, "You must provide a GetObjectTorrentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectTorrent",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetObjectTorrentSync(GetObjectTorrentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectTorrentAsync(GetObjectTorrentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBucket asynchronously, invoking a callback when done
-- @param CreateBucketRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBucketAsync(CreateBucketRequest, cb)
	assert(CreateBucketRequest, "You must provide a CreateBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateBucket",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.CreateBucketSync(CreateBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBucketAsync(CreateBucketRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteMultipartUpload asynchronously, invoking a callback when done
-- @param CompleteMultipartUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CompleteMultipartUploadAsync(CompleteMultipartUploadRequest, cb)
	assert(CompleteMultipartUploadRequest, "You must provide a CompleteMultipartUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CompleteMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CompleteMultipartUploadSync(CompleteMultipartUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteMultipartUploadAsync(CompleteMultipartUploadRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketWebsite asynchronously, invoking a callback when done
-- @param GetBucketWebsiteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketWebsiteAsync(GetBucketWebsiteRequest, cb)
	assert(GetBucketWebsiteRequest, "You must provide a GetBucketWebsiteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketWebsite",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketWebsiteSync(GetBucketWebsiteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketWebsiteAsync(GetBucketWebsiteRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMultipartUpload asynchronously, invoking a callback when done
-- @param CreateMultipartUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMultipartUploadAsync(CreateMultipartUploadRequest, cb)
	assert(CreateMultipartUploadRequest, "You must provide a CreateMultipartUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateMultipartUploadSync(CreateMultipartUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMultipartUploadAsync(CreateMultipartUploadRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucket asynchronously, invoking a callback when done
-- @param DeleteBucketRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketAsync(DeleteBucketRequest, cb)
	assert(DeleteBucketRequest, "You must provide a DeleteBucketRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucket",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketSync(DeleteBucketRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketAsync(DeleteBucketRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObject asynchronously, invoking a callback when done
-- @param GetObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectAsync(GetObjectRequest, cb)
	assert(GetObjectRequest, "You must provide a GetObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObject",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetObjectSync(GetObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectAsync(GetObjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObjectTagging asynchronously, invoking a callback when done
-- @param PutObjectTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutObjectTaggingAsync(PutObjectTaggingRequest, cb)
	assert(PutObjectTaggingRequest, "You must provide a PutObjectTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObjectTagging",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutObjectTaggingSync(PutObjectTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectTaggingAsync(PutObjectTaggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketPolicy asynchronously, invoking a callback when done
-- @param GetBucketPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketPolicyAsync(GetBucketPolicyRequest, cb)
	assert(GetBucketPolicyRequest, "You must provide a GetBucketPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketPolicySync(GetBucketPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketPolicyAsync(GetBucketPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketVersioning asynchronously, invoking a callback when done
-- @param GetBucketVersioningRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketVersioningAsync(GetBucketVersioningRequest, cb)
	assert(GetBucketVersioningRequest, "You must provide a GetBucketVersioningRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketVersioning",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketVersioningSync(GetBucketVersioningRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketVersioningAsync(GetBucketVersioningRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call HeadObject asynchronously, invoking a callback when done
-- @param HeadObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.HeadObjectAsync(HeadObjectRequest, cb)
	assert(HeadObjectRequest, "You must provide a HeadObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".HeadObject",
	}

	local request_handler, err = request_handlers.from_http_method("HEAD")
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
-- @return error_message
function M.HeadObjectSync(HeadObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.HeadObjectAsync(HeadObjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMultipartUploads asynchronously, invoking a callback when done
-- @param ListMultipartUploadsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListMultipartUploadsAsync(ListMultipartUploadsRequest, cb)
	assert(ListMultipartUploadsRequest, "You must provide a ListMultipartUploadsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMultipartUploads",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListMultipartUploadsSync(ListMultipartUploadsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMultipartUploadsAsync(ListMultipartUploadsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketLifecycleConfiguration asynchronously, invoking a callback when done
-- @param GetBucketLifecycleConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLifecycleConfigurationAsync(GetBucketLifecycleConfigurationRequest, cb)
	assert(GetBucketLifecycleConfigurationRequest, "You must provide a GetBucketLifecycleConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketLifecycleConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketLifecycleConfigurationSync(GetBucketLifecycleConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketLifecycleConfigurationAsync(GetBucketLifecycleConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketRequestPayment asynchronously, invoking a callback when done
-- @param GetBucketRequestPaymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketRequestPaymentAsync(GetBucketRequestPaymentRequest, cb)
	assert(GetBucketRequestPaymentRequest, "You must provide a GetBucketRequestPaymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketRequestPayment",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketRequestPaymentSync(GetBucketRequestPaymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketRequestPaymentAsync(GetBucketRequestPaymentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketCors asynchronously, invoking a callback when done
-- @param PutBucketCorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketCorsAsync(PutBucketCorsRequest, cb)
	assert(PutBucketCorsRequest, "You must provide a PutBucketCorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketCors",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketCorsSync(PutBucketCorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketCorsAsync(PutBucketCorsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketTagging asynchronously, invoking a callback when done
-- @param PutBucketTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketTaggingAsync(PutBucketTaggingRequest, cb)
	assert(PutBucketTaggingRequest, "You must provide a PutBucketTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketTagging",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketTaggingSync(PutBucketTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketTaggingAsync(PutBucketTaggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketTagging asynchronously, invoking a callback when done
-- @param GetBucketTaggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketTaggingAsync(GetBucketTaggingRequest, cb)
	assert(GetBucketTaggingRequest, "You must provide a GetBucketTaggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketTagging",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketTaggingSync(GetBucketTaggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketTaggingAsync(GetBucketTaggingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortMultipartUpload asynchronously, invoking a callback when done
-- @param AbortMultipartUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AbortMultipartUploadAsync(AbortMultipartUploadRequest, cb)
	assert(AbortMultipartUploadRequest, "You must provide a AbortMultipartUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AbortMultipartUpload",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.AbortMultipartUploadSync(AbortMultipartUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortMultipartUploadAsync(AbortMultipartUploadRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObjectAcl asynchronously, invoking a callback when done
-- @param PutObjectAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutObjectAclAsync(PutObjectAclRequest, cb)
	assert(PutObjectAclRequest, "You must provide a PutObjectAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObjectAcl",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutObjectAclSync(PutObjectAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectAclAsync(PutObjectAclRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectsV2 asynchronously, invoking a callback when done
-- @param ListObjectsV2Request
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectsV2Async(ListObjectsV2Request, cb)
	assert(ListObjectsV2Request, "You must provide a ListObjectsV2Request")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectsV2",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListObjectsV2Sync(ListObjectsV2Request, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectsV2Async(ListObjectsV2Request, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketLocation asynchronously, invoking a callback when done
-- @param GetBucketLocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketLocationAsync(GetBucketLocationRequest, cb)
	assert(GetBucketLocationRequest, "You must provide a GetBucketLocationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketLocation",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketLocationSync(GetBucketLocationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketLocationAsync(GetBucketLocationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBucketInventoryConfiguration asynchronously, invoking a callback when done
-- @param GetBucketInventoryConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBucketInventoryConfigurationAsync(GetBucketInventoryConfigurationRequest, cb)
	assert(GetBucketInventoryConfigurationRequest, "You must provide a GetBucketInventoryConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBucketInventoryConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetBucketInventoryConfigurationSync(GetBucketInventoryConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBucketInventoryConfigurationAsync(GetBucketInventoryConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketLifecycle asynchronously, invoking a callback when done
-- @param DeleteBucketLifecycleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketLifecycleAsync(DeleteBucketLifecycleRequest, cb)
	assert(DeleteBucketLifecycleRequest, "You must provide a DeleteBucketLifecycleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketLifecycle",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketLifecycleSync(DeleteBucketLifecycleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketLifecycleAsync(DeleteBucketLifecycleRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketAnalyticsConfiguration asynchronously, invoking a callback when done
-- @param PutBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketAnalyticsConfigurationAsync(PutBucketAnalyticsConfigurationRequest, cb)
	assert(PutBucketAnalyticsConfigurationRequest, "You must provide a PutBucketAnalyticsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketAnalyticsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketAnalyticsConfigurationSync(PutBucketAnalyticsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketAnalyticsConfigurationAsync(PutBucketAnalyticsConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListParts asynchronously, invoking a callback when done
-- @param ListPartsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPartsAsync(ListPartsRequest, cb)
	assert(ListPartsRequest, "You must provide a ListPartsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListParts",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListPartsSync(ListPartsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPartsAsync(ListPartsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBucketAnalyticsConfigurations asynchronously, invoking a callback when done
-- @param ListBucketAnalyticsConfigurationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListBucketAnalyticsConfigurationsAsync(ListBucketAnalyticsConfigurationsRequest, cb)
	assert(ListBucketAnalyticsConfigurationsRequest, "You must provide a ListBucketAnalyticsConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBucketAnalyticsConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.ListBucketAnalyticsConfigurationsSync(ListBucketAnalyticsConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBucketAnalyticsConfigurationsAsync(ListBucketAnalyticsConfigurationsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectAcl asynchronously, invoking a callback when done
-- @param GetObjectAclRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectAclAsync(GetObjectAclRequest, cb)
	assert(GetObjectAclRequest, "You must provide a GetObjectAclRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectAcl",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
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
-- @return error_message
function M.GetObjectAclSync(GetObjectAclRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectAclAsync(GetObjectAclRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadPartCopy asynchronously, invoking a callback when done
-- @param UploadPartCopyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadPartCopyAsync(UploadPartCopyRequest, cb)
	assert(UploadPartCopyRequest, "You must provide a UploadPartCopyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadPartCopy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.UploadPartCopySync(UploadPartCopyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadPartCopyAsync(UploadPartCopyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBucketMetricsConfiguration asynchronously, invoking a callback when done
-- @param PutBucketMetricsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBucketMetricsConfigurationAsync(PutBucketMetricsConfigurationRequest, cb)
	assert(PutBucketMetricsConfigurationRequest, "You must provide a PutBucketMetricsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBucketMetricsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
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
-- @return error_message
function M.PutBucketMetricsConfigurationSync(PutBucketMetricsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBucketMetricsConfigurationAsync(PutBucketMetricsConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObject asynchronously, invoking a callback when done
-- @param DeleteObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectAsync(DeleteObjectRequest, cb)
	assert(DeleteObjectRequest, "You must provide a DeleteObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObject",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteObjectSync(DeleteObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectAsync(DeleteObjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreObject asynchronously, invoking a callback when done
-- @param RestoreObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreObjectAsync(RestoreObjectRequest, cb)
	assert(RestoreObjectRequest, "You must provide a RestoreObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreObject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RestoreObjectSync(RestoreObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreObjectAsync(RestoreObjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBucketAnalyticsConfiguration asynchronously, invoking a callback when done
-- @param DeleteBucketAnalyticsConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBucketAnalyticsConfigurationAsync(DeleteBucketAnalyticsConfigurationRequest, cb)
	assert(DeleteBucketAnalyticsConfigurationRequest, "You must provide a DeleteBucketAnalyticsConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBucketAnalyticsConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
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
-- @return error_message
function M.DeleteBucketAnalyticsConfigurationSync(DeleteBucketAnalyticsConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBucketAnalyticsConfigurationAsync(DeleteBucketAnalyticsConfigurationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
