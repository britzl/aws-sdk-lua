--- GENERATED CODE - DO NOT MODIFY
-- AWS Key Management Service (kms-2014-11-01)

local M = {}

M.metadata = {
	api_version = "2014-11-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "kms",
	service_abbreviation = "KMS",
	service_full_name = "AWS Key Management Service",
	signature_version = "v4",
	target_prefix = "TrentService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "kms-2014-11-01",
}

local ListRetirableGrantsRequest_keys = { "Marker" = true, "Limit" = true, "RetiringPrincipal" = true, nil }

function M.AssertListRetirableGrantsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRetirableGrantsRequest to be of type 'table'")
	assert(struct["RetiringPrincipal"], "Expected key RetiringPrincipal to exist in table")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["RetiringPrincipal"] then M.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	for k,_ in pairs(struct) do
		assert(ListRetirableGrantsRequest_keys[k], "ListRetirableGrantsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRetirableGrantsRequest
--  
-- @param Marker [MarkerType] &lt;p&gt;Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.&lt;/p&gt;
-- @param RetiringPrincipal [PrincipalIdType] &lt;p&gt;The retiring principal for which to list grants.&lt;/p&gt; &lt;p&gt;To specify the retiring principal, use the &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Name (ARN)&lt;/a&gt; of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax for specifying a principal, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam&quot;&gt;AWS Identity and Access Management (IAM)&lt;/a&gt; in the Example ARNs section of the &lt;i&gt;Amazon Web Services General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: RetiringPrincipal
function M.ListRetirableGrantsRequest(Marker, Limit, RetiringPrincipal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRetirableGrantsRequest")
	local t = { 
		["Marker"] = Marker,
		["Limit"] = Limit,
		["RetiringPrincipal"] = RetiringPrincipal,
	}
	M.AssertListRetirableGrantsRequest(t)
	return t
end

local DependencyTimeoutException_keys = { "message" = true, nil }

function M.AssertDependencyTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyTimeoutException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DependencyTimeoutException_keys[k], "DependencyTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyTimeoutException
-- &lt;p&gt;The system timed out while trying to fulfill the request. The request can be retried.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The system timed out while trying to fulfill the request. The request can be retried.&lt;/p&gt;
function M.DependencyTimeoutException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependencyTimeoutException")
	local t = { 
		["message"] = message,
	}
	M.AssertDependencyTimeoutException(t)
	return t
end

local UnsupportedOperationException_keys = { "message" = true, nil }

function M.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedOperationException_keys[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- &lt;p&gt;The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.&lt;/p&gt;
function M.UnsupportedOperationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedOperationException(t)
	return t
end

local InvalidArnException_keys = { "message" = true, nil }

function M.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArnException_keys[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- &lt;p&gt;The request was rejected because a specified ARN was not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because a specified ARN was not valid.&lt;/p&gt;
function M.InvalidArnException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArnException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArnException(t)
	return t
end

local EnableKeyRotationRequest_keys = { "KeyId" = true, nil }

function M.AssertEnableKeyRotationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableKeyRotationRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(EnableKeyRotationRequest_keys[k], "EnableKeyRotationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableKeyRotationRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
function M.EnableKeyRotationRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableKeyRotationRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertEnableKeyRotationRequest(t)
	return t
end

local InvalidKeyUsageException_keys = { "message" = true, nil }

function M.AssertInvalidKeyUsageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyUsageException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidKeyUsageException_keys[k], "InvalidKeyUsageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyUsageException
-- &lt;p&gt;The request was rejected because the specified &lt;code&gt;KeySpec&lt;/code&gt; value is not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified &lt;code&gt;KeySpec&lt;/code&gt; value is not valid.&lt;/p&gt;
function M.InvalidKeyUsageException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKeyUsageException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidKeyUsageException(t)
	return t
end

local CreateKeyRequest_keys = { "Origin" = true, "Description" = true, "Tags" = true, "BypassPolicyLockoutSafetyCheck" = true, "KeyUsage" = true, "Policy" = true, nil }

function M.AssertCreateKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyRequest to be of type 'table'")
	if struct["Origin"] then M.AssertOriginType(struct["Origin"]) end
	if struct["Description"] then M.AssertDescriptionType(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["BypassPolicyLockoutSafetyCheck"] then M.AssertBooleanType(struct["BypassPolicyLockoutSafetyCheck"]) end
	if struct["KeyUsage"] then M.AssertKeyUsageType(struct["KeyUsage"]) end
	if struct["Policy"] then M.AssertPolicyType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(CreateKeyRequest_keys[k], "CreateKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyRequest
--  
-- @param Origin [OriginType] &lt;p&gt;The source of the CMK's key material.&lt;/p&gt; &lt;p&gt;The default is &lt;code&gt;AWS_KMS&lt;/code&gt;, which means AWS KMS creates the key material. When this parameter is set to &lt;code&gt;EXTERNAL&lt;/code&gt;, the request creates a CMK without key material so that you can import key material from your existing key management infrastructure. For more information about importing key material into AWS KMS, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html&quot;&gt;Importing Key Material&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;The CMK's &lt;code&gt;Origin&lt;/code&gt; is immutable and is set when the CMK is created.&lt;/p&gt;
-- @param Description [DescriptionType] &lt;p&gt;A description of the CMK.&lt;/p&gt; &lt;p&gt;Use a description that helps you decide whether the CMK is appropriate for a task.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;One or more tags. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.&lt;/p&gt; &lt;p&gt;Use this parameter to tag the CMK when it is created. Alternately, you can omit this parameter and instead tag the CMK after it is created using &lt;a&gt;TagResource&lt;/a&gt;.&lt;/p&gt;
-- @param BypassPolicyLockoutSafetyCheck [BooleanType] &lt;p&gt;A flag to indicate whether to bypass the key policy lockout safety check.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Setting this value to true increases the likelihood that the CMK becomes unmanageable. Do not set this value to true indiscriminately.&lt;/p&gt; &lt;p&gt;For more information, refer to the scenario in the &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam&quot;&gt;Default Key Policy&lt;/a&gt; section in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent &lt;a&gt;PutKeyPolicy&lt;/a&gt; request on the CMK.&lt;/p&gt; &lt;p&gt;The default value is false.&lt;/p&gt;
-- @param KeyUsage [KeyUsageType] &lt;p&gt;The intended use of the CMK.&lt;/p&gt; &lt;p&gt;You can use CMKs only for symmetric encryption and decryption.&lt;/p&gt;
-- @param Policy [PolicyType] &lt;p&gt;The key policy to attach to the CMK.&lt;/p&gt; &lt;p&gt;If you specify a policy and do not set &lt;code&gt;BypassPolicyLockoutSafetyCheck&lt;/code&gt; to true, the policy must meet the following criteria:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;It must allow the principal that is making the &lt;code&gt;CreateKey&lt;/code&gt; request to make a subsequent &lt;a&gt;PutKeyPolicy&lt;/a&gt; request on the CMK. This reduces the likelihood that the CMK becomes unmanageable. For more information, refer to the scenario in the &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam&quot;&gt;Default Key Policy&lt;/a&gt; section in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The principals that are specified in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before specifying the new principal in a key policy because the new principal might not immediately be visible to AWS KMS. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency&quot;&gt;Changes that I make are not always immediately visible&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you do not specify a policy, AWS KMS attaches a default key policy to the CMK. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default&quot;&gt;Default Key Policy&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;The policy size limit is 32 KiB (32768 bytes).&lt;/p&gt;
function M.CreateKeyRequest(Origin, Description, Tags, BypassPolicyLockoutSafetyCheck, KeyUsage, Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyRequest")
	local t = { 
		["Origin"] = Origin,
		["Description"] = Description,
		["Tags"] = Tags,
		["BypassPolicyLockoutSafetyCheck"] = BypassPolicyLockoutSafetyCheck,
		["KeyUsage"] = KeyUsage,
		["Policy"] = Policy,
	}
	M.AssertCreateKeyRequest(t)
	return t
end

local GetKeyPolicyResponse_keys = { "Policy" = true, nil }

function M.AssertGetKeyPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertPolicyType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyPolicyResponse_keys[k], "GetKeyPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPolicyResponse
--  
-- @param Policy [PolicyType] &lt;p&gt;A policy document in JSON format.&lt;/p&gt;
function M.GetKeyPolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertGetKeyPolicyResponse(t)
	return t
end

local DisabledException_keys = { "message" = true, nil }

function M.AssertDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisabledException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DisabledException_keys[k], "DisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisabledException
-- &lt;p&gt;The request was rejected because the specified CMK is not enabled.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified CMK is not enabled.&lt;/p&gt;
function M.DisabledException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisabledException")
	local t = { 
		["message"] = message,
	}
	M.AssertDisabledException(t)
	return t
end

local GenerateDataKeyWithoutPlaintextResponse_keys = { "KeyId" = true, "CiphertextBlob" = true, nil }

function M.AssertGenerateDataKeyWithoutPlaintextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyWithoutPlaintextResponse to be of type 'table'")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then M.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(GenerateDataKeyWithoutPlaintextResponse_keys[k], "GenerateDataKeyWithoutPlaintextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyWithoutPlaintextResponse
--  
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK under which the data encryption key was generated and encrypted.&lt;/p&gt;
-- @param CiphertextBlob [CiphertextType] &lt;p&gt;The encrypted data encryption key.&lt;/p&gt;
function M.GenerateDataKeyWithoutPlaintextResponse(KeyId, CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyWithoutPlaintextResponse")
	local t = { 
		["KeyId"] = KeyId,
		["CiphertextBlob"] = CiphertextBlob,
	}
	M.AssertGenerateDataKeyWithoutPlaintextResponse(t)
	return t
end

local DescribeKeyRequest_keys = { "KeyId" = true, "GrantTokens" = true, nil }

function M.AssertDescribeKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	for k,_ in pairs(struct) do
		assert(DescribeKeyRequest_keys[k], "DescribeKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by &quot;alias/&quot;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias ARN Example - arn:aws:kms:us-east-1:123456789012:alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias Name Example - alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: KeyId
function M.DescribeKeyRequest(KeyId, GrantTokens, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeKeyRequest")
	local t = { 
		["KeyId"] = KeyId,
		["GrantTokens"] = GrantTokens,
	}
	M.AssertDescribeKeyRequest(t)
	return t
end

local InvalidGrantIdException_keys = { "message" = true, nil }

function M.AssertInvalidGrantIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGrantIdException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidGrantIdException_keys[k], "InvalidGrantIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGrantIdException
-- &lt;p&gt;The request was rejected because the specified &lt;code&gt;GrantId&lt;/code&gt; is not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified &lt;code&gt;GrantId&lt;/code&gt; is not valid.&lt;/p&gt;
function M.InvalidGrantIdException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGrantIdException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidGrantIdException(t)
	return t
end

local EnableKeyRequest_keys = { "KeyId" = true, nil }

function M.AssertEnableKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(EnableKeyRequest_keys[k], "EnableKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableKeyRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
function M.EnableKeyRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableKeyRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertEnableKeyRequest(t)
	return t
end

local ImportKeyMaterialResponse_keys = { nil }

function M.AssertImportKeyMaterialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyMaterialResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ImportKeyMaterialResponse_keys[k], "ImportKeyMaterialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyMaterialResponse
--  
function M.ImportKeyMaterialResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyMaterialResponse")
	local t = { 
	}
	M.AssertImportKeyMaterialResponse(t)
	return t
end

local UpdateAliasRequest_keys = { "TargetKeyId" = true, "AliasName" = true, nil }

function M.AssertUpdateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	assert(struct["TargetKeyId"], "Expected key TargetKeyId to exist in table")
	if struct["TargetKeyId"] then M.AssertKeyIdType(struct["TargetKeyId"]) end
	if struct["AliasName"] then M.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAliasRequest_keys[k], "UpdateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasRequest
--  
-- @param TargetKeyId [KeyIdType] &lt;p&gt;Unique identifier of the customer master key to be mapped to the alias. This value can be a globally unique identifier or the fully specified ARN of a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can call &lt;a&gt;ListAliases&lt;/a&gt; to verify that the alias is mapped to the correct &lt;code&gt;TargetKeyId&lt;/code&gt;.&lt;/p&gt;
-- @param AliasName [AliasNameType] &lt;p&gt;String that contains the name of the alias to be modified. The name must start with the word &quot;alias&quot; followed by a forward slash (alias/). Aliases that begin with &quot;alias/aws&quot; are reserved.&lt;/p&gt;
-- Required parameter: AliasName
-- Required parameter: TargetKeyId
function M.UpdateAliasRequest(TargetKeyId, AliasName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasRequest")
	local t = { 
		["TargetKeyId"] = TargetKeyId,
		["AliasName"] = AliasName,
	}
	M.AssertUpdateAliasRequest(t)
	return t
end

local GenerateDataKeyRequest_keys = { "NumberOfBytes" = true, "EncryptionContext" = true, "KeyId" = true, "GrantTokens" = true, "KeySpec" = true, nil }

function M.AssertGenerateDataKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["NumberOfBytes"] then M.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	if struct["EncryptionContext"] then M.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["KeySpec"] then M.AssertDataKeySpec(struct["KeySpec"]) end
	for k,_ in pairs(struct) do
		assert(GenerateDataKeyRequest_keys[k], "GenerateDataKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyRequest
--  
-- @param NumberOfBytes [NumberOfBytesType] &lt;p&gt;The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the &lt;code&gt;KeySpec&lt;/code&gt; field instead of this one.&lt;/p&gt;
-- @param EncryptionContext [EncryptionContextType] &lt;p&gt;A set of key-value pairs that represents additional authenticated data.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html&quot;&gt;Encryption Context&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK under which to generate and encrypt the data encryption key.&lt;/p&gt; &lt;p&gt;A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK, or the alias name or ARN of an alias that refers to the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CMK ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias name: &lt;code&gt;alias/ExampleAlias&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param KeySpec [DataKeySpec] &lt;p&gt;The length of the data encryption key. Use &lt;code&gt;AES_128&lt;/code&gt; to generate a 128-bit symmetric key, or &lt;code&gt;AES_256&lt;/code&gt; to generate a 256-bit symmetric key.&lt;/p&gt;
-- Required parameter: KeyId
function M.GenerateDataKeyRequest(NumberOfBytes, EncryptionContext, KeyId, GrantTokens, KeySpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyRequest")
	local t = { 
		["NumberOfBytes"] = NumberOfBytes,
		["EncryptionContext"] = EncryptionContext,
		["KeyId"] = KeyId,
		["GrantTokens"] = GrantTokens,
		["KeySpec"] = KeySpec,
	}
	M.AssertGenerateDataKeyRequest(t)
	return t
end

local KMSInvalidStateException_keys = { "message" = true, nil }

function M.AssertKMSInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInvalidStateException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(KMSInvalidStateException_keys[k], "KMSInvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInvalidStateException
-- &lt;p&gt;The request was rejected because the state of the specified resource is not valid for this request.&lt;/p&gt; &lt;p&gt;For more information about how key state affects the use of a CMK, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html&quot;&gt;How Key State Affects Use of a Customer Master Key&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the state of the specified resource is not valid for this request.&lt;/p&gt; &lt;p&gt;For more information about how key state affects the use of a CMK, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html&quot;&gt;How Key State Affects Use of a Customer Master Key&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
function M.KMSInvalidStateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSInvalidStateException")
	local t = { 
		["message"] = message,
	}
	M.AssertKMSInvalidStateException(t)
	return t
end

local GenerateDataKeyWithoutPlaintextRequest_keys = { "NumberOfBytes" = true, "EncryptionContext" = true, "KeyId" = true, "GrantTokens" = true, "KeySpec" = true, nil }

function M.AssertGenerateDataKeyWithoutPlaintextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyWithoutPlaintextRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["NumberOfBytes"] then M.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	if struct["EncryptionContext"] then M.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["KeySpec"] then M.AssertDataKeySpec(struct["KeySpec"]) end
	for k,_ in pairs(struct) do
		assert(GenerateDataKeyWithoutPlaintextRequest_keys[k], "GenerateDataKeyWithoutPlaintextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyWithoutPlaintextRequest
--  
-- @param NumberOfBytes [NumberOfBytesType] &lt;p&gt;The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the &lt;code&gt;KeySpec&lt;/code&gt; field instead of this one.&lt;/p&gt;
-- @param EncryptionContext [EncryptionContextType] &lt;p&gt;A set of key-value pairs that represents additional authenticated data.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html&quot;&gt;Encryption Context&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK under which to generate and encrypt the data encryption key.&lt;/p&gt; &lt;p&gt;A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK, or the alias name or ARN of an alias that refers to the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CMK ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias name: &lt;code&gt;alias/ExampleAlias&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param KeySpec [DataKeySpec] &lt;p&gt;The length of the data encryption key. Use &lt;code&gt;AES_128&lt;/code&gt; to generate a 128-bit symmetric key, or &lt;code&gt;AES_256&lt;/code&gt; to generate a 256-bit symmetric key.&lt;/p&gt;
-- Required parameter: KeyId
function M.GenerateDataKeyWithoutPlaintextRequest(NumberOfBytes, EncryptionContext, KeyId, GrantTokens, KeySpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyWithoutPlaintextRequest")
	local t = { 
		["NumberOfBytes"] = NumberOfBytes,
		["EncryptionContext"] = EncryptionContext,
		["KeyId"] = KeyId,
		["GrantTokens"] = GrantTokens,
		["KeySpec"] = KeySpec,
	}
	M.AssertGenerateDataKeyWithoutPlaintextRequest(t)
	return t
end

local ScheduleKeyDeletionResponse_keys = { "KeyId" = true, "DeletionDate" = true, nil }

function M.AssertScheduleKeyDeletionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleKeyDeletionResponse to be of type 'table'")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["DeletionDate"] then M.AssertDateType(struct["DeletionDate"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleKeyDeletionResponse_keys[k], "ScheduleKeyDeletionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleKeyDeletionResponse
--  
-- @param KeyId [KeyIdType] &lt;p&gt;The unique identifier of the customer master key (CMK) for which deletion is scheduled.&lt;/p&gt;
-- @param DeletionDate [DateType] &lt;p&gt;The date and time after which AWS KMS deletes the customer master key (CMK).&lt;/p&gt;
function M.ScheduleKeyDeletionResponse(KeyId, DeletionDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleKeyDeletionResponse")
	local t = { 
		["KeyId"] = KeyId,
		["DeletionDate"] = DeletionDate,
	}
	M.AssertScheduleKeyDeletionResponse(t)
	return t
end

local NotFoundException_keys = { "message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- &lt;p&gt;The request was rejected because the specified entity or resource could not be found.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified entity or resource could not be found.&lt;/p&gt;
function M.NotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotFoundException(t)
	return t
end

local GenerateRandomResponse_keys = { "Plaintext" = true, nil }

function M.AssertGenerateRandomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateRandomResponse to be of type 'table'")
	if struct["Plaintext"] then M.AssertPlaintextType(struct["Plaintext"]) end
	for k,_ in pairs(struct) do
		assert(GenerateRandomResponse_keys[k], "GenerateRandomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateRandomResponse
--  
-- @param Plaintext [PlaintextType] &lt;p&gt;The random byte string.&lt;/p&gt;
function M.GenerateRandomResponse(Plaintext, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateRandomResponse")
	local t = { 
		["Plaintext"] = Plaintext,
	}
	M.AssertGenerateRandomResponse(t)
	return t
end

local ReEncryptRequest_keys = { "SourceEncryptionContext" = true, "GrantTokens" = true, "DestinationEncryptionContext" = true, "DestinationKeyId" = true, "CiphertextBlob" = true, nil }

function M.AssertReEncryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReEncryptRequest to be of type 'table'")
	assert(struct["CiphertextBlob"], "Expected key CiphertextBlob to exist in table")
	assert(struct["DestinationKeyId"], "Expected key DestinationKeyId to exist in table")
	if struct["SourceEncryptionContext"] then M.AssertEncryptionContextType(struct["SourceEncryptionContext"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["DestinationEncryptionContext"] then M.AssertEncryptionContextType(struct["DestinationEncryptionContext"]) end
	if struct["DestinationKeyId"] then M.AssertKeyIdType(struct["DestinationKeyId"]) end
	if struct["CiphertextBlob"] then M.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(ReEncryptRequest_keys[k], "ReEncryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReEncryptRequest
--  
-- @param SourceEncryptionContext [EncryptionContextType] &lt;p&gt;Encryption context used to encrypt and decrypt the data specified in the &lt;code&gt;CiphertextBlob&lt;/code&gt; parameter.&lt;/p&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param DestinationEncryptionContext [EncryptionContextType] &lt;p&gt;Encryption context to use when the data is reencrypted.&lt;/p&gt;
-- @param DestinationKeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK to use to reencrypt the data. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by &quot;alias/&quot;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias ARN Example - arn:aws:kms:us-east-1:123456789012:alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias Name Example - alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CiphertextBlob [CiphertextType] &lt;p&gt;Ciphertext of the data to reencrypt.&lt;/p&gt;
-- Required parameter: CiphertextBlob
-- Required parameter: DestinationKeyId
function M.ReEncryptRequest(SourceEncryptionContext, GrantTokens, DestinationEncryptionContext, DestinationKeyId, CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReEncryptRequest")
	local t = { 
		["SourceEncryptionContext"] = SourceEncryptionContext,
		["GrantTokens"] = GrantTokens,
		["DestinationEncryptionContext"] = DestinationEncryptionContext,
		["DestinationKeyId"] = DestinationKeyId,
		["CiphertextBlob"] = CiphertextBlob,
	}
	M.AssertReEncryptRequest(t)
	return t
end

local InvalidGrantTokenException_keys = { "message" = true, nil }

function M.AssertInvalidGrantTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGrantTokenException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidGrantTokenException_keys[k], "InvalidGrantTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGrantTokenException
-- &lt;p&gt;The request was rejected because the specified grant token is not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified grant token is not valid.&lt;/p&gt;
function M.InvalidGrantTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGrantTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidGrantTokenException(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;The request was rejected because a limit was exceeded. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/limits.html&quot;&gt;Limits&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because a limit was exceeded. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/limits.html&quot;&gt;Limits&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ListAliasesResponse_keys = { "Truncated" = true, "NextMarker" = true, "Aliases" = true, nil }

function M.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["Truncated"] then M.AssertBooleanType(struct["Truncated"]) end
	if struct["NextMarker"] then M.AssertMarkerType(struct["NextMarker"]) end
	if struct["Aliases"] then M.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(ListAliasesResponse_keys[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param Truncated [BooleanType] &lt;p&gt;A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the &lt;code&gt;NextMarker&lt;/code&gt; element in this response to the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
-- @param NextMarker [MarkerType] &lt;p&gt;When &lt;code&gt;Truncated&lt;/code&gt; is true, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
-- @param Aliases [AliasList] &lt;p&gt;A list of key aliases in the user's account.&lt;/p&gt;
function M.ListAliasesResponse(Truncated, NextMarker, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesResponse")
	local t = { 
		["Truncated"] = Truncated,
		["NextMarker"] = NextMarker,
		["Aliases"] = Aliases,
	}
	M.AssertListAliasesResponse(t)
	return t
end

local InvalidMarkerException_keys = { "message" = true, nil }

function M.AssertInvalidMarkerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMarkerException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidMarkerException_keys[k], "InvalidMarkerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMarkerException
-- &lt;p&gt;The request was rejected because the marker that specifies where pagination should next begin is not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the marker that specifies where pagination should next begin is not valid.&lt;/p&gt;
function M.InvalidMarkerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMarkerException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidMarkerException(t)
	return t
end

local ListKeyPoliciesRequest_keys = { "Marker" = true, "KeyId" = true, "Limit" = true, nil }

function M.AssertListKeyPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPoliciesRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListKeyPoliciesRequest_keys[k], "ListKeyPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPoliciesRequest
--  
-- @param Marker [MarkerType] &lt;p&gt;Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key (CMK). You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Limit [LimitType] &lt;p&gt;Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.&lt;/p&gt; &lt;p&gt;Currently only 1 policy can be attached to a key.&lt;/p&gt;
-- Required parameter: KeyId
function M.ListKeyPoliciesRequest(Marker, KeyId, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeyPoliciesRequest")
	local t = { 
		["Marker"] = Marker,
		["KeyId"] = KeyId,
		["Limit"] = Limit,
	}
	M.AssertListKeyPoliciesRequest(t)
	return t
end

local DeleteAliasRequest_keys = { "AliasName" = true, nil }

function M.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	if struct["AliasName"] then M.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAliasRequest_keys[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param AliasName [AliasNameType] &lt;p&gt;The alias to be deleted. The name must start with the word &quot;alias&quot; followed by a forward slash (alias/). Aliases that begin with &quot;alias/AWS&quot; are reserved.&lt;/p&gt;
-- Required parameter: AliasName
function M.DeleteAliasRequest(AliasName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAliasRequest")
	local t = { 
		["AliasName"] = AliasName,
	}
	M.AssertDeleteAliasRequest(t)
	return t
end

local MalformedPolicyDocumentException_keys = { "message" = true, nil }

function M.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MalformedPolicyDocumentException_keys[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- &lt;p&gt;The request was rejected because the specified policy is not syntactically or semantically correct.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified policy is not syntactically or semantically correct.&lt;/p&gt;
function M.MalformedPolicyDocumentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyDocumentException")
	local t = { 
		["message"] = message,
	}
	M.AssertMalformedPolicyDocumentException(t)
	return t
end

local DecryptResponse_keys = { "Plaintext" = true, "KeyId" = true, nil }

function M.AssertDecryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecryptResponse to be of type 'table'")
	if struct["Plaintext"] then M.AssertPlaintextType(struct["Plaintext"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(DecryptResponse_keys[k], "DecryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecryptResponse
--  
-- @param Plaintext [PlaintextType] &lt;p&gt;Decrypted plaintext data. This value may not be returned if the customer master key is not available or if you didn't have permission to use it.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;ARN of the key used to perform the decryption. This value is returned if no errors are encountered during the operation.&lt;/p&gt;
function M.DecryptResponse(Plaintext, KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecryptResponse")
	local t = { 
		["Plaintext"] = Plaintext,
		["KeyId"] = KeyId,
	}
	M.AssertDecryptResponse(t)
	return t
end

local ListResourceTagsResponse_keys = { "Truncated" = true, "NextMarker" = true, "Tags" = true, nil }

function M.AssertListResourceTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceTagsResponse to be of type 'table'")
	if struct["Truncated"] then M.AssertBooleanType(struct["Truncated"]) end
	if struct["NextMarker"] then M.AssertMarkerType(struct["NextMarker"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListResourceTagsResponse_keys[k], "ListResourceTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceTagsResponse
--  
-- @param Truncated [BooleanType] &lt;p&gt;A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the &lt;code&gt;NextMarker&lt;/code&gt; element in this response to the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
-- @param NextMarker [MarkerType] &lt;p&gt;When &lt;code&gt;Truncated&lt;/code&gt; is true, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt; &lt;p&gt;Do not assume or infer any information from this value.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tags. Each tag consists of a tag key and a tag value.&lt;/p&gt;
function M.ListResourceTagsResponse(Truncated, NextMarker, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourceTagsResponse")
	local t = { 
		["Truncated"] = Truncated,
		["NextMarker"] = NextMarker,
		["Tags"] = Tags,
	}
	M.AssertListResourceTagsResponse(t)
	return t
end

local GrantConstraints_keys = { "EncryptionContextSubset" = true, "EncryptionContextEquals" = true, nil }

function M.AssertGrantConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantConstraints to be of type 'table'")
	if struct["EncryptionContextSubset"] then M.AssertEncryptionContextType(struct["EncryptionContextSubset"]) end
	if struct["EncryptionContextEquals"] then M.AssertEncryptionContextType(struct["EncryptionContextEquals"]) end
	for k,_ in pairs(struct) do
		assert(GrantConstraints_keys[k], "GrantConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantConstraints
-- &lt;p&gt;A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html&quot;&gt;Encryption Context&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;Grant constraints apply only to operations that accept encryption context as input. For example, the &lt;code&gt; &lt;a&gt;DescribeKey&lt;/a&gt; &lt;/code&gt; operation does not accept encryption context as input. A grant that allows the &lt;code&gt;DescribeKey&lt;/code&gt; operation does so regardless of the grant constraints. In constrast, the &lt;code&gt; &lt;a&gt;Encrypt&lt;/a&gt; &lt;/code&gt; operation accepts encryption context as input. A grant that allows the &lt;code&gt;Encrypt&lt;/code&gt; operation does so only when the encryption context of the &lt;code&gt;Encrypt&lt;/code&gt; operation satisfies the grant constraints.&lt;/p&gt;
-- @param EncryptionContextSubset [EncryptionContextType] &lt;p&gt;A list of key-value pairs, all of which must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list or is a superset of this list, the grant allows the operation. Otherwise, the grant does not allow the operation.&lt;/p&gt;
-- @param EncryptionContextEquals [EncryptionContextType] &lt;p&gt;A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list, the grant allows the operation. Otherwise, the grant does not allow the operation.&lt;/p&gt;
function M.GrantConstraints(EncryptionContextSubset, EncryptionContextEquals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantConstraints")
	local t = { 
		["EncryptionContextSubset"] = EncryptionContextSubset,
		["EncryptionContextEquals"] = EncryptionContextEquals,
	}
	M.AssertGrantConstraints(t)
	return t
end

local Tag_keys = { "TagKey" = true, "TagValue" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["TagKey"], "Expected key TagKey to exist in table")
	assert(struct["TagValue"], "Expected key TagValue to exist in table")
	if struct["TagKey"] then M.AssertTagKeyType(struct["TagKey"]) end
	if struct["TagValue"] then M.AssertTagValueType(struct["TagValue"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.&lt;/p&gt;
-- @param TagKey [TagKeyType] &lt;p&gt;The key of the tag.&lt;/p&gt;
-- @param TagValue [TagValueType] &lt;p&gt;The value of the tag.&lt;/p&gt;
-- Required parameter: TagKey
-- Required parameter: TagValue
function M.Tag(TagKey, TagValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["TagKey"] = TagKey,
		["TagValue"] = TagValue,
	}
	M.AssertTag(t)
	return t
end

local ImportKeyMaterialRequest_keys = { "ExpirationModel" = true, "ValidTo" = true, "KeyId" = true, "ImportToken" = true, "EncryptedKeyMaterial" = true, nil }

function M.AssertImportKeyMaterialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyMaterialRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["ImportToken"], "Expected key ImportToken to exist in table")
	assert(struct["EncryptedKeyMaterial"], "Expected key EncryptedKeyMaterial to exist in table")
	if struct["ExpirationModel"] then M.AssertExpirationModelType(struct["ExpirationModel"]) end
	if struct["ValidTo"] then M.AssertDateType(struct["ValidTo"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["ImportToken"] then M.AssertCiphertextType(struct["ImportToken"]) end
	if struct["EncryptedKeyMaterial"] then M.AssertCiphertextType(struct["EncryptedKeyMaterial"]) end
	for k,_ in pairs(struct) do
		assert(ImportKeyMaterialRequest_keys[k], "ImportKeyMaterialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyMaterialRequest
--  
-- @param ExpirationModel [ExpirationModelType] &lt;p&gt;Specifies whether the key material expires. The default is &lt;code&gt;KEY_MATERIAL_EXPIRES&lt;/code&gt;, in which case you must include the &lt;code&gt;ValidTo&lt;/code&gt; parameter. When this parameter is set to &lt;code&gt;KEY_MATERIAL_DOES_NOT_EXPIRE&lt;/code&gt;, you must omit the &lt;code&gt;ValidTo&lt;/code&gt; parameter.&lt;/p&gt;
-- @param ValidTo [DateType] &lt;p&gt;The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. You must omit this parameter when the &lt;code&gt;ExpirationModel&lt;/code&gt; parameter is set to &lt;code&gt;KEY_MATERIAL_DOES_NOT_EXPIRE&lt;/code&gt;. Otherwise it is required.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK to import the key material into. The CMK's &lt;code&gt;Origin&lt;/code&gt; must be &lt;code&gt;EXTERNAL&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ImportToken [CiphertextType] &lt;p&gt;The import token that you received in the response to a previous &lt;a&gt;GetParametersForImport&lt;/a&gt; request. It must be from the same response that contained the public key that you used to encrypt the key material.&lt;/p&gt;
-- @param EncryptedKeyMaterial [CiphertextType] &lt;p&gt;The encrypted key material to import. It must be encrypted with the public key that you received in the response to a previous &lt;a&gt;GetParametersForImport&lt;/a&gt; request, using the wrapping algorithm that you specified in that request.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: ImportToken
-- Required parameter: EncryptedKeyMaterial
function M.ImportKeyMaterialRequest(ExpirationModel, ValidTo, KeyId, ImportToken, EncryptedKeyMaterial, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyMaterialRequest")
	local t = { 
		["ExpirationModel"] = ExpirationModel,
		["ValidTo"] = ValidTo,
		["KeyId"] = KeyId,
		["ImportToken"] = ImportToken,
		["EncryptedKeyMaterial"] = EncryptedKeyMaterial,
	}
	M.AssertImportKeyMaterialRequest(t)
	return t
end

local RetireGrantRequest_keys = { "GrantToken" = true, "KeyId" = true, "GrantId" = true, nil }

function M.AssertRetireGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetireGrantRequest to be of type 'table'")
	if struct["GrantToken"] then M.AssertGrantTokenType(struct["GrantToken"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantId"] then M.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(RetireGrantRequest_keys[k], "RetireGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetireGrantRequest
--  
-- @param GrantToken [GrantTokenType] &lt;p&gt;Token that identifies the grant to be retired.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The Amazon Resource Name of the CMK associated with the grant. Example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param GrantId [GrantIdType] &lt;p&gt;Unique identifier of the grant to retire. The grant ID is returned in the response to a &lt;code&gt;CreateGrant&lt;/code&gt; operation.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Grant ID Example - 0123456789012345678901234567890123456789012345678901234567890123&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.RetireGrantRequest(GrantToken, KeyId, GrantId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetireGrantRequest")
	local t = { 
		["GrantToken"] = GrantToken,
		["KeyId"] = KeyId,
		["GrantId"] = GrantId,
	}
	M.AssertRetireGrantRequest(t)
	return t
end

local ListKeysResponse_keys = { "Keys" = true, "NextMarker" = true, "Truncated" = true, nil }

function M.AssertListKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeysResponse to be of type 'table'")
	if struct["Keys"] then M.AssertKeyList(struct["Keys"]) end
	if struct["NextMarker"] then M.AssertMarkerType(struct["NextMarker"]) end
	if struct["Truncated"] then M.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(ListKeysResponse_keys[k], "ListKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeysResponse
--  
-- @param Keys [KeyList] &lt;p&gt;A list of keys.&lt;/p&gt;
-- @param NextMarker [MarkerType] &lt;p&gt;When &lt;code&gt;Truncated&lt;/code&gt; is true, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
-- @param Truncated [BooleanType] &lt;p&gt;A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the &lt;code&gt;NextMarker&lt;/code&gt; element in this response to the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
function M.ListKeysResponse(Keys, NextMarker, Truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeysResponse")
	local t = { 
		["Keys"] = Keys,
		["NextMarker"] = NextMarker,
		["Truncated"] = Truncated,
	}
	M.AssertListKeysResponse(t)
	return t
end

local UntagResourceRequest_keys = { "KeyId" = true, "TagKeys" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK from which you are removing tags. You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;One or more tag keys. Specify only the tag keys, not the tag values.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: TagKeys
function M.UntagResourceRequest(KeyId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["KeyId"] = KeyId,
		["TagKeys"] = TagKeys,
	}
	M.AssertUntagResourceRequest(t)
	return t
end

local EncryptResponse_keys = { "KeyId" = true, "CiphertextBlob" = true, nil }

function M.AssertEncryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptResponse to be of type 'table'")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then M.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(EncryptResponse_keys[k], "EncryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptResponse
--  
-- @param KeyId [KeyIdType] &lt;p&gt;The ID of the key used during encryption.&lt;/p&gt;
-- @param CiphertextBlob [CiphertextType] &lt;p&gt;The encrypted plaintext. If you are using the CLI, the value is Base64 encoded. Otherwise, it is not encoded.&lt;/p&gt;
function M.EncryptResponse(KeyId, CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptResponse")
	local t = { 
		["KeyId"] = KeyId,
		["CiphertextBlob"] = CiphertextBlob,
	}
	M.AssertEncryptResponse(t)
	return t
end

local AlreadyExistsException_keys = { "message" = true, nil }

function M.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AlreadyExistsException_keys[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- &lt;p&gt;The request was rejected because it attempted to create a resource that already exists.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because it attempted to create a resource that already exists.&lt;/p&gt;
function M.AlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertAlreadyExistsException(t)
	return t
end

local GenerateDataKeyResponse_keys = { "Plaintext" = true, "KeyId" = true, "CiphertextBlob" = true, nil }

function M.AssertGenerateDataKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyResponse to be of type 'table'")
	if struct["Plaintext"] then M.AssertPlaintextType(struct["Plaintext"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then M.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(GenerateDataKeyResponse_keys[k], "GenerateDataKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyResponse
--  
-- @param Plaintext [PlaintextType] &lt;p&gt;The data encryption key. Use this data key for local encryption and decryption, then remove it from memory as soon as possible.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK under which the data encryption key was generated and encrypted.&lt;/p&gt;
-- @param CiphertextBlob [CiphertextType] &lt;p&gt;The encrypted data encryption key.&lt;/p&gt;
function M.GenerateDataKeyResponse(Plaintext, KeyId, CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyResponse")
	local t = { 
		["Plaintext"] = Plaintext,
		["KeyId"] = KeyId,
		["CiphertextBlob"] = CiphertextBlob,
	}
	M.AssertGenerateDataKeyResponse(t)
	return t
end

local ListKeyPoliciesResponse_keys = { "PolicyNames" = true, "NextMarker" = true, "Truncated" = true, nil }

function M.AssertListKeyPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPoliciesResponse to be of type 'table'")
	if struct["PolicyNames"] then M.AssertPolicyNameList(struct["PolicyNames"]) end
	if struct["NextMarker"] then M.AssertMarkerType(struct["NextMarker"]) end
	if struct["Truncated"] then M.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(ListKeyPoliciesResponse_keys[k], "ListKeyPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPoliciesResponse
--  
-- @param PolicyNames [PolicyNameList] &lt;p&gt;A list of policy names. Currently, there is only one policy and it is named &quot;Default&quot;.&lt;/p&gt;
-- @param NextMarker [MarkerType] &lt;p&gt;When &lt;code&gt;Truncated&lt;/code&gt; is true, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
-- @param Truncated [BooleanType] &lt;p&gt;A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the &lt;code&gt;NextMarker&lt;/code&gt; element in this response to the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
function M.ListKeyPoliciesResponse(PolicyNames, NextMarker, Truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeyPoliciesResponse")
	local t = { 
		["PolicyNames"] = PolicyNames,
		["NextMarker"] = NextMarker,
		["Truncated"] = Truncated,
	}
	M.AssertListKeyPoliciesResponse(t)
	return t
end

local GetParametersForImportRequest_keys = { "WrappingAlgorithm" = true, "KeyId" = true, "WrappingKeySpec" = true, nil }

function M.AssertGetParametersForImportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersForImportRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["WrappingAlgorithm"], "Expected key WrappingAlgorithm to exist in table")
	assert(struct["WrappingKeySpec"], "Expected key WrappingKeySpec to exist in table")
	if struct["WrappingAlgorithm"] then M.AssertAlgorithmSpec(struct["WrappingAlgorithm"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["WrappingKeySpec"] then M.AssertWrappingKeySpec(struct["WrappingKeySpec"]) end
	for k,_ in pairs(struct) do
		assert(GetParametersForImportRequest_keys[k], "GetParametersForImportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersForImportRequest
--  
-- @param WrappingAlgorithm [AlgorithmSpec] &lt;p&gt;The algorithm you will use to encrypt the key material before importing it with &lt;a&gt;ImportKeyMaterial&lt;/a&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html&quot;&gt;Encrypt the Key Material&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK into which you will import key material. The CMK's &lt;code&gt;Origin&lt;/code&gt; must be &lt;code&gt;EXTERNAL&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param WrappingKeySpec [WrappingKeySpec] &lt;p&gt;The type of wrapping key (public key) to return in the response. Only 2048-bit RSA public keys are supported.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: WrappingAlgorithm
-- Required parameter: WrappingKeySpec
function M.GetParametersForImportRequest(WrappingAlgorithm, KeyId, WrappingKeySpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersForImportRequest")
	local t = { 
		["WrappingAlgorithm"] = WrappingAlgorithm,
		["KeyId"] = KeyId,
		["WrappingKeySpec"] = WrappingKeySpec,
	}
	M.AssertGetParametersForImportRequest(t)
	return t
end

local CreateKeyResponse_keys = { "KeyMetadata" = true, nil }

function M.AssertCreateKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyResponse to be of type 'table'")
	if struct["KeyMetadata"] then M.AssertKeyMetadata(struct["KeyMetadata"]) end
	for k,_ in pairs(struct) do
		assert(CreateKeyResponse_keys[k], "CreateKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyResponse
--  
-- @param KeyMetadata [KeyMetadata] &lt;p&gt;Metadata associated with the CMK.&lt;/p&gt;
function M.CreateKeyResponse(KeyMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyResponse")
	local t = { 
		["KeyMetadata"] = KeyMetadata,
	}
	M.AssertCreateKeyResponse(t)
	return t
end

local ReEncryptResponse_keys = { "SourceKeyId" = true, "KeyId" = true, "CiphertextBlob" = true, nil }

function M.AssertReEncryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReEncryptResponse to be of type 'table'")
	if struct["SourceKeyId"] then M.AssertKeyIdType(struct["SourceKeyId"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then M.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(ReEncryptResponse_keys[k], "ReEncryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReEncryptResponse
--  
-- @param SourceKeyId [KeyIdType] &lt;p&gt;Unique identifier of the CMK used to originally encrypt the data.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;Unique identifier of the CMK used to reencrypt the data.&lt;/p&gt;
-- @param CiphertextBlob [CiphertextType] &lt;p&gt;The reencrypted data.&lt;/p&gt;
function M.ReEncryptResponse(SourceKeyId, KeyId, CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReEncryptResponse")
	local t = { 
		["SourceKeyId"] = SourceKeyId,
		["KeyId"] = KeyId,
		["CiphertextBlob"] = CiphertextBlob,
	}
	M.AssertReEncryptResponse(t)
	return t
end

local CreateAliasRequest_keys = { "TargetKeyId" = true, "AliasName" = true, nil }

function M.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	assert(struct["TargetKeyId"], "Expected key TargetKeyId to exist in table")
	if struct["TargetKeyId"] then M.AssertKeyIdType(struct["TargetKeyId"]) end
	if struct["AliasName"] then M.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(CreateAliasRequest_keys[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param TargetKeyId [KeyIdType] &lt;p&gt;An identifier of the key for which you are creating the alias. This value cannot be another alias but can be a globally unique identifier or a fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AliasName [AliasNameType] &lt;p&gt;String that contains the display name. The name must start with the word &quot;alias&quot; followed by a forward slash (alias/). Aliases that begin with &quot;alias/AWS&quot; are reserved.&lt;/p&gt;
-- Required parameter: AliasName
-- Required parameter: TargetKeyId
function M.CreateAliasRequest(TargetKeyId, AliasName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasRequest")
	local t = { 
		["TargetKeyId"] = TargetKeyId,
		["AliasName"] = AliasName,
	}
	M.AssertCreateAliasRequest(t)
	return t
end

local KeyUnavailableException_keys = { "message" = true, nil }

function M.AssertKeyUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyUnavailableException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(KeyUnavailableException_keys[k], "KeyUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyUnavailableException
-- &lt;p&gt;The request was rejected because the specified CMK was not available. The request can be retried.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified CMK was not available. The request can be retried.&lt;/p&gt;
function M.KeyUnavailableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyUnavailableException")
	local t = { 
		["message"] = message,
	}
	M.AssertKeyUnavailableException(t)
	return t
end

local CancelKeyDeletionRequest_keys = { "KeyId" = true, nil }

function M.AssertCancelKeyDeletionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelKeyDeletionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(CancelKeyDeletionRequest_keys[k], "CancelKeyDeletionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelKeyDeletionRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;The unique identifier for the customer master key (CMK) for which to cancel deletion.&lt;/p&gt; &lt;p&gt;To specify this value, use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: 1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To obtain the unique key ID and key ARN for a given CMK, use &lt;a&gt;ListKeys&lt;/a&gt; or &lt;a&gt;DescribeKey&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: KeyId
function M.CancelKeyDeletionRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelKeyDeletionRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertCancelKeyDeletionRequest(t)
	return t
end

local IncorrectKeyMaterialException_keys = { "message" = true, nil }

function M.AssertIncorrectKeyMaterialException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectKeyMaterialException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(IncorrectKeyMaterialException_keys[k], "IncorrectKeyMaterialException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectKeyMaterialException
-- &lt;p&gt;The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).&lt;/p&gt;
function M.IncorrectKeyMaterialException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncorrectKeyMaterialException")
	local t = { 
		["message"] = message,
	}
	M.AssertIncorrectKeyMaterialException(t)
	return t
end

local DeleteImportedKeyMaterialRequest_keys = { "KeyId" = true, nil }

function M.AssertDeleteImportedKeyMaterialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImportedKeyMaterialRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteImportedKeyMaterialRequest_keys[k], "DeleteImportedKeyMaterialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImportedKeyMaterialRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK whose key material to delete. The CMK's &lt;code&gt;Origin&lt;/code&gt; must be &lt;code&gt;EXTERNAL&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
function M.DeleteImportedKeyMaterialRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteImportedKeyMaterialRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertDeleteImportedKeyMaterialRequest(t)
	return t
end

local GetKeyRotationStatusResponse_keys = { "KeyRotationEnabled" = true, nil }

function M.AssertGetKeyRotationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyRotationStatusResponse to be of type 'table'")
	if struct["KeyRotationEnabled"] then M.AssertBooleanType(struct["KeyRotationEnabled"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyRotationStatusResponse_keys[k], "GetKeyRotationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyRotationStatusResponse
--  
-- @param KeyRotationEnabled [BooleanType] &lt;p&gt;A Boolean value that specifies whether key rotation is enabled.&lt;/p&gt;
function M.GetKeyRotationStatusResponse(KeyRotationEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyRotationStatusResponse")
	local t = { 
		["KeyRotationEnabled"] = KeyRotationEnabled,
	}
	M.AssertGetKeyRotationStatusResponse(t)
	return t
end

local EncryptRequest_keys = { "Plaintext" = true, "EncryptionContext" = true, "KeyId" = true, "GrantTokens" = true, nil }

function M.AssertEncryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Plaintext"], "Expected key Plaintext to exist in table")
	if struct["Plaintext"] then M.AssertPlaintextType(struct["Plaintext"]) end
	if struct["EncryptionContext"] then M.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	for k,_ in pairs(struct) do
		assert(EncryptRequest_keys[k], "EncryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptRequest
--  
-- @param Plaintext [PlaintextType] &lt;p&gt;Data to be encrypted.&lt;/p&gt;
-- @param EncryptionContext [EncryptionContextType] &lt;p&gt;Name-value pair that specifies the encryption context to be used for authenticated encryption. If used here, the same value must be supplied to the &lt;code&gt;Decrypt&lt;/code&gt; API or decryption will fail. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html&quot;&gt;Encryption Context&lt;/a&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by &quot;alias/&quot;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias ARN Example - arn:aws:kms:us-east-1:123456789012:alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alias Name Example - alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: Plaintext
function M.EncryptRequest(Plaintext, EncryptionContext, KeyId, GrantTokens, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptRequest")
	local t = { 
		["Plaintext"] = Plaintext,
		["EncryptionContext"] = EncryptionContext,
		["KeyId"] = KeyId,
		["GrantTokens"] = GrantTokens,
	}
	M.AssertEncryptRequest(t)
	return t
end

local KeyListEntry_keys = { "KeyArn" = true, "KeyId" = true, nil }

function M.AssertKeyListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyListEntry to be of type 'table'")
	if struct["KeyArn"] then M.AssertArnType(struct["KeyArn"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(KeyListEntry_keys[k], "KeyListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyListEntry
-- &lt;p&gt;Contains information about each entry in the key list.&lt;/p&gt;
-- @param KeyArn [ArnType] &lt;p&gt;ARN of the key.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;Unique identifier of the key.&lt;/p&gt;
function M.KeyListEntry(KeyArn, KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyListEntry")
	local t = { 
		["KeyArn"] = KeyArn,
		["KeyId"] = KeyId,
	}
	M.AssertKeyListEntry(t)
	return t
end

local ListKeysRequest_keys = { "Marker" = true, "Limit" = true, nil }

function M.AssertListKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeysRequest to be of type 'table'")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListKeysRequest_keys[k], "ListKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeysRequest
--  
-- @param Marker [MarkerType] &lt;p&gt;Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.&lt;/p&gt;
function M.ListKeysRequest(Marker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeysRequest")
	local t = { 
		["Marker"] = Marker,
		["Limit"] = Limit,
	}
	M.AssertListKeysRequest(t)
	return t
end

local KeyMetadata_keys = { "Origin" = true, "KeyId" = true, "Description" = true, "DeletionDate" = true, "ExpirationModel" = true, "ValidTo" = true, "Enabled" = true, "KeyUsage" = true, "KeyState" = true, "CreationDate" = true, "Arn" = true, "AWSAccountId" = true, nil }

function M.AssertKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyMetadata to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Origin"] then M.AssertOriginType(struct["Origin"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Description"] then M.AssertDescriptionType(struct["Description"]) end
	if struct["DeletionDate"] then M.AssertDateType(struct["DeletionDate"]) end
	if struct["ExpirationModel"] then M.AssertExpirationModelType(struct["ExpirationModel"]) end
	if struct["ValidTo"] then M.AssertDateType(struct["ValidTo"]) end
	if struct["Enabled"] then M.AssertBooleanType(struct["Enabled"]) end
	if struct["KeyUsage"] then M.AssertKeyUsageType(struct["KeyUsage"]) end
	if struct["KeyState"] then M.AssertKeyState(struct["KeyState"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	if struct["Arn"] then M.AssertArnType(struct["Arn"]) end
	if struct["AWSAccountId"] then M.AssertAWSAccountIdType(struct["AWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(KeyMetadata_keys[k], "KeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyMetadata
-- &lt;p&gt;Contains metadata about a customer master key (CMK).&lt;/p&gt; &lt;p&gt;This data type is used as a response element for the &lt;a&gt;CreateKey&lt;/a&gt; and &lt;a&gt;DescribeKey&lt;/a&gt; operations.&lt;/p&gt;
-- @param Origin [OriginType] &lt;p&gt;The source of the CMK's key material. When this value is &lt;code&gt;AWS_KMS&lt;/code&gt;, AWS KMS created the key material. When this value is &lt;code&gt;EXTERNAL&lt;/code&gt;, the key material was imported from your existing key management infrastructure or the CMK lacks key material.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The globally unique identifier for the CMK.&lt;/p&gt;
-- @param Description [DescriptionType] &lt;p&gt;The description of the CMK.&lt;/p&gt;
-- @param DeletionDate [DateType] &lt;p&gt;The date and time after which AWS KMS deletes the CMK. This value is present only when &lt;code&gt;KeyState&lt;/code&gt; is &lt;code&gt;PendingDeletion&lt;/code&gt;, otherwise this value is omitted.&lt;/p&gt;
-- @param ExpirationModel [ExpirationModelType] &lt;p&gt;Specifies whether the CMK's key material expires. This value is present only when &lt;code&gt;Origin&lt;/code&gt; is &lt;code&gt;EXTERNAL&lt;/code&gt;, otherwise this value is omitted.&lt;/p&gt;
-- @param ValidTo [DateType] &lt;p&gt;The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. This value is present only for CMKs whose &lt;code&gt;Origin&lt;/code&gt; is &lt;code&gt;EXTERNAL&lt;/code&gt; and whose &lt;code&gt;ExpirationModel&lt;/code&gt; is &lt;code&gt;KEY_MATERIAL_EXPIRES&lt;/code&gt;, otherwise this value is omitted.&lt;/p&gt;
-- @param Enabled [BooleanType] &lt;p&gt;Specifies whether the CMK is enabled. When &lt;code&gt;KeyState&lt;/code&gt; is &lt;code&gt;Enabled&lt;/code&gt; this value is true, otherwise it is false.&lt;/p&gt;
-- @param KeyUsage [KeyUsageType] &lt;p&gt;The cryptographic operations for which you can use the CMK. Currently the only allowed value is &lt;code&gt;ENCRYPT_DECRYPT&lt;/code&gt;, which means you can use the CMK for the &lt;a&gt;Encrypt&lt;/a&gt; and &lt;a&gt;Decrypt&lt;/a&gt; operations.&lt;/p&gt;
-- @param KeyState [KeyState] &lt;p&gt;The state of the CMK.&lt;/p&gt; &lt;p&gt;For more information about how key state affects the use of a CMK, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html&quot;&gt;How Key State Affects the Use of a Customer Master Key&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param CreationDate [DateType] &lt;p&gt;The date and time when the CMK was created.&lt;/p&gt;
-- @param Arn [ArnType] &lt;p&gt;The Amazon Resource Name (ARN) of the CMK. For examples, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms&quot;&gt;AWS Key Management Service (AWS KMS)&lt;/a&gt; in the Example ARNs section of the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param AWSAccountId [AWSAccountIdType] &lt;p&gt;The twelve-digit account ID of the AWS account that owns the CMK.&lt;/p&gt;
-- Required parameter: KeyId
function M.KeyMetadata(Origin, KeyId, Description, DeletionDate, ExpirationModel, ValidTo, Enabled, KeyUsage, KeyState, CreationDate, Arn, AWSAccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyMetadata")
	local t = { 
		["Origin"] = Origin,
		["KeyId"] = KeyId,
		["Description"] = Description,
		["DeletionDate"] = DeletionDate,
		["ExpirationModel"] = ExpirationModel,
		["ValidTo"] = ValidTo,
		["Enabled"] = Enabled,
		["KeyUsage"] = KeyUsage,
		["KeyState"] = KeyState,
		["CreationDate"] = CreationDate,
		["Arn"] = Arn,
		["AWSAccountId"] = AWSAccountId,
	}
	M.AssertKeyMetadata(t)
	return t
end

local ListGrantsRequest_keys = { "Marker" = true, "KeyId" = true, "Limit" = true, nil }

function M.AssertListGrantsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGrantsRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListGrantsRequest_keys[k], "ListGrantsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGrantsRequest
--  
-- @param Marker [MarkerType] &lt;p&gt;Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Limit [LimitType] &lt;p&gt;Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.&lt;/p&gt;
-- Required parameter: KeyId
function M.ListGrantsRequest(Marker, KeyId, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGrantsRequest")
	local t = { 
		["Marker"] = Marker,
		["KeyId"] = KeyId,
		["Limit"] = Limit,
	}
	M.AssertListGrantsRequest(t)
	return t
end

local DecryptRequest_keys = { "EncryptionContext" = true, "GrantTokens" = true, "CiphertextBlob" = true, nil }

function M.AssertDecryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecryptRequest to be of type 'table'")
	assert(struct["CiphertextBlob"], "Expected key CiphertextBlob to exist in table")
	if struct["EncryptionContext"] then M.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["CiphertextBlob"] then M.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(DecryptRequest_keys[k], "DecryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecryptRequest
--  
-- @param EncryptionContext [EncryptionContextType] &lt;p&gt;The encryption context. If this was specified in the &lt;a&gt;Encrypt&lt;/a&gt; function, it must be specified here or the decryption operation will fail. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html&quot;&gt;Encryption Context&lt;/a&gt;.&lt;/p&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param CiphertextBlob [CiphertextType] &lt;p&gt;Ciphertext to be decrypted. The blob includes metadata.&lt;/p&gt;
-- Required parameter: CiphertextBlob
function M.DecryptRequest(EncryptionContext, GrantTokens, CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecryptRequest")
	local t = { 
		["EncryptionContext"] = EncryptionContext,
		["GrantTokens"] = GrantTokens,
		["CiphertextBlob"] = CiphertextBlob,
	}
	M.AssertDecryptRequest(t)
	return t
end

local CancelKeyDeletionResponse_keys = { "KeyId" = true, nil }

function M.AssertCancelKeyDeletionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelKeyDeletionResponse to be of type 'table'")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(CancelKeyDeletionResponse_keys[k], "CancelKeyDeletionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelKeyDeletionResponse
--  
-- @param KeyId [KeyIdType] &lt;p&gt;The unique identifier of the master key for which deletion is canceled.&lt;/p&gt;
function M.CancelKeyDeletionResponse(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelKeyDeletionResponse")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertCancelKeyDeletionResponse(t)
	return t
end

local AliasListEntry_keys = { "AliasArn" = true, "AliasName" = true, "TargetKeyId" = true, nil }

function M.AssertAliasListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasListEntry to be of type 'table'")
	if struct["AliasArn"] then M.AssertArnType(struct["AliasArn"]) end
	if struct["AliasName"] then M.AssertAliasNameType(struct["AliasName"]) end
	if struct["TargetKeyId"] then M.AssertKeyIdType(struct["TargetKeyId"]) end
	for k,_ in pairs(struct) do
		assert(AliasListEntry_keys[k], "AliasListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasListEntry
-- &lt;p&gt;Contains information about an alias.&lt;/p&gt;
-- @param AliasArn [ArnType] &lt;p&gt;String that contains the key ARN.&lt;/p&gt;
-- @param AliasName [AliasNameType] &lt;p&gt;String that contains the alias.&lt;/p&gt;
-- @param TargetKeyId [KeyIdType] &lt;p&gt;String that contains the key identifier referred to by the alias.&lt;/p&gt;
function M.AliasListEntry(AliasArn, AliasName, TargetKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AliasListEntry")
	local t = { 
		["AliasArn"] = AliasArn,
		["AliasName"] = AliasName,
		["TargetKeyId"] = TargetKeyId,
	}
	M.AssertAliasListEntry(t)
	return t
end

local GetKeyPolicyRequest_keys = { "PolicyName" = true, "KeyId" = true, nil }

function M.AssertGetKeyPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPolicyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then M.AssertPolicyNameType(struct["PolicyName"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyPolicyRequest_keys[k], "GetKeyPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPolicyRequest
--  
-- @param PolicyName [PolicyNameType] &lt;p&gt;String that contains the name of the policy. Currently, this must be &quot;default&quot;. Policy names can be discovered by calling &lt;a&gt;ListKeyPolicies&lt;/a&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
-- Required parameter: PolicyName
function M.GetKeyPolicyRequest(PolicyName, KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPolicyRequest")
	local t = { 
		["PolicyName"] = PolicyName,
		["KeyId"] = KeyId,
	}
	M.AssertGetKeyPolicyRequest(t)
	return t
end

local UpdateKeyDescriptionRequest_keys = { "KeyId" = true, "Description" = true, nil }

function M.AssertUpdateKeyDescriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateKeyDescriptionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Description"] then M.AssertDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateKeyDescriptionRequest_keys[k], "UpdateKeyDescriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateKeyDescriptionRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Description [DescriptionType] &lt;p&gt;New description for the CMK.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: Description
function M.UpdateKeyDescriptionRequest(KeyId, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateKeyDescriptionRequest")
	local t = { 
		["KeyId"] = KeyId,
		["Description"] = Description,
	}
	M.AssertUpdateKeyDescriptionRequest(t)
	return t
end

local PutKeyPolicyRequest_keys = { "Policy" = true, "PolicyName" = true, "KeyId" = true, "BypassPolicyLockoutSafetyCheck" = true, nil }

function M.AssertPutKeyPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutKeyPolicyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then M.AssertPolicyType(struct["Policy"]) end
	if struct["PolicyName"] then M.AssertPolicyNameType(struct["PolicyName"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["BypassPolicyLockoutSafetyCheck"] then M.AssertBooleanType(struct["BypassPolicyLockoutSafetyCheck"]) end
	for k,_ in pairs(struct) do
		assert(PutKeyPolicyRequest_keys[k], "PutKeyPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutKeyPolicyRequest
--  
-- @param Policy [PolicyType] &lt;p&gt;The key policy to attach to the CMK.&lt;/p&gt; &lt;p&gt;If you do not set &lt;code&gt;BypassPolicyLockoutSafetyCheck&lt;/code&gt; to true, the policy must meet the following criteria:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;It must allow the principal that is making the &lt;code&gt;PutKeyPolicy&lt;/code&gt; request to make a subsequent &lt;code&gt;PutKeyPolicy&lt;/code&gt; request on the CMK. This reduces the likelihood that the CMK becomes unmanageable. For more information, refer to the scenario in the &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam&quot;&gt;Default Key Policy&lt;/a&gt; section in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The principals that are specified in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before specifying the new principal in a key policy because the new principal might not immediately be visible to AWS KMS. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency&quot;&gt;Changes that I make are not always immediately visible&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The policy size limit is 32 KiB (32768 bytes).&lt;/p&gt;
-- @param PolicyName [PolicyNameType] &lt;p&gt;The name of the key policy.&lt;/p&gt; &lt;p&gt;This value must be &lt;code&gt;default&lt;/code&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK.&lt;/p&gt; &lt;p&gt;Use the CMK's unique identifier or its Amazon Resource Name (ARN). For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param BypassPolicyLockoutSafetyCheck [BooleanType] &lt;p&gt;A flag to indicate whether to bypass the key policy lockout safety check.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Setting this value to true increases the likelihood that the CMK becomes unmanageable. Do not set this value to true indiscriminately.&lt;/p&gt; &lt;p&gt;For more information, refer to the scenario in the &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam&quot;&gt;Default Key Policy&lt;/a&gt; section in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;Use this parameter only when you intend to prevent the principal that is making the request from making a subsequent &lt;code&gt;PutKeyPolicy&lt;/code&gt; request on the CMK.&lt;/p&gt; &lt;p&gt;The default value is false.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: PolicyName
-- Required parameter: Policy
function M.PutKeyPolicyRequest(Policy, PolicyName, KeyId, BypassPolicyLockoutSafetyCheck, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutKeyPolicyRequest")
	local t = { 
		["Policy"] = Policy,
		["PolicyName"] = PolicyName,
		["KeyId"] = KeyId,
		["BypassPolicyLockoutSafetyCheck"] = BypassPolicyLockoutSafetyCheck,
	}
	M.AssertPutKeyPolicyRequest(t)
	return t
end

local RevokeGrantRequest_keys = { "KeyId" = true, "GrantId" = true, nil }

function M.AssertRevokeGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeGrantRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["GrantId"], "Expected key GrantId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantId"] then M.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(RevokeGrantRequest_keys[k], "RevokeGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeGrantRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key associated with the grant. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param GrantId [GrantIdType] &lt;p&gt;Identifier of the grant to be revoked.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: GrantId
function M.RevokeGrantRequest(KeyId, GrantId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeGrantRequest")
	local t = { 
		["KeyId"] = KeyId,
		["GrantId"] = GrantId,
	}
	M.AssertRevokeGrantRequest(t)
	return t
end

local InvalidAliasNameException_keys = { "message" = true, nil }

function M.AssertInvalidAliasNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAliasNameException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAliasNameException_keys[k], "InvalidAliasNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAliasNameException
-- &lt;p&gt;The request was rejected because the specified alias name is not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified alias name is not valid.&lt;/p&gt;
function M.InvalidAliasNameException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAliasNameException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidAliasNameException(t)
	return t
end

local GenerateRandomRequest_keys = { "NumberOfBytes" = true, nil }

function M.AssertGenerateRandomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateRandomRequest to be of type 'table'")
	if struct["NumberOfBytes"] then M.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	for k,_ in pairs(struct) do
		assert(GenerateRandomRequest_keys[k], "GenerateRandomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateRandomRequest
--  
-- @param NumberOfBytes [NumberOfBytesType] &lt;p&gt;The length of the byte string.&lt;/p&gt;
function M.GenerateRandomRequest(NumberOfBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateRandomRequest")
	local t = { 
		["NumberOfBytes"] = NumberOfBytes,
	}
	M.AssertGenerateRandomRequest(t)
	return t
end

local ListResourceTagsRequest_keys = { "Marker" = true, "KeyId" = true, "Limit" = true, nil }

function M.AssertListResourceTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceTagsRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListResourceTagsRequest_keys[k], "ListResourceTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceTagsRequest
--  
-- @param Marker [MarkerType] &lt;p&gt;Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt; &lt;p&gt;Do not attempt to construct this value. Use only the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK whose tags you are listing. You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Limit [LimitType] &lt;p&gt;Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 1 and 50, inclusive. If you do not include a value, it defaults to 50.&lt;/p&gt;
-- Required parameter: KeyId
function M.ListResourceTagsRequest(Marker, KeyId, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourceTagsRequest")
	local t = { 
		["Marker"] = Marker,
		["KeyId"] = KeyId,
		["Limit"] = Limit,
	}
	M.AssertListResourceTagsRequest(t)
	return t
end

local ScheduleKeyDeletionRequest_keys = { "PendingWindowInDays" = true, "KeyId" = true, nil }

function M.AssertScheduleKeyDeletionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleKeyDeletionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["PendingWindowInDays"] then M.AssertPendingWindowInDaysType(struct["PendingWindowInDays"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleKeyDeletionRequest_keys[k], "ScheduleKeyDeletionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleKeyDeletionRequest
--  
-- @param PendingWindowInDays [PendingWindowInDaysType] &lt;p&gt;The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the customer master key (CMK).&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 7 and 30, inclusive. If you do not include a value, it defaults to 30.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The unique identifier for the customer master key (CMK) to delete.&lt;/p&gt; &lt;p&gt;To specify this value, use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: 1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To obtain the unique key ID and key ARN for a given CMK, use &lt;a&gt;ListKeys&lt;/a&gt; or &lt;a&gt;DescribeKey&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: KeyId
function M.ScheduleKeyDeletionRequest(PendingWindowInDays, KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleKeyDeletionRequest")
	local t = { 
		["PendingWindowInDays"] = PendingWindowInDays,
		["KeyId"] = KeyId,
	}
	M.AssertScheduleKeyDeletionRequest(t)
	return t
end

local TagException_keys = { "message" = true, nil }

function M.AssertTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TagException_keys[k], "TagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagException
-- &lt;p&gt;The request was rejected because one or more tags are not valid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because one or more tags are not valid.&lt;/p&gt;
function M.TagException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagException")
	local t = { 
		["message"] = message,
	}
	M.AssertTagException(t)
	return t
end

local DisableKeyRequest_keys = { "KeyId" = true, nil }

function M.AssertDisableKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(DisableKeyRequest_keys[k], "DisableKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableKeyRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK.&lt;/p&gt; &lt;p&gt;Use the CMK's unique identifier or its Amazon Resource Name (ARN). For example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
function M.DisableKeyRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableKeyRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertDisableKeyRequest(t)
	return t
end

local CreateGrantRequest_keys = { "Operations" = true, "KeyId" = true, "Name" = true, "RetiringPrincipal" = true, "GranteePrincipal" = true, "GrantTokens" = true, "Constraints" = true, nil }

function M.AssertCreateGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrantRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["GranteePrincipal"], "Expected key GranteePrincipal to exist in table")
	if struct["Operations"] then M.AssertGrantOperationList(struct["Operations"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Name"] then M.AssertGrantNameType(struct["Name"]) end
	if struct["RetiringPrincipal"] then M.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	if struct["GranteePrincipal"] then M.AssertPrincipalIdType(struct["GranteePrincipal"]) end
	if struct["GrantTokens"] then M.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["Constraints"] then M.AssertGrantConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(CreateGrantRequest_keys[k], "CreateGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrantRequest
--  
-- @param Operations [GrantOperationList] &lt;p&gt;A list of operations that the grant permits.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The unique identifier for the customer master key (CMK) that the grant applies to.&lt;/p&gt; &lt;p&gt;To specify this value, use the globally unique key ID or the Amazon Resource Name (ARN) of the key. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Globally unique key ID: 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [GrantNameType] &lt;p&gt;A friendly name for identifying the grant. Use this value to prevent unintended creation of duplicate grants when retrying this request.&lt;/p&gt; &lt;p&gt;When this value is absent, all &lt;code&gt;CreateGrant&lt;/code&gt; requests result in a new grant with a unique &lt;code&gt;GrantId&lt;/code&gt; even if all the supplied parameters are identical. This can result in unintended duplicates when you retry the &lt;code&gt;CreateGrant&lt;/code&gt; request.&lt;/p&gt; &lt;p&gt;When this value is present, you can retry a &lt;code&gt;CreateGrant&lt;/code&gt; request with identical parameters; if the grant already exists, the original &lt;code&gt;GrantId&lt;/code&gt; is returned without creating a new grant. Note that the returned grant token is unique with every &lt;code&gt;CreateGrant&lt;/code&gt; request, even when a duplicate &lt;code&gt;GrantId&lt;/code&gt; is returned. All grant tokens obtained in this way can be used interchangeably.&lt;/p&gt;
-- @param RetiringPrincipal [PrincipalIdType] &lt;p&gt;The principal that is given permission to retire the grant by using &lt;a&gt;RetireGrant&lt;/a&gt; operation.&lt;/p&gt; &lt;p&gt;To specify the principal, use the &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Name (ARN)&lt;/a&gt; of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam&quot;&gt;AWS Identity and Access Management (IAM)&lt;/a&gt; in the Example ARNs section of the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param GranteePrincipal [PrincipalIdType] &lt;p&gt;The principal that is given permission to perform the operations that the grant permits.&lt;/p&gt; &lt;p&gt;To specify the principal, use the &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Name (ARN)&lt;/a&gt; of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam&quot;&gt;AWS Identity and Access Management (IAM)&lt;/a&gt; in the Example ARNs section of the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param GrantTokens [GrantTokenList] &lt;p&gt;A list of grant tokens.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Constraints [GrantConstraints] &lt;p&gt;A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html&quot;&gt;Encryption Context&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: GranteePrincipal
function M.CreateGrantRequest(Operations, KeyId, Name, RetiringPrincipal, GranteePrincipal, GrantTokens, Constraints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGrantRequest")
	local t = { 
		["Operations"] = Operations,
		["KeyId"] = KeyId,
		["Name"] = Name,
		["RetiringPrincipal"] = RetiringPrincipal,
		["GranteePrincipal"] = GranteePrincipal,
		["GrantTokens"] = GrantTokens,
		["Constraints"] = Constraints,
	}
	M.AssertCreateGrantRequest(t)
	return t
end

local ExpiredImportTokenException_keys = { "message" = true, nil }

function M.AssertExpiredImportTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredImportTokenException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredImportTokenException_keys[k], "ExpiredImportTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredImportTokenException
-- &lt;p&gt;The request was rejected because the provided import token is expired. Use &lt;a&gt;GetParametersForImport&lt;/a&gt; to retrieve a new import token and public key, use the new public key to encrypt the key material, and then try the request again.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the provided import token is expired. Use &lt;a&gt;GetParametersForImport&lt;/a&gt; to retrieve a new import token and public key, use the new public key to encrypt the key material, and then try the request again.&lt;/p&gt;
function M.ExpiredImportTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredImportTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredImportTokenException(t)
	return t
end

local GetKeyRotationStatusRequest_keys = { "KeyId" = true, nil }

function M.AssertGetKeyRotationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyRotationStatusRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(GetKeyRotationStatusRequest_keys[k], "GetKeyRotationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyRotationStatusRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
function M.GetKeyRotationStatusRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyRotationStatusRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertGetKeyRotationStatusRequest(t)
	return t
end

local GetParametersForImportResponse_keys = { "ParametersValidTo" = true, "PublicKey" = true, "KeyId" = true, "ImportToken" = true, nil }

function M.AssertGetParametersForImportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersForImportResponse to be of type 'table'")
	if struct["ParametersValidTo"] then M.AssertDateType(struct["ParametersValidTo"]) end
	if struct["PublicKey"] then M.AssertPlaintextType(struct["PublicKey"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["ImportToken"] then M.AssertCiphertextType(struct["ImportToken"]) end
	for k,_ in pairs(struct) do
		assert(GetParametersForImportResponse_keys[k], "GetParametersForImportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersForImportResponse
--  
-- @param ParametersValidTo [DateType] &lt;p&gt;The time at which the import token and public key are no longer valid. After this time, you cannot use them to make an &lt;a&gt;ImportKeyMaterial&lt;/a&gt; request and you must send another &lt;code&gt;GetParametersForImport&lt;/code&gt; request to retrieve new ones.&lt;/p&gt;
-- @param PublicKey [PlaintextType] &lt;p&gt;The public key to use to encrypt the key material before importing it with &lt;a&gt;ImportKeyMaterial&lt;/a&gt;.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The identifier of the CMK to use in a subsequent &lt;a&gt;ImportKeyMaterial&lt;/a&gt; request. This is the same CMK specified in the &lt;code&gt;GetParametersForImport&lt;/code&gt; request.&lt;/p&gt;
-- @param ImportToken [CiphertextType] &lt;p&gt;The import token to send in a subsequent &lt;a&gt;ImportKeyMaterial&lt;/a&gt; request.&lt;/p&gt;
function M.GetParametersForImportResponse(ParametersValidTo, PublicKey, KeyId, ImportToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersForImportResponse")
	local t = { 
		["ParametersValidTo"] = ParametersValidTo,
		["PublicKey"] = PublicKey,
		["KeyId"] = KeyId,
		["ImportToken"] = ImportToken,
	}
	M.AssertGetParametersForImportResponse(t)
	return t
end

local ListAliasesRequest_keys = { "Marker" = true, "Limit" = true, nil }

function M.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListAliasesRequest_keys[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param Marker [MarkerType] &lt;p&gt;Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of &lt;code&gt;NextMarker&lt;/code&gt; from the truncated response you just received.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.&lt;/p&gt; &lt;p&gt;This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.&lt;/p&gt;
function M.ListAliasesRequest(Marker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesRequest")
	local t = { 
		["Marker"] = Marker,
		["Limit"] = Limit,
	}
	M.AssertListAliasesRequest(t)
	return t
end

local InvalidCiphertextException_keys = { "message" = true, nil }

function M.AssertInvalidCiphertextException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCiphertextException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCiphertextException_keys[k], "InvalidCiphertextException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCiphertextException
-- &lt;p&gt;The request was rejected because the specified ciphertext has been corrupted or is otherwise invalid.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the specified ciphertext has been corrupted or is otherwise invalid.&lt;/p&gt;
function M.InvalidCiphertextException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCiphertextException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidCiphertextException(t)
	return t
end

local TagResourceRequest_keys = { "KeyId" = true, "Tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the CMK you are tagging. You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Unique key ID: &lt;code&gt;1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Key ARN: &lt;code&gt;arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Tags [TagList] &lt;p&gt;One or more tags. Each tag consists of a tag key and a tag value.&lt;/p&gt;
-- Required parameter: KeyId
-- Required parameter: Tags
function M.TagResourceRequest(KeyId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["KeyId"] = KeyId,
		["Tags"] = Tags,
	}
	M.AssertTagResourceRequest(t)
	return t
end

local GrantListEntry_keys = { "Operations" = true, "KeyId" = true, "Name" = true, "RetiringPrincipal" = true, "GranteePrincipal" = true, "GrantId" = true, "IssuingAccount" = true, "CreationDate" = true, "Constraints" = true, nil }

function M.AssertGrantListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantListEntry to be of type 'table'")
	if struct["Operations"] then M.AssertGrantOperationList(struct["Operations"]) end
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	if struct["Name"] then M.AssertGrantNameType(struct["Name"]) end
	if struct["RetiringPrincipal"] then M.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	if struct["GranteePrincipal"] then M.AssertPrincipalIdType(struct["GranteePrincipal"]) end
	if struct["GrantId"] then M.AssertGrantIdType(struct["GrantId"]) end
	if struct["IssuingAccount"] then M.AssertPrincipalIdType(struct["IssuingAccount"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	if struct["Constraints"] then M.AssertGrantConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(GrantListEntry_keys[k], "GrantListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantListEntry
-- &lt;p&gt;Contains information about an entry in a list of grants.&lt;/p&gt;
-- @param Operations [GrantOperationList] &lt;p&gt;The list of operations permitted by the grant.&lt;/p&gt;
-- @param KeyId [KeyIdType] &lt;p&gt;The unique identifier for the customer master key (CMK) to which the grant applies.&lt;/p&gt;
-- @param Name [GrantNameType] &lt;p&gt;The friendly name that identifies the grant. If a name was provided in the &lt;a&gt;CreateGrant&lt;/a&gt; request, that name is returned. Otherwise this value is null.&lt;/p&gt;
-- @param RetiringPrincipal [PrincipalIdType] &lt;p&gt;The principal that can retire the grant.&lt;/p&gt;
-- @param GranteePrincipal [PrincipalIdType] &lt;p&gt;The principal that receives the grant's permissions.&lt;/p&gt;
-- @param GrantId [GrantIdType] &lt;p&gt;The unique identifier for the grant.&lt;/p&gt;
-- @param IssuingAccount [PrincipalIdType] &lt;p&gt;The AWS account under which the grant was issued.&lt;/p&gt;
-- @param CreationDate [DateType] &lt;p&gt;The date and time when the grant was created.&lt;/p&gt;
-- @param Constraints [GrantConstraints] &lt;p&gt;A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows.&lt;/p&gt;
function M.GrantListEntry(Operations, KeyId, Name, RetiringPrincipal, GranteePrincipal, GrantId, IssuingAccount, CreationDate, Constraints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantListEntry")
	local t = { 
		["Operations"] = Operations,
		["KeyId"] = KeyId,
		["Name"] = Name,
		["RetiringPrincipal"] = RetiringPrincipal,
		["GranteePrincipal"] = GranteePrincipal,
		["GrantId"] = GrantId,
		["IssuingAccount"] = IssuingAccount,
		["CreationDate"] = CreationDate,
		["Constraints"] = Constraints,
	}
	M.AssertGrantListEntry(t)
	return t
end

local CreateGrantResponse_keys = { "GrantToken" = true, "GrantId" = true, nil }

function M.AssertCreateGrantResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrantResponse to be of type 'table'")
	if struct["GrantToken"] then M.AssertGrantTokenType(struct["GrantToken"]) end
	if struct["GrantId"] then M.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(CreateGrantResponse_keys[k], "CreateGrantResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrantResponse
--  
-- @param GrantToken [GrantTokenType] &lt;p&gt;The grant token.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token&quot;&gt;Grant Tokens&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param GrantId [GrantIdType] &lt;p&gt;The unique identifier for the grant.&lt;/p&gt; &lt;p&gt;You can use the &lt;code&gt;GrantId&lt;/code&gt; in a subsequent &lt;a&gt;RetireGrant&lt;/a&gt; or &lt;a&gt;RevokeGrant&lt;/a&gt; operation.&lt;/p&gt;
function M.CreateGrantResponse(GrantToken, GrantId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGrantResponse")
	local t = { 
		["GrantToken"] = GrantToken,
		["GrantId"] = GrantId,
	}
	M.AssertCreateGrantResponse(t)
	return t
end

local ListGrantsResponse_keys = { "NextMarker" = true, "Grants" = true, "Truncated" = true, nil }

function M.AssertListGrantsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGrantsResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertMarkerType(struct["NextMarker"]) end
	if struct["Grants"] then M.AssertGrantList(struct["Grants"]) end
	if struct["Truncated"] then M.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(ListGrantsResponse_keys[k], "ListGrantsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGrantsResponse
--  
-- @param NextMarker [MarkerType] &lt;p&gt;When &lt;code&gt;Truncated&lt;/code&gt; is true, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
-- @param Grants [GrantList] &lt;p&gt;A list of grants.&lt;/p&gt;
-- @param Truncated [BooleanType] &lt;p&gt;A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the &lt;code&gt;NextMarker&lt;/code&gt; element in this response to the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent request.&lt;/p&gt;
function M.ListGrantsResponse(NextMarker, Grants, Truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGrantsResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["Grants"] = Grants,
		["Truncated"] = Truncated,
	}
	M.AssertListGrantsResponse(t)
	return t
end

local KMSInternalException_keys = { "message" = true, nil }

function M.AssertKMSInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInternalException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(KMSInternalException_keys[k], "KMSInternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInternalException
-- &lt;p&gt;The request was rejected because an internal exception occurred. The request can be retried.&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because an internal exception occurred. The request can be retried.&lt;/p&gt;
function M.KMSInternalException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSInternalException")
	local t = { 
		["message"] = message,
	}
	M.AssertKMSInternalException(t)
	return t
end

local DescribeKeyResponse_keys = { "KeyMetadata" = true, nil }

function M.AssertDescribeKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyResponse to be of type 'table'")
	if struct["KeyMetadata"] then M.AssertKeyMetadata(struct["KeyMetadata"]) end
	for k,_ in pairs(struct) do
		assert(DescribeKeyResponse_keys[k], "DescribeKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyResponse
--  
-- @param KeyMetadata [KeyMetadata] &lt;p&gt;Metadata associated with the key.&lt;/p&gt;
function M.DescribeKeyResponse(KeyMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeKeyResponse")
	local t = { 
		["KeyMetadata"] = KeyMetadata,
	}
	M.AssertDescribeKeyResponse(t)
	return t
end

local InvalidImportTokenException_keys = { "message" = true, nil }

function M.AssertInvalidImportTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidImportTokenException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidImportTokenException_keys[k], "InvalidImportTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidImportTokenException
-- &lt;p&gt;The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).&lt;/p&gt;
-- @param message [ErrorMessageType] &lt;p&gt;The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).&lt;/p&gt;
function M.InvalidImportTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidImportTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidImportTokenException(t)
	return t
end

local DisableKeyRotationRequest_keys = { "KeyId" = true, nil }

function M.AssertDisableKeyRotationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableKeyRotationRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then M.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(DisableKeyRotationRequest_keys[k], "DisableKeyRotationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableKeyRotationRequest
--  
-- @param KeyId [KeyIdType] &lt;p&gt;A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: KeyId
function M.DisableKeyRotationRequest(KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableKeyRotationRequest")
	local t = { 
		["KeyId"] = KeyId,
	}
	M.AssertDisableKeyRotationRequest(t)
	return t
end

function M.AssertTagKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKeyType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKeyType(str)
	M.AssertTagKeyType(str)
	return str
end

function M.AssertDataKeySpec(str)
	assert(str)
	assert(type(str) == "string", "Expected DataKeySpec to be of type 'string'")
end

--  
function M.DataKeySpec(str)
	M.AssertDataKeySpec(str)
	return str
end

function M.AssertEncryptionContextValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionContextValue to be of type 'string'")
end

--  
function M.EncryptionContextValue(str)
	M.AssertEncryptionContextValue(str)
	return str
end

function M.AssertKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyIdType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeyIdType(str)
	M.AssertKeyIdType(str)
	return str
end

function M.AssertAWSAccountIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountIdType to be of type 'string'")
end

--  
function M.AWSAccountIdType(str)
	M.AssertAWSAccountIdType(str)
	return str
end

function M.AssertKeyState(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyState to be of type 'string'")
end

--  
function M.KeyState(str)
	M.AssertKeyState(str)
	return str
end

function M.AssertAlgorithmSpec(str)
	assert(str)
	assert(type(str) == "string", "Expected AlgorithmSpec to be of type 'string'")
end

--  
function M.AlgorithmSpec(str)
	M.AssertAlgorithmSpec(str)
	return str
end

function M.AssertPrincipalIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalIdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrincipalIdType(str)
	M.AssertPrincipalIdType(str)
	return str
end

function M.AssertGrantNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9:/_-]+$"), "Expected string to match pattern '^[a-zA-Z0-9:/_-]+$'")
end

--  
function M.GrantNameType(str)
	M.AssertGrantNameType(str)
	return str
end

function M.AssertWrappingKeySpec(str)
	assert(str)
	assert(type(str) == "string", "Expected WrappingKeySpec to be of type 'string'")
end

--  
function M.WrappingKeySpec(str)
	M.AssertWrappingKeySpec(str)
	return str
end

function M.AssertGrantIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantIdType(str)
	M.AssertGrantIdType(str)
	return str
end

function M.AssertTagValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValueType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValueType(str)
	M.AssertTagValueType(str)
	return str
end

function M.AssertGrantOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantOperation to be of type 'string'")
end

--  
function M.GrantOperation(str)
	M.AssertGrantOperation(str)
	return str
end

function M.AssertDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionType to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.DescriptionType(str)
	M.AssertDescriptionType(str)
	return str
end

function M.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
	assert(#str <= 131072, "Expected string to be max 131072 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.PolicyType(str)
	M.AssertPolicyType(str)
	return str
end

function M.AssertGrantTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantTokenType to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantTokenType(str)
	M.AssertGrantTokenType(str)
	return str
end

function M.AssertErrorMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessageType to be of type 'string'")
end

--  
function M.ErrorMessageType(str)
	M.AssertErrorMessageType(str)
	return str
end

function M.AssertMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerType to be of type 'string'")
	assert(#str <= 320, "Expected string to be max 320 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%u00FF]*"), "Expected string to match pattern '[%u0020-%u00FF]*'")
end

--  
function M.MarkerType(str)
	M.AssertMarkerType(str)
	return str
end

function M.AssertArnType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ArnType(str)
	M.AssertArnType(str)
	return str
end

function M.AssertPolicyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.PolicyNameType(str)
	M.AssertPolicyNameType(str)
	return str
end

function M.AssertKeyUsageType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyUsageType to be of type 'string'")
end

--  
function M.KeyUsageType(str)
	M.AssertKeyUsageType(str)
	return str
end

function M.AssertOriginType(str)
	assert(str)
	assert(type(str) == "string", "Expected OriginType to be of type 'string'")
end

--  
function M.OriginType(str)
	M.AssertOriginType(str)
	return str
end

function M.AssertEncryptionContextKey(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionContextKey to be of type 'string'")
end

--  
function M.EncryptionContextKey(str)
	M.AssertEncryptionContextKey(str)
	return str
end

function M.AssertExpirationModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpirationModelType to be of type 'string'")
end

--  
function M.ExpirationModelType(str)
	M.AssertExpirationModelType(str)
	return str
end

function M.AssertAliasNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9:/_-]+$"), "Expected string to match pattern '^[a-zA-Z0-9:/_-]+$'")
end

--  
function M.AliasNameType(str)
	M.AssertAliasNameType(str)
	return str
end

function M.AssertLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitType(integer)
	M.AssertLimitType(integer)
	return integer
end

function M.AssertNumberOfBytesType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfBytesType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1024, "Expected integer to be max 1024")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumberOfBytesType(integer)
	M.AssertNumberOfBytesType(integer)
	return integer
end

function M.AssertPendingWindowInDaysType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PendingWindowInDaysType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 365, "Expected integer to be max 365")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PendingWindowInDaysType(integer)
	M.AssertPendingWindowInDaysType(integer)
	return integer
end

function M.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	M.AssertBooleanType(boolean)
	return boolean
end

function M.AssertEncryptionContextType(map)
	assert(map)
	assert(type(map) == "table", "Expected EncryptionContextType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertEncryptionContextKey(k)
		M.AssertEncryptionContextValue(v)
	end
end

function M.EncryptionContextType(map)
	M.AssertEncryptionContextType(map)
	return map
end

function M.AssertDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateType to be of type 'string'")
end

function M.DateType(timestamp)
	M.AssertDateType(timestamp)
	return timestamp
end

function M.AssertCiphertextType(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CiphertextType to be of type 'string'")
	assert(#blob <= 6144, "Expected blob to be max 6144")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CiphertextType(blob)
	M.AssertCiphertextType(blob)
	return blob
end

function M.AssertPlaintextType(blob)
	assert(blob)
	assert(type(string) == "string", "Expected PlaintextType to be of type 'string'")
	assert(#blob <= 4096, "Expected blob to be max 4096")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.PlaintextType(blob)
	M.AssertPlaintextType(blob)
	return blob
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKeyType(v)
	end
end

--  
-- List of TagKeyType objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAliasListEntry(v)
	end
end

--  
-- List of AliasListEntry objects
function M.AliasList(list)
	M.AssertAliasList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
	return list
end

function M.AssertGrantList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGrantListEntry(v)
	end
end

--  
-- List of GrantListEntry objects
function M.GrantList(list)
	M.AssertGrantList(list)
	return list
end

function M.AssertGrantTokenList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantTokenList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertGrantTokenType(v)
	end
end

--  
-- List of GrantTokenType objects
function M.GrantTokenList(list)
	M.AssertGrantTokenList(list)
	return list
end

function M.AssertPolicyNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyNameType(v)
	end
end

--  
-- List of PolicyNameType objects
function M.PolicyNameList(list)
	M.AssertPolicyNameList(list)
	return list
end

function M.AssertGrantOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantOperationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGrantOperation(v)
	end
end

--  
-- List of GrantOperation objects
function M.GrantOperationList(list)
	M.AssertGrantOperationList(list)
	return list
end

function M.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertKeyListEntry(v)
	end
end

--  
-- List of KeyListEntry objects
function M.KeyList(list)
	M.AssertKeyList(list)
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
			return "kms.amazonaws.com"
		end
	end
	local ss = { "kms" }
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
--- Encrypt
-- @param EncryptRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EncryptAsync(EncryptRequest, cb)
	assert(EncryptRequest, "You must provide a EncryptRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.Encrypt",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EncryptRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Decrypt
-- @param DecryptRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DecryptAsync(DecryptRequest, cb)
	assert(DecryptRequest, "You must provide a DecryptRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.Decrypt",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DecryptRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAlias
-- @param UpdateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAliasAsync(UpdateAliasRequest, cb)
	assert(UpdateAliasRequest, "You must provide a UpdateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.UpdateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportKeyMaterial
-- @param ImportKeyMaterialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportKeyMaterialAsync(ImportKeyMaterialRequest, cb)
	assert(ImportKeyMaterialRequest, "You must provide a ImportKeyMaterialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ImportKeyMaterial",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ImportKeyMaterialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableKey
-- @param DisableKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableKeyAsync(DisableKeyRequest, cb)
	assert(DisableKeyRequest, "You must provide a DisableKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DisableKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateDataKeyWithoutPlaintext
-- @param GenerateDataKeyWithoutPlaintextRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateDataKeyWithoutPlaintextAsync(GenerateDataKeyWithoutPlaintextRequest, cb)
	assert(GenerateDataKeyWithoutPlaintextRequest, "You must provide a GenerateDataKeyWithoutPlaintextRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GenerateDataKeyWithoutPlaintext",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateDataKeyWithoutPlaintextRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateDataKey
-- @param GenerateDataKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateDataKeyAsync(GenerateDataKeyRequest, cb)
	assert(GenerateDataKeyRequest, "You must provide a GenerateDataKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GenerateDataKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateDataKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListResourceTags
-- @param ListResourceTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourceTagsAsync(ListResourceTagsRequest, cb)
	assert(ListResourceTagsRequest, "You must provide a ListResourceTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListResourceTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListResourceTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAliases
-- @param ListAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListAliases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAliasesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelKeyDeletion
-- @param CancelKeyDeletionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelKeyDeletionAsync(CancelKeyDeletionRequest, cb)
	assert(CancelKeyDeletionRequest, "You must provide a CancelKeyDeletionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CancelKeyDeletion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelKeyDeletionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetKeyRotationStatus
-- @param GetKeyRotationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyRotationStatusAsync(GetKeyRotationStatusRequest, cb)
	assert(GetKeyRotationStatusRequest, "You must provide a GetKeyRotationStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GetKeyRotationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetKeyRotationStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListKeyPolicies
-- @param ListKeyPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListKeyPoliciesAsync(ListKeyPoliciesRequest, cb)
	assert(ListKeyPoliciesRequest, "You must provide a ListKeyPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListKeyPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListKeyPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAlias
-- @param DeleteAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DeleteAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RetireGrant
-- @param RetireGrantRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RetireGrantAsync(RetireGrantRequest, cb)
	assert(RetireGrantRequest, "You must provide a RetireGrantRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.RetireGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RetireGrantRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeKey
-- @param DescribeKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeKeyAsync(DescribeKeyRequest, cb)
	assert(DescribeKeyRequest, "You must provide a DescribeKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DescribeKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListKeys
-- @param ListKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListKeysAsync(ListKeysRequest, cb)
	assert(ListKeysRequest, "You must provide a ListKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateRandom
-- @param GenerateRandomRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateRandomAsync(GenerateRandomRequest, cb)
	assert(GenerateRandomRequest, "You must provide a GenerateRandomRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GenerateRandom",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateRandomRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetKeyPolicy
-- @param GetKeyPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyPolicyAsync(GetKeyPolicyRequest, cb)
	assert(GetKeyPolicyRequest, "You must provide a GetKeyPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GetKeyPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetKeyPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGrant
-- @param CreateGrantRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGrantAsync(CreateGrantRequest, cb)
	assert(CreateGrantRequest, "You must provide a CreateGrantRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CreateGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateGrantRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateKey
-- @param CreateKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateKeyAsync(CreateKeyRequest, cb)
	assert(CreateKeyRequest, "You must provide a CreateKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CreateKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReEncrypt
-- @param ReEncryptRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReEncryptAsync(ReEncryptRequest, cb)
	assert(ReEncryptRequest, "You must provide a ReEncryptRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ReEncrypt",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReEncryptRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetParametersForImport
-- @param GetParametersForImportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParametersForImportAsync(GetParametersForImportRequest, cb)
	assert(GetParametersForImportRequest, "You must provide a GetParametersForImportRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GetParametersForImport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetParametersForImportRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableKeyRotation
-- @param DisableKeyRotationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableKeyRotationAsync(DisableKeyRotationRequest, cb)
	assert(DisableKeyRotationRequest, "You must provide a DisableKeyRotationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DisableKeyRotation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableKeyRotationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRetirableGrants
-- @param ListRetirableGrantsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRetirableGrantsAsync(ListRetirableGrantsRequest, cb)
	assert(ListRetirableGrantsRequest, "You must provide a ListRetirableGrantsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListRetirableGrants",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRetirableGrantsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ScheduleKeyDeletion
-- @param ScheduleKeyDeletionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ScheduleKeyDeletionAsync(ScheduleKeyDeletionRequest, cb)
	assert(ScheduleKeyDeletionRequest, "You must provide a ScheduleKeyDeletionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ScheduleKeyDeletion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScheduleKeyDeletionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAlias
-- @param CreateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableKeyRotation
-- @param EnableKeyRotationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableKeyRotationAsync(EnableKeyRotationRequest, cb)
	assert(EnableKeyRotationRequest, "You must provide a EnableKeyRotationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.EnableKeyRotation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableKeyRotationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGrants
-- @param ListGrantsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGrantsAsync(ListGrantsRequest, cb)
	assert(ListGrantsRequest, "You must provide a ListGrantsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListGrants",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGrantsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableKey
-- @param EnableKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableKeyAsync(EnableKeyRequest, cb)
	assert(EnableKeyRequest, "You must provide a EnableKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.EnableKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteImportedKeyMaterial
-- @param DeleteImportedKeyMaterialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteImportedKeyMaterialAsync(DeleteImportedKeyMaterialRequest, cb)
	assert(DeleteImportedKeyMaterialRequest, "You must provide a DeleteImportedKeyMaterialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DeleteImportedKeyMaterial",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteImportedKeyMaterialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateKeyDescription
-- @param UpdateKeyDescriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateKeyDescriptionAsync(UpdateKeyDescriptionRequest, cb)
	assert(UpdateKeyDescriptionRequest, "You must provide a UpdateKeyDescriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.UpdateKeyDescription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateKeyDescriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RevokeGrant
-- @param RevokeGrantRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeGrantAsync(RevokeGrantRequest, cb)
	assert(RevokeGrantRequest, "You must provide a RevokeGrantRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.RevokeGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RevokeGrantRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutKeyPolicy
-- @param PutKeyPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutKeyPolicyAsync(PutKeyPolicyRequest, cb)
	assert(PutKeyPolicyRequest, "You must provide a PutKeyPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.PutKeyPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutKeyPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
