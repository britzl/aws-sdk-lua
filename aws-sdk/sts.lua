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

local ExpiredTokenException_keys = { "message" = true, nil }

function M.AssertExpiredTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredTokenException to be of type 'table'")
	if struct["message"] then M.AssertexpiredIdentityTokenMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredTokenException_keys[k], "ExpiredTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredTokenException
-- &lt;p&gt;The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.&lt;/p&gt;
-- @param message [expiredIdentityTokenMessage] &lt;p&gt;The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.&lt;/p&gt;
function M.ExpiredTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredTokenException(t)
	return t
end

local AssumeRoleWithSAMLRequest_keys = { "Policy" = true, "DurationSeconds" = true, "RoleArn" = true, "PrincipalArn" = true, "SAMLAssertion" = true, nil }

function M.AssertAssumeRoleWithSAMLRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithSAMLRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["PrincipalArn"], "Expected key PrincipalArn to exist in table")
	assert(struct["SAMLAssertion"], "Expected key SAMLAssertion to exist in table")
	if struct["Policy"] then M.AssertsessionPolicyDocumentType(struct["Policy"]) end
	if struct["DurationSeconds"] then M.AssertroleDurationSecondsType(struct["DurationSeconds"]) end
	if struct["RoleArn"] then M.AssertarnType(struct["RoleArn"]) end
	if struct["PrincipalArn"] then M.AssertarnType(struct["PrincipalArn"]) end
	if struct["SAMLAssertion"] then M.AssertSAMLAssertionType(struct["SAMLAssertion"]) end
	for k,_ in pairs(struct) do
		assert(AssumeRoleWithSAMLRequest_keys[k], "AssumeRoleWithSAMLRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithSAMLRequest
--  
-- @param Policy [sessionPolicyDocumentType] &lt;p&gt;An IAM policy in JSON format.&lt;/p&gt; &lt;p&gt;The policy parameter is optional. If you pass a policy, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed, &lt;i&gt; &lt;b&gt;and&lt;/b&gt; &lt;/i&gt; the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html&quot;&gt;Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;. &lt;/p&gt; &lt;p&gt;The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.&lt;/p&gt; &lt;/note&gt;
-- @param DurationSeconds [roleDurationSecondsType] &lt;p&gt;The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 3600 seconds (1 hour). By default, the value is set to 3600 seconds. An expiration can also be specified in the SAML authentication response's &lt;code&gt;SessionNotOnOrAfter&lt;/code&gt; value. The actual expiration time is whichever value is shorter. &lt;/p&gt; &lt;note&gt; &lt;p&gt;This is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a &lt;code&gt;SessionDuration&lt;/code&gt; parameter that specifies the maximum length of the console session, separately from the &lt;code&gt;DurationSeconds&lt;/code&gt; parameter on this API. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html&quot;&gt;Enabling SAML 2.0 Federated Users to Access the AWS Management Console&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param RoleArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the role that the caller is assuming.&lt;/p&gt;
-- @param PrincipalArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the IdP.&lt;/p&gt;
-- @param SAMLAssertion [SAMLAssertionType] &lt;p&gt;The base-64 encoded SAML authentication response provided by the IdP.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html&quot;&gt;Configuring a Relying Party and Adding Claims&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- Required parameter: RoleArn
-- Required parameter: PrincipalArn
-- Required parameter: SAMLAssertion
function M.AssumeRoleWithSAMLRequest(Policy, DurationSeconds, RoleArn, PrincipalArn, SAMLAssertion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithSAMLRequest")
	local t = { 
		["Policy"] = Policy,
		["DurationSeconds"] = DurationSeconds,
		["RoleArn"] = RoleArn,
		["PrincipalArn"] = PrincipalArn,
		["SAMLAssertion"] = SAMLAssertion,
	}
	M.AssertAssumeRoleWithSAMLRequest(t)
	return t
end

local AssumeRoleWithWebIdentityResponse_keys = { "PackedPolicySize" = true, "AssumedRoleUser" = true, "Audience" = true, "Provider" = true, "SubjectFromWebIdentityToken" = true, "Credentials" = true, nil }

function M.AssertAssumeRoleWithWebIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithWebIdentityResponse to be of type 'table'")
	if struct["PackedPolicySize"] then M.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	if struct["AssumedRoleUser"] then M.AssertAssumedRoleUser(struct["AssumedRoleUser"]) end
	if struct["Audience"] then M.AssertAudience(struct["Audience"]) end
	if struct["Provider"] then M.AssertIssuer(struct["Provider"]) end
	if struct["SubjectFromWebIdentityToken"] then M.AssertwebIdentitySubjectType(struct["SubjectFromWebIdentityToken"]) end
	if struct["Credentials"] then M.AssertCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(AssumeRoleWithWebIdentityResponse_keys[k], "AssumeRoleWithWebIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithWebIdentityResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;AssumeRoleWithWebIdentity&lt;/a&gt; request, including temporary AWS credentials that can be used to make AWS requests. &lt;/p&gt;
-- @param PackedPolicySize [nonNegativeIntegerType] &lt;p&gt;A percentage value that indicates the size of the policy in packed form. The service rejects any policy with a packed size greater than 100 percent, which means the policy exceeded the allowed space.&lt;/p&gt;
-- @param AssumedRoleUser [AssumedRoleUser] &lt;p&gt;The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the &lt;code&gt;RoleSessionName&lt;/code&gt; that you specified when you called &lt;code&gt;AssumeRole&lt;/code&gt;. &lt;/p&gt;
-- @param Audience [Audience] &lt;p&gt;The intended audience (also known as client ID) of the web identity token. This is traditionally the client identifier issued to the application that requested the web identity token.&lt;/p&gt;
-- @param Provider [Issuer] &lt;p&gt; The issuing authority of the web identity token presented. For OpenID Connect ID Tokens this contains the value of the &lt;code&gt;iss&lt;/code&gt; field. For OAuth 2.0 access tokens, this contains the value of the &lt;code&gt;ProviderId&lt;/code&gt; parameter that was passed in the &lt;code&gt;AssumeRoleWithWebIdentity&lt;/code&gt; request.&lt;/p&gt;
-- @param SubjectFromWebIdentityToken [webIdentitySubjectType] &lt;p&gt;The unique user identifier that is returned by the identity provider. This identifier is associated with the &lt;code&gt;WebIdentityToken&lt;/code&gt; that was submitted with the &lt;code&gt;AssumeRoleWithWebIdentity&lt;/code&gt; call. The identifier is typically unique to the user and the application that acquired the &lt;code&gt;WebIdentityToken&lt;/code&gt; (pairwise identifier). For OpenID Connect ID tokens, this field contains the value returned by the identity provider as the token's &lt;code&gt;sub&lt;/code&gt; (Subject) claim. &lt;/p&gt;
-- @param Credentials [Credentials] &lt;p&gt;The temporary security credentials, which include an access key ID, a secret access key, and a security token.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.&lt;/p&gt;
function M.AssumeRoleWithWebIdentityResponse(PackedPolicySize, AssumedRoleUser, Audience, Provider, SubjectFromWebIdentityToken, Credentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithWebIdentityResponse")
	local t = { 
		["PackedPolicySize"] = PackedPolicySize,
		["AssumedRoleUser"] = AssumedRoleUser,
		["Audience"] = Audience,
		["Provider"] = Provider,
		["SubjectFromWebIdentityToken"] = SubjectFromWebIdentityToken,
		["Credentials"] = Credentials,
	}
	M.AssertAssumeRoleWithWebIdentityResponse(t)
	return t
end

local PackedPolicyTooLargeException_keys = { "message" = true, nil }

function M.AssertPackedPolicyTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PackedPolicyTooLargeException to be of type 'table'")
	if struct["message"] then M.AssertpackedPolicyTooLargeMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PackedPolicyTooLargeException_keys[k], "PackedPolicyTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PackedPolicyTooLargeException
-- &lt;p&gt;The request was rejected because the policy document was too large. The error message describes how big the policy document is, in packed form, as a percentage of what the API allows.&lt;/p&gt;
-- @param message [packedPolicyTooLargeMessage] &lt;p&gt;The request was rejected because the policy document was too large. The error message describes how big the policy document is, in packed form, as a percentage of what the API allows.&lt;/p&gt;
function M.PackedPolicyTooLargeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PackedPolicyTooLargeException")
	local t = { 
		["message"] = message,
	}
	M.AssertPackedPolicyTooLargeException(t)
	return t
end

local AssumedRoleUser_keys = { "AssumedRoleId" = true, "Arn" = true, nil }

function M.AssertAssumedRoleUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumedRoleUser to be of type 'table'")
	assert(struct["AssumedRoleId"], "Expected key AssumedRoleId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["AssumedRoleId"] then M.AssertassumedRoleIdType(struct["AssumedRoleId"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(AssumedRoleUser_keys[k], "AssumedRoleUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumedRoleUser
-- &lt;p&gt;The identifiers for the temporary security credentials that the operation returns.&lt;/p&gt;
-- @param AssumedRoleId [assumedRoleIdType] &lt;p&gt;A unique identifier that contains the role ID and the role session name of the role that is being assumed. The role ID is generated by AWS when the role is created.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;The ARN of the temporary security credentials that are returned from the &lt;a&gt;AssumeRole&lt;/a&gt; action. For more information about ARNs and how to use them in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in &lt;i&gt;Using IAM&lt;/i&gt;. &lt;/p&gt;
-- Required parameter: AssumedRoleId
-- Required parameter: Arn
function M.AssumedRoleUser(AssumedRoleId, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumedRoleUser")
	local t = { 
		["AssumedRoleId"] = AssumedRoleId,
		["Arn"] = Arn,
	}
	M.AssertAssumedRoleUser(t)
	return t
end

local FederatedUser_keys = { "FederatedUserId" = true, "Arn" = true, nil }

function M.AssertFederatedUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FederatedUser to be of type 'table'")
	assert(struct["FederatedUserId"], "Expected key FederatedUserId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["FederatedUserId"] then M.AssertfederatedIdType(struct["FederatedUserId"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(FederatedUser_keys[k], "FederatedUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FederatedUser
-- &lt;p&gt;Identifiers for the federated user that is associated with the credentials.&lt;/p&gt;
-- @param FederatedUserId [federatedIdType] &lt;p&gt;The string that identifies the federated user associated with the credentials, similar to the unique ID of an IAM user.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;The ARN that specifies the federated user that is associated with the credentials. For more information about ARNs and how to use them in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in &lt;i&gt;Using IAM&lt;/i&gt;. &lt;/p&gt;
-- Required parameter: FederatedUserId
-- Required parameter: Arn
function M.FederatedUser(FederatedUserId, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FederatedUser")
	local t = { 
		["FederatedUserId"] = FederatedUserId,
		["Arn"] = Arn,
	}
	M.AssertFederatedUser(t)
	return t
end

local MalformedPolicyDocumentException_keys = { "message" = true, nil }

function M.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["message"] then M.AssertmalformedPolicyDocumentMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MalformedPolicyDocumentException_keys[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- &lt;p&gt;The request was rejected because the policy document was malformed. The error message describes the specific error.&lt;/p&gt;
-- @param message [malformedPolicyDocumentMessage] &lt;p&gt;The request was rejected because the policy document was malformed. The error message describes the specific error.&lt;/p&gt;
function M.MalformedPolicyDocumentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyDocumentException")
	local t = { 
		["message"] = message,
	}
	M.AssertMalformedPolicyDocumentException(t)
	return t
end

local InvalidIdentityTokenException_keys = { "message" = true, nil }

function M.AssertInvalidIdentityTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdentityTokenException to be of type 'table'")
	if struct["message"] then M.AssertinvalidIdentityTokenMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidIdentityTokenException_keys[k], "InvalidIdentityTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdentityTokenException
-- &lt;p&gt;The web identity token that was passed could not be validated by AWS. Get a new identity token from the identity provider and then retry the request.&lt;/p&gt;
-- @param message [invalidIdentityTokenMessage] &lt;p&gt;The web identity token that was passed could not be validated by AWS. Get a new identity token from the identity provider and then retry the request.&lt;/p&gt;
function M.InvalidIdentityTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIdentityTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidIdentityTokenException(t)
	return t
end

local GetFederationTokenResponse_keys = { "FederatedUser" = true, "Credentials" = true, "PackedPolicySize" = true, nil }

function M.AssertGetFederationTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFederationTokenResponse to be of type 'table'")
	if struct["FederatedUser"] then M.AssertFederatedUser(struct["FederatedUser"]) end
	if struct["Credentials"] then M.AssertCredentials(struct["Credentials"]) end
	if struct["PackedPolicySize"] then M.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	for k,_ in pairs(struct) do
		assert(GetFederationTokenResponse_keys[k], "GetFederationTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFederationTokenResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetFederationToken&lt;/a&gt; request, including temporary AWS credentials that can be used to make AWS requests. &lt;/p&gt;
-- @param FederatedUser [FederatedUser] &lt;p&gt;Identifiers for the federated user associated with the credentials (such as &lt;code&gt;arn:aws:sts::123456789012:federated-user/Bob&lt;/code&gt; or &lt;code&gt;123456789012:Bob&lt;/code&gt;). You can use the federated user's ARN in your resource-based policies, such as an Amazon S3 bucket policy. &lt;/p&gt;
-- @param Credentials [Credentials] &lt;p&gt;The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.&lt;/p&gt;
-- @param PackedPolicySize [nonNegativeIntegerType] &lt;p&gt;A percentage value indicating the size of the policy in packed form. The service rejects policies for which the packed size is greater than 100 percent of the allowed value.&lt;/p&gt;
function M.GetFederationTokenResponse(FederatedUser, Credentials, PackedPolicySize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFederationTokenResponse")
	local t = { 
		["FederatedUser"] = FederatedUser,
		["Credentials"] = Credentials,
		["PackedPolicySize"] = PackedPolicySize,
	}
	M.AssertGetFederationTokenResponse(t)
	return t
end

local IDPRejectedClaimException_keys = { "message" = true, nil }

function M.AssertIDPRejectedClaimException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IDPRejectedClaimException to be of type 'table'")
	if struct["message"] then M.AssertidpRejectedClaimMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(IDPRejectedClaimException_keys[k], "IDPRejectedClaimException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IDPRejectedClaimException
-- &lt;p&gt;The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.&lt;/p&gt; &lt;p&gt;If this error is returned for the &lt;code&gt;AssumeRoleWithWebIdentity&lt;/code&gt; operation, it can also mean that the claim has expired or has been explicitly revoked. &lt;/p&gt;
-- @param message [idpRejectedClaimMessage] &lt;p&gt;The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid.&lt;/p&gt; &lt;p&gt;If this error is returned for the &lt;code&gt;AssumeRoleWithWebIdentity&lt;/code&gt; operation, it can also mean that the claim has expired or has been explicitly revoked. &lt;/p&gt;
function M.IDPRejectedClaimException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IDPRejectedClaimException")
	local t = { 
		["message"] = message,
	}
	M.AssertIDPRejectedClaimException(t)
	return t
end

local IDPCommunicationErrorException_keys = { "message" = true, nil }

function M.AssertIDPCommunicationErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IDPCommunicationErrorException to be of type 'table'")
	if struct["message"] then M.AssertidpCommunicationErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(IDPCommunicationErrorException_keys[k], "IDPCommunicationErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IDPCommunicationErrorException
-- &lt;p&gt;The request could not be fulfilled because the non-AWS identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the non-AWS identity provider might be down or not responding.&lt;/p&gt;
-- @param message [idpCommunicationErrorMessage] &lt;p&gt;The request could not be fulfilled because the non-AWS identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the non-AWS identity provider might be down or not responding.&lt;/p&gt;
function M.IDPCommunicationErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IDPCommunicationErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertIDPCommunicationErrorException(t)
	return t
end

local GetSessionTokenRequest_keys = { "DurationSeconds" = true, "SerialNumber" = true, "TokenCode" = true, nil }

function M.AssertGetSessionTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSessionTokenRequest to be of type 'table'")
	if struct["DurationSeconds"] then M.AssertdurationSecondsType(struct["DurationSeconds"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["TokenCode"] then M.AsserttokenCodeType(struct["TokenCode"]) end
	for k,_ in pairs(struct) do
		assert(GetSessionTokenRequest_keys[k], "GetSessionTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSessionTokenRequest
--  
-- @param DurationSeconds [durationSecondsType] &lt;p&gt;The duration, in seconds, that the credentials should remain valid. Acceptable durations for IAM user sessions range from 900 seconds (15 minutes) to 129600 seconds (36 hours), with 43200 seconds (12 hours) as the default. Sessions for AWS account owners are restricted to a maximum of 3600 seconds (one hour). If the duration is longer than one hour, the session for AWS account owners defaults to one hour.&lt;/p&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;The identification number of the MFA device that is associated with the IAM user who is making the &lt;code&gt;GetSessionToken&lt;/code&gt; call. Specify this value if the IAM user has a policy that requires MFA authentication. The value is either the serial number for a hardware device (such as &lt;code&gt;GAHT12345678&lt;/code&gt;) or an Amazon Resource Name (ARN) for a virtual device (such as &lt;code&gt;arn:aws:iam::123456789012:mfa/user&lt;/code&gt;). You can find the device for an IAM user by going to the AWS Management Console and viewing the user's security credentials. &lt;/p&gt; &lt;p&gt;The regex used to validated this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-&lt;/p&gt;
-- @param TokenCode [tokenCodeType] &lt;p&gt;The value provided by the MFA device, if MFA is required. If any policy requires the IAM user to submit an MFA code, specify this value. If MFA authentication is required, and the user does not provide a code when requesting a set of temporary security credentials, the user will receive an &quot;access denied&quot; response when requesting resources that require MFA authentication.&lt;/p&gt; &lt;p&gt;The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.&lt;/p&gt;
function M.GetSessionTokenRequest(DurationSeconds, SerialNumber, TokenCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSessionTokenRequest")
	local t = { 
		["DurationSeconds"] = DurationSeconds,
		["SerialNumber"] = SerialNumber,
		["TokenCode"] = TokenCode,
	}
	M.AssertGetSessionTokenRequest(t)
	return t
end

local Credentials_keys = { "SecretAccessKey" = true, "SessionToken" = true, "Expiration" = true, "AccessKeyId" = true, nil }

function M.AssertCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Credentials to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	assert(struct["SecretAccessKey"], "Expected key SecretAccessKey to exist in table")
	assert(struct["SessionToken"], "Expected key SessionToken to exist in table")
	assert(struct["Expiration"], "Expected key Expiration to exist in table")
	if struct["SecretAccessKey"] then M.AssertaccessKeySecretType(struct["SecretAccessKey"]) end
	if struct["SessionToken"] then M.AsserttokenType(struct["SessionToken"]) end
	if struct["Expiration"] then M.AssertdateType(struct["Expiration"]) end
	if struct["AccessKeyId"] then M.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(Credentials_keys[k], "Credentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Credentials
-- &lt;p&gt;AWS credentials for API authentication.&lt;/p&gt;
-- @param SecretAccessKey [accessKeySecretType] &lt;p&gt;The secret access key that can be used to sign requests.&lt;/p&gt;
-- @param SessionToken [tokenType] &lt;p&gt;The token that users must pass to the service API to use the temporary credentials.&lt;/p&gt;
-- @param Expiration [dateType] &lt;p&gt;The date on which the current credentials expire.&lt;/p&gt;
-- @param AccessKeyId [accessKeyIdType] &lt;p&gt;The access key ID that identifies the temporary security credentials.&lt;/p&gt;
-- Required parameter: AccessKeyId
-- Required parameter: SecretAccessKey
-- Required parameter: SessionToken
-- Required parameter: Expiration
function M.Credentials(SecretAccessKey, SessionToken, Expiration, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Credentials")
	local t = { 
		["SecretAccessKey"] = SecretAccessKey,
		["SessionToken"] = SessionToken,
		["Expiration"] = Expiration,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertCredentials(t)
	return t
end

local AssumeRoleRequest_keys = { "RoleSessionName" = true, "RoleArn" = true, "SerialNumber" = true, "DurationSeconds" = true, "ExternalId" = true, "TokenCode" = true, "Policy" = true, nil }

function M.AssertAssumeRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["RoleSessionName"], "Expected key RoleSessionName to exist in table")
	if struct["RoleSessionName"] then M.AssertroleSessionNameType(struct["RoleSessionName"]) end
	if struct["RoleArn"] then M.AssertarnType(struct["RoleArn"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["DurationSeconds"] then M.AssertroleDurationSecondsType(struct["DurationSeconds"]) end
	if struct["ExternalId"] then M.AssertexternalIdType(struct["ExternalId"]) end
	if struct["TokenCode"] then M.AsserttokenCodeType(struct["TokenCode"]) end
	if struct["Policy"] then M.AssertsessionPolicyDocumentType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(AssumeRoleRequest_keys[k], "AssumeRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleRequest
--  
-- @param RoleSessionName [roleSessionNameType] &lt;p&gt;An identifier for the assumed role session.&lt;/p&gt; &lt;p&gt;Use the role session name to uniquely identify a session when the same role is assumed by different principals or for different reasons. In cross-account scenarios, the role session name is visible to, and can be logged by the account that owns the role. The role session name is also used in the ARN of the assumed role principal. This means that subsequent cross-account API requests using the temporary security credentials will expose the role session name to the external account in their CloudTrail logs.&lt;/p&gt; &lt;p&gt;The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-&lt;/p&gt;
-- @param RoleArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the role to assume.&lt;/p&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;The identification number of the MFA device that is associated with the user who is making the &lt;code&gt;AssumeRole&lt;/code&gt; call. Specify this value if the trust policy of the role being assumed includes a condition that requires MFA authentication. The value is either the serial number for a hardware device (such as &lt;code&gt;GAHT12345678&lt;/code&gt;) or an Amazon Resource Name (ARN) for a virtual device (such as &lt;code&gt;arn:aws:iam::123456789012:mfa/user&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-&lt;/p&gt;
-- @param DurationSeconds [roleDurationSecondsType] &lt;p&gt;The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 3600 seconds (1 hour). By default, the value is set to 3600 seconds.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a &lt;code&gt;SessionDuration&lt;/code&gt; parameter that specifies the maximum length of the console session, separately from the &lt;code&gt;DurationSeconds&lt;/code&gt; parameter on this API. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html&quot;&gt;Creating a URL that Enables Federated Users to Access the AWS Management Console&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param ExternalId [externalIdType] &lt;p&gt;A unique identifier that is used by third parties when assuming roles in their customers' accounts. For each role that the third party can assume, they should instruct their customers to ensure the role's trust policy checks for the external ID that the third party generated. Each time the third party assumes the role, they should pass the customer's external ID. The external ID is useful in order to help third parties bind a role to the customer who created it. For more information about the external ID, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html&quot;&gt;How to Use an External ID When Granting Access to Your AWS Resources to a Third Party&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;The regex used to validated this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-&lt;/p&gt;
-- @param TokenCode [tokenCodeType] &lt;p&gt;The value provided by the MFA device, if the trust policy of the role being assumed requires MFA (that is, if the policy includes a condition that tests for MFA). If the role being assumed requires MFA and if the &lt;code&gt;TokenCode&lt;/code&gt; value is missing or expired, the &lt;code&gt;AssumeRole&lt;/code&gt; call returns an &quot;access denied&quot; error.&lt;/p&gt; &lt;p&gt;The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.&lt;/p&gt;
-- @param Policy [sessionPolicyDocumentType] &lt;p&gt;An IAM policy in JSON format.&lt;/p&gt; &lt;p&gt;This parameter is optional. If you pass a policy, the temporary security credentials that are returned by the operation have the permissions that are allowed by both (the intersection of) the access policy of the role that is being assumed, &lt;i&gt;and&lt;/i&gt; the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html&quot;&gt;Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: RoleArn
-- Required parameter: RoleSessionName
function M.AssumeRoleRequest(RoleSessionName, RoleArn, SerialNumber, DurationSeconds, ExternalId, TokenCode, Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleRequest")
	local t = { 
		["RoleSessionName"] = RoleSessionName,
		["RoleArn"] = RoleArn,
		["SerialNumber"] = SerialNumber,
		["DurationSeconds"] = DurationSeconds,
		["ExternalId"] = ExternalId,
		["TokenCode"] = TokenCode,
		["Policy"] = Policy,
	}
	M.AssertAssumeRoleRequest(t)
	return t
end

local DecodeAuthorizationMessageRequest_keys = { "EncodedMessage" = true, nil }

function M.AssertDecodeAuthorizationMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecodeAuthorizationMessageRequest to be of type 'table'")
	assert(struct["EncodedMessage"], "Expected key EncodedMessage to exist in table")
	if struct["EncodedMessage"] then M.AssertencodedMessageType(struct["EncodedMessage"]) end
	for k,_ in pairs(struct) do
		assert(DecodeAuthorizationMessageRequest_keys[k], "DecodeAuthorizationMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecodeAuthorizationMessageRequest
--  
-- @param EncodedMessage [encodedMessageType] &lt;p&gt;The encoded message that was returned with the response.&lt;/p&gt;
-- Required parameter: EncodedMessage
function M.DecodeAuthorizationMessageRequest(EncodedMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecodeAuthorizationMessageRequest")
	local t = { 
		["EncodedMessage"] = EncodedMessage,
	}
	M.AssertDecodeAuthorizationMessageRequest(t)
	return t
end

local GetSessionTokenResponse_keys = { "Credentials" = true, nil }

function M.AssertGetSessionTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSessionTokenResponse to be of type 'table'")
	if struct["Credentials"] then M.AssertCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(GetSessionTokenResponse_keys[k], "GetSessionTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSessionTokenResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetSessionToken&lt;/a&gt; request, including temporary AWS credentials that can be used to make AWS requests. &lt;/p&gt;
-- @param Credentials [Credentials] &lt;p&gt;The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.&lt;/p&gt;
function M.GetSessionTokenResponse(Credentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSessionTokenResponse")
	local t = { 
		["Credentials"] = Credentials,
	}
	M.AssertGetSessionTokenResponse(t)
	return t
end

local RegionDisabledException_keys = { "message" = true, nil }

function M.AssertRegionDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegionDisabledException to be of type 'table'")
	if struct["message"] then M.AssertregionDisabledMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RegionDisabledException_keys[k], "RegionDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegionDisabledException
-- &lt;p&gt;STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html&quot;&gt;Activating and Deactivating AWS STS in an AWS Region&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param message [regionDisabledMessage] &lt;p&gt;STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html&quot;&gt;Activating and Deactivating AWS STS in an AWS Region&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
function M.RegionDisabledException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegionDisabledException")
	local t = { 
		["message"] = message,
	}
	M.AssertRegionDisabledException(t)
	return t
end

local DecodeAuthorizationMessageResponse_keys = { "DecodedMessage" = true, nil }

function M.AssertDecodeAuthorizationMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecodeAuthorizationMessageResponse to be of type 'table'")
	if struct["DecodedMessage"] then M.AssertdecodedMessageType(struct["DecodedMessage"]) end
	for k,_ in pairs(struct) do
		assert(DecodeAuthorizationMessageResponse_keys[k], "DecodeAuthorizationMessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecodeAuthorizationMessageResponse
-- &lt;p&gt;A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an AWS request.&lt;/p&gt;
-- @param DecodedMessage [decodedMessageType] &lt;p&gt;An XML document that contains the decoded message.&lt;/p&gt;
function M.DecodeAuthorizationMessageResponse(DecodedMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecodeAuthorizationMessageResponse")
	local t = { 
		["DecodedMessage"] = DecodedMessage,
	}
	M.AssertDecodeAuthorizationMessageResponse(t)
	return t
end

local AssumeRoleWithSAMLResponse_keys = { "PackedPolicySize" = true, "SubjectType" = true, "AssumedRoleUser" = true, "Audience" = true, "NameQualifier" = true, "Credentials" = true, "Issuer" = true, "Subject" = true, nil }

function M.AssertAssumeRoleWithSAMLResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithSAMLResponse to be of type 'table'")
	if struct["PackedPolicySize"] then M.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	if struct["SubjectType"] then M.AssertSubjectType(struct["SubjectType"]) end
	if struct["AssumedRoleUser"] then M.AssertAssumedRoleUser(struct["AssumedRoleUser"]) end
	if struct["Audience"] then M.AssertAudience(struct["Audience"]) end
	if struct["NameQualifier"] then M.AssertNameQualifier(struct["NameQualifier"]) end
	if struct["Credentials"] then M.AssertCredentials(struct["Credentials"]) end
	if struct["Issuer"] then M.AssertIssuer(struct["Issuer"]) end
	if struct["Subject"] then M.AssertSubject(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(AssumeRoleWithSAMLResponse_keys[k], "AssumeRoleWithSAMLResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithSAMLResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;AssumeRoleWithSAML&lt;/a&gt; request, including temporary AWS credentials that can be used to make AWS requests. &lt;/p&gt;
-- @param PackedPolicySize [nonNegativeIntegerType] &lt;p&gt;A percentage value that indicates the size of the policy in packed form. The service rejects any policy with a packed size greater than 100 percent, which means the policy exceeded the allowed space.&lt;/p&gt;
-- @param SubjectType [SubjectType] &lt;p&gt; The format of the name ID, as defined by the &lt;code&gt;Format&lt;/code&gt; attribute in the &lt;code&gt;NameID&lt;/code&gt; element of the SAML assertion. Typical examples of the format are &lt;code&gt;transient&lt;/code&gt; or &lt;code&gt;persistent&lt;/code&gt;. &lt;/p&gt; &lt;p&gt; If the format includes the prefix &lt;code&gt;urn:oasis:names:tc:SAML:2.0:nameid-format&lt;/code&gt;, that prefix is removed. For example, &lt;code&gt;urn:oasis:names:tc:SAML:2.0:nameid-format:transient&lt;/code&gt; is returned as &lt;code&gt;transient&lt;/code&gt;. If the format includes any other prefix, the format is returned with no modifications.&lt;/p&gt;
-- @param AssumedRoleUser [AssumedRoleUser] &lt;p&gt;The identifiers for the temporary security credentials that the operation returns.&lt;/p&gt;
-- @param Audience [Audience] &lt;p&gt; The value of the &lt;code&gt;Recipient&lt;/code&gt; attribute of the &lt;code&gt;SubjectConfirmationData&lt;/code&gt; element of the SAML assertion. &lt;/p&gt;
-- @param NameQualifier [NameQualifier] &lt;p&gt;A hash value based on the concatenation of the &lt;code&gt;Issuer&lt;/code&gt; response value, the AWS account ID, and the friendly name (the last part of the ARN) of the SAML provider in IAM. The combination of &lt;code&gt;NameQualifier&lt;/code&gt; and &lt;code&gt;Subject&lt;/code&gt; can be used to uniquely identify a federated user. &lt;/p&gt; &lt;p&gt;The following pseudocode shows how the hash value is calculated:&lt;/p&gt; &lt;p&gt; &lt;code&gt;BASE64 ( SHA1 ( &quot;https://example.com/saml&quot; + &quot;123456789012&quot; + &quot;/MySAMLIdP&quot; ) )&lt;/code&gt; &lt;/p&gt;
-- @param Credentials [Credentials] &lt;p&gt;The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.&lt;/p&gt;
-- @param Issuer [Issuer] &lt;p&gt;The value of the &lt;code&gt;Issuer&lt;/code&gt; element of the SAML assertion.&lt;/p&gt;
-- @param Subject [Subject] &lt;p&gt;The value of the &lt;code&gt;NameID&lt;/code&gt; element in the &lt;code&gt;Subject&lt;/code&gt; element of the SAML assertion.&lt;/p&gt;
function M.AssumeRoleWithSAMLResponse(PackedPolicySize, SubjectType, AssumedRoleUser, Audience, NameQualifier, Credentials, Issuer, Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithSAMLResponse")
	local t = { 
		["PackedPolicySize"] = PackedPolicySize,
		["SubjectType"] = SubjectType,
		["AssumedRoleUser"] = AssumedRoleUser,
		["Audience"] = Audience,
		["NameQualifier"] = NameQualifier,
		["Credentials"] = Credentials,
		["Issuer"] = Issuer,
		["Subject"] = Subject,
	}
	M.AssertAssumeRoleWithSAMLResponse(t)
	return t
end

local GetCallerIdentityResponse_keys = { "Account" = true, "UserId" = true, "Arn" = true, nil }

function M.AssertGetCallerIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCallerIdentityResponse to be of type 'table'")
	if struct["Account"] then M.AssertaccountType(struct["Account"]) end
	if struct["UserId"] then M.AssertuserIdType(struct["UserId"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetCallerIdentityResponse_keys[k], "GetCallerIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCallerIdentityResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetCallerIdentity&lt;/a&gt; request, including information about the entity making the request.&lt;/p&gt;
-- @param Account [accountType] &lt;p&gt;The AWS account ID number of the account that owns or contains the calling entity.&lt;/p&gt;
-- @param UserId [userIdType] &lt;p&gt;The unique identifier of the calling entity. The exact value depends on the type of entity making the call. The values returned are those listed in the &lt;b&gt;aws:userid&lt;/b&gt; column in the &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable&quot;&gt;Principal table&lt;/a&gt; found on the &lt;b&gt;Policy Variables&lt;/b&gt; reference page in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;The AWS ARN associated with the calling entity.&lt;/p&gt;
function M.GetCallerIdentityResponse(Account, UserId, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCallerIdentityResponse")
	local t = { 
		["Account"] = Account,
		["UserId"] = UserId,
		["Arn"] = Arn,
	}
	M.AssertGetCallerIdentityResponse(t)
	return t
end

local AssumeRoleWithWebIdentityRequest_keys = { "RoleSessionName" = true, "RoleArn" = true, "WebIdentityToken" = true, "DurationSeconds" = true, "ProviderId" = true, "Policy" = true, nil }

function M.AssertAssumeRoleWithWebIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleWithWebIdentityRequest to be of type 'table'")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["RoleSessionName"], "Expected key RoleSessionName to exist in table")
	assert(struct["WebIdentityToken"], "Expected key WebIdentityToken to exist in table")
	if struct["RoleSessionName"] then M.AssertroleSessionNameType(struct["RoleSessionName"]) end
	if struct["RoleArn"] then M.AssertarnType(struct["RoleArn"]) end
	if struct["WebIdentityToken"] then M.AssertclientTokenType(struct["WebIdentityToken"]) end
	if struct["DurationSeconds"] then M.AssertroleDurationSecondsType(struct["DurationSeconds"]) end
	if struct["ProviderId"] then M.AsserturlType(struct["ProviderId"]) end
	if struct["Policy"] then M.AssertsessionPolicyDocumentType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(AssumeRoleWithWebIdentityRequest_keys[k], "AssumeRoleWithWebIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleWithWebIdentityRequest
--  
-- @param RoleSessionName [roleSessionNameType] &lt;p&gt;An identifier for the assumed role session. Typically, you pass the name or identifier that is associated with the user who is using your application. That way, the temporary security credentials that your application will use are associated with that user. This session name is included as part of the ARN and assumed role ID in the &lt;code&gt;AssumedRoleUser&lt;/code&gt; response element.&lt;/p&gt; &lt;p&gt;The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-&lt;/p&gt;
-- @param RoleArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the role that the caller is assuming.&lt;/p&gt;
-- @param WebIdentityToken [clientTokenType] &lt;p&gt;The OAuth 2.0 access token or OpenID Connect ID token that is provided by the identity provider. Your application must get this token by authenticating the user who is using your application with a web identity provider before the application makes an &lt;code&gt;AssumeRoleWithWebIdentity&lt;/code&gt; call. &lt;/p&gt;
-- @param DurationSeconds [roleDurationSecondsType] &lt;p&gt;The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 3600 seconds (1 hour). By default, the value is set to 3600 seconds.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This is separate from the duration of a console session that you might request using the returned credentials. The request to the federation endpoint for a console sign-in token takes a &lt;code&gt;SessionDuration&lt;/code&gt; parameter that specifies the maximum length of the console session, separately from the &lt;code&gt;DurationSeconds&lt;/code&gt; parameter on this API. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html&quot;&gt;Creating a URL that Enables Federated Users to Access the AWS Management Console&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param ProviderId [urlType] &lt;p&gt;The fully qualified host component of the domain name of the identity provider.&lt;/p&gt; &lt;p&gt;Specify this value only for OAuth 2.0 access tokens. Currently &lt;code&gt;www.amazon.com&lt;/code&gt; and &lt;code&gt;graph.facebook.com&lt;/code&gt; are the only supported identity providers for OAuth 2.0 access tokens. Do not include URL schemes and port numbers.&lt;/p&gt; &lt;p&gt;Do not specify this value for OpenID Connect ID tokens.&lt;/p&gt;
-- @param Policy [sessionPolicyDocumentType] &lt;p&gt;An IAM policy in JSON format.&lt;/p&gt; &lt;p&gt;The policy parameter is optional. If you pass a policy, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed, &lt;i&gt; &lt;b&gt;and&lt;/b&gt; &lt;/i&gt; the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_assumerole.html&quot;&gt;Permissions for AssumeRoleWithWebIdentity&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;. &lt;/p&gt; &lt;p&gt;The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: RoleArn
-- Required parameter: RoleSessionName
-- Required parameter: WebIdentityToken
function M.AssumeRoleWithWebIdentityRequest(RoleSessionName, RoleArn, WebIdentityToken, DurationSeconds, ProviderId, Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleWithWebIdentityRequest")
	local t = { 
		["RoleSessionName"] = RoleSessionName,
		["RoleArn"] = RoleArn,
		["WebIdentityToken"] = WebIdentityToken,
		["DurationSeconds"] = DurationSeconds,
		["ProviderId"] = ProviderId,
		["Policy"] = Policy,
	}
	M.AssertAssumeRoleWithWebIdentityRequest(t)
	return t
end

local InvalidAuthorizationMessageException_keys = { "message" = true, nil }

function M.AssertInvalidAuthorizationMessageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAuthorizationMessageException to be of type 'table'")
	if struct["message"] then M.AssertinvalidAuthorizationMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAuthorizationMessageException_keys[k], "InvalidAuthorizationMessageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAuthorizationMessageException
-- &lt;p&gt;The error returned if the message passed to &lt;code&gt;DecodeAuthorizationMessage&lt;/code&gt; was invalid. This can happen if the token contains invalid characters, such as linebreaks. &lt;/p&gt;
-- @param message [invalidAuthorizationMessage] &lt;p&gt;The error returned if the message passed to &lt;code&gt;DecodeAuthorizationMessage&lt;/code&gt; was invalid. This can happen if the token contains invalid characters, such as linebreaks. &lt;/p&gt;
function M.InvalidAuthorizationMessageException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAuthorizationMessageException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidAuthorizationMessageException(t)
	return t
end

local AssumeRoleResponse_keys = { "AssumedRoleUser" = true, "Credentials" = true, "PackedPolicySize" = true, nil }

function M.AssertAssumeRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssumeRoleResponse to be of type 'table'")
	if struct["AssumedRoleUser"] then M.AssertAssumedRoleUser(struct["AssumedRoleUser"]) end
	if struct["Credentials"] then M.AssertCredentials(struct["Credentials"]) end
	if struct["PackedPolicySize"] then M.AssertnonNegativeIntegerType(struct["PackedPolicySize"]) end
	for k,_ in pairs(struct) do
		assert(AssumeRoleResponse_keys[k], "AssumeRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssumeRoleResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;AssumeRole&lt;/a&gt; request, including temporary AWS credentials that can be used to make AWS requests. &lt;/p&gt;
-- @param AssumedRoleUser [AssumedRoleUser] &lt;p&gt;The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the &lt;code&gt;RoleSessionName&lt;/code&gt; that you specified when you called &lt;code&gt;AssumeRole&lt;/code&gt;. &lt;/p&gt;
-- @param Credentials [Credentials] &lt;p&gt;The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; The size of the security token that STS APIs return is not fixed. We strongly recommend that you make no assumptions about the maximum size. As of this writing, the typical size is less than 4096 bytes, but that can vary. Also, future updates to AWS might require larger sizes.&lt;/p&gt;
-- @param PackedPolicySize [nonNegativeIntegerType] &lt;p&gt;A percentage value that indicates the size of the policy in packed form. The service rejects any policy with a packed size greater than 100 percent, which means the policy exceeded the allowed space.&lt;/p&gt;
function M.AssumeRoleResponse(AssumedRoleUser, Credentials, PackedPolicySize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssumeRoleResponse")
	local t = { 
		["AssumedRoleUser"] = AssumedRoleUser,
		["Credentials"] = Credentials,
		["PackedPolicySize"] = PackedPolicySize,
	}
	M.AssertAssumeRoleResponse(t)
	return t
end

local GetFederationTokenRequest_keys = { "Policy" = true, "DurationSeconds" = true, "Name" = true, nil }

function M.AssertGetFederationTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFederationTokenRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Policy"] then M.AssertsessionPolicyDocumentType(struct["Policy"]) end
	if struct["DurationSeconds"] then M.AssertdurationSecondsType(struct["DurationSeconds"]) end
	if struct["Name"] then M.AssertuserNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetFederationTokenRequest_keys[k], "GetFederationTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFederationTokenRequest
--  
-- @param Policy [sessionPolicyDocumentType] &lt;p&gt;An IAM policy in JSON format that is passed with the &lt;code&gt;GetFederationToken&lt;/code&gt; call and evaluated along with the policy or policies that are attached to the IAM user whose credentials are used to call &lt;code&gt;GetFederationToken&lt;/code&gt;. The passed policy is used to scope down the permissions that are available to the IAM user, by allowing only a subset of the permissions that are granted to the IAM user. The passed policy cannot grant more permissions than those granted to the IAM user. The final permissions for the federated user are the most restrictive set based on the intersection of the passed policy and the IAM user policy.&lt;/p&gt; &lt;p&gt;If you do not pass a policy, the resulting temporary security credentials have no effective permissions. The only exception is when the temporary security credentials are used to access a resource that has a resource-based policy that specifically allows the federated user to access the resource.&lt;/p&gt; &lt;p&gt;The format for this parameter, as described by its regex pattern, is a string of characters up to 2048 characters in length. The characters can be any ASCII character from the space character to the end of the valid character list (\u0020-\u00FF). It can also include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D) characters.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The policy plain text must be 2048 bytes or shorter. However, an internal conversion compresses it into a packed binary format with a separate limit. The PackedPolicySize response element indicates by percentage how close to the upper size limit the policy is, with 100% equaling the maximum allowed size.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For more information about how permissions work, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getfederationtoken.html&quot;&gt;Permissions for GetFederationToken&lt;/a&gt;.&lt;/p&gt;
-- @param DurationSeconds [durationSecondsType] &lt;p&gt;The duration, in seconds, that the session should last. Acceptable durations for federation sessions range from 900 seconds (15 minutes) to 129600 seconds (36 hours), with 43200 seconds (12 hours) as the default. Sessions obtained using AWS account (root) credentials are restricted to a maximum of 3600 seconds (one hour). If the specified duration is longer than one hour, the session obtained by using AWS account (root) credentials defaults to one hour.&lt;/p&gt;
-- @param Name [userNameType] &lt;p&gt;The name of the federated user. The name is used as an identifier for the temporary security credentials (such as &lt;code&gt;Bob&lt;/code&gt;). For example, you can reference the federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.&lt;/p&gt; &lt;p&gt;The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: Name
function M.GetFederationTokenRequest(Policy, DurationSeconds, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFederationTokenRequest")
	local t = { 
		["Policy"] = Policy,
		["DurationSeconds"] = DurationSeconds,
		["Name"] = Name,
	}
	M.AssertGetFederationTokenRequest(t)
	return t
end

local GetCallerIdentityRequest_keys = { nil }

function M.AssertGetCallerIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCallerIdentityRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetCallerIdentityRequest_keys[k], "GetCallerIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCallerIdentityRequest
--  
function M.GetCallerIdentityRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCallerIdentityRequest")
	local t = { 
	}
	M.AssertGetCallerIdentityRequest(t)
	return t
end

function M.AssertarnType(str)
	assert(str)
	assert(type(str) == "string", "Expected arnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u007E%u0085%u00A0-%uD7FF%uE000-%uFFFD%u10000-%u10FFFF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u007E%u0085%u00A0-%uD7FF%uE000-%uFFFD%u10000-%u10FFFF]+'")
end

--  
function M.arnType(str)
	M.AssertarnType(str)
	return str
end

function M.AssertinvalidIdentityTokenMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidIdentityTokenMessage to be of type 'string'")
end

--  
function M.invalidIdentityTokenMessage(str)
	M.AssertinvalidIdentityTokenMessage(str)
	return str
end

function M.AssertdecodedMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected decodedMessageType to be of type 'string'")
end

--  
function M.decodedMessageType(str)
	M.AssertdecodedMessageType(str)
	return str
end

function M.AssertserialNumberType(str)
	assert(str)
	assert(type(str) == "string", "Expected serialNumberType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 9, "Expected string to be min 9 characters")
	assert(str:match("[%w+=/:,.@-]*"), "Expected string to match pattern '[%w+=/:,.@-]*'")
end

--  
function M.serialNumberType(str)
	M.AssertserialNumberType(str)
	return str
end

function M.AssertencodedMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected encodedMessageType to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.encodedMessageType(str)
	M.AssertencodedMessageType(str)
	return str
end

function M.AsserttokenCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected tokenCodeType to be of type 'string'")
	assert(#str <= 6, "Expected string to be max 6 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match("[%d]*"), "Expected string to match pattern '[%d]*'")
end

--  
function M.tokenCodeType(str)
	M.AsserttokenCodeType(str)
	return str
end

function M.AssertwebIdentitySubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected webIdentitySubjectType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.webIdentitySubjectType(str)
	M.AssertwebIdentitySubjectType(str)
	return str
end

function M.AsserttokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected tokenType to be of type 'string'")
end

--  
function M.tokenType(str)
	M.AsserttokenType(str)
	return str
end

function M.AssertexpiredIdentityTokenMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected expiredIdentityTokenMessage to be of type 'string'")
end

--  
function M.expiredIdentityTokenMessage(str)
	M.AssertexpiredIdentityTokenMessage(str)
	return str
end

function M.AssertSubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubjectType to be of type 'string'")
end

--  
function M.SubjectType(str)
	M.AssertSubjectType(str)
	return str
end

function M.AssertSAMLAssertionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SAMLAssertionType to be of type 'string'")
	assert(#str <= 50000, "Expected string to be max 50000 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.SAMLAssertionType(str)
	M.AssertSAMLAssertionType(str)
	return str
end

function M.AssertNameQualifier(str)
	assert(str)
	assert(type(str) == "string", "Expected NameQualifier to be of type 'string'")
end

--  
function M.NameQualifier(str)
	M.AssertNameQualifier(str)
	return str
end

function M.AssertclientTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected clientTokenType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.clientTokenType(str)
	M.AssertclientTokenType(str)
	return str
end

function M.AssertidpRejectedClaimMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected idpRejectedClaimMessage to be of type 'string'")
end

--  
function M.idpRejectedClaimMessage(str)
	M.AssertidpRejectedClaimMessage(str)
	return str
end

function M.AssertaccessKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected accessKeyIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
	assert(str:match("[%w]*"), "Expected string to match pattern '[%w]*'")
end

--  
function M.accessKeyIdType(str)
	M.AssertaccessKeyIdType(str)
	return str
end

function M.AssertroleSessionNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected roleSessionNameType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[%w+=,.@-]*"), "Expected string to match pattern '[%w+=,.@-]*'")
end

--  
function M.roleSessionNameType(str)
	M.AssertroleSessionNameType(str)
	return str
end

function M.AsserturlType(str)
	assert(str)
	assert(type(str) == "string", "Expected urlType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.urlType(str)
	M.AsserturlType(str)
	return str
end

function M.AssertsessionPolicyDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected sessionPolicyDocumentType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.sessionPolicyDocumentType(str)
	M.AssertsessionPolicyDocumentType(str)
	return str
end

function M.AssertregionDisabledMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected regionDisabledMessage to be of type 'string'")
end

--  
function M.regionDisabledMessage(str)
	M.AssertregionDisabledMessage(str)
	return str
end

function M.AssertmalformedPolicyDocumentMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected malformedPolicyDocumentMessage to be of type 'string'")
end

--  
function M.malformedPolicyDocumentMessage(str)
	M.AssertmalformedPolicyDocumentMessage(str)
	return str
end

function M.AssertexternalIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected externalIdType to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[%w+=,.@:%/-]*"), "Expected string to match pattern '[%w+=,.@:%/-]*'")
end

--  
function M.externalIdType(str)
	M.AssertexternalIdType(str)
	return str
end

function M.AssertidpCommunicationErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected idpCommunicationErrorMessage to be of type 'string'")
end

--  
function M.idpCommunicationErrorMessage(str)
	M.AssertidpCommunicationErrorMessage(str)
	return str
end

function M.AssertAudience(str)
	assert(str)
	assert(type(str) == "string", "Expected Audience to be of type 'string'")
end

--  
function M.Audience(str)
	M.AssertAudience(str)
	return str
end

function M.AssertaccountType(str)
	assert(str)
	assert(type(str) == "string", "Expected accountType to be of type 'string'")
end

--  
function M.accountType(str)
	M.AssertaccountType(str)
	return str
end

function M.AssertpackedPolicyTooLargeMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected packedPolicyTooLargeMessage to be of type 'string'")
end

--  
function M.packedPolicyTooLargeMessage(str)
	M.AssertpackedPolicyTooLargeMessage(str)
	return str
end

function M.AssertassumedRoleIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected assumedRoleIdType to be of type 'string'")
	assert(#str <= 193, "Expected string to be max 193 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[%w+=,.@:-]*"), "Expected string to match pattern '[%w+=,.@:-]*'")
end

--  
function M.assumedRoleIdType(str)
	M.AssertassumedRoleIdType(str)
	return str
end

function M.AssertuserIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected userIdType to be of type 'string'")
end

--  
function M.userIdType(str)
	M.AssertuserIdType(str)
	return str
end

function M.AssertuserNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected userNameType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[%w+=,.@-]*"), "Expected string to match pattern '[%w+=,.@-]*'")
end

--  
function M.userNameType(str)
	M.AssertuserNameType(str)
	return str
end

function M.AssertfederatedIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected federatedIdType to be of type 'string'")
	assert(#str <= 193, "Expected string to be max 193 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[%w+=,.@%:-]*"), "Expected string to match pattern '[%w+=,.@%:-]*'")
end

--  
function M.federatedIdType(str)
	M.AssertfederatedIdType(str)
	return str
end

function M.AssertinvalidAuthorizationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidAuthorizationMessage to be of type 'string'")
end

--  
function M.invalidAuthorizationMessage(str)
	M.AssertinvalidAuthorizationMessage(str)
	return str
end

function M.AssertaccessKeySecretType(str)
	assert(str)
	assert(type(str) == "string", "Expected accessKeySecretType to be of type 'string'")
end

--  
function M.accessKeySecretType(str)
	M.AssertaccessKeySecretType(str)
	return str
end

function M.AssertSubject(str)
	assert(str)
	assert(type(str) == "string", "Expected Subject to be of type 'string'")
end

--  
function M.Subject(str)
	M.AssertSubject(str)
	return str
end

function M.AssertIssuer(str)
	assert(str)
	assert(type(str) == "string", "Expected Issuer to be of type 'string'")
end

--  
function M.Issuer(str)
	M.AssertIssuer(str)
	return str
end

function M.AssertnonNegativeIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected nonNegativeIntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.nonNegativeIntegerType(integer)
	M.AssertnonNegativeIntegerType(integer)
	return integer
end

function M.AssertdurationSecondsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected durationSecondsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 129600, "Expected integer to be max 129600")
	assert(integer >= 900, "Expected integer to be min 900")
end

function M.durationSecondsType(integer)
	M.AssertdurationSecondsType(integer)
	return integer
end

function M.AssertroleDurationSecondsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected roleDurationSecondsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3600, "Expected integer to be max 3600")
	assert(integer >= 900, "Expected integer to be min 900")
end

function M.roleDurationSecondsType(integer)
	M.AssertroleDurationSecondsType(integer)
	return integer
end

function M.AssertdateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected dateType to be of type 'string'")
end

function M.dateType(timestamp)
	M.AssertdateType(timestamp)
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
--- GetFederationToken
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

--- AssumeRole
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

--- DecodeAuthorizationMessage
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

--- AssumeRoleWithWebIdentity
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

--- GetSessionToken
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

--- GetCallerIdentity
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

--- AssumeRoleWithSAML
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


return M
