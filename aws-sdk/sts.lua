--- GENERATED CODE - DO NOT MODIFY
-- AWS Security Token Service (sts-2011-06-15)

local M = {}

M.metadata = {
	api_version = "2011-06-15",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "sts",
	service_abbreviation = "AWS STS",
	service_full_name = "AWS Security Token Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "sts.amazonaws.com",
	uid = "sts-2011-06-15",
}

local keys = {}
local asserts = {}

keys.ExpiredTokenException = { ["message"] = true, nil }

function asserts.AssertExpiredTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertexpiredIdentityTokenMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredTokenException[k], "ExpiredTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredTokenException
-- <p>The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.</p>
-- @param _message [expiredIdentityTokenMessage] 
function M.ExpiredTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExpiredTokenException(t)
	return t
end

keys.AssumeRoleWithSAMLRequest = { ["Policy"] = true, ["DurationSeconds"] = true, ["RoleArn"] = true, ["PrincipalArn"] = true, ["SAMLAssertion"] = true, nil }

function asserts.AssertAssumeRoleWithSAMLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithSAMLRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["PrincipalArn"], "Expected key PrincipalArn to exist in table")
	assert(struct["SAMLAssertion"], "Expected key SAMLAssertion to exist in table")
	if struct["Policy"] then asserts.AssertsessionPolicyDocumentType(struct["Policy"]) end
	if struct["DurationSeconds"] then asserts.AssertroleDurationSecondsType(struct["DurationSeconds"]) end
	if struct["RoleArn"] then asserts.AssertarnType(struct["RoleArn"]) end
	if struct["PrincipalArn"] then asserts.AssertarnType(struct["PrincipalArn"]) end
	if struct["SAMLAssertion"] then asserts.AssertSAMLAssertionType(struct["SAMLAssertion"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumeRoleWithSAMLRequest[k], "AssumeRoleWithSAMLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithSAMLRequest
--  
-- @param _Policy [sessionPolicyDocumentType] <p>An IAM policy in JSON format.</p> <p>The policy parameter is optional. If you pass a policy, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed, <i> <b>and</b> </i> the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html">Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity</a> in the <i>IAM User Guide</i>. </p> <p>The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.</p> <note> <p>The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.</p> </note>
-- @param _DurationSeconds [roleDurationSecondsType] <p>The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 3600 seconds (1 hour). By default, the value is set to 3600 seconds. An expiration can also be specified in the SAML authentication response's <code>SessionNotOnOrAfter</code> value. The actual expiration time is whichever value is shorter. </p> <note> <p>This is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a <code>SessionDuration</code> parameter that specifies the maximum length of the console session, separately from the <code>DurationSeconds</code> parameter on this API. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0 Federated Users to Access the AWS Management Console</a> in the <i>IAM User Guide</i>.</p> </note>
-- @param _RoleArn [arnType] <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
-- @param _PrincipalArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the IdP.</p>
-- @param _SAMLAssertion [SAMLAssertionType] <p>The base-64 encoded SAML authentication response provided by the IdP.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html">Configuring a Relying Party and Adding Claims</a> in the <i>Using IAM</i> guide. </p>
-- Required parameter: RoleArn
-- Required parameter: PrincipalArn
-- Required parameter: SAMLAssertion
function M.AssumeRoleWithSAMLRequest(_Policy, _DurationSeconds, _RoleArn, _PrincipalArn, _SAMLAssertion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithSAMLRequest")
	local t = { 
		["Policy"] = _Policy,
		["DurationSeconds"] = _DurationSeconds,
		["RoleArn"] = _RoleArn,
		["PrincipalArn"] = _PrincipalArn,
		["SAMLAssertion"] = _SAMLAssertion,
	}
	asserts.AssertAssumeRoleWithSAMLRequest(t)
	return t
end

keys.AssumeRoleWithWebIdentityResponse = { ["PackedPolicySize"] = true, ["AssumedRoleUser"] = true, ["Audience"] = true, ["Provider"] = true, ["SubjectFromWebIdentityToken"] = true, ["Credentials"] = true, nil }

function asserts.AssertAssumeRoleWithWebIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithWebIdentityResponse to be of type 'table'")
	if struct["PackedPolicySize"] then asserts.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	if struct["AssumedRoleUser"] then asserts.AssertAssumedRoleUser(struct["AssumedRoleUser"]) end
	if struct["Audience"] then asserts.AssertAudience(struct["Audience"]) end
	if struct["Provider"] then asserts.AssertIssuer(struct["Provider"]) end
	if struct["SubjectFromWebIdentityToken"] then asserts.AssertwebIdentitySubjectType(struct["SubjectFromWebIdentityToken"]) end
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumeRoleWithWebIdentityResponse[k], "AssumeRoleWithWebIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithWebIdentityResponse
-- <p>Contains the response to a successful <a>AssumeRoleWithWebIdentity</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
-- @param _PackedPolicySize [nonNegativeIntegerType] <p>A percentage value that indicates the size of the policy in packed form. The service rejects any policy with a packed size greater than 100 percent, which means the policy exceeded the allowed space.</p>
-- @param _AssumedRoleUser [AssumedRoleUser] <p>The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified when you called <code>AssumeRole</code>. </p>
-- @param _Audience [Audience] <p>The intended audience (also known as client ID) of the web identity token. This is traditionally the client identifier issued to the application that requested the web identity token.</p>
-- @param _Provider [Issuer] <p> The issuing authority of the web identity token presented. For OpenID Connect ID Tokens this contains the value of the <code>iss</code> field. For OAuth 2.0 access tokens, this contains the value of the <code>ProviderId</code> parameter that was passed in the <code>AssumeRoleWithWebIdentity</code> request.</p>
-- @param _SubjectFromWebIdentityToken [webIdentitySubjectType] <p>The unique user identifier that is returned by the identity provider. This identifier is associated with the <code>WebIdentityToken</code> that was submitted with the <code>AssumeRoleWithWebIdentity</code> call. The identifier is typically unique to the user and the application that acquired the <code>WebIdentityToken</code> (pairwise identifier). For OpenID Connect ID tokens, this field contains the value returned by the identity provider as the token's <code>sub</code> (Subject) claim. </p>
-- @param _Credentials [Credentials] <p>The temporary security credentials, which include an access key ID, a secret access key, and a security token.</p> <p> <b>Note:</b> The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.</p>
function M.AssumeRoleWithWebIdentityResponse(_PackedPolicySize, _AssumedRoleUser, _Audience, _Provider, _SubjectFromWebIdentityToken, _Credentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithWebIdentityResponse")
	local t = { 
		["PackedPolicySize"] = _PackedPolicySize,
		["AssumedRoleUser"] = _AssumedRoleUser,
		["Audience"] = _Audience,
		["Provider"] = _Provider,
		["SubjectFromWebIdentityToken"] = _SubjectFromWebIdentityToken,
		["Credentials"] = _Credentials,
	}
	asserts.AssertAssumeRoleWithWebIdentityResponse(t)
	return t
end

keys.PackedPolicyTooLargeException = { ["message"] = true, nil }

function asserts.AssertPackedPolicyTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PackedPolicyTooLargeException to be of type 'table'")
	if struct["message"] then asserts.AssertpackedPolicyTooLargeMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PackedPolicyTooLargeException[k], "PackedPolicyTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PackedPolicyTooLargeException
-- <p>The request was rejected because the policy document was too large. The error message describes how big the policy document is, in packed form, as a percentage of what the API allows.</p>
-- @param _message [packedPolicyTooLargeMessage] 
function M.PackedPolicyTooLargeException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PackedPolicyTooLargeException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPackedPolicyTooLargeException(t)
	return t
end

keys.AssumedRoleUser = { ["AssumedRoleId"] = true, ["Arn"] = true, nil }

function asserts.AssertAssumedRoleUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumedRoleUser to be of type 'table'")
	assert(struct["AssumedRoleId"], "Expected key AssumedRoleId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["AssumedRoleId"] then asserts.AssertassumedRoleIdType(struct["AssumedRoleId"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumedRoleUser[k], "AssumedRoleUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumedRoleUser
-- <p>The identifiers for the temporary security credentials that the operation returns.</p>
-- @param _AssumedRoleId [assumedRoleIdType] <p>A unique identifier that contains the role ID and the role session name of the role that is being assumed. The role ID is generated by AWS when the role is created.</p>
-- @param _Arn [arnType] <p>The ARN of the temporary security credentials that are returned from the <a>AssumeRole</a> action. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in <i>Using IAM</i>. </p>
-- Required parameter: AssumedRoleId
-- Required parameter: Arn
function M.AssumedRoleUser(_AssumedRoleId, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumedRoleUser")
	local t = { 
		["AssumedRoleId"] = _AssumedRoleId,
		["Arn"] = _Arn,
	}
	asserts.AssertAssumedRoleUser(t)
	return t
end

keys.FederatedUser = { ["FederatedUserId"] = true, ["Arn"] = true, nil }

function asserts.AssertFederatedUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FederatedUser to be of type 'table'")
	assert(struct["FederatedUserId"], "Expected key FederatedUserId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["FederatedUserId"] then asserts.AssertfederatedIdType(struct["FederatedUserId"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.FederatedUser[k], "FederatedUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FederatedUser
-- <p>Identifiers for the federated user that is associated with the credentials.</p>
-- @param _FederatedUserId [federatedIdType] <p>The string that identifies the federated user associated with the credentials, similar to the unique ID of an IAM user.</p>
-- @param _Arn [arnType] <p>The ARN that specifies the federated user that is associated with the credentials. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in <i>Using IAM</i>. </p>
-- Required parameter: FederatedUserId
-- Required parameter: Arn
function M.FederatedUser(_FederatedUserId, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FederatedUser")
	local t = { 
		["FederatedUserId"] = _FederatedUserId,
		["Arn"] = _Arn,
	}
	asserts.AssertFederatedUser(t)
	return t
end

keys.MalformedPolicyDocumentException = { ["message"] = true, nil }

function asserts.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["message"] then asserts.AssertmalformedPolicyDocumentMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedPolicyDocumentException[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- <p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>
-- @param _message [malformedPolicyDocumentMessage] 
function M.MalformedPolicyDocumentException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyDocumentException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMalformedPolicyDocumentException(t)
	return t
end

keys.InvalidIdentityTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidIdentityTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdentityTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidIdentityTokenMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidIdentityTokenException[k], "InvalidIdentityTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdentityTokenException
-- <p>The web identity token that was passed could not be validated by AWS. Get a new identity token from the identity provider and then retry the request.</p>
-- @param _message [invalidIdentityTokenMessage] 
function M.InvalidIdentityTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIdentityTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidIdentityTokenException(t)
	return t
end

keys.GetFederationTokenResponse = { ["FederatedUser"] = true, ["Credentials"] = true, ["PackedPolicySize"] = true, nil }

function asserts.AssertGetFederationTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFederationTokenResponse to be of type 'table'")
	if struct["FederatedUser"] then asserts.AssertFederatedUser(struct["FederatedUser"]) end
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	if struct["PackedPolicySize"] then asserts.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFederationTokenResponse[k], "GetFederationTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFederationTokenResponse
-- <p>Contains the response to a successful <a>GetFederationToken</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
-- @param _FederatedUser [FederatedUser] <p>Identifiers for the federated user associated with the credentials (such as <code>arn:aws:sts::123456789012:federated-user/Bob</code> or <code>123456789012:Bob</code>). You can use the federated user's ARN in your resource-based policies, such as an Amazon S3 bucket policy. </p>
-- @param _Credentials [Credentials] <p>The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <p> <b>Note:</b> The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.</p>
-- @param _PackedPolicySize [nonNegativeIntegerType] <p>A percentage value indicating the size of the policy in packed form. The service rejects policies for which the packed size is greater than 100 percent of the allowed value.</p>
function M.GetFederationTokenResponse(_FederatedUser, _Credentials, _PackedPolicySize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFederationTokenResponse")
	local t = { 
		["FederatedUser"] = _FederatedUser,
		["Credentials"] = _Credentials,
		["PackedPolicySize"] = _PackedPolicySize,
	}
	asserts.AssertGetFederationTokenResponse(t)
	return t
end

keys.IDPRejectedClaimException = { ["message"] = true, nil }

function asserts.AssertIDPRejectedClaimException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IDPRejectedClaimException to be of type 'table'")
	if struct["message"] then asserts.AssertidpRejectedClaimMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IDPRejectedClaimException[k], "IDPRejectedClaimException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IDPRejectedClaimException
-- <p>The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.</p> <p>If this error is returned for the <code>AssumeRoleWithWebIdentity</code> operation, it can also mean that the claim has expired or has been explicitly revoked. </p>
-- @param _message [idpRejectedClaimMessage] 
function M.IDPRejectedClaimException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IDPRejectedClaimException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertIDPRejectedClaimException(t)
	return t
end

keys.IDPCommunicationErrorException = { ["message"] = true, nil }

function asserts.AssertIDPCommunicationErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IDPCommunicationErrorException to be of type 'table'")
	if struct["message"] then asserts.AssertidpCommunicationErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IDPCommunicationErrorException[k], "IDPCommunicationErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IDPCommunicationErrorException
-- <p>The request could not be fulfilled because the non-AWS identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the non-AWS identity provider might be down or not responding.</p>
-- @param _message [idpCommunicationErrorMessage] 
function M.IDPCommunicationErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IDPCommunicationErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertIDPCommunicationErrorException(t)
	return t
end

keys.GetSessionTokenRequest = { ["DurationSeconds"] = true, ["SerialNumber"] = true, ["TokenCode"] = true, nil }

function asserts.AssertGetSessionTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSessionTokenRequest to be of type 'table'")
	if struct["DurationSeconds"] then asserts.AssertdurationSecondsType(struct["DurationSeconds"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["TokenCode"] then asserts.AsserttokenCodeType(struct["TokenCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSessionTokenRequest[k], "GetSessionTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSessionTokenRequest
--  
-- @param _DurationSeconds [durationSecondsType] <p>The duration, in seconds, that the credentials should remain valid. Acceptable durations for IAM user sessions range from 900 seconds (15 minutes) to 129600 seconds (36 hours), with 43200 seconds (12 hours) as the default. Sessions for AWS account owners are restricted to a maximum of 3600 seconds (one hour). If the duration is longer than one hour, the session for AWS account owners defaults to one hour.</p>
-- @param _SerialNumber [serialNumberType] <p>The identification number of the MFA device that is associated with the IAM user who is making the <code>GetSessionToken</code> call. Specify this value if the IAM user has a policy that requires MFA authentication. The value is either the serial number for a hardware device (such as <code>GAHT12345678</code>) or an Amazon Resource Name (ARN) for a virtual device (such as <code>arn:aws:iam::123456789012:mfa/user</code>). You can find the device for an IAM user by going to the AWS Management Console and viewing the user's security credentials. </p> <p>The regex used to validated this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
-- @param _TokenCode [tokenCodeType] <p>The value provided by the MFA device, if MFA is required. If any policy requires the IAM user to submit an MFA code, specify this value. If MFA authentication is required, and the user does not provide a code when requesting a set of temporary security credentials, the user will receive an "access denied" response when requesting resources that require MFA authentication.</p> <p>The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.</p>
function M.GetSessionTokenRequest(_DurationSeconds, _SerialNumber, _TokenCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSessionTokenRequest")
	local t = { 
		["DurationSeconds"] = _DurationSeconds,
		["SerialNumber"] = _SerialNumber,
		["TokenCode"] = _TokenCode,
	}
	asserts.AssertGetSessionTokenRequest(t)
	return t
end

keys.Credentials = { ["SecretAccessKey"] = true, ["SessionToken"] = true, ["Expiration"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Credentials to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	assert(struct["SecretAccessKey"], "Expected key SecretAccessKey to exist in table")
	assert(struct["SessionToken"], "Expected key SessionToken to exist in table")
	assert(struct["Expiration"], "Expected key Expiration to exist in table")
	if struct["SecretAccessKey"] then asserts.AssertaccessKeySecretType(struct["SecretAccessKey"]) end
	if struct["SessionToken"] then asserts.AsserttokenType(struct["SessionToken"]) end
	if struct["Expiration"] then asserts.AssertdateType(struct["Expiration"]) end
	if struct["AccessKeyId"] then asserts.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Credentials[k], "Credentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Credentials
-- <p>AWS credentials for API authentication.</p>
-- @param _SecretAccessKey [accessKeySecretType] <p>The secret access key that can be used to sign requests.</p>
-- @param _SessionToken [tokenType] <p>The token that users must pass to the service API to use the temporary credentials.</p>
-- @param _Expiration [dateType] <p>The date on which the current credentials expire.</p>
-- @param _AccessKeyId [accessKeyIdType] <p>The access key ID that identifies the temporary security credentials.</p>
-- Required parameter: AccessKeyId
-- Required parameter: SecretAccessKey
-- Required parameter: SessionToken
-- Required parameter: Expiration
function M.Credentials(_SecretAccessKey, _SessionToken, _Expiration, _AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Credentials")
	local t = { 
		["SecretAccessKey"] = _SecretAccessKey,
		["SessionToken"] = _SessionToken,
		["Expiration"] = _Expiration,
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertCredentials(t)
	return t
end

keys.AssumeRoleRequest = { ["RoleSessionName"] = true, ["RoleArn"] = true, ["SerialNumber"] = true, ["DurationSeconds"] = true, ["ExternalId"] = true, ["TokenCode"] = true, ["Policy"] = true, nil }

function asserts.AssertAssumeRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["RoleSessionName"], "Expected key RoleSessionName to exist in table")
	if struct["RoleSessionName"] then asserts.AssertroleSessionNameType(struct["RoleSessionName"]) end
	if struct["RoleArn"] then asserts.AssertarnType(struct["RoleArn"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["DurationSeconds"] then asserts.AssertroleDurationSecondsType(struct["DurationSeconds"]) end
	if struct["ExternalId"] then asserts.AssertexternalIdType(struct["ExternalId"]) end
	if struct["TokenCode"] then asserts.AsserttokenCodeType(struct["TokenCode"]) end
	if struct["Policy"] then asserts.AssertsessionPolicyDocumentType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumeRoleRequest[k], "AssumeRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleRequest
--  
-- @param _RoleSessionName [roleSessionNameType] <p>An identifier for the assumed role session.</p> <p>Use the role session name to uniquely identify a session when the same role is assumed by different principals or for different reasons. In cross-account scenarios, the role session name is visible to, and can be logged by the account that owns the role. The role session name is also used in the ARN of the assumed role principal. This means that subsequent cross-account API requests using the temporary security credentials will expose the role session name to the external account in their CloudTrail logs.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>
-- @param _RoleArn [arnType] <p>The Amazon Resource Name (ARN) of the role to assume.</p>
-- @param _SerialNumber [serialNumberType] <p>The identification number of the MFA device that is associated with the user who is making the <code>AssumeRole</code> call. Specify this value if the trust policy of the role being assumed includes a condition that requires MFA authentication. The value is either the serial number for a hardware device (such as <code>GAHT12345678</code>) or an Amazon Resource Name (ARN) for a virtual device (such as <code>arn:aws:iam::123456789012:mfa/user</code>).</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>
-- @param _DurationSeconds [roleDurationSecondsType] <p>The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 3600 seconds (1 hour). By default, the value is set to 3600 seconds.</p> <note> <p>This is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a <code>SessionDuration</code> parameter that specifies the maximum length of the console session, separately from the <code>DurationSeconds</code> parameter on this API. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL that Enables Federated Users to Access the AWS Management Console</a> in the <i>IAM User Guide</i>.</p> </note>
-- @param _ExternalId [externalIdType] <p>A unique identifier that is used by third parties when assuming roles in their customers' accounts. For each role that the third party can assume, they should instruct their customers to ensure the role's trust policy checks for the external ID that the third party generated. Each time the third party assumes the role, they should pass the customer's external ID. The external ID is useful in order to help third parties bind a role to the customer who created it. For more information about the external ID, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How to Use an External ID When Granting Access to Your AWS Resources to a Third Party</a> in the <i>IAM User Guide</i>.</p> <p>The regex used to validated this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-</p>
-- @param _TokenCode [tokenCodeType] <p>The value provided by the MFA device, if the trust policy of the role being assumed requires MFA (that is, if the policy includes a condition that tests for MFA). If the role being assumed requires MFA and if the <code>TokenCode</code> value is missing or expired, the <code>AssumeRole</code> call returns an "access denied" error.</p> <p>The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.</p>
-- @param _Policy [sessionPolicyDocumentType] <p>An IAM policy in JSON format.</p> <p>This parameter is optional. If you pass a policy, the temporary security credentials that are returned by the operation have the permissions that are allowed by both (the intersection of) the access policy of the role that is being assumed, <i>and</i> the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html">Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity</a> in the <i>IAM User Guide</i>.</p> <p>The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.</p> <note> <p>The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.</p> </note>
-- Required parameter: RoleArn
-- Required parameter: RoleSessionName
function M.AssumeRoleRequest(_RoleSessionName, _RoleArn, _SerialNumber, _DurationSeconds, _ExternalId, _TokenCode, _Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleRequest")
	local t = { 
		["RoleSessionName"] = _RoleSessionName,
		["RoleArn"] = _RoleArn,
		["SerialNumber"] = _SerialNumber,
		["DurationSeconds"] = _DurationSeconds,
		["ExternalId"] = _ExternalId,
		["TokenCode"] = _TokenCode,
		["Policy"] = _Policy,
	}
	asserts.AssertAssumeRoleRequest(t)
	return t
end

keys.DecodeAuthorizationMessageRequest = { ["EncodedMessage"] = true, nil }

function asserts.AssertDecodeAuthorizationMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecodeAuthorizationMessageRequest to be of type 'table'")
	assert(struct["EncodedMessage"], "Expected key EncodedMessage to exist in table")
	if struct["EncodedMessage"] then asserts.AssertencodedMessageType(struct["EncodedMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecodeAuthorizationMessageRequest[k], "DecodeAuthorizationMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecodeAuthorizationMessageRequest
--  
-- @param _EncodedMessage [encodedMessageType] <p>The encoded message that was returned with the response.</p>
-- Required parameter: EncodedMessage
function M.DecodeAuthorizationMessageRequest(_EncodedMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecodeAuthorizationMessageRequest")
	local t = { 
		["EncodedMessage"] = _EncodedMessage,
	}
	asserts.AssertDecodeAuthorizationMessageRequest(t)
	return t
end

keys.GetSessionTokenResponse = { ["Credentials"] = true, nil }

function asserts.AssertGetSessionTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSessionTokenResponse to be of type 'table'")
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSessionTokenResponse[k], "GetSessionTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSessionTokenResponse
-- <p>Contains the response to a successful <a>GetSessionToken</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
-- @param _Credentials [Credentials] <p>The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <p> <b>Note:</b> The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.</p>
function M.GetSessionTokenResponse(_Credentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSessionTokenResponse")
	local t = { 
		["Credentials"] = _Credentials,
	}
	asserts.AssertGetSessionTokenResponse(t)
	return t
end

keys.RegionDisabledException = { ["message"] = true, nil }

function asserts.AssertRegionDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegionDisabledException to be of type 'table'")
	if struct["message"] then asserts.AssertregionDisabledMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegionDisabledException[k], "RegionDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegionDisabledException
-- <p>STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p>
-- @param _message [regionDisabledMessage] 
function M.RegionDisabledException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegionDisabledException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRegionDisabledException(t)
	return t
end

keys.DecodeAuthorizationMessageResponse = { ["DecodedMessage"] = true, nil }

function asserts.AssertDecodeAuthorizationMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecodeAuthorizationMessageResponse to be of type 'table'")
	if struct["DecodedMessage"] then asserts.AssertdecodedMessageType(struct["DecodedMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecodeAuthorizationMessageResponse[k], "DecodeAuthorizationMessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecodeAuthorizationMessageResponse
-- <p>A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an AWS request.</p>
-- @param _DecodedMessage [decodedMessageType] <p>An XML document that contains the decoded message.</p>
function M.DecodeAuthorizationMessageResponse(_DecodedMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecodeAuthorizationMessageResponse")
	local t = { 
		["DecodedMessage"] = _DecodedMessage,
	}
	asserts.AssertDecodeAuthorizationMessageResponse(t)
	return t
end

keys.AssumeRoleWithSAMLResponse = { ["PackedPolicySize"] = true, ["SubjectType"] = true, ["AssumedRoleUser"] = true, ["Audience"] = true, ["NameQualifier"] = true, ["Credentials"] = true, ["Issuer"] = true, ["Subject"] = true, nil }

function asserts.AssertAssumeRoleWithSAMLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithSAMLResponse to be of type 'table'")
	if struct["PackedPolicySize"] then asserts.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	if struct["SubjectType"] then asserts.AssertSubjectType(struct["SubjectType"]) end
	if struct["AssumedRoleUser"] then asserts.AssertAssumedRoleUser(struct["AssumedRoleUser"]) end
	if struct["Audience"] then asserts.AssertAudience(struct["Audience"]) end
	if struct["NameQualifier"] then asserts.AssertNameQualifier(struct["NameQualifier"]) end
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	if struct["Issuer"] then asserts.AssertIssuer(struct["Issuer"]) end
	if struct["Subject"] then asserts.AssertSubject(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumeRoleWithSAMLResponse[k], "AssumeRoleWithSAMLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithSAMLResponse
-- <p>Contains the response to a successful <a>AssumeRoleWithSAML</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
-- @param _PackedPolicySize [nonNegativeIntegerType] <p>A percentage value that indicates the size of the policy in packed form. The service rejects any policy with a packed size greater than 100 percent, which means the policy exceeded the allowed space.</p>
-- @param _SubjectType [SubjectType] <p> The format of the name ID, as defined by the <code>Format</code> attribute in the <code>NameID</code> element of the SAML assertion. Typical examples of the format are <code>transient</code> or <code>persistent</code>. </p> <p> If the format includes the prefix <code>urn:oasis:names:tc:SAML:2.0:nameid-format</code>, that prefix is removed. For example, <code>urn:oasis:names:tc:SAML:2.0:nameid-format:transient</code> is returned as <code>transient</code>. If the format includes any other prefix, the format is returned with no modifications.</p>
-- @param _AssumedRoleUser [AssumedRoleUser] <p>The identifiers for the temporary security credentials that the operation returns.</p>
-- @param _Audience [Audience] <p> The value of the <code>Recipient</code> attribute of the <code>SubjectConfirmationData</code> element of the SAML assertion. </p>
-- @param _NameQualifier [NameQualifier] <p>A hash value based on the concatenation of the <code>Issuer</code> response value, the AWS account ID, and the friendly name (the last part of the ARN) of the SAML provider in IAM. The combination of <code>NameQualifier</code> and <code>Subject</code> can be used to uniquely identify a federated user. </p> <p>The following pseudocode shows how the hash value is calculated:</p> <p> <code>BASE64 ( SHA1 ( "https://example.com/saml" + "123456789012" + "/MySAMLIdP" ) )</code> </p>
-- @param _Credentials [Credentials] <p>The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <p> <b>Note:</b> The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.</p>
-- @param _Issuer [Issuer] <p>The value of the <code>Issuer</code> element of the SAML assertion.</p>
-- @param _Subject [Subject] <p>The value of the <code>NameID</code> element in the <code>Subject</code> element of the SAML assertion.</p>
function M.AssumeRoleWithSAMLResponse(_PackedPolicySize, _SubjectType, _AssumedRoleUser, _Audience, _NameQualifier, _Credentials, _Issuer, _Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithSAMLResponse")
	local t = { 
		["PackedPolicySize"] = _PackedPolicySize,
		["SubjectType"] = _SubjectType,
		["AssumedRoleUser"] = _AssumedRoleUser,
		["Audience"] = _Audience,
		["NameQualifier"] = _NameQualifier,
		["Credentials"] = _Credentials,
		["Issuer"] = _Issuer,
		["Subject"] = _Subject,
	}
	asserts.AssertAssumeRoleWithSAMLResponse(t)
	return t
end

keys.GetCallerIdentityResponse = { ["Account"] = true, ["UserId"] = true, ["Arn"] = true, nil }

function asserts.AssertGetCallerIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCallerIdentityResponse to be of type 'table'")
	if struct["Account"] then asserts.AssertaccountType(struct["Account"]) end
	if struct["UserId"] then asserts.AssertuserIdType(struct["UserId"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCallerIdentityResponse[k], "GetCallerIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCallerIdentityResponse
-- <p>Contains the response to a successful <a>GetCallerIdentity</a> request, including information about the entity making the request.</p>
-- @param _Account [accountType] <p>The AWS account ID number of the account that owns or contains the calling entity.</p>
-- @param _UserId [userIdType] <p>The unique identifier of the calling entity. The exact value depends on the type of entity making the call. The values returned are those listed in the <b>aws:userid</b> column in the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable">Principal table</a> found on the <b>Policy Variables</b> reference page in the <i>IAM User Guide</i>.</p>
-- @param _Arn [arnType] <p>The AWS ARN associated with the calling entity.</p>
function M.GetCallerIdentityResponse(_Account, _UserId, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCallerIdentityResponse")
	local t = { 
		["Account"] = _Account,
		["UserId"] = _UserId,
		["Arn"] = _Arn,
	}
	asserts.AssertGetCallerIdentityResponse(t)
	return t
end

keys.AssumeRoleWithWebIdentityRequest = { ["RoleSessionName"] = true, ["RoleArn"] = true, ["WebIdentityToken"] = true, ["DurationSeconds"] = true, ["ProviderId"] = true, ["Policy"] = true, nil }

function asserts.AssertAssumeRoleWithWebIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithWebIdentityRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["RoleSessionName"], "Expected key RoleSessionName to exist in table")
	assert(struct["WebIdentityToken"], "Expected key WebIdentityToken to exist in table")
	if struct["RoleSessionName"] then asserts.AssertroleSessionNameType(struct["RoleSessionName"]) end
	if struct["RoleArn"] then asserts.AssertarnType(struct["RoleArn"]) end
	if struct["WebIdentityToken"] then asserts.AssertclientTokenType(struct["WebIdentityToken"]) end
	if struct["DurationSeconds"] then asserts.AssertroleDurationSecondsType(struct["DurationSeconds"]) end
	if struct["ProviderId"] then asserts.AsserturlType(struct["ProviderId"]) end
	if struct["Policy"] then asserts.AssertsessionPolicyDocumentType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumeRoleWithWebIdentityRequest[k], "AssumeRoleWithWebIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithWebIdentityRequest
--  
-- @param _RoleSessionName [roleSessionNameType] <p>An identifier for the assumed role session. Typically, you pass the name or identifier that is associated with the user who is using your application. That way, the temporary security credentials that your application will use are associated with that user. This session name is included as part of the ARN and assumed role ID in the <code>AssumedRoleUser</code> response element.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>
-- @param _RoleArn [arnType] <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
-- @param _WebIdentityToken [clientTokenType] <p>The OAuth 2.0 access token or OpenID Connect ID token that is provided by the identity provider. Your application must get this token by authenticating the user who is using your application with a web identity provider before the application makes an <code>AssumeRoleWithWebIdentity</code> call. </p>
-- @param _DurationSeconds [roleDurationSecondsType] <p>The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 3600 seconds (1 hour). By default, the value is set to 3600 seconds.</p> <note> <p>This is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a <code>SessionDuration</code> parameter that specifies the maximum length of the console session, separately from the <code>DurationSeconds</code> parameter on this API. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL that Enables Federated Users to Access the AWS Management Console</a> in the <i>IAM User Guide</i>.</p> </note>
-- @param _ProviderId [urlType] <p>The fully qualified host component of the domain name of the identity provider.</p> <p>Specify this value only for OAuth 2.0 access tokens. Currently <code>www.amazon.com</code> and <code>graph.facebook.com</code> are the only supported identity providers for OAuth 2.0 access tokens. Do not include URL schemes and port numbers.</p> <p>Do not specify this value for OpenID Connect ID tokens.</p>
-- @param _Policy [sessionPolicyDocumentType] <p>An IAM policy in JSON format.</p> <p>The policy parameter is optional. If you pass a policy, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed, <i> <b>and</b> </i> the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html">Permissions for AssumeRoleWithWebIdentity</a> in the <i>IAM User Guide</i>. </p> <p>The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.</p> <note> <p>The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.</p> </note>
-- Required parameter: RoleArn
-- Required parameter: RoleSessionName
-- Required parameter: WebIdentityToken
function M.AssumeRoleWithWebIdentityRequest(_RoleSessionName, _RoleArn, _WebIdentityToken, _DurationSeconds, _ProviderId, _Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithWebIdentityRequest")
	local t = { 
		["RoleSessionName"] = _RoleSessionName,
		["RoleArn"] = _RoleArn,
		["WebIdentityToken"] = _WebIdentityToken,
		["DurationSeconds"] = _DurationSeconds,
		["ProviderId"] = _ProviderId,
		["Policy"] = _Policy,
	}
	asserts.AssertAssumeRoleWithWebIdentityRequest(t)
	return t
end

keys.InvalidAuthorizationMessageException = { ["message"] = true, nil }

function asserts.AssertInvalidAuthorizationMessageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAuthorizationMessageException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidAuthorizationMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAuthorizationMessageException[k], "InvalidAuthorizationMessageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAuthorizationMessageException
-- <p>The error returned if the message passed to <code>DecodeAuthorizationMessage</code> was invalid. This can happen if the token contains invalid characters, such as linebreaks. </p>
-- @param _message [invalidAuthorizationMessage] 
function M.InvalidAuthorizationMessageException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAuthorizationMessageException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidAuthorizationMessageException(t)
	return t
end

keys.AssumeRoleResponse = { ["AssumedRoleUser"] = true, ["Credentials"] = true, ["PackedPolicySize"] = true, nil }

function asserts.AssertAssumeRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleResponse to be of type 'table'")
	if struct["AssumedRoleUser"] then asserts.AssertAssumedRoleUser(struct["AssumedRoleUser"]) end
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	if struct["PackedPolicySize"] then asserts.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssumeRoleResponse[k], "AssumeRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleResponse
-- <p>Contains the response to a successful <a>AssumeRole</a> request, including temporary AWS credentials that can be used to make AWS requests. </p>
-- @param _AssumedRoleUser [AssumedRoleUser] <p>The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the <code>RoleSessionName</code> that you specified when you called <code>AssumeRole</code>. </p>
-- @param _Credentials [Credentials] <p>The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.</p> <p> <b>Note:</b> The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.</p>
-- @param _PackedPolicySize [nonNegativeIntegerType] <p>A percentage value that indicates the size of the policy in packed form. The service rejects any policy with a packed size greater than 100 percent, which means the policy exceeded the allowed space.</p>
function M.AssumeRoleResponse(_AssumedRoleUser, _Credentials, _PackedPolicySize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleResponse")
	local t = { 
		["AssumedRoleUser"] = _AssumedRoleUser,
		["Credentials"] = _Credentials,
		["PackedPolicySize"] = _PackedPolicySize,
	}
	asserts.AssertAssumeRoleResponse(t)
	return t
end

keys.GetFederationTokenRequest = { ["Policy"] = true, ["DurationSeconds"] = true, ["Name"] = true, nil }

function asserts.AssertGetFederationTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFederationTokenRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Policy"] then asserts.AssertsessionPolicyDocumentType(struct["Policy"]) end
	if struct["DurationSeconds"] then asserts.AssertdurationSecondsType(struct["DurationSeconds"]) end
	if struct["Name"] then asserts.AssertuserNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFederationTokenRequest[k], "GetFederationTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFederationTokenRequest
--  
-- @param _Policy [sessionPolicyDocumentType] <p>An IAM policy in JSON format that is passed with the <code>GetFederationToken</code> call and evaluated along with the policy or policies that are attached to the IAM user whose credentials are used to call <code>GetFederationToken</code>. The passed policy is used to scope down the permissions that are available to the IAM user, by allowing only a subset of the permissions that are granted to the IAM user. The passed policy cannot grant more permissions than those granted to the IAM user. The final permissions for the federated user are the most restrictive set based on the intersection of the passed policy and the IAM user policy.</p> <p>If you do not pass a policy, the resulting temporary security credentials have no effective permissions. The only exception is when the temporary security credentials are used to access a resource that has a resource-based policy that specifically allows the federated user to access the resource.</p> <p>The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.</p> <note> <p>The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.</p> </note> <p>For more information about how permissions work, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getfederationtoken.html">Permissions for GetFederationToken</a>.</p>
-- @param _DurationSeconds [durationSecondsType] <p>The duration, in seconds, that the session should last. Acceptable durations for federation sessions range from 900 seconds (15 minutes) to 129600 seconds (36 hours), with 43200 seconds (12 hours) as the default. Sessions obtained using AWS account (root) credentials are restricted to a maximum of 3600 seconds (one hour). If the specified duration is longer than one hour, the session obtained by using AWS account (root) credentials defaults to one hour.</p>
-- @param _Name [userNameType] <p>The name of the federated user. The name is used as an identifier for the temporary security credentials (such as <code>Bob</code>). For example, you can reference the federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.</p> <p>The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-</p>
-- Required parameter: Name
function M.GetFederationTokenRequest(_Policy, _DurationSeconds, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFederationTokenRequest")
	local t = { 
		["Policy"] = _Policy,
		["DurationSeconds"] = _DurationSeconds,
		["Name"] = _Name,
	}
	asserts.AssertGetFederationTokenRequest(t)
	return t
end

keys.GetCallerIdentityRequest = { nil }

function asserts.AssertGetCallerIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCallerIdentityRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetCallerIdentityRequest[k], "GetCallerIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCallerIdentityRequest
--  
function M.GetCallerIdentityRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCallerIdentityRequest")
	local t = { 
	}
	asserts.AssertGetCallerIdentityRequest(t)
	return t
end

function asserts.AssertarnType(str)
	assert(str)
	assert(type(str) == "string", "Expected arnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.arnType(str)
	asserts.AssertarnType(str)
	return str
end

function asserts.AssertinvalidIdentityTokenMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidIdentityTokenMessage to be of type 'string'")
end

--  
function M.invalidIdentityTokenMessage(str)
	asserts.AssertinvalidIdentityTokenMessage(str)
	return str
end

function asserts.AssertdecodedMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected decodedMessageType to be of type 'string'")
end

--  
function M.decodedMessageType(str)
	asserts.AssertdecodedMessageType(str)
	return str
end

function asserts.AssertserialNumberType(str)
	assert(str)
	assert(type(str) == "string", "Expected serialNumberType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 9, "Expected string to be min 9 characters")
end

--  
function M.serialNumberType(str)
	asserts.AssertserialNumberType(str)
	return str
end

function asserts.AssertencodedMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected encodedMessageType to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.encodedMessageType(str)
	asserts.AssertencodedMessageType(str)
	return str
end

function asserts.AsserttokenCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected tokenCodeType to be of type 'string'")
	assert(#str <= 6, "Expected string to be max 6 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.tokenCodeType(str)
	asserts.AsserttokenCodeType(str)
	return str
end

function asserts.AssertwebIdentitySubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected webIdentitySubjectType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.webIdentitySubjectType(str)
	asserts.AssertwebIdentitySubjectType(str)
	return str
end

function asserts.AsserttokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected tokenType to be of type 'string'")
end

--  
function M.tokenType(str)
	asserts.AsserttokenType(str)
	return str
end

function asserts.AssertexpiredIdentityTokenMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected expiredIdentityTokenMessage to be of type 'string'")
end

--  
function M.expiredIdentityTokenMessage(str)
	asserts.AssertexpiredIdentityTokenMessage(str)
	return str
end

function asserts.AssertSubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubjectType to be of type 'string'")
end

--  
function M.SubjectType(str)
	asserts.AssertSubjectType(str)
	return str
end

function asserts.AssertSAMLAssertionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SAMLAssertionType to be of type 'string'")
	assert(#str <= 50000, "Expected string to be max 50000 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.SAMLAssertionType(str)
	asserts.AssertSAMLAssertionType(str)
	return str
end

function asserts.AssertNameQualifier(str)
	assert(str)
	assert(type(str) == "string", "Expected NameQualifier to be of type 'string'")
end

--  
function M.NameQualifier(str)
	asserts.AssertNameQualifier(str)
	return str
end

function asserts.AssertclientTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected clientTokenType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.clientTokenType(str)
	asserts.AssertclientTokenType(str)
	return str
end

function asserts.AssertidpRejectedClaimMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected idpRejectedClaimMessage to be of type 'string'")
end

--  
function M.idpRejectedClaimMessage(str)
	asserts.AssertidpRejectedClaimMessage(str)
	return str
end

function asserts.AssertaccessKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected accessKeyIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

--  
function M.accessKeyIdType(str)
	asserts.AssertaccessKeyIdType(str)
	return str
end

function asserts.AssertroleSessionNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected roleSessionNameType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.roleSessionNameType(str)
	asserts.AssertroleSessionNameType(str)
	return str
end

function asserts.AsserturlType(str)
	assert(str)
	assert(type(str) == "string", "Expected urlType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.urlType(str)
	asserts.AsserturlType(str)
	return str
end

function asserts.AssertsessionPolicyDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected sessionPolicyDocumentType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.sessionPolicyDocumentType(str)
	asserts.AssertsessionPolicyDocumentType(str)
	return str
end

function asserts.AssertregionDisabledMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected regionDisabledMessage to be of type 'string'")
end

--  
function M.regionDisabledMessage(str)
	asserts.AssertregionDisabledMessage(str)
	return str
end

function asserts.AssertmalformedPolicyDocumentMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected malformedPolicyDocumentMessage to be of type 'string'")
end

--  
function M.malformedPolicyDocumentMessage(str)
	asserts.AssertmalformedPolicyDocumentMessage(str)
	return str
end

function asserts.AssertexternalIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected externalIdType to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.externalIdType(str)
	asserts.AssertexternalIdType(str)
	return str
end

function asserts.AssertidpCommunicationErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected idpCommunicationErrorMessage to be of type 'string'")
end

--  
function M.idpCommunicationErrorMessage(str)
	asserts.AssertidpCommunicationErrorMessage(str)
	return str
end

function asserts.AssertAudience(str)
	assert(str)
	assert(type(str) == "string", "Expected Audience to be of type 'string'")
end

--  
function M.Audience(str)
	asserts.AssertAudience(str)
	return str
end

function asserts.AssertaccountType(str)
	assert(str)
	assert(type(str) == "string", "Expected accountType to be of type 'string'")
end

--  
function M.accountType(str)
	asserts.AssertaccountType(str)
	return str
end

function asserts.AssertpackedPolicyTooLargeMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected packedPolicyTooLargeMessage to be of type 'string'")
end

--  
function M.packedPolicyTooLargeMessage(str)
	asserts.AssertpackedPolicyTooLargeMessage(str)
	return str
end

function asserts.AssertassumedRoleIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected assumedRoleIdType to be of type 'string'")
	assert(#str <= 193, "Expected string to be max 193 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.assumedRoleIdType(str)
	asserts.AssertassumedRoleIdType(str)
	return str
end

function asserts.AssertuserIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected userIdType to be of type 'string'")
end

--  
function M.userIdType(str)
	asserts.AssertuserIdType(str)
	return str
end

function asserts.AssertuserNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected userNameType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.userNameType(str)
	asserts.AssertuserNameType(str)
	return str
end

function asserts.AssertfederatedIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected federatedIdType to be of type 'string'")
	assert(#str <= 193, "Expected string to be max 193 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.federatedIdType(str)
	asserts.AssertfederatedIdType(str)
	return str
end

function asserts.AssertinvalidAuthorizationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidAuthorizationMessage to be of type 'string'")
end

--  
function M.invalidAuthorizationMessage(str)
	asserts.AssertinvalidAuthorizationMessage(str)
	return str
end

function asserts.AssertaccessKeySecretType(str)
	assert(str)
	assert(type(str) == "string", "Expected accessKeySecretType to be of type 'string'")
end

--  
function M.accessKeySecretType(str)
	asserts.AssertaccessKeySecretType(str)
	return str
end

function asserts.AssertSubject(str)
	assert(str)
	assert(type(str) == "string", "Expected Subject to be of type 'string'")
end

--  
function M.Subject(str)
	asserts.AssertSubject(str)
	return str
end

function asserts.AssertIssuer(str)
	assert(str)
	assert(type(str) == "string", "Expected Issuer to be of type 'string'")
end

--  
function M.Issuer(str)
	asserts.AssertIssuer(str)
	return str
end

function asserts.AssertnonNegativeIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected nonNegativeIntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.nonNegativeIntegerType(integer)
	asserts.AssertnonNegativeIntegerType(integer)
	return integer
end

function asserts.AssertdurationSecondsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected durationSecondsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 129600, "Expected integer to be max 129600")
	assert(integer >= 900, "Expected integer to be min 900")
end

function M.durationSecondsType(integer)
	asserts.AssertdurationSecondsType(integer)
	return integer
end

function asserts.AssertroleDurationSecondsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected roleDurationSecondsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3600, "Expected integer to be max 3600")
	assert(integer >= 900, "Expected integer to be min 900")
end

function M.roleDurationSecondsType(integer)
	asserts.AssertroleDurationSecondsType(integer)
	return integer
end

function asserts.AssertdateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected dateType to be of type 'string'")
end

function M.dateType(timestamp)
	asserts.AssertdateType(timestamp)
	return timestamp
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "sts.amazonaws.com"
		end
	end
	local ss = { "sts" }
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
--- Call GetFederationToken asynchronously, invoking a callback when done
-- @param GetFederationTokenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFederationTokenAsync(GetFederationTokenRequest, cb)
	assert(GetFederationTokenRequest, "You must provide a GetFederationTokenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFederationToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetFederationTokenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetFederationToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFederationTokenRequest
-- @return response
-- @return error_message
function M.GetFederationTokenSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFederationTokenAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssumeRole asynchronously, invoking a callback when done
-- @param AssumeRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssumeRoleAsync(AssumeRoleRequest, cb)
	assert(AssumeRoleRequest, "You must provide a AssumeRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AssumeRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssumeRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call AssumeRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssumeRoleRequest
-- @return response
-- @return error_message
function M.AssumeRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssumeRoleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DecodeAuthorizationMessage asynchronously, invoking a callback when done
-- @param DecodeAuthorizationMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DecodeAuthorizationMessageAsync(DecodeAuthorizationMessageRequest, cb)
	assert(DecodeAuthorizationMessageRequest, "You must provide a DecodeAuthorizationMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DecodeAuthorizationMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DecodeAuthorizationMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DecodeAuthorizationMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DecodeAuthorizationMessageRequest
-- @return response
-- @return error_message
function M.DecodeAuthorizationMessageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecodeAuthorizationMessageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssumeRoleWithWebIdentity asynchronously, invoking a callback when done
-- @param AssumeRoleWithWebIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssumeRoleWithWebIdentityAsync(AssumeRoleWithWebIdentityRequest, cb)
	assert(AssumeRoleWithWebIdentityRequest, "You must provide a AssumeRoleWithWebIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AssumeRoleWithWebIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssumeRoleWithWebIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call AssumeRoleWithWebIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssumeRoleWithWebIdentityRequest
-- @return response
-- @return error_message
function M.AssumeRoleWithWebIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssumeRoleWithWebIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSessionToken asynchronously, invoking a callback when done
-- @param GetSessionTokenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSessionTokenAsync(GetSessionTokenRequest, cb)
	assert(GetSessionTokenRequest, "You must provide a GetSessionTokenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSessionToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSessionTokenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetSessionToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSessionTokenRequest
-- @return response
-- @return error_message
function M.GetSessionTokenSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSessionTokenAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCallerIdentity asynchronously, invoking a callback when done
-- @param GetCallerIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCallerIdentityAsync(GetCallerIdentityRequest, cb)
	assert(GetCallerIdentityRequest, "You must provide a GetCallerIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCallerIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCallerIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetCallerIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCallerIdentityRequest
-- @return response
-- @return error_message
function M.GetCallerIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCallerIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssumeRoleWithSAML asynchronously, invoking a callback when done
-- @param AssumeRoleWithSAMLRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssumeRoleWithSAMLAsync(AssumeRoleWithSAMLRequest, cb)
	assert(AssumeRoleWithSAMLRequest, "You must provide a AssumeRoleWithSAMLRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AssumeRoleWithSAML",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssumeRoleWithSAMLRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call AssumeRoleWithSAML synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssumeRoleWithSAMLRequest
-- @return response
-- @return error_message
function M.AssumeRoleWithSAMLSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssumeRoleWithSAMLAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
