--- GENERATED CODE - DO NOT MODIFY
-- AWS Secrets Manager (secretsmanager-2017-10-17)

local M = {}

M.metadata = {
	api_version = "2017-10-17",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "secretsmanager",
	service_abbreviation = "",
	service_full_name = "AWS Secrets Manager",
	signature_version = "v4",
	target_prefix = "secretsmanager",
	timestamp_format = "",
	global_endpoint = "",
	uid = "secretsmanager-2017-10-17",
}

local keys = {}
local asserts = {}

keys.RestoreSecretResponse = { ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertRestoreSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreSecretResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreSecretResponse[k], "RestoreSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [SecretNameType] <p>The friendly name of the secret that was restored.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret that was restored.</p>
-- @return RestoreSecretResponse structure as a key-value pair table
function M.RestoreSecretResponse(args)
	assert(args, "You must provide an argument table when creating RestoreSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertRestoreSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSecretResponse = { ["DeletedDate"] = true, ["RotationRules"] = true, ["Name"] = true, ["VersionIdsToStages"] = true, ["Tags"] = true, ["RotationEnabled"] = true, ["LastChangedDate"] = true, ["LastRotatedDate"] = true, ["KmsKeyId"] = true, ["RotationLambdaARN"] = true, ["LastAccessedDate"] = true, ["ARN"] = true, ["Description"] = true, nil }

function asserts.AssertDescribeSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSecretResponse to be of type 'table'")
	if struct["DeletedDate"] then asserts.AssertDeletedDateType(struct["DeletedDate"]) end
	if struct["RotationRules"] then asserts.AssertRotationRulesType(struct["RotationRules"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["VersionIdsToStages"] then asserts.AssertSecretVersionsToStagesMapType(struct["VersionIdsToStages"]) end
	if struct["Tags"] then asserts.AssertTagListType(struct["Tags"]) end
	if struct["RotationEnabled"] then asserts.AssertRotationEnabledType(struct["RotationEnabled"]) end
	if struct["LastChangedDate"] then asserts.AssertLastChangedDateType(struct["LastChangedDate"]) end
	if struct["LastRotatedDate"] then asserts.AssertLastRotatedDateType(struct["LastRotatedDate"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyIdType(struct["KmsKeyId"]) end
	if struct["RotationLambdaARN"] then asserts.AssertRotationLambdaARNType(struct["RotationLambdaARN"]) end
	if struct["LastAccessedDate"] then asserts.AssertLastAccessedDateType(struct["LastAccessedDate"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSecretResponse[k], "DescribeSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletedDate [DeletedDateType] <p>This value exists if the secret is scheduled for deletion. Some time after the specified date and time, Secrets Manager deletes the secret and all of its versions.</p> <p>If a secret is scheduled for deletion, then its details, including the encrypted secret information, is not accessible. To cancel a scheduled deletion and restore access, use <a>RestoreSecret</a>.</p>
-- * RotationRules [RotationRulesType] <p>A structure that contains the rotation configuration for this secret.</p>
-- * Name [SecretNameType] <p>The user-provided friendly name of the secret.</p>
-- * VersionIdsToStages [SecretVersionsToStagesMapType] <p>A list of all of the currently assigned <code>VersionStage</code> staging labels and the <code>VersionId</code> that each is attached to. Staging labels are used to keep track of the different versions during the rotation process.</p> <note> <p>A version that does not have any staging labels attached is considered deprecated and subject to deletion. Such versions are not included in this list.</p> </note>
-- * Tags [TagListType] <p>The list of user-defined tags that are associated with the secret. To add tags to a secret, use <a>TagResource</a>. To remove tags, use <a>UntagResource</a>.</p>
-- * RotationEnabled [RotationEnabledType] <p>Specifies whether automatic rotation is enabled for this secret.</p> <p>To enable rotation, use <a>RotateSecret</a> with <code>AutomaticallyRotateAfterDays</code> set to a value greater than 0. To disable rotation, use <a>CancelRotateSecret</a>.</p>
-- * LastChangedDate [LastChangedDateType] <p>The last date and time that this secret was modified in any way.</p>
-- * LastRotatedDate [LastRotatedDateType] <p>The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret has never rotated.</p>
-- * KmsKeyId [KmsKeyIdType] <p>The ARN or alias of the AWS KMS customer master key (CMK) that's used to encrypt the <code>SecretString</code> or <code>SecretBinary</code> fields in each version of the secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the default AWS KMS CMK (the one named <code>awssecretsmanager</code>) for this account.</p>
-- * RotationLambdaARN [RotationLambdaARNType] <p>The ARN of a Lambda function that's invoked by Secrets Manager to rotate the secret either automatically per the schedule or manually by a call to <code>RotateSecret</code>.</p>
-- * LastAccessedDate [LastAccessedDateType] <p>The last date that this secret was accessed. This value is truncated to midnight of the date and therefore shows only the date, not the time.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret.</p>
-- * Description [DescriptionType] <p>The user-provided description of the secret.</p>
-- @return DescribeSecretResponse structure as a key-value pair table
function M.DescribeSecretResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletedDate"] = args["DeletedDate"],
		["RotationRules"] = args["RotationRules"],
		["Name"] = args["Name"],
		["VersionIdsToStages"] = args["VersionIdsToStages"],
		["Tags"] = args["Tags"],
		["RotationEnabled"] = args["RotationEnabled"],
		["LastChangedDate"] = args["LastChangedDate"],
		["LastRotatedDate"] = args["LastRotatedDate"],
		["KmsKeyId"] = args["KmsKeyId"],
		["RotationLambdaARN"] = args["RotationLambdaARN"],
		["LastAccessedDate"] = args["LastAccessedDate"],
		["ARN"] = args["ARN"],
		["Description"] = args["Description"],
	}
	asserts.AssertDescribeSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecretVersionsListEntry = { ["VersionId"] = true, ["VersionStages"] = true, ["LastAccessedDate"] = true, ["CreatedDate"] = true, nil }

function asserts.AssertSecretVersionsListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecretVersionsListEntry to be of type 'table'")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["VersionStages"] then asserts.AssertSecretVersionStagesType(struct["VersionStages"]) end
	if struct["LastAccessedDate"] then asserts.AssertLastAccessedDateType(struct["LastAccessedDate"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDateType(struct["CreatedDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecretVersionsListEntry[k], "SecretVersionsListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecretVersionsListEntry
-- <p>A structure that contains information about one version of a secret.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>The unique version identifier of this version of the secret.</p>
-- * VersionStages [SecretVersionStagesType] <p>An array of staging labels that are currently associated with this version of the secret.</p>
-- * LastAccessedDate [LastAccessedDateType] <p>The date that this version of the secret was last accessed. Note that the resolution of this field is at the date level and does not include the time.</p>
-- * CreatedDate [CreatedDateType] <p>The date and time this version of the secret was created.</p>
-- @return SecretVersionsListEntry structure as a key-value pair table
function M.SecretVersionsListEntry(args)
	assert(args, "You must provide an argument table when creating SecretVersionsListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["VersionStages"] = args["VersionStages"],
		["LastAccessedDate"] = args["LastAccessedDate"],
		["CreatedDate"] = args["CreatedDate"],
	}
	asserts.AssertSecretVersionsListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSecretRequest = { ["Description"] = true, ["SecretBinary"] = true, ["SecretString"] = true, ["ClientRequestToken"] = true, ["KmsKeyId"] = true, ["SecretId"] = true, nil }

function asserts.AssertUpdateSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSecretRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["SecretBinary"] then asserts.AssertSecretBinaryType(struct["SecretBinary"]) end
	if struct["SecretString"] then asserts.AssertSecretStringType(struct["SecretString"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenType(struct["ClientRequestToken"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyIdType(struct["KmsKeyId"]) end
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSecretRequest[k], "UpdateSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [DescriptionType] <p>(Optional) Specifies an updated user-provided description of the secret.</p>
-- * SecretBinary [SecretBinaryType] <p>(Optional) Specifies updated binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter. Either <code>SecretBinary</code> or <code>SecretString</code> must have a value, but not both. They cannot both be empty.</p> <p>This parameter is not accessible using the Secrets Manager console.</p>
-- * SecretString [SecretStringType] <p>(Optional) Specifies updated text data that you want to encrypt and store in this new version of the secret. Either <code>SecretBinary</code> or <code>SecretString</code> must have a value, but not both. They cannot both be empty.</p> <p>If you create this secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the default Lambda rotation function knows how to parse.</p> <p>For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. For example:</p> <p> <code>[{"username":"bob"},{"password":"abc123xyz456"}]</code> </p> <p>If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. You can also 'escape' the double quote character in the embedded JSON text by prefacing each with a backslash. For example, the following string is surrounded by double-quotes. All of the embedded double quotes are escaped:</p> <p> <code>"[{\"username\":\"bob\"},{\"password\":\"abc123xyz456\"}]"</code> </p>
-- * ClientRequestToken [ClientRequestTokenType] <p>(Optional) If you want to add a new version to the secret, this parameter specifies a unique identifier for the new version that helps ensure idempotency. </p> <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself for new versions and include that value in the request.</p> <p>You typically only need to interact with this value if you implement your own retry logic and want to ensure that a given secret is not created twice. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness within the specified secret. </p> <p>Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during the Lambda rotation function's processing.</p> <ul> <li> <p>If the <code>ClientRequestToken</code> value isn't already associated with a version of the secret then a new version of the secret is created. </p> </li> <li> <p>If a version with this value already exists and that version's <code>SecretString</code> and <code>SecretBinary</code> values are the same as those in the request then the request is ignored (the operation is idempotent). </p> </li> <li> <p>If a version with this value already exists and that version's <code>SecretString</code> and <code>SecretBinary</code> values are different from the request then an error occurs because you cannot modify an existing secret value.</p> </li> </ul> <p>This value becomes the <code>VersionId</code> of the new version.</p>
-- * KmsKeyId [KmsKeyIdType] <p>(Optional) Specifies an updated ARN or alias of the AWS KMS customer master key (CMK) to be used to encrypt the protected text in new versions of this secret.</p> <important> <p>You can only use the account's default CMK to encrypt and decrypt if you call this operation using credentials from the same account that owns the secret. If the secret is in a different account, then you must create a custom CMK and provide the ARN of that CMK in this field. The user making the call must have permissions to both the secret and the CMK in their respective accounts.</p> </important>
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to modify or to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return UpdateSecretRequest structure as a key-value pair table
function M.UpdateSecretRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["SecretBinary"] = args["SecretBinary"],
		["SecretString"] = args["SecretString"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertUpdateSecretRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelRotateSecretRequest = { ["SecretId"] = true, nil }

function asserts.AssertCancelRotateSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelRotateSecretRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelRotateSecretRequest[k], "CancelRotateSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelRotateSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>Specifies the secret for which you want to cancel a rotation request. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return CancelRotateSecretRequest structure as a key-value pair table
function M.CancelRotateSecretRequest(args)
	assert(args, "You must provide an argument table when creating CancelRotateSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertCancelRotateSecretRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSecretRequest = { ["RecoveryWindowInDays"] = true, ["ForceDeleteWithoutRecovery"] = true, ["SecretId"] = true, nil }

function asserts.AssertDeleteSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecretRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["RecoveryWindowInDays"] then asserts.AssertRecoveryWindowInDaysType(struct["RecoveryWindowInDays"]) end
	if struct["ForceDeleteWithoutRecovery"] then asserts.AssertBooleanType(struct["ForceDeleteWithoutRecovery"]) end
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSecretRequest[k], "DeleteSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecoveryWindowInDays [RecoveryWindowInDaysType] <p>(Optional) Specifies the number of days that Secrets Manager waits before it can delete the secret. You can't use both this parameter and the <code>ForceDeleteWithoutRecovery</code> parameter in the same API call.</p> <p>This value can range from 7 to 30 days. The default value is 30.</p>
-- * ForceDeleteWithoutRecovery [BooleanType] <p>(Optional) Specifies that the secret is to be deleted without any recovery window. You can't use both this parameter and the <code>RecoveryWindowInDays</code> parameter in the same API call.</p> <p>An asynchronous background process performs the actual deletion, so there can be a short delay before the operation completes. If you write code to delete and then immediately recreate a secret with the same name, ensure that your code includes appropriate back off and retry logic.</p> <important> <p>Use this parameter with caution. This parameter causes the operation to skip the normal waiting period before the permanent deletion that AWS would normally impose with the <code>RecoveryWindowInDays</code> parameter. If you delete a secret with the <code>ForceDeleteWithouRecovery</code> parameter, then you have no opportunity to recover the secret. It is permanently lost.</p> </important>
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to delete. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return DeleteSecretRequest structure as a key-value pair table
function M.DeleteSecretRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecoveryWindowInDays"] = args["RecoveryWindowInDays"],
		["ForceDeleteWithoutRecovery"] = args["ForceDeleteWithoutRecovery"],
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertDeleteSecretRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSecretRequest = { ["Description"] = true, ["Tags"] = true, ["SecretBinary"] = true, ["SecretString"] = true, ["ClientRequestToken"] = true, ["KmsKeyId"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecretRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagListType(struct["Tags"]) end
	if struct["SecretBinary"] then asserts.AssertSecretBinaryType(struct["SecretBinary"]) end
	if struct["SecretString"] then asserts.AssertSecretStringType(struct["SecretString"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenType(struct["ClientRequestToken"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyIdType(struct["KmsKeyId"]) end
	if struct["Name"] then asserts.AssertNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSecretRequest[k], "CreateSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [DescriptionType] <p>(Optional) Specifies a user-provided description of the secret.</p>
-- * Tags [TagListType] <p>(Optional) Specifies a list of user-defined tags that are attached to the secret. Each tag is a "Key" and "Value" pair of strings. This operation only appends tags to the existing list of tags. To remove tags, you must use <a>UntagResource</a>.</p> <important> <ul> <li> <p>Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag from one with key "abc".</p> </li> <li> <p>If you check tags in IAM policy <code>Condition</code> elements as part of your security strategy, then adding or removing a tag can change permissions. If the successful completion of this operation would result in you losing your permissions for this secret, then this operation is blocked and returns an <code>Access Denied</code> error.</p> </li> </ul> </important> <p>This parameter requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. For example:</p> <p> <code>[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]</code> </p> <p>If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. </p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per secret—50</p> </li> <li> <p>Maximum key length—127 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length—255 Unicode characters in UTF-8</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use the <code>aws:</code> prefix in your tag names or values because it is reserved for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.</p> </li> <li> <p>If your tagging schema will be used across multiple services and resources, remember that other services might have restrictions on allowed characters. Generally allowed characters are: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.</p> </li> </ul>
-- * SecretBinary [SecretBinaryType] <p>(Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter.</p> <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not both. They cannot both be empty.</p> <p>This parameter is not available using the Secrets Manager console. It can be accessed only by using the AWS CLI or one of the AWS SDKs.</p>
-- * SecretString [SecretStringType] <p>(Optional) Specifies text data that you want to encrypt and store in this new version of the secret.</p> <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not both. They cannot both be empty.</p> <p>If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse.</p> <p>For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. For example:</p> <p> <code>[{"username":"bob"},{"password":"abc123xyz456"}]</code> </p> <p>If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text. </p>
-- * ClientRequestToken [ClientRequestTokenType] <p>(Optional) If you include <code>SecretString</code> or <code>SecretBinary</code>, then an initial version is created as part of the secret, and this parameter specifies a unique identifier for the new version. </p> <note> <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself for the new version and include that value in the request.</p> </note> <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p> <ul> <li> <p>If the <code>ClientRequestToken</code> value isn't already associated with a version of the secret then a new version of the secret is created. </p> </li> <li> <p>If a version with this value already exists and that version's <code>SecretString</code> and <code>SecretBinary</code> values are the same as those in the request, then the request is ignored (the operation is idempotent).</p> </li> <li> <p>If a version with this value already exists and that version's <code>SecretString</code> and <code>SecretBinary</code> values are different from those in the request then the request fails because you cannot modify an existing version. Instead, use <a>PutSecretValue</a> to create a new version.</p> </li> </ul> <p>This value becomes the <code>VersionId</code> of the new version.</p>
-- * KmsKeyId [KmsKeyIdType] <p>(Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer master key (CMK) to be used to encrypt the <code>SecretString</code> or <code>SecretBinary</code> values in the versions stored in this secret.</p> <p>You can specify any of the supported ways to identify a AWS KMS key ID. If you need to reference a CMK in a different account, you can use only the key ARN or the alias ARN.</p> <p>If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named <code>aws/secretsmanager</code>). If a AWS KMS CMK with that name doesn't yet exist, then Secrets Manager creates it for you automatically the first time it needs to encrypt a version's <code>SecretString</code> or <code>SecretBinary</code> fields.</p> <important> <p>You can use the account's default CMK to encrypt and decrypt only if you call this operation using credentials from the same account that owns the secret. If the secret is in a different account, then you must create a custom CMK and specify the ARN in this field. </p> </important>
-- * Name [NameType] <p>Specifies the friendly name of the new secret.</p> <p>The secret name must be ASCII letters, digits, or the following characters : /_+=.@-</p> <note> <p>Don't end your secret name with a hyphen followed by six characters. If you do so, you risk confusion and unexpected results when searching for a secret by partial ARN. This is because Secrets Manager automatically adds a hyphen and six random characters at the end of the ARN.</p> </note>
-- Required key: Name
-- @return CreateSecretRequest structure as a key-value pair table
function M.CreateSecretRequest(args)
	assert(args, "You must provide an argument table when creating CreateSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["SecretBinary"] = args["SecretBinary"],
		["SecretString"] = args["SecretString"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSecretRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecretsResponse = { ["NextToken"] = true, ["SecretList"] = true, nil }

function asserts.AssertListSecretsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecretsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextTokenType(struct["NextToken"]) end
	if struct["SecretList"] then asserts.AssertSecretListType(struct["SecretList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecretsResponse[k], "ListSecretsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecretsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextTokenType] <p>If present in the response, this value indicates that there's more output available than what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>
-- * SecretList [SecretListType] <p>A list of the secrets in the account.</p>
-- @return ListSecretsResponse structure as a key-value pair table
function M.ListSecretsResponse(args)
	assert(args, "You must provide an argument table when creating ListSecretsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SecretList"] = args["SecretList"],
	}
	asserts.AssertListSecretsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreSecretRequest = { ["SecretId"] = true, nil }

function asserts.AssertRestoreSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreSecretRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreSecretRequest[k], "RestoreSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to restore from a previously scheduled deletion. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return RestoreSecretRequest structure as a key-value pair table
function M.RestoreSecretRequest(args)
	assert(args, "You must provide an argument table when creating RestoreSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertRestoreSecretRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSecretValueResponse = { ["Name"] = true, ["SecretBinary"] = true, ["VersionId"] = true, ["SecretString"] = true, ["VersionStages"] = true, ["CreatedDate"] = true, ["ARN"] = true, nil }

function asserts.AssertGetSecretValueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSecretValueResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["SecretBinary"] then asserts.AssertSecretBinaryType(struct["SecretBinary"]) end
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["SecretString"] then asserts.AssertSecretStringType(struct["SecretString"]) end
	if struct["VersionStages"] then asserts.AssertSecretVersionStagesType(struct["VersionStages"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDateType(struct["CreatedDate"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSecretValueResponse[k], "GetSecretValueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSecretValueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [SecretNameType] <p>The friendly name of the secret.</p>
-- * SecretBinary [SecretBinaryType] <p>The decrypted part of the protected secret information that was originally provided as binary data in the form of a byte array. The response parameter represents the binary data as a <a href="https://tools.ietf.org/html/rfc4648#section-4">base64-encoded</a> string.</p> <p>This parameter is not used if the secret is created by the Secrets Manager console.</p> <p>If you store custom information in this field of the secret, then you must code your Lambda rotation function to parse and interpret whatever you store in the <code>SecretString</code> or <code>SecretBinary</code> fields.</p>
-- * VersionId [SecretVersionIdType] <p>The unique identifier of this version of the secret.</p>
-- * SecretString [SecretStringType] <p>The decrypted part of the protected secret information that was originally provided as a string.</p> <p>If you create this secret by using the Secrets Manager console then only the <code>SecretString</code> parameter contains data. Secrets Manager stores the information as a JSON structure of key/value pairs that the Lambda rotation function knows how to parse.</p> <p>If you store custom information in the secret by using the <a>CreateSecret</a>, <a>UpdateSecret</a>, or <a>PutSecretValue</a> API operations instead of the Secrets Manager console, or by using the <b>Other secret type</b> in the console, then you must code your Lambda rotation function to parse and interpret those values.</p>
-- * VersionStages [SecretVersionStagesType] <p>A list of all of the staging labels currently attached to this version of the secret.</p>
-- * CreatedDate [CreatedDateType] <p>The date and time that this version of the secret was created.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret.</p>
-- @return GetSecretValueResponse structure as a key-value pair table
function M.GetSecretValueResponse(args)
	assert(args, "You must provide an argument table when creating GetSecretValueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["SecretBinary"] = args["SecretBinary"],
		["VersionId"] = args["VersionId"],
		["SecretString"] = args["SecretString"],
		["VersionStages"] = args["VersionStages"],
		["CreatedDate"] = args["CreatedDate"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertGetSecretValueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["SecretId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyListType(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>The identifier for the secret that you want to remove tags from. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * TagKeys [TagKeyListType] <p>A list of tag key names to remove from the secret. You don't specify the value. Both the key and its associated value are removed.</p> <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>.</p>
-- Required key: SecretId
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
		["SecretId"] = args["SecretId"],
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

keys.CancelRotateSecretResponse = { ["VersionId"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertCancelRotateSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelRotateSecretResponse to be of type 'table'")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelRotateSecretResponse[k], "CancelRotateSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelRotateSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>The unique identifier of the version of the secret that was created during the rotation. This version might not be complete, and should be evaluated for possible deletion. At the very least, you should remove the <code>VersionStage</code> value <code>AWSPENDING</code> to enable this version to be deleted. Failing to clean up a cancelled rotation can block you from successfully starting future rotations.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret for which rotation was canceled.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret for which rotation was canceled.</p>
-- @return CancelRotateSecretResponse structure as a key-value pair table
function M.CancelRotateSecretResponse(args)
	assert(args, "You must provide an argument table when creating CancelRotateSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertCancelRotateSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecretListEntry = { ["DeletedDate"] = true, ["RotationRules"] = true, ["Name"] = true, ["Tags"] = true, ["RotationEnabled"] = true, ["LastChangedDate"] = true, ["LastRotatedDate"] = true, ["KmsKeyId"] = true, ["RotationLambdaARN"] = true, ["SecretVersionsToStages"] = true, ["LastAccessedDate"] = true, ["ARN"] = true, ["Description"] = true, nil }

function asserts.AssertSecretListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecretListEntry to be of type 'table'")
	if struct["DeletedDate"] then asserts.AssertDeletedDateType(struct["DeletedDate"]) end
	if struct["RotationRules"] then asserts.AssertRotationRulesType(struct["RotationRules"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["Tags"] then asserts.AssertTagListType(struct["Tags"]) end
	if struct["RotationEnabled"] then asserts.AssertRotationEnabledType(struct["RotationEnabled"]) end
	if struct["LastChangedDate"] then asserts.AssertLastChangedDateType(struct["LastChangedDate"]) end
	if struct["LastRotatedDate"] then asserts.AssertLastRotatedDateType(struct["LastRotatedDate"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyIdType(struct["KmsKeyId"]) end
	if struct["RotationLambdaARN"] then asserts.AssertRotationLambdaARNType(struct["RotationLambdaARN"]) end
	if struct["SecretVersionsToStages"] then asserts.AssertSecretVersionsToStagesMapType(struct["SecretVersionsToStages"]) end
	if struct["LastAccessedDate"] then asserts.AssertLastAccessedDateType(struct["LastAccessedDate"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecretListEntry[k], "SecretListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecretListEntry
-- <p>A structure that contains the details about a secret. It does not include the encrypted <code>SecretString</code> and <code>SecretBinary</code> values. To get those values, use the <a>GetSecretValue</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletedDate [DeletedDateType] <p>The date and time on which this secret was deleted. Not present on active secrets. The secret can be recovered until the number of days in the recovery window has passed, as specified in the <code>RecoveryWindowInDays</code> parameter of the <a>DeleteSecret</a> operation.</p>
-- * RotationRules [RotationRulesType] <p>A structure that defines the rotation configuration for the secret.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret. You can use forward slashes in the name to represent a path hierarchy. For example, <code>/prod/databases/dbserver1</code> could represent the secret for a server named <code>dbserver1</code> in the folder <code>databases</code> in the folder <code>prod</code>. </p>
-- * Tags [TagListType] <p>The list of user-defined tags that are associated with the secret. To add tags to a secret, use <a>TagResource</a>. To remove tags, use <a>UntagResource</a>.</p>
-- * RotationEnabled [RotationEnabledType] <p>Indicated whether automatic, scheduled rotation is enabled for this secret.</p>
-- * LastChangedDate [LastChangedDateType] <p>The last date and time that this secret was modified in any way.</p>
-- * LastRotatedDate [LastRotatedDateType] <p>The last date and time that the rotation process for this secret was invoked.</p>
-- * KmsKeyId [KmsKeyIdType] <p>The ARN or alias of the AWS KMS customer master key (CMK) that's used to encrypt the <code>SecretString</code> and <code>SecretBinary</code> fields in each version of the secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the default KMS CMK (the one named <code>awssecretsmanager</code>) for this account.</p>
-- * RotationLambdaARN [RotationLambdaARNType] <p>The ARN of an AWS Lambda function that's invoked by Secrets Manager to rotate and expire the secret either automatically per the schedule or manually by a call to <a>RotateSecret</a>.</p>
-- * SecretVersionsToStages [SecretVersionsToStagesMapType] <p>A list of all of the currently assigned <code>SecretVersionStage</code> staging labels and the <code>SecretVersionId</code> that each is attached to. Staging labels are used to keep track of the different versions during the rotation process.</p> <note> <p>A version that does not have any <code>SecretVersionStage</code> is considered deprecated and subject to deletion. Such versions are not included in this list.</p> </note>
-- * LastAccessedDate [LastAccessedDateType] <p>The last date that this secret was accessed. This value is truncated to midnight of the date and therefore shows only the date, not the time.</p>
-- * ARN [SecretARNType] <p>The Amazon Resource Name (ARN) of the secret.</p> <p>For more information about ARNs in Secrets Manager, see <a href="http://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources">Policy Resources</a> in the <i>AWS Secrets Manager User Guide</i>.</p>
-- * Description [DescriptionType] <p>The user-provided description of the secret.</p>
-- @return SecretListEntry structure as a key-value pair table
function M.SecretListEntry(args)
	assert(args, "You must provide an argument table when creating SecretListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletedDate"] = args["DeletedDate"],
		["RotationRules"] = args["RotationRules"],
		["Name"] = args["Name"],
		["Tags"] = args["Tags"],
		["RotationEnabled"] = args["RotationEnabled"],
		["LastChangedDate"] = args["LastChangedDate"],
		["LastRotatedDate"] = args["LastRotatedDate"],
		["KmsKeyId"] = args["KmsKeyId"],
		["RotationLambdaARN"] = args["RotationLambdaARN"],
		["SecretVersionsToStages"] = args["SecretVersionsToStages"],
		["LastAccessedDate"] = args["LastAccessedDate"],
		["ARN"] = args["ARN"],
		["Description"] = args["Description"],
	}
	asserts.AssertSecretListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSecretResponse = { ["VersionId"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertUpdateSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSecretResponse to be of type 'table'")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSecretResponse[k], "UpdateSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>If a new version of the secret was created by this operation, then <code>VersionId</code> contains the unique identifier of the new version.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret that was updated.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret that was updated.</p> <note> <p>Secrets Manager automatically adds several random characters to the name at the end of the ARN when you initially create a secret. This affects only the ARN and not the actual friendly name. This ensures that if you create a new secret with the same name as an old secret that you previously deleted, then users with access to the old secret <i>don't</i> automatically get access to the new secret because the ARNs are different.</p> </note>
-- @return UpdateSecretResponse structure as a key-value pair table
function M.UpdateSecretResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertUpdateSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecretsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSecretsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecretsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextTokenType(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsType(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecretsRequest[k], "ListSecretsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecretsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextTokenType] <p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResultsType] <p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListSecretsRequest structure as a key-value pair table
function M.ListSecretsRequest(args)
	assert(args, "You must provide an argument table when creating ListSecretsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSecretsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecretVersionIdsRequest = { ["SecretId"] = true, ["NextToken"] = true, ["IncludeDeprecated"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSecretVersionIdsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecretVersionIdsRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["NextToken"] then asserts.AssertNextTokenType(struct["NextToken"]) end
	if struct["IncludeDeprecated"] then asserts.AssertBooleanType(struct["IncludeDeprecated"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsType(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecretVersionIdsRequest[k], "ListSecretVersionIdsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecretVersionIdsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>The identifier for the secret containing the versions you want to list. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * NextToken [NextTokenType] <p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * IncludeDeprecated [BooleanType] <p>(Optional) Specifies that you want the results to include versions that do not have any staging labels attached to them. Such versions are considered deprecated and are subject to deletion by Secrets Manager as needed.</p>
-- * MaxResults [MaxResultsType] <p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, it defaults to a value that's specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Secrets Manager might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required key: SecretId
-- @return ListSecretVersionIdsRequest structure as a key-value pair table
function M.ListSecretVersionIdsRequest(args)
	assert(args, "You must provide an argument table when creating ListSecretVersionIdsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
		["NextToken"] = args["NextToken"],
		["IncludeDeprecated"] = args["IncludeDeprecated"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSecretVersionIdsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["SecretId"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["Tags"] then asserts.AssertTagListType(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>The identifier for the secret that you want to attach tags to. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * Tags [TagListType] <p>The tags to attach to the secret. Each element in the list consists of a <code>Key</code> and a <code>Value</code>.</p> <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. For the AWS CLI, you can also use the syntax: <code>--Tags Key="Key1",Value="Value1",Key="Key2",Value="Value2"[,…]</code> </p>
-- Required key: SecretId
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
		["SecretId"] = args["SecretId"],
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

keys.PutSecretValueRequest = { ["SecretString"] = true, ["SecretId"] = true, ["VersionStages"] = true, ["ClientRequestToken"] = true, ["SecretBinary"] = true, nil }

function asserts.AssertPutSecretValueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSecretValueRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretString"] then asserts.AssertSecretStringType(struct["SecretString"]) end
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["VersionStages"] then asserts.AssertSecretVersionStagesType(struct["VersionStages"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenType(struct["ClientRequestToken"]) end
	if struct["SecretBinary"] then asserts.AssertSecretBinaryType(struct["SecretBinary"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSecretValueRequest[k], "PutSecretValueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSecretValueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretString [SecretStringType] <p>(Optional) Specifies text data that you want to encrypt and store in this new version of the secret. Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not both. They cannot both be empty.</p> <p>If you create this secret by using the Secrets Manager console then Secrets Manager puts the protected secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the information as a JSON structure of key/value pairs that the default Lambda rotation function knows how to parse.</p> <p>For storing multiple values, we recommend that you use a JSON text string argument and specify key/value pairs. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>.</p> <p> For example:</p> <p> <code>[{"username":"bob"},{"password":"abc123xyz456"}]</code> </p> <p>If your command-line tool or SDK requires quotation marks around the parameter, you should use single quotes to avoid confusion with the double quotes required in the JSON text.</p>
-- * SecretId [SecretIdType] <p>Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * VersionStages [SecretVersionStagesType] <p>(Optional) Specifies a list of staging labels that are attached to this version of the secret. These staging labels are used to track the versions through the rotation process by the Lambda rotation function.</p> <p>A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version.</p> <p>If you do not specify a value for <code>VersionStages</code> then Secrets Manager automatically moves the staging label <code>AWSCURRENT</code> to this new version.</p>
-- * ClientRequestToken [ClientRequestTokenType] <p>(Optional) Specifies a unique identifier for the new version of the secret. </p> <note> <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself for new versions and include that value in the request. </p> </note> <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during the Lambda rotation function's processing. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness within the specified secret. </p> <ul> <li> <p>If the <code>ClientRequestToken</code> value isn't already associated with a version of the secret then a new version of the secret is created. </p> </li> <li> <p>If a version with this value already exists and that version's <code>SecretString</code> or <code>SecretBinary</code> values are the same as those in the request then the request is ignored (the operation is idempotent). </p> </li> <li> <p>If a version with this value already exists and that version's <code>SecretString</code> and <code>SecretBinary</code> values are different from those in the request then the request fails because you cannot modify an existing secret version. You can only create new versions to store new secret values.</p> </li> </ul> <p>This value becomes the <code>VersionId</code> of the new version.</p>
-- * SecretBinary [SecretBinaryType] <p>(Optional) Specifies binary data that you want to encrypt and store in the new version of the secret. To use this parameter in the command-line tools, we recommend that you store your binary data in a file and then use the appropriate technique for your tool to pass the contents of the file as a parameter. Either <code>SecretBinary</code> or <code>SecretString</code> must have a value, but not both. They cannot both be empty.</p> <p>This parameter is not accessible if the secret using the Secrets Manager console.</p> <p/>
-- Required key: SecretId
-- @return PutSecretValueRequest structure as a key-value pair table
function M.PutSecretValueRequest(args)
	assert(args, "You must provide an argument table when creating PutSecretValueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretString"] = args["SecretString"],
		["SecretId"] = args["SecretId"],
		["VersionStages"] = args["VersionStages"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["SecretBinary"] = args["SecretBinary"],
	}
	asserts.AssertPutSecretValueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourcePolicyRequest = { ["SecretId"] = true, ["ResourcePolicy"] = true, nil }

function asserts.AssertPutResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourcePolicyRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	assert(struct["ResourcePolicy"], "Expected key ResourcePolicy to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["ResourcePolicy"] then asserts.AssertNonEmptyResourcePolicyType(struct["ResourcePolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourcePolicyRequest[k], "PutResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to attach the resource-based policy to. You can specify either the ARN or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * ResourcePolicy [NonEmptyResourcePolicyType] <p>A JSON-formatted string that's constructed according to the grammar and syntax for an AWS resource-based policy. The policy in the string identifies who can access or manage this secret and its versions. For information on how to format a JSON parameter for the various command line tool environments, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>.</p>
-- Required key: SecretId
-- Required key: ResourcePolicy
-- @return PutResourcePolicyRequest structure as a key-value pair table
function M.PutResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
		["ResourcePolicy"] = args["ResourcePolicy"],
	}
	asserts.AssertPutResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRandomPasswordResponse = { ["RandomPassword"] = true, nil }

function asserts.AssertGetRandomPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRandomPasswordResponse to be of type 'table'")
	if struct["RandomPassword"] then asserts.AssertRandomPasswordType(struct["RandomPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRandomPasswordResponse[k], "GetRandomPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRandomPasswordResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RandomPassword [RandomPasswordType] <p>A string with the generated password.</p>
-- @return GetRandomPasswordResponse structure as a key-value pair table
function M.GetRandomPasswordResponse(args)
	assert(args, "You must provide an argument table when creating GetRandomPasswordResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RandomPassword"] = args["RandomPassword"],
	}
	asserts.AssertGetRandomPasswordResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourcePolicyRequest = { ["SecretId"] = true, nil }

function asserts.AssertGetResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcePolicyRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourcePolicyRequest[k], "GetResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to retrieve the attached resource-based policy for. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return GetResourcePolicyRequest structure as a key-value pair table
function M.GetResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertGetResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSecretVersionStageRequest = { ["RemoveFromVersionId"] = true, ["MoveToVersionId"] = true, ["VersionStage"] = true, ["SecretId"] = true, nil }

function asserts.AssertUpdateSecretVersionStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSecretVersionStageRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	assert(struct["VersionStage"], "Expected key VersionStage to exist in table")
	if struct["RemoveFromVersionId"] then asserts.AssertSecretVersionIdType(struct["RemoveFromVersionId"]) end
	if struct["MoveToVersionId"] then asserts.AssertSecretVersionIdType(struct["MoveToVersionId"]) end
	if struct["VersionStage"] then asserts.AssertSecretVersionStageType(struct["VersionStage"]) end
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSecretVersionStageRequest[k], "UpdateSecretVersionStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSecretVersionStageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RemoveFromVersionId [SecretVersionIdType] <p>Specifies the secret version ID of the version that the staging label is to be removed from. If the staging label you are trying to attach to one version is already attached to a different version, then you must include this parameter and specify the version that the label is to be removed from. If the label is attached and you either do not specify this parameter, or the version ID does not match, then the operation fails.</p>
-- * MoveToVersionId [SecretVersionIdType] <p>(Optional) The secret version ID that you want to add the staging label to. If you want to remove a label from a version, then do not specify this parameter.</p> <p>If the staging label is already attached to a different version of the secret, then you must also specify the <code>RemoveFromVersionId</code> parameter. </p>
-- * VersionStage [SecretVersionStageType] <p>The staging label to add to this version.</p>
-- * SecretId [SecretIdType] <p>Specifies the secret with the version whose list of staging labels you want to modify. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- Required key: VersionStage
-- @return UpdateSecretVersionStageRequest structure as a key-value pair table
function M.UpdateSecretVersionStageRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSecretVersionStageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RemoveFromVersionId"] = args["RemoveFromVersionId"],
		["MoveToVersionId"] = args["MoveToVersionId"],
		["VersionStage"] = args["VersionStage"],
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertUpdateSecretVersionStageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourcePolicyResponse = { ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertDeleteResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourcePolicyResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourcePolicyResponse[k], "DeleteResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameType] <p>The friendly name of the secret that the resource-based policy was deleted for.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret that the resource-based policy was deleted for.</p>
-- @return DeleteResourcePolicyResponse structure as a key-value pair table
function M.DeleteResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertDeleteResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSecretVersionStageResponse = { ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertUpdateSecretVersionStageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSecretVersionStageResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSecretVersionStageResponse[k], "UpdateSecretVersionStageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSecretVersionStageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [SecretNameType] <p>The friendly name of the secret with the staging label that was modified.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret with the staging label that was modified.</p>
-- @return UpdateSecretVersionStageResponse structure as a key-value pair table
function M.UpdateSecretVersionStageResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSecretVersionStageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertUpdateSecretVersionStageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSecretValueRequest = { ["VersionId"] = true, ["SecretId"] = true, ["VersionStage"] = true, nil }

function asserts.AssertGetSecretValueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSecretValueRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["VersionStage"] then asserts.AssertSecretVersionStageType(struct["VersionStage"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSecretValueRequest[k], "GetSecretValueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSecretValueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>Specifies the unique identifier of the version of the secret that you want to retrieve. If you specify this parameter then don't specify <code>VersionStage</code>. If you don't specify either a <code>VersionStage</code> or <code>VersionId</code> then the default is to perform the operation on the version with the <code>VersionStage</code> value of <code>AWSCURRENT</code>.</p> <p>This value is typically a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value with 32 hexadecimal digits.</p>
-- * SecretId [SecretIdType] <p>Specifies the secret containing the version that you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * VersionStage [SecretVersionStageType] <p>Specifies the secret version that you want to retrieve by the staging label attached to the version.</p> <p>Staging labels are used to keep track of different versions during the rotation process. If you use this parameter then don't specify <code>VersionId</code>. If you don't specify either a <code>VersionStage</code> or <code>VersionId</code>, then the default is to perform the operation on the version with the <code>VersionStage</code> value of <code>AWSCURRENT</code>.</p>
-- Required key: SecretId
-- @return GetSecretValueRequest structure as a key-value pair table
function M.GetSecretValueRequest(args)
	assert(args, "You must provide an argument table when creating GetSecretValueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["SecretId"] = args["SecretId"],
		["VersionStage"] = args["VersionStage"],
	}
	asserts.AssertGetSecretValueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotateSecretResponse = { ["VersionId"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertRotateSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateSecretResponse to be of type 'table'")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateSecretResponse[k], "RotateSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>The ID of the new version of the secret created by the rotation started by this request.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret.</p>
-- @return RotateSecretResponse structure as a key-value pair table
function M.RotateSecretResponse(args)
	assert(args, "You must provide an argument table when creating RotateSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertRotateSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRandomPasswordRequest = { ["PasswordLength"] = true, ["ExcludeLowercase"] = true, ["ExcludeNumbers"] = true, ["RequireEachIncludedType"] = true, ["ExcludePunctuation"] = true, ["IncludeSpace"] = true, ["ExcludeUppercase"] = true, ["ExcludeCharacters"] = true, nil }

function asserts.AssertGetRandomPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRandomPasswordRequest to be of type 'table'")
	if struct["PasswordLength"] then asserts.AssertPasswordLengthType(struct["PasswordLength"]) end
	if struct["ExcludeLowercase"] then asserts.AssertExcludeLowercaseType(struct["ExcludeLowercase"]) end
	if struct["ExcludeNumbers"] then asserts.AssertExcludeNumbersType(struct["ExcludeNumbers"]) end
	if struct["RequireEachIncludedType"] then asserts.AssertRequireEachIncludedTypeType(struct["RequireEachIncludedType"]) end
	if struct["ExcludePunctuation"] then asserts.AssertExcludePunctuationType(struct["ExcludePunctuation"]) end
	if struct["IncludeSpace"] then asserts.AssertIncludeSpaceType(struct["IncludeSpace"]) end
	if struct["ExcludeUppercase"] then asserts.AssertExcludeUppercaseType(struct["ExcludeUppercase"]) end
	if struct["ExcludeCharacters"] then asserts.AssertExcludeCharactersType(struct["ExcludeCharacters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRandomPasswordRequest[k], "GetRandomPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRandomPasswordRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PasswordLength [PasswordLengthType] <p>The desired length of the generated password. The default value if you do not include this parameter is 32 characters.</p>
-- * ExcludeLowercase [ExcludeLowercaseType] <p>Specifies that the generated password should not include lowercase letters. The default if you do not include this switch parameter is that lowercase letters can be included.</p>
-- * ExcludeNumbers [ExcludeNumbersType] <p>Specifies that the generated password should not include digits. The default if you do not include this switch parameter is that digits can be included.</p>
-- * RequireEachIncludedType [RequireEachIncludedTypeType] <p>A boolean value that specifies whether the generated password must include at least one of every allowed character type. The default value is <code>True</code> and the operation requires at least one of every character type.</p>
-- * ExcludePunctuation [ExcludePunctuationType] <p>Specifies that the generated password should not include punctuation characters. The default if you do not include this switch parameter is that punctuation characters can be included.</p> <p>The following are the punctuation characters that <i>can</i> be included in the generated password if you don't explicitly exclude them with <code>ExcludeCharacters</code> or <code>ExcludePunctuation</code>:</p> <p> <code>! " # $ % &amp; ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ \ ] ^ _ ` { | } ~</code> </p>
-- * IncludeSpace [IncludeSpaceType] <p>Specifies that the generated password can include the space character. The default if you do not include this switch parameter is that the space character is not included.</p>
-- * ExcludeUppercase [ExcludeUppercaseType] <p>Specifies that the generated password should not include uppercase letters. The default if you do not include this switch parameter is that uppercase letters can be included.</p>
-- * ExcludeCharacters [ExcludeCharactersType] <p>A string that includes characters that should not be included in the generated password. The default is that all characters from the included sets can be used.</p>
-- @return GetRandomPasswordRequest structure as a key-value pair table
function M.GetRandomPasswordRequest(args)
	assert(args, "You must provide an argument table when creating GetRandomPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PasswordLength"] = args["PasswordLength"],
		["ExcludeLowercase"] = args["ExcludeLowercase"],
		["ExcludeNumbers"] = args["ExcludeNumbers"],
		["RequireEachIncludedType"] = args["RequireEachIncludedType"],
		["ExcludePunctuation"] = args["ExcludePunctuation"],
		["IncludeSpace"] = args["IncludeSpace"],
		["ExcludeUppercase"] = args["ExcludeUppercase"],
		["ExcludeCharacters"] = args["ExcludeCharacters"],
	}
	asserts.AssertGetRandomPasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourcePolicyRequest = { ["SecretId"] = true, nil }

function asserts.AssertDeleteResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourcePolicyRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourcePolicyRequest[k], "DeleteResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to delete the attached resource-based policy for. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return DeleteResourcePolicyRequest structure as a key-value pair table
function M.DeleteResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertDeleteResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecretVersionIdsResponse = { ["NextToken"] = true, ["Name"] = true, ["ARN"] = true, ["Versions"] = true, nil }

function asserts.AssertListSecretVersionIdsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecretVersionIdsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextTokenType(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	if struct["Versions"] then asserts.AssertSecretVersionsListType(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecretVersionIdsResponse[k], "ListSecretVersionIdsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecretVersionIdsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextTokenType] <p>If present in the response, this value indicates that there's more output available than what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>
-- * Name [SecretNameType] <p>The friendly name of the secret.</p>
-- * ARN [SecretARNType] <p>The Amazon Resource Name (ARN) for the secret.</p> <note> <p>Secrets Manager automatically adds several random characters to the name at the end of the ARN when you initially create a secret. This affects only the ARN and not the actual friendly name. This ensures that if you create a new secret with the same name as an old secret that you previously deleted, then users with access to the old secret <i>don't</i> automatically get access to the new secret because the ARNs are different.</p> </note>
-- * Versions [SecretVersionsListType] <p>The list of the currently available versions of the specified secret.</p>
-- @return ListSecretVersionIdsResponse structure as a key-value pair table
function M.ListSecretVersionIdsResponse(args)
	assert(args, "You must provide an argument table when creating ListSecretVersionIdsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListSecretVersionIdsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourcePolicyResponse = { ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertPutResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourcePolicyResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourcePolicyResponse[k], "PutResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameType] <p>The friendly name of the secret that the resource-based policy was retrieved for.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret that the resource-based policy was retrieved for.</p>
-- @return PutResourcePolicyResponse structure as a key-value pair table
function M.PutResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertPutResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutSecretValueResponse = { ["VersionId"] = true, ["VersionStages"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertPutSecretValueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSecretValueResponse to be of type 'table'")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["VersionStages"] then asserts.AssertSecretVersionStagesType(struct["VersionStages"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSecretValueResponse[k], "PutSecretValueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSecretValueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>The unique identifier of the version of the secret you just created or updated.</p>
-- * VersionStages [SecretVersionStagesType] <p>The list of staging labels that are currently attached to this version of the secret. Staging labels are used to track a version as it progresses through the secret rotation process.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret for which you just created or updated a version.</p>
-- * ARN [SecretARNType] <p>The Amazon Resource Name (ARN) for the secret for which you just created a version.</p>
-- @return PutSecretValueResponse structure as a key-value pair table
function M.PutSecretValueResponse(args)
	assert(args, "You must provide an argument table when creating PutSecretValueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["VersionStages"] = args["VersionStages"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertPutSecretValueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSecretResponse = { ["DeletionDate"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertDeleteSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecretResponse to be of type 'table'")
	if struct["DeletionDate"] then asserts.AssertDeletionDateType(struct["DeletionDate"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSecretResponse[k], "DeleteSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletionDate [DeletionDateType] <p>The date and time after which this secret can be deleted by Secrets Manager and can no longer be restored. This value is the date and time of the delete request plus the number of days specified in <code>RecoveryWindowInDays</code>.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret that is now scheduled for deletion.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret that is now scheduled for deletion.</p>
-- @return DeleteSecretResponse structure as a key-value pair table
function M.DeleteSecretResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletionDate"] = args["DeletionDate"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertDeleteSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotateSecretRequest = { ["SecretId"] = true, ["ClientRequestToken"] = true, ["RotationRules"] = true, ["RotationLambdaARN"] = true, nil }

function asserts.AssertRotateSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateSecretRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenType(struct["ClientRequestToken"]) end
	if struct["RotationRules"] then asserts.AssertRotationRulesType(struct["RotationRules"]) end
	if struct["RotationLambdaARN"] then asserts.AssertRotationLambdaARNType(struct["RotationLambdaARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateSecretRequest[k], "RotateSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>Specifies the secret that you want to rotate. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- * ClientRequestToken [ClientRequestTokenType] <p>(Optional) Specifies a unique identifier for the new version of the secret that helps ensure idempotency. </p> <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that in the request for this parameter. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself for new versions and include that value in the request.</p> <p>You only need to specify your own value if you are implementing your own retry logic and want to ensure that a given secret is not created twice. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness within the specified secret. </p> <p>Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during the function's processing. This value becomes the <code>VersionId</code> of the new version.</p>
-- * RotationRules [RotationRulesType] <p>A structure that defines the rotation configuration for this secret.</p>
-- * RotationLambdaARN [RotationLambdaARNType] <p>(Optional) Specifies the ARN of the Lambda function that can rotate the secret.</p>
-- Required key: SecretId
-- @return RotateSecretRequest structure as a key-value pair table
function M.RotateSecretRequest(args)
	assert(args, "You must provide an argument table when creating RotateSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["RotationRules"] = args["RotationRules"],
		["RotationLambdaARN"] = args["RotationLambdaARN"],
	}
	asserts.AssertRotateSecretRequest(all_args)
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
	if struct["Value"] then asserts.AssertTagValueType(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKeyType(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A structure that contains information about a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValueType] <p>The string value that's associated with the key of the tag.</p>
-- * Key [TagKeyType] <p>The key identifier, or name, of the tag.</p>
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

keys.GetResourcePolicyResponse = { ["ResourcePolicy"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertGetResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcePolicyResponse to be of type 'table'")
	if struct["ResourcePolicy"] then asserts.AssertNonEmptyResourcePolicyType(struct["ResourcePolicy"]) end
	if struct["Name"] then asserts.AssertNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourcePolicyResponse[k], "GetResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourcePolicy [NonEmptyResourcePolicyType] <p>A JSON-formatted string that describes the permissions that are associated with the attached secret. These permissions are combined with any permissions that are associated with the user or role that attempts to access this secret. The combined permissions specify who can access the secret and what actions they can perform. For more information, see <a href="http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication and Access Control for AWS Secrets Manager</a> in the <i>AWS Secrets Manager User Guide</i>.</p>
-- * Name [NameType] <p>The friendly name of the secret that the resource-based policy was retrieved for.</p>
-- * ARN [SecretARNType] <p>The ARN of the secret that the resource-based policy was retrieved for.</p>
-- @return GetResourcePolicyResponse structure as a key-value pair table
function M.GetResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourcePolicy"] = args["ResourcePolicy"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertGetResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSecretResponse = { ["VersionId"] = true, ["Name"] = true, ["ARN"] = true, nil }

function asserts.AssertCreateSecretResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecretResponse to be of type 'table'")
	if struct["VersionId"] then asserts.AssertSecretVersionIdType(struct["VersionId"]) end
	if struct["Name"] then asserts.AssertSecretNameType(struct["Name"]) end
	if struct["ARN"] then asserts.AssertSecretARNType(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSecretResponse[k], "CreateSecretResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecretResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [SecretVersionIdType] <p>The unique identifier that's associated with the version of the secret you just created.</p>
-- * Name [SecretNameType] <p>The friendly name of the secret that you just created.</p>
-- * ARN [SecretARNType] <p>The Amazon Resource Name (ARN) of the secret that you just created.</p> <note> <p>Secrets Manager automatically adds several random characters to the name at the end of the ARN when you initially create a secret. This affects only the ARN and not the actual friendly name. This ensures that if you create a new secret with the same name as an old secret that you previously deleted, then users with access to the old secret <i>don't</i> automatically get access to the new secret because the ARNs are different.</p> </note>
-- @return CreateSecretResponse structure as a key-value pair table
function M.CreateSecretResponse(args)
	assert(args, "You must provide an argument table when creating CreateSecretResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["Name"] = args["Name"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertCreateSecretResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotationRulesType = { ["AutomaticallyAfterDays"] = true, nil }

function asserts.AssertRotationRulesType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotationRulesType to be of type 'table'")
	if struct["AutomaticallyAfterDays"] then asserts.AssertAutomaticallyRotateAfterDaysType(struct["AutomaticallyAfterDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotationRulesType[k], "RotationRulesType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotationRulesType
-- <p>A structure that defines the rotation configuration for the secret.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomaticallyAfterDays [AutomaticallyRotateAfterDaysType] <p>Specifies the number of days between automatic scheduled rotations of the secret.</p> <p>Secrets Manager schedules the next rotation when the previous one is complete. Secrets Manager schedules the date by adding the rotation interval (number of days) to the actual date of the last rotation. The service chooses the hour within that 24-hour date window randomly. The minute is also chosen somewhat randomly, but weighted towards the top of the hour and influenced by a variety of factors that help distribute load.</p>
-- @return RotationRulesType structure as a key-value pair table
function M.RotationRulesType(args)
	assert(args, "You must provide an argument table when creating RotationRulesType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutomaticallyAfterDays"] = args["AutomaticallyAfterDays"],
	}
	asserts.AssertRotationRulesType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSecretRequest = { ["SecretId"] = true, nil }

function asserts.AssertDescribeSecretRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSecretRequest to be of type 'table'")
	assert(struct["SecretId"], "Expected key SecretId to exist in table")
	if struct["SecretId"] then asserts.AssertSecretIdType(struct["SecretId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSecretRequest[k], "DescribeSecretRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSecretRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretId [SecretIdType] <p>The identifier of the secret whose details you want to retrieve. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p> <note> <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can specify a partial ARN too—for example, if you don’t include the final hyphen and six random characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN match can work as long as it uniquely matches only one secret. However, if your secret has a name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six characters to the ARN) and you try to use that as a partial ARN, then those characters cause Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected results. To avoid this situation, we recommend that you don’t create secret names that end with a hyphen followed by six characters.</p> </note>
-- Required key: SecretId
-- @return DescribeSecretRequest structure as a key-value pair table
function M.DescribeSecretRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSecretRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretId"] = args["SecretId"],
	}
	asserts.AssertDescribeSecretRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSecretNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SecretNameType(str)
	asserts.AssertSecretNameType(str)
	return str
end

function asserts.AssertSecretIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretIdType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SecretIdType(str)
	asserts.AssertSecretIdType(str)
	return str
end

function asserts.AssertSecretVersionIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretVersionIdType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.SecretVersionIdType(str)
	asserts.AssertSecretVersionIdType(str)
	return str
end

function asserts.AssertRotationLambdaARNType(str)
	assert(str)
	assert(type(str) == "string", "Expected RotationLambdaARNType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.RotationLambdaARNType(str)
	asserts.AssertRotationLambdaARNType(str)
	return str
end

function asserts.AssertExcludeCharactersType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExcludeCharactersType to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.ExcludeCharactersType(str)
	asserts.AssertExcludeCharactersType(str)
	return str
end

function asserts.AssertSecretStringType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretStringType to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.SecretStringType(str)
	asserts.AssertSecretStringType(str)
	return str
end

function asserts.AssertNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected NameType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NameType(str)
	asserts.AssertNameType(str)
	return str
end

function asserts.AssertClientRequestTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestTokenType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.ClientRequestTokenType(str)
	asserts.AssertClientRequestTokenType(str)
	return str
end

function asserts.AssertNextTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected NextTokenType to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextTokenType(str)
	asserts.AssertNextTokenType(str)
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

function asserts.AssertNonEmptyResourcePolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyResourcePolicyType to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonEmptyResourcePolicyType(str)
	asserts.AssertNonEmptyResourcePolicyType(str)
	return str
end

function asserts.AssertDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.DescriptionType(str)
	asserts.AssertDescriptionType(str)
	return str
end

function asserts.AssertSecretVersionStageType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretVersionStageType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SecretVersionStageType(str)
	asserts.AssertSecretVersionStageType(str)
	return str
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

function asserts.AssertRandomPasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected RandomPasswordType to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.RandomPasswordType(str)
	asserts.AssertRandomPasswordType(str)
	return str
end

function asserts.AssertSecretARNType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretARNType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.SecretARNType(str)
	asserts.AssertSecretARNType(str)
	return str
end

function asserts.AssertKmsKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyIdType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.KmsKeyIdType(str)
	asserts.AssertKmsKeyIdType(str)
	return str
end

function asserts.AssertPasswordLengthType(long)
	assert(long)
	assert(type(long) == "number", "Expected PasswordLengthType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PasswordLengthType(long)
	asserts.AssertPasswordLengthType(long)
	return long
end

function asserts.AssertRecoveryWindowInDaysType(long)
	assert(long)
	assert(type(long) == "number", "Expected RecoveryWindowInDaysType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.RecoveryWindowInDaysType(long)
	asserts.AssertRecoveryWindowInDaysType(long)
	return long
end

function asserts.AssertAutomaticallyRotateAfterDaysType(long)
	assert(long)
	assert(type(long) == "number", "Expected AutomaticallyRotateAfterDaysType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.AutomaticallyRotateAfterDaysType(long)
	asserts.AssertAutomaticallyRotateAfterDaysType(long)
	return long
end

function asserts.AssertMaxResultsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResultsType(integer)
	asserts.AssertMaxResultsType(integer)
	return integer
end

function asserts.AssertExcludeLowercaseType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ExcludeLowercaseType to be of type 'boolean'")
end

function M.ExcludeLowercaseType(boolean)
	asserts.AssertExcludeLowercaseType(boolean)
	return boolean
end

function asserts.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	asserts.AssertBooleanType(boolean)
	return boolean
end

function asserts.AssertExcludeUppercaseType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ExcludeUppercaseType to be of type 'boolean'")
end

function M.ExcludeUppercaseType(boolean)
	asserts.AssertExcludeUppercaseType(boolean)
	return boolean
end

function asserts.AssertExcludeNumbersType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ExcludeNumbersType to be of type 'boolean'")
end

function M.ExcludeNumbersType(boolean)
	asserts.AssertExcludeNumbersType(boolean)
	return boolean
end

function asserts.AssertRequireEachIncludedTypeType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RequireEachIncludedTypeType to be of type 'boolean'")
end

function M.RequireEachIncludedTypeType(boolean)
	asserts.AssertRequireEachIncludedTypeType(boolean)
	return boolean
end

function asserts.AssertExcludePunctuationType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ExcludePunctuationType to be of type 'boolean'")
end

function M.ExcludePunctuationType(boolean)
	asserts.AssertExcludePunctuationType(boolean)
	return boolean
end

function asserts.AssertIncludeSpaceType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeSpaceType to be of type 'boolean'")
end

function M.IncludeSpaceType(boolean)
	asserts.AssertIncludeSpaceType(boolean)
	return boolean
end

function asserts.AssertRotationEnabledType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RotationEnabledType to be of type 'boolean'")
end

function M.RotationEnabledType(boolean)
	asserts.AssertRotationEnabledType(boolean)
	return boolean
end

function asserts.AssertSecretVersionsToStagesMapType(map)
	assert(map)
	assert(type(map) == "table", "Expected SecretVersionsToStagesMapType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertSecretVersionIdType(k)
		asserts.AssertSecretVersionStagesType(v)
	end
end

function M.SecretVersionsToStagesMapType(map)
	asserts.AssertSecretVersionsToStagesMapType(map)
	return map
end

function asserts.AssertDeletedDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeletedDateType to be of type 'string'")
end

function M.DeletedDateType(timestamp)
	asserts.AssertDeletedDateType(timestamp)
	return timestamp
end

function asserts.AssertLastAccessedDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastAccessedDateType to be of type 'string'")
end

function M.LastAccessedDateType(timestamp)
	asserts.AssertLastAccessedDateType(timestamp)
	return timestamp
end

function asserts.AssertLastChangedDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastChangedDateType to be of type 'string'")
end

function M.LastChangedDateType(timestamp)
	asserts.AssertLastChangedDateType(timestamp)
	return timestamp
end

function asserts.AssertDeletionDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeletionDateType to be of type 'string'")
end

function M.DeletionDateType(timestamp)
	asserts.AssertDeletionDateType(timestamp)
	return timestamp
end

function asserts.AssertCreatedDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDateType to be of type 'string'")
end

function M.CreatedDateType(timestamp)
	asserts.AssertCreatedDateType(timestamp)
	return timestamp
end

function asserts.AssertLastRotatedDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastRotatedDateType to be of type 'string'")
end

function M.LastRotatedDateType(timestamp)
	asserts.AssertLastRotatedDateType(timestamp)
	return timestamp
end

function asserts.AssertSecretBinaryType(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected SecretBinaryType to be of type 'string'")
	assert(#blob <= 4096, "Expected blob to be max 4096")
end

function M.SecretBinaryType(blob)
	asserts.AssertSecretBinaryType(blob)
	return blob
end

function asserts.AssertSecretListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SecretListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecretListEntry(v)
	end
end

--  
-- List of SecretListEntry objects
function M.SecretListType(list)
	asserts.AssertSecretListType(list)
	return list
end

function asserts.AssertTagKeyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKeyType(v)
	end
end

--  
-- List of TagKeyType objects
function M.TagKeyListType(list)
	asserts.AssertTagKeyListType(list)
	return list
end

function asserts.AssertTagListType(list)
	assert(list)
	assert(type(list) == "table", "Expected TagListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagListType(list)
	asserts.AssertTagListType(list)
	return list
end

function asserts.AssertSecretVersionsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SecretVersionsListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecretVersionsListEntry(v)
	end
end

--  
-- List of SecretVersionsListEntry objects
function M.SecretVersionsListType(list)
	asserts.AssertSecretVersionsListType(list)
	return list
end

function asserts.AssertSecretVersionStagesType(list)
	assert(list)
	assert(type(list) == "table", "Expected SecretVersionStagesType to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecretVersionStageType(v)
	end
end

--  
-- List of SecretVersionStageType objects
function M.SecretVersionStagesType(list)
	asserts.AssertSecretVersionStagesType(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "secretsmanager.amazonaws.com"
		end
	end
	local ss = { "secretsmanager" }
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
--- Call PutSecretValue asynchronously, invoking a callback when done
-- @param PutSecretValueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutSecretValueAsync(PutSecretValueRequest, cb)
	assert(PutSecretValueRequest, "You must provide a PutSecretValueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.PutSecretValue",
	}
	for header,value in pairs(PutSecretValueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutSecretValueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutSecretValue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutSecretValueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutSecretValueSync(PutSecretValueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutSecretValueAsync(PutSecretValueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSecretVersionIds asynchronously, invoking a callback when done
-- @param ListSecretVersionIdsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSecretVersionIdsAsync(ListSecretVersionIdsRequest, cb)
	assert(ListSecretVersionIdsRequest, "You must provide a ListSecretVersionIdsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.ListSecretVersionIds",
	}
	for header,value in pairs(ListSecretVersionIdsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSecretVersionIdsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSecretVersionIds synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSecretVersionIdsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSecretVersionIdsSync(ListSecretVersionIdsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSecretVersionIdsAsync(ListSecretVersionIdsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreSecret asynchronously, invoking a callback when done
-- @param RestoreSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreSecretAsync(RestoreSecretRequest, cb)
	assert(RestoreSecretRequest, "You must provide a RestoreSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.RestoreSecret",
	}
	for header,value in pairs(RestoreSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreSecretSync(RestoreSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreSecretAsync(RestoreSecretRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSecret asynchronously, invoking a callback when done
-- @param CreateSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSecretAsync(CreateSecretRequest, cb)
	assert(CreateSecretRequest, "You must provide a CreateSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.CreateSecret",
	}
	for header,value in pairs(CreateSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSecretSync(CreateSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSecretAsync(CreateSecretRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSecret asynchronously, invoking a callback when done
-- @param DeleteSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSecretAsync(DeleteSecretRequest, cb)
	assert(DeleteSecretRequest, "You must provide a DeleteSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.DeleteSecret",
	}
	for header,value in pairs(DeleteSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSecretSync(DeleteSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSecretAsync(DeleteSecretRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.UntagResource",
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

--- Call GetRandomPassword asynchronously, invoking a callback when done
-- @param GetRandomPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRandomPasswordAsync(GetRandomPasswordRequest, cb)
	assert(GetRandomPasswordRequest, "You must provide a GetRandomPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.GetRandomPassword",
	}
	for header,value in pairs(GetRandomPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRandomPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRandomPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRandomPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRandomPasswordSync(GetRandomPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRandomPasswordAsync(GetRandomPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutResourcePolicy asynchronously, invoking a callback when done
-- @param PutResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutResourcePolicyAsync(PutResourcePolicyRequest, cb)
	assert(PutResourcePolicyRequest, "You must provide a PutResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.PutResourcePolicy",
	}
	for header,value in pairs(PutResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutResourcePolicySync(PutResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutResourcePolicyAsync(PutResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResourcePolicy asynchronously, invoking a callback when done
-- @param DeleteResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResourcePolicyAsync(DeleteResourcePolicyRequest, cb)
	assert(DeleteResourcePolicyRequest, "You must provide a DeleteResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.DeleteResourcePolicy",
	}
	for header,value in pairs(DeleteResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteResourcePolicySync(DeleteResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourcePolicyAsync(DeleteResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSecrets asynchronously, invoking a callback when done
-- @param ListSecretsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSecretsAsync(ListSecretsRequest, cb)
	assert(ListSecretsRequest, "You must provide a ListSecretsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.ListSecrets",
	}
	for header,value in pairs(ListSecretsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSecretsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSecrets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSecretsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSecretsSync(ListSecretsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSecretsAsync(ListSecretsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelRotateSecret asynchronously, invoking a callback when done
-- @param CancelRotateSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelRotateSecretAsync(CancelRotateSecretRequest, cb)
	assert(CancelRotateSecretRequest, "You must provide a CancelRotateSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.CancelRotateSecret",
	}
	for header,value in pairs(CancelRotateSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelRotateSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelRotateSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelRotateSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelRotateSecretSync(CancelRotateSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelRotateSecretAsync(CancelRotateSecretRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResourcePolicy asynchronously, invoking a callback when done
-- @param GetResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourcePolicyAsync(GetResourcePolicyRequest, cb)
	assert(GetResourcePolicyRequest, "You must provide a GetResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.GetResourcePolicy",
	}
	for header,value in pairs(GetResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetResourcePolicySync(GetResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourcePolicyAsync(GetResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSecret asynchronously, invoking a callback when done
-- @param DescribeSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSecretAsync(DescribeSecretRequest, cb)
	assert(DescribeSecretRequest, "You must provide a DescribeSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.DescribeSecret",
	}
	for header,value in pairs(DescribeSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSecretSync(DescribeSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSecretAsync(DescribeSecretRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSecret asynchronously, invoking a callback when done
-- @param UpdateSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSecretAsync(UpdateSecretRequest, cb)
	assert(UpdateSecretRequest, "You must provide a UpdateSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.UpdateSecret",
	}
	for header,value in pairs(UpdateSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSecretSync(UpdateSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSecretAsync(UpdateSecretRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.TagResource",
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

--- Call UpdateSecretVersionStage asynchronously, invoking a callback when done
-- @param UpdateSecretVersionStageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSecretVersionStageAsync(UpdateSecretVersionStageRequest, cb)
	assert(UpdateSecretVersionStageRequest, "You must provide a UpdateSecretVersionStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.UpdateSecretVersionStage",
	}
	for header,value in pairs(UpdateSecretVersionStageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSecretVersionStageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSecretVersionStage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSecretVersionStageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSecretVersionStageSync(UpdateSecretVersionStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSecretVersionStageAsync(UpdateSecretVersionStageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RotateSecret asynchronously, invoking a callback when done
-- @param RotateSecretRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RotateSecretAsync(RotateSecretRequest, cb)
	assert(RotateSecretRequest, "You must provide a RotateSecretRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.RotateSecret",
	}
	for header,value in pairs(RotateSecretRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RotateSecretRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RotateSecret synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RotateSecretRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RotateSecretSync(RotateSecretRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RotateSecretAsync(RotateSecretRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSecretValue asynchronously, invoking a callback when done
-- @param GetSecretValueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSecretValueAsync(GetSecretValueRequest, cb)
	assert(GetSecretValueRequest, "You must provide a GetSecretValueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "secretsmanager.GetSecretValue",
	}
	for header,value in pairs(GetSecretValueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSecretValueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSecretValue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSecretValueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSecretValueSync(GetSecretValueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSecretValueAsync(GetSecretValueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
