--- GENERATED CODE - DO NOT MODIFY
-- AWS Signer (signer-2017-08-25)

local M = {}

M.metadata = {
	api_version = "2017-08-25",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "signer",
	service_abbreviation = "signer",
	service_full_name = "AWS Signer",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "signer-2017-08-25",
}

local keys = {}
local asserts = {}

keys.PutSigningProfileRequest = { ["platformId"] = true, ["profileName"] = true, ["overrides"] = true, ["signingParameters"] = true, ["signingMaterial"] = true, nil }

function asserts.AssertPutSigningProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSigningProfileRequest to be of type 'table'")
	assert(struct["profileName"], "Expected key profileName to exist in table")
	assert(struct["signingMaterial"], "Expected key signingMaterial to exist in table")
	assert(struct["platformId"], "Expected key platformId to exist in table")
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	if struct["overrides"] then asserts.AssertSigningPlatformOverrides(struct["overrides"]) end
	if struct["signingParameters"] then asserts.AssertSigningParameters(struct["signingParameters"]) end
	if struct["signingMaterial"] then asserts.AssertSigningMaterial(struct["signingMaterial"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSigningProfileRequest[k], "PutSigningProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSigningProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * platformId [PlatformId] <p>The ID of the signing profile to be created.</p>
-- * profileName [ProfileName] <p>The name of the signing profile to be created.</p>
-- * overrides [SigningPlatformOverrides] <p>A subfield of <code>platform</code>. This specifies any different configuration options that you want to apply to the chosen platform (such as a different <code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>
-- * signingParameters [SigningParameters] <p>Map of key-value pairs for signing. These can include any information that you want to use during signing.</p>
-- * signingMaterial [SigningMaterial] <p>The AWS Certificate Manager certificate that will be used to sign code with the new signing profile.</p>
-- Required key: profileName
-- Required key: signingMaterial
-- Required key: platformId
-- @return PutSigningProfileRequest structure as a key-value pair table
function M.PutSigningProfileRequest(args)
	assert(args, "You must provide an argument table when creating PutSigningProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{profileName}"] = args["profileName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["platformId"] = args["platformId"],
		["profileName"] = args["profileName"],
		["overrides"] = args["overrides"],
		["signingParameters"] = args["signingParameters"],
		["signingMaterial"] = args["signingMaterial"],
	}
	asserts.AssertPutSigningProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningMaterial = { ["certificateArn"] = true, nil }

function asserts.AssertSigningMaterial(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningMaterial to be of type 'table'")
	assert(struct["certificateArn"], "Expected key certificateArn to exist in table")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningMaterial[k], "SigningMaterial contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningMaterial
-- <p>The ACM certificate that is used to sign your code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [CertificateArn] <p>The Amazon Resource Name (ARN) of the certificates that is used to sign your code.</p>
-- Required key: certificateArn
-- @return SigningMaterial structure as a key-value pair table
function M.SigningMaterial(args)
	assert(args, "You must provide an argument table when creating SigningMaterial")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["certificateArn"] = args["certificateArn"],
	}
	asserts.AssertSigningMaterial(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Destination = { ["s3"] = true, nil }

function asserts.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	if struct["s3"] then asserts.AssertS3Destination(struct["s3"]) end
	for k,_ in pairs(struct) do
		assert(keys.Destination[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
-- <p>Points to an <code>S3Destination</code> object that contains information about your S3 bucket.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3 [S3Destination] <p>The <code>S3Destination</code> object.</p>
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
		["s3"] = args["s3"],
	}
	asserts.AssertDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSigningJobRequest = { ["jobId"] = true, nil }

function asserts.AssertDescribeSigningJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSigningJobRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSigningJobRequest[k], "DescribeSigningJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSigningJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobId [JobId] <p>The ID of the signing job on input.</p>
-- Required key: jobId
-- @return DescribeSigningJobRequest structure as a key-value pair table
function M.DescribeSigningJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSigningJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{jobId}"] = args["jobId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["jobId"] = args["jobId"],
	}
	asserts.AssertDescribeSigningJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningConfiguration = { ["encryptionAlgorithmOptions"] = true, ["hashAlgorithmOptions"] = true, nil }

function asserts.AssertSigningConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningConfiguration to be of type 'table'")
	assert(struct["encryptionAlgorithmOptions"], "Expected key encryptionAlgorithmOptions to exist in table")
	assert(struct["hashAlgorithmOptions"], "Expected key hashAlgorithmOptions to exist in table")
	if struct["encryptionAlgorithmOptions"] then asserts.AssertEncryptionAlgorithmOptions(struct["encryptionAlgorithmOptions"]) end
	if struct["hashAlgorithmOptions"] then asserts.AssertHashAlgorithmOptions(struct["hashAlgorithmOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningConfiguration[k], "SigningConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningConfiguration
-- <p>The configuration of an AWS Signer operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * encryptionAlgorithmOptions [EncryptionAlgorithmOptions] <p>The encryption algorithm options that are available for an AWS Signer job.</p>
-- * hashAlgorithmOptions [HashAlgorithmOptions] <p>The hash algorithm options that are available for an AWS Signer job.</p>
-- Required key: encryptionAlgorithmOptions
-- Required key: hashAlgorithmOptions
-- @return SigningConfiguration structure as a key-value pair table
function M.SigningConfiguration(args)
	assert(args, "You must provide an argument table when creating SigningConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["encryptionAlgorithmOptions"] = args["encryptionAlgorithmOptions"],
		["hashAlgorithmOptions"] = args["hashAlgorithmOptions"],
	}
	asserts.AssertSigningConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SignedObject = { ["s3"] = true, nil }

function asserts.AssertSignedObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignedObject to be of type 'table'")
	if struct["s3"] then asserts.AssertS3SignedObject(struct["s3"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignedObject[k], "SignedObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignedObject
-- <p>Points to an <code>S3SignedObject</code> object that contains information about your signed code image.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3 [S3SignedObject] <p>The <code>S3SignedObject</code>.</p>
-- @return SignedObject structure as a key-value pair table
function M.SignedObject(args)
	assert(args, "You must provide an argument table when creating SignedObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3"] = args["s3"],
	}
	asserts.AssertSignedObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelSigningProfileRequest = { ["profileName"] = true, nil }

function asserts.AssertCancelSigningProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelSigningProfileRequest to be of type 'table'")
	assert(struct["profileName"], "Expected key profileName to exist in table")
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelSigningProfileRequest[k], "CancelSigningProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelSigningProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * profileName [ProfileName] <p>The name of the signing profile to be canceled.</p>
-- Required key: profileName
-- @return CancelSigningProfileRequest structure as a key-value pair table
function M.CancelSigningProfileRequest(args)
	assert(args, "You must provide an argument table when creating CancelSigningProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{profileName}"] = args["profileName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["profileName"] = args["profileName"],
	}
	asserts.AssertCancelSigningProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningPlatformOverrides = { ["signingConfiguration"] = true, nil }

function asserts.AssertSigningPlatformOverrides(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningPlatformOverrides to be of type 'table'")
	if struct["signingConfiguration"] then asserts.AssertSigningConfigurationOverrides(struct["signingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningPlatformOverrides[k], "SigningPlatformOverrides contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningPlatformOverrides
-- <p>Any overrides that are applied to the signing configuration of an AWS Signer platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * signingConfiguration [SigningConfigurationOverrides] 
-- @return SigningPlatformOverrides structure as a key-value pair table
function M.SigningPlatformOverrides(args)
	assert(args, "You must provide an argument table when creating SigningPlatformOverrides")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["signingConfiguration"] = args["signingConfiguration"],
	}
	asserts.AssertSigningPlatformOverrides(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSigningPlatformResponse = { ["category"] = true, ["displayName"] = true, ["target"] = true, ["platformId"] = true, ["signingConfiguration"] = true, ["maxSizeInMB"] = true, ["partner"] = true, ["signingImageFormat"] = true, nil }

function asserts.AssertGetSigningPlatformResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSigningPlatformResponse to be of type 'table'")
	if struct["category"] then asserts.AssertCategory(struct["category"]) end
	if struct["displayName"] then asserts.AssertDisplayName(struct["displayName"]) end
	if struct["target"] then asserts.AssertString(struct["target"]) end
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	if struct["signingConfiguration"] then asserts.AssertSigningConfiguration(struct["signingConfiguration"]) end
	if struct["maxSizeInMB"] then asserts.AssertMaxSizeInMB(struct["maxSizeInMB"]) end
	if struct["partner"] then asserts.AssertString(struct["partner"]) end
	if struct["signingImageFormat"] then asserts.AssertSigningImageFormat(struct["signingImageFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSigningPlatformResponse[k], "GetSigningPlatformResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSigningPlatformResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [Category] <p>The category type of the target signing platform.</p>
-- * displayName [DisplayName] <p>The display name of the target signing platform.</p>
-- * target [String] <p>The validation template that is used by the target signing platform.</p>
-- * platformId [PlatformId] <p>The ID of the target signing platform.</p>
-- * signingConfiguration [SigningConfiguration] <p>A list of configurations applied to the target platform at signing.</p>
-- * maxSizeInMB [MaxSizeInMB] <p>The maximum size (in MB) of the payload that can be signed by the target platform.</p>
-- * partner [String] <p>A list of partner entities that use the target signing platform.</p>
-- * signingImageFormat [SigningImageFormat] <p>The format of the target platform's signing image.</p>
-- @return GetSigningPlatformResponse structure as a key-value pair table
function M.GetSigningPlatformResponse(args)
	assert(args, "You must provide an argument table when creating GetSigningPlatformResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["displayName"] = args["displayName"],
		["target"] = args["target"],
		["platformId"] = args["platformId"],
		["signingConfiguration"] = args["signingConfiguration"],
		["maxSizeInMB"] = args["maxSizeInMB"],
		["partner"] = args["partner"],
		["signingImageFormat"] = args["signingImageFormat"],
	}
	asserts.AssertGetSigningPlatformResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionAlgorithmOptions = { ["defaultValue"] = true, ["allowedValues"] = true, nil }

function asserts.AssertEncryptionAlgorithmOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionAlgorithmOptions to be of type 'table'")
	assert(struct["allowedValues"], "Expected key allowedValues to exist in table")
	assert(struct["defaultValue"], "Expected key defaultValue to exist in table")
	if struct["defaultValue"] then asserts.AssertEncryptionAlgorithm(struct["defaultValue"]) end
	if struct["allowedValues"] then asserts.AssertEncryptionAlgorithms(struct["allowedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionAlgorithmOptions[k], "EncryptionAlgorithmOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionAlgorithmOptions
-- <p>The encryption algorithm options that are available to an AWS Signer job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultValue [EncryptionAlgorithm] <p>The default encryption algorithm that is used by an AWS Signer job.</p>
-- * allowedValues [EncryptionAlgorithms] <p>The set of accepted encryption algorithms that are allowed in an AWS Signer job.</p>
-- Required key: allowedValues
-- Required key: defaultValue
-- @return EncryptionAlgorithmOptions structure as a key-value pair table
function M.EncryptionAlgorithmOptions(args)
	assert(args, "You must provide an argument table when creating EncryptionAlgorithmOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultValue"] = args["defaultValue"],
		["allowedValues"] = args["allowedValues"],
	}
	asserts.AssertEncryptionAlgorithmOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Destination = { ["prefix"] = true, ["bucketName"] = true, nil }

function asserts.AssertS3Destination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Destination to be of type 'table'")
	if struct["prefix"] then asserts.AssertPrefix(struct["prefix"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Destination[k], "S3Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Destination
-- <p>The name and prefix of the S3 bucket where AWS Signer saves your signed objects.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * prefix [Prefix] <p>An Amazon S3 prefix that you can use to limit responses to those that begin with the specified prefix.</p>
-- * bucketName [BucketName] <p>Name of the S3 bucket.</p>
-- @return S3Destination structure as a key-value pair table
function M.S3Destination(args)
	assert(args, "You must provide an argument table when creating S3Destination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["prefix"] = args["prefix"],
		["bucketName"] = args["bucketName"],
	}
	asserts.AssertS3Destination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSigningJobsResponse = { ["nextToken"] = true, ["jobs"] = true, nil }

function asserts.AssertListSigningJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningJobsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["jobs"] then asserts.AssertSigningJobs(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningJobsResponse[k], "ListSigningJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>String for specifying the next set of paginated results.</p>
-- * jobs [SigningJobs] <p>A list of your signing jobs.</p>
-- @return ListSigningJobsResponse structure as a key-value pair table
function M.ListSigningJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListSigningJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["jobs"] = args["jobs"],
	}
	asserts.AssertListSigningJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3SignedObject = { ["bucketName"] = true, ["key"] = true, nil }

function asserts.AssertS3SignedObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3SignedObject to be of type 'table'")
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	if struct["key"] then asserts.Assertkey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3SignedObject[k], "S3SignedObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3SignedObject
-- <p>The S3 bucket name and key where AWS Signer saved your signed code image.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bucketName [BucketName] <p>Name of the S3 bucket.</p>
-- * key [key] <p>Key name that uniquely identifies a signed code image in your bucket.</p>
-- @return S3SignedObject structure as a key-value pair table
function M.S3SignedObject(args)
	assert(args, "You must provide an argument table when creating S3SignedObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["bucketName"] = args["bucketName"],
		["key"] = args["key"],
	}
	asserts.AssertS3SignedObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutSigningProfileResponse = { ["arn"] = true, nil }

function asserts.AssertPutSigningProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSigningProfileResponse to be of type 'table'")
	if struct["arn"] then asserts.Assertstring(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSigningProfileResponse[k], "PutSigningProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSigningProfileResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arn [string] <p>The Amazon Resource Name (ARN) of the signing profile created.</p>
-- @return PutSigningProfileResponse structure as a key-value pair table
function M.PutSigningProfileResponse(args)
	assert(args, "You must provide an argument table when creating PutSigningProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arn"] = args["arn"],
	}
	asserts.AssertPutSigningProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HashAlgorithmOptions = { ["defaultValue"] = true, ["allowedValues"] = true, nil }

function asserts.AssertHashAlgorithmOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HashAlgorithmOptions to be of type 'table'")
	assert(struct["allowedValues"], "Expected key allowedValues to exist in table")
	assert(struct["defaultValue"], "Expected key defaultValue to exist in table")
	if struct["defaultValue"] then asserts.AssertHashAlgorithm(struct["defaultValue"]) end
	if struct["allowedValues"] then asserts.AssertHashAlgorithms(struct["allowedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.HashAlgorithmOptions[k], "HashAlgorithmOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HashAlgorithmOptions
-- <p>The hash algorithms that are available to an AWS Signer job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultValue [HashAlgorithm] <p>The default hash algorithm that is used in an AWS Signer job.</p>
-- * allowedValues [HashAlgorithms] <p>The set of accepted hash algorithms allowed in an AWS Signer job.</p>
-- Required key: allowedValues
-- Required key: defaultValue
-- @return HashAlgorithmOptions structure as a key-value pair table
function M.HashAlgorithmOptions(args)
	assert(args, "You must provide an argument table when creating HashAlgorithmOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultValue"] = args["defaultValue"],
		["allowedValues"] = args["allowedValues"],
	}
	asserts.AssertHashAlgorithmOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSigningPlatformsResponse = { ["platforms"] = true, ["nextToken"] = true, nil }

function asserts.AssertListSigningPlatformsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningPlatformsResponse to be of type 'table'")
	if struct["platforms"] then asserts.AssertSigningPlatforms(struct["platforms"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningPlatformsResponse[k], "ListSigningPlatformsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningPlatformsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * platforms [SigningPlatforms] <p>A list of all platforms that match the request parameters.</p>
-- * nextToken [String] <p>Value for specifying the next set of paginated results to return.</p>
-- @return ListSigningPlatformsResponse structure as a key-value pair table
function M.ListSigningPlatformsResponse(args)
	assert(args, "You must provide an argument table when creating ListSigningPlatformsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["platforms"] = args["platforms"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListSigningPlatformsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSigningJobsRequest = { ["status"] = true, ["platformId"] = true, ["nextToken"] = true, ["requestedBy"] = true, ["maxResults"] = true, nil }

function asserts.AssertListSigningJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningJobsRequest to be of type 'table'")
	if struct["status"] then asserts.AssertSigningStatus(struct["status"]) end
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["requestedBy"] then asserts.AssertRequestedBy(struct["requestedBy"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningJobsRequest[k], "ListSigningJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [SigningStatus] <p>A status value with which to filter your results.</p>
-- * platformId [PlatformId] <p>The ID of microcontroller platform that you specified for the distribution of your code image.</p>
-- * nextToken [NextToken] <p>String for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of <code>nextToken</code> from the response that you just received.</p>
-- * requestedBy [RequestedBy] <p>The IAM principal that requested the signing job.</p>
-- * maxResults [MaxResults] <p>Specifies the maximum number of items to return in the response. Use this parameter when paginating results. If additional items exist beyond the number you specify, the <code>nextToken</code> element is set in the response. Use the <code>nextToken</code> value in a subsequent request to retrieve additional items. </p>
-- @return ListSigningJobsRequest structure as a key-value pair table
function M.ListSigningJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListSigningJobsRequest")
    local query_args = { 
        ["status"] = args["status"],
        ["platformId"] = args["platformId"],
        ["nextToken"] = args["nextToken"],
        ["requestedBy"] = args["requestedBy"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["platformId"] = args["platformId"],
		["nextToken"] = args["nextToken"],
		["requestedBy"] = args["requestedBy"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListSigningJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSigningProfileRequest = { ["profileName"] = true, nil }

function asserts.AssertGetSigningProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSigningProfileRequest to be of type 'table'")
	assert(struct["profileName"], "Expected key profileName to exist in table")
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSigningProfileRequest[k], "GetSigningProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSigningProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * profileName [ProfileName] <p>The name of the target signing profile.</p>
-- Required key: profileName
-- @return GetSigningProfileRequest structure as a key-value pair table
function M.GetSigningProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetSigningProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{profileName}"] = args["profileName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["profileName"] = args["profileName"],
	}
	asserts.AssertGetSigningProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSigningProfileResponse = { ["status"] = true, ["platformId"] = true, ["overrides"] = true, ["signingParameters"] = true, ["signingMaterial"] = true, ["profileName"] = true, nil }

function asserts.AssertGetSigningProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSigningProfileResponse to be of type 'table'")
	if struct["status"] then asserts.AssertSigningProfileStatus(struct["status"]) end
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	if struct["overrides"] then asserts.AssertSigningPlatformOverrides(struct["overrides"]) end
	if struct["signingParameters"] then asserts.AssertSigningParameters(struct["signingParameters"]) end
	if struct["signingMaterial"] then asserts.AssertSigningMaterial(struct["signingMaterial"]) end
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSigningProfileResponse[k], "GetSigningProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSigningProfileResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [SigningProfileStatus] <p>The status of the target signing profile.</p>
-- * platformId [PlatformId] <p>The ID of the platform that is used by the target signing profile.</p>
-- * overrides [SigningPlatformOverrides] <p>A list of overrides applied by the target signing profile for signing operations.</p>
-- * signingParameters [SigningParameters] <p>A map of key-value pairs for signing operations that is attached to the target signing profile.</p>
-- * signingMaterial [SigningMaterial] <p>The ARN of the certificate that the target profile uses for signing operations.</p>
-- * profileName [ProfileName] <p>The name of the target signing profile.</p>
-- @return GetSigningProfileResponse structure as a key-value pair table
function M.GetSigningProfileResponse(args)
	assert(args, "You must provide an argument table when creating GetSigningProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["platformId"] = args["platformId"],
		["overrides"] = args["overrides"],
		["signingParameters"] = args["signingParameters"],
		["signingMaterial"] = args["signingMaterial"],
		["profileName"] = args["profileName"],
	}
	asserts.AssertGetSigningProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningConfigurationOverrides = { ["encryptionAlgorithm"] = true, ["hashAlgorithm"] = true, nil }

function asserts.AssertSigningConfigurationOverrides(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningConfigurationOverrides to be of type 'table'")
	if struct["encryptionAlgorithm"] then asserts.AssertEncryptionAlgorithm(struct["encryptionAlgorithm"]) end
	if struct["hashAlgorithm"] then asserts.AssertHashAlgorithm(struct["hashAlgorithm"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningConfigurationOverrides[k], "SigningConfigurationOverrides contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningConfigurationOverrides
-- <p>A signing configuration that overrides the default encryption or hash algorithm of a signing job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * encryptionAlgorithm [EncryptionAlgorithm] <p>A specified override of the default encryption algorithm that is used in an AWS Signer job.</p>
-- * hashAlgorithm [HashAlgorithm] <p>A specified override of the default hash algorithm that is used in an AWS Signer job.</p>
-- @return SigningConfigurationOverrides structure as a key-value pair table
function M.SigningConfigurationOverrides(args)
	assert(args, "You must provide an argument table when creating SigningConfigurationOverrides")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["encryptionAlgorithm"] = args["encryptionAlgorithm"],
		["hashAlgorithm"] = args["hashAlgorithm"],
	}
	asserts.AssertSigningConfigurationOverrides(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Source = { ["version"] = true, ["bucketName"] = true, ["key"] = true, nil }

function asserts.AssertS3Source(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Source to be of type 'table'")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	if struct["key"] then asserts.AssertKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Source[k], "S3Source contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Source
-- <p>Information about the S3 bucket where you saved your unsigned code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>Version of your source image in your version enabled S3 bucket.</p>
-- * bucketName [BucketName] <p>Name of the S3 bucket.</p>
-- * key [Key] <p>Key name of the bucket object that contains your unsigned code.</p>
-- Required key: bucketName
-- Required key: key
-- Required key: version
-- @return S3Source structure as a key-value pair table
function M.S3Source(args)
	assert(args, "You must provide an argument table when creating S3Source")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["bucketName"] = args["bucketName"],
		["key"] = args["key"],
	}
	asserts.AssertS3Source(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSigningJobResponse = { ["status"] = true, ["completedAt"] = true, ["platformId"] = true, ["overrides"] = true, ["signingParameters"] = true, ["signingMaterial"] = true, ["statusReason"] = true, ["jobId"] = true, ["source"] = true, ["signedObject"] = true, ["profileName"] = true, ["requestedBy"] = true, ["createdAt"] = true, nil }

function asserts.AssertDescribeSigningJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSigningJobResponse to be of type 'table'")
	if struct["status"] then asserts.AssertSigningStatus(struct["status"]) end
	if struct["completedAt"] then asserts.AssertCompletedAt(struct["completedAt"]) end
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	if struct["overrides"] then asserts.AssertSigningPlatformOverrides(struct["overrides"]) end
	if struct["signingParameters"] then asserts.AssertSigningParameters(struct["signingParameters"]) end
	if struct["signingMaterial"] then asserts.AssertSigningMaterial(struct["signingMaterial"]) end
	if struct["statusReason"] then asserts.AssertStatusReason(struct["statusReason"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	if struct["source"] then asserts.AssertSource(struct["source"]) end
	if struct["signedObject"] then asserts.AssertSignedObject(struct["signedObject"]) end
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	if struct["requestedBy"] then asserts.AssertRequestedBy(struct["requestedBy"]) end
	if struct["createdAt"] then asserts.AssertCreatedAt(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSigningJobResponse[k], "DescribeSigningJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSigningJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [SigningStatus] <p>Status of the signing job.</p>
-- * completedAt [CompletedAt] <p>Date and time that the signing job was completed.</p>
-- * platformId [PlatformId] <p>The microcontroller platform to which your signed code image will be distributed.</p>
-- * overrides [SigningPlatformOverrides] <p>A list of any overrides that were applied to the signing operation.</p>
-- * signingParameters [SigningParameters] <p>Map of user-assigned key-value pairs used during signing. These values contain any information that you specified for use in your signing job. </p>
-- * signingMaterial [SigningMaterial] <p>Amazon Resource Name (ARN) of your code signing certificate.</p>
-- * statusReason [StatusReason] <p>String value that contains the status reason.</p>
-- * jobId [JobId] <p>The ID of the signing job on output.</p>
-- * source [Source] <p>The object that contains the name of your S3 bucket or your raw code.</p>
-- * signedObject [SignedObject] <p>Name of the S3 bucket where the signed code image is saved by AWS Signer.</p>
-- * profileName [ProfileName] <p>The name of the profile that initiated the signing operation.</p>
-- * requestedBy [RequestedBy] <p>The IAM principal that requested the signing job.</p>
-- * createdAt [CreatedAt] <p>Date and time that the signing job was created.</p>
-- @return DescribeSigningJobResponse structure as a key-value pair table
function M.DescribeSigningJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSigningJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["completedAt"] = args["completedAt"],
		["platformId"] = args["platformId"],
		["overrides"] = args["overrides"],
		["signingParameters"] = args["signingParameters"],
		["signingMaterial"] = args["signingMaterial"],
		["statusReason"] = args["statusReason"],
		["jobId"] = args["jobId"],
		["source"] = args["source"],
		["signedObject"] = args["signedObject"],
		["profileName"] = args["profileName"],
		["requestedBy"] = args["requestedBy"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertDescribeSigningJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSigningPlatformRequest = { ["platformId"] = true, nil }

function asserts.AssertGetSigningPlatformRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSigningPlatformRequest to be of type 'table'")
	assert(struct["platformId"], "Expected key platformId to exist in table")
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSigningPlatformRequest[k], "GetSigningPlatformRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSigningPlatformRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * platformId [PlatformId] <p>The ID of the target signing platform.</p>
-- Required key: platformId
-- @return GetSigningPlatformRequest structure as a key-value pair table
function M.GetSigningPlatformRequest(args)
	assert(args, "You must provide an argument table when creating GetSigningPlatformRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{platformId}"] = args["platformId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["platformId"] = args["platformId"],
	}
	asserts.AssertGetSigningPlatformRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSigningProfilesResponse = { ["nextToken"] = true, ["profiles"] = true, nil }

function asserts.AssertListSigningProfilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningProfilesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["profiles"] then asserts.AssertSigningProfiles(struct["profiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningProfilesResponse[k], "ListSigningProfilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningProfilesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>Value for specifying the next set of paginated results to return.</p>
-- * profiles [SigningProfiles] <p>A list of profiles that are available in the AWS account. This includes profiles with the status of <code>CANCELED</code> if the <code>includeCanceled</code> parameter is set to <code>true</code>.</p>
-- @return ListSigningProfilesResponse structure as a key-value pair table
function M.ListSigningProfilesResponse(args)
	assert(args, "You must provide an argument table when creating ListSigningProfilesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["profiles"] = args["profiles"],
	}
	asserts.AssertListSigningProfilesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Source = { ["s3"] = true, nil }

function asserts.AssertSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Source to be of type 'table'")
	if struct["s3"] then asserts.AssertS3Source(struct["s3"]) end
	for k,_ in pairs(struct) do
		assert(keys.Source[k], "Source contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Source
-- <p>An <code>S3Source</code> object that contains information about the S3 bucket where you saved your unsigned code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3 [S3Source] <p>The <code>S3Source</code> object.</p>
-- @return Source structure as a key-value pair table
function M.Source(args)
	assert(args, "You must provide an argument table when creating Source")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3"] = args["s3"],
	}
	asserts.AssertSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSigningProfilesRequest = { ["includeCanceled"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListSigningProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningProfilesRequest to be of type 'table'")
	if struct["includeCanceled"] then asserts.Assertbool(struct["includeCanceled"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningProfilesRequest[k], "ListSigningProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * includeCanceled [bool] <p>Designates whether to include profiles with the status of <code>CANCELED</code>.</p>
-- * nextToken [NextToken] <p>Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of <code>nextToken</code> from the response that you just received.</p>
-- * maxResults [MaxResults] <p>The maximum number of profiles to be returned.</p>
-- @return ListSigningProfilesRequest structure as a key-value pair table
function M.ListSigningProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListSigningProfilesRequest")
    local query_args = { 
        ["includeCanceled"] = args["includeCanceled"],
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["includeCanceled"] = args["includeCanceled"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListSigningProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSigningPlatformsRequest = { ["category"] = true, ["partner"] = true, ["nextToken"] = true, ["target"] = true, ["maxResults"] = true, nil }

function asserts.AssertListSigningPlatformsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningPlatformsRequest to be of type 'table'")
	if struct["category"] then asserts.AssertString(struct["category"]) end
	if struct["partner"] then asserts.AssertString(struct["partner"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["target"] then asserts.AssertString(struct["target"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningPlatformsRequest[k], "ListSigningPlatformsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningPlatformsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [String] <p>The category type of a signing platform.</p>
-- * partner [String] <p>Any partner entities connected to a signing platform.</p>
-- * nextToken [String] <p>Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of <code>nextToken</code> from the response that you just received.</p>
-- * target [String] <p>The validation template that is used by the target signing platform.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to be returned by this operation.</p>
-- @return ListSigningPlatformsRequest structure as a key-value pair table
function M.ListSigningPlatformsRequest(args)
	assert(args, "You must provide an argument table when creating ListSigningPlatformsRequest")
    local query_args = { 
        ["category"] = args["category"],
        ["partner"] = args["partner"],
        ["nextToken"] = args["nextToken"],
        ["target"] = args["target"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["partner"] = args["partner"],
		["nextToken"] = args["nextToken"],
		["target"] = args["target"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListSigningPlatformsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningJob = { ["status"] = true, ["signingMaterial"] = true, ["jobId"] = true, ["source"] = true, ["signedObject"] = true, ["createdAt"] = true, nil }

function asserts.AssertSigningJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningJob to be of type 'table'")
	if struct["status"] then asserts.AssertSigningStatus(struct["status"]) end
	if struct["signingMaterial"] then asserts.AssertSigningMaterial(struct["signingMaterial"]) end
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	if struct["source"] then asserts.AssertSource(struct["source"]) end
	if struct["signedObject"] then asserts.AssertSignedObject(struct["signedObject"]) end
	if struct["createdAt"] then asserts.AssertCreatedAt(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningJob[k], "SigningJob contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningJob
-- <p>Contains information about a signing job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [SigningStatus] <p>The status of the signing job.</p>
-- * signingMaterial [SigningMaterial] <p>A <code>SigningMaterial</code> object that contains the Amazon Resource Name (ARN) of the certificate used for the signing job.</p>
-- * jobId [JobId] <p>The ID of the signing job.</p>
-- * source [Source] <p>A <code>Source</code> that contains information about a signing job's code image source.</p>
-- * signedObject [SignedObject] <p>A <code>SignedObject</code> structure that contains information about a signing job's signed code image.</p>
-- * createdAt [CreatedAt] <p>The date and time that the signing job was created.</p>
-- @return SigningJob structure as a key-value pair table
function M.SigningJob(args)
	assert(args, "You must provide an argument table when creating SigningJob")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["signingMaterial"] = args["signingMaterial"],
		["jobId"] = args["jobId"],
		["source"] = args["source"],
		["signedObject"] = args["signedObject"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertSigningJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningProfile = { ["platformId"] = true, ["profileName"] = true, ["status"] = true, ["signingParameters"] = true, ["signingMaterial"] = true, nil }

function asserts.AssertSigningProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningProfile to be of type 'table'")
	if struct["platformId"] then asserts.AssertPlatformId(struct["platformId"]) end
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	if struct["status"] then asserts.AssertSigningProfileStatus(struct["status"]) end
	if struct["signingParameters"] then asserts.AssertSigningParameters(struct["signingParameters"]) end
	if struct["signingMaterial"] then asserts.AssertSigningMaterial(struct["signingMaterial"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningProfile[k], "SigningProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningProfile
-- <p>Contains information about the ACM certificates and AWS Signer configuration parameters that can be used by a given AWS Signer user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * platformId [PlatformId] <p>The ID of a platform that is available for use by a signing profile.</p>
-- * profileName [ProfileName] <p>The name of the AWS Signer profile.</p>
-- * status [SigningProfileStatus] <p>The status of an AWS Signer profile.</p>
-- * signingParameters [SigningParameters] <p>The parameters that are available for use by an AWS Signer user.</p>
-- * signingMaterial [SigningMaterial] <p>The ACM certificate that is available for use by a signing profile.</p>
-- @return SigningProfile structure as a key-value pair table
function M.SigningProfile(args)
	assert(args, "You must provide an argument table when creating SigningProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["platformId"] = args["platformId"],
		["profileName"] = args["profileName"],
		["status"] = args["status"],
		["signingParameters"] = args["signingParameters"],
		["signingMaterial"] = args["signingMaterial"],
	}
	asserts.AssertSigningProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSigningJobResponse = { ["jobId"] = true, nil }

function asserts.AssertStartSigningJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSigningJobResponse to be of type 'table'")
	if struct["jobId"] then asserts.AssertJobId(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSigningJobResponse[k], "StartSigningJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSigningJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobId [JobId] <p>The ID of your signing job.</p>
-- @return StartSigningJobResponse structure as a key-value pair table
function M.StartSigningJobResponse(args)
	assert(args, "You must provide an argument table when creating StartSigningJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobId"] = args["jobId"],
	}
	asserts.AssertStartSigningJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningPlatform = { ["category"] = true, ["displayName"] = true, ["target"] = true, ["platformId"] = true, ["signingConfiguration"] = true, ["maxSizeInMB"] = true, ["partner"] = true, ["signingImageFormat"] = true, nil }

function asserts.AssertSigningPlatform(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningPlatform to be of type 'table'")
	if struct["category"] then asserts.AssertCategory(struct["category"]) end
	if struct["displayName"] then asserts.AssertString(struct["displayName"]) end
	if struct["target"] then asserts.AssertString(struct["target"]) end
	if struct["platformId"] then asserts.AssertString(struct["platformId"]) end
	if struct["signingConfiguration"] then asserts.AssertSigningConfiguration(struct["signingConfiguration"]) end
	if struct["maxSizeInMB"] then asserts.AssertMaxSizeInMB(struct["maxSizeInMB"]) end
	if struct["partner"] then asserts.AssertString(struct["partner"]) end
	if struct["signingImageFormat"] then asserts.AssertSigningImageFormat(struct["signingImageFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningPlatform[k], "SigningPlatform contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningPlatform
-- <p>Contains information about the signing configurations and parameters that is used to perform an AWS Signer job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * category [Category] <p>The category of an AWS Signer platform.</p>
-- * displayName [String] <p>The display name of an AWS Signer platform.</p>
-- * target [String] <p>The types of targets that can be signed by an AWS Signer platform.</p>
-- * platformId [String] <p>The ID of an AWS Signer platform.</p>
-- * signingConfiguration [SigningConfiguration] <p>The configuration of an AWS Signer platform. This includes the designated hash algorithm and encryption algorithm of a signing platform.</p>
-- * maxSizeInMB [MaxSizeInMB] <p>The maximum size (in MB) of code that can be signed by a AWS Signer platform.</p>
-- * partner [String] <p>Any partner entities linked to an AWS Signer platform.</p>
-- * signingImageFormat [SigningImageFormat] <p>The signing image format that is used by an AWS Signer platform.</p>
-- @return SigningPlatform structure as a key-value pair table
function M.SigningPlatform(args)
	assert(args, "You must provide an argument table when creating SigningPlatform")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["category"] = args["category"],
		["displayName"] = args["displayName"],
		["target"] = args["target"],
		["platformId"] = args["platformId"],
		["signingConfiguration"] = args["signingConfiguration"],
		["maxSizeInMB"] = args["maxSizeInMB"],
		["partner"] = args["partner"],
		["signingImageFormat"] = args["signingImageFormat"],
	}
	asserts.AssertSigningPlatform(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSigningJobRequest = { ["source"] = true, ["destination"] = true, ["clientRequestToken"] = true, ["profileName"] = true, nil }

function asserts.AssertStartSigningJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSigningJobRequest to be of type 'table'")
	assert(struct["source"], "Expected key source to exist in table")
	assert(struct["destination"], "Expected key destination to exist in table")
	assert(struct["clientRequestToken"], "Expected key clientRequestToken to exist in table")
	if struct["source"] then asserts.AssertSource(struct["source"]) end
	if struct["destination"] then asserts.AssertDestination(struct["destination"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["profileName"] then asserts.AssertProfileName(struct["profileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSigningJobRequest[k], "StartSigningJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSigningJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * source [Source] <p>The S3 bucket that contains the object to sign or a BLOB that contains your raw code.</p>
-- * destination [Destination] <p>The S3 bucket in which to save your signed object. The destination contains the name of your bucket and an optional prefix.</p>
-- * clientRequestToken [ClientRequestToken] <p>String that identifies the signing request. All calls after the first that use this token return the same response as the first call.</p>
-- * profileName [ProfileName] <p>The name of the signing profile.</p>
-- Required key: source
-- Required key: destination
-- Required key: clientRequestToken
-- @return StartSigningJobRequest structure as a key-value pair table
function M.StartSigningJobRequest(args)
	assert(args, "You must provide an argument table when creating StartSigningJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["source"] = args["source"],
		["destination"] = args["destination"],
		["clientRequestToken"] = args["clientRequestToken"],
		["profileName"] = args["profileName"],
	}
	asserts.AssertStartSigningJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SigningImageFormat = { ["defaultFormat"] = true, ["supportedFormats"] = true, nil }

function asserts.AssertSigningImageFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningImageFormat to be of type 'table'")
	assert(struct["supportedFormats"], "Expected key supportedFormats to exist in table")
	assert(struct["defaultFormat"], "Expected key defaultFormat to exist in table")
	if struct["defaultFormat"] then asserts.AssertImageFormat(struct["defaultFormat"]) end
	if struct["supportedFormats"] then asserts.AssertImageFormats(struct["supportedFormats"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningImageFormat[k], "SigningImageFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningImageFormat
-- <p>The image format of an AWS Signer platform or profile.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultFormat [ImageFormat] <p>The default format of an AWS Signer signing image.</p>
-- * supportedFormats [ImageFormats] <p>The supported formats of an AWS Signer signing image.</p>
-- Required key: supportedFormats
-- Required key: defaultFormat
-- @return SigningImageFormat structure as a key-value pair table
function M.SigningImageFormat(args)
	assert(args, "You must provide an argument table when creating SigningImageFormat")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultFormat"] = args["defaultFormat"],
		["supportedFormats"] = args["supportedFormats"],
	}
	asserts.AssertSigningImageFormat(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected Category to be of type 'string'")
end

--  
function M.Category(str)
	asserts.AssertCategory(str)
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

function asserts.AssertEncryptionAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionAlgorithm to be of type 'string'")
end

--  
function M.EncryptionAlgorithm(str)
	asserts.AssertEncryptionAlgorithm(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertImageFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageFormat to be of type 'string'")
end

--  
function M.ImageFormat(str)
	asserts.AssertImageFormat(str)
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

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AssertHashAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected HashAlgorithm to be of type 'string'")
end

--  
function M.HashAlgorithm(str)
	asserts.AssertHashAlgorithm(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertPlatformId(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformId to be of type 'string'")
end

--  
function M.PlatformId(str)
	asserts.AssertPlatformId(str)
	return str
end

function asserts.AssertSigningProfileStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SigningProfileStatus to be of type 'string'")
end

--  
function M.SigningProfileStatus(str)
	asserts.AssertSigningProfileStatus(str)
	return str
end

function asserts.AssertStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusReason to be of type 'string'")
end

--  
function M.StatusReason(str)
	asserts.AssertStatusReason(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertSigningParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected SigningParameterValue to be of type 'string'")
end

--  
function M.SigningParameterValue(str)
	asserts.AssertSigningParameterValue(str)
	return str
end

function asserts.AssertSigningStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SigningStatus to be of type 'string'")
end

--  
function M.SigningStatus(str)
	asserts.AssertSigningStatus(str)
	return str
end

function asserts.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
end

--  
function M.ClientRequestToken(str)
	asserts.AssertClientRequestToken(str)
	return str
end

function asserts.Assertkey(str)
	assert(str)
	assert(type(str) == "string", "Expected key to be of type 'string'")
end

--  
function M.key(str)
	asserts.Assertkey(str)
	return str
end

function asserts.AssertRequestedBy(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestedBy to be of type 'string'")
end

--  
function M.RequestedBy(str)
	asserts.AssertRequestedBy(str)
	return str
end

function asserts.AssertCertificateArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateArn to be of type 'string'")
end

--  
function M.CertificateArn(str)
	asserts.AssertCertificateArn(str)
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

function asserts.AssertSigningParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SigningParameterKey to be of type 'string'")
end

--  
function M.SigningParameterKey(str)
	asserts.AssertSigningParameterKey(str)
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

function asserts.AssertProfileName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProfileName to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.ProfileName(str)
	asserts.AssertProfileName(str)
	return str
end

function asserts.AssertMaxSizeInMB(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxSizeInMB to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxSizeInMB(integer)
	asserts.AssertMaxSizeInMB(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 25, "Expected integer to be max 25")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.Assertbool(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected bool to be of type 'boolean'")
end

function M.bool(boolean)
	asserts.Assertbool(boolean)
	return boolean
end

function asserts.AssertSigningParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected SigningParameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertSigningParameterKey(k)
		asserts.AssertSigningParameterValue(v)
	end
end

function M.SigningParameters(map)
	asserts.AssertSigningParameters(map)
	return map
end

function asserts.AssertCreatedAt(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedAt to be of type 'string'")
end

function M.CreatedAt(timestamp)
	asserts.AssertCreatedAt(timestamp)
	return timestamp
end

function asserts.AssertCompletedAt(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CompletedAt to be of type 'string'")
end

function M.CompletedAt(timestamp)
	asserts.AssertCompletedAt(timestamp)
	return timestamp
end

function asserts.AssertImageFormats(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageFormats to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImageFormat(v)
	end
end

--  
-- List of ImageFormat objects
function M.ImageFormats(list)
	asserts.AssertImageFormats(list)
	return list
end

function asserts.AssertEncryptionAlgorithms(list)
	assert(list)
	assert(type(list) == "table", "Expected EncryptionAlgorithms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEncryptionAlgorithm(v)
	end
end

--  
-- List of EncryptionAlgorithm objects
function M.EncryptionAlgorithms(list)
	asserts.AssertEncryptionAlgorithms(list)
	return list
end

function asserts.AssertHashAlgorithms(list)
	assert(list)
	assert(type(list) == "table", "Expected HashAlgorithms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHashAlgorithm(v)
	end
end

--  
-- List of HashAlgorithm objects
function M.HashAlgorithms(list)
	asserts.AssertHashAlgorithms(list)
	return list
end

function asserts.AssertSigningPlatforms(list)
	assert(list)
	assert(type(list) == "table", "Expected SigningPlatforms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSigningPlatform(v)
	end
end

--  
-- List of SigningPlatform objects
function M.SigningPlatforms(list)
	asserts.AssertSigningPlatforms(list)
	return list
end

function asserts.AssertSigningJobs(list)
	assert(list)
	assert(type(list) == "table", "Expected SigningJobs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSigningJob(v)
	end
end

--  
-- List of SigningJob objects
function M.SigningJobs(list)
	asserts.AssertSigningJobs(list)
	return list
end

function asserts.AssertSigningProfiles(list)
	assert(list)
	assert(type(list) == "table", "Expected SigningProfiles to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSigningProfile(v)
	end
end

--  
-- List of SigningProfile objects
function M.SigningProfiles(list)
	asserts.AssertSigningProfiles(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "signer.amazonaws.com"
		end
	end
	local ss = { "signer" }
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
--- Call ListSigningJobs asynchronously, invoking a callback when done
-- @param ListSigningJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSigningJobsAsync(ListSigningJobsRequest, cb)
	assert(ListSigningJobsRequest, "You must provide a ListSigningJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSigningJobs",
	}
	for header,value in pairs(ListSigningJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/signing-jobs", ListSigningJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSigningJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSigningJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSigningJobsSync(ListSigningJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSigningJobsAsync(ListSigningJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSigningJob asynchronously, invoking a callback when done
-- @param DescribeSigningJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSigningJobAsync(DescribeSigningJobRequest, cb)
	assert(DescribeSigningJobRequest, "You must provide a DescribeSigningJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSigningJob",
	}
	for header,value in pairs(DescribeSigningJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/signing-jobs/{jobId}", DescribeSigningJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSigningJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSigningJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSigningJobSync(DescribeSigningJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSigningJobAsync(DescribeSigningJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSigningProfile asynchronously, invoking a callback when done
-- @param GetSigningProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSigningProfileAsync(GetSigningProfileRequest, cb)
	assert(GetSigningProfileRequest, "You must provide a GetSigningProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSigningProfile",
	}
	for header,value in pairs(GetSigningProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/signing-profiles/{profileName}", GetSigningProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSigningProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSigningProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSigningProfileSync(GetSigningProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSigningProfileAsync(GetSigningProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSigningProfiles asynchronously, invoking a callback when done
-- @param ListSigningProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSigningProfilesAsync(ListSigningProfilesRequest, cb)
	assert(ListSigningProfilesRequest, "You must provide a ListSigningProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSigningProfiles",
	}
	for header,value in pairs(ListSigningProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/signing-profiles", ListSigningProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSigningProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSigningProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSigningProfilesSync(ListSigningProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSigningProfilesAsync(ListSigningProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelSigningProfile asynchronously, invoking a callback when done
-- @param CancelSigningProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelSigningProfileAsync(CancelSigningProfileRequest, cb)
	assert(CancelSigningProfileRequest, "You must provide a CancelSigningProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelSigningProfile",
	}
	for header,value in pairs(CancelSigningProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/signing-profiles/{profileName}", CancelSigningProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelSigningProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelSigningProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelSigningProfileSync(CancelSigningProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelSigningProfileAsync(CancelSigningProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSigningPlatforms asynchronously, invoking a callback when done
-- @param ListSigningPlatformsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSigningPlatformsAsync(ListSigningPlatformsRequest, cb)
	assert(ListSigningPlatformsRequest, "You must provide a ListSigningPlatformsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSigningPlatforms",
	}
	for header,value in pairs(ListSigningPlatformsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/signing-platforms", ListSigningPlatformsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSigningPlatforms synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSigningPlatformsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSigningPlatformsSync(ListSigningPlatformsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSigningPlatformsAsync(ListSigningPlatformsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSigningJob asynchronously, invoking a callback when done
-- @param StartSigningJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSigningJobAsync(StartSigningJobRequest, cb)
	assert(StartSigningJobRequest, "You must provide a StartSigningJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartSigningJob",
	}
	for header,value in pairs(StartSigningJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/signing-jobs", StartSigningJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSigningJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSigningJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartSigningJobSync(StartSigningJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSigningJobAsync(StartSigningJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSigningPlatform asynchronously, invoking a callback when done
-- @param GetSigningPlatformRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSigningPlatformAsync(GetSigningPlatformRequest, cb)
	assert(GetSigningPlatformRequest, "You must provide a GetSigningPlatformRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSigningPlatform",
	}
	for header,value in pairs(GetSigningPlatformRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/signing-platforms/{platformId}", GetSigningPlatformRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSigningPlatform synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSigningPlatformRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSigningPlatformSync(GetSigningPlatformRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSigningPlatformAsync(GetSigningPlatformRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutSigningProfile asynchronously, invoking a callback when done
-- @param PutSigningProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutSigningProfileAsync(PutSigningProfileRequest, cb)
	assert(PutSigningProfileRequest, "You must provide a PutSigningProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutSigningProfile",
	}
	for header,value in pairs(PutSigningProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/signing-profiles/{profileName}", PutSigningProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutSigningProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutSigningProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutSigningProfileSync(PutSigningProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutSigningProfileAsync(PutSigningProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
