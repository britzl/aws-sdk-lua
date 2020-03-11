--- GENERATED CODE - DO NOT MODIFY
-- Amazon Cognito Identity Provider (cognito-idp-2016-04-18)

local M = {}

M.metadata = {
	api_version = "2016-04-18",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cognito-idp",
	service_abbreviation = "",
	service_full_name = "Amazon Cognito Identity Provider",
	signature_version = "v4",
	target_prefix = "AWSCognitoIdentityProviderService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cognito-idp-2016-04-18",
}

local keys = {}
local asserts = {}

keys.GetIdentityProviderByIdentifierRequest = { ["IdpIdentifier"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertGetIdentityProviderByIdentifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityProviderByIdentifierRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["IdpIdentifier"], "Expected key IdpIdentifier to exist in table")
	if struct["IdpIdentifier"] then asserts.AssertIdpIdentifierType(struct["IdpIdentifier"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityProviderByIdentifierRequest[k], "GetIdentityProviderByIdentifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityProviderByIdentifierRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdpIdentifier [IdpIdentifierType] <p>The identity provider ID.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: IdpIdentifier
-- @return GetIdentityProviderByIdentifierRequest structure as a key-value pair table
function M.GetIdentityProviderByIdentifierRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityProviderByIdentifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdpIdentifier"] = args["IdpIdentifier"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetIdentityProviderByIdentifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserPoolDomainResponse = { ["CloudFrontDomain"] = true, nil }

function asserts.AssertCreateUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolDomainResponse to be of type 'table'")
	if struct["CloudFrontDomain"] then asserts.AssertDomainType(struct["CloudFrontDomain"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolDomainResponse[k], "CreateUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontDomain [DomainType] <p>The Amazon CloudFront endpoint that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.</p>
-- @return CreateUserPoolDomainResponse structure as a key-value pair table
function M.CreateUserPoolDomainResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserPoolDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudFrontDomain"] = args["CloudFrontDomain"],
	}
	asserts.AssertCreateUserPoolDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserAttributesResponse = { ["CodeDeliveryDetailsList"] = true, nil }

function asserts.AssertUpdateUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserAttributesResponse to be of type 'table'")
	if struct["CodeDeliveryDetailsList"] then asserts.AssertCodeDeliveryDetailsListType(struct["CodeDeliveryDetailsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserAttributesResponse[k], "UpdateUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserAttributesResponse
-- <p>Represents the response from the server for the request to update user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeDeliveryDetailsList [CodeDeliveryDetailsListType] <p>The code delivery details list from the server for the request to update user attributes.</p>
-- @return UpdateUserAttributesResponse structure as a key-value pair table
function M.UpdateUserAttributesResponse(args)
	assert(args, "You must provide an argument table when creating UpdateUserAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeDeliveryDetailsList"] = args["CodeDeliveryDetailsList"],
	}
	asserts.AssertUpdateUserAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDeleteUserAttributesRequest = { ["Username"] = true, ["UserAttributeNames"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminDeleteUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDeleteUserAttributesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributeNames"], "Expected key UserAttributeNames to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserAttributeNames"] then asserts.AssertAttributeNameListType(struct["UserAttributeNames"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminDeleteUserAttributesRequest[k], "AdminDeleteUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDeleteUserAttributesRequest
-- <p>Represents the request to delete user attributes as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user from which you would like to delete attributes.</p>
-- * UserAttributeNames [AttributeNameListType] <p>An array of strings representing the user attribute names you wish to delete.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete user attributes.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: UserAttributeNames
-- @return AdminDeleteUserAttributesRequest structure as a key-value pair table
function M.AdminDeleteUserAttributesRequest(args)
	assert(args, "You must provide an argument table when creating AdminDeleteUserAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserAttributeNames"] = args["UserAttributeNames"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDeleteUserAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminCreateUserRequest = { ["Username"] = true, ["MessageAction"] = true, ["UserPoolId"] = true, ["ValidationData"] = true, ["UserAttributes"] = true, ["ForceAliasCreation"] = true, ["TemporaryPassword"] = true, ["DesiredDeliveryMediums"] = true, nil }

function asserts.AssertAdminCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminCreateUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["MessageAction"] then asserts.AssertMessageActionType(struct["MessageAction"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ValidationData"] then asserts.AssertAttributeListType(struct["ValidationData"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["ForceAliasCreation"] then asserts.AssertForceAliasCreation(struct["ForceAliasCreation"]) end
	if struct["TemporaryPassword"] then asserts.AssertPasswordType(struct["TemporaryPassword"]) end
	if struct["DesiredDeliveryMediums"] then asserts.AssertDeliveryMediumListType(struct["DesiredDeliveryMediums"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminCreateUserRequest[k], "AdminCreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminCreateUserRequest
-- <p>Represents the request to create a user in the specified user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.</p>
-- * MessageAction [MessageActionType] <p>Set to <code>"RESEND"</code> to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to <code>"SUPPRESS"</code> to suppress sending the message. Only one value can be specified.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where the user will be created.</p>
-- * ValidationData [AttributeListType] <p>The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. For example, you might choose to allow or disallow user sign-up based on the user's domain.</p> <p>To configure custom validation, you must create a Pre Sign-up Lambda trigger for the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the validation data and uses it in the validation process.</p> <p>The user's validation data is not persisted.</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than <code>Username</code>. However, any attributes that you specify as required (in or in the <b>Attributes</b> tab of the console) must be supplied either by you (in your call to <code>AdminCreateUser</code>) or by the user (when he or she signs up in response to your welcome message).</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>To send a message inviting the user to sign up, you must specify the user's email address or phone number. This can be done in your call to AdminCreateUser or in the <b>Users</b> tab of the Amazon Cognito console for managing your user pools.</p> <p>In your call to <code>AdminCreateUser</code>, you can set the <code>email_verified</code> attribute to <code>True</code>, and you can set the <code>phone_number_verified</code> attribute to <code>True</code>. (You can also do this by calling .)</p> <ul> <li> <p> <b>email</b>: The email address of the user to whom the message that contains the code and username will be sent. Required if the <code>email_verified</code> attribute is set to <code>True</code>, or if <code>"EMAIL"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> <li> <p> <b>phone_number</b>: The phone number of the user to whom the message that contains the code and username will be sent. Required if the <code>phone_number_verified</code> attribute is set to <code>True</code>, or if <code>"SMS"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> </ul>
-- * ForceAliasCreation [ForceAliasCreation] <p>This parameter is only used if the <code>phone_number_verified</code> or <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is ignored.</p> <p>If this parameter is set to <code>True</code> and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias.</p> <p>If this parameter is set to <code>False</code>, the API throws an <code>AliasExistsException</code> error if the alias already exists. The default value is <code>False</code>.</p>
-- * TemporaryPassword [PasswordType] <p>The user's temporary password. This password must conform to the password policy that you specified when you created the user pool.</p> <p>The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins.</p> <p>This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you.</p> <p>The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the <code>MessageAction</code> parameter.</p>
-- * DesiredDeliveryMediums [DeliveryMediumListType] <p>Specify <code>"EMAIL"</code> if email will be used to send the welcome message. Specify <code>"SMS"</code> if the phone number will be used. The default value is <code>"SMS"</code>. More than one value can be specified.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminCreateUserRequest structure as a key-value pair table
function M.AdminCreateUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminCreateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["MessageAction"] = args["MessageAction"],
		["UserPoolId"] = args["UserPoolId"],
		["ValidationData"] = args["ValidationData"],
		["UserAttributes"] = args["UserAttributes"],
		["ForceAliasCreation"] = args["ForceAliasCreation"],
		["TemporaryPassword"] = args["TemporaryPassword"],
		["DesiredDeliveryMediums"] = args["DesiredDeliveryMediums"],
	}
	asserts.AssertAdminCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminSetUserMFAPreferenceRequest = { ["Username"] = true, ["SMSMfaSettings"] = true, ["UserPoolId"] = true, ["SoftwareTokenMfaSettings"] = true, nil }

function asserts.AssertAdminSetUserMFAPreferenceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminSetUserMFAPreferenceRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["SMSMfaSettings"] then asserts.AssertSMSMfaSettingsType(struct["SMSMfaSettings"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["SoftwareTokenMfaSettings"] then asserts.AssertSoftwareTokenMfaSettingsType(struct["SoftwareTokenMfaSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminSetUserMFAPreferenceRequest[k], "AdminSetUserMFAPreferenceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminSetUserMFAPreferenceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user pool username or alias.</p>
-- * SMSMfaSettings [SMSMfaSettingsType] <p>The SMS text message MFA settings.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * SoftwareTokenMfaSettings [SoftwareTokenMfaSettingsType] <p>The time-based one-time password software token MFA settings.</p>
-- Required key: Username
-- Required key: UserPoolId
-- @return AdminSetUserMFAPreferenceRequest structure as a key-value pair table
function M.AdminSetUserMFAPreferenceRequest(args)
	assert(args, "You must provide an argument table when creating AdminSetUserMFAPreferenceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["SMSMfaSettings"] = args["SMSMfaSettings"],
		["UserPoolId"] = args["UserPoolId"],
		["SoftwareTokenMfaSettings"] = args["SoftwareTokenMfaSettings"],
	}
	asserts.AssertAdminSetUserMFAPreferenceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolClientDescription = { ["ClientName"] = true, ["UserPoolId"] = true, ["ClientId"] = true, nil }

function asserts.AssertUserPoolClientDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolClientDescription to be of type 'table'")
	if struct["ClientName"] then asserts.AssertClientNameType(struct["ClientName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolClientDescription[k], "UserPoolClientDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolClientDescription
-- <p>The description of the user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientName [ClientNameType] <p>The client name from the user pool client description.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to describe the user pool client.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- @return UserPoolClientDescription structure as a key-value pair table
function M.UserPoolClientDescription(args)
	assert(args, "You must provide an argument table when creating UserPoolClientDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientName"] = args["ClientName"],
		["UserPoolId"] = args["UserPoolId"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertUserPoolClientDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChallengeResponseType = { ["ChallengeName"] = true, ["ChallengeResponse"] = true, nil }

function asserts.AssertChallengeResponseType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChallengeResponseType to be of type 'table'")
	if struct["ChallengeName"] then asserts.AssertChallengeName(struct["ChallengeName"]) end
	if struct["ChallengeResponse"] then asserts.AssertChallengeResponse(struct["ChallengeResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChallengeResponseType[k], "ChallengeResponseType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChallengeResponseType
-- <p>The challenge response type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChallengeName [ChallengeName] <p>The challenge name</p>
-- * ChallengeResponse [ChallengeResponse] <p>The challenge response.</p>
-- @return ChallengeResponseType structure as a key-value pair table
function M.ChallengeResponseType(args)
	assert(args, "You must provide an argument table when creating ChallengeResponseType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeResponse"] = args["ChallengeResponse"],
	}
	asserts.AssertChallengeResponseType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateResourceServerRequest = { ["Scopes"] = true, ["Identifier"] = true, ["Name"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertUpdateResourceServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResourceServerRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Identifier"], "Expected key Identifier to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Scopes"] then asserts.AssertResourceServerScopeListType(struct["Scopes"]) end
	if struct["Identifier"] then asserts.AssertResourceServerIdentifierType(struct["Identifier"]) end
	if struct["Name"] then asserts.AssertResourceServerNameType(struct["Name"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateResourceServerRequest[k], "UpdateResourceServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResourceServerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scopes [ResourceServerScopeListType] <p>The scope values to be set for the resource server.</p>
-- * Identifier [ResourceServerIdentifierType] <p>The identifier for the resource server.</p>
-- * Name [ResourceServerNameType] <p>The name of the resource server.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: Identifier
-- Required key: Name
-- @return UpdateResourceServerRequest structure as a key-value pair table
function M.UpdateResourceServerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateResourceServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scopes"] = args["Scopes"],
		["Identifier"] = args["Identifier"],
		["Name"] = args["Name"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertUpdateResourceServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["AccessToken"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
-- <p>Represents the request to delete a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessToken [TokenModelType] <p>The access token from a request to delete a user.</p>
-- Required key: AccessToken
-- @return DeleteUserRequest structure as a key-value pair table
function M.DeleteUserRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUICustomizationRequest = { ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertGetUICustomizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUICustomizationRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUICustomizationRequest[k], "GetUICustomizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUICustomizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientId [ClientIdType] <p>The client ID for the client app.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- @return GetUICustomizationRequest structure as a key-value pair table
function M.GetUICustomizationRequest(args)
	assert(args, "You must provide an argument table when creating GetUICustomizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetUICustomizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsMetadataType = { ["AnalyticsEndpointId"] = true, nil }

function asserts.AssertAnalyticsMetadataType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsMetadataType to be of type 'table'")
	if struct["AnalyticsEndpointId"] then asserts.AssertStringType(struct["AnalyticsEndpointId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsMetadataType[k], "AnalyticsMetadataType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsMetadataType
-- <p>An Amazon Pinpoint analytics endpoint.</p> <p>An endpoint uniquely identifies a mobile device, email address, or phone number that can receive messages from Amazon Pinpoint analytics.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalyticsEndpointId [StringType] <p>The endpoint ID.</p>
-- @return AnalyticsMetadataType structure as a key-value pair table
function M.AnalyticsMetadataType(args)
	assert(args, "You must provide an argument table when creating AnalyticsMetadataType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalyticsEndpointId"] = args["AnalyticsEndpointId"],
	}
	asserts.AssertAnalyticsMetadataType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminLinkProviderForUserRequest = { ["SourceUser"] = true, ["DestinationUser"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminLinkProviderForUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminLinkProviderForUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["DestinationUser"], "Expected key DestinationUser to exist in table")
	assert(struct["SourceUser"], "Expected key SourceUser to exist in table")
	if struct["SourceUser"] then asserts.AssertProviderUserIdentifierType(struct["SourceUser"]) end
	if struct["DestinationUser"] then asserts.AssertProviderUserIdentifierType(struct["DestinationUser"]) end
	if struct["UserPoolId"] then asserts.AssertStringType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminLinkProviderForUserRequest[k], "AdminLinkProviderForUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminLinkProviderForUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceUser [ProviderUserIdentifierType] <p>An external identity provider account for a user who does not currently exist yet in the user pool. This user must be a federated user (for example, a SAML or Facebook user), not another native user.</p> <p>If the <code>SourceUser</code> is a federated social identity provider user (Facebook, Google, or Login with Amazon), you must set the <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>. For social identity providers, the <code>ProviderName</code> will be <code>Facebook</code>, <code>Google</code>, or <code>LoginWithAmazon</code>, and Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for <code>id</code>, <code>sub</code>, and <code>user_id</code>, respectively. The <code>ProviderAttributeValue</code> for the user must be the same value as the <code>id</code>, <code>sub</code>, or <code>user_id</code> value found in the social identity provider token.</p> <p/> <p>For SAML, the <code>ProviderAttributeName</code> can be any value that matches a claim in the SAML assertion. If you wish to link SAML users based on the subject of the SAML assertion, you should map the subject to a claim through the SAML identity provider and submit that claim name as the <code>ProviderAttributeName</code>. If you set <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>, Cognito will automatically parse the default unique identifier found in the subject from the SAML token.</p>
-- * DestinationUser [ProviderUserIdentifierType] <p>The existing user in the user pool to be linked to the external identity provider user account. Can be a native (Username + Password) Cognito User Pools user or a federated user (for example, a SAML or Facebook user). If the user doesn't exist, an exception is thrown. This is the user that is returned when the new user (with the linked identity provider attribute) signs in.</p> <p>For a native username + password user, the <code>ProviderAttributeValue</code> for the <code>DestinationUser</code> should be the username in the user pool. For a federated user, it should be the provider-specific <code>user_id</code>.</p> <p>The <code>ProviderAttributeName</code> of the <code>DestinationUser</code> is ignored.</p> <p>The <code>ProviderName</code> should be set to <code>Cognito</code> for users in Cognito user pools.</p>
-- * UserPoolId [StringType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: DestinationUser
-- Required key: SourceUser
-- @return AdminLinkProviderForUserRequest structure as a key-value pair table
function M.AdminLinkProviderForUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminLinkProviderForUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceUser"] = args["SourceUser"],
		["DestinationUser"] = args["DestinationUser"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminLinkProviderForUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDeleteUserRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDeleteUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminDeleteUserRequest[k], "AdminDeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDeleteUserRequest
-- <p>Represents the request to delete a user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to delete.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete the user.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminDeleteUserRequest structure as a key-value pair table
function M.AdminDeleteUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminDeleteUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUserPoolMfaConfigResponse = { ["MfaConfiguration"] = true, ["SoftwareTokenMfaConfiguration"] = true, ["SmsMfaConfiguration"] = true, nil }

function asserts.AssertSetUserPoolMfaConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserPoolMfaConfigResponse to be of type 'table'")
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["SoftwareTokenMfaConfiguration"] then asserts.AssertSoftwareTokenMfaConfigType(struct["SoftwareTokenMfaConfiguration"]) end
	if struct["SmsMfaConfiguration"] then asserts.AssertSmsMfaConfigType(struct["SmsMfaConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetUserPoolMfaConfigResponse[k], "SetUserPoolMfaConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserPoolMfaConfigResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MfaConfiguration [UserPoolMfaType] <p>The MFA configuration.</p>
-- * SoftwareTokenMfaConfiguration [SoftwareTokenMfaConfigType] <p>The software token MFA configuration.</p>
-- * SmsMfaConfiguration [SmsMfaConfigType] <p>The SMS text message MFA configuration.</p>
-- @return SetUserPoolMfaConfigResponse structure as a key-value pair table
function M.SetUserPoolMfaConfigResponse(args)
	assert(args, "You must provide an argument table when creating SetUserPoolMfaConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MfaConfiguration"] = args["MfaConfiguration"],
		["SoftwareTokenMfaConfiguration"] = args["SoftwareTokenMfaConfiguration"],
		["SmsMfaConfiguration"] = args["SmsMfaConfiguration"],
	}
	asserts.AssertSetUserPoolMfaConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserPoolsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListUserPoolsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolsRequest to be of type 'table'")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPoolQueryLimitType(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserPoolsRequest[k], "ListUserPoolsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolsRequest
-- <p>Represents the request to list user pools.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKeyType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * MaxResults [PoolQueryLimitType] <p>The maximum number of results you want the request to return when listing the user pools.</p>
-- Required key: MaxResults
-- @return ListUserPoolsRequest structure as a key-value pair table
function M.ListUserPoolsRequest(args)
	assert(args, "You must provide an argument table when creating ListUserPoolsRequest")
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
	asserts.AssertListUserPoolsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateSoftwareTokenRequest = { ["Session"] = true, ["AccessToken"] = true, nil }

function asserts.AssertAssociateSoftwareTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateSoftwareTokenRequest to be of type 'table'")
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateSoftwareTokenRequest[k], "AssociateSoftwareTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateSoftwareTokenRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- @return AssociateSoftwareTokenRequest structure as a key-value pair table
function M.AssociateSoftwareTokenRequest(args)
	assert(args, "You must provide an argument table when creating AssociateSoftwareTokenRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Session"] = args["Session"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertAssociateSoftwareTokenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSigningCertificateResponse = { ["Certificate"] = true, nil }

function asserts.AssertGetSigningCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSigningCertificateResponse to be of type 'table'")
	if struct["Certificate"] then asserts.AssertStringType(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSigningCertificateResponse[k], "GetSigningCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSigningCertificateResponse
-- <p>Response from Cognito for a signing certificate request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [StringType] <p>The signing certificate.</p>
-- @return GetSigningCertificateResponse structure as a key-value pair table
function M.GetSigningCertificateResponse(args)
	assert(args, "You must provide an argument table when creating GetSigningCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertGetSigningCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PasswordPolicyType = { ["RequireLowercase"] = true, ["RequireSymbols"] = true, ["RequireNumbers"] = true, ["MinimumLength"] = true, ["RequireUppercase"] = true, nil }

function asserts.AssertPasswordPolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordPolicyType to be of type 'table'")
	if struct["RequireLowercase"] then asserts.AssertBooleanType(struct["RequireLowercase"]) end
	if struct["RequireSymbols"] then asserts.AssertBooleanType(struct["RequireSymbols"]) end
	if struct["RequireNumbers"] then asserts.AssertBooleanType(struct["RequireNumbers"]) end
	if struct["MinimumLength"] then asserts.AssertPasswordPolicyMinLengthType(struct["MinimumLength"]) end
	if struct["RequireUppercase"] then asserts.AssertBooleanType(struct["RequireUppercase"]) end
	for k,_ in pairs(struct) do
		assert(keys.PasswordPolicyType[k], "PasswordPolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordPolicyType
-- <p>The password policy type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequireLowercase [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one lowercase letter in their password.</p>
-- * RequireSymbols [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one symbol in their password.</p>
-- * RequireNumbers [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one number in their password.</p>
-- * MinimumLength [PasswordPolicyMinLengthType] <p>The minimum length of the password policy that you have set. Cannot be less than 6.</p>
-- * RequireUppercase [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one uppercase letter in their password.</p>
-- @return PasswordPolicyType structure as a key-value pair table
function M.PasswordPolicyType(args)
	assert(args, "You must provide an argument table when creating PasswordPolicyType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequireLowercase"] = args["RequireLowercase"],
		["RequireSymbols"] = args["RequireSymbols"],
		["RequireNumbers"] = args["RequireNumbers"],
		["MinimumLength"] = args["MinimumLength"],
		["RequireUppercase"] = args["RequireUppercase"],
	}
	asserts.AssertPasswordPolicyType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SmsMfaConfigType = { ["SmsAuthenticationMessage"] = true, ["SmsConfiguration"] = true, nil }

function asserts.AssertSmsMfaConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SmsMfaConfigType to be of type 'table'")
	if struct["SmsAuthenticationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["SmsConfiguration"] then asserts.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SmsMfaConfigType[k], "SmsMfaConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SmsMfaConfigType
-- <p>The SMS text message multi-factor authentication (MFA) configuration type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SmsAuthenticationMessage [SmsVerificationMessageType] <p>The SMS authentication message.</p>
-- * SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- @return SmsMfaConfigType structure as a key-value pair table
function M.SmsMfaConfigType(args)
	assert(args, "You must provide an argument table when creating SmsMfaConfigType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["SmsConfiguration"] = args["SmsConfiguration"],
	}
	asserts.AssertSmsMfaConfigType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChangePasswordRequest = { ["PreviousPassword"] = true, ["ProposedPassword"] = true, ["AccessToken"] = true, nil }

function asserts.AssertChangePasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangePasswordRequest to be of type 'table'")
	assert(struct["PreviousPassword"], "Expected key PreviousPassword to exist in table")
	assert(struct["ProposedPassword"], "Expected key ProposedPassword to exist in table")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["PreviousPassword"] then asserts.AssertPasswordType(struct["PreviousPassword"]) end
	if struct["ProposedPassword"] then asserts.AssertPasswordType(struct["ProposedPassword"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangePasswordRequest[k], "ChangePasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangePasswordRequest
-- <p>Represents the request to change a user password.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PreviousPassword [PasswordType] <p>The old password.</p>
-- * ProposedPassword [PasswordType] <p>The new password.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- Required key: PreviousPassword
-- Required key: ProposedPassword
-- Required key: AccessToken
-- @return ChangePasswordRequest structure as a key-value pair table
function M.ChangePasswordRequest(args)
	assert(args, "You must provide an argument table when creating ChangePasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PreviousPassword"] = args["PreviousPassword"],
		["ProposedPassword"] = args["ProposedPassword"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertChangePasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupsResponse = { ["NextToken"] = true, ["Groups"] = true, nil }

function asserts.AssertListGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Groups"] then asserts.AssertGroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsResponse[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Groups [GroupListType] <p>The group objects for the groups.</p>
-- @return ListGroupsResponse structure as a key-value pair table
function M.ListGroupsResponse(args)
	assert(args, "You must provide an argument table when creating ListGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertListGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserAttributesResponse = { nil }

function asserts.AssertDeleteUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserAttributesResponse[k], "DeleteUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserAttributesResponse
-- <p>Represents the response from the server to delete user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUserAttributesResponse structure as a key-value pair table
function M.DeleteUserAttributesResponse(args)
	assert(args, "You must provide an argument table when creating DeleteUserAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUserAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VerifySoftwareTokenResponse = { ["Status"] = true, ["Session"] = true, nil }

function asserts.AssertVerifySoftwareTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifySoftwareTokenResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertVerifySoftwareTokenResponseType(struct["Status"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifySoftwareTokenResponse[k], "VerifySoftwareTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifySoftwareTokenResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [VerifySoftwareTokenResponseType] <p>The status of the verify software token.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service.</p>
-- @return VerifySoftwareTokenResponse structure as a key-value pair table
function M.VerifySoftwareTokenResponse(args)
	assert(args, "You must provide an argument table when creating VerifySoftwareTokenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Session"] = args["Session"],
	}
	asserts.AssertVerifySoftwareTokenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForgetDeviceRequest = { ["DeviceKey"] = true, ["AccessToken"] = true, nil }

function asserts.AssertForgetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgetDeviceRequest to be of type 'table'")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForgetDeviceRequest[k], "ForgetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgetDeviceRequest
-- <p>Represents the request to forget the device.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * AccessToken [TokenModelType] <p>The access token for the forgotten device request.</p>
-- Required key: DeviceKey
-- @return ForgetDeviceRequest structure as a key-value pair table
function M.ForgetDeviceRequest(args)
	assert(args, "You must provide an argument table when creating ForgetDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceKey"] = args["DeviceKey"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertForgetDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForgotPasswordRequest = { ["Username"] = true, ["UserContextData"] = true, ["AnalyticsMetadata"] = true, ["SecretHash"] = true, ["ClientId"] = true, nil }

function asserts.AssertForgotPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgotPasswordRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForgotPasswordRequest[k], "ForgotPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgotPasswordRequest
-- <p>Represents the request to reset a user's password.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user for whom you want to enter a code to reset a forgotten password.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>ForgotPassword</code> calls.</p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required key: ClientId
-- Required key: Username
-- @return ForgotPasswordRequest structure as a key-value pair table
function M.ForgotPasswordRequest(args)
	assert(args, "You must provide an argument table when creating ForgotPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserContextData"] = args["UserContextData"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertForgotPasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminConfirmSignUpRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminConfirmSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminConfirmSignUpRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminConfirmSignUpRequest[k], "AdminConfirmSignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminConfirmSignUpRequest
-- <p>Represents the request to confirm user registration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name for which you want to confirm user registration.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for which you want to confirm user registration.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminConfirmSignUpRequest structure as a key-value pair table
function M.AdminConfirmSignUpRequest(args)
	assert(args, "You must provide an argument table when creating AdminConfirmSignUpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminConfirmSignUpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUpdateDeviceStatusRequest = { ["Username"] = true, ["DeviceKey"] = true, ["DeviceRememberedStatus"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminUpdateDeviceStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateDeviceStatusRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceRememberedStatus"] then asserts.AssertDeviceRememberedStatusType(struct["DeviceRememberedStatus"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminUpdateDeviceStatusRequest[k], "AdminUpdateDeviceStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateDeviceStatusRequest
-- <p>The request to update the device status, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name.</p>
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * DeviceRememberedStatus [DeviceRememberedStatusType] <p>The status indicating whether a device has been remembered or not.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: DeviceKey
-- @return AdminUpdateDeviceStatusRequest structure as a key-value pair table
function M.AdminUpdateDeviceStatusRequest(args)
	assert(args, "You must provide an argument table when creating AdminUpdateDeviceStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["DeviceKey"] = args["DeviceKey"],
		["DeviceRememberedStatus"] = args["DeviceRememberedStatus"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminUpdateDeviceStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateSoftwareTokenResponse = { ["SecretCode"] = true, ["Session"] = true, nil }

function asserts.AssertAssociateSoftwareTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateSoftwareTokenResponse to be of type 'table'")
	if struct["SecretCode"] then asserts.AssertSecretCodeType(struct["SecretCode"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateSoftwareTokenResponse[k], "AssociateSoftwareTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateSoftwareTokenResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretCode [SecretCodeType] <p>A unique generated shared secret code that is used in the TOTP algorithm to generate a one time code.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. This allows authentication of the user as part of the MFA setup process.</p>
-- @return AssociateSoftwareTokenResponse structure as a key-value pair table
function M.AssociateSoftwareTokenResponse(args)
	assert(args, "You must provide an argument table when creating AssociateSoftwareTokenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretCode"] = args["SecretCode"],
		["Session"] = args["Session"],
	}
	asserts.AssertAssociateSoftwareTokenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HttpHeader = { ["headerName"] = true, ["headerValue"] = true, nil }

function asserts.AssertHttpHeader(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HttpHeader to be of type 'table'")
	if struct["headerName"] then asserts.AssertStringType(struct["headerName"]) end
	if struct["headerValue"] then asserts.AssertStringType(struct["headerValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.HttpHeader[k], "HttpHeader contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HttpHeader
-- <p>The HTTP header.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * headerName [StringType] <p>The header name</p>
-- * headerValue [StringType] <p>The header value.</p>
-- @return HttpHeader structure as a key-value pair table
function M.HttpHeader(args)
	assert(args, "You must provide an argument table when creating HttpHeader")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["headerName"] = args["headerName"],
		["headerValue"] = args["headerValue"],
	}
	asserts.AssertHttpHeader(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGroupRequest = { ["GroupName"] = true, ["RoleArn"] = true, ["Precedence"] = true, ["Description"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["RoleArn"] then asserts.AssertArnType(struct["RoleArn"]) end
	if struct["Precedence"] then asserts.AssertPrecedenceType(struct["Precedence"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupRequest[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupNameType] <p>The name of the group. Must be unique.</p>
-- * RoleArn [ArnType] <p>The role ARN for the group.</p>
-- * Precedence [PrecedenceType] <p>A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. Zero is the highest precedence value. Groups with lower <code>Precedence</code> values take precedence over groups with higher or null <code>Precedence</code> values. If a user belongs to two or more groups, it is the group with the lowest precedence value whose role ARN will be used in the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the user's tokens.</p> <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither group takes precedence over the other. If two groups with the same <code>Precedence</code> have the same role ARN, that role is used in the <code>cognito:preferred_role</code> claim in tokens for users in each group. If the two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is not set in users' tokens.</p> <p>The default <code>Precedence</code> value is null.</p>
-- * Description [DescriptionType] <p>A string containing the description of the group.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: GroupName
-- Required key: UserPoolId
-- @return CreateGroupRequest structure as a key-value pair table
function M.CreateGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["RoleArn"] = args["RoleArn"],
		["Precedence"] = args["Precedence"],
		["Description"] = args["Description"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertCreateGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeDeliveryDetailsType = { ["AttributeName"] = true, ["Destination"] = true, ["DeliveryMedium"] = true, nil }

function asserts.AssertCodeDeliveryDetailsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeDeliveryDetailsType to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertAttributeNameType(struct["AttributeName"]) end
	if struct["Destination"] then asserts.AssertStringType(struct["Destination"]) end
	if struct["DeliveryMedium"] then asserts.AssertDeliveryMediumType(struct["DeliveryMedium"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeDeliveryDetailsType[k], "CodeDeliveryDetailsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeDeliveryDetailsType
-- <p>The code delivery details being returned from the server.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [AttributeNameType] <p>The attribute name.</p>
-- * Destination [StringType] <p>The destination for the code delivery details.</p>
-- * DeliveryMedium [DeliveryMediumType] <p>The delivery medium (email message or phone number).</p>
-- @return CodeDeliveryDetailsType structure as a key-value pair table
function M.CodeDeliveryDetailsType(args)
	assert(args, "You must provide an argument table when creating CodeDeliveryDetailsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["Destination"] = args["Destination"],
		["DeliveryMedium"] = args["DeliveryMedium"],
	}
	asserts.AssertCodeDeliveryDetailsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserPoolResponse = { nil }

function asserts.AssertUpdateUserPoolResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserPoolResponse[k], "UpdateUserPoolResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolResponse
-- <p>Represents the response from the server when you make a request to update the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateUserPoolResponse structure as a key-value pair table
function M.UpdateUserPoolResponse(args)
	assert(args, "You must provide an argument table when creating UpdateUserPoolResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateUserPoolResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserPoolMfaConfigResponse = { ["MfaConfiguration"] = true, ["SoftwareTokenMfaConfiguration"] = true, ["SmsMfaConfiguration"] = true, nil }

function asserts.AssertGetUserPoolMfaConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserPoolMfaConfigResponse to be of type 'table'")
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["SoftwareTokenMfaConfiguration"] then asserts.AssertSoftwareTokenMfaConfigType(struct["SoftwareTokenMfaConfiguration"]) end
	if struct["SmsMfaConfiguration"] then asserts.AssertSmsMfaConfigType(struct["SmsMfaConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserPoolMfaConfigResponse[k], "GetUserPoolMfaConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserPoolMfaConfigResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MfaConfiguration [UserPoolMfaType] <p>The multi-factor (MFA) configuration.</p>
-- * SoftwareTokenMfaConfiguration [SoftwareTokenMfaConfigType] <p>The software token multi-factor (MFA) configuration.</p>
-- * SmsMfaConfiguration [SmsMfaConfigType] <p>The SMS text message multi-factor (MFA) configuration.</p>
-- @return GetUserPoolMfaConfigResponse structure as a key-value pair table
function M.GetUserPoolMfaConfigResponse(args)
	assert(args, "You must provide an argument table when creating GetUserPoolMfaConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MfaConfiguration"] = args["MfaConfiguration"],
		["SoftwareTokenMfaConfiguration"] = args["SoftwareTokenMfaConfiguration"],
		["SmsMfaConfiguration"] = args["SmsMfaConfiguration"],
	}
	asserts.AssertGetUserPoolMfaConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeIdentityProviderRequest = { ["ProviderName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDescribeIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityProviderRequest[k], "DescribeIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: ProviderName
-- @return DescribeIdentityProviderRequest structure as a key-value pair table
function M.DescribeIdentityProviderRequest(args)
	assert(args, "You must provide an argument table when creating DescribeIdentityProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProviderName"] = args["ProviderName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeIdentityProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartUserImportJobRequest = { ["UserPoolId"] = true, ["JobId"] = true, nil }

function asserts.AssertStartUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartUserImportJobRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobId"] then asserts.AssertUserImportJobIdType(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartUserImportJobRequest[k], "StartUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartUserImportJobRequest
-- <p>Represents the request to start the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- * JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- Required key: UserPoolId
-- Required key: JobId
-- @return StartUserImportJobRequest structure as a key-value pair table
function M.StartUserImportJobRequest(args)
	assert(args, "You must provide an argument table when creating StartUserImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartUserImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourceServerResponse = { ["ResourceServer"] = true, nil }

function asserts.AssertDescribeResourceServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceServerResponse to be of type 'table'")
	assert(struct["ResourceServer"], "Expected key ResourceServer to exist in table")
	if struct["ResourceServer"] then asserts.AssertResourceServerType(struct["ResourceServer"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourceServerResponse[k], "DescribeResourceServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceServerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceServer [ResourceServerType] <p>The resource server.</p>
-- Required key: ResourceServer
-- @return DescribeResourceServerResponse structure as a key-value pair table
function M.DescribeResourceServerResponse(args)
	assert(args, "You must provide an argument table when creating DescribeResourceServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceServer"] = args["ResourceServer"],
	}
	asserts.AssertDescribeResourceServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCSVHeaderRequest = { ["UserPoolId"] = true, nil }

function asserts.AssertGetCSVHeaderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCSVHeaderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCSVHeaderRequest[k], "GetCSVHeaderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCSVHeaderRequest
-- <p>Represents the request to get the header information for the .csv file for the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are to be imported into.</p>
-- Required key: UserPoolId
-- @return GetCSVHeaderRequest structure as a key-value pair table
function M.GetCSVHeaderRequest(args)
	assert(args, "You must provide an argument table when creating GetCSVHeaderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetCSVHeaderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountTakeoverActionsType = { ["HighAction"] = true, ["LowAction"] = true, ["MediumAction"] = true, nil }

function asserts.AssertAccountTakeoverActionsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountTakeoverActionsType to be of type 'table'")
	if struct["HighAction"] then asserts.AssertAccountTakeoverActionType(struct["HighAction"]) end
	if struct["LowAction"] then asserts.AssertAccountTakeoverActionType(struct["LowAction"]) end
	if struct["MediumAction"] then asserts.AssertAccountTakeoverActionType(struct["MediumAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountTakeoverActionsType[k], "AccountTakeoverActionsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountTakeoverActionsType
-- <p>Account takeover actions type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HighAction [AccountTakeoverActionType] <p>Action to take for a high risk.</p>
-- * LowAction [AccountTakeoverActionType] <p>Action to take for a low risk.</p>
-- * MediumAction [AccountTakeoverActionType] <p>Action to take for a medium risk.</p>
-- @return AccountTakeoverActionsType structure as a key-value pair table
function M.AccountTakeoverActionsType(args)
	assert(args, "You must provide an argument table when creating AccountTakeoverActionsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HighAction"] = args["HighAction"],
		["LowAction"] = args["LowAction"],
		["MediumAction"] = args["MediumAction"],
	}
	asserts.AssertAccountTakeoverActionsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserAttributeVerificationCodeResponse = { ["CodeDeliveryDetails"] = true, nil }

function asserts.AssertGetUserAttributeVerificationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserAttributeVerificationCodeResponse to be of type 'table'")
	if struct["CodeDeliveryDetails"] then asserts.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserAttributeVerificationCodeResponse[k], "GetUserAttributeVerificationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserAttributeVerificationCodeResponse
-- <p>The verification code response returned by the server response to get the user attribute verification code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server in response to the request to get the user attribute verification code.</p>
-- @return GetUserAttributeVerificationCodeResponse structure as a key-value pair table
function M.GetUserAttributeVerificationCodeResponse(args)
	assert(args, "You must provide an argument table when creating GetUserAttributeVerificationCodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertGetUserAttributeVerificationCodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserPoolDomainResponse = { ["DomainDescription"] = true, nil }

function asserts.AssertDescribeUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolDomainResponse to be of type 'table'")
	if struct["DomainDescription"] then asserts.AssertDomainDescriptionType(struct["DomainDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserPoolDomainResponse[k], "DescribeUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DomainDescription [DomainDescriptionType] <p>A domain description object containing information about the domain.</p>
-- @return DescribeUserPoolDomainResponse structure as a key-value pair table
function M.DescribeUserPoolDomainResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserPoolDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DomainDescription"] = args["DomainDescription"],
	}
	asserts.AssertDescribeUserPoolDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGroupResponse = { ["Group"] = true, nil }

function asserts.AssertGetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupResponse to be of type 'table'")
	if struct["Group"] then asserts.AssertGroupType(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupResponse[k], "GetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [GroupType] <p>The group object for the group.</p>
-- @return GetGroupResponse structure as a key-value pair table
function M.GetGroupResponse(args)
	assert(args, "You must provide an argument table when creating GetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
	}
	asserts.AssertGetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeType = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertAttributeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeType to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertAttributeNameType(struct["Name"]) end
	if struct["Value"] then asserts.AssertAttributeValueType(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeType[k], "AttributeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeType
-- <p>Specifies whether the attribute is standard or custom.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [AttributeNameType] <p>The name of the attribute.</p>
-- * Value [AttributeValueType] <p>The value of the attribute.</p>
-- Required key: Name
-- @return AttributeType structure as a key-value pair table
function M.AttributeType(args)
	assert(args, "You must provide an argument table when creating AttributeType")
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
	asserts.AssertAttributeType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListIdentityProvidersRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListIdentityProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityProvidersRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListProvidersLimitType(struct["MaxResults"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityProvidersRequest[k], "ListIdentityProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityProvidersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKeyType] <p>A pagination token.</p>
-- * MaxResults [ListProvidersLimitType] <p>The maximum number of identity providers to return.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- @return ListIdentityProvidersRequest structure as a key-value pair table
function M.ListIdentityProvidersRequest(args)
	assert(args, "You must provide an argument table when creating ListIdentityProvidersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListIdentityProvidersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserPoolRequest = { ["UserPoolId"] = true, nil }

function asserts.AssertDescribeUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserPoolRequest[k], "DescribeUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolRequest
-- <p>Represents the request to describe the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to describe.</p>
-- Required key: UserPoolId
-- @return DescribeUserPoolRequest structure as a key-value pair table
function M.DescribeUserPoolRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserPoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeUserPoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminInitiateAuthRequest = { ["ContextData"] = true, ["UserPoolId"] = true, ["AnalyticsMetadata"] = true, ["AuthParameters"] = true, ["ClientId"] = true, ["AuthFlow"] = true, ["ClientMetadata"] = true, nil }

function asserts.AssertAdminInitiateAuthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminInitiateAuthRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["AuthFlow"], "Expected key AuthFlow to exist in table")
	if struct["ContextData"] then asserts.AssertContextDataType(struct["ContextData"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["AuthParameters"] then asserts.AssertAuthParametersType(struct["AuthParameters"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["AuthFlow"] then asserts.AssertAuthFlowType(struct["AuthFlow"]) end
	if struct["ClientMetadata"] then asserts.AssertClientMetadataType(struct["ClientMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminInitiateAuthRequest[k], "AdminInitiateAuthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminInitiateAuthRequest
-- <p>Initiates the authorization request, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContextData [ContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * UserPoolId [UserPoolIdType] <p>The ID of the Amazon Cognito user pool.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The analytics metadata for collecting Amazon Pinpoint metrics for <code>AdminInitiateAuth</code> calls.</p>
-- * AuthParameters [AuthParametersType] <p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>REFRESH_TOKEN</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>PASSWORD</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * AuthFlow [AuthFlowType] <p>The authentication flow for this call to execute. The API action will depend on this value. For example:</p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and <code>SRP_A</code> and return the SRP variables to be used for next challenge execution.</p> </li> <li> <p> <code>USER_PASSWORD_AUTH</code> will take in <code>USERNAME</code> and <code>PASSWORD</code> and return the next challenge or tokens.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.</p> </li> <li> <p> <code>USER_PASSWORD_AUTH</code>: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool. </p> </li> </ul>
-- * ClientMetadata [ClientMetadataType] <p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- Required key: AuthFlow
-- @return AdminInitiateAuthRequest structure as a key-value pair table
function M.AdminInitiateAuthRequest(args)
	assert(args, "You must provide an argument table when creating AdminInitiateAuthRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContextData"] = args["ContextData"],
		["UserPoolId"] = args["UserPoolId"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["AuthParameters"] = args["AuthParameters"],
		["ClientId"] = args["ClientId"],
		["AuthFlow"] = args["AuthFlow"],
		["ClientMetadata"] = args["ClientMetadata"],
	}
	asserts.AssertAdminInitiateAuthRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSigningCertificateRequest = { ["UserPoolId"] = true, nil }

function asserts.AssertGetSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSigningCertificateRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSigningCertificateRequest[k], "GetSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSigningCertificateRequest
-- <p>Request to get a signing certificate from Cognito.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- @return GetSigningCertificateRequest structure as a key-value pair table
function M.GetSigningCertificateRequest(args)
	assert(args, "You must provide an argument table when creating GetSigningCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetSigningCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminEnableUserResponse = { nil }

function asserts.AssertAdminEnableUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminEnableUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminEnableUserResponse[k], "AdminEnableUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminEnableUserResponse
-- <p>Represents the response from the server for the request to enable a user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminEnableUserResponse structure as a key-value pair table
function M.AdminEnableUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminEnableUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminEnableUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserAttributesRequest = { ["UserAttributeNames"] = true, ["AccessToken"] = true, nil }

function asserts.AssertDeleteUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserAttributesRequest to be of type 'table'")
	assert(struct["UserAttributeNames"], "Expected key UserAttributeNames to exist in table")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["UserAttributeNames"] then asserts.AssertAttributeNameListType(struct["UserAttributeNames"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserAttributesRequest[k], "DeleteUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserAttributesRequest
-- <p>Represents the request to delete user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserAttributeNames [AttributeNameListType] <p>An array of strings representing the user attribute names you wish to delete.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * AccessToken [TokenModelType] <p>The access token used in the request to delete user attributes.</p>
-- Required key: UserAttributeNames
-- Required key: AccessToken
-- @return DeleteUserAttributesRequest structure as a key-value pair table
function M.DeleteUserAttributesRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserAttributeNames"] = args["UserAttributeNames"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertDeleteUserAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventRiskType = { ["RiskLevel"] = true, ["RiskDecision"] = true, nil }

function asserts.AssertEventRiskType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventRiskType to be of type 'table'")
	if struct["RiskLevel"] then asserts.AssertRiskLevelType(struct["RiskLevel"]) end
	if struct["RiskDecision"] then asserts.AssertRiskDecisionType(struct["RiskDecision"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventRiskType[k], "EventRiskType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventRiskType
-- <p>The event risk type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RiskLevel [RiskLevelType] <p>The risk level.</p>
-- * RiskDecision [RiskDecisionType] <p>The risk decision.</p>
-- @return EventRiskType structure as a key-value pair table
function M.EventRiskType(args)
	assert(args, "You must provide an argument table when creating EventRiskType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RiskLevel"] = args["RiskLevel"],
		["RiskDecision"] = args["RiskDecision"],
	}
	asserts.AssertEventRiskType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateAuthResponse = { ["AuthenticationResult"] = true, ["ChallengeName"] = true, ["ChallengeParameters"] = true, ["Session"] = true, nil }

function asserts.AssertInitiateAuthResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateAuthResponse to be of type 'table'")
	if struct["AuthenticationResult"] then asserts.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then asserts.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateAuthResponse[k], "InitiateAuthResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateAuthResponse
-- <p>Initiates the authentication response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationResult [AuthenticationResultType] <p>The result of the authentication response. This is only returned if the caller does not need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>
-- * ChallengeName [ChallengeNameType] <p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <p>Valid values include the following. Note that all of these challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable) in the parameters.</p> <ul> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. These are returned to you in the <code>InitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>RespondToAuthChallenge</code>). </p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the or API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- @return InitiateAuthResponse structure as a key-value pair table
function M.InitiateAuthResponse(args)
	assert(args, "You must provide an argument table when creating InitiateAuthResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertInitiateAuthResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGroupRequest = { ["GroupName"] = true, ["RoleArn"] = true, ["Precedence"] = true, ["Description"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertUpdateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["RoleArn"] then asserts.AssertArnType(struct["RoleArn"]) end
	if struct["Precedence"] then asserts.AssertPrecedenceType(struct["Precedence"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupRequest[k], "UpdateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupNameType] <p>The name of the group.</p>
-- * RoleArn [ArnType] <p>The new role ARN for the group. This is used for setting the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the token.</p>
-- * Precedence [PrecedenceType] <p>The new precedence value for the group. For more information about this parameter, see .</p>
-- * Description [DescriptionType] <p>A string containing the new description of the group.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: GroupName
-- Required key: UserPoolId
-- @return UpdateGroupRequest structure as a key-value pair table
function M.UpdateGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["RoleArn"] = args["RoleArn"],
		["Precedence"] = args["Precedence"],
		["Description"] = args["Description"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertUpdateGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUserPoolMfaConfigRequest = { ["MfaConfiguration"] = true, ["SoftwareTokenMfaConfiguration"] = true, ["SmsMfaConfiguration"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertSetUserPoolMfaConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserPoolMfaConfigRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["SoftwareTokenMfaConfiguration"] then asserts.AssertSoftwareTokenMfaConfigType(struct["SoftwareTokenMfaConfiguration"]) end
	if struct["SmsMfaConfiguration"] then asserts.AssertSmsMfaConfigType(struct["SmsMfaConfiguration"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetUserPoolMfaConfigRequest[k], "SetUserPoolMfaConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserPoolMfaConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MfaConfiguration [UserPoolMfaType] <p>The MFA configuration.</p>
-- * SoftwareTokenMfaConfiguration [SoftwareTokenMfaConfigType] <p>The software token MFA configuration.</p>
-- * SmsMfaConfiguration [SmsMfaConfigType] <p>The SMS text message MFA configuration.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- @return SetUserPoolMfaConfigRequest structure as a key-value pair table
function M.SetUserPoolMfaConfigRequest(args)
	assert(args, "You must provide an argument table when creating SetUserPoolMfaConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MfaConfiguration"] = args["MfaConfiguration"],
		["SoftwareTokenMfaConfiguration"] = args["SoftwareTokenMfaConfiguration"],
		["SmsMfaConfiguration"] = args["SmsMfaConfiguration"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertSetUserPoolMfaConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SignUpRequest = { ["Username"] = true, ["ValidationData"] = true, ["SecretHash"] = true, ["UserContextData"] = true, ["UserAttributes"] = true, ["ClientId"] = true, ["AnalyticsMetadata"] = true, ["Password"] = true, nil }

function asserts.AssertSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignUpRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["ValidationData"] then asserts.AssertAttributeListType(struct["ValidationData"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["Password"] then asserts.AssertPasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignUpRequest[k], "SignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignUpRequest
-- <p>Represents the request to register a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to register.</p>
-- * ValidationData [AttributeListType] <p>The validation data in the request to register a user.</p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>SignUp</code> calls.</p>
-- * Password [PasswordType] <p>The password of the user you wish to register.</p>
-- Required key: ClientId
-- Required key: Username
-- Required key: Password
-- @return SignUpRequest structure as a key-value pair table
function M.SignUpRequest(args)
	assert(args, "You must provide an argument table when creating SignUpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["ValidationData"] = args["ValidationData"],
		["SecretHash"] = args["SecretHash"],
		["UserContextData"] = args["UserContextData"],
		["UserAttributes"] = args["UserAttributes"],
		["ClientId"] = args["ClientId"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["Password"] = args["Password"],
	}
	asserts.AssertSignUpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUserMFAPreferenceRequest = { ["SMSMfaSettings"] = true, ["AccessToken"] = true, ["SoftwareTokenMfaSettings"] = true, nil }

function asserts.AssertSetUserMFAPreferenceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserMFAPreferenceRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["SMSMfaSettings"] then asserts.AssertSMSMfaSettingsType(struct["SMSMfaSettings"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	if struct["SoftwareTokenMfaSettings"] then asserts.AssertSoftwareTokenMfaSettingsType(struct["SoftwareTokenMfaSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetUserMFAPreferenceRequest[k], "SetUserMFAPreferenceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserMFAPreferenceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SMSMfaSettings [SMSMfaSettingsType] <p>The SMS text message multi-factor authentication (MFA) settings.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- * SoftwareTokenMfaSettings [SoftwareTokenMfaSettingsType] <p>The time-based one-time password software token MFA settings.</p>
-- Required key: AccessToken
-- @return SetUserMFAPreferenceRequest structure as a key-value pair table
function M.SetUserMFAPreferenceRequest(args)
	assert(args, "You must provide an argument table when creating SetUserMFAPreferenceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SMSMfaSettings"] = args["SMSMfaSettings"],
		["AccessToken"] = args["AccessToken"],
		["SoftwareTokenMfaSettings"] = args["SoftwareTokenMfaSettings"],
	}
	asserts.AssertSetUserMFAPreferenceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIdentityProviderRequest = { ["UserPoolId"] = true, ["ProviderName"] = true, ["ProviderType"] = true, ["ProviderDetails"] = true, ["IdpIdentifiers"] = true, ["AttributeMapping"] = true, nil }

function asserts.AssertCreateIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	assert(struct["ProviderType"], "Expected key ProviderType to exist in table")
	assert(struct["ProviderDetails"], "Expected key ProviderDetails to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ProviderName"] then asserts.AssertProviderNameTypeV1(struct["ProviderName"]) end
	if struct["ProviderType"] then asserts.AssertIdentityProviderTypeType(struct["ProviderType"]) end
	if struct["ProviderDetails"] then asserts.AssertProviderDetailsType(struct["ProviderDetails"]) end
	if struct["IdpIdentifiers"] then asserts.AssertIdpIdentifiersListType(struct["IdpIdentifiers"]) end
	if struct["AttributeMapping"] then asserts.AssertAttributeMappingType(struct["AttributeMapping"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIdentityProviderRequest[k], "CreateIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIdentityProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * ProviderName [ProviderNameTypeV1] <p>The identity provider name.</p>
-- * ProviderType [IdentityProviderTypeType] <p>The identity provider type.</p>
-- * ProviderDetails [ProviderDetailsType] <p>The identity provider details, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>
-- * IdpIdentifiers [IdpIdentifiersListType] <p>A list of identity provider identifiers.</p>
-- * AttributeMapping [AttributeMappingType] <p>A mapping of identity provider attributes to standard and custom user pool attributes.</p>
-- Required key: UserPoolId
-- Required key: ProviderName
-- Required key: ProviderType
-- Required key: ProviderDetails
-- @return CreateIdentityProviderRequest structure as a key-value pair table
function M.CreateIdentityProviderRequest(args)
	assert(args, "You must provide an argument table when creating CreateIdentityProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["ProviderName"] = args["ProviderName"],
		["ProviderType"] = args["ProviderType"],
		["ProviderDetails"] = args["ProviderDetails"],
		["IdpIdentifiers"] = args["IdpIdentifiers"],
		["AttributeMapping"] = args["AttributeMapping"],
	}
	asserts.AssertCreateIdentityProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminAddUserToGroupRequest = { ["Username"] = true, ["GroupName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminAddUserToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminAddUserToGroupRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminAddUserToGroupRequest[k], "AdminAddUserToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminAddUserToGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The username for the user.</p>
-- * GroupName [GroupNameType] <p>The group name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: GroupName
-- @return AdminAddUserToGroupRequest structure as a key-value pair table
function M.AdminAddUserToGroupRequest(args)
	assert(args, "You must provide an argument table when creating AdminAddUserToGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminAddUserToGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompromisedCredentialsRiskConfigurationType = { ["EventFilter"] = true, ["Actions"] = true, nil }

function asserts.AssertCompromisedCredentialsRiskConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompromisedCredentialsRiskConfigurationType to be of type 'table'")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["EventFilter"] then asserts.AssertEventFiltersType(struct["EventFilter"]) end
	if struct["Actions"] then asserts.AssertCompromisedCredentialsActionsType(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompromisedCredentialsRiskConfigurationType[k], "CompromisedCredentialsRiskConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompromisedCredentialsRiskConfigurationType
-- <p>The compromised credentials risk configuration type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventFilter [EventFiltersType] <p>Perform the action for these events. The default is to perform all events if no event filter is specified.</p>
-- * Actions [CompromisedCredentialsActionsType] <p>The compromised credentials risk configuration actions.</p>
-- Required key: Actions
-- @return CompromisedCredentialsRiskConfigurationType structure as a key-value pair table
function M.CompromisedCredentialsRiskConfigurationType(args)
	assert(args, "You must provide an argument table when creating CompromisedCredentialsRiskConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventFilter"] = args["EventFilter"],
		["Actions"] = args["Actions"],
	}
	asserts.AssertCompromisedCredentialsRiskConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopUserImportJobResponse = { ["UserImportJob"] = true, nil }

function asserts.AssertStopUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then asserts.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopUserImportJobResponse[k], "StopUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopUserImportJobResponse
-- <p>Represents the response from the server to the request to stop the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
-- @return StopUserImportJobResponse structure as a key-value pair table
function M.StopUserImportJobResponse(args)
	assert(args, "You must provide an argument table when creating StopUserImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertStopUserImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProviderDescription = { ["LastModifiedDate"] = true, ["ProviderType"] = true, ["ProviderName"] = true, ["CreationDate"] = true, nil }

function asserts.AssertProviderDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProviderDescription to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ProviderType"] then asserts.AssertIdentityProviderTypeType(struct["ProviderType"]) end
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProviderDescription[k], "ProviderDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProviderDescription
-- <p>A container for identity provider details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [DateType] <p>The date the provider was last modified.</p>
-- * ProviderType [IdentityProviderTypeType] <p>The identity provider type.</p>
-- * ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- * CreationDate [DateType] <p>The date the provider was added to the user pool.</p>
-- @return ProviderDescription structure as a key-value pair table
function M.ProviderDescription(args)
	assert(args, "You must provide an argument table when creating ProviderDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ProviderType"] = args["ProviderType"],
		["ProviderName"] = args["ProviderName"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertProviderDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NewDeviceMetadataType = { ["DeviceKey"] = true, ["DeviceGroupKey"] = true, nil }

function asserts.AssertNewDeviceMetadataType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewDeviceMetadataType to be of type 'table'")
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceGroupKey"] then asserts.AssertStringType(struct["DeviceGroupKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.NewDeviceMetadataType[k], "NewDeviceMetadataType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewDeviceMetadataType
-- <p>The new device metadata type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * DeviceGroupKey [StringType] <p>The device group key.</p>
-- @return NewDeviceMetadataType structure as a key-value pair table
function M.NewDeviceMetadataType(args)
	assert(args, "You must provide an argument table when creating NewDeviceMetadataType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceKey"] = args["DeviceKey"],
		["DeviceGroupKey"] = args["DeviceGroupKey"],
	}
	asserts.AssertNewDeviceMetadataType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminListDevicesRequest = { ["Username"] = true, ["PaginationToken"] = true, ["Limit"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListDevicesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["PaginationToken"] then asserts.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Limit"] then asserts.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminListDevicesRequest[k], "AdminListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListDevicesRequest
-- <p>Represents the request to list devices, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name.</p>
-- * PaginationToken [SearchPaginationTokenType] <p>The pagination token.</p>
-- * Limit [QueryLimitType] <p>The limit of the devices request.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminListDevicesRequest structure as a key-value pair table
function M.AdminListDevicesRequest(args)
	assert(args, "You must provide an argument table when creating AdminListDevicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["PaginationToken"] = args["PaginationToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminListDevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolDescriptionType = { ["Status"] = true, ["Name"] = true, ["LastModifiedDate"] = true, ["CreationDate"] = true, ["Id"] = true, ["LambdaConfig"] = true, nil }

function asserts.AssertUserPoolDescriptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolDescriptionType to be of type 'table'")
	if struct["Status"] then asserts.AssertStatusType(struct["Status"]) end
	if struct["Name"] then asserts.AssertUserPoolNameType(struct["Name"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["Id"] then asserts.AssertUserPoolIdType(struct["Id"]) end
	if struct["LambdaConfig"] then asserts.AssertLambdaConfigType(struct["LambdaConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolDescriptionType[k], "UserPoolDescriptionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolDescriptionType
-- <p>A user pool description.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StatusType] <p>The user pool status in a user pool description.</p>
-- * Name [UserPoolNameType] <p>The name in a user pool description.</p>
-- * LastModifiedDate [DateType] <p>The date the user pool description was last modified.</p>
-- * CreationDate [DateType] <p>The date the user pool description was created.</p>
-- * Id [UserPoolIdType] <p>The ID in a user pool description.</p>
-- * LambdaConfig [LambdaConfigType] <p>The AWS Lambda configuration information in a user pool description.</p>
-- @return UserPoolDescriptionType structure as a key-value pair table
function M.UserPoolDescriptionType(args)
	assert(args, "You must provide an argument table when creating UserPoolDescriptionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["CreationDate"] = args["CreationDate"],
		["Id"] = args["Id"],
		["LambdaConfig"] = args["LambdaConfig"],
	}
	asserts.AssertUserPoolDescriptionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDeleteUserAttributesResponse = { nil }

function asserts.AssertAdminDeleteUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDeleteUserAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminDeleteUserAttributesResponse[k], "AdminDeleteUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDeleteUserAttributesResponse
-- <p>Represents the response received from the server for a request to delete user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminDeleteUserAttributesResponse structure as a key-value pair table
function M.AdminDeleteUserAttributesResponse(args)
	assert(args, "You must provide an argument table when creating AdminDeleteUserAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminDeleteUserAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUserGlobalSignOutRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminUserGlobalSignOutRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUserGlobalSignOutRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminUserGlobalSignOutRequest[k], "AdminUserGlobalSignOutRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUserGlobalSignOutRequest
-- <p>The request to sign out of all devices, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminUserGlobalSignOutRequest structure as a key-value pair table
function M.AdminUserGlobalSignOutRequest(args)
	assert(args, "You must provide an argument table when creating AdminUserGlobalSignOutRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminUserGlobalSignOutRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminResetUserPasswordRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminResetUserPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminResetUserPasswordRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminResetUserPasswordRequest[k], "AdminResetUserPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminResetUserPasswordRequest
-- <p>Represents the request to reset a user's password as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user whose password you wish to reset.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to reset the user's password.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminResetUserPasswordRequest structure as a key-value pair table
function M.AdminResetUserPasswordRequest(args)
	assert(args, "You must provide an argument table when creating AdminResetUserPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminResetUserPasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserPoolDomainRequest = { ["Domain"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDeleteUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserPoolDomainRequest[k], "DeleteUserPoolDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolDomainRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [DomainType] <p>The domain string.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: Domain
-- Required key: UserPoolId
-- @return DeleteUserPoolDomainRequest structure as a key-value pair table
function M.DeleteUserPoolDomainRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserPoolDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteUserPoolDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VerifyUserAttributeRequest = { ["Code"] = true, ["AttributeName"] = true, ["AccessToken"] = true, nil }

function asserts.AssertVerifyUserAttributeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyUserAttributeRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["Code"] then asserts.AssertConfirmationCodeType(struct["Code"]) end
	if struct["AttributeName"] then asserts.AssertAttributeNameType(struct["AttributeName"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyUserAttributeRequest[k], "VerifyUserAttributeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyUserAttributeRequest
-- <p>Represents the request to verify user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [ConfirmationCodeType] <p>The verification code in the request to verify user attributes.</p>
-- * AttributeName [AttributeNameType] <p>The attribute name in the request to verify user attributes.</p>
-- * AccessToken [TokenModelType] <p>Represents the access token of the request to verify user attributes.</p>
-- Required key: AccessToken
-- Required key: AttributeName
-- Required key: Code
-- @return VerifyUserAttributeRequest structure as a key-value pair table
function M.VerifyUserAttributeRequest(args)
	assert(args, "You must provide an argument table when creating VerifyUserAttributeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
		["AttributeName"] = args["AttributeName"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertVerifyUserAttributeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddCustomAttributesResponse = { nil }

function asserts.AssertAddCustomAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCustomAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddCustomAttributesResponse[k], "AddCustomAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCustomAttributesResponse
-- <p>Represents the response from the server for the request to add custom attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddCustomAttributesResponse structure as a key-value pair table
function M.AddCustomAttributesResponse(args)
	assert(args, "You must provide an argument table when creating AddCustomAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddCustomAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VerifySoftwareTokenRequest = { ["FriendlyDeviceName"] = true, ["Session"] = true, ["UserCode"] = true, ["AccessToken"] = true, nil }

function asserts.AssertVerifySoftwareTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifySoftwareTokenRequest to be of type 'table'")
	assert(struct["UserCode"], "Expected key UserCode to exist in table")
	if struct["FriendlyDeviceName"] then asserts.AssertStringType(struct["FriendlyDeviceName"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	if struct["UserCode"] then asserts.AssertSoftwareTokenMFAUserCodeType(struct["UserCode"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifySoftwareTokenRequest[k], "VerifySoftwareTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifySoftwareTokenRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FriendlyDeviceName [StringType] <p>The friendly device name.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service.</p>
-- * UserCode [SoftwareTokenMFAUserCodeType] <p>The one time password computed using the secret code returned by </p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- Required key: UserCode
-- @return VerifySoftwareTokenRequest structure as a key-value pair table
function M.VerifySoftwareTokenRequest(args)
	assert(args, "You must provide an argument table when creating VerifySoftwareTokenRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FriendlyDeviceName"] = args["FriendlyDeviceName"],
		["Session"] = args["Session"],
		["UserCode"] = args["UserCode"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertVerifySoftwareTokenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmDeviceResponse = { ["UserConfirmationNecessary"] = true, nil }

function asserts.AssertConfirmDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmDeviceResponse to be of type 'table'")
	if struct["UserConfirmationNecessary"] then asserts.AssertBooleanType(struct["UserConfirmationNecessary"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmDeviceResponse[k], "ConfirmDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmDeviceResponse
-- <p>Confirms the device response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserConfirmationNecessary [BooleanType] <p>Indicates whether the user confirmation is necessary to confirm the device response.</p>
-- @return ConfirmDeviceResponse structure as a key-value pair table
function M.ConfirmDeviceResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserConfirmationNecessary"] = args["UserConfirmationNecessary"],
	}
	asserts.AssertConfirmDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUserSettingsResponse = { nil }

function asserts.AssertSetUserSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetUserSettingsResponse[k], "SetUserSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserSettingsResponse
-- <p>The response from the server for a set user settings request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetUserSettingsResponse structure as a key-value pair table
function M.SetUserSettingsResponse(args)
	assert(args, "You must provide an argument table when creating SetUserSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetUserSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUpdateUserAttributesRequest = { ["Username"] = true, ["UserAttributes"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminUpdateUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateUserAttributesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminUpdateUserAttributesRequest[k], "AdminUpdateUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateUserAttributesRequest
-- <p>Represents the request to update the user's attributes as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user for whom you want to update user attributes.</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to update user attributes.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: UserAttributes
-- @return AdminUpdateUserAttributesRequest structure as a key-value pair table
function M.AdminUpdateUserAttributesRequest(args)
	assert(args, "You must provide an argument table when creating AdminUpdateUserAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserAttributes"] = args["UserAttributes"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminUpdateUserAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDisableProviderForUserRequest = { ["User"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminDisableProviderForUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDisableProviderForUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["User"], "Expected key User to exist in table")
	if struct["User"] then asserts.AssertProviderUserIdentifierType(struct["User"]) end
	if struct["UserPoolId"] then asserts.AssertStringType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminDisableProviderForUserRequest[k], "AdminDisableProviderForUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDisableProviderForUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [ProviderUserIdentifierType] <p>The user to be disabled.</p>
-- * UserPoolId [StringType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: User
-- @return AdminDisableProviderForUserRequest structure as a key-value pair table
function M.AdminDisableProviderForUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminDisableProviderForUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDisableProviderForUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIdentityProviderResponse = { ["IdentityProvider"] = true, nil }

function asserts.AssertCreateIdentityProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIdentityProviderResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then asserts.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIdentityProviderResponse[k], "CreateIdentityProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIdentityProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityProvider [IdentityProviderType] <p>The newly created identity provider object.</p>
-- Required key: IdentityProvider
-- @return CreateIdentityProviderResponse structure as a key-value pair table
function M.CreateIdentityProviderResponse(args)
	assert(args, "You must provide an argument table when creating CreateIdentityProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertCreateIdentityProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SoftwareTokenMfaConfigType = { ["Enabled"] = true, nil }

function asserts.AssertSoftwareTokenMfaConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SoftwareTokenMfaConfigType to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.SoftwareTokenMfaConfigType[k], "SoftwareTokenMfaConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SoftwareTokenMfaConfigType
-- <p>The type used for enabling software token MFA at the user pool level.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [BooleanType] <p>Specifies whether software token MFA is enabled.</p>
-- @return SoftwareTokenMfaConfigType structure as a key-value pair table
function M.SoftwareTokenMfaConfigType(args)
	assert(args, "You must provide an argument table when creating SoftwareTokenMfaConfigType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertSoftwareTokenMfaConfigType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserType = { ["Username"] = true, ["MFAOptions"] = true, ["Enabled"] = true, ["UserStatus"] = true, ["UserCreateDate"] = true, ["UserLastModifiedDate"] = true, ["Attributes"] = true, nil }

function asserts.AssertUserType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserType to be of type 'table'")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["UserStatus"] then asserts.AssertUserStatusType(struct["UserStatus"]) end
	if struct["UserCreateDate"] then asserts.AssertDateType(struct["UserCreateDate"]) end
	if struct["UserLastModifiedDate"] then asserts.AssertDateType(struct["UserLastModifiedDate"]) end
	if struct["Attributes"] then asserts.AssertAttributeListType(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserType[k], "UserType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserType
-- <p>The user type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to describe.</p>
-- * MFAOptions [MFAOptionListType] <p>The MFA options for the user.</p>
-- * Enabled [BooleanType] <p>Specifies whether the user is enabled.</p>
-- * UserStatus [UserStatusType] <p>The user status. Can be one of the following:</p> <ul> <li> <p>UNCONFIRMED - User has been created but not confirmed.</p> </li> <li> <p>CONFIRMED - User has been confirmed.</p> </li> <li> <p>ARCHIVED - User is no longer active.</p> </li> <li> <p>COMPROMISED - User is disabled due to a potential security threat.</p> </li> <li> <p>UNKNOWN - User status is not known.</p> </li> </ul>
-- * UserCreateDate [DateType] <p>The creation date of the user.</p>
-- * UserLastModifiedDate [DateType] <p>The last modified date of the user.</p>
-- * Attributes [AttributeListType] <p>A container with information about the user type attributes.</p>
-- @return UserType structure as a key-value pair table
function M.UserType(args)
	assert(args, "You must provide an argument table when creating UserType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["Enabled"] = args["Enabled"],
		["UserStatus"] = args["UserStatus"],
		["UserCreateDate"] = args["UserCreateDate"],
		["UserLastModifiedDate"] = args["UserLastModifiedDate"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertUserType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RiskConfigurationType = { ["UserPoolId"] = true, ["LastModifiedDate"] = true, ["ClientId"] = true, ["CompromisedCredentialsRiskConfiguration"] = true, ["AccountTakeoverRiskConfiguration"] = true, ["RiskExceptionConfiguration"] = true, nil }

function asserts.AssertRiskConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RiskConfigurationType to be of type 'table'")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["CompromisedCredentialsRiskConfiguration"] then asserts.AssertCompromisedCredentialsRiskConfigurationType(struct["CompromisedCredentialsRiskConfiguration"]) end
	if struct["AccountTakeoverRiskConfiguration"] then asserts.AssertAccountTakeoverRiskConfigurationType(struct["AccountTakeoverRiskConfiguration"]) end
	if struct["RiskExceptionConfiguration"] then asserts.AssertRiskExceptionConfigurationType(struct["RiskExceptionConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.RiskConfigurationType[k], "RiskConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RiskConfigurationType
-- <p>The risk configuration type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * LastModifiedDate [DateType] <p>The last modified date.</p>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * CompromisedCredentialsRiskConfiguration [CompromisedCredentialsRiskConfigurationType] <p>The compromised credentials risk configuration object including the <code>EventFilter</code> and the <code>EventAction</code> </p>
-- * AccountTakeoverRiskConfiguration [AccountTakeoverRiskConfigurationType] <p>The account takeover risk configuration object including the <code>NotifyConfiguration</code> object and <code>Actions</code> to take in the case of an account takeover.</p>
-- * RiskExceptionConfiguration [RiskExceptionConfigurationType] <p>The configuration to override the risk decision.</p>
-- @return RiskConfigurationType structure as a key-value pair table
function M.RiskConfigurationType(args)
	assert(args, "You must provide an argument table when creating RiskConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ClientId"] = args["ClientId"],
		["CompromisedCredentialsRiskConfiguration"] = args["CompromisedCredentialsRiskConfiguration"],
		["AccountTakeoverRiskConfiguration"] = args["AccountTakeoverRiskConfiguration"],
		["RiskExceptionConfiguration"] = args["RiskExceptionConfiguration"],
	}
	asserts.AssertRiskConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDisableProviderForUserResponse = { nil }

function asserts.AssertAdminDisableProviderForUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDisableProviderForUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminDisableProviderForUserResponse[k], "AdminDisableProviderForUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDisableProviderForUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminDisableProviderForUserResponse structure as a key-value pair table
function M.AdminDisableProviderForUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminDisableProviderForUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminDisableProviderForUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateIdentityProviderResponse = { ["IdentityProvider"] = true, nil }

function asserts.AssertUpdateIdentityProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIdentityProviderResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then asserts.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIdentityProviderResponse[k], "UpdateIdentityProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIdentityProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityProvider [IdentityProviderType] <p>The identity provider object.</p>
-- Required key: IdentityProvider
-- @return UpdateIdentityProviderResponse structure as a key-value pair table
function M.UpdateIdentityProviderResponse(args)
	assert(args, "You must provide an argument table when creating UpdateIdentityProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertUpdateIdentityProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeIdentityProviderResponse = { ["IdentityProvider"] = true, nil }

function asserts.AssertDescribeIdentityProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityProviderResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then asserts.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityProviderResponse[k], "DescribeIdentityProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityProvider [IdentityProviderType] <p>The identity provider that was deleted.</p>
-- Required key: IdentityProvider
-- @return DescribeIdentityProviderResponse structure as a key-value pair table
function M.DescribeIdentityProviderResponse(args)
	assert(args, "You must provide an argument table when creating DescribeIdentityProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertDescribeIdentityProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmailConfigurationType = { ["ReplyToEmailAddress"] = true, ["SourceArn"] = true, nil }

function asserts.AssertEmailConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailConfigurationType to be of type 'table'")
	if struct["ReplyToEmailAddress"] then asserts.AssertEmailAddressType(struct["ReplyToEmailAddress"]) end
	if struct["SourceArn"] then asserts.AssertArnType(struct["SourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmailConfigurationType[k], "EmailConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailConfigurationType
-- <p>The email configuration type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplyToEmailAddress [EmailAddressType] <p>The destination to which the receiver of the email should reply to.</p>
-- * SourceArn [ArnType] <p>The Amazon Resource Name (ARN) of the email source.</p>
-- @return EmailConfigurationType structure as a key-value pair table
function M.EmailConfigurationType(args)
	assert(args, "You must provide an argument table when creating EmailConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplyToEmailAddress"] = args["ReplyToEmailAddress"],
		["SourceArn"] = args["SourceArn"],
	}
	asserts.AssertEmailConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminRespondToAuthChallengeRequest = { ["ContextData"] = true, ["UserPoolId"] = true, ["Session"] = true, ["AnalyticsMetadata"] = true, ["ChallengeResponses"] = true, ["ClientId"] = true, ["ChallengeName"] = true, nil }

function asserts.AssertAdminRespondToAuthChallengeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRespondToAuthChallengeRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ChallengeName"], "Expected key ChallengeName to exist in table")
	if struct["ContextData"] then asserts.AssertContextDataType(struct["ContextData"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["ChallengeResponses"] then asserts.AssertChallengeResponsesType(struct["ChallengeResponses"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminRespondToAuthChallengeRequest[k], "AdminRespondToAuthChallengeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRespondToAuthChallengeRequest
-- <p>The request to respond to the authentication challenge, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContextData [ContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * UserPoolId [UserPoolIdType] <p>The ID of the Amazon Cognito user pool.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The analytics metadata for collecting Amazon Pinpoint metrics for <code>AdminRespondToAuthChallenge</code> calls.</p>
-- * ChallengeResponses [ChallengeResponsesType] <p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul> <p>The value of the <code>USERNAME</code> attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the <code>AdminInitiateAuth</code> response includes the actual username value in the <code>USERNAMEUSER_ID_FOR_SRP</code> attribute, even if you specified an alias in your call to <code>AdminInitiateAuth</code>.</p>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see .</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- Required key: ChallengeName
-- @return AdminRespondToAuthChallengeRequest structure as a key-value pair table
function M.AdminRespondToAuthChallengeRequest(args)
	assert(args, "You must provide an argument table when creating AdminRespondToAuthChallengeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContextData"] = args["ContextData"],
		["UserPoolId"] = args["UserPoolId"],
		["Session"] = args["Session"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["ChallengeResponses"] = args["ChallengeResponses"],
		["ClientId"] = args["ClientId"],
		["ChallengeName"] = args["ChallengeName"],
	}
	asserts.AssertAdminRespondToAuthChallengeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminGetUserResponse = { ["Username"] = true, ["MFAOptions"] = true, ["Enabled"] = true, ["UserStatus"] = true, ["PreferredMfaSetting"] = true, ["UserCreateDate"] = true, ["UserAttributes"] = true, ["UserLastModifiedDate"] = true, ["UserMFASettingList"] = true, nil }

function asserts.AssertAdminGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetUserResponse to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["UserStatus"] then asserts.AssertUserStatusType(struct["UserStatus"]) end
	if struct["PreferredMfaSetting"] then asserts.AssertStringType(struct["PreferredMfaSetting"]) end
	if struct["UserCreateDate"] then asserts.AssertDateType(struct["UserCreateDate"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["UserLastModifiedDate"] then asserts.AssertDateType(struct["UserLastModifiedDate"]) end
	if struct["UserMFASettingList"] then asserts.AssertUserMFASettingListType(struct["UserMFASettingList"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminGetUserResponse[k], "AdminGetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetUserResponse
-- <p>Represents the response from the server from the request to get the specified user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user about whom you are receiving information.</p>
-- * MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- * Enabled [BooleanType] <p>Indicates that the status is enabled.</p>
-- * UserStatus [UserStatusType] <p>The user status. Can be one of the following:</p> <ul> <li> <p>UNCONFIRMED - User has been created but not confirmed.</p> </li> <li> <p>CONFIRMED - User has been confirmed.</p> </li> <li> <p>ARCHIVED - User is no longer active.</p> </li> <li> <p>COMPROMISED - User is disabled due to a potential security threat.</p> </li> <li> <p>UNKNOWN - User status is not known.</p> </li> </ul>
-- * PreferredMfaSetting [StringType] <p>The user's preferred MFA setting.</p>
-- * UserCreateDate [DateType] <p>The date the user was created.</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p>
-- * UserLastModifiedDate [DateType] <p>The date the user was last modified.</p>
-- * UserMFASettingList [UserMFASettingListType] <p>The list of the user's MFA settings.</p>
-- Required key: Username
-- @return AdminGetUserResponse structure as a key-value pair table
function M.AdminGetUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminGetUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["Enabled"] = args["Enabled"],
		["UserStatus"] = args["UserStatus"],
		["PreferredMfaSetting"] = args["PreferredMfaSetting"],
		["UserCreateDate"] = args["UserCreateDate"],
		["UserAttributes"] = args["UserAttributes"],
		["UserLastModifiedDate"] = args["UserLastModifiedDate"],
		["UserMFASettingList"] = args["UserMFASettingList"],
	}
	asserts.AssertAdminGetUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserPoolResponse = { ["UserPool"] = true, nil }

function asserts.AssertDescribeUserPoolResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolResponse to be of type 'table'")
	if struct["UserPool"] then asserts.AssertUserPoolType(struct["UserPool"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserPoolResponse[k], "DescribeUserPoolResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolResponse
-- <p>Represents the response to describe the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPool [UserPoolType] <p>The container of metadata returned by the server to describe the pool.</p>
-- @return DescribeUserPoolResponse structure as a key-value pair table
function M.DescribeUserPoolResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserPoolResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPool"] = args["UserPool"],
	}
	asserts.AssertDescribeUserPoolResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminGetDeviceRequest = { ["Username"] = true, ["DeviceKey"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetDeviceRequest to be of type 'table'")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminGetDeviceRequest[k], "AdminGetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetDeviceRequest
-- <p>Represents the request to get the device, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name.</p>
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: DeviceKey
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminGetDeviceRequest structure as a key-value pair table
function M.AdminGetDeviceRequest(args)
	assert(args, "You must provide an argument table when creating AdminGetDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["DeviceKey"] = args["DeviceKey"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminGetDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventContextDataType = { ["City"] = true, ["DeviceName"] = true, ["Country"] = true, ["IpAddress"] = true, ["Timezone"] = true, nil }

function asserts.AssertEventContextDataType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventContextDataType to be of type 'table'")
	if struct["City"] then asserts.AssertStringType(struct["City"]) end
	if struct["DeviceName"] then asserts.AssertStringType(struct["DeviceName"]) end
	if struct["Country"] then asserts.AssertStringType(struct["Country"]) end
	if struct["IpAddress"] then asserts.AssertStringType(struct["IpAddress"]) end
	if struct["Timezone"] then asserts.AssertStringType(struct["Timezone"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventContextDataType[k], "EventContextDataType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventContextDataType
-- <p>Specifies the user context data captured at the time of an event request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * City [StringType] <p>The user's city.</p>
-- * DeviceName [StringType] <p>The user's device name.</p>
-- * Country [StringType] <p>The user's country.</p>
-- * IpAddress [StringType] <p>The user's IP address.</p>
-- * Timezone [StringType] <p>The user's time zone.</p>
-- @return EventContextDataType structure as a key-value pair table
function M.EventContextDataType(args)
	assert(args, "You must provide an argument table when creating EventContextDataType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["City"] = args["City"],
		["DeviceName"] = args["DeviceName"],
		["Country"] = args["Country"],
		["IpAddress"] = args["IpAddress"],
		["Timezone"] = args["Timezone"],
	}
	asserts.AssertEventContextDataType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserRequest = { ["AccessToken"] = true, nil }

function asserts.AssertGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserRequest[k], "GetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserRequest
-- <p>Represents the request to get information about the user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessToken [TokenModelType] <p>The access token returned by the server response to get information about the user.</p>
-- Required key: AccessToken
-- @return GetUserRequest structure as a key-value pair table
function M.GetUserRequest(args)
	assert(args, "You must provide an argument table when creating GetUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGetUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateResourceServerResponse = { ["ResourceServer"] = true, nil }

function asserts.AssertUpdateResourceServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResourceServerResponse to be of type 'table'")
	assert(struct["ResourceServer"], "Expected key ResourceServer to exist in table")
	if struct["ResourceServer"] then asserts.AssertResourceServerType(struct["ResourceServer"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateResourceServerResponse[k], "UpdateResourceServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResourceServerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceServer [ResourceServerType] <p>The resource server.</p>
-- Required key: ResourceServer
-- @return UpdateResourceServerResponse structure as a key-value pair table
function M.UpdateResourceServerResponse(args)
	assert(args, "You must provide an argument table when creating UpdateResourceServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceServer"] = args["ResourceServer"],
	}
	asserts.AssertUpdateResourceServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResendConfirmationCodeResponse = { ["CodeDeliveryDetails"] = true, nil }

function asserts.AssertResendConfirmationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendConfirmationCodeResponse to be of type 'table'")
	if struct["CodeDeliveryDetails"] then asserts.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResendConfirmationCodeResponse[k], "ResendConfirmationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendConfirmationCodeResponse
-- <p>The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server in response to the request to resend the confirmation code.</p>
-- @return ResendConfirmationCodeResponse structure as a key-value pair table
function M.ResendConfirmationCodeResponse(args)
	assert(args, "You must provide an argument table when creating ResendConfirmationCodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertResendConfirmationCodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserImportJobsResponse = { ["UserImportJobs"] = true, ["PaginationToken"] = true, nil }

function asserts.AssertListUserImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserImportJobsResponse to be of type 'table'")
	if struct["UserImportJobs"] then asserts.AssertUserImportJobsListType(struct["UserImportJobs"]) end
	if struct["PaginationToken"] then asserts.AssertPaginationKeyType(struct["PaginationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserImportJobsResponse[k], "ListUserImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserImportJobsResponse
-- <p>Represents the response from the server to the request to list the user import jobs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserImportJobs [UserImportJobsListType] <p>The user import jobs.</p>
-- * PaginationToken [PaginationKeyType] <p>An identifier that can be used to return the next set of user import jobs in the list.</p>
-- @return ListUserImportJobsResponse structure as a key-value pair table
function M.ListUserImportJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListUserImportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserImportJobs"] = args["UserImportJobs"],
		["PaginationToken"] = args["PaginationToken"],
	}
	asserts.AssertListUserImportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserPoolsResponse = { ["UserPools"] = true, ["NextToken"] = true, nil }

function asserts.AssertListUserPoolsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolsResponse to be of type 'table'")
	if struct["UserPools"] then asserts.AssertUserPoolListType(struct["UserPools"]) end
	if struct["NextToken"] then asserts.AssertPaginationKeyType(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserPoolsResponse[k], "ListUserPoolsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolsResponse
-- <p>Represents the response to list user pools.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPools [UserPoolListType] <p>The user pools from the response to list users.</p>
-- * NextToken [PaginationKeyType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @return ListUserPoolsResponse structure as a key-value pair table
function M.ListUserPoolsResponse(args)
	assert(args, "You must provide an argument table when creating ListUserPoolsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPools"] = args["UserPools"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListUserPoolsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminForgetDeviceRequest = { ["Username"] = true, ["DeviceKey"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminForgetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminForgetDeviceRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminForgetDeviceRequest[k], "AdminForgetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminForgetDeviceRequest
-- <p>Sends the forgot device request, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name.</p>
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: DeviceKey
-- @return AdminForgetDeviceRequest structure as a key-value pair table
function M.AdminForgetDeviceRequest(args)
	assert(args, "You must provide an argument table when creating AdminForgetDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["DeviceKey"] = args["DeviceKey"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminForgetDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminSetUserSettingsRequest = { ["Username"] = true, ["MFAOptions"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminSetUserSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminSetUserSettingsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["MFAOptions"], "Expected key MFAOptions to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminSetUserSettingsRequest[k], "AdminSetUserSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminSetUserSettingsRequest
-- <p>Represents the request to set user settings as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user for whom you wish to set user settings.</p>
-- * MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to set the user's settings, such as MFA options.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: MFAOptions
-- @return AdminSetUserSettingsRequest structure as a key-value pair table
function M.AdminSetUserSettingsRequest(args)
	assert(args, "You must provide an argument table when creating AdminSetUserSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminSetUserSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminCreateUserResponse = { ["User"] = true, nil }

function asserts.AssertAdminCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminCreateUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUserType(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminCreateUserResponse[k], "AdminCreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminCreateUserResponse
-- <p>Represents the response from the server to the request to create the user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [UserType] <p>The newly created user.</p>
-- @return AdminCreateUserResponse structure as a key-value pair table
function M.AdminCreateUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminCreateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertAdminCreateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountTakeoverRiskConfigurationType = { ["NotifyConfiguration"] = true, ["Actions"] = true, nil }

function asserts.AssertAccountTakeoverRiskConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountTakeoverRiskConfigurationType to be of type 'table'")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["NotifyConfiguration"] then asserts.AssertNotifyConfigurationType(struct["NotifyConfiguration"]) end
	if struct["Actions"] then asserts.AssertAccountTakeoverActionsType(struct["Actions"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountTakeoverRiskConfigurationType[k], "AccountTakeoverRiskConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountTakeoverRiskConfigurationType
-- <p>Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotifyConfiguration [NotifyConfigurationType] <p>The notify configuration used to construct email notifications.</p>
-- * Actions [AccountTakeoverActionsType] <p>Account takeover risk configuration actions</p>
-- Required key: Actions
-- @return AccountTakeoverRiskConfigurationType structure as a key-value pair table
function M.AccountTakeoverRiskConfigurationType(args)
	assert(args, "You must provide an argument table when creating AccountTakeoverRiskConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotifyConfiguration"] = args["NotifyConfiguration"],
		["Actions"] = args["Actions"],
	}
	asserts.AssertAccountTakeoverRiskConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetRiskConfigurationResponse = { ["RiskConfiguration"] = true, nil }

function asserts.AssertSetRiskConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRiskConfigurationResponse to be of type 'table'")
	assert(struct["RiskConfiguration"], "Expected key RiskConfiguration to exist in table")
	if struct["RiskConfiguration"] then asserts.AssertRiskConfigurationType(struct["RiskConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetRiskConfigurationResponse[k], "SetRiskConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRiskConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RiskConfiguration [RiskConfigurationType] <p>The risk configuration.</p>
-- Required key: RiskConfiguration
-- @return SetRiskConfigurationResponse structure as a key-value pair table
function M.SetRiskConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating SetRiskConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RiskConfiguration"] = args["RiskConfiguration"],
	}
	asserts.AssertSetRiskConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserImportJobType = { ["CompletionDate"] = true, ["StartDate"] = true, ["Status"] = true, ["UserPoolId"] = true, ["ImportedUsers"] = true, ["SkippedUsers"] = true, ["JobName"] = true, ["CompletionMessage"] = true, ["JobId"] = true, ["PreSignedUrl"] = true, ["CloudWatchLogsRoleArn"] = true, ["FailedUsers"] = true, ["CreationDate"] = true, nil }

function asserts.AssertUserImportJobType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserImportJobType to be of type 'table'")
	if struct["CompletionDate"] then asserts.AssertDateType(struct["CompletionDate"]) end
	if struct["StartDate"] then asserts.AssertDateType(struct["StartDate"]) end
	if struct["Status"] then asserts.AssertUserImportJobStatusType(struct["Status"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ImportedUsers"] then asserts.AssertLongType(struct["ImportedUsers"]) end
	if struct["SkippedUsers"] then asserts.AssertLongType(struct["SkippedUsers"]) end
	if struct["JobName"] then asserts.AssertUserImportJobNameType(struct["JobName"]) end
	if struct["CompletionMessage"] then asserts.AssertCompletionMessageType(struct["CompletionMessage"]) end
	if struct["JobId"] then asserts.AssertUserImportJobIdType(struct["JobId"]) end
	if struct["PreSignedUrl"] then asserts.AssertPreSignedUrlType(struct["PreSignedUrl"]) end
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertArnType(struct["CloudWatchLogsRoleArn"]) end
	if struct["FailedUsers"] then asserts.AssertLongType(struct["FailedUsers"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserImportJobType[k], "UserImportJobType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserImportJobType
-- <p>The user import job type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompletionDate [DateType] <p>The date when the user import job was completed.</p>
-- * StartDate [DateType] <p>The date when the user import job was started.</p>
-- * Status [UserImportJobStatusType] <p>The status of the user import job. One of the following:</p> <ul> <li> <p> <code>Created</code> - The job was created but not started.</p> </li> <li> <p> <code>Pending</code> - A transition state. You have started the job, but it has not begun importing users yet.</p> </li> <li> <p> <code>InProgress</code> - The job has started, and users are being imported.</p> </li> <li> <p> <code>Stopping</code> - You have stopped the job, but the job has not stopped importing users yet.</p> </li> <li> <p> <code>Stopped</code> - You have stopped the job, and the job has stopped importing users.</p> </li> <li> <p> <code>Succeeded</code> - The job has completed successfully.</p> </li> <li> <p> <code>Failed</code> - The job has stopped due to an error.</p> </li> <li> <p> <code>Expired</code> - You created a job, but did not start the job within 24-48 hours. All data associated with the job was deleted, and the job cannot be started.</p> </li> </ul>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- * ImportedUsers [LongType] <p>The number of users that were successfully imported.</p>
-- * SkippedUsers [LongType] <p>The number of users that were skipped.</p>
-- * JobName [UserImportJobNameType] <p>The job name for the user import job.</p>
-- * CompletionMessage [CompletionMessageType] <p>The message returned when the user import job is completed.</p>
-- * JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- * PreSignedUrl [PreSignedUrlType] <p>The pre-signed URL to be used to upload the <code>.csv</code> file.</p>
-- * CloudWatchLogsRoleArn [ArnType] <p>The role ARN for the Amazon CloudWatch Logging role for the user import job. For more information, see "Creating the CloudWatch Logs IAM Role" in the Amazon Cognito Developer Guide.</p>
-- * FailedUsers [LongType] <p>The number of users that could not be imported.</p>
-- * CreationDate [DateType] <p>The date the user import job was created.</p>
-- @return UserImportJobType structure as a key-value pair table
function M.UserImportJobType(args)
	assert(args, "You must provide an argument table when creating UserImportJobType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompletionDate"] = args["CompletionDate"],
		["StartDate"] = args["StartDate"],
		["Status"] = args["Status"],
		["UserPoolId"] = args["UserPoolId"],
		["ImportedUsers"] = args["ImportedUsers"],
		["SkippedUsers"] = args["SkippedUsers"],
		["JobName"] = args["JobName"],
		["CompletionMessage"] = args["CompletionMessage"],
		["JobId"] = args["JobId"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["FailedUsers"] = args["FailedUsers"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertUserImportJobType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalSignOutRequest = { ["AccessToken"] = true, nil }

function asserts.AssertGlobalSignOutRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSignOutRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalSignOutRequest[k], "GlobalSignOutRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSignOutRequest
-- <p>Represents the request to sign out all devices.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- Required key: AccessToken
-- @return GlobalSignOutRequest structure as a key-value pair table
function M.GlobalSignOutRequest(args)
	assert(args, "You must provide an argument table when creating GlobalSignOutRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGlobalSignOutRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserPoolClientRequest = { ["CallbackURLs"] = true, ["AllowedOAuthScopes"] = true, ["UserPoolId"] = true, ["AllowedOAuthFlowsUserPoolClient"] = true, ["AnalyticsConfiguration"] = true, ["ClientId"] = true, ["DefaultRedirectURI"] = true, ["AllowedOAuthFlows"] = true, ["ExplicitAuthFlows"] = true, ["LogoutURLs"] = true, ["WriteAttributes"] = true, ["SupportedIdentityProviders"] = true, ["ReadAttributes"] = true, ["RefreshTokenValidity"] = true, ["ClientName"] = true, nil }

function asserts.AssertUpdateUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["CallbackURLs"] then asserts.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["AllowedOAuthScopes"] then asserts.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then asserts.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
	if struct["AnalyticsConfiguration"] then asserts.AssertAnalyticsConfigurationType(struct["AnalyticsConfiguration"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["DefaultRedirectURI"] then asserts.AssertRedirectUrlType(struct["DefaultRedirectURI"]) end
	if struct["AllowedOAuthFlows"] then asserts.AssertOAuthFlowsType(struct["AllowedOAuthFlows"]) end
	if struct["ExplicitAuthFlows"] then asserts.AssertExplicitAuthFlowsListType(struct["ExplicitAuthFlows"]) end
	if struct["LogoutURLs"] then asserts.AssertLogoutURLsListType(struct["LogoutURLs"]) end
	if struct["WriteAttributes"] then asserts.AssertClientPermissionListType(struct["WriteAttributes"]) end
	if struct["SupportedIdentityProviders"] then asserts.AssertSupportedIdentityProvidersListType(struct["SupportedIdentityProviders"]) end
	if struct["ReadAttributes"] then asserts.AssertClientPermissionListType(struct["ReadAttributes"]) end
	if struct["RefreshTokenValidity"] then asserts.AssertRefreshTokenValidityType(struct["RefreshTokenValidity"]) end
	if struct["ClientName"] then asserts.AssertClientNameType(struct["ClientName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserPoolClientRequest[k], "UpdateUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolClientRequest
-- <p>Represents the request to update the user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CallbackURLs [CallbackURLsListType] <p>A list of allowed redirect (callback) URLs for the identity providers.</p> <p>A redirect URI must:</p> <ul> <li> <p>Be an absolute URI.</p> </li> <li> <p>Be registered with the authorization server.</p> </li> <li> <p>Not include a fragment component.</p> </li> </ul> <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 - Redirection Endpoint</a>.</p> <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.</p> <p>App callback URLs such as myapp://example are also supported.</p>
-- * AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to update the user pool client.</p>
-- * AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- * AnalyticsConfiguration [AnalyticsConfigurationType] <p>The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p> <p>A redirect URI must:</p> <ul> <li> <p>Be an absolute URI.</p> </li> <li> <p>Be registered with the authorization server.</p> </li> <li> <p>Not include a fragment component.</p> </li> </ul> <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 - Redirection Endpoint</a>.</p> <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.</p> <p>App callback URLs such as myapp://example are also supported.</p>
-- * AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- * ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>Explicit authentication flows.</p>
-- * LogoutURLs [LogoutURLsListType] <p>A list of allowed logout URLs for the identity providers.</p>
-- * WriteAttributes [ClientPermissionListType] <p>The writeable attributes of the user pool.</p>
-- * SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- * ReadAttributes [ClientPermissionListType] <p>The read-only attributes of the user pool.</p>
-- * RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- * ClientName [ClientNameType] <p>The client name from the update user pool client request.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- @return UpdateUserPoolClientRequest structure as a key-value pair table
function M.UpdateUserPoolClientRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserPoolClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CallbackURLs"] = args["CallbackURLs"],
		["AllowedOAuthScopes"] = args["AllowedOAuthScopes"],
		["UserPoolId"] = args["UserPoolId"],
		["AllowedOAuthFlowsUserPoolClient"] = args["AllowedOAuthFlowsUserPoolClient"],
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
		["ClientId"] = args["ClientId"],
		["DefaultRedirectURI"] = args["DefaultRedirectURI"],
		["AllowedOAuthFlows"] = args["AllowedOAuthFlows"],
		["ExplicitAuthFlows"] = args["ExplicitAuthFlows"],
		["LogoutURLs"] = args["LogoutURLs"],
		["WriteAttributes"] = args["WriteAttributes"],
		["SupportedIdentityProviders"] = args["SupportedIdentityProviders"],
		["ReadAttributes"] = args["ReadAttributes"],
		["RefreshTokenValidity"] = args["RefreshTokenValidity"],
		["ClientName"] = args["ClientName"],
	}
	asserts.AssertUpdateUserPoolClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddCustomAttributesRequest = { ["CustomAttributes"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAddCustomAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCustomAttributesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["CustomAttributes"], "Expected key CustomAttributes to exist in table")
	if struct["CustomAttributes"] then asserts.AssertCustomAttributesListType(struct["CustomAttributes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddCustomAttributesRequest[k], "AddCustomAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCustomAttributesRequest
-- <p>Represents the request to add custom attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomAttributes [CustomAttributesListType] <p>An array of custom attributes, such as Mutable and Name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to add custom attributes.</p>
-- Required key: UserPoolId
-- Required key: CustomAttributes
-- @return AddCustomAttributesRequest structure as a key-value pair table
function M.AddCustomAttributesRequest(args)
	assert(args, "You must provide an argument table when creating AddCustomAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomAttributes"] = args["CustomAttributes"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAddCustomAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminGetDeviceResponse = { ["Device"] = true, nil }

function asserts.AssertAdminGetDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetDeviceResponse to be of type 'table'")
	assert(struct["Device"], "Expected key Device to exist in table")
	if struct["Device"] then asserts.AssertDeviceType(struct["Device"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminGetDeviceResponse[k], "AdminGetDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetDeviceResponse
-- <p>Gets the device response, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Device [DeviceType] <p>The device.</p>
-- Required key: Device
-- @return AdminGetDeviceResponse structure as a key-value pair table
function M.AdminGetDeviceResponse(args)
	assert(args, "You must provide an argument table when creating AdminGetDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Device"] = args["Device"],
	}
	asserts.AssertAdminGetDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmSignUpRequest = { ["Username"] = true, ["ClientId"] = true, ["AnalyticsMetadata"] = true, ["UserContextData"] = true, ["ConfirmationCode"] = true, ["SecretHash"] = true, ["ForceAliasCreation"] = true, nil }

function asserts.AssertConfirmSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSignUpRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["ConfirmationCode"], "Expected key ConfirmationCode to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["ConfirmationCode"] then asserts.AssertConfirmationCodeType(struct["ConfirmationCode"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ForceAliasCreation"] then asserts.AssertForceAliasCreation(struct["ForceAliasCreation"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmSignUpRequest[k], "ConfirmSignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSignUpRequest
-- <p>Represents the request to confirm registration of a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user whose registration you wish to confirm.</p>
-- * ClientId [ClientIdType] <p>The ID of the app client associated with the user pool.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>ConfirmSignUp</code> calls.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * ConfirmationCode [ConfirmationCodeType] <p>The confirmation code sent by a user's request to confirm registration.</p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ForceAliasCreation [ForceAliasCreation] <p>Boolean to be specified to force user confirmation irrespective of existing alias. By default set to <code>False</code>. If this parameter is set to <code>True</code> and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to <code>False</code>, the API will throw an <b>AliasExistsException</b> error.</p>
-- Required key: ClientId
-- Required key: Username
-- Required key: ConfirmationCode
-- @return ConfirmSignUpRequest structure as a key-value pair table
function M.ConfirmSignUpRequest(args)
	assert(args, "You must provide an argument table when creating ConfirmSignUpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["ClientId"] = args["ClientId"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["UserContextData"] = args["UserContextData"],
		["ConfirmationCode"] = args["ConfirmationCode"],
		["SecretHash"] = args["SecretHash"],
		["ForceAliasCreation"] = args["ForceAliasCreation"],
	}
	asserts.AssertConfirmSignUpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminCreateUserConfigType = { ["InviteMessageTemplate"] = true, ["UnusedAccountValidityDays"] = true, ["AllowAdminCreateUserOnly"] = true, nil }

function asserts.AssertAdminCreateUserConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminCreateUserConfigType to be of type 'table'")
	if struct["InviteMessageTemplate"] then asserts.AssertMessageTemplateType(struct["InviteMessageTemplate"]) end
	if struct["UnusedAccountValidityDays"] then asserts.AssertAdminCreateUserUnusedAccountValidityDaysType(struct["UnusedAccountValidityDays"]) end
	if struct["AllowAdminCreateUserOnly"] then asserts.AssertBooleanType(struct["AllowAdminCreateUserOnly"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminCreateUserConfigType[k], "AdminCreateUserConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminCreateUserConfigType
-- <p>The configuration for creating a new user profile.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InviteMessageTemplate [MessageTemplateType] <p>The message template to be used for the welcome message to new users.</p> <p>See also <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html#cognito-user-pool-settings-user-invitation-message-customization">Customizing User Invitation Messages</a>.</p>
-- * UnusedAccountValidityDays [AdminCreateUserUnusedAccountValidityDaysType] <p>The user account expiration limit, in days, after which the account is no longer usable. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the <code>MessageAction</code> parameter. The default value for this parameter is 7.</p>
-- * AllowAdminCreateUserOnly [BooleanType] <p>Set to <code>True</code> if only the administrator is allowed to create user profiles. Set to <code>False</code> if users can sign themselves up via an app.</p>
-- @return AdminCreateUserConfigType structure as a key-value pair table
function M.AdminCreateUserConfigType(args)
	assert(args, "You must provide an argument table when creating AdminCreateUserConfigType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InviteMessageTemplate"] = args["InviteMessageTemplate"],
		["UnusedAccountValidityDays"] = args["UnusedAccountValidityDays"],
		["AllowAdminCreateUserOnly"] = args["AllowAdminCreateUserOnly"],
	}
	asserts.AssertAdminCreateUserConfigType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VerifyUserAttributeResponse = { nil }

function asserts.AssertVerifyUserAttributeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyUserAttributeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.VerifyUserAttributeResponse[k], "VerifyUserAttributeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyUserAttributeResponse
-- <p>A container representing the response from the server from the request to verify user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return VerifyUserAttributeResponse structure as a key-value pair table
function M.VerifyUserAttributeResponse(args)
	assert(args, "You must provide an argument table when creating VerifyUserAttributeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertVerifyUserAttributeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmForgotPasswordRequest = { ["Username"] = true, ["AnalyticsMetadata"] = true, ["UserContextData"] = true, ["ConfirmationCode"] = true, ["SecretHash"] = true, ["ClientId"] = true, ["Password"] = true, nil }

function asserts.AssertConfirmForgotPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmForgotPasswordRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["ConfirmationCode"], "Expected key ConfirmationCode to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["ConfirmationCode"] then asserts.AssertConfirmationCodeType(struct["ConfirmationCode"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["Password"] then asserts.AssertPasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmForgotPasswordRequest[k], "ConfirmForgotPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmForgotPasswordRequest
-- <p>The request representing the confirmation for a password reset.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user for whom you want to enter a code to retrieve a forgotten password.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>ConfirmForgotPassword</code> calls.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * ConfirmationCode [ConfirmationCodeType] <p>The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see </p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The app client ID of the app associated with the user pool.</p>
-- * Password [PasswordType] <p>The password sent by a user's request to retrieve a forgotten password.</p>
-- Required key: ClientId
-- Required key: Username
-- Required key: ConfirmationCode
-- Required key: Password
-- @return ConfirmForgotPasswordRequest structure as a key-value pair table
function M.ConfirmForgotPasswordRequest(args)
	assert(args, "You must provide an argument table when creating ConfirmForgotPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["UserContextData"] = args["UserContextData"],
		["ConfirmationCode"] = args["ConfirmationCode"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
		["Password"] = args["Password"],
	}
	asserts.AssertConfirmForgotPasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopUserImportJobRequest = { ["UserPoolId"] = true, ["JobId"] = true, nil }

function asserts.AssertStopUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopUserImportJobRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobId"] then asserts.AssertUserImportJobIdType(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopUserImportJobRequest[k], "StopUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopUserImportJobRequest
-- <p>Represents the request to stop the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- * JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- Required key: UserPoolId
-- Required key: JobId
-- @return StopUserImportJobRequest structure as a key-value pair table
function M.StopUserImportJobRequest(args)
	assert(args, "You must provide an argument table when creating StopUserImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopUserImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolClientType = { ["ClientSecret"] = true, ["CallbackURLs"] = true, ["AllowedOAuthScopes"] = true, ["UserPoolId"] = true, ["AllowedOAuthFlowsUserPoolClient"] = true, ["AnalyticsConfiguration"] = true, ["LastModifiedDate"] = true, ["ClientId"] = true, ["DefaultRedirectURI"] = true, ["AllowedOAuthFlows"] = true, ["ExplicitAuthFlows"] = true, ["LogoutURLs"] = true, ["WriteAttributes"] = true, ["SupportedIdentityProviders"] = true, ["ReadAttributes"] = true, ["RefreshTokenValidity"] = true, ["CreationDate"] = true, ["ClientName"] = true, nil }

function asserts.AssertUserPoolClientType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolClientType to be of type 'table'")
	if struct["ClientSecret"] then asserts.AssertClientSecretType(struct["ClientSecret"]) end
	if struct["CallbackURLs"] then asserts.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["AllowedOAuthScopes"] then asserts.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then asserts.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
	if struct["AnalyticsConfiguration"] then asserts.AssertAnalyticsConfigurationType(struct["AnalyticsConfiguration"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["DefaultRedirectURI"] then asserts.AssertRedirectUrlType(struct["DefaultRedirectURI"]) end
	if struct["AllowedOAuthFlows"] then asserts.AssertOAuthFlowsType(struct["AllowedOAuthFlows"]) end
	if struct["ExplicitAuthFlows"] then asserts.AssertExplicitAuthFlowsListType(struct["ExplicitAuthFlows"]) end
	if struct["LogoutURLs"] then asserts.AssertLogoutURLsListType(struct["LogoutURLs"]) end
	if struct["WriteAttributes"] then asserts.AssertClientPermissionListType(struct["WriteAttributes"]) end
	if struct["SupportedIdentityProviders"] then asserts.AssertSupportedIdentityProvidersListType(struct["SupportedIdentityProviders"]) end
	if struct["ReadAttributes"] then asserts.AssertClientPermissionListType(struct["ReadAttributes"]) end
	if struct["RefreshTokenValidity"] then asserts.AssertRefreshTokenValidityType(struct["RefreshTokenValidity"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["ClientName"] then asserts.AssertClientNameType(struct["ClientName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolClientType[k], "UserPoolClientType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolClientType
-- <p>Contains information about a user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientSecret [ClientSecretType] <p>The client secret from the user pool request of the client type.</p>
-- * CallbackURLs [CallbackURLsListType] <p>A list of allowed redirect (callback) URLs for the identity providers.</p> <p>A redirect URI must:</p> <ul> <li> <p>Be an absolute URI.</p> </li> <li> <p>Be registered with the authorization server.</p> </li> <li> <p>Not include a fragment component.</p> </li> </ul> <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 - Redirection Endpoint</a>.</p> <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.</p> <p>App callback URLs such as myapp://example are also supported.</p>
-- * AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool client.</p>
-- * AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- * AnalyticsConfiguration [AnalyticsConfigurationType] <p>The Amazon Pinpoint analytics configuration for the user pool client.</p>
-- * LastModifiedDate [DateType] <p>The date the user pool client was last modified.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p> <p>A redirect URI must:</p> <ul> <li> <p>Be an absolute URI.</p> </li> <li> <p>Be registered with the authorization server.</p> </li> <li> <p>Not include a fragment component.</p> </li> </ul> <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 - Redirection Endpoint</a>.</p> <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.</p> <p>App callback URLs such as myapp://example are also supported.</p>
-- * AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- * ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>The explicit authentication flows.</p>
-- * LogoutURLs [LogoutURLsListType] <p>A list of allowed logout URLs for the identity providers.</p>
-- * WriteAttributes [ClientPermissionListType] <p>The writeable attributes.</p>
-- * SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- * ReadAttributes [ClientPermissionListType] <p>The Read-only attributes.</p>
-- * RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- * CreationDate [DateType] <p>The date the user pool client was created.</p>
-- * ClientName [ClientNameType] <p>The client name from the user pool request of the client type.</p>
-- @return UserPoolClientType structure as a key-value pair table
function M.UserPoolClientType(args)
	assert(args, "You must provide an argument table when creating UserPoolClientType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientSecret"] = args["ClientSecret"],
		["CallbackURLs"] = args["CallbackURLs"],
		["AllowedOAuthScopes"] = args["AllowedOAuthScopes"],
		["UserPoolId"] = args["UserPoolId"],
		["AllowedOAuthFlowsUserPoolClient"] = args["AllowedOAuthFlowsUserPoolClient"],
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ClientId"] = args["ClientId"],
		["DefaultRedirectURI"] = args["DefaultRedirectURI"],
		["AllowedOAuthFlows"] = args["AllowedOAuthFlows"],
		["ExplicitAuthFlows"] = args["ExplicitAuthFlows"],
		["LogoutURLs"] = args["LogoutURLs"],
		["WriteAttributes"] = args["WriteAttributes"],
		["SupportedIdentityProviders"] = args["SupportedIdentityProviders"],
		["ReadAttributes"] = args["ReadAttributes"],
		["RefreshTokenValidity"] = args["RefreshTokenValidity"],
		["CreationDate"] = args["CreationDate"],
		["ClientName"] = args["ClientName"],
	}
	asserts.AssertUserPoolClientType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGroupResponse = { ["Group"] = true, nil }

function asserts.AssertUpdateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupResponse to be of type 'table'")
	if struct["Group"] then asserts.AssertGroupType(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupResponse[k], "UpdateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [GroupType] <p>The group object for the group.</p>
-- @return UpdateGroupResponse structure as a key-value pair table
function M.UpdateGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
	}
	asserts.AssertUpdateGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChangePasswordResponse = { nil }

function asserts.AssertChangePasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangePasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ChangePasswordResponse[k], "ChangePasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangePasswordResponse
-- <p>The response from the server to the change password request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ChangePasswordResponse structure as a key-value pair table
function M.ChangePasswordResponse(args)
	assert(args, "You must provide an argument table when creating ChangePasswordResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertChangePasswordResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUserMFAPreferenceResponse = { nil }

function asserts.AssertSetUserMFAPreferenceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserMFAPreferenceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetUserMFAPreferenceResponse[k], "SetUserMFAPreferenceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserMFAPreferenceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetUserMFAPreferenceResponse structure as a key-value pair table
function M.SetUserMFAPreferenceResponse(args)
	assert(args, "You must provide an argument table when creating SetUserMFAPreferenceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetUserMFAPreferenceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUpdateDeviceStatusResponse = { nil }

function asserts.AssertAdminUpdateDeviceStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateDeviceStatusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminUpdateDeviceStatusResponse[k], "AdminUpdateDeviceStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateDeviceStatusResponse
-- <p>The status response from the request to update the device, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminUpdateDeviceStatusResponse structure as a key-value pair table
function M.AdminUpdateDeviceStatusResponse(args)
	assert(args, "You must provide an argument table when creating AdminUpdateDeviceStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminUpdateDeviceStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyEmailType = { ["HtmlBody"] = true, ["TextBody"] = true, ["Subject"] = true, nil }

function asserts.AssertNotifyEmailType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyEmailType to be of type 'table'")
	assert(struct["Subject"], "Expected key Subject to exist in table")
	if struct["HtmlBody"] then asserts.AssertEmailNotificationBodyType(struct["HtmlBody"]) end
	if struct["TextBody"] then asserts.AssertEmailNotificationBodyType(struct["TextBody"]) end
	if struct["Subject"] then asserts.AssertEmailNotificationSubjectType(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyEmailType[k], "NotifyEmailType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyEmailType
-- <p>The notify email type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HtmlBody [EmailNotificationBodyType] <p>The HTML body.</p>
-- * TextBody [EmailNotificationBodyType] <p>The text body.</p>
-- * Subject [EmailNotificationSubjectType] <p>The subject.</p>
-- Required key: Subject
-- @return NotifyEmailType structure as a key-value pair table
function M.NotifyEmailType(args)
	assert(args, "You must provide an argument table when creating NotifyEmailType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HtmlBody"] = args["HtmlBody"],
		["TextBody"] = args["TextBody"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertNotifyEmailType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IdentityProviderType = { ["UserPoolId"] = true, ["ProviderName"] = true, ["LastModifiedDate"] = true, ["ProviderType"] = true, ["ProviderDetails"] = true, ["IdpIdentifiers"] = true, ["AttributeMapping"] = true, ["CreationDate"] = true, nil }

function asserts.AssertIdentityProviderType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityProviderType to be of type 'table'")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ProviderType"] then asserts.AssertIdentityProviderTypeType(struct["ProviderType"]) end
	if struct["ProviderDetails"] then asserts.AssertProviderDetailsType(struct["ProviderDetails"]) end
	if struct["IdpIdentifiers"] then asserts.AssertIdpIdentifiersListType(struct["IdpIdentifiers"]) end
	if struct["AttributeMapping"] then asserts.AssertAttributeMappingType(struct["AttributeMapping"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityProviderType[k], "IdentityProviderType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityProviderType
-- <p>A container for information about an identity provider.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- * LastModifiedDate [DateType] <p>The date the identity provider was last modified.</p>
-- * ProviderType [IdentityProviderTypeType] <p>The identity provider type.</p>
-- * ProviderDetails [ProviderDetailsType] <p>The identity provider details, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>
-- * IdpIdentifiers [IdpIdentifiersListType] <p>A list of identity provider identifiers.</p>
-- * AttributeMapping [AttributeMappingType] <p>A mapping of identity provider attributes to standard and custom user pool attributes.</p>
-- * CreationDate [DateType] <p>The date the identity provider was created.</p>
-- @return IdentityProviderType structure as a key-value pair table
function M.IdentityProviderType(args)
	assert(args, "You must provide an argument table when creating IdentityProviderType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["ProviderName"] = args["ProviderName"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ProviderType"] = args["ProviderType"],
		["ProviderDetails"] = args["ProviderDetails"],
		["IdpIdentifiers"] = args["IdpIdentifiers"],
		["AttributeMapping"] = args["AttributeMapping"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertIdentityProviderType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDisableUserRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminDisableUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDisableUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminDisableUserRequest[k], "AdminDisableUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDisableUserRequest
-- <p>Represents the request to disable any user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to disable.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to disable the user.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminDisableUserRequest structure as a key-value pair table
function M.AdminDisableUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminDisableUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDisableUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserImportJobRequest = { ["UserPoolId"] = true, ["JobId"] = true, nil }

function asserts.AssertDescribeUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserImportJobRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobId"] then asserts.AssertUserImportJobIdType(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserImportJobRequest[k], "DescribeUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserImportJobRequest
-- <p>Represents the request to describe the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- * JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- Required key: UserPoolId
-- Required key: JobId
-- @return DescribeUserImportJobRequest structure as a key-value pair table
function M.DescribeUserImportJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeUserImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NumberAttributeConstraintsType = { ["MaxValue"] = true, ["MinValue"] = true, nil }

function asserts.AssertNumberAttributeConstraintsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberAttributeConstraintsType to be of type 'table'")
	if struct["MaxValue"] then asserts.AssertStringType(struct["MaxValue"]) end
	if struct["MinValue"] then asserts.AssertStringType(struct["MinValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberAttributeConstraintsType[k], "NumberAttributeConstraintsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberAttributeConstraintsType
-- <p>The minimum and maximum value of an attribute that is of the number data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxValue [StringType] <p>The maximum value of an attribute that is of the number data type.</p>
-- * MinValue [StringType] <p>The minimum value of an attribute that is of the number data type.</p>
-- @return NumberAttributeConstraintsType structure as a key-value pair table
function M.NumberAttributeConstraintsType(args)
	assert(args, "You must provide an argument table when creating NumberAttributeConstraintsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxValue"] = args["MaxValue"],
		["MinValue"] = args["MinValue"],
	}
	asserts.AssertNumberAttributeConstraintsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserPoolClientResponse = { ["UserPoolClient"] = true, nil }

function asserts.AssertCreateUserPoolClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolClientResponse to be of type 'table'")
	if struct["UserPoolClient"] then asserts.AssertUserPoolClientType(struct["UserPoolClient"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolClientResponse[k], "CreateUserPoolClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolClientResponse
-- <p>Represents the response from the server to create a user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolClient [UserPoolClientType] <p>The user pool client that was just created.</p>
-- @return CreateUserPoolClientResponse structure as a key-value pair table
function M.CreateUserPoolClientResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserPoolClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolClient"] = args["UserPoolClient"],
	}
	asserts.AssertCreateUserPoolClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserPoolDomainRequest = { ["Domain"] = true, ["CustomDomainConfig"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertCreateUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
	if struct["CustomDomainConfig"] then asserts.AssertCustomDomainConfigType(struct["CustomDomainConfig"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolDomainRequest[k], "CreateUserPoolDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolDomainRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [DomainType] <p>The domain string.</p>
-- * CustomDomainConfig [CustomDomainConfigType] <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.</p> <p>Provide this parameter only if you want to use own custom domain for your user pool. Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain instead.</p> <p>For more information about the hosted domain and custom domains, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html">Configuring a User Pool Domain</a>.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: Domain
-- Required key: UserPoolId
-- @return CreateUserPoolDomainRequest structure as a key-value pair table
function M.CreateUserPoolDomainRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserPoolDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
		["CustomDomainConfig"] = args["CustomDomainConfig"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertCreateUserPoolDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateResourceServerResponse = { ["ResourceServer"] = true, nil }

function asserts.AssertCreateResourceServerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceServerResponse to be of type 'table'")
	assert(struct["ResourceServer"], "Expected key ResourceServer to exist in table")
	if struct["ResourceServer"] then asserts.AssertResourceServerType(struct["ResourceServer"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceServerResponse[k], "CreateResourceServerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceServerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceServer [ResourceServerType] <p>The newly created resource server.</p>
-- Required key: ResourceServer
-- @return CreateResourceServerResponse structure as a key-value pair table
function M.CreateResourceServerResponse(args)
	assert(args, "You must provide an argument table when creating CreateResourceServerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceServer"] = args["ResourceServer"],
	}
	asserts.AssertCreateResourceServerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthenticationResultType = { ["ExpiresIn"] = true, ["RefreshToken"] = true, ["TokenType"] = true, ["NewDeviceMetadata"] = true, ["IdToken"] = true, ["AccessToken"] = true, nil }

function asserts.AssertAuthenticationResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthenticationResultType to be of type 'table'")
	if struct["ExpiresIn"] then asserts.AssertIntegerType(struct["ExpiresIn"]) end
	if struct["RefreshToken"] then asserts.AssertTokenModelType(struct["RefreshToken"]) end
	if struct["TokenType"] then asserts.AssertStringType(struct["TokenType"]) end
	if struct["NewDeviceMetadata"] then asserts.AssertNewDeviceMetadataType(struct["NewDeviceMetadata"]) end
	if struct["IdToken"] then asserts.AssertTokenModelType(struct["IdToken"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthenticationResultType[k], "AuthenticationResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthenticationResultType
-- <p>The authentication result.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpiresIn [IntegerType] <p>The expiration period of the authentication result in seconds.</p>
-- * RefreshToken [TokenModelType] <p>The refresh token.</p>
-- * TokenType [StringType] <p>The token type.</p>
-- * NewDeviceMetadata [NewDeviceMetadataType] <p>The new device metadata from an authentication result.</p>
-- * IdToken [TokenModelType] <p>The ID token.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- @return AuthenticationResultType structure as a key-value pair table
function M.AuthenticationResultType(args)
	assert(args, "You must provide an argument table when creating AuthenticationResultType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExpiresIn"] = args["ExpiresIn"],
		["RefreshToken"] = args["RefreshToken"],
		["TokenType"] = args["TokenType"],
		["NewDeviceMetadata"] = args["NewDeviceMetadata"],
		["IdToken"] = args["IdToken"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertAuthenticationResultType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UICustomizationType = { ["UserPoolId"] = true, ["LastModifiedDate"] = true, ["ImageUrl"] = true, ["ClientId"] = true, ["CSSVersion"] = true, ["CreationDate"] = true, ["CSS"] = true, nil }

function asserts.AssertUICustomizationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UICustomizationType to be of type 'table'")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ImageUrl"] then asserts.AssertImageUrlType(struct["ImageUrl"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["CSSVersion"] then asserts.AssertCSSVersionType(struct["CSSVersion"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["CSS"] then asserts.AssertCSSType(struct["CSS"]) end
	for k,_ in pairs(struct) do
		assert(keys.UICustomizationType[k], "UICustomizationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UICustomizationType
-- <p>A container for the UI customization information for a user pool's built-in app UI.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- * LastModifiedDate [DateType] <p>The last-modified date for the UI customization.</p>
-- * ImageUrl [ImageUrlType] <p>The logo image for the UI customization.</p>
-- * ClientId [ClientIdType] <p>The client ID for the client app.</p>
-- * CSSVersion [CSSVersionType] <p>The CSS version number.</p>
-- * CreationDate [DateType] <p>The creation date for the UI customization.</p>
-- * CSS [CSSType] <p>The CSS values in the UI customization.</p>
-- @return UICustomizationType structure as a key-value pair table
function M.UICustomizationType(args)
	assert(args, "You must provide an argument table when creating UICustomizationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ImageUrl"] = args["ImageUrl"],
		["ClientId"] = args["ClientId"],
		["CSSVersion"] = args["CSSVersion"],
		["CreationDate"] = args["CreationDate"],
		["CSS"] = args["CSS"],
	}
	asserts.AssertUICustomizationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminRemoveUserFromGroupRequest = { ["Username"] = true, ["GroupName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminRemoveUserFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRemoveUserFromGroupRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminRemoveUserFromGroupRequest[k], "AdminRemoveUserFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRemoveUserFromGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The username for the user.</p>
-- * GroupName [GroupNameType] <p>The group name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: GroupName
-- @return AdminRemoveUserFromGroupRequest structure as a key-value pair table
function M.AdminRemoveUserFromGroupRequest(args)
	assert(args, "You must provide an argument table when creating AdminRemoveUserFromGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminRemoveUserFromGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateAuthRequest = { ["AnalyticsMetadata"] = true, ["UserContextData"] = true, ["AuthParameters"] = true, ["ClientId"] = true, ["AuthFlow"] = true, ["ClientMetadata"] = true, nil }

function asserts.AssertInitiateAuthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateAuthRequest to be of type 'table'")
	assert(struct["AuthFlow"], "Expected key AuthFlow to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["AuthParameters"] then asserts.AssertAuthParametersType(struct["AuthParameters"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["AuthFlow"] then asserts.AssertAuthFlowType(struct["AuthFlow"]) end
	if struct["ClientMetadata"] then asserts.AssertClientMetadataType(struct["ClientMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateAuthRequest[k], "InitiateAuthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateAuthRequest
-- <p>Initiates the authentication request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>InitiateAuth</code> calls.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * AuthParameters [AuthParametersType] <p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>REFRESH_TOKEN</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * AuthFlow [AuthFlowType] <p>The authentication flow for this call to execute. The API action will depend on this value. For example: </p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and <code>SRP_A</code> and return the SRP variables to be used for next challenge execution.</p> </li> <li> <p> <code>USER_PASSWORD_AUTH</code> will take in <code>USERNAME</code> and <code>PASSWORD</code> and return the next challenge or tokens.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> <li> <p> <code>USER_PASSWORD_AUTH</code>: Non-SRP authentication flow; USERNAME and PASSWORD are passed directly. If a user migration Lambda trigger is set, this flow will invoke the user migration Lambda if the USERNAME is not found in the user pool. </p> </li> </ul> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>
-- * ClientMetadata [ClientMetadataType] <p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>
-- Required key: AuthFlow
-- Required key: ClientId
-- @return InitiateAuthRequest structure as a key-value pair table
function M.InitiateAuthRequest(args)
	assert(args, "You must provide an argument table when creating InitiateAuthRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["UserContextData"] = args["UserContextData"],
		["AuthParameters"] = args["AuthParameters"],
		["ClientId"] = args["ClientId"],
		["AuthFlow"] = args["AuthFlow"],
		["ClientMetadata"] = args["ClientMetadata"],
	}
	asserts.AssertInitiateAuthRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicesRequest = { ["PaginationToken"] = true, ["Limit"] = true, ["AccessToken"] = true, nil }

function asserts.AssertListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["PaginationToken"] then asserts.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Limit"] then asserts.AssertQueryLimitType(struct["Limit"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicesRequest[k], "ListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesRequest
-- <p>Represents the request to list the devices.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [SearchPaginationTokenType] <p>The pagination token for the list request.</p>
-- * Limit [QueryLimitType] <p>The limit of the device request.</p>
-- * AccessToken [TokenModelType] <p>The access tokens for the request to list devices.</p>
-- Required key: AccessToken
-- @return ListDevicesRequest structure as a key-value pair table
function M.ListDevicesRequest(args)
	assert(args, "You must provide an argument table when creating ListDevicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["Limit"] = args["Limit"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertListDevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserImportJobResponse = { ["UserImportJob"] = true, nil }

function asserts.AssertCreateUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then asserts.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserImportJobResponse[k], "CreateUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserImportJobResponse
-- <p>Represents the response from the server to the request to create the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
-- @return CreateUserImportJobResponse structure as a key-value pair table
function M.CreateUserImportJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertCreateUserImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminGetUserRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminGetUserRequest[k], "AdminGetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetUserRequest
-- <p>Represents the request to get the specified user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to retrieve.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to get information about the user.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminGetUserRequest structure as a key-value pair table
function M.AdminGetUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminGetUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminGetUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserImportJobsRequest = { ["PaginationToken"] = true, ["MaxResults"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListUserImportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserImportJobsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["PaginationToken"] then asserts.AssertPaginationKeyType(struct["PaginationToken"]) end
	if struct["MaxResults"] then asserts.AssertPoolQueryLimitType(struct["MaxResults"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserImportJobsRequest[k], "ListUserImportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserImportJobsRequest
-- <p>Represents the request to list the user import jobs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationKeyType] <p>An identifier that was returned from the previous call to <code>ListUserImportJobs</code>, which can be used to return the next set of import jobs in the list.</p>
-- * MaxResults [PoolQueryLimitType] <p>The maximum number of import jobs you want the request to return.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- Required key: UserPoolId
-- Required key: MaxResults
-- @return ListUserImportJobsRequest structure as a key-value pair table
function M.ListUserImportJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListUserImportJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUserImportJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaConfigType = { ["PostConfirmation"] = true, ["CreateAuthChallenge"] = true, ["VerifyAuthChallengeResponse"] = true, ["PreAuthentication"] = true, ["PostAuthentication"] = true, ["CustomMessage"] = true, ["PreSignUp"] = true, ["PreTokenGeneration"] = true, ["DefineAuthChallenge"] = true, ["UserMigration"] = true, nil }

function asserts.AssertLambdaConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaConfigType to be of type 'table'")
	if struct["PostConfirmation"] then asserts.AssertArnType(struct["PostConfirmation"]) end
	if struct["CreateAuthChallenge"] then asserts.AssertArnType(struct["CreateAuthChallenge"]) end
	if struct["VerifyAuthChallengeResponse"] then asserts.AssertArnType(struct["VerifyAuthChallengeResponse"]) end
	if struct["PreAuthentication"] then asserts.AssertArnType(struct["PreAuthentication"]) end
	if struct["PostAuthentication"] then asserts.AssertArnType(struct["PostAuthentication"]) end
	if struct["CustomMessage"] then asserts.AssertArnType(struct["CustomMessage"]) end
	if struct["PreSignUp"] then asserts.AssertArnType(struct["PreSignUp"]) end
	if struct["PreTokenGeneration"] then asserts.AssertArnType(struct["PreTokenGeneration"]) end
	if struct["DefineAuthChallenge"] then asserts.AssertArnType(struct["DefineAuthChallenge"]) end
	if struct["UserMigration"] then asserts.AssertArnType(struct["UserMigration"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaConfigType[k], "LambdaConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaConfigType
-- <p>Specifies the configuration for AWS Lambda triggers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PostConfirmation [ArnType] <p>A post-confirmation AWS Lambda trigger.</p>
-- * CreateAuthChallenge [ArnType] <p>Creates an authentication challenge.</p>
-- * VerifyAuthChallengeResponse [ArnType] <p>Verifies the authentication challenge response.</p>
-- * PreAuthentication [ArnType] <p>A pre-authentication AWS Lambda trigger.</p>
-- * PostAuthentication [ArnType] <p>A post-authentication AWS Lambda trigger.</p>
-- * CustomMessage [ArnType] <p>A custom Message AWS Lambda trigger.</p>
-- * PreSignUp [ArnType] <p>A pre-registration AWS Lambda trigger.</p>
-- * PreTokenGeneration [ArnType] <p>A Lambda trigger that is invoked before token generation.</p>
-- * DefineAuthChallenge [ArnType] <p>Defines the authentication challenge.</p>
-- * UserMigration [ArnType] <p>The user migration Lambda config type.</p>
-- @return LambdaConfigType structure as a key-value pair table
function M.LambdaConfigType(args)
	assert(args, "You must provide an argument table when creating LambdaConfigType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PostConfirmation"] = args["PostConfirmation"],
		["CreateAuthChallenge"] = args["CreateAuthChallenge"],
		["VerifyAuthChallengeResponse"] = args["VerifyAuthChallengeResponse"],
		["PreAuthentication"] = args["PreAuthentication"],
		["PostAuthentication"] = args["PostAuthentication"],
		["CustomMessage"] = args["CustomMessage"],
		["PreSignUp"] = args["PreSignUp"],
		["PreTokenGeneration"] = args["PreTokenGeneration"],
		["DefineAuthChallenge"] = args["DefineAuthChallenge"],
		["UserMigration"] = args["UserMigration"],
	}
	asserts.AssertLambdaConfigType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRiskConfigurationResponse = { ["RiskConfiguration"] = true, nil }

function asserts.AssertDescribeRiskConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRiskConfigurationResponse to be of type 'table'")
	assert(struct["RiskConfiguration"], "Expected key RiskConfiguration to exist in table")
	if struct["RiskConfiguration"] then asserts.AssertRiskConfigurationType(struct["RiskConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRiskConfigurationResponse[k], "DescribeRiskConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRiskConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RiskConfiguration [RiskConfigurationType] <p>The risk configuration.</p>
-- Required key: RiskConfiguration
-- @return DescribeRiskConfigurationResponse structure as a key-value pair table
function M.DescribeRiskConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRiskConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RiskConfiguration"] = args["RiskConfiguration"],
	}
	asserts.AssertDescribeRiskConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminListUserAuthEventsRequest = { ["Username"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminListUserAuthEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListUserAuthEventsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertQueryLimitType(struct["MaxResults"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminListUserAuthEventsRequest[k], "AdminListUserAuthEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListUserAuthEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user pool username or an alias.</p>
-- * NextToken [PaginationKey] <p>A pagination token.</p>
-- * MaxResults [QueryLimitType] <p>The maximum number of authentication events to return.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminListUserAuthEventsRequest structure as a key-value pair table
function M.AdminListUserAuthEventsRequest(args)
	assert(args, "You must provide an argument table when creating AdminListUserAuthEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminListUserAuthEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersResponse = { ["PaginationToken"] = true, ["Users"] = true, nil }

function asserts.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Users"] then asserts.AssertUsersListType(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersResponse[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
-- <p>The response from the request to list users.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [SearchPaginationTokenType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Users [UsersListType] <p>The users returned in the request to list users.</p>
-- @return ListUsersResponse structure as a key-value pair table
function M.ListUsersResponse(args)
	assert(args, "You must provide an argument table when creating ListUsersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["Users"] = args["Users"],
	}
	asserts.AssertListUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProviderUserIdentifierType = { ["ProviderAttributeName"] = true, ["ProviderAttributeValue"] = true, ["ProviderName"] = true, nil }

function asserts.AssertProviderUserIdentifierType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProviderUserIdentifierType to be of type 'table'")
	if struct["ProviderAttributeName"] then asserts.AssertStringType(struct["ProviderAttributeName"]) end
	if struct["ProviderAttributeValue"] then asserts.AssertStringType(struct["ProviderAttributeValue"]) end
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProviderUserIdentifierType[k], "ProviderUserIdentifierType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProviderUserIdentifierType
-- <p>A container for information about an identity provider for a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProviderAttributeName [StringType] <p>The name of the provider attribute to link to, for example, <code>NameID</code>.</p>
-- * ProviderAttributeValue [StringType] <p>The value of the provider attribute to link to, for example, <code>xxxxx_account</code>.</p>
-- * ProviderName [ProviderNameType] <p>The name of the provider, for example, Facebook, Google, or Login with Amazon.</p>
-- @return ProviderUserIdentifierType structure as a key-value pair table
function M.ProviderUserIdentifierType(args)
	assert(args, "You must provide an argument table when creating ProviderUserIdentifierType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProviderAttributeName"] = args["ProviderAttributeName"],
		["ProviderAttributeValue"] = args["ProviderAttributeValue"],
		["ProviderName"] = args["ProviderName"],
	}
	asserts.AssertProviderUserIdentifierType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SignUpResponse = { ["UserConfirmed"] = true, ["UserSub"] = true, ["CodeDeliveryDetails"] = true, nil }

function asserts.AssertSignUpResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignUpResponse to be of type 'table'")
	assert(struct["UserConfirmed"], "Expected key UserConfirmed to exist in table")
	assert(struct["UserSub"], "Expected key UserSub to exist in table")
	if struct["UserConfirmed"] then asserts.AssertBooleanType(struct["UserConfirmed"]) end
	if struct["UserSub"] then asserts.AssertStringType(struct["UserSub"]) end
	if struct["CodeDeliveryDetails"] then asserts.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignUpResponse[k], "SignUpResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignUpResponse
-- <p>The response from the server for a registration request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserConfirmed [BooleanType] <p>A response from the server indicating that a user registration has been confirmed.</p>
-- * UserSub [StringType] <p>The UUID of the authenticated user. This is not the same as <code>username</code>.</p>
-- * CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server response to the user registration request.</p>
-- Required key: UserConfirmed
-- Required key: UserSub
-- @return SignUpResponse structure as a key-value pair table
function M.SignUpResponse(args)
	assert(args, "You must provide an argument table when creating SignUpResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserConfirmed"] = args["UserConfirmed"],
		["UserSub"] = args["UserSub"],
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertSignUpResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGroupRequest = { ["GroupName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertGetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupRequest[k], "GetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupNameType] <p>The name of the group.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: GroupName
-- Required key: UserPoolId
-- @return GetGroupRequest structure as a key-value pair table
function M.GetGroupRequest(args)
	assert(args, "You must provide an argument table when creating GetGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GroupType = { ["Description"] = true, ["Precedence"] = true, ["LastModifiedDate"] = true, ["RoleArn"] = true, ["GroupName"] = true, ["UserPoolId"] = true, ["CreationDate"] = true, nil }

function asserts.AssertGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupType to be of type 'table'")
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["Precedence"] then asserts.AssertPrecedenceType(struct["Precedence"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["RoleArn"] then asserts.AssertArnType(struct["RoleArn"]) end
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupType[k], "GroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupType
-- <p>The group type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [DescriptionType] <p>A string containing the description of the group.</p>
-- * Precedence [PrecedenceType] <p>A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. If a user belongs to two or more groups, it is the group with the highest precedence whose role ARN will be used in the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the user's tokens. Groups with higher <code>Precedence</code> values take precedence over groups with lower <code>Precedence</code> values or with null <code>Precedence</code> values.</p> <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither group takes precedence over the other. If two groups with the same <code>Precedence</code> have the same role ARN, that role is used in the <code>cognito:preferred_role</code> claim in tokens for users in each group. If the two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is not set in users' tokens.</p> <p>The default <code>Precedence</code> value is null.</p>
-- * LastModifiedDate [DateType] <p>The date the group was last modified.</p>
-- * RoleArn [ArnType] <p>The role ARN for the group.</p>
-- * GroupName [GroupNameType] <p>The name of the group.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- * CreationDate [DateType] <p>The date the group was created.</p>
-- @return GroupType structure as a key-value pair table
function M.GroupType(args)
	assert(args, "You must provide an argument table when creating GroupType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Precedence"] = args["Precedence"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["RoleArn"] = args["RoleArn"],
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertGroupType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SchemaAttributeType = { ["Name"] = true, ["NumberAttributeConstraints"] = true, ["StringAttributeConstraints"] = true, ["DeveloperOnlyAttribute"] = true, ["Required"] = true, ["AttributeDataType"] = true, ["Mutable"] = true, nil }

function asserts.AssertSchemaAttributeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaAttributeType to be of type 'table'")
	if struct["Name"] then asserts.AssertCustomAttributeNameType(struct["Name"]) end
	if struct["NumberAttributeConstraints"] then asserts.AssertNumberAttributeConstraintsType(struct["NumberAttributeConstraints"]) end
	if struct["StringAttributeConstraints"] then asserts.AssertStringAttributeConstraintsType(struct["StringAttributeConstraints"]) end
	if struct["DeveloperOnlyAttribute"] then asserts.AssertBooleanType(struct["DeveloperOnlyAttribute"]) end
	if struct["Required"] then asserts.AssertBooleanType(struct["Required"]) end
	if struct["AttributeDataType"] then asserts.AssertAttributeDataType(struct["AttributeDataType"]) end
	if struct["Mutable"] then asserts.AssertBooleanType(struct["Mutable"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaAttributeType[k], "SchemaAttributeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaAttributeType
-- <p>Contains information about the schema attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [CustomAttributeNameType] <p>A schema attribute of the name type.</p>
-- * NumberAttributeConstraints [NumberAttributeConstraintsType] <p>Specifies the constraints for an attribute of the number type.</p>
-- * StringAttributeConstraints [StringAttributeConstraintsType] <p>Specifies the constraints for an attribute of the string type.</p>
-- * DeveloperOnlyAttribute [BooleanType] <p>Specifies whether the attribute type is developer only.</p>
-- * Required [BooleanType] <p>Specifies whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.</p>
-- * AttributeDataType [AttributeDataType] <p>The attribute data type.</p>
-- * Mutable [BooleanType] <p>Specifies whether the value of the attribute can be changed.</p>
-- @return SchemaAttributeType structure as a key-value pair table
function M.SchemaAttributeType(args)
	assert(args, "You must provide an argument table when creating SchemaAttributeType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["NumberAttributeConstraints"] = args["NumberAttributeConstraints"],
		["StringAttributeConstraints"] = args["StringAttributeConstraints"],
		["DeveloperOnlyAttribute"] = args["DeveloperOnlyAttribute"],
		["Required"] = args["Required"],
		["AttributeDataType"] = args["AttributeDataType"],
		["Mutable"] = args["Mutable"],
	}
	asserts.AssertSchemaAttributeType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventFeedbackType = { ["FeedbackValue"] = true, ["FeedbackDate"] = true, ["Provider"] = true, nil }

function asserts.AssertEventFeedbackType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventFeedbackType to be of type 'table'")
	assert(struct["FeedbackValue"], "Expected key FeedbackValue to exist in table")
	assert(struct["Provider"], "Expected key Provider to exist in table")
	if struct["FeedbackValue"] then asserts.AssertFeedbackValueType(struct["FeedbackValue"]) end
	if struct["FeedbackDate"] then asserts.AssertDateType(struct["FeedbackDate"]) end
	if struct["Provider"] then asserts.AssertStringType(struct["Provider"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventFeedbackType[k], "EventFeedbackType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventFeedbackType
-- <p>Specifies the event feedback type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FeedbackValue [FeedbackValueType] <p>The event feedback value.</p>
-- * FeedbackDate [DateType] <p>The event feedback date.</p>
-- * Provider [StringType] <p>The provider.</p>
-- Required key: FeedbackValue
-- Required key: Provider
-- @return EventFeedbackType structure as a key-value pair table
function M.EventFeedbackType(args)
	assert(args, "You must provide an argument table when creating EventFeedbackType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FeedbackValue"] = args["FeedbackValue"],
		["FeedbackDate"] = args["FeedbackDate"],
		["Provider"] = args["Provider"],
	}
	asserts.AssertEventFeedbackType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainDescriptionType = { ["Status"] = true, ["Domain"] = true, ["UserPoolId"] = true, ["CloudFrontDistribution"] = true, ["CustomDomainConfig"] = true, ["S3Bucket"] = true, ["Version"] = true, ["AWSAccountId"] = true, nil }

function asserts.AssertDomainDescriptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDescriptionType to be of type 'table'")
	if struct["Status"] then asserts.AssertDomainStatusType(struct["Status"]) end
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["CloudFrontDistribution"] then asserts.AssertStringType(struct["CloudFrontDistribution"]) end
	if struct["CustomDomainConfig"] then asserts.AssertCustomDomainConfigType(struct["CustomDomainConfig"]) end
	if struct["S3Bucket"] then asserts.AssertS3BucketType(struct["S3Bucket"]) end
	if struct["Version"] then asserts.AssertDomainVersionType(struct["Version"]) end
	if struct["AWSAccountId"] then asserts.AssertAWSAccountIdType(struct["AWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainDescriptionType[k], "DomainDescriptionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDescriptionType
-- <p>A container for information about a domain.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DomainStatusType] <p>The domain status.</p>
-- * Domain [DomainType] <p>The domain string.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * CloudFrontDistribution [StringType] <p>The ARN of the CloudFront distribution.</p>
-- * CustomDomainConfig [CustomDomainConfigType] 
-- * S3Bucket [S3BucketType] <p>The S3 bucket where the static files for this domain are stored.</p>
-- * Version [DomainVersionType] <p>The app version.</p>
-- * AWSAccountId [AWSAccountIdType] <p>The AWS account ID for the user pool owner.</p>
-- @return DomainDescriptionType structure as a key-value pair table
function M.DomainDescriptionType(args)
	assert(args, "You must provide an argument table when creating DomainDescriptionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Domain"] = args["Domain"],
		["UserPoolId"] = args["UserPoolId"],
		["CloudFrontDistribution"] = args["CloudFrontDistribution"],
		["CustomDomainConfig"] = args["CustomDomainConfig"],
		["S3Bucket"] = args["S3Bucket"],
		["Version"] = args["Version"],
		["AWSAccountId"] = args["AWSAccountId"],
	}
	asserts.AssertDomainDescriptionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountTakeoverActionType = { ["Notify"] = true, ["EventAction"] = true, nil }

function asserts.AssertAccountTakeoverActionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountTakeoverActionType to be of type 'table'")
	assert(struct["Notify"], "Expected key Notify to exist in table")
	assert(struct["EventAction"], "Expected key EventAction to exist in table")
	if struct["Notify"] then asserts.AssertAccountTakeoverActionNotifyType(struct["Notify"]) end
	if struct["EventAction"] then asserts.AssertAccountTakeoverEventActionType(struct["EventAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountTakeoverActionType[k], "AccountTakeoverActionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountTakeoverActionType
-- <p>Account takeover action type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notify [AccountTakeoverActionNotifyType] <p>Flag specifying whether to send a notification.</p>
-- * EventAction [AccountTakeoverEventActionType] <p>The event action.</p> <ul> <li> <p> <code>BLOCK</code> Choosing this action will block the request.</p> </li> <li> <p> <code>MFA_IF_CONFIGURED</code> Throw MFA challenge if user has configured it, else allow the request.</p> </li> <li> <p> <code>MFA_REQUIRED</code> Throw MFA challenge if user has configured it, else block the request.</p> </li> <li> <p> <code>NO_ACTION</code> Allow the user sign-in.</p> </li> </ul>
-- Required key: Notify
-- Required key: EventAction
-- @return AccountTakeoverActionType structure as a key-value pair table
function M.AccountTakeoverActionType(args)
	assert(args, "You must provide an argument table when creating AccountTakeoverActionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notify"] = args["Notify"],
		["EventAction"] = args["EventAction"],
	}
	asserts.AssertAccountTakeoverActionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserImportJobRequest = { ["CloudWatchLogsRoleArn"] = true, ["UserPoolId"] = true, ["JobName"] = true, nil }

function asserts.AssertCreateUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserImportJobRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["CloudWatchLogsRoleArn"], "Expected key CloudWatchLogsRoleArn to exist in table")
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertArnType(struct["CloudWatchLogsRoleArn"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobName"] then asserts.AssertUserImportJobNameType(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserImportJobRequest[k], "CreateUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserImportJobRequest
-- <p>Represents the request to create the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudWatchLogsRoleArn [ArnType] <p>The role ARN for the Amazon CloudWatch Logging role for the user import job.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- * JobName [UserImportJobNameType] <p>The job name for the user import job.</p>
-- Required key: JobName
-- Required key: UserPoolId
-- Required key: CloudWatchLogsRoleArn
-- @return CreateUserImportJobRequest structure as a key-value pair table
function M.CreateUserImportJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["UserPoolId"] = args["UserPoolId"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertCreateUserImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUICustomizationRequest = { ["CSS"] = true, ["ImageFile"] = true, ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertSetUICustomizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUICustomizationRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["CSS"] then asserts.AssertCSSType(struct["CSS"]) end
	if struct["ImageFile"] then asserts.AssertImageFileType(struct["ImageFile"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetUICustomizationRequest[k], "SetUICustomizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUICustomizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CSS [CSSType] <p>The CSS values in the UI customization.</p>
-- * ImageFile [ImageFileType] <p>The uploaded logo image for the UI customization.</p>
-- * ClientId [ClientIdType] <p>The client ID for the client app.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- @return SetUICustomizationRequest structure as a key-value pair table
function M.SetUICustomizationRequest(args)
	assert(args, "You must provide an argument table when creating SetUICustomizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CSS"] = args["CSS"],
		["ImageFile"] = args["ImageFile"],
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertSetUICustomizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserResponse = { ["Username"] = true, ["UserMFASettingList"] = true, ["MFAOptions"] = true, ["UserAttributes"] = true, ["PreferredMfaSetting"] = true, nil }

function asserts.AssertGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserResponse to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserMFASettingList"] then asserts.AssertUserMFASettingListType(struct["UserMFASettingList"]) end
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["PreferredMfaSetting"] then asserts.AssertStringType(struct["PreferredMfaSetting"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserResponse[k], "GetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserResponse
-- <p>Represents the response from the server from the request to get information about the user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to retrieve from the get user request.</p>
-- * UserMFASettingList [UserMFASettingListType] <p>The list of the user's MFA settings.</p>
-- * MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * PreferredMfaSetting [StringType] <p>The user's preferred MFA setting.</p>
-- Required key: Username
-- Required key: UserAttributes
-- @return GetUserResponse structure as a key-value pair table
function M.GetUserResponse(args)
	assert(args, "You must provide an argument table when creating GetUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserMFASettingList"] = args["UserMFASettingList"],
		["MFAOptions"] = args["MFAOptions"],
		["UserAttributes"] = args["UserAttributes"],
		["PreferredMfaSetting"] = args["PreferredMfaSetting"],
	}
	asserts.AssertGetUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserPoolClientsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListUserPoolClientsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolClientsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertQueryLimit(struct["MaxResults"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserPoolClientsRequest[k], "ListUserPoolClientsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolClientsRequest
-- <p>Represents the request to list the user pool clients.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * MaxResults [QueryLimit] <p>The maximum number of results you want the request to return when listing the user pool clients.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to list user pool clients.</p>
-- Required key: UserPoolId
-- @return ListUserPoolClientsRequest structure as a key-value pair table
function M.ListUserPoolClientsRequest(args)
	assert(args, "You must provide an argument table when creating ListUserPoolClientsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUserPoolClientsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUserGlobalSignOutResponse = { nil }

function asserts.AssertAdminUserGlobalSignOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUserGlobalSignOutResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminUserGlobalSignOutResponse[k], "AdminUserGlobalSignOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUserGlobalSignOutResponse
-- <p>The global sign-out response, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminUserGlobalSignOutResponse structure as a key-value pair table
function M.AdminUserGlobalSignOutResponse(args)
	assert(args, "You must provide an argument table when creating AdminUserGlobalSignOutResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminUserGlobalSignOutResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserPoolDomainResponse = { nil }

function asserts.AssertDeleteUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserPoolDomainResponse[k], "DeleteUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUserPoolDomainResponse structure as a key-value pair table
function M.DeleteUserPoolDomainResponse(args)
	assert(args, "You must provide an argument table when creating DeleteUserPoolDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUserPoolDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RespondToAuthChallengeResponse = { ["AuthenticationResult"] = true, ["ChallengeName"] = true, ["ChallengeParameters"] = true, ["Session"] = true, nil }

function asserts.AssertRespondToAuthChallengeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondToAuthChallengeResponse to be of type 'table'")
	if struct["AuthenticationResult"] then asserts.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then asserts.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondToAuthChallengeResponse[k], "RespondToAuthChallengeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondToAuthChallengeResponse
-- <p>The response to respond to the authentication challenge.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationResult [AuthenticationResultType] <p>The result returned by the server in response to the request to respond to the authentication challenge.</p>
-- * ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see .</p>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. For more information, see .</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the or API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- @return RespondToAuthChallengeResponse structure as a key-value pair table
function M.RespondToAuthChallengeResponse(args)
	assert(args, "You must provide an argument table when creating RespondToAuthChallengeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertRespondToAuthChallengeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminListUserAuthEventsResponse = { ["AuthEvents"] = true, ["NextToken"] = true, nil }

function asserts.AssertAdminListUserAuthEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListUserAuthEventsResponse to be of type 'table'")
	if struct["AuthEvents"] then asserts.AssertAuthEventsType(struct["AuthEvents"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminListUserAuthEventsResponse[k], "AdminListUserAuthEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListUserAuthEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthEvents [AuthEventsType] <p>The response object. It includes the <code>EventID</code>, <code>EventType</code>, <code>CreationDate</code>, <code>EventRisk</code>, and <code>EventResponse</code>.</p>
-- * NextToken [PaginationKey] <p>A pagination token.</p>
-- @return AdminListUserAuthEventsResponse structure as a key-value pair table
function M.AdminListUserAuthEventsResponse(args)
	assert(args, "You must provide an argument table when creating AdminListUserAuthEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthEvents"] = args["AuthEvents"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertAdminListUserAuthEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SMSMfaSettingsType = { ["Enabled"] = true, ["PreferredMfa"] = true, nil }

function asserts.AssertSMSMfaSettingsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSMfaSettingsType to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["PreferredMfa"] then asserts.AssertBooleanType(struct["PreferredMfa"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSMfaSettingsType[k], "SMSMfaSettingsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSMfaSettingsType
-- <p>The SMS multi-factor authentication (MFA) settings type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [BooleanType] <p>Specifies whether SMS text message MFA is enabled.</p>
-- * PreferredMfa [BooleanType] <p>The preferred MFA method.</p>
-- @return SMSMfaSettingsType structure as a key-value pair table
function M.SMSMfaSettingsType(args)
	assert(args, "You must provide an argument table when creating SMSMfaSettingsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["PreferredMfa"] = args["PreferredMfa"],
	}
	asserts.AssertSMSMfaSettingsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceRequest = { ["DeviceKey"] = true, ["AccessToken"] = true, nil }

function asserts.AssertGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceRequest to be of type 'table'")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceRequest[k], "GetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceRequest
-- <p>Represents the request to get the device.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- Required key: DeviceKey
-- @return GetDeviceRequest structure as a key-value pair table
function M.GetDeviceRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceKey"] = args["DeviceKey"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGetDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmForgotPasswordResponse = { nil }

function asserts.AssertConfirmForgotPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmForgotPasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ConfirmForgotPasswordResponse[k], "ConfirmForgotPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmForgotPasswordResponse
-- <p>The response from the server that results from a user's request to retrieve a forgotten password.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ConfirmForgotPasswordResponse structure as a key-value pair table
function M.ConfirmForgotPasswordResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmForgotPasswordResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertConfirmForgotPasswordResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserPoolDomainRequest = { ["Domain"] = true, nil }

function asserts.AssertDescribeUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserPoolDomainRequest[k], "DescribeUserPoolDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolDomainRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [DomainType] <p>The domain string.</p>
-- Required key: Domain
-- @return DescribeUserPoolDomainRequest structure as a key-value pair table
function M.DescribeUserPoolDomainRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserPoolDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
	}
	asserts.AssertDescribeUserPoolDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDevicesResponse = { ["PaginationToken"] = true, ["Devices"] = true, nil }

function asserts.AssertListDevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesResponse to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Devices"] then asserts.AssertDeviceListType(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevicesResponse[k], "ListDevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesResponse
-- <p>Represents the response to list devices.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [SearchPaginationTokenType] <p>The pagination token for the list device response.</p>
-- * Devices [DeviceListType] <p>The devices returned in the list devices response.</p>
-- @return ListDevicesResponse structure as a key-value pair table
function M.ListDevicesResponse(args)
	assert(args, "You must provide an argument table when creating ListDevicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertListDevicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompromisedCredentialsActionsType = { ["EventAction"] = true, nil }

function asserts.AssertCompromisedCredentialsActionsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompromisedCredentialsActionsType to be of type 'table'")
	assert(struct["EventAction"], "Expected key EventAction to exist in table")
	if struct["EventAction"] then asserts.AssertCompromisedCredentialsEventActionType(struct["EventAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompromisedCredentialsActionsType[k], "CompromisedCredentialsActionsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompromisedCredentialsActionsType
-- <p>The compromised credentials actions type</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventAction [CompromisedCredentialsEventActionType] <p>The event action.</p>
-- Required key: EventAction
-- @return CompromisedCredentialsActionsType structure as a key-value pair table
function M.CompromisedCredentialsActionsType(args)
	assert(args, "You must provide an argument table when creating CompromisedCredentialsActionsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventAction"] = args["EventAction"],
	}
	asserts.AssertCompromisedCredentialsActionsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetIdentityProviderByIdentifierResponse = { ["IdentityProvider"] = true, nil }

function asserts.AssertGetIdentityProviderByIdentifierResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityProviderByIdentifierResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then asserts.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityProviderByIdentifierResponse[k], "GetIdentityProviderByIdentifierResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityProviderByIdentifierResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityProvider [IdentityProviderType] <p>The identity provider object.</p>
-- Required key: IdentityProvider
-- @return GetIdentityProviderByIdentifierResponse structure as a key-value pair table
function M.GetIdentityProviderByIdentifierResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityProviderByIdentifierResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertGetIdentityProviderByIdentifierResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminSetUserSettingsResponse = { nil }

function asserts.AssertAdminSetUserSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminSetUserSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminSetUserSettingsResponse[k], "AdminSetUserSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminSetUserSettingsResponse
-- <p>Represents the response from the server to set user settings as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminSetUserSettingsResponse structure as a key-value pair table
function M.AdminSetUserSettingsResponse(args)
	assert(args, "You must provide an argument table when creating AdminSetUserSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminSetUserSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUpdateAuthEventFeedbackRequest = { ["Username"] = true, ["EventId"] = true, ["UserPoolId"] = true, ["FeedbackValue"] = true, nil }

function asserts.AssertAdminUpdateAuthEventFeedbackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateAuthEventFeedbackRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["EventId"], "Expected key EventId to exist in table")
	assert(struct["FeedbackValue"], "Expected key FeedbackValue to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["EventId"] then asserts.AssertEventIdType(struct["EventId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["FeedbackValue"] then asserts.AssertFeedbackValueType(struct["FeedbackValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminUpdateAuthEventFeedbackRequest[k], "AdminUpdateAuthEventFeedbackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateAuthEventFeedbackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user pool username.</p>
-- * EventId [EventIdType] <p>The authentication event ID.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * FeedbackValue [FeedbackValueType] <p>The authentication event feedback value.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: EventId
-- Required key: FeedbackValue
-- @return AdminUpdateAuthEventFeedbackRequest structure as a key-value pair table
function M.AdminUpdateAuthEventFeedbackRequest(args)
	assert(args, "You must provide an argument table when creating AdminUpdateAuthEventFeedbackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["EventId"] = args["EventId"],
		["UserPoolId"] = args["UserPoolId"],
		["FeedbackValue"] = args["FeedbackValue"],
	}
	asserts.AssertAdminUpdateAuthEventFeedbackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourceServerRequest = { ["Identifier"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDeleteResourceServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourceServerRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Identifier"], "Expected key Identifier to exist in table")
	if struct["Identifier"] then asserts.AssertResourceServerIdentifierType(struct["Identifier"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourceServerRequest[k], "DeleteResourceServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourceServerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identifier [ResourceServerIdentifierType] <p>The identifier for the resource server.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that hosts the resource server.</p>
-- Required key: UserPoolId
-- Required key: Identifier
-- @return DeleteResourceServerRequest structure as a key-value pair table
function M.DeleteResourceServerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResourceServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identifier"] = args["Identifier"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteResourceServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateIdentityProviderRequest = { ["ProviderDetails"] = true, ["IdpIdentifiers"] = true, ["AttributeMapping"] = true, ["ProviderName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertUpdateIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	if struct["ProviderDetails"] then asserts.AssertProviderDetailsType(struct["ProviderDetails"]) end
	if struct["IdpIdentifiers"] then asserts.AssertIdpIdentifiersListType(struct["IdpIdentifiers"]) end
	if struct["AttributeMapping"] then asserts.AssertAttributeMappingType(struct["AttributeMapping"]) end
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIdentityProviderRequest[k], "UpdateIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIdentityProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProviderDetails [ProviderDetailsType] <p>The identity provider details to be updated, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>
-- * IdpIdentifiers [IdpIdentifiersListType] <p>A list of identity provider identifiers.</p>
-- * AttributeMapping [AttributeMappingType] <p>The identity provider attribute mapping to be changed.</p>
-- * ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: ProviderName
-- @return UpdateIdentityProviderRequest structure as a key-value pair table
function M.UpdateIdentityProviderRequest(args)
	assert(args, "You must provide an argument table when creating UpdateIdentityProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProviderDetails"] = args["ProviderDetails"],
		["IdpIdentifiers"] = args["IdpIdentifiers"],
		["AttributeMapping"] = args["AttributeMapping"],
		["ProviderName"] = args["ProviderName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertUpdateIdentityProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserPoolResponse = { ["UserPool"] = true, nil }

function asserts.AssertCreateUserPoolResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolResponse to be of type 'table'")
	if struct["UserPool"] then asserts.AssertUserPoolType(struct["UserPool"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolResponse[k], "CreateUserPoolResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolResponse
-- <p>Represents the response from the server for the request to create a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPool [UserPoolType] <p>A container for the user pool details.</p>
-- @return CreateUserPoolResponse structure as a key-value pair table
function M.CreateUserPoolResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserPoolResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPool"] = args["UserPool"],
	}
	asserts.AssertCreateUserPoolResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUpdateAuthEventFeedbackResponse = { nil }

function asserts.AssertAdminUpdateAuthEventFeedbackResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateAuthEventFeedbackResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminUpdateAuthEventFeedbackResponse[k], "AdminUpdateAuthEventFeedbackResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateAuthEventFeedbackResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminUpdateAuthEventFeedbackResponse structure as a key-value pair table
function M.AdminUpdateAuthEventFeedbackResponse(args)
	assert(args, "You must provide an argument table when creating AdminUpdateAuthEventFeedbackResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminUpdateAuthEventFeedbackResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminEnableUserRequest = { ["Username"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminEnableUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminEnableUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminEnableUserRequest[k], "AdminEnableUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminEnableUserRequest
-- <p>Represents the request that enables the user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to enable.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to enable the user.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminEnableUserRequest structure as a key-value pair table
function M.AdminEnableUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminEnableUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminEnableUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AnalyticsConfigurationType = { ["UserDataShared"] = true, ["ExternalId"] = true, ["RoleArn"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertAnalyticsConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnalyticsConfigurationType to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["ExternalId"], "Expected key ExternalId to exist in table")
	if struct["UserDataShared"] then asserts.AssertBooleanType(struct["UserDataShared"]) end
	if struct["ExternalId"] then asserts.AssertStringType(struct["ExternalId"]) end
	if struct["RoleArn"] then asserts.AssertArnType(struct["RoleArn"]) end
	if struct["ApplicationId"] then asserts.AssertHexStringType(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnalyticsConfigurationType[k], "AnalyticsConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnalyticsConfigurationType
-- <p>The Amazon Pinpoint analytics configuration for collecting metrics for a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserDataShared [BooleanType] <p>If <code>UserDataShared</code> is <code>true</code>, Amazon Cognito will include user data in the events it publishes to Amazon Pinpoint analytics.</p>
-- * ExternalId [StringType] <p>The external ID.</p>
-- * RoleArn [ArnType] <p>The ARN of an IAM role that authorizes Amazon Cognito to publish events to Amazon Pinpoint analytics.</p>
-- * ApplicationId [HexStringType] <p>The application ID for an Amazon Pinpoint application.</p>
-- Required key: ApplicationId
-- Required key: RoleArn
-- Required key: ExternalId
-- @return AnalyticsConfigurationType structure as a key-value pair table
function M.AnalyticsConfigurationType(args)
	assert(args, "You must provide an argument table when creating AnalyticsConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserDataShared"] = args["UserDataShared"],
		["ExternalId"] = args["ExternalId"],
		["RoleArn"] = args["RoleArn"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertAnalyticsConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolPolicyType = { ["PasswordPolicy"] = true, nil }

function asserts.AssertUserPoolPolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolPolicyType to be of type 'table'")
	if struct["PasswordPolicy"] then asserts.AssertPasswordPolicyType(struct["PasswordPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolPolicyType[k], "UserPoolPolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolPolicyType
-- <p>The policy associated with a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PasswordPolicy [PasswordPolicyType] <p>The password policy.</p>
-- @return UserPoolPolicyType structure as a key-value pair table
function M.UserPoolPolicyType(args)
	assert(args, "You must provide an argument table when creating UserPoolPolicyType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PasswordPolicy"] = args["PasswordPolicy"],
	}
	asserts.AssertUserPoolPolicyType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminSetUserMFAPreferenceResponse = { nil }

function asserts.AssertAdminSetUserMFAPreferenceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminSetUserMFAPreferenceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminSetUserMFAPreferenceResponse[k], "AdminSetUserMFAPreferenceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminSetUserMFAPreferenceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminSetUserMFAPreferenceResponse structure as a key-value pair table
function M.AdminSetUserMFAPreferenceResponse(args)
	assert(args, "You must provide an argument table when creating AdminSetUserMFAPreferenceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminSetUserMFAPreferenceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceType = { ["DeviceLastAuthenticatedDate"] = true, ["DeviceKey"] = true, ["DeviceAttributes"] = true, ["DeviceCreateDate"] = true, ["DeviceLastModifiedDate"] = true, nil }

function asserts.AssertDeviceType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceType to be of type 'table'")
	if struct["DeviceLastAuthenticatedDate"] then asserts.AssertDateType(struct["DeviceLastAuthenticatedDate"]) end
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceAttributes"] then asserts.AssertAttributeListType(struct["DeviceAttributes"]) end
	if struct["DeviceCreateDate"] then asserts.AssertDateType(struct["DeviceCreateDate"]) end
	if struct["DeviceLastModifiedDate"] then asserts.AssertDateType(struct["DeviceLastModifiedDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceType[k], "DeviceType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceType
-- <p>The device type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceLastAuthenticatedDate [DateType] <p>The date in which the device was last authenticated.</p>
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * DeviceAttributes [AttributeListType] <p>The device attributes.</p>
-- * DeviceCreateDate [DateType] <p>The creation date of the device.</p>
-- * DeviceLastModifiedDate [DateType] <p>The last modified date of the device.</p>
-- @return DeviceType structure as a key-value pair table
function M.DeviceType(args)
	assert(args, "You must provide an argument table when creating DeviceType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceLastAuthenticatedDate"] = args["DeviceLastAuthenticatedDate"],
		["DeviceKey"] = args["DeviceKey"],
		["DeviceAttributes"] = args["DeviceAttributes"],
		["DeviceCreateDate"] = args["DeviceCreateDate"],
		["DeviceLastModifiedDate"] = args["DeviceLastModifiedDate"],
	}
	asserts.AssertDeviceType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserPoolClientResponse = { ["UserPoolClient"] = true, nil }

function asserts.AssertDescribeUserPoolClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolClientResponse to be of type 'table'")
	if struct["UserPoolClient"] then asserts.AssertUserPoolClientType(struct["UserPoolClient"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserPoolClientResponse[k], "DescribeUserPoolClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolClientResponse
-- <p>Represents the response from the server from a request to describe the user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolClient [UserPoolClientType] <p>The user pool client from a server response to describe the user pool client.</p>
-- @return DescribeUserPoolClientResponse structure as a key-value pair table
function M.DescribeUserPoolClientResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserPoolClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolClient"] = args["UserPoolClient"],
	}
	asserts.AssertDescribeUserPoolClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminConfirmSignUpResponse = { nil }

function asserts.AssertAdminConfirmSignUpResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminConfirmSignUpResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminConfirmSignUpResponse[k], "AdminConfirmSignUpResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminConfirmSignUpResponse
-- <p>Represents the response from the server for the request to confirm registration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminConfirmSignUpResponse structure as a key-value pair table
function M.AdminConfirmSignUpResponse(args)
	assert(args, "You must provide an argument table when creating AdminConfirmSignUpResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminConfirmSignUpResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIdentityProviderRequest = { ["ProviderName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDeleteIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentityProviderRequest[k], "DeleteIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- Required key: ProviderName
-- @return DeleteIdentityProviderRequest structure as a key-value pair table
function M.DeleteIdentityProviderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIdentityProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProviderName"] = args["ProviderName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteIdentityProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForgotPasswordResponse = { ["CodeDeliveryDetails"] = true, nil }

function asserts.AssertForgotPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgotPasswordResponse to be of type 'table'")
	if struct["CodeDeliveryDetails"] then asserts.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForgotPasswordResponse[k], "ForgotPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgotPasswordResponse
-- <p>Respresents the response from the server regarding the request to reset a password.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server in response to the request to reset a password.</p>
-- @return ForgotPasswordResponse structure as a key-value pair table
function M.ForgotPasswordResponse(args)
	assert(args, "You must provide an argument table when creating ForgotPasswordResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertForgotPasswordResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RespondToAuthChallengeRequest = { ["Session"] = true, ["AnalyticsMetadata"] = true, ["UserContextData"] = true, ["ChallengeResponses"] = true, ["ClientId"] = true, ["ChallengeName"] = true, nil }

function asserts.AssertRespondToAuthChallengeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondToAuthChallengeRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ChallengeName"], "Expected key ChallengeName to exist in table")
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["ChallengeResponses"] then asserts.AssertChallengeResponsesType(struct["ChallengeResponses"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondToAuthChallengeRequest[k], "RespondToAuthChallengeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondToAuthChallengeRequest
-- <p>The request to respond to an authentication challenge.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>RespondToAuthChallenge</code> calls.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * ChallengeResponses [ChallengeResponsesType] <p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see .</p> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>
-- Required key: ClientId
-- Required key: ChallengeName
-- @return RespondToAuthChallengeRequest structure as a key-value pair table
function M.RespondToAuthChallengeRequest(args)
	assert(args, "You must provide an argument table when creating RespondToAuthChallengeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Session"] = args["Session"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["UserContextData"] = args["UserContextData"],
		["ChallengeResponses"] = args["ChallengeResponses"],
		["ClientId"] = args["ClientId"],
		["ChallengeName"] = args["ChallengeName"],
	}
	asserts.AssertRespondToAuthChallengeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VerificationMessageTemplateType = { ["EmailMessageByLink"] = true, ["EmailSubjectByLink"] = true, ["DefaultEmailOption"] = true, ["EmailMessage"] = true, ["EmailSubject"] = true, ["SmsMessage"] = true, nil }

function asserts.AssertVerificationMessageTemplateType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerificationMessageTemplateType to be of type 'table'")
	if struct["EmailMessageByLink"] then asserts.AssertEmailVerificationMessageByLinkType(struct["EmailMessageByLink"]) end
	if struct["EmailSubjectByLink"] then asserts.AssertEmailVerificationSubjectByLinkType(struct["EmailSubjectByLink"]) end
	if struct["DefaultEmailOption"] then asserts.AssertDefaultEmailOptionType(struct["DefaultEmailOption"]) end
	if struct["EmailMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailMessage"]) end
	if struct["EmailSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailSubject"]) end
	if struct["SmsMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerificationMessageTemplateType[k], "VerificationMessageTemplateType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerificationMessageTemplateType
-- <p>The template for verification messages.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailMessageByLink [EmailVerificationMessageByLinkType] <p>The email message template for sending a confirmation link to the user.</p>
-- * EmailSubjectByLink [EmailVerificationSubjectByLinkType] <p>The subject line for the email message template for sending a confirmation link to the user.</p>
-- * DefaultEmailOption [DefaultEmailOptionType] <p>The default email option.</p>
-- * EmailMessage [EmailVerificationMessageType] <p>The email message template.</p>
-- * EmailSubject [EmailVerificationSubjectType] <p>The subject line for the email message template.</p>
-- * SmsMessage [SmsVerificationMessageType] <p>The SMS message template.</p>
-- @return VerificationMessageTemplateType structure as a key-value pair table
function M.VerificationMessageTemplateType(args)
	assert(args, "You must provide an argument table when creating VerificationMessageTemplateType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailMessageByLink"] = args["EmailMessageByLink"],
		["EmailSubjectByLink"] = args["EmailSubjectByLink"],
		["DefaultEmailOption"] = args["DefaultEmailOption"],
		["EmailMessage"] = args["EmailMessage"],
		["EmailSubject"] = args["EmailSubject"],
		["SmsMessage"] = args["SmsMessage"],
	}
	asserts.AssertVerificationMessageTemplateType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserAttributeVerificationCodeRequest = { ["AttributeName"] = true, ["AccessToken"] = true, nil }

function asserts.AssertGetUserAttributeVerificationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserAttributeVerificationCodeRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then asserts.AssertAttributeNameType(struct["AttributeName"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserAttributeVerificationCodeRequest[k], "GetUserAttributeVerificationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserAttributeVerificationCodeRequest
-- <p>Represents the request to get user attribute verification.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [AttributeNameType] <p>The attribute name returned by the server response to get the user attribute verification code.</p>
-- * AccessToken [TokenModelType] <p>The access token returned by the server response to get the user attribute verification code.</p>
-- Required key: AccessToken
-- Required key: AttributeName
-- @return GetUserAttributeVerificationCodeRequest structure as a key-value pair table
function M.GetUserAttributeVerificationCodeRequest(args)
	assert(args, "You must provide an argument table when creating GetUserAttributeVerificationCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGetUserAttributeVerificationCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourceServersResponse = { ["ResourceServers"] = true, ["NextToken"] = true, nil }

function asserts.AssertListResourceServersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceServersResponse to be of type 'table'")
	assert(struct["ResourceServers"], "Expected key ResourceServers to exist in table")
	if struct["ResourceServers"] then asserts.AssertResourceServersListType(struct["ResourceServers"]) end
	if struct["NextToken"] then asserts.AssertPaginationKeyType(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceServersResponse[k], "ListResourceServersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceServersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceServers [ResourceServersListType] <p>The resource servers.</p>
-- * NextToken [PaginationKeyType] <p>A pagination token.</p>
-- Required key: ResourceServers
-- @return ListResourceServersResponse structure as a key-value pair table
function M.ListResourceServersResponse(args)
	assert(args, "You must provide an argument table when creating ListResourceServersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceServers"] = args["ResourceServers"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListResourceServersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserImportJobResponse = { ["UserImportJob"] = true, nil }

function asserts.AssertDescribeUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then asserts.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserImportJobResponse[k], "DescribeUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserImportJobResponse
-- <p>Represents the response from the server to the request to describe the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
-- @return DescribeUserImportJobResponse structure as a key-value pair table
function M.DescribeUserImportJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertDescribeUserImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserPoolRequest = { ["SmsVerificationMessage"] = true, ["EmailVerificationSubject"] = true, ["MfaConfiguration"] = true, ["UserPoolId"] = true, ["EmailVerificationMessage"] = true, ["VerificationMessageTemplate"] = true, ["SmsAuthenticationMessage"] = true, ["UserPoolAddOns"] = true, ["SmsConfiguration"] = true, ["EmailConfiguration"] = true, ["AutoVerifiedAttributes"] = true, ["Policies"] = true, ["UserPoolTags"] = true, ["AdminCreateUserConfig"] = true, ["DeviceConfiguration"] = true, ["LambdaConfig"] = true, nil }

function asserts.AssertUpdateUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["SmsVerificationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["EmailVerificationMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["VerificationMessageTemplate"] then asserts.AssertVerificationMessageTemplateType(struct["VerificationMessageTemplate"]) end
	if struct["SmsAuthenticationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["UserPoolAddOns"] then asserts.AssertUserPoolAddOnsType(struct["UserPoolAddOns"]) end
	if struct["SmsConfiguration"] then asserts.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["EmailConfiguration"] then asserts.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then asserts.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["Policies"] then asserts.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then asserts.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["AdminCreateUserConfig"] then asserts.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["DeviceConfiguration"] then asserts.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["LambdaConfig"] then asserts.AssertLambdaConfigType(struct["LambdaConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserPoolRequest[k], "UpdateUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolRequest
-- <p>Represents the request to update the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SmsVerificationMessage [SmsVerificationMessageType] <p>A container with information about the SMS verification message.</p>
-- * EmailVerificationSubject [EmailVerificationSubjectType] <p>The subject of the email verification message.</p>
-- * MfaConfiguration [UserPoolMfaType] <p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to update.</p>
-- * EmailVerificationMessage [EmailVerificationMessageType] <p>The contents of the email verification message.</p>
-- * VerificationMessageTemplate [VerificationMessageTemplateType] <p>The template for verification messages.</p>
-- * SmsAuthenticationMessage [SmsVerificationMessageType] <p>The contents of the SMS authentication message.</p>
-- * UserPoolAddOns [UserPoolAddOnsType] <p>Used to enable advanced security risk detection. Set the key <code>AdvancedSecurityMode</code> to the value "AUDIT".</p>
-- * SmsConfiguration [SmsConfigurationType] <p>SMS configuration.</p>
-- * EmailConfiguration [EmailConfigurationType] <p>Email configuration.</p>
-- * AutoVerifiedAttributes [VerifiedAttributesListType] <p>The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.</p>
-- * Policies [UserPoolPolicyType] <p>A container with the policies you wish to update in a user pool.</p>
-- * UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- * AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- * DeviceConfiguration [DeviceConfigurationType] <p>Device configuration.</p>
-- * LambdaConfig [LambdaConfigType] <p>The AWS Lambda configuration information from the request to update the user pool.</p>
-- Required key: UserPoolId
-- @return UpdateUserPoolRequest structure as a key-value pair table
function M.UpdateUserPoolRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserPoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SmsVerificationMessage"] = args["SmsVerificationMessage"],
		["EmailVerificationSubject"] = args["EmailVerificationSubject"],
		["MfaConfiguration"] = args["MfaConfiguration"],
		["UserPoolId"] = args["UserPoolId"],
		["EmailVerificationMessage"] = args["EmailVerificationMessage"],
		["VerificationMessageTemplate"] = args["VerificationMessageTemplate"],
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["UserPoolAddOns"] = args["UserPoolAddOns"],
		["SmsConfiguration"] = args["SmsConfiguration"],
		["EmailConfiguration"] = args["EmailConfiguration"],
		["AutoVerifiedAttributes"] = args["AutoVerifiedAttributes"],
		["Policies"] = args["Policies"],
		["UserPoolTags"] = args["UserPoolTags"],
		["AdminCreateUserConfig"] = args["AdminCreateUserConfig"],
		["DeviceConfiguration"] = args["DeviceConfiguration"],
		["LambdaConfig"] = args["LambdaConfig"],
	}
	asserts.AssertUpdateUserPoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserPoolClientRequest = { ["GenerateSecret"] = true, ["AllowedOAuthScopes"] = true, ["UserPoolId"] = true, ["AllowedOAuthFlowsUserPoolClient"] = true, ["AnalyticsConfiguration"] = true, ["LogoutURLs"] = true, ["DefaultRedirectURI"] = true, ["AllowedOAuthFlows"] = true, ["CallbackURLs"] = true, ["ExplicitAuthFlows"] = true, ["WriteAttributes"] = true, ["SupportedIdentityProviders"] = true, ["ReadAttributes"] = true, ["RefreshTokenValidity"] = true, ["ClientName"] = true, nil }

function asserts.AssertCreateUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientName"], "Expected key ClientName to exist in table")
	if struct["GenerateSecret"] then asserts.AssertGenerateSecret(struct["GenerateSecret"]) end
	if struct["AllowedOAuthScopes"] then asserts.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then asserts.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
	if struct["AnalyticsConfiguration"] then asserts.AssertAnalyticsConfigurationType(struct["AnalyticsConfiguration"]) end
	if struct["LogoutURLs"] then asserts.AssertLogoutURLsListType(struct["LogoutURLs"]) end
	if struct["DefaultRedirectURI"] then asserts.AssertRedirectUrlType(struct["DefaultRedirectURI"]) end
	if struct["AllowedOAuthFlows"] then asserts.AssertOAuthFlowsType(struct["AllowedOAuthFlows"]) end
	if struct["CallbackURLs"] then asserts.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["ExplicitAuthFlows"] then asserts.AssertExplicitAuthFlowsListType(struct["ExplicitAuthFlows"]) end
	if struct["WriteAttributes"] then asserts.AssertClientPermissionListType(struct["WriteAttributes"]) end
	if struct["SupportedIdentityProviders"] then asserts.AssertSupportedIdentityProvidersListType(struct["SupportedIdentityProviders"]) end
	if struct["ReadAttributes"] then asserts.AssertClientPermissionListType(struct["ReadAttributes"]) end
	if struct["RefreshTokenValidity"] then asserts.AssertRefreshTokenValidityType(struct["RefreshTokenValidity"]) end
	if struct["ClientName"] then asserts.AssertClientNameType(struct["ClientName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolClientRequest[k], "CreateUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolClientRequest
-- <p>Represents the request to create a user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GenerateSecret [GenerateSecret] <p>Boolean to specify whether you want to generate a secret for the user pool client being created.</p>
-- * AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to create a user pool client.</p>
-- * AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to <code>True</code> if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- * AnalyticsConfiguration [AnalyticsConfigurationType] <p>The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.</p>
-- * LogoutURLs [LogoutURLsListType] <p>A list of allowed logout URLs for the identity providers.</p>
-- * DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p> <p>A redirect URI must:</p> <ul> <li> <p>Be an absolute URI.</p> </li> <li> <p>Be registered with the authorization server.</p> </li> <li> <p>Not include a fragment component.</p> </li> </ul> <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 - Redirection Endpoint</a>.</p> <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.</p> <p>App callback URLs such as myapp://example are also supported.</p>
-- * AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- * CallbackURLs [CallbackURLsListType] <p>A list of allowed redirect (callback) URLs for the identity providers.</p> <p>A redirect URI must:</p> <ul> <li> <p>Be an absolute URI.</p> </li> <li> <p>Be registered with the authorization server.</p> </li> <li> <p>Not include a fragment component.</p> </li> </ul> <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 - Redirection Endpoint</a>.</p> <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only.</p> <p>App callback URLs such as myapp://example are also supported.</p>
-- * ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>The explicit authentication flows.</p>
-- * WriteAttributes [ClientPermissionListType] <p>The write attributes.</p>
-- * SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- * ReadAttributes [ClientPermissionListType] <p>The read attributes.</p>
-- * RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- * ClientName [ClientNameType] <p>The client name for the user pool client you would like to create.</p>
-- Required key: UserPoolId
-- Required key: ClientName
-- @return CreateUserPoolClientRequest structure as a key-value pair table
function M.CreateUserPoolClientRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserPoolClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GenerateSecret"] = args["GenerateSecret"],
		["AllowedOAuthScopes"] = args["AllowedOAuthScopes"],
		["UserPoolId"] = args["UserPoolId"],
		["AllowedOAuthFlowsUserPoolClient"] = args["AllowedOAuthFlowsUserPoolClient"],
		["AnalyticsConfiguration"] = args["AnalyticsConfiguration"],
		["LogoutURLs"] = args["LogoutURLs"],
		["DefaultRedirectURI"] = args["DefaultRedirectURI"],
		["AllowedOAuthFlows"] = args["AllowedOAuthFlows"],
		["CallbackURLs"] = args["CallbackURLs"],
		["ExplicitAuthFlows"] = args["ExplicitAuthFlows"],
		["WriteAttributes"] = args["WriteAttributes"],
		["SupportedIdentityProviders"] = args["SupportedIdentityProviders"],
		["ReadAttributes"] = args["ReadAttributes"],
		["RefreshTokenValidity"] = args["RefreshTokenValidity"],
		["ClientName"] = args["ClientName"],
	}
	asserts.AssertCreateUserPoolClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartUserImportJobResponse = { ["UserImportJob"] = true, nil }

function asserts.AssertStartUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then asserts.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartUserImportJobResponse[k], "StartUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartUserImportJobResponse
-- <p>Represents the response from the server to the request to start the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
-- @return StartUserImportJobResponse structure as a key-value pair table
function M.StartUserImportJobResponse(args)
	assert(args, "You must provide an argument table when creating StartUserImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertStartUserImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUserSettingsRequest = { ["MFAOptions"] = true, ["AccessToken"] = true, nil }

function asserts.AssertSetUserSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserSettingsRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["MFAOptions"], "Expected key MFAOptions to exist in table")
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetUserSettingsRequest[k], "SetUserSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserSettingsRequest
-- <p>Represents the request to set user settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- * AccessToken [TokenModelType] <p>The access token for the set user settings request.</p>
-- Required key: AccessToken
-- Required key: MFAOptions
-- @return SetUserSettingsRequest structure as a key-value pair table
function M.SetUserSettingsRequest(args)
	assert(args, "You must provide an argument table when creating SetUserSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MFAOptions"] = args["MFAOptions"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertSetUserSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContextDataType = { ["ServerName"] = true, ["IpAddress"] = true, ["HttpHeaders"] = true, ["ServerPath"] = true, ["EncodedData"] = true, nil }

function asserts.AssertContextDataType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContextDataType to be of type 'table'")
	assert(struct["IpAddress"], "Expected key IpAddress to exist in table")
	assert(struct["ServerName"], "Expected key ServerName to exist in table")
	assert(struct["ServerPath"], "Expected key ServerPath to exist in table")
	assert(struct["HttpHeaders"], "Expected key HttpHeaders to exist in table")
	if struct["ServerName"] then asserts.AssertStringType(struct["ServerName"]) end
	if struct["IpAddress"] then asserts.AssertStringType(struct["IpAddress"]) end
	if struct["HttpHeaders"] then asserts.AssertHttpHeaderList(struct["HttpHeaders"]) end
	if struct["ServerPath"] then asserts.AssertStringType(struct["ServerPath"]) end
	if struct["EncodedData"] then asserts.AssertStringType(struct["EncodedData"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContextDataType[k], "ContextDataType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContextDataType
-- <p>Contextual user data type used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerName [StringType] <p>Your server endpoint where this API is invoked.</p>
-- * IpAddress [StringType] <p>Source IP address of your user.</p>
-- * HttpHeaders [HttpHeaderList] <p>HttpHeaders received on your server in same order.</p>
-- * ServerPath [StringType] <p>Your server path where this API is invoked. </p>
-- * EncodedData [StringType] <p>Encoded data containing device fingerprinting details, collected using the Amazon Cognito context data collection library.</p>
-- Required key: IpAddress
-- Required key: ServerName
-- Required key: ServerPath
-- Required key: HttpHeaders
-- @return ContextDataType structure as a key-value pair table
function M.ContextDataType(args)
	assert(args, "You must provide an argument table when creating ContextDataType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerName"] = args["ServerName"],
		["IpAddress"] = args["IpAddress"],
		["HttpHeaders"] = args["HttpHeaders"],
		["ServerPath"] = args["ServerPath"],
		["EncodedData"] = args["EncodedData"],
	}
	asserts.AssertContextDataType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminInitiateAuthResponse = { ["AuthenticationResult"] = true, ["ChallengeName"] = true, ["ChallengeParameters"] = true, ["Session"] = true, nil }

function asserts.AssertAdminInitiateAuthResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminInitiateAuthResponse to be of type 'table'")
	if struct["AuthenticationResult"] then asserts.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then asserts.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminInitiateAuthResponse[k], "AdminInitiateAuthResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminInitiateAuthResponse
-- <p>Initiates the authentication response, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationResult [AuthenticationResultType] <p>The result of the authentication response. This is only returned if the caller does not need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>
-- * ChallengeName [ChallengeNameType] <p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <ul> <li> <p> <code>MFA_SETUP</code>: If MFA is required, users who do not have at least one of the MFA methods set up are presented with an <code>MFA_SETUP</code> challenge. The user must set up at least one MFA type to continue to authenticate.</p> </li> <li> <p> <code>SELECT_MFA_TYPE</code>: Selects the MFA type. Valid MFA options are <code>SMS_MFA</code> for text SMS MFA, and <code>SOFTWARE_TOKEN_MFA</code> for TOTP software token MFA.</p> </li> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: This is returned if you need to authenticate with <code>USERNAME</code> and <code>PASSWORD</code> directly. An app client must be enabled to use this flow.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. These are returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>AdminRespondToAuthChallenge</code>).</p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p> <p>The value of the <code>USER_ID_FOR_SRP</code> attribute will be the user's actual username, not an alias (such as email address or phone number), even if you specified an alias in your call to <code>AdminInitiateAuth</code>. This is because, in the <code>AdminRespondToAuthChallenge</code> API <code>ChallengeResponses</code>, the <code>USERNAME</code> attribute cannot be an alias.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>AdminInitiateAuth</code> or <code>AdminRespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>AdminRespondToAuthChallenge</code> API call.</p>
-- @return AdminInitiateAuthResponse structure as a key-value pair table
function M.AdminInitiateAuthResponse(args)
	assert(args, "You must provide an argument table when creating AdminInitiateAuthResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertAdminInitiateAuthResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SoftwareTokenMfaSettingsType = { ["Enabled"] = true, ["PreferredMfa"] = true, nil }

function asserts.AssertSoftwareTokenMfaSettingsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SoftwareTokenMfaSettingsType to be of type 'table'")
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["PreferredMfa"] then asserts.AssertBooleanType(struct["PreferredMfa"]) end
	for k,_ in pairs(struct) do
		assert(keys.SoftwareTokenMfaSettingsType[k], "SoftwareTokenMfaSettingsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SoftwareTokenMfaSettingsType
-- <p>The type used for enabling software token MFA at the user level.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [BooleanType] <p>Specifies whether software token MFA is enabled.</p>
-- * PreferredMfa [BooleanType] <p>The preferred MFA method.</p>
-- @return SoftwareTokenMfaSettingsType structure as a key-value pair table
function M.SoftwareTokenMfaSettingsType(args)
	assert(args, "You must provide an argument table when creating SoftwareTokenMfaSettingsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["PreferredMfa"] = args["PreferredMfa"],
	}
	asserts.AssertSoftwareTokenMfaSettingsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminResetUserPasswordResponse = { nil }

function asserts.AssertAdminResetUserPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminResetUserPasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminResetUserPasswordResponse[k], "AdminResetUserPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminResetUserPasswordResponse
-- <p>Represents the response from the server to reset a user password as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminResetUserPasswordResponse structure as a key-value pair table
function M.AdminResetUserPasswordResponse(args)
	assert(args, "You must provide an argument table when creating AdminResetUserPasswordResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminResetUserPasswordResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersRequest = { ["PaginationToken"] = true, ["Filter"] = true, ["AttributesToGet"] = true, ["Limit"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["PaginationToken"] then asserts.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Filter"] then asserts.AssertUserFilterType(struct["Filter"]) end
	if struct["AttributesToGet"] then asserts.AssertSearchedAttributeNamesListType(struct["AttributesToGet"]) end
	if struct["Limit"] then asserts.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersRequest[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
-- <p>Represents the request to list users.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [SearchPaginationTokenType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Filter [UserFilterType] <p>A filter string of the form "<i>AttributeName</i> <i>Filter-Type</i> "<i>AttributeValue</i>"". Quotation marks within the filter string must be escaped using the backslash (\) character. For example, "<code>family_name</code> = \"Reddy\"".</p> <ul> <li> <p> <i>AttributeName</i>: The name of the attribute to search for. You can only search for one attribute at a time.</p> </li> <li> <p> <i>Filter-Type</i>: For an exact match, use =, for example, "<code>given_name</code> = \"Jon\"". For a prefix ("starts with") match, use ^=, for example, "<code>given_name</code> ^= \"Jon\"". </p> </li> <li> <p> <i>AttributeValue</i>: The attribute value that must be matched for each user.</p> </li> </ul> <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user pool.</p> <p>You can only search for the following standard attributes:</p> <ul> <li> <p> <code>username</code> (case-sensitive)</p> </li> <li> <p> <code>email</code> </p> </li> <li> <p> <code>phone_number</code> </p> </li> <li> <p> <code>name</code> </p> </li> <li> <p> <code>given_name</code> </p> </li> <li> <p> <code>family_name</code> </p> </li> <li> <p> <code>preferred_username</code> </p> </li> <li> <p> <code>cognito:user_status</code> (called <b>Status</b> in the Console) (case-insensitive)</p> </li> <li> <p> <code>status (called <b>Enabled</b> in the Console) (case-sensitive)</code> </p> </li> <li> <p> <code>sub</code> </p> </li> </ul> <p>Custom attributes are not searchable.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
-- * AttributesToGet [SearchedAttributeNamesListType] <p>An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is null, all attributes are returned.</p>
-- * Limit [QueryLimitType] <p>Maximum number of users to be returned.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool on which the search should be performed.</p>
-- Required key: UserPoolId
-- @return ListUsersRequest structure as a key-value pair table
function M.ListUsersRequest(args)
	assert(args, "You must provide an argument table when creating ListUsersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["Filter"] = args["Filter"],
		["AttributesToGet"] = args["AttributesToGet"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceServerScopeType = { ["ScopeDescription"] = true, ["ScopeName"] = true, nil }

function asserts.AssertResourceServerScopeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceServerScopeType to be of type 'table'")
	assert(struct["ScopeName"], "Expected key ScopeName to exist in table")
	assert(struct["ScopeDescription"], "Expected key ScopeDescription to exist in table")
	if struct["ScopeDescription"] then asserts.AssertResourceServerScopeDescriptionType(struct["ScopeDescription"]) end
	if struct["ScopeName"] then asserts.AssertResourceServerScopeNameType(struct["ScopeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceServerScopeType[k], "ResourceServerScopeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceServerScopeType
-- <p>A resource server scope.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScopeDescription [ResourceServerScopeDescriptionType] <p>A description of the scope.</p>
-- * ScopeName [ResourceServerScopeNameType] <p>The name of the scope.</p>
-- Required key: ScopeName
-- Required key: ScopeDescription
-- @return ResourceServerScopeType structure as a key-value pair table
function M.ResourceServerScopeType(args)
	assert(args, "You must provide an argument table when creating ResourceServerScopeType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScopeDescription"] = args["ScopeDescription"],
		["ScopeName"] = args["ScopeName"],
	}
	asserts.AssertResourceServerScopeType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceStatusResponse = { nil }

function asserts.AssertUpdateDeviceStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceStatusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceStatusResponse[k], "UpdateDeviceStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceStatusResponse
-- <p>The response to the request to update the device status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDeviceStatusResponse structure as a key-value pair table
function M.UpdateDeviceStatusResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDeviceStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceServerType = { ["Scopes"] = true, ["Identifier"] = true, ["Name"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertResourceServerType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceServerType to be of type 'table'")
	if struct["Scopes"] then asserts.AssertResourceServerScopeListType(struct["Scopes"]) end
	if struct["Identifier"] then asserts.AssertResourceServerIdentifierType(struct["Identifier"]) end
	if struct["Name"] then asserts.AssertResourceServerNameType(struct["Name"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceServerType[k], "ResourceServerType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceServerType
-- <p>A container for information about a resource server for a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scopes [ResourceServerScopeListType] <p>A list of scopes that are defined for the resource server.</p>
-- * Identifier [ResourceServerIdentifierType] <p>The identifier for the resource server.</p>
-- * Name [ResourceServerNameType] <p>The name of the resource server.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that hosts the resource server.</p>
-- @return ResourceServerType structure as a key-value pair table
function M.ResourceServerType(args)
	assert(args, "You must provide an argument table when creating ResourceServerType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scopes"] = args["Scopes"],
		["Identifier"] = args["Identifier"],
		["Name"] = args["Name"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertResourceServerType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceResponse = { ["Device"] = true, nil }

function asserts.AssertGetDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceResponse to be of type 'table'")
	assert(struct["Device"], "Expected key Device to exist in table")
	if struct["Device"] then asserts.AssertDeviceType(struct["Device"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceResponse[k], "GetDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceResponse
-- <p>Gets the device response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Device [DeviceType] <p>The device.</p>
-- Required key: Device
-- @return GetDeviceResponse structure as a key-value pair table
function M.GetDeviceResponse(args)
	assert(args, "You must provide an argument table when creating GetDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Device"] = args["Device"],
	}
	asserts.AssertGetDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceStatusRequest = { ["DeviceKey"] = true, ["DeviceRememberedStatus"] = true, ["AccessToken"] = true, nil }

function asserts.AssertUpdateDeviceStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceStatusRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceRememberedStatus"] then asserts.AssertDeviceRememberedStatusType(struct["DeviceRememberedStatus"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceStatusRequest[k], "UpdateDeviceStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceStatusRequest
-- <p>Represents the request to update the device status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * DeviceRememberedStatus [DeviceRememberedStatusType] <p>The status of whether a device is remembered.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- Required key: AccessToken
-- Required key: DeviceKey
-- @return UpdateDeviceStatusRequest structure as a key-value pair table
function M.UpdateDeviceStatusRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceKey"] = args["DeviceKey"],
		["DeviceRememberedStatus"] = args["DeviceRememberedStatus"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertUpdateDeviceStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListIdentityProvidersResponse = { ["NextToken"] = true, ["Providers"] = true, nil }

function asserts.AssertListIdentityProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityProvidersResponse to be of type 'table'")
	assert(struct["Providers"], "Expected key Providers to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["Providers"] then asserts.AssertProvidersListType(struct["Providers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityProvidersResponse[k], "ListIdentityProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityProvidersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKeyType] <p>A pagination token.</p>
-- * Providers [ProvidersListType] <p>A list of identity provider objects.</p>
-- Required key: Providers
-- @return ListIdentityProvidersResponse structure as a key-value pair table
function M.ListIdentityProvidersResponse(args)
	assert(args, "You must provide an argument table when creating ListIdentityProvidersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Providers"] = args["Providers"],
	}
	asserts.AssertListIdentityProvidersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResendConfirmationCodeRequest = { ["Username"] = true, ["UserContextData"] = true, ["AnalyticsMetadata"] = true, ["SecretHash"] = true, ["ClientId"] = true, nil }

function asserts.AssertResendConfirmationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendConfirmationCodeRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["UserContextData"] then asserts.AssertUserContextDataType(struct["UserContextData"]) end
	if struct["AnalyticsMetadata"] then asserts.AssertAnalyticsMetadataType(struct["AnalyticsMetadata"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResendConfirmationCodeRequest[k], "ResendConfirmationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendConfirmationCodeRequest
-- <p>Represents the request to resend the confirmation code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user to whom you wish to resend a confirmation code.</p>
-- * UserContextData [UserContextDataType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- * AnalyticsMetadata [AnalyticsMetadataType] <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>ResendConfirmationCode</code> calls.</p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required key: ClientId
-- Required key: Username
-- @return ResendConfirmationCodeRequest structure as a key-value pair table
function M.ResendConfirmationCodeRequest(args)
	assert(args, "You must provide an argument table when creating ResendConfirmationCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["UserContextData"] = args["UserContextData"],
		["AnalyticsMetadata"] = args["AnalyticsMetadata"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertResendConfirmationCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupsRequest = { ["NextToken"] = true, ["Limit"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsRequest[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Limit [QueryLimitType] <p>The limit of the request to list groups.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- @return ListGroupsRequest structure as a key-value pair table
function M.ListGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserPoolClientRequest = { ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDeleteUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserPoolClientRequest[k], "DeleteUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolClientRequest
-- <p>Represents the request to delete a user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientId [ClientIdType] <p>The app client ID of the app associated with the user pool.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete the client.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- @return DeleteUserPoolClientRequest structure as a key-value pair table
function M.DeleteUserPoolClientRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserPoolClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteUserPoolClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetUICustomizationResponse = { ["UICustomization"] = true, nil }

function asserts.AssertSetUICustomizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUICustomizationResponse to be of type 'table'")
	assert(struct["UICustomization"], "Expected key UICustomization to exist in table")
	if struct["UICustomization"] then asserts.AssertUICustomizationType(struct["UICustomization"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetUICustomizationResponse[k], "SetUICustomizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUICustomizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UICustomization [UICustomizationType] <p>The UI customization information.</p>
-- Required key: UICustomization
-- @return SetUICustomizationResponse structure as a key-value pair table
function M.SetUICustomizationResponse(args)
	assert(args, "You must provide an argument table when creating SetUICustomizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UICustomization"] = args["UICustomization"],
	}
	asserts.AssertSetUICustomizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StringAttributeConstraintsType = { ["MinLength"] = true, ["MaxLength"] = true, nil }

function asserts.AssertStringAttributeConstraintsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StringAttributeConstraintsType to be of type 'table'")
	if struct["MinLength"] then asserts.AssertStringType(struct["MinLength"]) end
	if struct["MaxLength"] then asserts.AssertStringType(struct["MaxLength"]) end
	for k,_ in pairs(struct) do
		assert(keys.StringAttributeConstraintsType[k], "StringAttributeConstraintsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StringAttributeConstraintsType
-- <p>The constraints associated with a string attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinLength [StringType] <p>The minimum length.</p>
-- * MaxLength [StringType] <p>The maximum length.</p>
-- @return StringAttributeConstraintsType structure as a key-value pair table
function M.StringAttributeConstraintsType(args)
	assert(args, "You must provide an argument table when creating StringAttributeConstraintsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinLength"] = args["MinLength"],
		["MaxLength"] = args["MaxLength"],
	}
	asserts.AssertStringAttributeConstraintsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUICustomizationResponse = { ["UICustomization"] = true, nil }

function asserts.AssertGetUICustomizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUICustomizationResponse to be of type 'table'")
	assert(struct["UICustomization"], "Expected key UICustomization to exist in table")
	if struct["UICustomization"] then asserts.AssertUICustomizationType(struct["UICustomization"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUICustomizationResponse[k], "GetUICustomizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUICustomizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UICustomization [UICustomizationType] <p>The UI customization information.</p>
-- Required key: UICustomization
-- @return GetUICustomizationResponse structure as a key-value pair table
function M.GetUICustomizationResponse(args)
	assert(args, "You must provide an argument table when creating GetUICustomizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UICustomization"] = args["UICustomization"],
	}
	asserts.AssertGetUICustomizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserAttributesRequest = { ["UserAttributes"] = true, ["AccessToken"] = true, nil }

function asserts.AssertUpdateUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserAttributesRequest to be of type 'table'")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserAttributesRequest[k], "UpdateUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserAttributesRequest
-- <p>Represents the request to update user attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * AccessToken [TokenModelType] <p>The access token for the request to update user attributes.</p>
-- Required key: UserAttributes
-- Required key: AccessToken
-- @return UpdateUserAttributesRequest structure as a key-value pair table
function M.UpdateUserAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserAttributes"] = args["UserAttributes"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertUpdateUserAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminListDevicesResponse = { ["PaginationToken"] = true, ["Devices"] = true, nil }

function asserts.AssertAdminListDevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListDevicesResponse to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Devices"] then asserts.AssertDeviceListType(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminListDevicesResponse[k], "AdminListDevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListDevicesResponse
-- <p>Lists the device's response, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [SearchPaginationTokenType] <p>The pagination token.</p>
-- * Devices [DeviceListType] <p>The devices in the list of devices response.</p>
-- @return AdminListDevicesResponse structure as a key-value pair table
function M.AdminListDevicesResponse(args)
	assert(args, "You must provide an argument table when creating AdminListDevicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertAdminListDevicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAuthEventFeedbackResponse = { nil }

function asserts.AssertUpdateAuthEventFeedbackResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAuthEventFeedbackResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateAuthEventFeedbackResponse[k], "UpdateAuthEventFeedbackResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAuthEventFeedbackResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateAuthEventFeedbackResponse structure as a key-value pair table
function M.UpdateAuthEventFeedbackResponse(args)
	assert(args, "You must provide an argument table when creating UpdateAuthEventFeedbackResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateAuthEventFeedbackResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmDeviceRequest = { ["DeviceSecretVerifierConfig"] = true, ["DeviceName"] = true, ["DeviceKey"] = true, ["AccessToken"] = true, nil }

function asserts.AssertConfirmDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmDeviceRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceSecretVerifierConfig"] then asserts.AssertDeviceSecretVerifierConfigType(struct["DeviceSecretVerifierConfig"]) end
	if struct["DeviceName"] then asserts.AssertDeviceNameType(struct["DeviceName"]) end
	if struct["DeviceKey"] then asserts.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["AccessToken"] then asserts.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmDeviceRequest[k], "ConfirmDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmDeviceRequest
-- <p>Confirms the device request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceSecretVerifierConfig [DeviceSecretVerifierConfigType] <p>The configuration of the device secret verifier.</p>
-- * DeviceName [DeviceNameType] <p>The device name.</p>
-- * DeviceKey [DeviceKeyType] <p>The device key.</p>
-- * AccessToken [TokenModelType] <p>The access token.</p>
-- Required key: AccessToken
-- Required key: DeviceKey
-- @return ConfirmDeviceRequest structure as a key-value pair table
function M.ConfirmDeviceRequest(args)
	assert(args, "You must provide an argument table when creating ConfirmDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceSecretVerifierConfig"] = args["DeviceSecretVerifierConfig"],
		["DeviceName"] = args["DeviceName"],
		["DeviceKey"] = args["DeviceKey"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertConfirmDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserPoolRequest = { ["AliasAttributes"] = true, ["SmsVerificationMessage"] = true, ["EmailVerificationSubject"] = true, ["MfaConfiguration"] = true, ["Schema"] = true, ["EmailVerificationMessage"] = true, ["PoolName"] = true, ["SmsAuthenticationMessage"] = true, ["UserPoolAddOns"] = true, ["VerificationMessageTemplate"] = true, ["EmailConfiguration"] = true, ["SmsConfiguration"] = true, ["AdminCreateUserConfig"] = true, ["AutoVerifiedAttributes"] = true, ["Policies"] = true, ["UserPoolTags"] = true, ["UsernameAttributes"] = true, ["DeviceConfiguration"] = true, ["LambdaConfig"] = true, nil }

function asserts.AssertCreateUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolRequest to be of type 'table'")
	assert(struct["PoolName"], "Expected key PoolName to exist in table")
	if struct["AliasAttributes"] then asserts.AssertAliasAttributesListType(struct["AliasAttributes"]) end
	if struct["SmsVerificationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["Schema"] then asserts.AssertSchemaAttributesListType(struct["Schema"]) end
	if struct["EmailVerificationMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["PoolName"] then asserts.AssertUserPoolNameType(struct["PoolName"]) end
	if struct["SmsAuthenticationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["UserPoolAddOns"] then asserts.AssertUserPoolAddOnsType(struct["UserPoolAddOns"]) end
	if struct["VerificationMessageTemplate"] then asserts.AssertVerificationMessageTemplateType(struct["VerificationMessageTemplate"]) end
	if struct["EmailConfiguration"] then asserts.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["SmsConfiguration"] then asserts.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["AdminCreateUserConfig"] then asserts.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["AutoVerifiedAttributes"] then asserts.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["Policies"] then asserts.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then asserts.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["UsernameAttributes"] then asserts.AssertUsernameAttributesListType(struct["UsernameAttributes"]) end
	if struct["DeviceConfiguration"] then asserts.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["LambdaConfig"] then asserts.AssertLambdaConfigType(struct["LambdaConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolRequest[k], "CreateUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolRequest
-- <p>Represents the request to create a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AliasAttributes [AliasAttributesListType] <p>Attributes supported as an alias for this user pool. Possible values: <b>phone_number</b>, <b>email</b>, or <b>preferred_username</b>.</p>
-- * SmsVerificationMessage [SmsVerificationMessageType] <p>A string representing the SMS verification message.</p>
-- * EmailVerificationSubject [EmailVerificationSubjectType] <p>A string representing the email verification subject.</p>
-- * MfaConfiguration [UserPoolMfaType] <p>Specifies MFA configuration details.</p>
-- * Schema [SchemaAttributesListType] <p>An array of schema attributes for the new user pool. These attributes can be standard or custom attributes.</p>
-- * EmailVerificationMessage [EmailVerificationMessageType] <p>A string representing the email verification message.</p>
-- * PoolName [UserPoolNameType] <p>A string used to name the user pool.</p>
-- * SmsAuthenticationMessage [SmsVerificationMessageType] <p>A string representing the SMS authentication message.</p>
-- * UserPoolAddOns [UserPoolAddOnsType] <p>Used to enable advanced security risk detection. Set the key <code>AdvancedSecurityMode</code> to the value "AUDIT".</p>
-- * VerificationMessageTemplate [VerificationMessageTemplateType] <p>The template for the verification message that the user sees when the app requests permission to access the user's information.</p>
-- * EmailConfiguration [EmailConfigurationType] <p>The email configuration.</p>
-- * SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- * AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- * AutoVerifiedAttributes [VerifiedAttributesListType] <p>The attributes to be auto-verified. Possible values: <b>email</b>, <b>phone_number</b>.</p>
-- * Policies [UserPoolPolicyType] <p>The policies associated with the new user pool.</p>
-- * UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- * UsernameAttributes [UsernameAttributesListType] <p>Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.</p>
-- * DeviceConfiguration [DeviceConfigurationType] <p>The device configuration.</p>
-- * LambdaConfig [LambdaConfigType] <p>The Lambda trigger configuration information for the new user pool.</p> <note> <p>In a push model, event sources (such as Amazon S3 and custom applications) need permission to invoke a function. So you will need to make an extra call to add permission for these event sources to invoke your Lambda function.</p> <p/> <p>For more information on using the Lambda API to add permission, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html"> AddPermission </a>. </p> <p>For adding permission using the AWS CLI, see <a href="https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html"> add-permission </a>.</p> </note>
-- Required key: PoolName
-- @return CreateUserPoolRequest structure as a key-value pair table
function M.CreateUserPoolRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserPoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AliasAttributes"] = args["AliasAttributes"],
		["SmsVerificationMessage"] = args["SmsVerificationMessage"],
		["EmailVerificationSubject"] = args["EmailVerificationSubject"],
		["MfaConfiguration"] = args["MfaConfiguration"],
		["Schema"] = args["Schema"],
		["EmailVerificationMessage"] = args["EmailVerificationMessage"],
		["PoolName"] = args["PoolName"],
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["UserPoolAddOns"] = args["UserPoolAddOns"],
		["VerificationMessageTemplate"] = args["VerificationMessageTemplate"],
		["EmailConfiguration"] = args["EmailConfiguration"],
		["SmsConfiguration"] = args["SmsConfiguration"],
		["AdminCreateUserConfig"] = args["AdminCreateUserConfig"],
		["AutoVerifiedAttributes"] = args["AutoVerifiedAttributes"],
		["Policies"] = args["Policies"],
		["UserPoolTags"] = args["UserPoolTags"],
		["UsernameAttributes"] = args["UsernameAttributes"],
		["DeviceConfiguration"] = args["DeviceConfiguration"],
		["LambdaConfig"] = args["LambdaConfig"],
	}
	asserts.AssertCreateUserPoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGroupRequest = { ["GroupName"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupRequest[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupNameType] <p>The name of the group.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: GroupName
-- Required key: UserPoolId
-- @return DeleteGroupRequest structure as a key-value pair table
function M.DeleteGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MFAOptionType = { ["DeliveryMedium"] = true, ["AttributeName"] = true, nil }

function asserts.AssertMFAOptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MFAOptionType to be of type 'table'")
	if struct["DeliveryMedium"] then asserts.AssertDeliveryMediumType(struct["DeliveryMedium"]) end
	if struct["AttributeName"] then asserts.AssertAttributeNameType(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.MFAOptionType[k], "MFAOptionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MFAOptionType
-- <p>Specifies the different settings for multi-factor authentication (MFA).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryMedium [DeliveryMediumType] <p>The delivery medium (email message or SMS message) to send the MFA code.</p>
-- * AttributeName [AttributeNameType] <p>The attribute name of the MFA option type.</p>
-- @return MFAOptionType structure as a key-value pair table
function M.MFAOptionType(args)
	assert(args, "You must provide an argument table when creating MFAOptionType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryMedium"] = args["DeliveryMedium"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertMFAOptionType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminDisableUserResponse = { nil }

function asserts.AssertAdminDisableUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDisableUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminDisableUserResponse[k], "AdminDisableUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDisableUserResponse
-- <p>Represents the response received from the server to disable the user as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminDisableUserResponse structure as a key-value pair table
function M.AdminDisableUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminDisableUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminDisableUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetRiskConfigurationRequest = { ["RiskExceptionConfiguration"] = true, ["CompromisedCredentialsRiskConfiguration"] = true, ["AccountTakeoverRiskConfiguration"] = true, ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertSetRiskConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRiskConfigurationRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["RiskExceptionConfiguration"] then asserts.AssertRiskExceptionConfigurationType(struct["RiskExceptionConfiguration"]) end
	if struct["CompromisedCredentialsRiskConfiguration"] then asserts.AssertCompromisedCredentialsRiskConfigurationType(struct["CompromisedCredentialsRiskConfiguration"]) end
	if struct["AccountTakeoverRiskConfiguration"] then asserts.AssertAccountTakeoverRiskConfigurationType(struct["AccountTakeoverRiskConfiguration"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetRiskConfigurationRequest[k], "SetRiskConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRiskConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RiskExceptionConfiguration [RiskExceptionConfigurationType] <p>The configuration to override the risk decision.</p>
-- * CompromisedCredentialsRiskConfiguration [CompromisedCredentialsRiskConfigurationType] <p>The compromised credentials risk configuration.</p>
-- * AccountTakeoverRiskConfiguration [AccountTakeoverRiskConfigurationType] <p>The account takeover risk configuration.</p>
-- * ClientId [ClientIdType] <p>The app client ID. If <code>ClientId</code> is null, then the risk configuration is mapped to <code>userPoolId</code>. When the client ID is null, the same risk configuration is applied to all the clients in the userPool.</p> <p>Otherwise, <code>ClientId</code> is mapped to the client. When the client ID is not null, the user pool configuration is overridden and the risk configuration for the client is used instead.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID. </p>
-- Required key: UserPoolId
-- @return SetRiskConfigurationRequest structure as a key-value pair table
function M.SetRiskConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating SetRiskConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RiskExceptionConfiguration"] = args["RiskExceptionConfiguration"],
		["CompromisedCredentialsRiskConfiguration"] = args["CompromisedCredentialsRiskConfiguration"],
		["AccountTakeoverRiskConfiguration"] = args["AccountTakeoverRiskConfiguration"],
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertSetRiskConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserPoolClientResponse = { ["UserPoolClient"] = true, nil }

function asserts.AssertUpdateUserPoolClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolClientResponse to be of type 'table'")
	if struct["UserPoolClient"] then asserts.AssertUserPoolClientType(struct["UserPoolClient"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserPoolClientResponse[k], "UpdateUserPoolClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolClientResponse
-- <p>Represents the response from the server to the request to update the user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolClient [UserPoolClientType] <p>The user pool client value from the response from the server when an update user pool client request is made.</p>
-- @return UpdateUserPoolClientResponse structure as a key-value pair table
function M.UpdateUserPoolClientResponse(args)
	assert(args, "You must provide an argument table when creating UpdateUserPoolClientResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolClient"] = args["UserPoolClient"],
	}
	asserts.AssertUpdateUserPoolClientResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalSignOutResponse = { nil }

function asserts.AssertGlobalSignOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSignOutResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GlobalSignOutResponse[k], "GlobalSignOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSignOutResponse
-- <p>The response to the request to sign out all devices.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GlobalSignOutResponse structure as a key-value pair table
function M.GlobalSignOutResponse(args)
	assert(args, "You must provide an argument table when creating GlobalSignOutResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGlobalSignOutResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomDomainConfigType = { ["CertificateArn"] = true, nil }

function asserts.AssertCustomDomainConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomDomainConfigType to be of type 'table'")
	assert(struct["CertificateArn"], "Expected key CertificateArn to exist in table")
	if struct["CertificateArn"] then asserts.AssertArnType(struct["CertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomDomainConfigType[k], "CustomDomainConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomDomainConfigType
-- <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [ArnType] <p>The Amazon Resource Name (ARN) of an AWS Certificate Manager SSL certificate. You use this certificate for the subdomain of your custom domain.</p>
-- Required key: CertificateArn
-- @return CustomDomainConfigType structure as a key-value pair table
function M.CustomDomainConfigType(args)
	assert(args, "You must provide an argument table when creating CustomDomainConfigType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
	}
	asserts.AssertCustomDomainConfigType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminRespondToAuthChallengeResponse = { ["AuthenticationResult"] = true, ["ChallengeName"] = true, ["ChallengeParameters"] = true, ["Session"] = true, nil }

function asserts.AssertAdminRespondToAuthChallengeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRespondToAuthChallengeResponse to be of type 'table'")
	if struct["AuthenticationResult"] then asserts.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then asserts.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminRespondToAuthChallengeResponse[k], "AdminRespondToAuthChallengeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRespondToAuthChallengeResponse
-- <p>Responds to the authentication challenge, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationResult [AuthenticationResultType] <p>The result returned by the server in response to the authentication request.</p>
-- * ChallengeName [ChallengeNameType] <p>The name of the challenge. For more information, see .</p>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. For more information, see .</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the or API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- @return AdminRespondToAuthChallengeResponse structure as a key-value pair table
function M.AdminRespondToAuthChallengeResponse(args)
	assert(args, "You must provide an argument table when creating AdminRespondToAuthChallengeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertAdminRespondToAuthChallengeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolType = { ["AliasAttributes"] = true, ["SchemaAttributes"] = true, ["EmailVerificationSubject"] = true, ["MfaConfiguration"] = true, ["SmsAuthenticationMessage"] = true, ["UserPoolAddOns"] = true, ["SmsConfiguration"] = true, ["AutoVerifiedAttributes"] = true, ["LambdaConfig"] = true, ["Status"] = true, ["LastModifiedDate"] = true, ["AdminCreateUserConfig"] = true, ["EmailConfiguration"] = true, ["UsernameAttributes"] = true, ["SmsConfigurationFailure"] = true, ["Name"] = true, ["VerificationMessageTemplate"] = true, ["EmailConfigurationFailure"] = true, ["Policies"] = true, ["UserPoolTags"] = true, ["DeviceConfiguration"] = true, ["SmsVerificationMessage"] = true, ["Domain"] = true, ["EmailVerificationMessage"] = true, ["CustomDomain"] = true, ["CreationDate"] = true, ["EstimatedNumberOfUsers"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertUserPoolType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolType to be of type 'table'")
	if struct["AliasAttributes"] then asserts.AssertAliasAttributesListType(struct["AliasAttributes"]) end
	if struct["SchemaAttributes"] then asserts.AssertSchemaAttributesListType(struct["SchemaAttributes"]) end
	if struct["EmailVerificationSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["SmsAuthenticationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["UserPoolAddOns"] then asserts.AssertUserPoolAddOnsType(struct["UserPoolAddOns"]) end
	if struct["SmsConfiguration"] then asserts.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then asserts.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["LambdaConfig"] then asserts.AssertLambdaConfigType(struct["LambdaConfig"]) end
	if struct["Status"] then asserts.AssertStatusType(struct["Status"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["AdminCreateUserConfig"] then asserts.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["EmailConfiguration"] then asserts.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["UsernameAttributes"] then asserts.AssertUsernameAttributesListType(struct["UsernameAttributes"]) end
	if struct["SmsConfigurationFailure"] then asserts.AssertStringType(struct["SmsConfigurationFailure"]) end
	if struct["Name"] then asserts.AssertUserPoolNameType(struct["Name"]) end
	if struct["VerificationMessageTemplate"] then asserts.AssertVerificationMessageTemplateType(struct["VerificationMessageTemplate"]) end
	if struct["EmailConfigurationFailure"] then asserts.AssertStringType(struct["EmailConfigurationFailure"]) end
	if struct["Policies"] then asserts.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then asserts.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["DeviceConfiguration"] then asserts.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["SmsVerificationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
	if struct["EmailVerificationMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["CustomDomain"] then asserts.AssertDomainType(struct["CustomDomain"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["EstimatedNumberOfUsers"] then asserts.AssertIntegerType(struct["EstimatedNumberOfUsers"]) end
	if struct["Id"] then asserts.AssertUserPoolIdType(struct["Id"]) end
	if struct["Arn"] then asserts.AssertArnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolType[k], "UserPoolType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolType
-- <p>A container for information about the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AliasAttributes [AliasAttributesListType] <p>Specifies the attributes that are aliased in a user pool.</p>
-- * SchemaAttributes [SchemaAttributesListType] <p>A container with the schema attributes of a user pool.</p>
-- * EmailVerificationSubject [EmailVerificationSubjectType] <p>The subject of the email verification message.</p>
-- * MfaConfiguration [UserPoolMfaType] <p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>
-- * SmsAuthenticationMessage [SmsVerificationMessageType] <p>The contents of the SMS authentication message.</p>
-- * UserPoolAddOns [UserPoolAddOnsType] <p>The user pool add-ons.</p>
-- * SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- * AutoVerifiedAttributes [VerifiedAttributesListType] <p>Specifies the attributes that are auto-verified in a user pool.</p>
-- * LambdaConfig [LambdaConfigType] <p>The AWS Lambda triggers associated with the user pool.</p>
-- * Status [StatusType] <p>The status of a user pool.</p>
-- * LastModifiedDate [DateType] <p>The date the user pool was last modified.</p>
-- * AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- * EmailConfiguration [EmailConfigurationType] <p>The email configuration.</p>
-- * UsernameAttributes [UsernameAttributesListType] <p>Specifies whether email addresses or phone numbers can be specified as usernames when a user signs up.</p>
-- * SmsConfigurationFailure [StringType] <p>The reason why the SMS configuration cannot send the messages to your users.</p>
-- * Name [UserPoolNameType] <p>The name of the user pool.</p>
-- * VerificationMessageTemplate [VerificationMessageTemplateType] <p>The template for verification messages.</p>
-- * EmailConfigurationFailure [StringType] <p>The reason why the email configuration cannot send the messages to your users.</p>
-- * Policies [UserPoolPolicyType] <p>The policies associated with the user pool.</p>
-- * UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- * DeviceConfiguration [DeviceConfigurationType] <p>The device configuration.</p>
-- * SmsVerificationMessage [SmsVerificationMessageType] <p>The contents of the SMS verification message.</p>
-- * Domain [DomainType] <p>Holds the domain prefix if the user pool has a domain associated with it.</p>
-- * EmailVerificationMessage [EmailVerificationMessageType] <p>The contents of the email verification message.</p>
-- * CustomDomain [DomainType] 
-- * CreationDate [DateType] <p>The date the user pool was created.</p>
-- * EstimatedNumberOfUsers [IntegerType] <p>A number estimating the size of the user pool.</p>
-- * Id [UserPoolIdType] <p>The ID of the user pool.</p>
-- * Arn [ArnType] <p>The Amazon Resource Name (ARN) for the user pool.</p>
-- @return UserPoolType structure as a key-value pair table
function M.UserPoolType(args)
	assert(args, "You must provide an argument table when creating UserPoolType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AliasAttributes"] = args["AliasAttributes"],
		["SchemaAttributes"] = args["SchemaAttributes"],
		["EmailVerificationSubject"] = args["EmailVerificationSubject"],
		["MfaConfiguration"] = args["MfaConfiguration"],
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["UserPoolAddOns"] = args["UserPoolAddOns"],
		["SmsConfiguration"] = args["SmsConfiguration"],
		["AutoVerifiedAttributes"] = args["AutoVerifiedAttributes"],
		["LambdaConfig"] = args["LambdaConfig"],
		["Status"] = args["Status"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["AdminCreateUserConfig"] = args["AdminCreateUserConfig"],
		["EmailConfiguration"] = args["EmailConfiguration"],
		["UsernameAttributes"] = args["UsernameAttributes"],
		["SmsConfigurationFailure"] = args["SmsConfigurationFailure"],
		["Name"] = args["Name"],
		["VerificationMessageTemplate"] = args["VerificationMessageTemplate"],
		["EmailConfigurationFailure"] = args["EmailConfigurationFailure"],
		["Policies"] = args["Policies"],
		["UserPoolTags"] = args["UserPoolTags"],
		["DeviceConfiguration"] = args["DeviceConfiguration"],
		["SmsVerificationMessage"] = args["SmsVerificationMessage"],
		["Domain"] = args["Domain"],
		["EmailVerificationMessage"] = args["EmailVerificationMessage"],
		["CustomDomain"] = args["CustomDomain"],
		["CreationDate"] = args["CreationDate"],
		["EstimatedNumberOfUsers"] = args["EstimatedNumberOfUsers"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUserPoolType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminListGroupsForUserResponse = { ["NextToken"] = true, ["Groups"] = true, nil }

function asserts.AssertAdminListGroupsForUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListGroupsForUserResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Groups"] then asserts.AssertGroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminListGroupsForUserResponse[k], "AdminListGroupsForUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListGroupsForUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Groups [GroupListType] <p>The groups that the user belongs to.</p>
-- @return AdminListGroupsForUserResponse structure as a key-value pair table
function M.AdminListGroupsForUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminListGroupsForUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertAdminListGroupsForUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminLinkProviderForUserResponse = { nil }

function asserts.AssertAdminLinkProviderForUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminLinkProviderForUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminLinkProviderForUserResponse[k], "AdminLinkProviderForUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminLinkProviderForUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminLinkProviderForUserResponse structure as a key-value pair table
function M.AdminLinkProviderForUserResponse(args)
	assert(args, "You must provide an argument table when creating AdminLinkProviderForUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminLinkProviderForUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserPoolRequest = { ["UserPoolId"] = true, nil }

function asserts.AssertDeleteUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserPoolRequest[k], "DeleteUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolRequest
-- <p>Represents the request to delete a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to delete.</p>
-- Required key: UserPoolId
-- @return DeleteUserPoolRequest structure as a key-value pair table
function M.DeleteUserPoolRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserPoolRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteUserPoolRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourceServersRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListResourceServersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceServersRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListResourceServersLimitType(struct["MaxResults"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceServersRequest[k], "ListResourceServersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceServersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKeyType] <p>A pagination token.</p>
-- * MaxResults [ListResourceServersLimitType] <p>The maximum number of resource servers to return.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- @return ListResourceServersRequest structure as a key-value pair table
function M.ListResourceServersRequest(args)
	assert(args, "You must provide an argument table when creating ListResourceServersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListResourceServersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourceServerRequest = { ["Identifier"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDescribeResourceServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceServerRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Identifier"], "Expected key Identifier to exist in table")
	if struct["Identifier"] then asserts.AssertResourceServerIdentifierType(struct["Identifier"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourceServerRequest[k], "DescribeResourceServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceServerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identifier [ResourceServerIdentifierType] <p>The identifier for the resource server</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that hosts the resource server.</p>
-- Required key: UserPoolId
-- Required key: Identifier
-- @return DescribeResourceServerRequest structure as a key-value pair table
function M.DescribeResourceServerRequest(args)
	assert(args, "You must provide an argument table when creating DescribeResourceServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identifier"] = args["Identifier"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeResourceServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceSecretVerifierConfigType = { ["Salt"] = true, ["PasswordVerifier"] = true, nil }

function asserts.AssertDeviceSecretVerifierConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceSecretVerifierConfigType to be of type 'table'")
	if struct["Salt"] then asserts.AssertStringType(struct["Salt"]) end
	if struct["PasswordVerifier"] then asserts.AssertStringType(struct["PasswordVerifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceSecretVerifierConfigType[k], "DeviceSecretVerifierConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceSecretVerifierConfigType
-- <p>The device verifier against which it will be authenticated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Salt [StringType] <p>The salt.</p>
-- * PasswordVerifier [StringType] <p>The password verifier.</p>
-- @return DeviceSecretVerifierConfigType structure as a key-value pair table
function M.DeviceSecretVerifierConfigType(args)
	assert(args, "You must provide an argument table when creating DeviceSecretVerifierConfigType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Salt"] = args["Salt"],
		["PasswordVerifier"] = args["PasswordVerifier"],
	}
	asserts.AssertDeviceSecretVerifierConfigType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateResourceServerRequest = { ["Scopes"] = true, ["Identifier"] = true, ["Name"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertCreateResourceServerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceServerRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Identifier"], "Expected key Identifier to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Scopes"] then asserts.AssertResourceServerScopeListType(struct["Scopes"]) end
	if struct["Identifier"] then asserts.AssertResourceServerIdentifierType(struct["Identifier"]) end
	if struct["Name"] then asserts.AssertResourceServerNameType(struct["Name"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceServerRequest[k], "CreateResourceServerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceServerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scopes [ResourceServerScopeListType] <p>A list of scopes. Each scope is map, where the keys are <code>name</code> and <code>description</code>.</p>
-- * Identifier [ResourceServerIdentifierType] <p>A unique resource server identifier for the resource server. This could be an HTTPS endpoint where the resource server is located. For example, <code>https://my-weather-api.example.com</code>.</p>
-- * Name [ResourceServerNameType] <p>A friendly name for the resource server.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: Identifier
-- Required key: Name
-- @return CreateResourceServerRequest structure as a key-value pair table
function M.CreateResourceServerRequest(args)
	assert(args, "You must provide an argument table when creating CreateResourceServerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scopes"] = args["Scopes"],
		["Identifier"] = args["Identifier"],
		["Name"] = args["Name"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertCreateResourceServerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SmsConfigurationType = { ["ExternalId"] = true, ["SnsCallerArn"] = true, nil }

function asserts.AssertSmsConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SmsConfigurationType to be of type 'table'")
	assert(struct["SnsCallerArn"], "Expected key SnsCallerArn to exist in table")
	if struct["ExternalId"] then asserts.AssertStringType(struct["ExternalId"]) end
	if struct["SnsCallerArn"] then asserts.AssertArnType(struct["SnsCallerArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SmsConfigurationType[k], "SmsConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SmsConfigurationType
-- <p>The SMS configuration type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExternalId [StringType] <p>The external ID.</p>
-- * SnsCallerArn [ArnType] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) caller.</p>
-- Required key: SnsCallerArn
-- @return SmsConfigurationType structure as a key-value pair table
function M.SmsConfigurationType(args)
	assert(args, "You must provide an argument table when creating SmsConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExternalId"] = args["ExternalId"],
		["SnsCallerArn"] = args["SnsCallerArn"],
	}
	asserts.AssertSmsConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageTemplateType = { ["EmailMessage"] = true, ["EmailSubject"] = true, ["SMSMessage"] = true, nil }

function asserts.AssertMessageTemplateType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageTemplateType to be of type 'table'")
	if struct["EmailMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailMessage"]) end
	if struct["EmailSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailSubject"]) end
	if struct["SMSMessage"] then asserts.AssertSmsVerificationMessageType(struct["SMSMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageTemplateType[k], "MessageTemplateType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageTemplateType
-- <p>The message template structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailMessage [EmailVerificationMessageType] <p>The message template for email messages.</p>
-- * EmailSubject [EmailVerificationSubjectType] <p>The subject line for email messages.</p>
-- * SMSMessage [SmsVerificationMessageType] <p>The message template for SMS messages.</p>
-- @return MessageTemplateType structure as a key-value pair table
function M.MessageTemplateType(args)
	assert(args, "You must provide an argument table when creating MessageTemplateType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailMessage"] = args["EmailMessage"],
		["EmailSubject"] = args["EmailSubject"],
		["SMSMessage"] = args["SMSMessage"],
	}
	asserts.AssertMessageTemplateType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCSVHeaderResponse = { ["CSVHeader"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertGetCSVHeaderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCSVHeaderResponse to be of type 'table'")
	if struct["CSVHeader"] then asserts.AssertListOfStringTypes(struct["CSVHeader"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCSVHeaderResponse[k], "GetCSVHeaderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCSVHeaderResponse
-- <p>Represents the response from the server to the request to get the header information for the .csv file for the user import job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CSVHeader [ListOfStringTypes] <p>The header information for the .csv file for the user import job.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are to be imported into.</p>
-- @return GetCSVHeaderResponse structure as a key-value pair table
function M.GetCSVHeaderResponse(args)
	assert(args, "You must provide an argument table when creating GetCSVHeaderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CSVHeader"] = args["CSVHeader"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetCSVHeaderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminListGroupsForUserRequest = { ["Username"] = true, ["NextToken"] = true, ["Limit"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminListGroupsForUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListGroupsForUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminListGroupsForUserRequest[k], "AdminListGroupsForUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListGroupsForUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The username for the user.</p>
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Limit [QueryLimitType] <p>The limit of the request to list groups.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: Username
-- Required key: UserPoolId
-- @return AdminListGroupsForUserRequest structure as a key-value pair table
function M.AdminListGroupsForUserRequest(args)
	assert(args, "You must provide an argument table when creating AdminListGroupsForUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminListGroupsForUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolAddOnsType = { ["AdvancedSecurityMode"] = true, nil }

function asserts.AssertUserPoolAddOnsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolAddOnsType to be of type 'table'")
	assert(struct["AdvancedSecurityMode"], "Expected key AdvancedSecurityMode to exist in table")
	if struct["AdvancedSecurityMode"] then asserts.AssertAdvancedSecurityModeType(struct["AdvancedSecurityMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolAddOnsType[k], "UserPoolAddOnsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolAddOnsType
-- <p>The user pool add-ons type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdvancedSecurityMode [AdvancedSecurityModeType] <p>The advanced security mode.</p>
-- Required key: AdvancedSecurityMode
-- @return UserPoolAddOnsType structure as a key-value pair table
function M.UserPoolAddOnsType(args)
	assert(args, "You must provide an argument table when creating UserPoolAddOnsType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdvancedSecurityMode"] = args["AdvancedSecurityMode"],
	}
	asserts.AssertUserPoolAddOnsType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthEventType = { ["EventId"] = true, ["EventResponse"] = true, ["EventType"] = true, ["EventRisk"] = true, ["EventContextData"] = true, ["ChallengeResponses"] = true, ["EventFeedback"] = true, ["CreationDate"] = true, nil }

function asserts.AssertAuthEventType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthEventType to be of type 'table'")
	if struct["EventId"] then asserts.AssertStringType(struct["EventId"]) end
	if struct["EventResponse"] then asserts.AssertEventResponseType(struct["EventResponse"]) end
	if struct["EventType"] then asserts.AssertEventType(struct["EventType"]) end
	if struct["EventRisk"] then asserts.AssertEventRiskType(struct["EventRisk"]) end
	if struct["EventContextData"] then asserts.AssertEventContextDataType(struct["EventContextData"]) end
	if struct["ChallengeResponses"] then asserts.AssertChallengeResponseListType(struct["ChallengeResponses"]) end
	if struct["EventFeedback"] then asserts.AssertEventFeedbackType(struct["EventFeedback"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthEventType[k], "AuthEventType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthEventType
-- <p>The authentication event type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventId [StringType] <p>The event ID.</p>
-- * EventResponse [EventResponseType] <p>The event response.</p>
-- * EventType [EventType] <p>The event type.</p>
-- * EventRisk [EventRiskType] <p>The event risk.</p>
-- * EventContextData [EventContextDataType] <p>The user context data captured at the time of an event request. It provides additional information about the client from which event the request is received.</p>
-- * ChallengeResponses [ChallengeResponseListType] <p>The challenge responses.</p>
-- * EventFeedback [EventFeedbackType] <p>A flag specifying the user feedback captured at the time of an event request is good or bad. </p>
-- * CreationDate [DateType] <p>The creation date</p>
-- @return AuthEventType structure as a key-value pair table
function M.AuthEventType(args)
	assert(args, "You must provide an argument table when creating AuthEventType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventId"] = args["EventId"],
		["EventResponse"] = args["EventResponse"],
		["EventType"] = args["EventType"],
		["EventRisk"] = args["EventRisk"],
		["EventContextData"] = args["EventContextData"],
		["ChallengeResponses"] = args["ChallengeResponses"],
		["EventFeedback"] = args["EventFeedback"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertAuthEventType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersInGroupRequest = { ["GroupName"] = true, ["NextToken"] = true, ["Limit"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertListUsersInGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersInGroupRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertGroupNameType(struct["GroupName"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersInGroupRequest[k], "ListUsersInGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersInGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupNameType] <p>The name of the group.</p>
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Limit [QueryLimitType] <p>The limit of the request to list users.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: UserPoolId
-- Required key: GroupName
-- @return ListUsersInGroupRequest structure as a key-value pair table
function M.ListUsersInGroupRequest(args)
	assert(args, "You must provide an argument table when creating ListUsersInGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUsersInGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAuthEventFeedbackRequest = { ["Username"] = true, ["EventId"] = true, ["FeedbackValue"] = true, ["UserPoolId"] = true, ["FeedbackToken"] = true, nil }

function asserts.AssertUpdateAuthEventFeedbackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAuthEventFeedbackRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["EventId"], "Expected key EventId to exist in table")
	assert(struct["FeedbackToken"], "Expected key FeedbackToken to exist in table")
	assert(struct["FeedbackValue"], "Expected key FeedbackValue to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["EventId"] then asserts.AssertEventIdType(struct["EventId"]) end
	if struct["FeedbackValue"] then asserts.AssertFeedbackValueType(struct["FeedbackValue"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["FeedbackToken"] then asserts.AssertTokenModelType(struct["FeedbackToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAuthEventFeedbackRequest[k], "UpdateAuthEventFeedbackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAuthEventFeedbackRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user pool username.</p>
-- * EventId [EventIdType] <p>The event ID.</p>
-- * FeedbackValue [FeedbackValueType] <p>The authentication event feedback value.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- * FeedbackToken [TokenModelType] <p>The feedback token.</p>
-- Required key: UserPoolId
-- Required key: Username
-- Required key: EventId
-- Required key: FeedbackToken
-- Required key: FeedbackValue
-- @return UpdateAuthEventFeedbackRequest structure as a key-value pair table
function M.UpdateAuthEventFeedbackRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAuthEventFeedbackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["EventId"] = args["EventId"],
		["FeedbackValue"] = args["FeedbackValue"],
		["UserPoolId"] = args["UserPoolId"],
		["FeedbackToken"] = args["FeedbackToken"],
	}
	asserts.AssertUpdateAuthEventFeedbackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RiskExceptionConfigurationType = { ["SkippedIPRangeList"] = true, ["BlockedIPRangeList"] = true, nil }

function asserts.AssertRiskExceptionConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RiskExceptionConfigurationType to be of type 'table'")
	if struct["SkippedIPRangeList"] then asserts.AssertSkippedIPRangeListType(struct["SkippedIPRangeList"]) end
	if struct["BlockedIPRangeList"] then asserts.AssertBlockedIPRangeListType(struct["BlockedIPRangeList"]) end
	for k,_ in pairs(struct) do
		assert(keys.RiskExceptionConfigurationType[k], "RiskExceptionConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RiskExceptionConfigurationType
-- <p>The type of the configuration to override the risk decision.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkippedIPRangeList [SkippedIPRangeListType] <p>Risk detection is not performed on the IP addresses in the range list. The IP range is in CIDR notation.</p>
-- * BlockedIPRangeList [BlockedIPRangeListType] <p>Overrides the risk decision to always block the pre-authentication requests. The IP range is in CIDR notation: a compact representation of an IP address and its associated routing prefix.</p>
-- @return RiskExceptionConfigurationType structure as a key-value pair table
function M.RiskExceptionConfigurationType(args)
	assert(args, "You must provide an argument table when creating RiskExceptionConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkippedIPRangeList"] = args["SkippedIPRangeList"],
		["BlockedIPRangeList"] = args["BlockedIPRangeList"],
	}
	asserts.AssertRiskExceptionConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRiskConfigurationRequest = { ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDescribeRiskConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRiskConfigurationRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRiskConfigurationRequest[k], "DescribeRiskConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRiskConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- @return DescribeRiskConfigurationRequest structure as a key-value pair table
function M.DescribeRiskConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRiskConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeRiskConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotifyConfigurationType = { ["NoActionEmail"] = true, ["From"] = true, ["ReplyTo"] = true, ["MfaEmail"] = true, ["BlockEmail"] = true, ["SourceArn"] = true, nil }

function asserts.AssertNotifyConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotifyConfigurationType to be of type 'table'")
	assert(struct["SourceArn"], "Expected key SourceArn to exist in table")
	if struct["NoActionEmail"] then asserts.AssertNotifyEmailType(struct["NoActionEmail"]) end
	if struct["From"] then asserts.AssertStringType(struct["From"]) end
	if struct["ReplyTo"] then asserts.AssertStringType(struct["ReplyTo"]) end
	if struct["MfaEmail"] then asserts.AssertNotifyEmailType(struct["MfaEmail"]) end
	if struct["BlockEmail"] then asserts.AssertNotifyEmailType(struct["BlockEmail"]) end
	if struct["SourceArn"] then asserts.AssertArnType(struct["SourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotifyConfigurationType[k], "NotifyConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotifyConfigurationType
-- <p>The notify configuration type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NoActionEmail [NotifyEmailType] <p>The email template used when a detected risk event is allowed.</p>
-- * From [StringType] <p>The email address that is sending the email. It must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.</p>
-- * ReplyTo [StringType] <p>The destination to which the receiver of an email should reply to.</p>
-- * MfaEmail [NotifyEmailType] <p>The MFA email template used when MFA is challenged as part of a detected risk.</p>
-- * BlockEmail [NotifyEmailType] <p>Email template used when a detected risk event is blocked.</p>
-- * SourceArn [ArnType] <p>The Amazon Resource Name (ARN) of the identity that is associated with the sending authorization policy. It permits Amazon Cognito to send for the email address specified in the <code>From</code> parameter.</p>
-- Required key: SourceArn
-- @return NotifyConfigurationType structure as a key-value pair table
function M.NotifyConfigurationType(args)
	assert(args, "You must provide an argument table when creating NotifyConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NoActionEmail"] = args["NoActionEmail"],
		["From"] = args["From"],
		["ReplyTo"] = args["ReplyTo"],
		["MfaEmail"] = args["MfaEmail"],
		["BlockEmail"] = args["BlockEmail"],
		["SourceArn"] = args["SourceArn"],
	}
	asserts.AssertNotifyConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AdminUpdateUserAttributesResponse = { nil }

function asserts.AssertAdminUpdateUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateUserAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AdminUpdateUserAttributesResponse[k], "AdminUpdateUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateUserAttributesResponse
-- <p>Represents the response from the server for the request to update user attributes as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AdminUpdateUserAttributesResponse structure as a key-value pair table
function M.AdminUpdateUserAttributesResponse(args)
	assert(args, "You must provide an argument table when creating AdminUpdateUserAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAdminUpdateUserAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserPoolMfaConfigRequest = { ["UserPoolId"] = true, nil }

function asserts.AssertGetUserPoolMfaConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserPoolMfaConfigRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserPoolMfaConfigRequest[k], "GetUserPoolMfaConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserPoolMfaConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: UserPoolId
-- @return GetUserPoolMfaConfigRequest structure as a key-value pair table
function M.GetUserPoolMfaConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetUserPoolMfaConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetUserPoolMfaConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceConfigurationType = { ["ChallengeRequiredOnNewDevice"] = true, ["DeviceOnlyRememberedOnUserPrompt"] = true, nil }

function asserts.AssertDeviceConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceConfigurationType to be of type 'table'")
	if struct["ChallengeRequiredOnNewDevice"] then asserts.AssertBooleanType(struct["ChallengeRequiredOnNewDevice"]) end
	if struct["DeviceOnlyRememberedOnUserPrompt"] then asserts.AssertBooleanType(struct["DeviceOnlyRememberedOnUserPrompt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceConfigurationType[k], "DeviceConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceConfigurationType
-- <p>The configuration for the user pool's device tracking.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChallengeRequiredOnNewDevice [BooleanType] <p>Indicates whether a challenge is required on a new device. Only applicable to a new device.</p>
-- * DeviceOnlyRememberedOnUserPrompt [BooleanType] <p>If true, a device is only remembered on user prompt.</p>
-- @return DeviceConfigurationType structure as a key-value pair table
function M.DeviceConfigurationType(args)
	assert(args, "You must provide an argument table when creating DeviceConfigurationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChallengeRequiredOnNewDevice"] = args["ChallengeRequiredOnNewDevice"],
		["DeviceOnlyRememberedOnUserPrompt"] = args["DeviceOnlyRememberedOnUserPrompt"],
	}
	asserts.AssertDeviceConfigurationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserContextDataType = { ["EncodedData"] = true, nil }

function asserts.AssertUserContextDataType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserContextDataType to be of type 'table'")
	if struct["EncodedData"] then asserts.AssertStringType(struct["EncodedData"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserContextDataType[k], "UserContextDataType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserContextDataType
-- <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncodedData [StringType] <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-- @return UserContextDataType structure as a key-value pair table
function M.UserContextDataType(args)
	assert(args, "You must provide an argument table when creating UserContextDataType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncodedData"] = args["EncodedData"],
	}
	asserts.AssertUserContextDataType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserPoolClientRequest = { ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertDescribeUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserPoolClientRequest[k], "DescribeUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolClientRequest
-- <p>Represents the request to describe a user pool client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientId [ClientIdType] <p>The app client ID of the app associated with the user pool.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to describe.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- @return DescribeUserPoolClientRequest structure as a key-value pair table
function M.DescribeUserPoolClientRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserPoolClientRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeUserPoolClientRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersInGroupResponse = { ["NextToken"] = true, ["Users"] = true, nil }

function asserts.AssertListUsersInGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersInGroupResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Users"] then asserts.AssertUsersListType(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersInGroupResponse[k], "ListUsersInGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersInGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * Users [UsersListType] <p>The users returned in the request to list users.</p>
-- @return ListUsersInGroupResponse structure as a key-value pair table
function M.ListUsersInGroupResponse(args)
	assert(args, "You must provide an argument table when creating ListUsersInGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Users"] = args["Users"],
	}
	asserts.AssertListUsersInGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfirmSignUpResponse = { nil }

function asserts.AssertConfirmSignUpResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSignUpResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ConfirmSignUpResponse[k], "ConfirmSignUpResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSignUpResponse
-- <p>Represents the response from the server for the registration confirmation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ConfirmSignUpResponse structure as a key-value pair table
function M.ConfirmSignUpResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmSignUpResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertConfirmSignUpResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserPoolClientsResponse = { ["NextToken"] = true, ["UserPoolClients"] = true, nil }

function asserts.AssertListUserPoolClientsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolClientsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["UserPoolClients"] then asserts.AssertUserPoolClientListType(struct["UserPoolClients"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserPoolClientsResponse[k], "ListUserPoolClientsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolClientsResponse
-- <p>Represents the response from the server that lists user pool clients.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * UserPoolClients [UserPoolClientListType] <p>The user pool clients in the response that lists user pool clients.</p>
-- @return ListUserPoolClientsResponse structure as a key-value pair table
function M.ListUserPoolClientsResponse(args)
	assert(args, "You must provide an argument table when creating ListUserPoolClientsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["UserPoolClients"] = args["UserPoolClients"],
	}
	asserts.AssertListUserPoolClientsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGroupResponse = { ["Group"] = true, nil }

function asserts.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	if struct["Group"] then asserts.AssertGroupType(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupResponse[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [GroupType] <p>The group object for the group.</p>
-- @return CreateGroupResponse structure as a key-value pair table
function M.CreateGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
	}
	asserts.AssertCreateGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertChallengeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChallengeNameType to be of type 'string'")
end

--  
function M.ChallengeNameType(str)
	asserts.AssertChallengeNameType(str)
	return str
end

function asserts.AssertAttributeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeNameType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeNameType(str)
	asserts.AssertAttributeNameType(str)
	return str
end

function asserts.AssertEventIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventIdType to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EventIdType(str)
	asserts.AssertEventIdType(str)
	return str
end

function asserts.AssertDomainVersionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainVersionType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainVersionType(str)
	asserts.AssertDomainVersionType(str)
	return str
end

function asserts.AssertDeviceNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceNameType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceNameType(str)
	asserts.AssertDeviceNameType(str)
	return str
end

function asserts.AssertAttributeMappingKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeMappingKeyType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeMappingKeyType(str)
	asserts.AssertAttributeMappingKeyType(str)
	return str
end

function asserts.AssertUsernameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UsernameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UsernameType(str)
	asserts.AssertUsernameType(str)
	return str
end

function asserts.AssertSessionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.SessionType(str)
	asserts.AssertSessionType(str)
	return str
end

function asserts.AssertDeliveryMediumType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryMediumType to be of type 'string'")
end

--  
function M.DeliveryMediumType(str)
	asserts.AssertDeliveryMediumType(str)
	return str
end

function asserts.AssertEmailVerificationSubjectByLinkType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailVerificationSubjectByLinkType to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EmailVerificationSubjectByLinkType(str)
	asserts.AssertEmailVerificationSubjectByLinkType(str)
	return str
end

function asserts.AssertRiskLevelType(str)
	assert(str)
	assert(type(str) == "string", "Expected RiskLevelType to be of type 'string'")
end

--  
function M.RiskLevelType(str)
	asserts.AssertRiskLevelType(str)
	return str
end

function asserts.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	asserts.AssertEventType(str)
	return str
end

function asserts.AssertDefaultEmailOptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultEmailOptionType to be of type 'string'")
end

--  
function M.DefaultEmailOptionType(str)
	asserts.AssertDefaultEmailOptionType(str)
	return str
end

function asserts.AssertUserPoolIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolIdType to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserPoolIdType(str)
	asserts.AssertUserPoolIdType(str)
	return str
end

function asserts.AssertGroupNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GroupNameType(str)
	asserts.AssertGroupNameType(str)
	return str
end

function asserts.AssertEmailNotificationBodyType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailNotificationBodyType to be of type 'string'")
	assert(#str <= 20000, "Expected string to be max 20000 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.EmailNotificationBodyType(str)
	asserts.AssertEmailNotificationBodyType(str)
	return str
end

function asserts.AssertUserFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserFilterType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.UserFilterType(str)
	asserts.AssertUserFilterType(str)
	return str
end

function asserts.AssertEventResponseType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventResponseType to be of type 'string'")
end

--  
function M.EventResponseType(str)
	asserts.AssertEventResponseType(str)
	return str
end

function asserts.AssertDeviceRememberedStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceRememberedStatusType to be of type 'string'")
end

--  
function M.DeviceRememberedStatusType(str)
	asserts.AssertDeviceRememberedStatusType(str)
	return str
end

function asserts.AssertClientIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientIdType(str)
	asserts.AssertClientIdType(str)
	return str
end

function asserts.AssertChallengeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChallengeName to be of type 'string'")
end

--  
function M.ChallengeName(str)
	asserts.AssertChallengeName(str)
	return str
end

function asserts.AssertCSSType(str)
	assert(str)
	assert(type(str) == "string", "Expected CSSType to be of type 'string'")
end

--  
function M.CSSType(str)
	asserts.AssertCSSType(str)
	return str
end

function asserts.AssertIdentityProviderTypeType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderTypeType to be of type 'string'")
end

--  
function M.IdentityProviderTypeType(str)
	asserts.AssertIdentityProviderTypeType(str)
	return str
end

function asserts.AssertUserPoolNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserPoolNameType(str)
	asserts.AssertUserPoolNameType(str)
	return str
end

function asserts.AssertClientPermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientPermissionType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientPermissionType(str)
	asserts.AssertClientPermissionType(str)
	return str
end

function asserts.AssertEmailAddressType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddressType to be of type 'string'")
end

--  
function M.EmailAddressType(str)
	asserts.AssertEmailAddressType(str)
	return str
end

function asserts.AssertCSSVersionType(str)
	assert(str)
	assert(type(str) == "string", "Expected CSSVersionType to be of type 'string'")
end

--  
function M.CSSVersionType(str)
	asserts.AssertCSSVersionType(str)
	return str
end

function asserts.AssertAdvancedSecurityModeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AdvancedSecurityModeType to be of type 'string'")
end

--  
function M.AdvancedSecurityModeType(str)
	asserts.AssertAdvancedSecurityModeType(str)
	return str
end

function asserts.AssertSecretCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretCodeType to be of type 'string'")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

--  
function M.SecretCodeType(str)
	asserts.AssertSecretCodeType(str)
	return str
end

function asserts.AssertCompletionMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected CompletionMessageType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CompletionMessageType(str)
	asserts.AssertCompletionMessageType(str)
	return str
end

function asserts.AssertConfirmationCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfirmationCodeType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConfirmationCodeType(str)
	asserts.AssertConfirmationCodeType(str)
	return str
end

function asserts.AssertMessageActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageActionType to be of type 'string'")
end

--  
function M.MessageActionType(str)
	asserts.AssertMessageActionType(str)
	return str
end

function asserts.AssertChallengeResponse(str)
	assert(str)
	assert(type(str) == "string", "Expected ChallengeResponse to be of type 'string'")
end

--  
function M.ChallengeResponse(str)
	asserts.AssertChallengeResponse(str)
	return str
end

function asserts.AssertUserPoolMfaType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolMfaType to be of type 'string'")
end

--  
function M.UserPoolMfaType(str)
	asserts.AssertUserPoolMfaType(str)
	return str
end

function asserts.AssertAccountTakeoverEventActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountTakeoverEventActionType to be of type 'string'")
end

--  
function M.AccountTakeoverEventActionType(str)
	asserts.AssertAccountTakeoverEventActionType(str)
	return str
end

function asserts.AssertS3BucketType(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3BucketType(str)
	asserts.AssertS3BucketType(str)
	return str
end

function asserts.AssertRiskDecisionType(str)
	assert(str)
	assert(type(str) == "string", "Expected RiskDecisionType to be of type 'string'")
end

--  
function M.RiskDecisionType(str)
	asserts.AssertRiskDecisionType(str)
	return str
end

function asserts.AssertSoftwareTokenMFAUserCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected SoftwareTokenMFAUserCodeType to be of type 'string'")
	assert(#str <= 6, "Expected string to be max 6 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.SoftwareTokenMFAUserCodeType(str)
	asserts.AssertSoftwareTokenMFAUserCodeType(str)
	return str
end

function asserts.AssertClientSecretType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientSecretType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientSecretType(str)
	asserts.AssertClientSecretType(str)
	return str
end

function asserts.AssertFeedbackValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected FeedbackValueType to be of type 'string'")
end

--  
function M.FeedbackValueType(str)
	asserts.AssertFeedbackValueType(str)
	return str
end

function asserts.AssertSecretHashType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretHashType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SecretHashType(str)
	asserts.AssertSecretHashType(str)
	return str
end

function asserts.AssertUserStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserStatusType to be of type 'string'")
end

--  
function M.UserStatusType(str)
	asserts.AssertUserStatusType(str)
	return str
end

function asserts.AssertResourceServerScopeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceServerScopeNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceServerScopeNameType(str)
	asserts.AssertResourceServerScopeNameType(str)
	return str
end

function asserts.AssertOAuthFlowType(str)
	assert(str)
	assert(type(str) == "string", "Expected OAuthFlowType to be of type 'string'")
end

--  
function M.OAuthFlowType(str)
	asserts.AssertOAuthFlowType(str)
	return str
end

function asserts.AssertCompromisedCredentialsEventActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected CompromisedCredentialsEventActionType to be of type 'string'")
end

--  
function M.CompromisedCredentialsEventActionType(str)
	asserts.AssertCompromisedCredentialsEventActionType(str)
	return str
end

function asserts.AssertImageUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageUrlType to be of type 'string'")
end

--  
function M.ImageUrlType(str)
	asserts.AssertImageUrlType(str)
	return str
end

function asserts.AssertEmailVerificationMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailVerificationMessageType to be of type 'string'")
	assert(#str <= 20000, "Expected string to be max 20000 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.EmailVerificationMessageType(str)
	asserts.AssertEmailVerificationMessageType(str)
	return str
end

function asserts.AssertUserImportJobIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserImportJobIdType to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserImportJobIdType(str)
	asserts.AssertUserImportJobIdType(str)
	return str
end

function asserts.AssertDomainType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainType to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainType(str)
	asserts.AssertDomainType(str)
	return str
end

function asserts.AssertDomainStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatusType to be of type 'string'")
end

--  
function M.DomainStatusType(str)
	asserts.AssertDomainStatusType(str)
	return str
end

function asserts.AssertProviderNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderNameType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProviderNameType(str)
	asserts.AssertProviderNameType(str)
	return str
end

function asserts.AssertSmsVerificationMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected SmsVerificationMessageType to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.SmsVerificationMessageType(str)
	asserts.AssertSmsVerificationMessageType(str)
	return str
end

function asserts.AssertStringType(str)
	assert(str)
	assert(type(str) == "string", "Expected StringType to be of type 'string'")
end

--  
function M.StringType(str)
	asserts.AssertStringType(str)
	return str
end

function asserts.AssertEventFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventFilterType to be of type 'string'")
end

--  
function M.EventFilterType(str)
	asserts.AssertEventFilterType(str)
	return str
end

function asserts.AssertResourceServerNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceServerNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceServerNameType(str)
	asserts.AssertResourceServerNameType(str)
	return str
end

function asserts.AssertVerifiedAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VerifiedAttributeType to be of type 'string'")
end

--  
function M.VerifiedAttributeType(str)
	asserts.AssertVerifiedAttributeType(str)
	return str
end

function asserts.AssertScopeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScopeType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ScopeType(str)
	asserts.AssertScopeType(str)
	return str
end

function asserts.AssertEmailVerificationSubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailVerificationSubjectType to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EmailVerificationSubjectType(str)
	asserts.AssertEmailVerificationSubjectType(str)
	return str
end

function asserts.AssertDeviceKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceKeyType to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceKeyType(str)
	asserts.AssertDeviceKeyType(str)
	return str
end

function asserts.AssertCustomAttributeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomAttributeNameType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomAttributeNameType(str)
	asserts.AssertCustomAttributeNameType(str)
	return str
end

function asserts.AssertProviderNameTypeV1(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderNameTypeV1 to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProviderNameTypeV1(str)
	asserts.AssertProviderNameTypeV1(str)
	return str
end

function asserts.AssertUserImportJobStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserImportJobStatusType to be of type 'string'")
end

--  
function M.UserImportJobStatusType(str)
	asserts.AssertUserImportJobStatusType(str)
	return str
end

function asserts.AssertUsernameAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected UsernameAttributeType to be of type 'string'")
end

--  
function M.UsernameAttributeType(str)
	asserts.AssertUsernameAttributeType(str)
	return str
end

function asserts.AssertEmailVerificationMessageByLinkType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailVerificationMessageByLinkType to be of type 'string'")
	assert(#str <= 20000, "Expected string to be max 20000 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.EmailVerificationMessageByLinkType(str)
	asserts.AssertEmailVerificationMessageByLinkType(str)
	return str
end

function asserts.AssertExplicitAuthFlowsType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExplicitAuthFlowsType to be of type 'string'")
end

--  
function M.ExplicitAuthFlowsType(str)
	asserts.AssertExplicitAuthFlowsType(str)
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

function asserts.AssertTokenModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected TokenModelType to be of type 'string'")
end

--  
function M.TokenModelType(str)
	asserts.AssertTokenModelType(str)
	return str
end

function asserts.AssertResourceServerIdentifierType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceServerIdentifierType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceServerIdentifierType(str)
	asserts.AssertResourceServerIdentifierType(str)
	return str
end

function asserts.AssertUserImportJobNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserImportJobNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserImportJobNameType(str)
	asserts.AssertUserImportJobNameType(str)
	return str
end

function asserts.AssertAttributeValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValueType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.AttributeValueType(str)
	asserts.AssertAttributeValueType(str)
	return str
end

function asserts.AssertPasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected PasswordType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.PasswordType(str)
	asserts.AssertPasswordType(str)
	return str
end

function asserts.AssertPaginationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationKey(str)
	asserts.AssertPaginationKey(str)
	return str
end

function asserts.AssertPaginationKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationKeyType to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationKeyType(str)
	asserts.AssertPaginationKeyType(str)
	return str
end

function asserts.AssertAliasAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasAttributeType to be of type 'string'")
end

--  
function M.AliasAttributeType(str)
	asserts.AssertAliasAttributeType(str)
	return str
end

function asserts.AssertHexStringType(str)
	assert(str)
	assert(type(str) == "string", "Expected HexStringType to be of type 'string'")
end

--  
function M.HexStringType(str)
	asserts.AssertHexStringType(str)
	return str
end

function asserts.AssertVerifySoftwareTokenResponseType(str)
	assert(str)
	assert(type(str) == "string", "Expected VerifySoftwareTokenResponseType to be of type 'string'")
end

--  
function M.VerifySoftwareTokenResponseType(str)
	asserts.AssertVerifySoftwareTokenResponseType(str)
	return str
end

function asserts.AssertResourceServerScopeDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceServerScopeDescriptionType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceServerScopeDescriptionType(str)
	asserts.AssertResourceServerScopeDescriptionType(str)
	return str
end

function asserts.AssertSearchPaginationTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchPaginationTokenType to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SearchPaginationTokenType(str)
	asserts.AssertSearchPaginationTokenType(str)
	return str
end

function asserts.AssertPreSignedUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected PreSignedUrlType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PreSignedUrlType(str)
	asserts.AssertPreSignedUrlType(str)
	return str
end

function asserts.AssertAuthFlowType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthFlowType to be of type 'string'")
end

--  
function M.AuthFlowType(str)
	asserts.AssertAuthFlowType(str)
	return str
end

function asserts.AssertAttributeDataType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeDataType to be of type 'string'")
end

--  
function M.AttributeDataType(str)
	asserts.AssertAttributeDataType(str)
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

function asserts.AssertClientNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientNameType(str)
	asserts.AssertClientNameType(str)
	return str
end

function asserts.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	asserts.AssertStatusType(str)
	return str
end

function asserts.AssertIdpIdentifierType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdpIdentifierType to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdpIdentifierType(str)
	asserts.AssertIdpIdentifierType(str)
	return str
end

function asserts.AssertEmailNotificationSubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailNotificationSubjectType to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EmailNotificationSubjectType(str)
	asserts.AssertEmailNotificationSubjectType(str)
	return str
end

function asserts.AssertRedirectUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectUrlType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RedirectUrlType(str)
	asserts.AssertRedirectUrlType(str)
	return str
end

function asserts.AssertLongType(long)
	assert(long)
	assert(type(long) == "number", "Expected LongType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongType(long)
	asserts.AssertLongType(long)
	return long
end

function asserts.AssertListProvidersLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListProvidersLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListProvidersLimitType(integer)
	asserts.AssertListProvidersLimitType(integer)
	return integer
end

function asserts.AssertQueryLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected QueryLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.QueryLimit(integer)
	asserts.AssertQueryLimit(integer)
	return integer
end

function asserts.AssertPoolQueryLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PoolQueryLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PoolQueryLimitType(integer)
	asserts.AssertPoolQueryLimitType(integer)
	return integer
end

function asserts.AssertAdminCreateUserUnusedAccountValidityDaysType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AdminCreateUserUnusedAccountValidityDaysType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 365, "Expected integer to be max 365")
end

function M.AdminCreateUserUnusedAccountValidityDaysType(integer)
	asserts.AssertAdminCreateUserUnusedAccountValidityDaysType(integer)
	return integer
end

function asserts.AssertIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerType(integer)
	asserts.AssertIntegerType(integer)
	return integer
end

function asserts.AssertPasswordPolicyMinLengthType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PasswordPolicyMinLengthType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 99, "Expected integer to be max 99")
	assert(integer >= 6, "Expected integer to be min 6")
end

function M.PasswordPolicyMinLengthType(integer)
	asserts.AssertPasswordPolicyMinLengthType(integer)
	return integer
end

function asserts.AssertRefreshTokenValidityType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RefreshTokenValidityType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3650, "Expected integer to be max 3650")
end

function M.RefreshTokenValidityType(integer)
	asserts.AssertRefreshTokenValidityType(integer)
	return integer
end

function asserts.AssertListResourceServersLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListResourceServersLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListResourceServersLimitType(integer)
	asserts.AssertListResourceServersLimitType(integer)
	return integer
end

function asserts.AssertPrecedenceType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PrecedenceType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PrecedenceType(integer)
	asserts.AssertPrecedenceType(integer)
	return integer
end

function asserts.AssertQueryLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected QueryLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
end

function M.QueryLimitType(integer)
	asserts.AssertQueryLimitType(integer)
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

function asserts.AssertForceAliasCreation(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceAliasCreation to be of type 'boolean'")
end

function M.ForceAliasCreation(boolean)
	asserts.AssertForceAliasCreation(boolean)
	return boolean
end

function asserts.AssertGenerateSecret(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected GenerateSecret to be of type 'boolean'")
end

function M.GenerateSecret(boolean)
	asserts.AssertGenerateSecret(boolean)
	return boolean
end

function asserts.AssertAccountTakeoverActionNotifyType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AccountTakeoverActionNotifyType to be of type 'boolean'")
end

function M.AccountTakeoverActionNotifyType(boolean)
	asserts.AssertAccountTakeoverActionNotifyType(boolean)
	return boolean
end

function asserts.AssertAuthParametersType(map)
	assert(map)
	assert(type(map) == "table", "Expected AuthParametersType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.AuthParametersType(map)
	asserts.AssertAuthParametersType(map)
	return map
end

function asserts.AssertAttributeMappingType(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeMappingType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeMappingKeyType(k)
		asserts.AssertStringType(v)
	end
end

function M.AttributeMappingType(map)
	asserts.AssertAttributeMappingType(map)
	return map
end

function asserts.AssertChallengeParametersType(map)
	assert(map)
	assert(type(map) == "table", "Expected ChallengeParametersType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.ChallengeParametersType(map)
	asserts.AssertChallengeParametersType(map)
	return map
end

function asserts.AssertProviderDetailsType(map)
	assert(map)
	assert(type(map) == "table", "Expected ProviderDetailsType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.ProviderDetailsType(map)
	asserts.AssertProviderDetailsType(map)
	return map
end

function asserts.AssertUserPoolTagsType(map)
	assert(map)
	assert(type(map) == "table", "Expected UserPoolTagsType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.UserPoolTagsType(map)
	asserts.AssertUserPoolTagsType(map)
	return map
end

function asserts.AssertClientMetadataType(map)
	assert(map)
	assert(type(map) == "table", "Expected ClientMetadataType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.ClientMetadataType(map)
	asserts.AssertClientMetadataType(map)
	return map
end

function asserts.AssertChallengeResponsesType(map)
	assert(map)
	assert(type(map) == "table", "Expected ChallengeResponsesType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStringType(k)
		asserts.AssertStringType(v)
	end
end

function M.ChallengeResponsesType(map)
	asserts.AssertChallengeResponsesType(map)
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

function asserts.AssertImageFileType(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected ImageFileType to be of type 'string'")
end

function M.ImageFileType(blob)
	asserts.AssertImageFileType(blob)
	return blob
end

function asserts.AssertProvidersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvidersListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertProviderDescription(v)
	end
end

--  
-- List of ProviderDescription objects
function M.ProvidersListType(list)
	asserts.AssertProvidersListType(list)
	return list
end

function asserts.AssertAuthEventsType(list)
	assert(list)
	assert(type(list) == "table", "Expected AuthEventsType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAuthEventType(v)
	end
end

--  
-- List of AuthEventType objects
function M.AuthEventsType(list)
	asserts.AssertAuthEventsType(list)
	return list
end

function asserts.AssertSkippedIPRangeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SkippedIPRangeListType to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertStringType(v)
	end
end

--  
-- List of StringType objects
function M.SkippedIPRangeListType(list)
	asserts.AssertSkippedIPRangeListType(list)
	return list
end

function asserts.AssertResourceServerScopeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceServerScopeListType to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceServerScopeType(v)
	end
end

--  
-- List of ResourceServerScopeType objects
function M.ResourceServerScopeListType(list)
	asserts.AssertResourceServerScopeListType(list)
	return list
end

function asserts.AssertDeviceListType(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceType(v)
	end
end

--  
-- List of DeviceType objects
function M.DeviceListType(list)
	asserts.AssertDeviceListType(list)
	return list
end

function asserts.AssertExplicitAuthFlowsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ExplicitAuthFlowsListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExplicitAuthFlowsType(v)
	end
end

--  
-- List of ExplicitAuthFlowsType objects
function M.ExplicitAuthFlowsListType(list)
	asserts.AssertExplicitAuthFlowsListType(list)
	return list
end

function asserts.AssertUserPoolClientListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserPoolClientListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserPoolClientDescription(v)
	end
end

--  
-- List of UserPoolClientDescription objects
function M.UserPoolClientListType(list)
	asserts.AssertUserPoolClientListType(list)
	return list
end

function asserts.AssertCallbackURLsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected CallbackURLsListType to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertRedirectUrlType(v)
	end
end

--  
-- List of RedirectUrlType objects
function M.CallbackURLsListType(list)
	asserts.AssertCallbackURLsListType(list)
	return list
end

function asserts.AssertSearchedAttributeNamesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchedAttributeNamesListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeNameType(v)
	end
end

--  
-- List of AttributeNameType objects
function M.SearchedAttributeNamesListType(list)
	asserts.AssertSearchedAttributeNamesListType(list)
	return list
end

function asserts.AssertListOfStringTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfStringTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStringType(v)
	end
end

--  
-- List of StringType objects
function M.ListOfStringTypes(list)
	asserts.AssertListOfStringTypes(list)
	return list
end

function asserts.AssertSupportedIdentityProvidersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedIdentityProvidersListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProviderNameType(v)
	end
end

--  
-- List of ProviderNameType objects
function M.SupportedIdentityProvidersListType(list)
	asserts.AssertSupportedIdentityProvidersListType(list)
	return list
end

function asserts.AssertUsersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UsersListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserType(v)
	end
end

--  
-- List of UserType objects
function M.UsersListType(list)
	asserts.AssertUsersListType(list)
	return list
end

function asserts.AssertUserPoolListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserPoolListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserPoolDescriptionType(v)
	end
end

--  
-- List of UserPoolDescriptionType objects
function M.UserPoolListType(list)
	asserts.AssertUserPoolListType(list)
	return list
end

function asserts.AssertIdpIdentifiersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected IdpIdentifiersListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertIdpIdentifierType(v)
	end
end

--  
-- List of IdpIdentifierType objects
function M.IdpIdentifiersListType(list)
	asserts.AssertIdpIdentifiersListType(list)
	return list
end

function asserts.AssertCodeDeliveryDetailsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected CodeDeliveryDetailsListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCodeDeliveryDetailsType(v)
	end
end

--  
-- List of CodeDeliveryDetailsType objects
function M.CodeDeliveryDetailsListType(list)
	asserts.AssertCodeDeliveryDetailsListType(list)
	return list
end

function asserts.AssertAliasAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasAttributesListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAliasAttributeType(v)
	end
end

--  
-- List of AliasAttributeType objects
function M.AliasAttributesListType(list)
	asserts.AssertAliasAttributesListType(list)
	return list
end

function asserts.AssertEventFiltersType(list)
	assert(list)
	assert(type(list) == "table", "Expected EventFiltersType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventFilterType(v)
	end
end

--  
-- List of EventFilterType objects
function M.EventFiltersType(list)
	asserts.AssertEventFiltersType(list)
	return list
end

function asserts.AssertVerifiedAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected VerifiedAttributesListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVerifiedAttributeType(v)
	end
end

--  
-- List of VerifiedAttributeType objects
function M.VerifiedAttributesListType(list)
	asserts.AssertVerifiedAttributesListType(list)
	return list
end

function asserts.AssertChallengeResponseListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ChallengeResponseListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChallengeResponseType(v)
	end
end

--  
-- List of ChallengeResponseType objects
function M.ChallengeResponseListType(list)
	asserts.AssertChallengeResponseListType(list)
	return list
end

function asserts.AssertClientPermissionListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ClientPermissionListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClientPermissionType(v)
	end
end

--  
-- List of ClientPermissionType objects
function M.ClientPermissionListType(list)
	asserts.AssertClientPermissionListType(list)
	return list
end

function asserts.AssertScopeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ScopeListType to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertScopeType(v)
	end
end

--  
-- List of ScopeType objects
function M.ScopeListType(list)
	asserts.AssertScopeListType(list)
	return list
end

function asserts.AssertHttpHeaderList(list)
	assert(list)
	assert(type(list) == "table", "Expected HttpHeaderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHttpHeader(v)
	end
end

--  
-- List of HttpHeader objects
function M.HttpHeaderList(list)
	asserts.AssertHttpHeaderList(list)
	return list
end

function asserts.AssertLogoutURLsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected LogoutURLsListType to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertRedirectUrlType(v)
	end
end

--  
-- List of RedirectUrlType objects
function M.LogoutURLsListType(list)
	asserts.AssertLogoutURLsListType(list)
	return list
end

function asserts.AssertAttributeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeType(v)
	end
end

--  
-- List of AttributeType objects
function M.AttributeListType(list)
	asserts.AssertAttributeListType(list)
	return list
end

function asserts.AssertMFAOptionListType(list)
	assert(list)
	assert(type(list) == "table", "Expected MFAOptionListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMFAOptionType(v)
	end
end

--  
-- List of MFAOptionType objects
function M.MFAOptionListType(list)
	asserts.AssertMFAOptionListType(list)
	return list
end

function asserts.AssertUsernameAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UsernameAttributesListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUsernameAttributeType(v)
	end
end

--  
-- List of UsernameAttributeType objects
function M.UsernameAttributesListType(list)
	asserts.AssertUsernameAttributesListType(list)
	return list
end

function asserts.AssertUserImportJobsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserImportJobsListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertUserImportJobType(v)
	end
end

--  
-- List of UserImportJobType objects
function M.UserImportJobsListType(list)
	asserts.AssertUserImportJobsListType(list)
	return list
end

function asserts.AssertUserMFASettingListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserMFASettingListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStringType(v)
	end
end

--  
-- List of StringType objects
function M.UserMFASettingListType(list)
	asserts.AssertUserMFASettingListType(list)
	return list
end

function asserts.AssertBlockedIPRangeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected BlockedIPRangeListType to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertStringType(v)
	end
end

--  
-- List of StringType objects
function M.BlockedIPRangeListType(list)
	asserts.AssertBlockedIPRangeListType(list)
	return list
end

function asserts.AssertOAuthFlowsType(list)
	assert(list)
	assert(type(list) == "table", "Expected OAuthFlowsType to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	for _,v in ipairs(list) do
		asserts.AssertOAuthFlowType(v)
	end
end

--  
-- List of OAuthFlowType objects
function M.OAuthFlowsType(list)
	asserts.AssertOAuthFlowsType(list)
	return list
end

function asserts.AssertDeliveryMediumListType(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryMediumListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeliveryMediumType(v)
	end
end

--  
-- List of DeliveryMediumType objects
function M.DeliveryMediumListType(list)
	asserts.AssertDeliveryMediumListType(list)
	return list
end

function asserts.AssertResourceServersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceServersListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceServerType(v)
	end
end

--  
-- List of ResourceServerType objects
function M.ResourceServersListType(list)
	asserts.AssertResourceServersListType(list)
	return list
end

function asserts.AssertAttributeNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeNameType(v)
	end
end

--  
-- List of AttributeNameType objects
function M.AttributeNameListType(list)
	asserts.AssertAttributeNameListType(list)
	return list
end

function asserts.AssertCustomAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomAttributesListType to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSchemaAttributeType(v)
	end
end

--  
-- List of SchemaAttributeType objects
function M.CustomAttributesListType(list)
	asserts.AssertCustomAttributesListType(list)
	return list
end

function asserts.AssertSchemaAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaAttributesListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSchemaAttributeType(v)
	end
end

--  
-- List of SchemaAttributeType objects
function M.SchemaAttributesListType(list)
	asserts.AssertSchemaAttributesListType(list)
	return list
end

function asserts.AssertGroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupType(v)
	end
end

--  
-- List of GroupType objects
function M.GroupListType(list)
	asserts.AssertGroupListType(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "cognito-idp.amazonaws.com"
		end
	end
	local ss = { "cognito-idp" }
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
--- Call VerifyUserAttribute asynchronously, invoking a callback when done
-- @param VerifyUserAttributeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifyUserAttributeAsync(VerifyUserAttributeRequest, cb)
	assert(VerifyUserAttributeRequest, "You must provide a VerifyUserAttributeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.VerifyUserAttribute",
	}
	for header,value in pairs(VerifyUserAttributeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifyUserAttributeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifyUserAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyUserAttributeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.VerifyUserAttributeSync(VerifyUserAttributeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyUserAttributeAsync(VerifyUserAttributeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminListDevices asynchronously, invoking a callback when done
-- @param AdminListDevicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminListDevicesAsync(AdminListDevicesRequest, cb)
	assert(AdminListDevicesRequest, "You must provide a AdminListDevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListDevices",
	}
	for header,value in pairs(AdminListDevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminListDevicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminListDevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminListDevicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminListDevicesSync(AdminListDevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminListDevicesAsync(AdminListDevicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SignUp asynchronously, invoking a callback when done
-- @param SignUpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SignUpAsync(SignUpRequest, cb)
	assert(SignUpRequest, "You must provide a SignUpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SignUp",
	}
	for header,value in pairs(SignUpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SignUpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SignUp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SignUpRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SignUpSync(SignUpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SignUpAsync(SignUpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentityProviders asynchronously, invoking a callback when done
-- @param ListIdentityProvidersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIdentityProvidersAsync(ListIdentityProvidersRequest, cb)
	assert(ListIdentityProvidersRequest, "You must provide a ListIdentityProvidersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListIdentityProviders",
	}
	for header,value in pairs(ListIdentityProvidersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIdentityProvidersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIdentityProviders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentityProvidersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIdentityProvidersSync(ListIdentityProvidersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentityProvidersAsync(ListIdentityProvidersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResourceServer asynchronously, invoking a callback when done
-- @param DescribeResourceServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeResourceServerAsync(DescribeResourceServerRequest, cb)
	assert(DescribeResourceServerRequest, "You must provide a DescribeResourceServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeResourceServer",
	}
	for header,value in pairs(DescribeResourceServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeResourceServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeResourceServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResourceServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeResourceServerSync(DescribeResourceServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourceServerAsync(DescribeResourceServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserPoolClients asynchronously, invoking a callback when done
-- @param ListUserPoolClientsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUserPoolClientsAsync(ListUserPoolClientsRequest, cb)
	assert(ListUserPoolClientsRequest, "You must provide a ListUserPoolClientsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserPoolClients",
	}
	for header,value in pairs(ListUserPoolClientsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUserPoolClientsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUserPoolClients synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUserPoolClientsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUserPoolClientsSync(ListUserPoolClientsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserPoolClientsAsync(ListUserPoolClientsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserPool asynchronously, invoking a callback when done
-- @param DescribeUserPoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserPoolAsync(DescribeUserPoolRequest, cb)
	assert(DescribeUserPoolRequest, "You must provide a DescribeUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPool",
	}
	for header,value in pairs(DescribeUserPoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserPoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserPoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserPoolSync(DescribeUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserPoolAsync(DescribeUserPoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUserGlobalSignOut asynchronously, invoking a callback when done
-- @param AdminUserGlobalSignOutRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminUserGlobalSignOutAsync(AdminUserGlobalSignOutRequest, cb)
	assert(AdminUserGlobalSignOutRequest, "You must provide a AdminUserGlobalSignOutRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUserGlobalSignOut",
	}
	for header,value in pairs(AdminUserGlobalSignOutRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminUserGlobalSignOutRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminUserGlobalSignOut synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminUserGlobalSignOutRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminUserGlobalSignOutSync(AdminUserGlobalSignOutRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUserGlobalSignOutAsync(AdminUserGlobalSignOutRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPoolDomain asynchronously, invoking a callback when done
-- @param DeleteUserPoolDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserPoolDomainAsync(DeleteUserPoolDomainRequest, cb)
	assert(DeleteUserPoolDomainRequest, "You must provide a DeleteUserPoolDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPoolDomain",
	}
	for header,value in pairs(DeleteUserPoolDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserPoolDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserPoolDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserPoolDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserPoolDomainSync(DeleteUserPoolDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPoolDomainAsync(DeleteUserPoolDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUser asynchronously, invoking a callback when done
-- @param GetUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserAsync(GetUserRequest, cb)
	assert(GetUserRequest, "You must provide a GetUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUser",
	}
	for header,value in pairs(GetUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserSync(GetUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserAsync(GetUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUICustomization asynchronously, invoking a callback when done
-- @param GetUICustomizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUICustomizationAsync(GetUICustomizationRequest, cb)
	assert(GetUICustomizationRequest, "You must provide a GetUICustomizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUICustomization",
	}
	for header,value in pairs(GetUICustomizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUICustomizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUICustomization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUICustomizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUICustomizationSync(GetUICustomizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUICustomizationAsync(GetUICustomizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIdentityProvider asynchronously, invoking a callback when done
-- @param DescribeIdentityProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeIdentityProviderAsync(DescribeIdentityProviderRequest, cb)
	assert(DescribeIdentityProviderRequest, "You must provide a DescribeIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeIdentityProvider",
	}
	for header,value in pairs(DescribeIdentityProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeIdentityProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIdentityProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIdentityProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeIdentityProviderSync(DescribeIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIdentityProviderAsync(DescribeIdentityProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIdentityProvider asynchronously, invoking a callback when done
-- @param UpdateIdentityProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateIdentityProviderAsync(UpdateIdentityProviderRequest, cb)
	assert(UpdateIdentityProviderRequest, "You must provide a UpdateIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateIdentityProvider",
	}
	for header,value in pairs(UpdateIdentityProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateIdentityProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateIdentityProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateIdentityProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateIdentityProviderSync(UpdateIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIdentityProviderAsync(UpdateIdentityProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangePassword asynchronously, invoking a callback when done
-- @param ChangePasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ChangePasswordAsync(ChangePasswordRequest, cb)
	assert(ChangePasswordRequest, "You must provide a ChangePasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ChangePassword",
	}
	for header,value in pairs(ChangePasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ChangePasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ChangePassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangePasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ChangePasswordSync(ChangePasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangePasswordAsync(ChangePasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminForgetDevice asynchronously, invoking a callback when done
-- @param AdminForgetDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminForgetDeviceAsync(AdminForgetDeviceRequest, cb)
	assert(AdminForgetDeviceRequest, "You must provide a AdminForgetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminForgetDevice",
	}
	for header,value in pairs(AdminForgetDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminForgetDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminForgetDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminForgetDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminForgetDeviceSync(AdminForgetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminForgetDeviceAsync(AdminForgetDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRiskConfiguration asynchronously, invoking a callback when done
-- @param DescribeRiskConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRiskConfigurationAsync(DescribeRiskConfigurationRequest, cb)
	assert(DescribeRiskConfigurationRequest, "You must provide a DescribeRiskConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeRiskConfiguration",
	}
	for header,value in pairs(DescribeRiskConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRiskConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRiskConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRiskConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRiskConfigurationSync(DescribeRiskConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRiskConfigurationAsync(DescribeRiskConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetUICustomization asynchronously, invoking a callback when done
-- @param SetUICustomizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetUICustomizationAsync(SetUICustomizationRequest, cb)
	assert(SetUICustomizationRequest, "You must provide a SetUICustomizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetUICustomization",
	}
	for header,value in pairs(SetUICustomizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetUICustomizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetUICustomization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetUICustomizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetUICustomizationSync(SetUICustomizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetUICustomizationAsync(SetUICustomizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUser asynchronously, invoking a callback when done
-- @param DeleteUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserAsync(DeleteUserRequest, cb)
	assert(DeleteUserRequest, "You must provide a DeleteUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUser",
	}
	for header,value in pairs(DeleteUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserSync(DeleteUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAsync(DeleteUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDeleteUser asynchronously, invoking a callback when done
-- @param AdminDeleteUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminDeleteUserAsync(AdminDeleteUserRequest, cb)
	assert(AdminDeleteUserRequest, "You must provide a AdminDeleteUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDeleteUser",
	}
	for header,value in pairs(AdminDeleteUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminDeleteUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminDeleteUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminDeleteUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminDeleteUserSync(AdminDeleteUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDeleteUserAsync(AdminDeleteUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminInitiateAuth asynchronously, invoking a callback when done
-- @param AdminInitiateAuthRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminInitiateAuthAsync(AdminInitiateAuthRequest, cb)
	assert(AdminInitiateAuthRequest, "You must provide a AdminInitiateAuthRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminInitiateAuth",
	}
	for header,value in pairs(AdminInitiateAuthRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminInitiateAuthRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminInitiateAuth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminInitiateAuthRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminInitiateAuthSync(AdminInitiateAuthRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminInitiateAuthAsync(AdminInitiateAuthRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUpdateAuthEventFeedback asynchronously, invoking a callback when done
-- @param AdminUpdateAuthEventFeedbackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminUpdateAuthEventFeedbackAsync(AdminUpdateAuthEventFeedbackRequest, cb)
	assert(AdminUpdateAuthEventFeedbackRequest, "You must provide a AdminUpdateAuthEventFeedbackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateAuthEventFeedback",
	}
	for header,value in pairs(AdminUpdateAuthEventFeedbackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminUpdateAuthEventFeedbackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminUpdateAuthEventFeedback synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminUpdateAuthEventFeedbackRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminUpdateAuthEventFeedbackSync(AdminUpdateAuthEventFeedbackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUpdateAuthEventFeedbackAsync(AdminUpdateAuthEventFeedbackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetRiskConfiguration asynchronously, invoking a callback when done
-- @param SetRiskConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetRiskConfigurationAsync(SetRiskConfigurationRequest, cb)
	assert(SetRiskConfigurationRequest, "You must provide a SetRiskConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetRiskConfiguration",
	}
	for header,value in pairs(SetRiskConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetRiskConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetRiskConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetRiskConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetRiskConfigurationSync(SetRiskConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetRiskConfigurationAsync(SetRiskConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminSetUserSettings asynchronously, invoking a callback when done
-- @param AdminSetUserSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminSetUserSettingsAsync(AdminSetUserSettingsRequest, cb)
	assert(AdminSetUserSettingsRequest, "You must provide a AdminSetUserSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminSetUserSettings",
	}
	for header,value in pairs(AdminSetUserSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminSetUserSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminSetUserSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminSetUserSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminSetUserSettingsSync(AdminSetUserSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminSetUserSettingsAsync(AdminSetUserSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminSetUserMFAPreference asynchronously, invoking a callback when done
-- @param AdminSetUserMFAPreferenceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminSetUserMFAPreferenceAsync(AdminSetUserMFAPreferenceRequest, cb)
	assert(AdminSetUserMFAPreferenceRequest, "You must provide a AdminSetUserMFAPreferenceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminSetUserMFAPreference",
	}
	for header,value in pairs(AdminSetUserMFAPreferenceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminSetUserMFAPreferenceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminSetUserMFAPreference synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminSetUserMFAPreferenceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminSetUserMFAPreferenceSync(AdminSetUserMFAPreferenceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminSetUserMFAPreferenceAsync(AdminSetUserMFAPreferenceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateAuth asynchronously, invoking a callback when done
-- @param InitiateAuthRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateAuthAsync(InitiateAuthRequest, cb)
	assert(InitiateAuthRequest, "You must provide a InitiateAuthRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.InitiateAuth",
	}
	for header,value in pairs(InitiateAuthRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", InitiateAuthRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateAuth synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateAuthRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateAuthSync(InitiateAuthRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateAuthAsync(InitiateAuthRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourceServers asynchronously, invoking a callback when done
-- @param ListResourceServersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResourceServersAsync(ListResourceServersRequest, cb)
	assert(ListResourceServersRequest, "You must provide a ListResourceServersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListResourceServers",
	}
	for header,value in pairs(ListResourceServersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourceServersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResourceServers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourceServersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListResourceServersSync(ListResourceServersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourceServersAsync(ListResourceServersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeviceStatus asynchronously, invoking a callback when done
-- @param UpdateDeviceStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDeviceStatusAsync(UpdateDeviceStatusRequest, cb)
	assert(UpdateDeviceStatusRequest, "You must provide a UpdateDeviceStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateDeviceStatus",
	}
	for header,value in pairs(UpdateDeviceStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDeviceStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDeviceStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeviceStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDeviceStatusSync(UpdateDeviceStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceStatusAsync(UpdateDeviceStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDisableUser asynchronously, invoking a callback when done
-- @param AdminDisableUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminDisableUserAsync(AdminDisableUserRequest, cb)
	assert(AdminDisableUserRequest, "You must provide a AdminDisableUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDisableUser",
	}
	for header,value in pairs(AdminDisableUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminDisableUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminDisableUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminDisableUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminDisableUserSync(AdminDisableUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDisableUserAsync(AdminDisableUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUpdateUserAttributes asynchronously, invoking a callback when done
-- @param AdminUpdateUserAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminUpdateUserAttributesAsync(AdminUpdateUserAttributesRequest, cb)
	assert(AdminUpdateUserAttributesRequest, "You must provide a AdminUpdateUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateUserAttributes",
	}
	for header,value in pairs(AdminUpdateUserAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminUpdateUserAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminUpdateUserAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminUpdateUserAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminUpdateUserAttributesSync(AdminUpdateUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUpdateUserAttributesAsync(AdminUpdateUserAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ForgetDevice asynchronously, invoking a callback when done
-- @param ForgetDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ForgetDeviceAsync(ForgetDeviceRequest, cb)
	assert(ForgetDeviceRequest, "You must provide a ForgetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ForgetDevice",
	}
	for header,value in pairs(ForgetDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ForgetDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ForgetDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ForgetDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ForgetDeviceSync(ForgetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ForgetDeviceAsync(ForgetDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmForgotPassword asynchronously, invoking a callback when done
-- @param ConfirmForgotPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmForgotPasswordAsync(ConfirmForgotPasswordRequest, cb)
	assert(ConfirmForgotPasswordRequest, "You must provide a ConfirmForgotPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmForgotPassword",
	}
	for header,value in pairs(ConfirmForgotPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmForgotPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmForgotPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmForgotPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ConfirmForgotPasswordSync(ConfirmForgotPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmForgotPasswordAsync(ConfirmForgotPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDisableProviderForUser asynchronously, invoking a callback when done
-- @param AdminDisableProviderForUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminDisableProviderForUserAsync(AdminDisableProviderForUserRequest, cb)
	assert(AdminDisableProviderForUserRequest, "You must provide a AdminDisableProviderForUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDisableProviderForUser",
	}
	for header,value in pairs(AdminDisableProviderForUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminDisableProviderForUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminDisableProviderForUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminDisableProviderForUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminDisableProviderForUserSync(AdminDisableProviderForUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDisableProviderForUserAsync(AdminDisableProviderForUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserPools asynchronously, invoking a callback when done
-- @param ListUserPoolsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUserPoolsAsync(ListUserPoolsRequest, cb)
	assert(ListUserPoolsRequest, "You must provide a ListUserPoolsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserPools",
	}
	for header,value in pairs(ListUserPoolsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUserPoolsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUserPools synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUserPoolsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUserPoolsSync(ListUserPoolsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserPoolsAsync(ListUserPoolsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminGetDevice asynchronously, invoking a callback when done
-- @param AdminGetDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminGetDeviceAsync(AdminGetDeviceRequest, cb)
	assert(AdminGetDeviceRequest, "You must provide a AdminGetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminGetDevice",
	}
	for header,value in pairs(AdminGetDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminGetDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminGetDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminGetDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminGetDeviceSync(AdminGetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminGetDeviceAsync(AdminGetDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGroup asynchronously, invoking a callback when done
-- @param UpdateGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGroupAsync(UpdateGroupRequest, cb)
	assert(UpdateGroupRequest, "You must provide a UpdateGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateGroup",
	}
	for header,value in pairs(UpdateGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGroupSync(UpdateGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupAsync(UpdateGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroup asynchronously, invoking a callback when done
-- @param GetGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGroupAsync(GetGroupRequest, cb)
	assert(GetGroupRequest, "You must provide a GetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetGroup",
	}
	for header,value in pairs(GetGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGroupSync(GetGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupAsync(GetGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminAddUserToGroup asynchronously, invoking a callback when done
-- @param AdminAddUserToGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminAddUserToGroupAsync(AdminAddUserToGroupRequest, cb)
	assert(AdminAddUserToGroupRequest, "You must provide a AdminAddUserToGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminAddUserToGroup",
	}
	for header,value in pairs(AdminAddUserToGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminAddUserToGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminAddUserToGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminAddUserToGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminAddUserToGroupSync(AdminAddUserToGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminAddUserToGroupAsync(AdminAddUserToGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateSoftwareToken asynchronously, invoking a callback when done
-- @param AssociateSoftwareTokenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateSoftwareTokenAsync(AssociateSoftwareTokenRequest, cb)
	assert(AssociateSoftwareTokenRequest, "You must provide a AssociateSoftwareTokenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AssociateSoftwareToken",
	}
	for header,value in pairs(AssociateSoftwareTokenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateSoftwareTokenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateSoftwareToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateSoftwareTokenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateSoftwareTokenSync(AssociateSoftwareTokenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateSoftwareTokenAsync(AssociateSoftwareTokenRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminListGroupsForUser asynchronously, invoking a callback when done
-- @param AdminListGroupsForUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminListGroupsForUserAsync(AdminListGroupsForUserRequest, cb)
	assert(AdminListGroupsForUserRequest, "You must provide a AdminListGroupsForUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListGroupsForUser",
	}
	for header,value in pairs(AdminListGroupsForUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminListGroupsForUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminListGroupsForUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminListGroupsForUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminListGroupsForUserSync(AdminListGroupsForUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminListGroupsForUserAsync(AdminListGroupsForUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserPoolClient asynchronously, invoking a callback when done
-- @param DescribeUserPoolClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserPoolClientAsync(DescribeUserPoolClientRequest, cb)
	assert(DescribeUserPoolClientRequest, "You must provide a DescribeUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPoolClient",
	}
	for header,value in pairs(DescribeUserPoolClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserPoolClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserPoolClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserPoolClientRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserPoolClientSync(DescribeUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserPoolClientAsync(DescribeUserPoolClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDevices asynchronously, invoking a callback when done
-- @param ListDevicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDevicesAsync(ListDevicesRequest, cb)
	assert(ListDevicesRequest, "You must provide a ListDevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListDevices",
	}
	for header,value in pairs(ListDevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDevicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDevicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDevicesSync(ListDevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDevicesAsync(ListDevicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondToAuthChallenge asynchronously, invoking a callback when done
-- @param RespondToAuthChallengeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RespondToAuthChallengeAsync(RespondToAuthChallengeRequest, cb)
	assert(RespondToAuthChallengeRequest, "You must provide a RespondToAuthChallengeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.RespondToAuthChallenge",
	}
	for header,value in pairs(RespondToAuthChallengeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RespondToAuthChallengeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RespondToAuthChallenge synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondToAuthChallengeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RespondToAuthChallengeSync(RespondToAuthChallengeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondToAuthChallengeAsync(RespondToAuthChallengeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserPoolClient asynchronously, invoking a callback when done
-- @param CreateUserPoolClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserPoolClientAsync(CreateUserPoolClientRequest, cb)
	assert(CreateUserPoolClientRequest, "You must provide a CreateUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPoolClient",
	}
	for header,value in pairs(CreateUserPoolClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserPoolClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserPoolClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserPoolClientRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserPoolClientSync(CreateUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserPoolClientAsync(CreateUserPoolClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserAttributes asynchronously, invoking a callback when done
-- @param DeleteUserAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserAttributesAsync(DeleteUserAttributesRequest, cb)
	assert(DeleteUserAttributesRequest, "You must provide a DeleteUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserAttributes",
	}
	for header,value in pairs(DeleteUserAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserAttributesSync(DeleteUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAttributesAsync(DeleteUserAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GlobalSignOut asynchronously, invoking a callback when done
-- @param GlobalSignOutRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GlobalSignOutAsync(GlobalSignOutRequest, cb)
	assert(GlobalSignOutRequest, "You must provide a GlobalSignOutRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GlobalSignOut",
	}
	for header,value in pairs(GlobalSignOutRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GlobalSignOutRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GlobalSignOut synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GlobalSignOutRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GlobalSignOutSync(GlobalSignOutRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GlobalSignOutAsync(GlobalSignOutRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmSignUp asynchronously, invoking a callback when done
-- @param ConfirmSignUpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmSignUpAsync(ConfirmSignUpRequest, cb)
	assert(ConfirmSignUpRequest, "You must provide a ConfirmSignUpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmSignUp",
	}
	for header,value in pairs(ConfirmSignUpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmSignUpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmSignUp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmSignUpRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ConfirmSignUpSync(ConfirmSignUpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmSignUpAsync(ConfirmSignUpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ForgotPassword asynchronously, invoking a callback when done
-- @param ForgotPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ForgotPasswordAsync(ForgotPasswordRequest, cb)
	assert(ForgotPasswordRequest, "You must provide a ForgotPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ForgotPassword",
	}
	for header,value in pairs(ForgotPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ForgotPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ForgotPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ForgotPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ForgotPasswordSync(ForgotPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ForgotPasswordAsync(ForgotPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminCreateUser asynchronously, invoking a callback when done
-- @param AdminCreateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminCreateUserAsync(AdminCreateUserRequest, cb)
	assert(AdminCreateUserRequest, "You must provide a AdminCreateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminCreateUser",
	}
	for header,value in pairs(AdminCreateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminCreateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminCreateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminCreateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminCreateUserSync(AdminCreateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminCreateUserAsync(AdminCreateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentityProvider asynchronously, invoking a callback when done
-- @param DeleteIdentityProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIdentityProviderAsync(DeleteIdentityProviderRequest, cb)
	assert(DeleteIdentityProviderRequest, "You must provide a DeleteIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteIdentityProvider",
	}
	for header,value in pairs(DeleteIdentityProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIdentityProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIdentityProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentityProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteIdentityProviderSync(DeleteIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityProviderAsync(DeleteIdentityProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGroup asynchronously, invoking a callback when done
-- @param CreateGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateGroupAsync(CreateGroupRequest, cb)
	assert(CreateGroupRequest, "You must provide a CreateGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateGroup",
	}
	for header,value in pairs(CreateGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateGroupSync(CreateGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupAsync(CreateGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPool asynchronously, invoking a callback when done
-- @param DeleteUserPoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserPoolAsync(DeleteUserPoolRequest, cb)
	assert(DeleteUserPoolRequest, "You must provide a DeleteUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPool",
	}
	for header,value in pairs(DeleteUserPoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserPoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserPoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserPoolSync(DeleteUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPoolAsync(DeleteUserPoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminListUserAuthEvents asynchronously, invoking a callback when done
-- @param AdminListUserAuthEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminListUserAuthEventsAsync(AdminListUserAuthEventsRequest, cb)
	assert(AdminListUserAuthEventsRequest, "You must provide a AdminListUserAuthEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListUserAuthEvents",
	}
	for header,value in pairs(AdminListUserAuthEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminListUserAuthEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminListUserAuthEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminListUserAuthEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminListUserAuthEventsSync(AdminListUserAuthEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminListUserAuthEventsAsync(AdminListUserAuthEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUserPoolMfaConfig asynchronously, invoking a callback when done
-- @param GetUserPoolMfaConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserPoolMfaConfigAsync(GetUserPoolMfaConfigRequest, cb)
	assert(GetUserPoolMfaConfigRequest, "You must provide a GetUserPoolMfaConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUserPoolMfaConfig",
	}
	for header,value in pairs(GetUserPoolMfaConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUserPoolMfaConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUserPoolMfaConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserPoolMfaConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserPoolMfaConfigSync(GetUserPoolMfaConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserPoolMfaConfigAsync(GetUserPoolMfaConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminLinkProviderForUser asynchronously, invoking a callback when done
-- @param AdminLinkProviderForUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminLinkProviderForUserAsync(AdminLinkProviderForUserRequest, cb)
	assert(AdminLinkProviderForUserRequest, "You must provide a AdminLinkProviderForUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminLinkProviderForUser",
	}
	for header,value in pairs(AdminLinkProviderForUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminLinkProviderForUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminLinkProviderForUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminLinkProviderForUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminLinkProviderForUserSync(AdminLinkProviderForUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminLinkProviderForUserAsync(AdminLinkProviderForUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGroup asynchronously, invoking a callback when done
-- @param DeleteGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGroupAsync(DeleteGroupRequest, cb)
	assert(DeleteGroupRequest, "You must provide a DeleteGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteGroup",
	}
	for header,value in pairs(DeleteGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGroupSync(DeleteGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGroupAsync(DeleteGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResendConfirmationCode asynchronously, invoking a callback when done
-- @param ResendConfirmationCodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResendConfirmationCodeAsync(ResendConfirmationCodeRequest, cb)
	assert(ResendConfirmationCodeRequest, "You must provide a ResendConfirmationCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ResendConfirmationCode",
	}
	for header,value in pairs(ResendConfirmationCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResendConfirmationCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResendConfirmationCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResendConfirmationCodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResendConfirmationCodeSync(ResendConfirmationCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResendConfirmationCodeAsync(ResendConfirmationCodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUserAttributeVerificationCode asynchronously, invoking a callback when done
-- @param GetUserAttributeVerificationCodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserAttributeVerificationCodeAsync(GetUserAttributeVerificationCodeRequest, cb)
	assert(GetUserAttributeVerificationCodeRequest, "You must provide a GetUserAttributeVerificationCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUserAttributeVerificationCode",
	}
	for header,value in pairs(GetUserAttributeVerificationCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUserAttributeVerificationCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUserAttributeVerificationCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserAttributeVerificationCodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserAttributeVerificationCodeSync(GetUserAttributeVerificationCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserAttributeVerificationCodeAsync(GetUserAttributeVerificationCodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPoolClient asynchronously, invoking a callback when done
-- @param DeleteUserPoolClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserPoolClientAsync(DeleteUserPoolClientRequest, cb)
	assert(DeleteUserPoolClientRequest, "You must provide a DeleteUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPoolClient",
	}
	for header,value in pairs(DeleteUserPoolClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserPoolClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserPoolClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserPoolClientRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserPoolClientSync(DeleteUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPoolClientAsync(DeleteUserPoolClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResourceServer asynchronously, invoking a callback when done
-- @param CreateResourceServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateResourceServerAsync(CreateResourceServerRequest, cb)
	assert(CreateResourceServerRequest, "You must provide a CreateResourceServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateResourceServer",
	}
	for header,value in pairs(CreateResourceServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateResourceServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateResourceServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateResourceServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateResourceServerSync(CreateResourceServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResourceServerAsync(CreateResourceServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCSVHeader asynchronously, invoking a callback when done
-- @param GetCSVHeaderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCSVHeaderAsync(GetCSVHeaderRequest, cb)
	assert(GetCSVHeaderRequest, "You must provide a GetCSVHeaderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetCSVHeader",
	}
	for header,value in pairs(GetCSVHeaderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCSVHeaderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCSVHeader synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCSVHeaderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCSVHeaderSync(GetCSVHeaderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCSVHeaderAsync(GetCSVHeaderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUpdateDeviceStatus asynchronously, invoking a callback when done
-- @param AdminUpdateDeviceStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminUpdateDeviceStatusAsync(AdminUpdateDeviceStatusRequest, cb)
	assert(AdminUpdateDeviceStatusRequest, "You must provide a AdminUpdateDeviceStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateDeviceStatus",
	}
	for header,value in pairs(AdminUpdateDeviceStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminUpdateDeviceStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminUpdateDeviceStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminUpdateDeviceStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminUpdateDeviceStatusSync(AdminUpdateDeviceStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUpdateDeviceStatusAsync(AdminUpdateDeviceStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserPoolClient asynchronously, invoking a callback when done
-- @param UpdateUserPoolClientRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserPoolClientAsync(UpdateUserPoolClientRequest, cb)
	assert(UpdateUserPoolClientRequest, "You must provide a UpdateUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserPoolClient",
	}
	for header,value in pairs(UpdateUserPoolClientRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserPoolClientRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserPoolClient synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserPoolClientRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserPoolClientSync(UpdateUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserPoolClientAsync(UpdateUserPoolClientRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResourceServer asynchronously, invoking a callback when done
-- @param DeleteResourceServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResourceServerAsync(DeleteResourceServerRequest, cb)
	assert(DeleteResourceServerRequest, "You must provide a DeleteResourceServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteResourceServer",
	}
	for header,value in pairs(DeleteResourceServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteResourceServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResourceServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResourceServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteResourceServerSync(DeleteResourceServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourceServerAsync(DeleteResourceServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminRemoveUserFromGroup asynchronously, invoking a callback when done
-- @param AdminRemoveUserFromGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminRemoveUserFromGroupAsync(AdminRemoveUserFromGroupRequest, cb)
	assert(AdminRemoveUserFromGroupRequest, "You must provide a AdminRemoveUserFromGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminRemoveUserFromGroup",
	}
	for header,value in pairs(AdminRemoveUserFromGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminRemoveUserFromGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminRemoveUserFromGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminRemoveUserFromGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminRemoveUserFromGroupSync(AdminRemoveUserFromGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminRemoveUserFromGroupAsync(AdminRemoveUserFromGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserPool asynchronously, invoking a callback when done
-- @param UpdateUserPoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserPoolAsync(UpdateUserPoolRequest, cb)
	assert(UpdateUserPoolRequest, "You must provide a UpdateUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserPool",
	}
	for header,value in pairs(UpdateUserPoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserPoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserPoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserPoolSync(UpdateUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserPoolAsync(UpdateUserPoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateResourceServer asynchronously, invoking a callback when done
-- @param UpdateResourceServerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateResourceServerAsync(UpdateResourceServerRequest, cb)
	assert(UpdateResourceServerRequest, "You must provide a UpdateResourceServerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateResourceServer",
	}
	for header,value in pairs(UpdateResourceServerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateResourceServerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateResourceServer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateResourceServerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateResourceServerSync(UpdateResourceServerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateResourceServerAsync(UpdateResourceServerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroups asynchronously, invoking a callback when done
-- @param ListGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGroupsAsync(ListGroupsRequest, cb)
	assert(ListGroupsRequest, "You must provide a ListGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListGroups",
	}
	for header,value in pairs(ListGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGroupsSync(ListGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupsAsync(ListGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserImportJobs asynchronously, invoking a callback when done
-- @param ListUserImportJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUserImportJobsAsync(ListUserImportJobsRequest, cb)
	assert(ListUserImportJobsRequest, "You must provide a ListUserImportJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserImportJobs",
	}
	for header,value in pairs(ListUserImportJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUserImportJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUserImportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUserImportJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUserImportJobsSync(ListUserImportJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserImportJobsAsync(ListUserImportJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUsers asynchronously, invoking a callback when done
-- @param ListUsersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUsersAsync(ListUsersRequest, cb)
	assert(ListUsersRequest, "You must provide a ListUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUsers",
	}
	for header,value in pairs(ListUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUsersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUsersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUsersSync(ListUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUsersAsync(ListUsersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserImportJob asynchronously, invoking a callback when done
-- @param DescribeUserImportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserImportJobAsync(DescribeUserImportJobRequest, cb)
	assert(DescribeUserImportJobRequest, "You must provide a DescribeUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserImportJob",
	}
	for header,value in pairs(DescribeUserImportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserImportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserImportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserImportJobSync(DescribeUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserImportJobAsync(DescribeUserImportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDeleteUserAttributes asynchronously, invoking a callback when done
-- @param AdminDeleteUserAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminDeleteUserAttributesAsync(AdminDeleteUserAttributesRequest, cb)
	assert(AdminDeleteUserAttributesRequest, "You must provide a AdminDeleteUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDeleteUserAttributes",
	}
	for header,value in pairs(AdminDeleteUserAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminDeleteUserAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminDeleteUserAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminDeleteUserAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminDeleteUserAttributesSync(AdminDeleteUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDeleteUserAttributesAsync(AdminDeleteUserAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminRespondToAuthChallenge asynchronously, invoking a callback when done
-- @param AdminRespondToAuthChallengeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminRespondToAuthChallengeAsync(AdminRespondToAuthChallengeRequest, cb)
	assert(AdminRespondToAuthChallengeRequest, "You must provide a AdminRespondToAuthChallengeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminRespondToAuthChallenge",
	}
	for header,value in pairs(AdminRespondToAuthChallengeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminRespondToAuthChallengeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminRespondToAuthChallenge synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminRespondToAuthChallengeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminRespondToAuthChallengeSync(AdminRespondToAuthChallengeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminRespondToAuthChallengeAsync(AdminRespondToAuthChallengeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIdentityProvider asynchronously, invoking a callback when done
-- @param CreateIdentityProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateIdentityProviderAsync(CreateIdentityProviderRequest, cb)
	assert(CreateIdentityProviderRequest, "You must provide a CreateIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateIdentityProvider",
	}
	for header,value in pairs(CreateIdentityProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateIdentityProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateIdentityProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateIdentityProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateIdentityProviderSync(CreateIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIdentityProviderAsync(CreateIdentityProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityProviderByIdentifier asynchronously, invoking a callback when done
-- @param GetIdentityProviderByIdentifierRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityProviderByIdentifierAsync(GetIdentityProviderByIdentifierRequest, cb)
	assert(GetIdentityProviderByIdentifierRequest, "You must provide a GetIdentityProviderByIdentifierRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetIdentityProviderByIdentifier",
	}
	for header,value in pairs(GetIdentityProviderByIdentifierRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityProviderByIdentifierRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityProviderByIdentifier synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityProviderByIdentifierRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityProviderByIdentifierSync(GetIdentityProviderByIdentifierRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityProviderByIdentifierAsync(GetIdentityProviderByIdentifierRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserPool asynchronously, invoking a callback when done
-- @param CreateUserPoolRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserPoolAsync(CreateUserPoolRequest, cb)
	assert(CreateUserPoolRequest, "You must provide a CreateUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPool",
	}
	for header,value in pairs(CreateUserPoolRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserPoolRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserPoolRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserPoolSync(CreateUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserPoolAsync(CreateUserPoolRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifySoftwareToken asynchronously, invoking a callback when done
-- @param VerifySoftwareTokenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifySoftwareTokenAsync(VerifySoftwareTokenRequest, cb)
	assert(VerifySoftwareTokenRequest, "You must provide a VerifySoftwareTokenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.VerifySoftwareToken",
	}
	for header,value in pairs(VerifySoftwareTokenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifySoftwareTokenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifySoftwareToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifySoftwareTokenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.VerifySoftwareTokenSync(VerifySoftwareTokenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifySoftwareTokenAsync(VerifySoftwareTokenRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserAttributes asynchronously, invoking a callback when done
-- @param UpdateUserAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserAttributesAsync(UpdateUserAttributesRequest, cb)
	assert(UpdateUserAttributesRequest, "You must provide a UpdateUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserAttributes",
	}
	for header,value in pairs(UpdateUserAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserAttributesSync(UpdateUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserAttributesAsync(UpdateUserAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserPoolDomain asynchronously, invoking a callback when done
-- @param DescribeUserPoolDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserPoolDomainAsync(DescribeUserPoolDomainRequest, cb)
	assert(DescribeUserPoolDomainRequest, "You must provide a DescribeUserPoolDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPoolDomain",
	}
	for header,value in pairs(DescribeUserPoolDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserPoolDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserPoolDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserPoolDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserPoolDomainSync(DescribeUserPoolDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserPoolDomainAsync(DescribeUserPoolDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminResetUserPassword asynchronously, invoking a callback when done
-- @param AdminResetUserPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminResetUserPasswordAsync(AdminResetUserPasswordRequest, cb)
	assert(AdminResetUserPasswordRequest, "You must provide a AdminResetUserPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminResetUserPassword",
	}
	for header,value in pairs(AdminResetUserPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminResetUserPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminResetUserPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminResetUserPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminResetUserPasswordSync(AdminResetUserPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminResetUserPasswordAsync(AdminResetUserPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminConfirmSignUp asynchronously, invoking a callback when done
-- @param AdminConfirmSignUpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminConfirmSignUpAsync(AdminConfirmSignUpRequest, cb)
	assert(AdminConfirmSignUpRequest, "You must provide a AdminConfirmSignUpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminConfirmSignUp",
	}
	for header,value in pairs(AdminConfirmSignUpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminConfirmSignUpRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminConfirmSignUp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminConfirmSignUpRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminConfirmSignUpSync(AdminConfirmSignUpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminConfirmSignUpAsync(AdminConfirmSignUpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopUserImportJob asynchronously, invoking a callback when done
-- @param StopUserImportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopUserImportJobAsync(StopUserImportJobRequest, cb)
	assert(StopUserImportJobRequest, "You must provide a StopUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.StopUserImportJob",
	}
	for header,value in pairs(StopUserImportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopUserImportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopUserImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopUserImportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopUserImportJobSync(StopUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopUserImportJobAsync(StopUserImportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmDevice asynchronously, invoking a callback when done
-- @param ConfirmDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmDeviceAsync(ConfirmDeviceRequest, cb)
	assert(ConfirmDeviceRequest, "You must provide a ConfirmDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmDevice",
	}
	for header,value in pairs(ConfirmDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ConfirmDeviceSync(ConfirmDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmDeviceAsync(ConfirmDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAuthEventFeedback asynchronously, invoking a callback when done
-- @param UpdateAuthEventFeedbackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAuthEventFeedbackAsync(UpdateAuthEventFeedbackRequest, cb)
	assert(UpdateAuthEventFeedbackRequest, "You must provide a UpdateAuthEventFeedbackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateAuthEventFeedback",
	}
	for header,value in pairs(UpdateAuthEventFeedbackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAuthEventFeedbackRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAuthEventFeedback synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAuthEventFeedbackRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAuthEventFeedbackSync(UpdateAuthEventFeedbackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAuthEventFeedbackAsync(UpdateAuthEventFeedbackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUsersInGroup asynchronously, invoking a callback when done
-- @param ListUsersInGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUsersInGroupAsync(ListUsersInGroupRequest, cb)
	assert(ListUsersInGroupRequest, "You must provide a ListUsersInGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUsersInGroup",
	}
	for header,value in pairs(ListUsersInGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUsersInGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUsersInGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUsersInGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUsersInGroupSync(ListUsersInGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUsersInGroupAsync(ListUsersInGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminEnableUser asynchronously, invoking a callback when done
-- @param AdminEnableUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminEnableUserAsync(AdminEnableUserRequest, cb)
	assert(AdminEnableUserRequest, "You must provide a AdminEnableUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminEnableUser",
	}
	for header,value in pairs(AdminEnableUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminEnableUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminEnableUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminEnableUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminEnableUserSync(AdminEnableUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminEnableUserAsync(AdminEnableUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddCustomAttributes asynchronously, invoking a callback when done
-- @param AddCustomAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddCustomAttributesAsync(AddCustomAttributesRequest, cb)
	assert(AddCustomAttributesRequest, "You must provide a AddCustomAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AddCustomAttributes",
	}
	for header,value in pairs(AddCustomAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddCustomAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddCustomAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddCustomAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddCustomAttributesSync(AddCustomAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddCustomAttributesAsync(AddCustomAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartUserImportJob asynchronously, invoking a callback when done
-- @param StartUserImportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartUserImportJobAsync(StartUserImportJobRequest, cb)
	assert(StartUserImportJobRequest, "You must provide a StartUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.StartUserImportJob",
	}
	for header,value in pairs(StartUserImportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartUserImportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartUserImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartUserImportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartUserImportJobSync(StartUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartUserImportJobAsync(StartUserImportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminGetUser asynchronously, invoking a callback when done
-- @param AdminGetUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AdminGetUserAsync(AdminGetUserRequest, cb)
	assert(AdminGetUserRequest, "You must provide a AdminGetUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminGetUser",
	}
	for header,value in pairs(AdminGetUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AdminGetUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AdminGetUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AdminGetUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AdminGetUserSync(AdminGetUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminGetUserAsync(AdminGetUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetUserPoolMfaConfig asynchronously, invoking a callback when done
-- @param SetUserPoolMfaConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetUserPoolMfaConfigAsync(SetUserPoolMfaConfigRequest, cb)
	assert(SetUserPoolMfaConfigRequest, "You must provide a SetUserPoolMfaConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetUserPoolMfaConfig",
	}
	for header,value in pairs(SetUserPoolMfaConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetUserPoolMfaConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetUserPoolMfaConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetUserPoolMfaConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetUserPoolMfaConfigSync(SetUserPoolMfaConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetUserPoolMfaConfigAsync(SetUserPoolMfaConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevice asynchronously, invoking a callback when done
-- @param GetDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeviceAsync(GetDeviceRequest, cb)
	assert(GetDeviceRequest, "You must provide a GetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetDevice",
	}
	for header,value in pairs(GetDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeviceSync(GetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceAsync(GetDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserImportJob asynchronously, invoking a callback when done
-- @param CreateUserImportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserImportJobAsync(CreateUserImportJobRequest, cb)
	assert(CreateUserImportJobRequest, "You must provide a CreateUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserImportJob",
	}
	for header,value in pairs(CreateUserImportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserImportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserImportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserImportJobSync(CreateUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserImportJobAsync(CreateUserImportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetUserMFAPreference asynchronously, invoking a callback when done
-- @param SetUserMFAPreferenceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetUserMFAPreferenceAsync(SetUserMFAPreferenceRequest, cb)
	assert(SetUserMFAPreferenceRequest, "You must provide a SetUserMFAPreferenceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetUserMFAPreference",
	}
	for header,value in pairs(SetUserMFAPreferenceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetUserMFAPreferenceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetUserMFAPreference synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetUserMFAPreferenceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetUserMFAPreferenceSync(SetUserMFAPreferenceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetUserMFAPreferenceAsync(SetUserMFAPreferenceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetUserSettings asynchronously, invoking a callback when done
-- @param SetUserSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetUserSettingsAsync(SetUserSettingsRequest, cb)
	assert(SetUserSettingsRequest, "You must provide a SetUserSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetUserSettings",
	}
	for header,value in pairs(SetUserSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetUserSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetUserSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetUserSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetUserSettingsSync(SetUserSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetUserSettingsAsync(SetUserSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserPoolDomain asynchronously, invoking a callback when done
-- @param CreateUserPoolDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserPoolDomainAsync(CreateUserPoolDomainRequest, cb)
	assert(CreateUserPoolDomainRequest, "You must provide a CreateUserPoolDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPoolDomain",
	}
	for header,value in pairs(CreateUserPoolDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserPoolDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserPoolDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserPoolDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserPoolDomainSync(CreateUserPoolDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserPoolDomainAsync(CreateUserPoolDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSigningCertificate asynchronously, invoking a callback when done
-- @param GetSigningCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSigningCertificateAsync(GetSigningCertificateRequest, cb)
	assert(GetSigningCertificateRequest, "You must provide a GetSigningCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetSigningCertificate",
	}
	for header,value in pairs(GetSigningCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSigningCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSigningCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSigningCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSigningCertificateSync(GetSigningCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSigningCertificateAsync(GetSigningCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
