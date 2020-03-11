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

local keys = {}
local asserts = {}

keys.ListRetirableGrantsRequest = { ["Marker"] = true, ["Limit"] = true, ["RetiringPrincipal"] = true, nil }

function asserts.AssertListRetirableGrantsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRetirableGrantsRequest to be of type 'table'")
	assert(struct["RetiringPrincipal"], "Expected key RetiringPrincipal to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["RetiringPrincipal"] then asserts.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRetirableGrantsRequest[k], "ListRetirableGrantsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRetirableGrantsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- * Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
-- * RetiringPrincipal [PrincipalIdType] <p>The retiring principal for which to list grants.</p> <p>To specify the retiring principal, use the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax for specifying a principal, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the <i>Amazon Web Services General Reference</i>.</p>
-- Required key: RetiringPrincipal
-- @return ListRetirableGrantsRequest structure as a key-value pair table
function M.ListRetirableGrantsRequest(args)
	assert(args, "You must provide an argument table when creating ListRetirableGrantsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["RetiringPrincipal"] = args["RetiringPrincipal"],
	}
	asserts.AssertListRetirableGrantsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DependencyTimeoutException = { ["message"] = true, nil }

function asserts.AssertDependencyTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyTimeoutException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DependencyTimeoutException[k], "DependencyTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyTimeoutException
-- <p>The system timed out while trying to fulfill the request. The request can be retried.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return DependencyTimeoutException structure as a key-value pair table
function M.DependencyTimeoutException(args)
	assert(args, "You must provide an argument table when creating DependencyTimeoutException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDependencyTimeoutException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedOperationException = { ["message"] = true, nil }

function asserts.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperationException[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return UnsupportedOperationException structure as a key-value pair table
function M.UnsupportedOperationException(args)
	assert(args, "You must provide an argument table when creating UnsupportedOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArnException = { ["message"] = true, nil }

function asserts.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArnException[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- <p>The request was rejected because a specified ARN was not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidArnException structure as a key-value pair table
function M.InvalidArnException(args)
	assert(args, "You must provide an argument table when creating InvalidArnException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArnException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableKeyRotationRequest = { ["KeyId"] = true, nil }

function asserts.AssertEnableKeyRotationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableKeyRotationRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableKeyRotationRequest[k], "EnableKeyRotationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableKeyRotationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return EnableKeyRotationRequest structure as a key-value pair table
function M.EnableKeyRotationRequest(args)
	assert(args, "You must provide an argument table when creating EnableKeyRotationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertEnableKeyRotationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidKeyUsageException = { ["message"] = true, nil }

function asserts.AssertInvalidKeyUsageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyUsageException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidKeyUsageException[k], "InvalidKeyUsageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyUsageException
-- <p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidKeyUsageException structure as a key-value pair table
function M.InvalidKeyUsageException(args)
	assert(args, "You must provide an argument table when creating InvalidKeyUsageException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidKeyUsageException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateKeyRequest = { ["Origin"] = true, ["Description"] = true, ["Tags"] = true, ["BypassPolicyLockoutSafetyCheck"] = true, ["KeyUsage"] = true, ["Policy"] = true, nil }

function asserts.AssertCreateKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyRequest to be of type 'table'")
	if struct["Origin"] then asserts.AssertOriginType(struct["Origin"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["BypassPolicyLockoutSafetyCheck"] then asserts.AssertBooleanType(struct["BypassPolicyLockoutSafetyCheck"]) end
	if struct["KeyUsage"] then asserts.AssertKeyUsageType(struct["KeyUsage"]) end
	if struct["Policy"] then asserts.AssertPolicyType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeyRequest[k], "CreateKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Origin [OriginType] <p>The source of the CMK's key material.</p> <p>The default is <code>AWS_KMS</code>, which means AWS KMS creates the key material. When this parameter is set to <code>EXTERNAL</code>, the request creates a CMK without key material so that you can import key material from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>The CMK's <code>Origin</code> is immutable and is set when the CMK is created.</p>
-- * Description [DescriptionType] <p>A description of the CMK.</p> <p>Use a description that helps you decide whether the CMK is appropriate for a task.</p>
-- * Tags [TagList] <p>One or more tags. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>Use this parameter to tag the CMK when it is created. Alternately, you can omit this parameter and instead tag the CMK after it is created using <a>TagResource</a>.</p>
-- * BypassPolicyLockoutSafetyCheck [BooleanType] <p>A flag to indicate whether to bypass the key policy lockout safety check.</p> <important> <p>Setting this value to true increases the risk that the CMK becomes unmanageable. Do not set this value to true indiscriminately.</p> <p>For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p> </important> <p>Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent <a>PutKeyPolicy</a> request on the CMK.</p> <p>The default value is false.</p>
-- * KeyUsage [KeyUsageType] <p>The intended use of the CMK.</p> <p>You can use CMKs only for symmetric encryption and decryption.</p>
-- * Policy [PolicyType] <p>The key policy to attach to the CMK.</p> <p>If you provide a key policy, it must meet the following criteria:</p> <ul> <li> <p>If you don't set <code>BypassPolicyLockoutSafetyCheck</code> to true, the key policy must allow the principal that is making the <code>CreateKey</code> request to make a subsequent <a>PutKeyPolicy</a> request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section of the <i>AWS Key Management Service Developer Guide</i>.</p> </li> <li> <p>Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before including the new principal in a key policy. The reason for this is that the new principal might not be immediately visible to AWS KMS. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> </li> </ul> <p>If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default">Default Key Policy</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>The key policy size limit is 32 kilobytes (32768 bytes).</p>
-- @return CreateKeyRequest structure as a key-value pair table
function M.CreateKeyRequest(args)
	assert(args, "You must provide an argument table when creating CreateKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Origin"] = args["Origin"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["BypassPolicyLockoutSafetyCheck"] = args["BypassPolicyLockoutSafetyCheck"],
		["KeyUsage"] = args["KeyUsage"],
		["Policy"] = args["Policy"],
	}
	asserts.AssertCreateKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetKeyPolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertGetKeyPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicyType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPolicyResponse[k], "GetKeyPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [PolicyType] <p>A key policy document in JSON format.</p>
-- @return GetKeyPolicyResponse structure as a key-value pair table
function M.GetKeyPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetKeyPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetKeyPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisabledException = { ["message"] = true, nil }

function asserts.AssertDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisabledException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisabledException[k], "DisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisabledException
-- <p>The request was rejected because the specified CMK is not enabled.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return DisabledException structure as a key-value pair table
function M.DisabledException(args)
	assert(args, "You must provide an argument table when creating DisabledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDisabledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateDataKeyWithoutPlaintextResponse = { ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertGenerateDataKeyWithoutPlaintextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyWithoutPlaintextResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyWithoutPlaintextResponse[k], "GenerateDataKeyWithoutPlaintextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyWithoutPlaintextResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>The identifier of the CMK under which the data encryption key was generated and encrypted.</p>
-- * CiphertextBlob [CiphertextType] <p>The encrypted data encryption key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
-- @return GenerateDataKeyWithoutPlaintextResponse structure as a key-value pair table
function M.GenerateDataKeyWithoutPlaintextResponse(args)
	assert(args, "You must provide an argument table when creating GenerateDataKeyWithoutPlaintextResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["CiphertextBlob"] = args["CiphertextBlob"],
	}
	asserts.AssertGenerateDataKeyWithoutPlaintextResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeKeyRequest = { ["KeyId"] = true, ["GrantTokens"] = true, nil }

function asserts.AssertDescribeKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeKeyRequest[k], "DescribeKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>Describes the specified customer master key (CMK). </p> <p>If you specify a predefined AWS alias (an AWS alias with no key ID), KMS associates the alias with an <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">AWS managed CMK</a> and returns its <code>KeyId</code> and <code>Arn</code> in the response.</p> <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- Required key: KeyId
-- @return DescribeKeyRequest structure as a key-value pair table
function M.DescribeKeyRequest(args)
	assert(args, "You must provide an argument table when creating DescribeKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["GrantTokens"] = args["GrantTokens"],
	}
	asserts.AssertDescribeKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidGrantIdException = { ["message"] = true, nil }

function asserts.AssertInvalidGrantIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGrantIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGrantIdException[k], "InvalidGrantIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGrantIdException
-- <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidGrantIdException structure as a key-value pair table
function M.InvalidGrantIdException(args)
	assert(args, "You must provide an argument table when creating InvalidGrantIdException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidGrantIdException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableKeyRequest = { ["KeyId"] = true, nil }

function asserts.AssertEnableKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableKeyRequest[k], "EnableKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return EnableKeyRequest structure as a key-value pair table
function M.EnableKeyRequest(args)
	assert(args, "You must provide an argument table when creating EnableKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertEnableKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportKeyMaterialResponse = { nil }

function asserts.AssertImportKeyMaterialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyMaterialResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImportKeyMaterialResponse[k], "ImportKeyMaterialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyMaterialResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ImportKeyMaterialResponse structure as a key-value pair table
function M.ImportKeyMaterialResponse(args)
	assert(args, "You must provide an argument table when creating ImportKeyMaterialResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertImportKeyMaterialResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAliasRequest = { ["TargetKeyId"] = true, ["AliasName"] = true, nil }

function asserts.AssertUpdateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	assert(struct["TargetKeyId"], "Expected key TargetKeyId to exist in table")
	if struct["TargetKeyId"] then asserts.AssertKeyIdType(struct["TargetKeyId"]) end
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAliasRequest[k], "UpdateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetKeyId [KeyIdType] <p>Unique identifier of the customer master key to be mapped to the alias.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p> <p>To verify that the alias is mapped to the correct CMK, use <a>ListAliases</a>.</p>
-- * AliasName [AliasNameType] <p>String that contains the name of the alias to be modified. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/aws" are reserved.</p>
-- Required key: AliasName
-- Required key: TargetKeyId
-- @return UpdateAliasRequest structure as a key-value pair table
function M.UpdateAliasRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetKeyId"] = args["TargetKeyId"],
		["AliasName"] = args["AliasName"],
	}
	asserts.AssertUpdateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateDataKeyRequest = { ["NumberOfBytes"] = true, ["EncryptionContext"] = true, ["KeyId"] = true, ["GrantTokens"] = true, ["KeySpec"] = true, nil }

function asserts.AssertGenerateDataKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["NumberOfBytes"] then asserts.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["KeySpec"] then asserts.AssertDataKeySpec(struct["KeySpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyRequest[k], "GenerateDataKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfBytes [NumberOfBytesType] <p>The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the <code>KeySpec</code> field instead of this one.</p>
-- * EncryptionContext [EncryptionContextType] <p>A set of key-value pairs that represents additional authenticated data.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * KeyId [KeyIdType] <p>The identifier of the CMK under which to generate and encrypt the data encryption key.</p> <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * KeySpec [DataKeySpec] <p>The length of the data encryption key. Use <code>AES_128</code> to generate a 128-bit symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
-- Required key: KeyId
-- @return GenerateDataKeyRequest structure as a key-value pair table
function M.GenerateDataKeyRequest(args)
	assert(args, "You must provide an argument table when creating GenerateDataKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfBytes"] = args["NumberOfBytes"],
		["EncryptionContext"] = args["EncryptionContext"],
		["KeyId"] = args["KeyId"],
		["GrantTokens"] = args["GrantTokens"],
		["KeySpec"] = args["KeySpec"],
	}
	asserts.AssertGenerateDataKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSInvalidStateException = { ["message"] = true, nil }

function asserts.AssertKMSInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInvalidStateException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSInvalidStateException[k], "KMSInvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInvalidStateException
-- <p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return KMSInvalidStateException structure as a key-value pair table
function M.KMSInvalidStateException(args)
	assert(args, "You must provide an argument table when creating KMSInvalidStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSInvalidStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateDataKeyWithoutPlaintextRequest = { ["NumberOfBytes"] = true, ["EncryptionContext"] = true, ["KeyId"] = true, ["GrantTokens"] = true, ["KeySpec"] = true, nil }

function asserts.AssertGenerateDataKeyWithoutPlaintextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyWithoutPlaintextRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["NumberOfBytes"] then asserts.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["KeySpec"] then asserts.AssertDataKeySpec(struct["KeySpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyWithoutPlaintextRequest[k], "GenerateDataKeyWithoutPlaintextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyWithoutPlaintextRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfBytes [NumberOfBytesType] <p>The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the <code>KeySpec</code> field instead of this one.</p>
-- * EncryptionContext [EncryptionContextType] <p>A set of key-value pairs that represents additional authenticated data.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * KeyId [KeyIdType] <p>The identifier of the customer master key (CMK) under which to generate and encrypt the data encryption key.</p> <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * KeySpec [DataKeySpec] <p>The length of the data encryption key. Use <code>AES_128</code> to generate a 128-bit symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
-- Required key: KeyId
-- @return GenerateDataKeyWithoutPlaintextRequest structure as a key-value pair table
function M.GenerateDataKeyWithoutPlaintextRequest(args)
	assert(args, "You must provide an argument table when creating GenerateDataKeyWithoutPlaintextRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfBytes"] = args["NumberOfBytes"],
		["EncryptionContext"] = args["EncryptionContext"],
		["KeyId"] = args["KeyId"],
		["GrantTokens"] = args["GrantTokens"],
		["KeySpec"] = args["KeySpec"],
	}
	asserts.AssertGenerateDataKeyWithoutPlaintextRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleKeyDeletionResponse = { ["KeyId"] = true, ["DeletionDate"] = true, nil }

function asserts.AssertScheduleKeyDeletionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleKeyDeletionResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["DeletionDate"] then asserts.AssertDateType(struct["DeletionDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleKeyDeletionResponse[k], "ScheduleKeyDeletionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleKeyDeletionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>The unique identifier of the customer master key (CMK) for which deletion is scheduled.</p>
-- * DeletionDate [DateType] <p>The date and time after which AWS KMS deletes the customer master key (CMK).</p>
-- @return ScheduleKeyDeletionResponse structure as a key-value pair table
function M.ScheduleKeyDeletionResponse(args)
	assert(args, "You must provide an argument table when creating ScheduleKeyDeletionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["DeletionDate"] = args["DeletionDate"],
	}
	asserts.AssertScheduleKeyDeletionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The request was rejected because the specified entity or resource could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateRandomResponse = { ["Plaintext"] = true, nil }

function asserts.AssertGenerateRandomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateRandomResponse to be of type 'table'")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateRandomResponse[k], "GenerateRandomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateRandomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Plaintext [PlaintextType] <p>The random byte string. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
-- @return GenerateRandomResponse structure as a key-value pair table
function M.GenerateRandomResponse(args)
	assert(args, "You must provide an argument table when creating GenerateRandomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Plaintext"] = args["Plaintext"],
	}
	asserts.AssertGenerateRandomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReEncryptRequest = { ["SourceEncryptionContext"] = true, ["GrantTokens"] = true, ["DestinationEncryptionContext"] = true, ["DestinationKeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertReEncryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReEncryptRequest to be of type 'table'")
	assert(struct["CiphertextBlob"], "Expected key CiphertextBlob to exist in table")
	assert(struct["DestinationKeyId"], "Expected key DestinationKeyId to exist in table")
	if struct["SourceEncryptionContext"] then asserts.AssertEncryptionContextType(struct["SourceEncryptionContext"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["DestinationEncryptionContext"] then asserts.AssertEncryptionContextType(struct["DestinationEncryptionContext"]) end
	if struct["DestinationKeyId"] then asserts.AssertKeyIdType(struct["DestinationKeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReEncryptRequest[k], "ReEncryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReEncryptRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceEncryptionContext [EncryptionContextType] <p>Encryption context used to encrypt and decrypt the data specified in the <code>CiphertextBlob</code> parameter.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * DestinationEncryptionContext [EncryptionContextType] <p>Encryption context to use when the data is reencrypted.</p>
-- * DestinationKeyId [KeyIdType] <p>A unique identifier for the CMK that is used to reencrypt the data.</p> <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
-- * CiphertextBlob [CiphertextType] <p>Ciphertext of the data to reencrypt.</p>
-- Required key: CiphertextBlob
-- Required key: DestinationKeyId
-- @return ReEncryptRequest structure as a key-value pair table
function M.ReEncryptRequest(args)
	assert(args, "You must provide an argument table when creating ReEncryptRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceEncryptionContext"] = args["SourceEncryptionContext"],
		["GrantTokens"] = args["GrantTokens"],
		["DestinationEncryptionContext"] = args["DestinationEncryptionContext"],
		["DestinationKeyId"] = args["DestinationKeyId"],
		["CiphertextBlob"] = args["CiphertextBlob"],
	}
	asserts.AssertReEncryptRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidGrantTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidGrantTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGrantTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGrantTokenException[k], "InvalidGrantTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGrantTokenException
-- <p>The request was rejected because the specified grant token is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidGrantTokenException structure as a key-value pair table
function M.InvalidGrantTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidGrantTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidGrantTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
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
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesResponse = { ["Truncated"] = true, ["NextMarker"] = true, ["Aliases"] = true, nil }

function asserts.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Aliases"] then asserts.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesResponse[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- * NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- * Aliases [AliasList] <p>A list of aliases.</p>
-- @return ListAliasesResponse structure as a key-value pair table
function M.ListAliasesResponse(args)
	assert(args, "You must provide an argument table when creating ListAliasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Truncated"] = args["Truncated"],
		["NextMarker"] = args["NextMarker"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertListAliasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidMarkerException = { ["message"] = true, nil }

function asserts.AssertInvalidMarkerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMarkerException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidMarkerException[k], "InvalidMarkerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMarkerException
-- <p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidMarkerException structure as a key-value pair table
function M.InvalidMarkerException(args)
	assert(args, "You must provide an argument table when creating InvalidMarkerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidMarkerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListKeyPoliciesRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListKeyPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPoliciesRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeyPoliciesRequest[k], "ListKeyPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p> <p>Currently only 1 policy can be attached to a key.</p>
-- Required key: KeyId
-- @return ListKeyPoliciesRequest structure as a key-value pair table
function M.ListKeyPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListKeyPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["KeyId"] = args["KeyId"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListKeyPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAliasRequest = { ["AliasName"] = true, nil }

function asserts.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasRequest[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AliasName [AliasNameType] <p>The alias to be deleted. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/aws" are reserved.</p>
-- Required key: AliasName
-- @return DeleteAliasRequest structure as a key-value pair table
function M.DeleteAliasRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AliasName"] = args["AliasName"],
	}
	asserts.AssertDeleteAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MalformedPolicyDocumentException = { ["message"] = true, nil }

function asserts.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedPolicyDocumentException[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- <p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return MalformedPolicyDocumentException structure as a key-value pair table
function M.MalformedPolicyDocumentException(args)
	assert(args, "You must provide an argument table when creating MalformedPolicyDocumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedPolicyDocumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DecryptResponse = { ["Plaintext"] = true, ["KeyId"] = true, nil }

function asserts.AssertDecryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecryptResponse to be of type 'table'")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecryptResponse[k], "DecryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecryptResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Plaintext [PlaintextType] <p>Decrypted plaintext data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
-- * KeyId [KeyIdType] <p>ARN of the key used to perform the decryption. This value is returned if no errors are encountered during the operation.</p>
-- @return DecryptResponse structure as a key-value pair table
function M.DecryptResponse(args)
	assert(args, "You must provide an argument table when creating DecryptResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Plaintext"] = args["Plaintext"],
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertDecryptResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourceTagsResponse = { ["Truncated"] = true, ["NextMarker"] = true, ["Tags"] = true, nil }

function asserts.AssertListResourceTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceTagsResponse to be of type 'table'")
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceTagsResponse[k], "ListResourceTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- * NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p> <p>Do not assume or infer any information from this value.</p>
-- * Tags [TagList] <p>A list of tags. Each tag consists of a tag key and a tag value.</p>
-- @return ListResourceTagsResponse structure as a key-value pair table
function M.ListResourceTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListResourceTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Truncated"] = args["Truncated"],
		["NextMarker"] = args["NextMarker"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListResourceTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GrantConstraints = { ["EncryptionContextSubset"] = true, ["EncryptionContextEquals"] = true, nil }

function asserts.AssertGrantConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantConstraints to be of type 'table'")
	if struct["EncryptionContextSubset"] then asserts.AssertEncryptionContextType(struct["EncryptionContextSubset"]) end
	if struct["EncryptionContextEquals"] then asserts.AssertEncryptionContextType(struct["EncryptionContextEquals"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrantConstraints[k], "GrantConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantConstraints
-- <p>A structure that you can use to allow certain operations in the grant only when the preferred encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Grant constraints apply only to operations that accept encryption context as input. For example, the <code> <a>DescribeKey</a> </code> operation does not accept encryption context as input. A grant that allows the <code>DescribeKey</code> operation does so regardless of the grant constraints. In contrast, the <code> <a>Encrypt</a> </code> operation accepts encryption context as input. A grant that allows the <code>Encrypt</code> operation does so only when the encryption context of the <code>Encrypt</code> operation satisfies the grant constraints.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionContextSubset [EncryptionContextType] <p>A list of key-value pairs, all of which must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list or is a superset of this list, the grant allows the operation. Otherwise, the grant does not allow the operation.</p>
-- * EncryptionContextEquals [EncryptionContextType] <p>A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list, the grant allows the operation. Otherwise, the grant does not allow the operation.</p>
-- @return GrantConstraints structure as a key-value pair table
function M.GrantConstraints(args)
	assert(args, "You must provide an argument table when creating GrantConstraints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionContextSubset"] = args["EncryptionContextSubset"],
		["EncryptionContextEquals"] = args["EncryptionContextEquals"],
	}
	asserts.AssertGrantConstraints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["TagKey"] = true, ["TagValue"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["TagKey"], "Expected key TagKey to exist in table")
	assert(struct["TagValue"], "Expected key TagValue to exist in table")
	if struct["TagKey"] then asserts.AssertTagKeyType(struct["TagKey"]) end
	if struct["TagValue"] then asserts.AssertTagValueType(struct["TagValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKey [TagKeyType] <p>The key of the tag.</p>
-- * TagValue [TagValueType] <p>The value of the tag.</p>
-- Required key: TagKey
-- Required key: TagValue
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
		["TagKey"] = args["TagKey"],
		["TagValue"] = args["TagValue"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportKeyMaterialRequest = { ["ExpirationModel"] = true, ["ValidTo"] = true, ["KeyId"] = true, ["ImportToken"] = true, ["EncryptedKeyMaterial"] = true, nil }

function asserts.AssertImportKeyMaterialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyMaterialRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["ImportToken"], "Expected key ImportToken to exist in table")
	assert(struct["EncryptedKeyMaterial"], "Expected key EncryptedKeyMaterial to exist in table")
	if struct["ExpirationModel"] then asserts.AssertExpirationModelType(struct["ExpirationModel"]) end
	if struct["ValidTo"] then asserts.AssertDateType(struct["ValidTo"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["ImportToken"] then asserts.AssertCiphertextType(struct["ImportToken"]) end
	if struct["EncryptedKeyMaterial"] then asserts.AssertCiphertextType(struct["EncryptedKeyMaterial"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportKeyMaterialRequest[k], "ImportKeyMaterialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyMaterialRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpirationModel [ExpirationModelType] <p>Specifies whether the key material expires. The default is <code>KEY_MATERIAL_EXPIRES</code>, in which case you must include the <code>ValidTo</code> parameter. When this parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must omit the <code>ValidTo</code> parameter.</p>
-- * ValidTo [DateType] <p>The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. You must omit this parameter when the <code>ExpirationModel</code> parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>. Otherwise it is required.</p>
-- * KeyId [KeyIdType] <p>The identifier of the CMK to import the key material into. The CMK's <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * ImportToken [CiphertextType] <p>The import token that you received in the response to a previous <a>GetParametersForImport</a> request. It must be from the same response that contained the public key that you used to encrypt the key material.</p>
-- * EncryptedKeyMaterial [CiphertextType] <p>The encrypted key material to import. It must be encrypted with the public key that you received in the response to a previous <a>GetParametersForImport</a> request, using the wrapping algorithm that you specified in that request.</p>
-- Required key: KeyId
-- Required key: ImportToken
-- Required key: EncryptedKeyMaterial
-- @return ImportKeyMaterialRequest structure as a key-value pair table
function M.ImportKeyMaterialRequest(args)
	assert(args, "You must provide an argument table when creating ImportKeyMaterialRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExpirationModel"] = args["ExpirationModel"],
		["ValidTo"] = args["ValidTo"],
		["KeyId"] = args["KeyId"],
		["ImportToken"] = args["ImportToken"],
		["EncryptedKeyMaterial"] = args["EncryptedKeyMaterial"],
	}
	asserts.AssertImportKeyMaterialRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetireGrantRequest = { ["GrantToken"] = true, ["KeyId"] = true, ["GrantId"] = true, nil }

function asserts.AssertRetireGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetireGrantRequest to be of type 'table'")
	if struct["GrantToken"] then asserts.AssertGrantTokenType(struct["GrantToken"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetireGrantRequest[k], "RetireGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetireGrantRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrantToken [GrantTokenType] <p>Token that identifies the grant to be retired.</p>
-- * KeyId [KeyIdType] <p>The Amazon Resource Name (ARN) of the CMK associated with the grant. </p> <p>For example: <code>arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p>
-- * GrantId [GrantIdType] <p>Unique identifier of the grant to retire. The grant ID is returned in the response to a <code>CreateGrant</code> operation.</p> <ul> <li> <p>Grant ID Example - 0123456789012345678901234567890123456789012345678901234567890123</p> </li> </ul>
-- @return RetireGrantRequest structure as a key-value pair table
function M.RetireGrantRequest(args)
	assert(args, "You must provide an argument table when creating RetireGrantRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrantToken"] = args["GrantToken"],
		["KeyId"] = args["KeyId"],
		["GrantId"] = args["GrantId"],
	}
	asserts.AssertRetireGrantRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListKeysResponse = { ["Keys"] = true, ["NextMarker"] = true, ["Truncated"] = true, nil }

function asserts.AssertListKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeysResponse to be of type 'table'")
	if struct["Keys"] then asserts.AssertKeyList(struct["Keys"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeysResponse[k], "ListKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeysResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Keys [KeyList] <p>A list of customer master keys (CMKs).</p>
-- * NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- * Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- @return ListKeysResponse structure as a key-value pair table
function M.ListKeysResponse(args)
	assert(args, "You must provide an argument table when creating ListKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Keys"] = args["Keys"],
		["NextMarker"] = args["NextMarker"],
		["Truncated"] = args["Truncated"],
	}
	asserts.AssertListKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["KeyId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the CMK from which you are removing tags.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * TagKeys [TagKeyList] <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
-- Required key: KeyId
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptResponse = { ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertEncryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptResponse[k], "EncryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>The ID of the key used during encryption.</p>
-- * CiphertextBlob [CiphertextType] <p>The encrypted plaintext. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
-- @return EncryptResponse structure as a key-value pair table
function M.EncryptResponse(args)
	assert(args, "You must provide an argument table when creating EncryptResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["CiphertextBlob"] = args["CiphertextBlob"],
	}
	asserts.AssertEncryptResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyExistsException[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>The request was rejected because it attempted to create a resource that already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return AlreadyExistsException structure as a key-value pair table
function M.AlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating AlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateDataKeyResponse = { ["Plaintext"] = true, ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertGenerateDataKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyResponse to be of type 'table'")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyResponse[k], "GenerateDataKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Plaintext [PlaintextType] <p>The data encryption key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded. Use this data key for local encryption and decryption, then remove it from memory as soon as possible.</p>
-- * KeyId [KeyIdType] <p>The identifier of the CMK under which the data encryption key was generated and encrypted.</p>
-- * CiphertextBlob [CiphertextType] <p>The encrypted data encryption key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
-- @return GenerateDataKeyResponse structure as a key-value pair table
function M.GenerateDataKeyResponse(args)
	assert(args, "You must provide an argument table when creating GenerateDataKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Plaintext"] = args["Plaintext"],
		["KeyId"] = args["KeyId"],
		["CiphertextBlob"] = args["CiphertextBlob"],
	}
	asserts.AssertGenerateDataKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListKeyPoliciesResponse = { ["PolicyNames"] = true, ["NextMarker"] = true, ["Truncated"] = true, nil }

function asserts.AssertListKeyPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPoliciesResponse to be of type 'table'")
	if struct["PolicyNames"] then asserts.AssertPolicyNameList(struct["PolicyNames"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeyPoliciesResponse[k], "ListKeyPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPoliciesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyNames [PolicyNameList] <p>A list of key policy names. Currently, there is only one key policy per CMK and it is always named <code>default</code>.</p>
-- * NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- * Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- @return ListKeyPoliciesResponse structure as a key-value pair table
function M.ListKeyPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListKeyPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyNames"] = args["PolicyNames"],
		["NextMarker"] = args["NextMarker"],
		["Truncated"] = args["Truncated"],
	}
	asserts.AssertListKeyPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetParametersForImportRequest = { ["WrappingAlgorithm"] = true, ["KeyId"] = true, ["WrappingKeySpec"] = true, nil }

function asserts.AssertGetParametersForImportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersForImportRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["WrappingAlgorithm"], "Expected key WrappingAlgorithm to exist in table")
	assert(struct["WrappingKeySpec"], "Expected key WrappingKeySpec to exist in table")
	if struct["WrappingAlgorithm"] then asserts.AssertAlgorithmSpec(struct["WrappingAlgorithm"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["WrappingKeySpec"] then asserts.AssertWrappingKeySpec(struct["WrappingKeySpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersForImportRequest[k], "GetParametersForImportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersForImportRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WrappingAlgorithm [AlgorithmSpec] <p>The algorithm you use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html">Encrypt the Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * KeyId [KeyIdType] <p>The identifier of the CMK into which you will import key material. The CMK's <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * WrappingKeySpec [WrappingKeySpec] <p>The type of wrapping key (public key) to return in the response. Only 2048-bit RSA public keys are supported.</p>
-- Required key: KeyId
-- Required key: WrappingAlgorithm
-- Required key: WrappingKeySpec
-- @return GetParametersForImportRequest structure as a key-value pair table
function M.GetParametersForImportRequest(args)
	assert(args, "You must provide an argument table when creating GetParametersForImportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WrappingAlgorithm"] = args["WrappingAlgorithm"],
		["KeyId"] = args["KeyId"],
		["WrappingKeySpec"] = args["WrappingKeySpec"],
	}
	asserts.AssertGetParametersForImportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateKeyResponse = { ["KeyMetadata"] = true, nil }

function asserts.AssertCreateKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyResponse to be of type 'table'")
	if struct["KeyMetadata"] then asserts.AssertKeyMetadata(struct["KeyMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeyResponse[k], "CreateKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyMetadata [KeyMetadata] <p>Metadata associated with the CMK.</p>
-- @return CreateKeyResponse structure as a key-value pair table
function M.CreateKeyResponse(args)
	assert(args, "You must provide an argument table when creating CreateKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyMetadata"] = args["KeyMetadata"],
	}
	asserts.AssertCreateKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReEncryptResponse = { ["SourceKeyId"] = true, ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertReEncryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReEncryptResponse to be of type 'table'")
	if struct["SourceKeyId"] then asserts.AssertKeyIdType(struct["SourceKeyId"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReEncryptResponse[k], "ReEncryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReEncryptResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceKeyId [KeyIdType] <p>Unique identifier of the CMK used to originally encrypt the data.</p>
-- * KeyId [KeyIdType] <p>Unique identifier of the CMK used to reencrypt the data.</p>
-- * CiphertextBlob [CiphertextType] <p>The reencrypted data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not encoded.</p>
-- @return ReEncryptResponse structure as a key-value pair table
function M.ReEncryptResponse(args)
	assert(args, "You must provide an argument table when creating ReEncryptResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceKeyId"] = args["SourceKeyId"],
		["KeyId"] = args["KeyId"],
		["CiphertextBlob"] = args["CiphertextBlob"],
	}
	asserts.AssertReEncryptResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAliasRequest = { ["TargetKeyId"] = true, ["AliasName"] = true, nil }

function asserts.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	assert(struct["TargetKeyId"], "Expected key TargetKeyId to exist in table")
	if struct["TargetKeyId"] then asserts.AssertKeyIdType(struct["TargetKeyId"]) end
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasRequest[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetKeyId [KeyIdType] <p>Identifies the CMK for which you are creating the alias. This value cannot be an alias.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * AliasName [AliasNameType] <p>Specifies the alias name. This value must begin with <code>alias/</code> followed by the alias name, such as <code>alias/ExampleAlias</code>. The alias name cannot begin with <code>aws/</code>. The <code>alias/aws/</code> prefix is reserved for AWS managed CMKs.</p>
-- Required key: AliasName
-- Required key: TargetKeyId
-- @return CreateAliasRequest structure as a key-value pair table
function M.CreateAliasRequest(args)
	assert(args, "You must provide an argument table when creating CreateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetKeyId"] = args["TargetKeyId"],
		["AliasName"] = args["AliasName"],
	}
	asserts.AssertCreateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyUnavailableException = { ["message"] = true, nil }

function asserts.AssertKeyUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyUnavailableException[k], "KeyUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyUnavailableException
-- <p>The request was rejected because the specified CMK was not available. The request can be retried.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return KeyUnavailableException structure as a key-value pair table
function M.KeyUnavailableException(args)
	assert(args, "You must provide an argument table when creating KeyUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKeyUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelKeyDeletionRequest = { ["KeyId"] = true, nil }

function asserts.AssertCancelKeyDeletionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelKeyDeletionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelKeyDeletionRequest[k], "CancelKeyDeletionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelKeyDeletionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) for which to cancel deletion.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return CancelKeyDeletionRequest structure as a key-value pair table
function M.CancelKeyDeletionRequest(args)
	assert(args, "You must provide an argument table when creating CancelKeyDeletionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertCancelKeyDeletionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncorrectKeyMaterialException = { ["message"] = true, nil }

function asserts.AssertIncorrectKeyMaterialException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectKeyMaterialException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncorrectKeyMaterialException[k], "IncorrectKeyMaterialException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectKeyMaterialException
-- <p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return IncorrectKeyMaterialException structure as a key-value pair table
function M.IncorrectKeyMaterialException(args)
	assert(args, "You must provide an argument table when creating IncorrectKeyMaterialException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertIncorrectKeyMaterialException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteImportedKeyMaterialRequest = { ["KeyId"] = true, nil }

function asserts.AssertDeleteImportedKeyMaterialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImportedKeyMaterialRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImportedKeyMaterialRequest[k], "DeleteImportedKeyMaterialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImportedKeyMaterialRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>The identifier of the CMK whose key material to delete. The CMK's <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return DeleteImportedKeyMaterialRequest structure as a key-value pair table
function M.DeleteImportedKeyMaterialRequest(args)
	assert(args, "You must provide an argument table when creating DeleteImportedKeyMaterialRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertDeleteImportedKeyMaterialRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetKeyRotationStatusResponse = { ["KeyRotationEnabled"] = true, nil }

function asserts.AssertGetKeyRotationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyRotationStatusResponse to be of type 'table'")
	if struct["KeyRotationEnabled"] then asserts.AssertBooleanType(struct["KeyRotationEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyRotationStatusResponse[k], "GetKeyRotationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyRotationStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyRotationEnabled [BooleanType] <p>A Boolean value that specifies whether key rotation is enabled.</p>
-- @return GetKeyRotationStatusResponse structure as a key-value pair table
function M.GetKeyRotationStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetKeyRotationStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyRotationEnabled"] = args["KeyRotationEnabled"],
	}
	asserts.AssertGetKeyRotationStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptRequest = { ["Plaintext"] = true, ["EncryptionContext"] = true, ["KeyId"] = true, ["GrantTokens"] = true, nil }

function asserts.AssertEncryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Plaintext"], "Expected key Plaintext to exist in table")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptRequest[k], "EncryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Plaintext [PlaintextType] <p>Data to be encrypted.</p>
-- * EncryptionContext [EncryptionContextType] <p>Name-value pair that specifies the encryption context to be used for authenticated encryption. If used here, the same value must be supplied to the <code>Decrypt</code> API or decryption will fail. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a>.</p>
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>"alias/"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- Required key: KeyId
-- Required key: Plaintext
-- @return EncryptRequest structure as a key-value pair table
function M.EncryptRequest(args)
	assert(args, "You must provide an argument table when creating EncryptRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Plaintext"] = args["Plaintext"],
		["EncryptionContext"] = args["EncryptionContext"],
		["KeyId"] = args["KeyId"],
		["GrantTokens"] = args["GrantTokens"],
	}
	asserts.AssertEncryptRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyListEntry = { ["KeyArn"] = true, ["KeyId"] = true, nil }

function asserts.AssertKeyListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyListEntry to be of type 'table'")
	if struct["KeyArn"] then asserts.AssertArnType(struct["KeyArn"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyListEntry[k], "KeyListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyListEntry
-- <p>Contains information about each entry in the key list.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyArn [ArnType] <p>ARN of the key.</p>
-- * KeyId [KeyIdType] <p>Unique identifier of the key.</p>
-- @return KeyListEntry structure as a key-value pair table
function M.KeyListEntry(args)
	assert(args, "You must provide an argument table when creating KeyListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyArn"] = args["KeyArn"],
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertKeyListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListKeysRequest = { ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertListKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeysRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeysRequest[k], "ListKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeysRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- * Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
-- @return ListKeysRequest structure as a key-value pair table
function M.ListKeysRequest(args)
	assert(args, "You must provide an argument table when creating ListKeysRequest")
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
	asserts.AssertListKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyMetadata = { ["Origin"] = true, ["KeyId"] = true, ["Description"] = true, ["DeletionDate"] = true, ["KeyManager"] = true, ["ExpirationModel"] = true, ["ValidTo"] = true, ["Enabled"] = true, ["KeyUsage"] = true, ["KeyState"] = true, ["CreationDate"] = true, ["Arn"] = true, ["AWSAccountId"] = true, nil }

function asserts.AssertKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyMetadata to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Origin"] then asserts.AssertOriginType(struct["Origin"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["DeletionDate"] then asserts.AssertDateType(struct["DeletionDate"]) end
	if struct["KeyManager"] then asserts.AssertKeyManagerType(struct["KeyManager"]) end
	if struct["ExpirationModel"] then asserts.AssertExpirationModelType(struct["ExpirationModel"]) end
	if struct["ValidTo"] then asserts.AssertDateType(struct["ValidTo"]) end
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["KeyUsage"] then asserts.AssertKeyUsageType(struct["KeyUsage"]) end
	if struct["KeyState"] then asserts.AssertKeyState(struct["KeyState"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["Arn"] then asserts.AssertArnType(struct["Arn"]) end
	if struct["AWSAccountId"] then asserts.AssertAWSAccountIdType(struct["AWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyMetadata[k], "KeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyMetadata
-- <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Origin [OriginType] <p>The source of the CMK's key material. When this value is <code>AWS_KMS</code>, AWS KMS created the key material. When this value is <code>EXTERNAL</code>, the key material was imported from your existing key management infrastructure or the CMK lacks key material.</p>
-- * KeyId [KeyIdType] <p>The globally unique identifier for the CMK.</p>
-- * Description [DescriptionType] <p>The description of the CMK.</p>
-- * DeletionDate [DateType] <p>The date and time after which AWS KMS deletes the CMK. This value is present only when <code>KeyState</code> is <code>PendingDeletion</code>, otherwise this value is omitted.</p>
-- * KeyManager [KeyManagerType] <p>The CMK's manager. CMKs are either customer managed or AWS managed. For more information about the difference, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * ExpirationModel [ExpirationModelType] <p>Specifies whether the CMK's key material expires. This value is present only when <code>Origin</code> is <code>EXTERNAL</code>, otherwise this value is omitted.</p>
-- * ValidTo [DateType] <p>The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. This value is present only for CMKs whose <code>Origin</code> is <code>EXTERNAL</code> and whose <code>ExpirationModel</code> is <code>KEY_MATERIAL_EXPIRES</code>, otherwise this value is omitted.</p>
-- * Enabled [BooleanType] <p>Specifies whether the CMK is enabled. When <code>KeyState</code> is <code>Enabled</code> this value is true, otherwise it is false.</p>
-- * KeyUsage [KeyUsageType] <p>The cryptographic operations for which you can use the CMK. Currently the only allowed value is <code>ENCRYPT_DECRYPT</code>, which means you can use the CMK for the <a>Encrypt</a> and <a>Decrypt</a> operations.</p>
-- * KeyState [KeyState] <p>The state of the CMK.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects the Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * CreationDate [DateType] <p>The date and time when the CMK was created.</p>
-- * Arn [ArnType] <p>The Amazon Resource Name (ARN) of the CMK. For examples, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">AWS Key Management Service (AWS KMS)</a> in the Example ARNs section of the <i>AWS General Reference</i>.</p>
-- * AWSAccountId [AWSAccountIdType] <p>The twelve-digit account ID of the AWS account that owns the CMK.</p>
-- Required key: KeyId
-- @return KeyMetadata structure as a key-value pair table
function M.KeyMetadata(args)
	assert(args, "You must provide an argument table when creating KeyMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Origin"] = args["Origin"],
		["KeyId"] = args["KeyId"],
		["Description"] = args["Description"],
		["DeletionDate"] = args["DeletionDate"],
		["KeyManager"] = args["KeyManager"],
		["ExpirationModel"] = args["ExpirationModel"],
		["ValidTo"] = args["ValidTo"],
		["Enabled"] = args["Enabled"],
		["KeyUsage"] = args["KeyUsage"],
		["KeyState"] = args["KeyState"],
		["CreationDate"] = args["CreationDate"],
		["Arn"] = args["Arn"],
		["AWSAccountId"] = args["AWSAccountId"],
	}
	asserts.AssertKeyMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGrantsRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListGrantsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGrantsRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGrantsRequest[k], "ListGrantsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGrantsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
-- Required key: KeyId
-- @return ListGrantsRequest structure as a key-value pair table
function M.ListGrantsRequest(args)
	assert(args, "You must provide an argument table when creating ListGrantsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["KeyId"] = args["KeyId"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListGrantsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DecryptRequest = { ["EncryptionContext"] = true, ["GrantTokens"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertDecryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecryptRequest to be of type 'table'")
	assert(struct["CiphertextBlob"], "Expected key CiphertextBlob to exist in table")
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecryptRequest[k], "DecryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecryptRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionContext [EncryptionContextType] <p>The encryption context. If this was specified in the <a>Encrypt</a> function, it must be specified here or the decryption operation will fail. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a>.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * CiphertextBlob [CiphertextType] <p>Ciphertext to be decrypted. The blob includes metadata.</p>
-- Required key: CiphertextBlob
-- @return DecryptRequest structure as a key-value pair table
function M.DecryptRequest(args)
	assert(args, "You must provide an argument table when creating DecryptRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionContext"] = args["EncryptionContext"],
		["GrantTokens"] = args["GrantTokens"],
		["CiphertextBlob"] = args["CiphertextBlob"],
	}
	asserts.AssertDecryptRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelKeyDeletionResponse = { ["KeyId"] = true, nil }

function asserts.AssertCancelKeyDeletionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelKeyDeletionResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelKeyDeletionResponse[k], "CancelKeyDeletionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelKeyDeletionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>The unique identifier of the master key for which deletion is canceled.</p>
-- @return CancelKeyDeletionResponse structure as a key-value pair table
function M.CancelKeyDeletionResponse(args)
	assert(args, "You must provide an argument table when creating CancelKeyDeletionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertCancelKeyDeletionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AliasListEntry = { ["AliasArn"] = true, ["AliasName"] = true, ["TargetKeyId"] = true, nil }

function asserts.AssertAliasListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasListEntry to be of type 'table'")
	if struct["AliasArn"] then asserts.AssertArnType(struct["AliasArn"]) end
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	if struct["TargetKeyId"] then asserts.AssertKeyIdType(struct["TargetKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasListEntry[k], "AliasListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasListEntry
-- <p>Contains information about an alias.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AliasArn [ArnType] <p>String that contains the key ARN.</p>
-- * AliasName [AliasNameType] <p>String that contains the alias.</p>
-- * TargetKeyId [KeyIdType] <p>String that contains the key identifier referred to by the alias.</p>
-- @return AliasListEntry structure as a key-value pair table
function M.AliasListEntry(args)
	assert(args, "You must provide an argument table when creating AliasListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AliasArn"] = args["AliasArn"],
		["AliasName"] = args["AliasName"],
		["TargetKeyId"] = args["TargetKeyId"],
	}
	asserts.AssertAliasListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetKeyPolicyRequest = { ["PolicyName"] = true, ["KeyId"] = true, nil }

function asserts.AssertGetKeyPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPolicyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyNameType(struct["PolicyName"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPolicyRequest[k], "GetKeyPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyNameType] <p>Specifies the name of the key policy. The only valid name is <code>default</code>. To get the names of key policies, use <a>ListKeyPolicies</a>.</p>
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- Required key: PolicyName
-- @return GetKeyPolicyRequest structure as a key-value pair table
function M.GetKeyPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetKeyPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertGetKeyPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateKeyDescriptionRequest = { ["KeyId"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateKeyDescriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateKeyDescriptionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateKeyDescriptionRequest[k], "UpdateKeyDescriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateKeyDescriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * Description [DescriptionType] <p>New description for the CMK.</p>
-- Required key: KeyId
-- Required key: Description
-- @return UpdateKeyDescriptionRequest structure as a key-value pair table
function M.UpdateKeyDescriptionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateKeyDescriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateKeyDescriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutKeyPolicyRequest = { ["Policy"] = true, ["PolicyName"] = true, ["KeyId"] = true, ["BypassPolicyLockoutSafetyCheck"] = true, nil }

function asserts.AssertPutKeyPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutKeyPolicyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicyType(struct["Policy"]) end
	if struct["PolicyName"] then asserts.AssertPolicyNameType(struct["PolicyName"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["BypassPolicyLockoutSafetyCheck"] then asserts.AssertBooleanType(struct["BypassPolicyLockoutSafetyCheck"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutKeyPolicyRequest[k], "PutKeyPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutKeyPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [PolicyType] <p>The key policy to attach to the CMK.</p> <p>The key policy must meet the following criteria:</p> <ul> <li> <p>If you don't set <code>BypassPolicyLockoutSafetyCheck</code> to true, the key policy must allow the principal that is making the <code>PutKeyPolicy</code> request to make a subsequent <code>PutKeyPolicy</code> request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section of the <i>AWS Key Management Service Developer Guide</i>.</p> </li> <li> <p>Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before including the new principal in a key policy. The reason for this is that the new principal might not be immediately visible to AWS KMS. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>AWS Identity and Access Management User Guide</i>.</p> </li> </ul> <p>The key policy size limit is 32 kilobytes (32768 bytes).</p>
-- * PolicyName [PolicyNameType] <p>The name of the key policy. The only valid value is <code>default</code>.</p>
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * BypassPolicyLockoutSafetyCheck [BooleanType] <p>A flag to indicate whether to bypass the key policy lockout safety check.</p> <important> <p>Setting this value to true increases the risk that the CMK becomes unmanageable. Do not set this value to true indiscriminately.</p> <p>For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p> </important> <p>Use this parameter only when you intend to prevent the principal that is making the request from making a subsequent <code>PutKeyPolicy</code> request on the CMK.</p> <p>The default value is false.</p>
-- Required key: KeyId
-- Required key: PolicyName
-- Required key: Policy
-- @return PutKeyPolicyRequest structure as a key-value pair table
function M.PutKeyPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutKeyPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["PolicyName"] = args["PolicyName"],
		["KeyId"] = args["KeyId"],
		["BypassPolicyLockoutSafetyCheck"] = args["BypassPolicyLockoutSafetyCheck"],
	}
	asserts.AssertPutKeyPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeGrantRequest = { ["KeyId"] = true, ["GrantId"] = true, nil }

function asserts.AssertRevokeGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeGrantRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["GrantId"], "Expected key GrantId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeGrantRequest[k], "RevokeGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeGrantRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key associated with the grant.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * GrantId [GrantIdType] <p>Identifier of the grant to be revoked.</p>
-- Required key: KeyId
-- Required key: GrantId
-- @return RevokeGrantRequest structure as a key-value pair table
function M.RevokeGrantRequest(args)
	assert(args, "You must provide an argument table when creating RevokeGrantRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["GrantId"] = args["GrantId"],
	}
	asserts.AssertRevokeGrantRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidAliasNameException = { ["message"] = true, nil }

function asserts.AssertInvalidAliasNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAliasNameException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAliasNameException[k], "InvalidAliasNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAliasNameException
-- <p>The request was rejected because the specified alias name is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidAliasNameException structure as a key-value pair table
function M.InvalidAliasNameException(args)
	assert(args, "You must provide an argument table when creating InvalidAliasNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidAliasNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GenerateRandomRequest = { ["NumberOfBytes"] = true, nil }

function asserts.AssertGenerateRandomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateRandomRequest to be of type 'table'")
	if struct["NumberOfBytes"] then asserts.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateRandomRequest[k], "GenerateRandomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateRandomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfBytes [NumberOfBytesType] <p>The length of the byte string.</p>
-- @return GenerateRandomRequest structure as a key-value pair table
function M.GenerateRandomRequest(args)
	assert(args, "You must provide an argument table when creating GenerateRandomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfBytes"] = args["NumberOfBytes"],
	}
	asserts.AssertGenerateRandomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourceTagsRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListResourceTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceTagsRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceTagsRequest[k], "ListResourceTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p> <p>Do not attempt to construct this value. Use only the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 50, inclusive. If you do not include a value, it defaults to 50.</p>
-- Required key: KeyId
-- @return ListResourceTagsRequest structure as a key-value pair table
function M.ListResourceTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListResourceTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["KeyId"] = args["KeyId"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListResourceTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleKeyDeletionRequest = { ["PendingWindowInDays"] = true, ["KeyId"] = true, nil }

function asserts.AssertScheduleKeyDeletionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleKeyDeletionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["PendingWindowInDays"] then asserts.AssertPendingWindowInDaysType(struct["PendingWindowInDays"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleKeyDeletionRequest[k], "ScheduleKeyDeletionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleKeyDeletionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingWindowInDays [PendingWindowInDaysType] <p>The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the customer master key (CMK).</p> <p>This value is optional. If you include a value, it must be between 7 and 30, inclusive. If you do not include a value, it defaults to 30.</p>
-- * KeyId [KeyIdType] <p>The unique identifier of the customer master key (CMK) to delete.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return ScheduleKeyDeletionRequest structure as a key-value pair table
function M.ScheduleKeyDeletionRequest(args)
	assert(args, "You must provide an argument table when creating ScheduleKeyDeletionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingWindowInDays"] = args["PendingWindowInDays"],
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertScheduleKeyDeletionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagException = { ["message"] = true, nil }

function asserts.AssertTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagException[k], "TagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagException
-- <p>The request was rejected because one or more tags are not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return TagException structure as a key-value pair table
function M.TagException(args)
	assert(args, "You must provide an argument table when creating TagException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTagException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableKeyRequest = { ["KeyId"] = true, nil }

function asserts.AssertDisableKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableKeyRequest[k], "DisableKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return DisableKeyRequest structure as a key-value pair table
function M.DisableKeyRequest(args)
	assert(args, "You must provide an argument table when creating DisableKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertDisableKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGrantRequest = { ["Operations"] = true, ["KeyId"] = true, ["Name"] = true, ["RetiringPrincipal"] = true, ["GranteePrincipal"] = true, ["GrantTokens"] = true, ["Constraints"] = true, nil }

function asserts.AssertCreateGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrantRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["GranteePrincipal"], "Expected key GranteePrincipal to exist in table")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then asserts.AssertGrantOperationList(struct["Operations"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertGrantNameType(struct["Name"]) end
	if struct["RetiringPrincipal"] then asserts.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	if struct["GranteePrincipal"] then asserts.AssertPrincipalIdType(struct["GranteePrincipal"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["Constraints"] then asserts.AssertGrantConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGrantRequest[k], "CreateGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrantRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operations [GrantOperationList] <p>A list of operations that the grant permits.</p>
-- * KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) that the grant applies to.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * Name [GrantNameType] <p>A friendly name for identifying the grant. Use this value to prevent the unintended creation of duplicate grants when retrying this request.</p> <p>When this value is absent, all <code>CreateGrant</code> requests result in a new grant with a unique <code>GrantId</code> even if all the supplied parameters are identical. This can result in unintended duplicates when you retry the <code>CreateGrant</code> request.</p> <p>When this value is present, you can retry a <code>CreateGrant</code> request with identical parameters; if the grant already exists, the original <code>GrantId</code> is returned without creating a new grant. Note that the returned grant token is unique with every <code>CreateGrant</code> request, even when a duplicate <code>GrantId</code> is returned. All grant tokens obtained in this way can be used interchangeably.</p>
-- * RetiringPrincipal [PrincipalIdType] <p>The principal that is given permission to retire the grant by using <a>RetireGrant</a> operation.</p> <p>To specify the principal, use the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the <i>AWS General Reference</i>.</p>
-- * GranteePrincipal [PrincipalIdType] <p>The principal that is given permission to perform the operations that the grant permits.</p> <p>To specify the principal, use the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the <i>AWS General Reference</i>.</p>
-- * GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * Constraints [GrantConstraints] <p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- Required key: KeyId
-- Required key: GranteePrincipal
-- Required key: Operations
-- @return CreateGrantRequest structure as a key-value pair table
function M.CreateGrantRequest(args)
	assert(args, "You must provide an argument table when creating CreateGrantRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operations"] = args["Operations"],
		["KeyId"] = args["KeyId"],
		["Name"] = args["Name"],
		["RetiringPrincipal"] = args["RetiringPrincipal"],
		["GranteePrincipal"] = args["GranteePrincipal"],
		["GrantTokens"] = args["GrantTokens"],
		["Constraints"] = args["Constraints"],
	}
	asserts.AssertCreateGrantRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExpiredImportTokenException = { ["message"] = true, nil }

function asserts.AssertExpiredImportTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredImportTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredImportTokenException[k], "ExpiredImportTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredImportTokenException
-- <p>The request was rejected because the provided import token is expired. Use <a>GetParametersForImport</a> to get a new import token and public key, use the new public key to encrypt the key material, and then try the request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return ExpiredImportTokenException structure as a key-value pair table
function M.ExpiredImportTokenException(args)
	assert(args, "You must provide an argument table when creating ExpiredImportTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExpiredImportTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetKeyRotationStatusRequest = { ["KeyId"] = true, nil }

function asserts.AssertGetKeyRotationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyRotationStatusRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyRotationStatusRequest[k], "GetKeyRotationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyRotationStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return GetKeyRotationStatusRequest structure as a key-value pair table
function M.GetKeyRotationStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetKeyRotationStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertGetKeyRotationStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetParametersForImportResponse = { ["ParametersValidTo"] = true, ["PublicKey"] = true, ["KeyId"] = true, ["ImportToken"] = true, nil }

function asserts.AssertGetParametersForImportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersForImportResponse to be of type 'table'")
	if struct["ParametersValidTo"] then asserts.AssertDateType(struct["ParametersValidTo"]) end
	if struct["PublicKey"] then asserts.AssertPlaintextType(struct["PublicKey"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["ImportToken"] then asserts.AssertCiphertextType(struct["ImportToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersForImportResponse[k], "GetParametersForImportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersForImportResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParametersValidTo [DateType] <p>The time at which the import token and public key are no longer valid. After this time, you cannot use them to make an <a>ImportKeyMaterial</a> request and you must send another <code>GetParametersForImport</code> request to get new ones.</p>
-- * PublicKey [PlaintextType] <p>The public key to use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>.</p>
-- * KeyId [KeyIdType] <p>The identifier of the CMK to use in a subsequent <a>ImportKeyMaterial</a> request. This is the same CMK specified in the <code>GetParametersForImport</code> request.</p>
-- * ImportToken [CiphertextType] <p>The import token to send in a subsequent <a>ImportKeyMaterial</a> request.</p>
-- @return GetParametersForImportResponse structure as a key-value pair table
function M.GetParametersForImportResponse(args)
	assert(args, "You must provide an argument table when creating GetParametersForImportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParametersValidTo"] = args["ParametersValidTo"],
		["PublicKey"] = args["PublicKey"],
		["KeyId"] = args["KeyId"],
		["ImportToken"] = args["ImportToken"],
	}
	asserts.AssertGetParametersForImportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesRequest[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- * KeyId [KeyIdType] <p>Lists only aliases that refer to the specified CMK. The value of this parameter can be the ID or Amazon Resource Name (ARN) of a CMK in the caller's account and region. You cannot use an alias name or alias ARN in this value.</p> <p>This parameter is optional. If you omit it, <code>ListAliases</code> returns all aliases in the account and region.</p>
-- * Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
-- @return ListAliasesRequest structure as a key-value pair table
function M.ListAliasesRequest(args)
	assert(args, "You must provide an argument table when creating ListAliasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["KeyId"] = args["KeyId"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListAliasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidCiphertextException = { ["message"] = true, nil }

function asserts.AssertInvalidCiphertextException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCiphertextException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCiphertextException[k], "InvalidCiphertextException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCiphertextException
-- <p>The request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidCiphertextException structure as a key-value pair table
function M.InvalidCiphertextException(args)
	assert(args, "You must provide an argument table when creating InvalidCiphertextException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidCiphertextException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["KeyId"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the CMK you are tagging.</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- * Tags [TagList] <p>One or more tags. Each tag consists of a tag key and a tag value.</p>
-- Required key: KeyId
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GrantListEntry = { ["Operations"] = true, ["KeyId"] = true, ["Name"] = true, ["RetiringPrincipal"] = true, ["GranteePrincipal"] = true, ["GrantId"] = true, ["IssuingAccount"] = true, ["CreationDate"] = true, ["Constraints"] = true, nil }

function asserts.AssertGrantListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantListEntry to be of type 'table'")
	if struct["Operations"] then asserts.AssertGrantOperationList(struct["Operations"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertGrantNameType(struct["Name"]) end
	if struct["RetiringPrincipal"] then asserts.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	if struct["GranteePrincipal"] then asserts.AssertPrincipalIdType(struct["GranteePrincipal"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	if struct["IssuingAccount"] then asserts.AssertPrincipalIdType(struct["IssuingAccount"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["Constraints"] then asserts.AssertGrantConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrantListEntry[k], "GrantListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantListEntry
-- <p>Contains information about an entry in a list of grants.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operations [GrantOperationList] <p>The list of operations permitted by the grant.</p>
-- * KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) to which the grant applies.</p>
-- * Name [GrantNameType] <p>The friendly name that identifies the grant. If a name was provided in the <a>CreateGrant</a> request, that name is returned. Otherwise this value is null.</p>
-- * RetiringPrincipal [PrincipalIdType] <p>The principal that can retire the grant.</p>
-- * GranteePrincipal [PrincipalIdType] <p>The principal that receives the grant's permissions.</p>
-- * GrantId [GrantIdType] <p>The unique identifier for the grant.</p>
-- * IssuingAccount [PrincipalIdType] <p>The AWS account under which the grant was issued.</p>
-- * CreationDate [DateType] <p>The date and time when the grant was created.</p>
-- * Constraints [GrantConstraints] <p>A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows.</p>
-- @return GrantListEntry structure as a key-value pair table
function M.GrantListEntry(args)
	assert(args, "You must provide an argument table when creating GrantListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operations"] = args["Operations"],
		["KeyId"] = args["KeyId"],
		["Name"] = args["Name"],
		["RetiringPrincipal"] = args["RetiringPrincipal"],
		["GranteePrincipal"] = args["GranteePrincipal"],
		["GrantId"] = args["GrantId"],
		["IssuingAccount"] = args["IssuingAccount"],
		["CreationDate"] = args["CreationDate"],
		["Constraints"] = args["Constraints"],
	}
	asserts.AssertGrantListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGrantResponse = { ["GrantToken"] = true, ["GrantId"] = true, nil }

function asserts.AssertCreateGrantResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrantResponse to be of type 'table'")
	if struct["GrantToken"] then asserts.AssertGrantTokenType(struct["GrantToken"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGrantResponse[k], "CreateGrantResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrantResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrantToken [GrantTokenType] <p>The grant token.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- * GrantId [GrantIdType] <p>The unique identifier for the grant.</p> <p>You can use the <code>GrantId</code> in a subsequent <a>RetireGrant</a> or <a>RevokeGrant</a> operation.</p>
-- @return CreateGrantResponse structure as a key-value pair table
function M.CreateGrantResponse(args)
	assert(args, "You must provide an argument table when creating CreateGrantResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrantToken"] = args["GrantToken"],
		["GrantId"] = args["GrantId"],
	}
	asserts.AssertCreateGrantResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGrantsResponse = { ["NextMarker"] = true, ["Grants"] = true, ["Truncated"] = true, nil }

function asserts.AssertListGrantsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGrantsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Grants"] then asserts.AssertGrantList(struct["Grants"]) end
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGrantsResponse[k], "ListGrantsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGrantsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- * Grants [GrantList] <p>A list of grants.</p>
-- * Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- @return ListGrantsResponse structure as a key-value pair table
function M.ListGrantsResponse(args)
	assert(args, "You must provide an argument table when creating ListGrantsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Grants"] = args["Grants"],
		["Truncated"] = args["Truncated"],
	}
	asserts.AssertListGrantsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSInternalException = { ["message"] = true, nil }

function asserts.AssertKMSInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInternalException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSInternalException[k], "KMSInternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInternalException
-- <p>The request was rejected because an internal exception occurred. The request can be retried.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return KMSInternalException structure as a key-value pair table
function M.KMSInternalException(args)
	assert(args, "You must provide an argument table when creating KMSInternalException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKMSInternalException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeKeyResponse = { ["KeyMetadata"] = true, nil }

function asserts.AssertDescribeKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyResponse to be of type 'table'")
	if struct["KeyMetadata"] then asserts.AssertKeyMetadata(struct["KeyMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeKeyResponse[k], "DescribeKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyMetadata [KeyMetadata] <p>Metadata associated with the key.</p>
-- @return DescribeKeyResponse structure as a key-value pair table
function M.DescribeKeyResponse(args)
	assert(args, "You must provide an argument table when creating DescribeKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyMetadata"] = args["KeyMetadata"],
	}
	asserts.AssertDescribeKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidImportTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidImportTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidImportTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidImportTokenException[k], "InvalidImportTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidImportTokenException
-- <p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessageType] 
-- @return InvalidImportTokenException structure as a key-value pair table
function M.InvalidImportTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidImportTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidImportTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableKeyRotationRequest = { ["KeyId"] = true, nil }

function asserts.AssertDisableKeyRotationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableKeyRotationRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableKeyRotationRequest[k], "DisableKeyRotationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableKeyRotationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK).</p> <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p> <p>For example:</p> <ul> <li> <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul> <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required key: KeyId
-- @return DisableKeyRotationRequest structure as a key-value pair table
function M.DisableKeyRotationRequest(args)
	assert(args, "You must provide an argument table when creating DisableKeyRotationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyId"] = args["KeyId"],
	}
	asserts.AssertDisableKeyRotationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertTagKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKeyType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKeyType(str)
	asserts.AssertTagKeyType(str)
	return str
end

function asserts.AssertDataKeySpec(str)
	assert(str)
	assert(type(str) == "string", "Expected DataKeySpec to be of type 'string'")
end

--  
function M.DataKeySpec(str)
	asserts.AssertDataKeySpec(str)
	return str
end

function asserts.AssertEncryptionContextValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionContextValue to be of type 'string'")
end

--  
function M.EncryptionContextValue(str)
	asserts.AssertEncryptionContextValue(str)
	return str
end

function asserts.AssertKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyIdType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeyIdType(str)
	asserts.AssertKeyIdType(str)
	return str
end

function asserts.AssertAWSAccountIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountIdType to be of type 'string'")
end

--  
function M.AWSAccountIdType(str)
	asserts.AssertAWSAccountIdType(str)
	return str
end

function asserts.AssertKeyState(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyState to be of type 'string'")
end

--  
function M.KeyState(str)
	asserts.AssertKeyState(str)
	return str
end

function asserts.AssertAlgorithmSpec(str)
	assert(str)
	assert(type(str) == "string", "Expected AlgorithmSpec to be of type 'string'")
end

--  
function M.AlgorithmSpec(str)
	asserts.AssertAlgorithmSpec(str)
	return str
end

function asserts.AssertPrincipalIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalIdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrincipalIdType(str)
	asserts.AssertPrincipalIdType(str)
	return str
end

function asserts.AssertGrantNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantNameType(str)
	asserts.AssertGrantNameType(str)
	return str
end

function asserts.AssertWrappingKeySpec(str)
	assert(str)
	assert(type(str) == "string", "Expected WrappingKeySpec to be of type 'string'")
end

--  
function M.WrappingKeySpec(str)
	asserts.AssertWrappingKeySpec(str)
	return str
end

function asserts.AssertGrantIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantIdType(str)
	asserts.AssertGrantIdType(str)
	return str
end

function asserts.AssertTagValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValueType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValueType(str)
	asserts.AssertTagValueType(str)
	return str
end

function asserts.AssertGrantOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantOperation to be of type 'string'")
end

--  
function M.GrantOperation(str)
	asserts.AssertGrantOperation(str)
	return str
end

function asserts.AssertDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionType to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.DescriptionType(str)
	asserts.AssertDescriptionType(str)
	return str
end

function asserts.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
	assert(#str <= 131072, "Expected string to be max 131072 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyType(str)
	asserts.AssertPolicyType(str)
	return str
end

function asserts.AssertGrantTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantTokenType to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantTokenType(str)
	asserts.AssertGrantTokenType(str)
	return str
end

function asserts.AssertErrorMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessageType to be of type 'string'")
end

--  
function M.ErrorMessageType(str)
	asserts.AssertErrorMessageType(str)
	return str
end

function asserts.AssertMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MarkerType(str)
	asserts.AssertMarkerType(str)
	return str
end

function asserts.AssertArnType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ArnType(str)
	asserts.AssertArnType(str)
	return str
end

function asserts.AssertKeyManagerType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyManagerType to be of type 'string'")
end

--  
function M.KeyManagerType(str)
	asserts.AssertKeyManagerType(str)
	return str
end

function asserts.AssertPolicyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyNameType(str)
	asserts.AssertPolicyNameType(str)
	return str
end

function asserts.AssertKeyUsageType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyUsageType to be of type 'string'")
end

--  
function M.KeyUsageType(str)
	asserts.AssertKeyUsageType(str)
	return str
end

function asserts.AssertOriginType(str)
	assert(str)
	assert(type(str) == "string", "Expected OriginType to be of type 'string'")
end

--  
function M.OriginType(str)
	asserts.AssertOriginType(str)
	return str
end

function asserts.AssertEncryptionContextKey(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionContextKey to be of type 'string'")
end

--  
function M.EncryptionContextKey(str)
	asserts.AssertEncryptionContextKey(str)
	return str
end

function asserts.AssertExpirationModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpirationModelType to be of type 'string'")
end

--  
function M.ExpirationModelType(str)
	asserts.AssertExpirationModelType(str)
	return str
end

function asserts.AssertAliasNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AliasNameType(str)
	asserts.AssertAliasNameType(str)
	return str
end

function asserts.AssertLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitType(integer)
	asserts.AssertLimitType(integer)
	return integer
end

function asserts.AssertNumberOfBytesType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfBytesType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1024, "Expected integer to be max 1024")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumberOfBytesType(integer)
	asserts.AssertNumberOfBytesType(integer)
	return integer
end

function asserts.AssertPendingWindowInDaysType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PendingWindowInDaysType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 365, "Expected integer to be max 365")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PendingWindowInDaysType(integer)
	asserts.AssertPendingWindowInDaysType(integer)
	return integer
end

function asserts.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	asserts.AssertBooleanType(boolean)
	return boolean
end

function asserts.AssertEncryptionContextType(map)
	assert(map)
	assert(type(map) == "table", "Expected EncryptionContextType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertEncryptionContextKey(k)
		asserts.AssertEncryptionContextValue(v)
	end
end

function M.EncryptionContextType(map)
	asserts.AssertEncryptionContextType(map)
	return map
end

function asserts.AssertDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateType to be of type 'string'")
end

function M.DateType(timestamp)
	asserts.AssertDateType(timestamp)
	return timestamp
end

function asserts.AssertCiphertextType(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected CiphertextType to be of type 'string'")
	assert(#blob <= 6144, "Expected blob to be max 6144")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CiphertextType(blob)
	asserts.AssertCiphertextType(blob)
	return blob
end

function asserts.AssertPlaintextType(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected PlaintextType to be of type 'string'")
	assert(#blob <= 4096, "Expected blob to be max 4096")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.PlaintextType(blob)
	asserts.AssertPlaintextType(blob)
	return blob
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKeyType(v)
	end
end

--  
-- List of TagKeyType objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAliasListEntry(v)
	end
end

--  
-- List of AliasListEntry objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end

function asserts.AssertGrantList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGrantListEntry(v)
	end
end

--  
-- List of GrantListEntry objects
function M.GrantList(list)
	asserts.AssertGrantList(list)
	return list
end

function asserts.AssertGrantTokenList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantTokenList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertGrantTokenType(v)
	end
end

--  
-- List of GrantTokenType objects
function M.GrantTokenList(list)
	asserts.AssertGrantTokenList(list)
	return list
end

function asserts.AssertPolicyNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyNameType(v)
	end
end

--  
-- List of PolicyNameType objects
function M.PolicyNameList(list)
	asserts.AssertPolicyNameList(list)
	return list
end

function asserts.AssertGrantOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantOperationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGrantOperation(v)
	end
end

--  
-- List of GrantOperation objects
function M.GrantOperationList(list)
	asserts.AssertGrantOperationList(list)
	return list
end

function asserts.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyListEntry(v)
	end
end

--  
-- List of KeyListEntry objects
function M.KeyList(list)
	asserts.AssertKeyList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call Encrypt asynchronously, invoking a callback when done
-- @param EncryptRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EncryptAsync(EncryptRequest, cb)
	assert(EncryptRequest, "You must provide a EncryptRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.Encrypt",
	}
	for header,value in pairs(EncryptRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EncryptRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Encrypt synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EncryptRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EncryptSync(EncryptRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EncryptAsync(EncryptRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Decrypt asynchronously, invoking a callback when done
-- @param DecryptRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DecryptAsync(DecryptRequest, cb)
	assert(DecryptRequest, "You must provide a DecryptRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.Decrypt",
	}
	for header,value in pairs(DecryptRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DecryptRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Decrypt synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DecryptRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DecryptSync(DecryptRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecryptAsync(DecryptRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAlias asynchronously, invoking a callback when done
-- @param UpdateAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAliasAsync(UpdateAliasRequest, cb)
	assert(UpdateAliasRequest, "You must provide a UpdateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.UpdateAlias",
	}
	for header,value in pairs(UpdateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAliasSync(UpdateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAliasAsync(UpdateAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportKeyMaterial asynchronously, invoking a callback when done
-- @param ImportKeyMaterialRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportKeyMaterialAsync(ImportKeyMaterialRequest, cb)
	assert(ImportKeyMaterialRequest, "You must provide a ImportKeyMaterialRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ImportKeyMaterial",
	}
	for header,value in pairs(ImportKeyMaterialRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportKeyMaterialRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportKeyMaterial synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportKeyMaterialRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ImportKeyMaterialSync(ImportKeyMaterialRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportKeyMaterialAsync(ImportKeyMaterialRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableKey asynchronously, invoking a callback when done
-- @param DisableKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableKeyAsync(DisableKeyRequest, cb)
	assert(DisableKeyRequest, "You must provide a DisableKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.DisableKey",
	}
	for header,value in pairs(DisableKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableKeySync(DisableKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableKeyAsync(DisableKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GenerateDataKeyWithoutPlaintext asynchronously, invoking a callback when done
-- @param GenerateDataKeyWithoutPlaintextRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GenerateDataKeyWithoutPlaintextAsync(GenerateDataKeyWithoutPlaintextRequest, cb)
	assert(GenerateDataKeyWithoutPlaintextRequest, "You must provide a GenerateDataKeyWithoutPlaintextRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.GenerateDataKeyWithoutPlaintext",
	}
	for header,value in pairs(GenerateDataKeyWithoutPlaintextRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GenerateDataKeyWithoutPlaintextRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GenerateDataKeyWithoutPlaintext synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GenerateDataKeyWithoutPlaintextRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GenerateDataKeyWithoutPlaintextSync(GenerateDataKeyWithoutPlaintextRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateDataKeyWithoutPlaintextAsync(GenerateDataKeyWithoutPlaintextRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GenerateDataKey asynchronously, invoking a callback when done
-- @param GenerateDataKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GenerateDataKeyAsync(GenerateDataKeyRequest, cb)
	assert(GenerateDataKeyRequest, "You must provide a GenerateDataKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.GenerateDataKey",
	}
	for header,value in pairs(GenerateDataKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GenerateDataKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GenerateDataKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GenerateDataKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GenerateDataKeySync(GenerateDataKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateDataKeyAsync(GenerateDataKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourceTags asynchronously, invoking a callback when done
-- @param ListResourceTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResourceTagsAsync(ListResourceTagsRequest, cb)
	assert(ListResourceTagsRequest, "You must provide a ListResourceTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ListResourceTags",
	}
	for header,value in pairs(ListResourceTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourceTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResourceTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourceTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListResourceTagsSync(ListResourceTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourceTagsAsync(ListResourceTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAliases asynchronously, invoking a callback when done
-- @param ListAliasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ListAliases",
	}
	for header,value in pairs(ListAliasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAliasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAliasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAliasesSync(ListAliasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAliasesAsync(ListAliasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelKeyDeletion asynchronously, invoking a callback when done
-- @param CancelKeyDeletionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelKeyDeletionAsync(CancelKeyDeletionRequest, cb)
	assert(CancelKeyDeletionRequest, "You must provide a CancelKeyDeletionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.CancelKeyDeletion",
	}
	for header,value in pairs(CancelKeyDeletionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelKeyDeletionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelKeyDeletion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelKeyDeletionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelKeyDeletionSync(CancelKeyDeletionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelKeyDeletionAsync(CancelKeyDeletionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetKeyRotationStatus asynchronously, invoking a callback when done
-- @param GetKeyRotationStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetKeyRotationStatusAsync(GetKeyRotationStatusRequest, cb)
	assert(GetKeyRotationStatusRequest, "You must provide a GetKeyRotationStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.GetKeyRotationStatus",
	}
	for header,value in pairs(GetKeyRotationStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetKeyRotationStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetKeyRotationStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetKeyRotationStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetKeyRotationStatusSync(GetKeyRotationStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyRotationStatusAsync(GetKeyRotationStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListKeyPolicies asynchronously, invoking a callback when done
-- @param ListKeyPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListKeyPoliciesAsync(ListKeyPoliciesRequest, cb)
	assert(ListKeyPoliciesRequest, "You must provide a ListKeyPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ListKeyPolicies",
	}
	for header,value in pairs(ListKeyPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListKeyPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListKeyPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListKeyPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListKeyPoliciesSync(ListKeyPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListKeyPoliciesAsync(ListKeyPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlias asynchronously, invoking a callback when done
-- @param DeleteAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.DeleteAlias",
	}
	for header,value in pairs(DeleteAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAliasSync(DeleteAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAliasAsync(DeleteAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RetireGrant asynchronously, invoking a callback when done
-- @param RetireGrantRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RetireGrantAsync(RetireGrantRequest, cb)
	assert(RetireGrantRequest, "You must provide a RetireGrantRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.RetireGrant",
	}
	for header,value in pairs(RetireGrantRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RetireGrantRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RetireGrant synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RetireGrantRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RetireGrantSync(RetireGrantRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RetireGrantAsync(RetireGrantRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeKey asynchronously, invoking a callback when done
-- @param DescribeKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeKeyAsync(DescribeKeyRequest, cb)
	assert(DescribeKeyRequest, "You must provide a DescribeKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.DescribeKey",
	}
	for header,value in pairs(DescribeKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeKeySync(DescribeKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeKeyAsync(DescribeKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListKeys asynchronously, invoking a callback when done
-- @param ListKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListKeysAsync(ListKeysRequest, cb)
	assert(ListKeysRequest, "You must provide a ListKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ListKeys",
	}
	for header,value in pairs(ListKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListKeysSync(ListKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListKeysAsync(ListKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GenerateRandom asynchronously, invoking a callback when done
-- @param GenerateRandomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GenerateRandomAsync(GenerateRandomRequest, cb)
	assert(GenerateRandomRequest, "You must provide a GenerateRandomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.GenerateRandom",
	}
	for header,value in pairs(GenerateRandomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GenerateRandomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GenerateRandom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GenerateRandomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GenerateRandomSync(GenerateRandomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateRandomAsync(GenerateRandomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetKeyPolicy asynchronously, invoking a callback when done
-- @param GetKeyPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetKeyPolicyAsync(GetKeyPolicyRequest, cb)
	assert(GetKeyPolicyRequest, "You must provide a GetKeyPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.GetKeyPolicy",
	}
	for header,value in pairs(GetKeyPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetKeyPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetKeyPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetKeyPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetKeyPolicySync(GetKeyPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetKeyPolicyAsync(GetKeyPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGrant asynchronously, invoking a callback when done
-- @param CreateGrantRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateGrantAsync(CreateGrantRequest, cb)
	assert(CreateGrantRequest, "You must provide a CreateGrantRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.CreateGrant",
	}
	for header,value in pairs(CreateGrantRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateGrantRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGrant synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGrantRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateGrantSync(CreateGrantRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGrantAsync(CreateGrantRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateKey asynchronously, invoking a callback when done
-- @param CreateKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateKeyAsync(CreateKeyRequest, cb)
	assert(CreateKeyRequest, "You must provide a CreateKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.CreateKey",
	}
	for header,value in pairs(CreateKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateKeySync(CreateKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateKeyAsync(CreateKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReEncrypt asynchronously, invoking a callback when done
-- @param ReEncryptRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReEncryptAsync(ReEncryptRequest, cb)
	assert(ReEncryptRequest, "You must provide a ReEncryptRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ReEncrypt",
	}
	for header,value in pairs(ReEncryptRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ReEncryptRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReEncrypt synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReEncryptRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ReEncryptSync(ReEncryptRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReEncryptAsync(ReEncryptRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetParametersForImport asynchronously, invoking a callback when done
-- @param GetParametersForImportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetParametersForImportAsync(GetParametersForImportRequest, cb)
	assert(GetParametersForImportRequest, "You must provide a GetParametersForImportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.GetParametersForImport",
	}
	for header,value in pairs(GetParametersForImportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetParametersForImportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetParametersForImport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetParametersForImportRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetParametersForImportSync(GetParametersForImportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetParametersForImportAsync(GetParametersForImportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableKeyRotation asynchronously, invoking a callback when done
-- @param DisableKeyRotationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableKeyRotationAsync(DisableKeyRotationRequest, cb)
	assert(DisableKeyRotationRequest, "You must provide a DisableKeyRotationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.DisableKeyRotation",
	}
	for header,value in pairs(DisableKeyRotationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableKeyRotationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableKeyRotation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableKeyRotationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableKeyRotationSync(DisableKeyRotationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableKeyRotationAsync(DisableKeyRotationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRetirableGrants asynchronously, invoking a callback when done
-- @param ListRetirableGrantsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRetirableGrantsAsync(ListRetirableGrantsRequest, cb)
	assert(ListRetirableGrantsRequest, "You must provide a ListRetirableGrantsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ListRetirableGrants",
	}
	for header,value in pairs(ListRetirableGrantsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRetirableGrantsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRetirableGrants synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRetirableGrantsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRetirableGrantsSync(ListRetirableGrantsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRetirableGrantsAsync(ListRetirableGrantsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ScheduleKeyDeletion asynchronously, invoking a callback when done
-- @param ScheduleKeyDeletionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ScheduleKeyDeletionAsync(ScheduleKeyDeletionRequest, cb)
	assert(ScheduleKeyDeletionRequest, "You must provide a ScheduleKeyDeletionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ScheduleKeyDeletion",
	}
	for header,value in pairs(ScheduleKeyDeletionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ScheduleKeyDeletionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ScheduleKeyDeletion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ScheduleKeyDeletionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ScheduleKeyDeletionSync(ScheduleKeyDeletionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ScheduleKeyDeletionAsync(ScheduleKeyDeletionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.CreateAlias",
	}
	for header,value in pairs(CreateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAliasSync(CreateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(CreateAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableKeyRotation asynchronously, invoking a callback when done
-- @param EnableKeyRotationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableKeyRotationAsync(EnableKeyRotationRequest, cb)
	assert(EnableKeyRotationRequest, "You must provide a EnableKeyRotationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.EnableKeyRotation",
	}
	for header,value in pairs(EnableKeyRotationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableKeyRotationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableKeyRotation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableKeyRotationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableKeyRotationSync(EnableKeyRotationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableKeyRotationAsync(EnableKeyRotationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGrants asynchronously, invoking a callback when done
-- @param ListGrantsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGrantsAsync(ListGrantsRequest, cb)
	assert(ListGrantsRequest, "You must provide a ListGrantsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.ListGrants",
	}
	for header,value in pairs(ListGrantsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGrantsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGrants synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGrantsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGrantsSync(ListGrantsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGrantsAsync(ListGrantsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableKey asynchronously, invoking a callback when done
-- @param EnableKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableKeyAsync(EnableKeyRequest, cb)
	assert(EnableKeyRequest, "You must provide a EnableKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.EnableKey",
	}
	for header,value in pairs(EnableKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableKeySync(EnableKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableKeyAsync(EnableKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteImportedKeyMaterial asynchronously, invoking a callback when done
-- @param DeleteImportedKeyMaterialRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteImportedKeyMaterialAsync(DeleteImportedKeyMaterialRequest, cb)
	assert(DeleteImportedKeyMaterialRequest, "You must provide a DeleteImportedKeyMaterialRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.DeleteImportedKeyMaterial",
	}
	for header,value in pairs(DeleteImportedKeyMaterialRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteImportedKeyMaterialRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteImportedKeyMaterial synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteImportedKeyMaterialRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteImportedKeyMaterialSync(DeleteImportedKeyMaterialRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteImportedKeyMaterialAsync(DeleteImportedKeyMaterialRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateKeyDescription asynchronously, invoking a callback when done
-- @param UpdateKeyDescriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateKeyDescriptionAsync(UpdateKeyDescriptionRequest, cb)
	assert(UpdateKeyDescriptionRequest, "You must provide a UpdateKeyDescriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.UpdateKeyDescription",
	}
	for header,value in pairs(UpdateKeyDescriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateKeyDescriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateKeyDescription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateKeyDescriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateKeyDescriptionSync(UpdateKeyDescriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateKeyDescriptionAsync(UpdateKeyDescriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeGrant asynchronously, invoking a callback when done
-- @param RevokeGrantRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeGrantAsync(RevokeGrantRequest, cb)
	assert(RevokeGrantRequest, "You must provide a RevokeGrantRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.RevokeGrant",
	}
	for header,value in pairs(RevokeGrantRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeGrantRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeGrant synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeGrantRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RevokeGrantSync(RevokeGrantRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeGrantAsync(RevokeGrantRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutKeyPolicy asynchronously, invoking a callback when done
-- @param PutKeyPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutKeyPolicyAsync(PutKeyPolicyRequest, cb)
	assert(PutKeyPolicyRequest, "You must provide a PutKeyPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "TrentService.PutKeyPolicy",
	}
	for header,value in pairs(PutKeyPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutKeyPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutKeyPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutKeyPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutKeyPolicySync(PutKeyPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutKeyPolicyAsync(PutKeyPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
