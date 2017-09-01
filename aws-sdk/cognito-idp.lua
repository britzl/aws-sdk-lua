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
	assert(args, "You must provdide an argument table when creating AdminUserGlobalSignOutRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminUserGlobalSignOutRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminResetUserPasswordRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminResetUserPasswordRequest(t)
	return t
end

keys.GetUserResponse = { ["Username"] = true, ["MFAOptions"] = true, ["UserAttributes"] = true, nil }

function asserts.AssertGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserResponse to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserResponse[k], "GetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserResponse
-- <p>Represents the response from the server from the request to get information about the user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user you wish to retrieve from the get user request.</p>
-- * MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- Required key: Username
-- Required key: UserAttributes
-- @return GetUserResponse structure as a key-value pair table
function M.GetUserResponse(args)
	assert(args, "You must provdide an argument table when creating GetUserResponse")
	local t = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["UserAttributes"] = args["UserAttributes"],
	}
	asserts.AssertGetUserResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListIdentityProvidersResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Providers"] = args["Providers"],
	}
	asserts.AssertListIdentityProvidersResponse(t)
	return t
end

keys.InitiateAuthRequest = { ["ClientMetadata"] = true, ["AuthParameters"] = true, ["ClientId"] = true, ["AuthFlow"] = true, nil }

function asserts.AssertInitiateAuthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateAuthRequest to be of type 'table'")
	assert(struct["AuthFlow"], "Expected key AuthFlow to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["ClientMetadata"] then asserts.AssertClientMetadataType(struct["ClientMetadata"]) end
	if struct["AuthParameters"] then asserts.AssertAuthParametersType(struct["AuthParameters"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["AuthFlow"] then asserts.AssertAuthFlowType(struct["AuthFlow"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateAuthRequest[k], "InitiateAuthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateAuthRequest
-- <p>Initiates the authentication request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientMetadata [ClientMetadataType] <p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>
-- * AuthParameters [AuthParametersType] <p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRPA</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>REFRESH_TOKEN</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * AuthFlow [AuthFlowType] <p>The authentication flow for this call to execute. The API action will depend on this value. For example: </p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in USERNAME and SRPA and return the SRP variables to be used for next challenge execution.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> </ul> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>
-- Required key: AuthFlow
-- Required key: ClientId
-- @return InitiateAuthRequest structure as a key-value pair table
function M.InitiateAuthRequest(args)
	assert(args, "You must provdide an argument table when creating InitiateAuthRequest")
	local t = { 
		["ClientMetadata"] = args["ClientMetadata"],
		["AuthParameters"] = args["AuthParameters"],
		["ClientId"] = args["ClientId"],
		["AuthFlow"] = args["AuthFlow"],
	}
	asserts.AssertInitiateAuthRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserPoolDomainRequest")
	local t = { 
		["Domain"] = args["Domain"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteUserPoolDomainRequest(t)
	return t
end

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
	assert(args, "You must provdide an argument table when creating GetIdentityProviderByIdentifierRequest")
	local t = { 
		["IdpIdentifier"] = args["IdpIdentifier"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetIdentityProviderByIdentifierRequest(t)
	return t
end

keys.CreateUserPoolDomainResponse = { nil }

function asserts.AssertCreateUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateUserPoolDomainResponse[k], "CreateUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolDomainResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateUserPoolDomainResponse structure as a key-value pair table
function M.CreateUserPoolDomainResponse(args)
	assert(args, "You must provdide an argument table when creating CreateUserPoolDomainResponse")
	local t = { 
	}
	asserts.AssertCreateUserPoolDomainResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateUserImportJobResponse")
	local t = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertCreateUserImportJobResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating IdentityProviderType")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
		["ProviderName"] = args["ProviderName"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ProviderType"] = args["ProviderType"],
		["ProviderDetails"] = args["ProviderDetails"],
		["IdpIdentifiers"] = args["IdpIdentifiers"],
		["AttributeMapping"] = args["AttributeMapping"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertIdentityProviderType(t)
	return t
end

keys.ResendConfirmationCodeRequest = { ["Username"] = true, ["SecretHash"] = true, ["ClientId"] = true, nil }

function asserts.AssertResendConfirmationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendConfirmationCodeRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
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
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required key: ClientId
-- Required key: Username
-- @return ResendConfirmationCodeRequest structure as a key-value pair table
function M.ResendConfirmationCodeRequest(args)
	assert(args, "You must provdide an argument table when creating ResendConfirmationCodeRequest")
	local t = { 
		["Username"] = args["Username"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertResendConfirmationCodeRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminGetUserRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminGetUserRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateUserAttributesResponse")
	local t = { 
		["CodeDeliveryDetailsList"] = args["CodeDeliveryDetailsList"],
	}
	asserts.AssertUpdateUserAttributesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserPoolClientsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUserPoolClientsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UserType")
	local t = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["Enabled"] = args["Enabled"],
		["UserStatus"] = args["UserStatus"],
		["UserCreateDate"] = args["UserCreateDate"],
		["UserLastModifiedDate"] = args["UserLastModifiedDate"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertUserType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserImportJobsRequest")
	local t = { 
		["PaginationToken"] = args["PaginationToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUserImportJobsRequest(t)
	return t
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
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete the client.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- @return DeleteUserPoolClientRequest structure as a key-value pair table
function M.DeleteUserPoolClientRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteUserPoolClientRequest")
	local t = { 
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteUserPoolClientRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListDevicesRequest")
	local t = { 
		["PaginationToken"] = args["PaginationToken"],
		["Limit"] = args["Limit"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertListDevicesRequest(t)
	return t
end

keys.UserPoolClientType = { ["ClientSecret"] = true, ["CallbackURLs"] = true, ["AllowedOAuthScopes"] = true, ["UserPoolId"] = true, ["AllowedOAuthFlowsUserPoolClient"] = true, ["LastModifiedDate"] = true, ["ClientId"] = true, ["DefaultRedirectURI"] = true, ["AllowedOAuthFlows"] = true, ["ExplicitAuthFlows"] = true, ["LogoutURLs"] = true, ["WriteAttributes"] = true, ["SupportedIdentityProviders"] = true, ["ReadAttributes"] = true, ["RefreshTokenValidity"] = true, ["CreationDate"] = true, ["ClientName"] = true, nil }

function asserts.AssertUserPoolClientType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolClientType to be of type 'table'")
	if struct["ClientSecret"] then asserts.AssertClientSecretType(struct["ClientSecret"]) end
	if struct["CallbackURLs"] then asserts.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["AllowedOAuthScopes"] then asserts.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then asserts.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
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
-- <p>A user pool of the client type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientSecret [ClientSecretType] <p>The client secret from the user pool request of the client type.</p>
-- * CallbackURLs [CallbackURLsListType] <p>A list of allowed callback URLs for the identity providers.</p>
-- * AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool client.</p>
-- * AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- * LastModifiedDate [DateType] <p>The date the user pool client was last modified.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
-- * AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- * ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>The explicit authentication flows.</p>
-- * LogoutURLs [LogoutURLsListType] <p>A list ofallowed logout URLs for the identity providers.</p>
-- * WriteAttributes [ClientPermissionListType] <p>The writeable attributes.</p>
-- * SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- * ReadAttributes [ClientPermissionListType] <p>The Read-only attributes.</p>
-- * RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- * CreationDate [DateType] <p>The date the user pool client was created.</p>
-- * ClientName [ClientNameType] <p>The client name from the user pool request of the client type.</p>
-- @return UserPoolClientType structure as a key-value pair table
function M.UserPoolClientType(args)
	assert(args, "You must provdide an argument table when creating UserPoolClientType")
	local t = { 
		["ClientSecret"] = args["ClientSecret"],
		["CallbackURLs"] = args["CallbackURLs"],
		["AllowedOAuthScopes"] = args["AllowedOAuthScopes"],
		["UserPoolId"] = args["UserPoolId"],
		["AllowedOAuthFlowsUserPoolClient"] = args["AllowedOAuthFlowsUserPoolClient"],
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
	asserts.AssertUserPoolClientType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminDeleteUserAttributesRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserAttributeNames"] = args["UserAttributeNames"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDeleteUserAttributesRequest(t)
	return t
end

keys.TooManyFailedAttemptsException = { ["message"] = true, nil }

function asserts.AssertTooManyFailedAttemptsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyFailedAttemptsException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyFailedAttemptsException[k], "TooManyFailedAttemptsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyFailedAttemptsException
-- <p>This exception is thrown when the user has made too many failed attempts for a given action (e.g., sign in).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service returns a too many failed attempts exception.</p>
-- @return TooManyFailedAttemptsException structure as a key-value pair table
function M.TooManyFailedAttemptsException(args)
	assert(args, "You must provdide an argument table when creating TooManyFailedAttemptsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyFailedAttemptsException(t)
	return t
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
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than <code>Username</code>. However, any attributes that you specify as required (in <a href="API_CreateUserPool.html">CreateUserPool</a> or in the <b>Attributes</b> tab of the console) must be supplied either by you (in your call to <code>AdminCreateUser</code>) or by the user (when he or she signs up in response to your welcome message).</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>To send a message inviting the user to sign up, you must specify the user's email address or phone number. This can be done in your call to AdminCreateUser or in the <b>Users</b> tab of the Amazon Cognito console for managing your user pools.</p> <p>In your call to <code>AdminCreateUser</code>, you can set the <code>email_verified</code> attribute to <code>True</code>, and you can set the <code>phone_number_verified</code> attribute to <code>True</code>. (You can also do this by calling <a href="API_AdminUpdateUserAttributes.html">AdminUpdateUserAttributes</a>.)</p> <ul> <li> <p> <b>email</b>: The email address of the user to whom the message that contains the code and username will be sent. Required if the <code>email_verified</code> attribute is set to <code>True</code>, or if <code>"EMAIL"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> <li> <p> <b>phone_number</b>: The phone number of the user to whom the message that contains the code and username will be sent. Required if the <code>phone_number_verified</code> attribute is set to <code>True</code>, or if <code>"SMS"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> </ul>
-- * ForceAliasCreation [ForceAliasCreation] <p>This parameter is only used if the <code>phone_number_verified</code> or <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is ignored.</p> <p>If this parameter is set to <code>True</code> and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias.</p> <p>If this parameter is set to <code>False</code>, the API throws an <code>AliasExistsException</code> error if the alias already exists. The default value is <code>False</code>.</p>
-- * TemporaryPassword [PasswordType] <p>The user's temporary password. This password must conform to the password policy that you specified when you created the user pool.</p> <p>The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins.</p> <p>This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you.</p> <p>The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the <code>MessageAction</code> parameter.</p>
-- * DesiredDeliveryMediums [DeliveryMediumListType] <p>Specify <code>"EMAIL"</code> if email will be used to send the welcome message. Specify <code>"SMS"</code> if the phone number will be used. The default value is <code>"SMS"</code>. More than one value can be specified.</p>
-- Required key: UserPoolId
-- Required key: Username
-- @return AdminCreateUserRequest structure as a key-value pair table
function M.AdminCreateUserRequest(args)
	assert(args, "You must provdide an argument table when creating AdminCreateUserRequest")
	local t = { 
		["Username"] = args["Username"],
		["MessageAction"] = args["MessageAction"],
		["UserPoolId"] = args["UserPoolId"],
		["ValidationData"] = args["ValidationData"],
		["UserAttributes"] = args["UserAttributes"],
		["ForceAliasCreation"] = args["ForceAliasCreation"],
		["TemporaryPassword"] = args["TemporaryPassword"],
		["DesiredDeliveryMediums"] = args["DesiredDeliveryMediums"],
	}
	asserts.AssertAdminCreateUserRequest(t)
	return t
end

keys.InvalidPasswordException = { ["message"] = true, nil }

function asserts.AssertInvalidPasswordException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPasswordException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPasswordException[k], "InvalidPasswordException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPasswordException
-- <p>This exception is thrown when the Amazon Cognito service encounters an invalid password.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service throws an invalid user password exception.</p>
-- @return InvalidPasswordException structure as a key-value pair table
function M.InvalidPasswordException(args)
	assert(args, "You must provdide an argument table when creating InvalidPasswordException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidPasswordException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserPoolDomainResponse")
	local t = { 
	}
	asserts.AssertDeleteUserPoolDomainResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateGroupResponse")
	local t = { 
		["Group"] = args["Group"],
	}
	asserts.AssertUpdateGroupResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateGroupRequest")
	local t = { 
		["GroupName"] = args["GroupName"],
		["RoleArn"] = args["RoleArn"],
		["Precedence"] = args["Precedence"],
		["Description"] = args["Description"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertCreateGroupRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetGroupRequest")
	local t = { 
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetGroupRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUsersResponse")
	local t = { 
		["PaginationToken"] = args["PaginationToken"],
		["Users"] = args["Users"],
	}
	asserts.AssertListUsersResponse(t)
	return t
end

keys.NotAuthorizedException = { ["message"] = true, nil }

function asserts.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>This exception is thrown when a user is not authorized.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service returns a not authorized exception.</p>
-- @return NotAuthorizedException structure as a key-value pair table
function M.NotAuthorizedException(args)
	assert(args, "You must provdide an argument table when creating NotAuthorizedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotAuthorizedException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UserPoolClientDescription")
	local t = { 
		["ClientName"] = args["ClientName"],
		["UserPoolId"] = args["UserPoolId"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertUserPoolClientDescription(t)
	return t
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
	assert(args, "You must provdide an argument table when creating StartUserImportJobRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartUserImportJobRequest(t)
	return t
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
-- <p>The type of constraints associated with an attribute of the string type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinLength [StringType] <p>The minimum length of an attribute value of the string type.</p>
-- * MaxLength [StringType] <p>The maximum length of an attribute value of the string type.</p>
-- @return StringAttributeConstraintsType structure as a key-value pair table
function M.StringAttributeConstraintsType(args)
	assert(args, "You must provdide an argument table when creating StringAttributeConstraintsType")
	local t = { 
		["MinLength"] = args["MinLength"],
		["MaxLength"] = args["MaxLength"],
	}
	asserts.AssertStringAttributeConstraintsType(t)
	return t
end

keys.UnexpectedLambdaException = { ["message"] = true, nil }

function asserts.AssertUnexpectedLambdaException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnexpectedLambdaException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnexpectedLambdaException[k], "UnexpectedLambdaException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnexpectedLambdaException
-- <p>This exception is thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service returns an unexpected AWS Lambda exception.</p>
-- @return UnexpectedLambdaException structure as a key-value pair table
function M.UnexpectedLambdaException(args)
	assert(args, "You must provdide an argument table when creating UnexpectedLambdaException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnexpectedLambdaException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminListGroupsForUserResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertAdminListGroupsForUserResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateUserAttributesRequest")
	local t = { 
		["UserAttributes"] = args["UserAttributes"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertUpdateUserAttributesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateUserPoolClientResponse")
	local t = { 
		["UserPoolClient"] = args["UserPoolClient"],
	}
	asserts.AssertUpdateUserPoolClientResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SignUpResponse")
	local t = { 
		["UserConfirmed"] = args["UserConfirmed"],
		["UserSub"] = args["UserSub"],
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertSignUpResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateDeviceStatusRequest")
	local t = { 
		["DeviceKey"] = args["DeviceKey"],
		["DeviceRememberedStatus"] = args["DeviceRememberedStatus"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertUpdateDeviceStatusRequest(t)
	return t
end

keys.AliasExistsException = { ["message"] = true, nil }

function asserts.AssertAliasExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasExistsException[k], "AliasExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasExistsException
-- <p>This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message sent to the user when an alias exists.</p>
-- @return AliasExistsException structure as a key-value pair table
function M.AliasExistsException(args)
	assert(args, "You must provdide an argument table when creating AliasExistsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertAliasExistsException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminListDevicesResponse")
	local t = { 
		["PaginationToken"] = args["PaginationToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertAdminListDevicesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GroupType")
	local t = { 
		["Description"] = args["Description"],
		["Precedence"] = args["Precedence"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["RoleArn"] = args["RoleArn"],
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertGroupType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteIdentityProviderRequest")
	local t = { 
		["ProviderName"] = args["ProviderName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteIdentityProviderRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetGroupResponse")
	local t = { 
		["Group"] = args["Group"],
	}
	asserts.AssertGetGroupResponse(t)
	return t
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
-- <p>The type of policy in a user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PasswordPolicy [PasswordPolicyType] <p>A container for information about the user pool password policy.</p>
-- @return UserPoolPolicyType structure as a key-value pair table
function M.UserPoolPolicyType(args)
	assert(args, "You must provdide an argument table when creating UserPoolPolicyType")
	local t = { 
		["PasswordPolicy"] = args["PasswordPolicy"],
	}
	asserts.AssertUserPoolPolicyType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserRequest")
	local t = { 
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertDeleteUserRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserPoolClientsResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["UserPoolClients"] = args["UserPoolClients"],
	}
	asserts.AssertListUserPoolClientsResponse(t)
	return t
end

keys.GroupExistsException = { ["message"] = true, nil }

function asserts.AssertGroupExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupExistsException[k], "GroupExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupExistsException
-- <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] 
-- @return GroupExistsException structure as a key-value pair table
function M.GroupExistsException(args)
	assert(args, "You must provdide an argument table when creating GroupExistsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertGroupExistsException(t)
	return t
end

keys.UserImportInProgressException = { ["message"] = true, nil }

function asserts.AssertUserImportInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserImportInProgressException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserImportInProgressException[k], "UserImportInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserImportInProgressException
-- <p>This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the user pool has an import job running.</p>
-- @return UserImportInProgressException structure as a key-value pair table
function M.UserImportInProgressException(args)
	assert(args, "You must provdide an argument table when creating UserImportInProgressException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUserImportInProgressException(t)
	return t
end

keys.UsernameExistsException = { ["message"] = true, nil }

function asserts.AssertUsernameExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsernameExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsernameExistsException[k], "UsernameExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsernameExistsException
-- <p>This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when Amazon Cognito throws a user name exists exception.</p>
-- @return UsernameExistsException structure as a key-value pair table
function M.UsernameExistsException(args)
	assert(args, "You must provdide an argument table when creating UsernameExistsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUsernameExistsException(t)
	return t
end

keys.UnsupportedIdentityProviderException = { ["message"] = true, nil }

function asserts.AssertUnsupportedIdentityProviderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedIdentityProviderException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedIdentityProviderException[k], "UnsupportedIdentityProviderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedIdentityProviderException
-- <p>This exception is thrown when the specified identifier is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] 
-- @return UnsupportedIdentityProviderException structure as a key-value pair table
function M.UnsupportedIdentityProviderException(args)
	assert(args, "You must provdide an argument table when creating UnsupportedIdentityProviderException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedIdentityProviderException(t)
	return t
end

keys.InternalErrorException = { ["message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when Amazon Cognito throws an internal error exception.</p>
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provdide an argument table when creating InternalErrorException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalErrorException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminUpdateUserAttributesRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserAttributes"] = args["UserAttributes"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminUpdateUserAttributesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminDeleteUserRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDeleteUserRequest(t)
	return t
end

keys.ScopeDoesNotExistException = { ["message"] = true, nil }

function asserts.AssertScopeDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScopeDoesNotExistException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScopeDoesNotExistException[k], "ScopeDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScopeDoesNotExistException
-- <p>This exception is thrown when the specified scope does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] 
-- @return ScopeDoesNotExistException structure as a key-value pair table
function M.ScopeDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating ScopeDoesNotExistException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertScopeDoesNotExistException(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>This exception is thrown when a user exceeds the limit for a requested AWS resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when Amazon Cognito throws a limit exceeded exception.</p>
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateUserPoolClientResponse")
	local t = { 
		["UserPoolClient"] = args["UserPoolClient"],
	}
	asserts.AssertCreateUserPoolClientResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateIdentityProviderResponse")
	local t = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertCreateIdentityProviderResponse(t)
	return t
end

keys.DomainDescriptionType = { ["Status"] = true, ["Domain"] = true, ["UserPoolId"] = true, ["CloudFrontDistribution"] = true, ["S3Bucket"] = true, ["Version"] = true, ["AWSAccountId"] = true, nil }

function asserts.AssertDomainDescriptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDescriptionType to be of type 'table'")
	if struct["Status"] then asserts.AssertDomainStatusType(struct["Status"]) end
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["CloudFrontDistribution"] then asserts.AssertArnType(struct["CloudFrontDistribution"]) end
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
-- * CloudFrontDistribution [ArnType] <p>The ARN of the CloudFront distribution.</p>
-- * S3Bucket [S3BucketType] <p>The S3 bucket where the static files for this domain are stored.</p>
-- * Version [DomainVersionType] <p>The app version.</p>
-- * AWSAccountId [AWSAccountIdType] <p>The AWS account ID for the user pool owner.</p>
-- @return DomainDescriptionType structure as a key-value pair table
function M.DomainDescriptionType(args)
	assert(args, "You must provdide an argument table when creating DomainDescriptionType")
	local t = { 
		["Status"] = args["Status"],
		["Domain"] = args["Domain"],
		["UserPoolId"] = args["UserPoolId"],
		["CloudFrontDistribution"] = args["CloudFrontDistribution"],
		["S3Bucket"] = args["S3Bucket"],
		["Version"] = args["Version"],
		["AWSAccountId"] = args["AWSAccountId"],
	}
	asserts.AssertDomainDescriptionType(t)
	return t
end

keys.ConcurrentModificationException = { ["message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>This exception is thrown if two or more modifications are happening concurrently.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message provided when the concurrent exception is thrown.</p>
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provdide an argument table when creating ConcurrentModificationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.ConfirmSignUpRequest = { ["Username"] = true, ["ForceAliasCreation"] = true, ["ConfirmationCode"] = true, ["SecretHash"] = true, ["ClientId"] = true, nil }

function asserts.AssertConfirmSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSignUpRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["ConfirmationCode"], "Expected key ConfirmationCode to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["ForceAliasCreation"] then asserts.AssertForceAliasCreation(struct["ForceAliasCreation"]) end
	if struct["ConfirmationCode"] then asserts.AssertConfirmationCodeType(struct["ConfirmationCode"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmSignUpRequest[k], "ConfirmSignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSignUpRequest
-- <p>Represents the request to confirm registration of a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user whose registration you wish to confirm.</p>
-- * ForceAliasCreation [ForceAliasCreation] <p>Boolean to be specified to force user confirmation irrespective of existing alias. By default set to <code>False</code>. If this parameter is set to <code>True</code> and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to <code>False</code>, the API will throw an <b>AliasExistsException</b> error.</p>
-- * ConfirmationCode [ConfirmationCodeType] <p>The confirmation code sent by a user's request to confirm registration.</p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required key: ClientId
-- Required key: Username
-- Required key: ConfirmationCode
-- @return ConfirmSignUpRequest structure as a key-value pair table
function M.ConfirmSignUpRequest(args)
	assert(args, "You must provdide an argument table when creating ConfirmSignUpRequest")
	local t = { 
		["Username"] = args["Username"],
		["ForceAliasCreation"] = args["ForceAliasCreation"],
		["ConfirmationCode"] = args["ConfirmationCode"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertConfirmSignUpRequest(t)
	return t
end

keys.UserNotConfirmedException = { ["message"] = true, nil }

function asserts.AssertUserNotConfirmedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserNotConfirmedException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserNotConfirmedException[k], "UserNotConfirmedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserNotConfirmedException
-- <p>This exception is thrown when a user is not confirmed successfully.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when a user is not confirmed successfully.</p>
-- @return UserNotConfirmedException structure as a key-value pair table
function M.UserNotConfirmedException(args)
	assert(args, "You must provdide an argument table when creating UserNotConfirmedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUserNotConfirmedException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating StartUserImportJobResponse")
	local t = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertStartUserImportJobResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PasswordPolicyType")
	local t = { 
		["RequireLowercase"] = args["RequireLowercase"],
		["RequireSymbols"] = args["RequireSymbols"],
		["RequireNumbers"] = args["RequireNumbers"],
		["MinimumLength"] = args["MinimumLength"],
		["RequireUppercase"] = args["RequireUppercase"],
	}
	asserts.AssertPasswordPolicyType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateUserImportJobRequest")
	local t = { 
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["UserPoolId"] = args["UserPoolId"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertCreateUserImportJobRequest(t)
	return t
end

keys.CreateUserPoolDomainRequest = { ["Domain"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertCreateUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Domain"] then asserts.AssertDomainType(struct["Domain"]) end
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
-- * UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required key: Domain
-- Required key: UserPoolId
-- @return CreateUserPoolDomainRequest structure as a key-value pair table
function M.CreateUserPoolDomainRequest(args)
	assert(args, "You must provdide an argument table when creating CreateUserPoolDomainRequest")
	local t = { 
		["Domain"] = args["Domain"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertCreateUserPoolDomainRequest(t)
	return t
end

keys.InvalidEmailRoleAccessPolicyException = { ["message"] = true, nil }

function asserts.AssertInvalidEmailRoleAccessPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEmailRoleAccessPolicyException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidEmailRoleAccessPolicyException[k], "InvalidEmailRoleAccessPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEmailRoleAccessPolicyException
-- <p>This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when you have an unverified email address or the identity policy is not set on an email address that Amazon Cognito can access.</p>
-- @return InvalidEmailRoleAccessPolicyException structure as a key-value pair table
function M.InvalidEmailRoleAccessPolicyException(args)
	assert(args, "You must provdide an argument table when creating InvalidEmailRoleAccessPolicyException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidEmailRoleAccessPolicyException(t)
	return t
end

keys.UpdateUserPoolClientRequest = { ["CallbackURLs"] = true, ["AllowedOAuthScopes"] = true, ["UserPoolId"] = true, ["AllowedOAuthFlowsUserPoolClient"] = true, ["ClientId"] = true, ["DefaultRedirectURI"] = true, ["AllowedOAuthFlows"] = true, ["ExplicitAuthFlows"] = true, ["LogoutURLs"] = true, ["WriteAttributes"] = true, ["SupportedIdentityProviders"] = true, ["ReadAttributes"] = true, ["RefreshTokenValidity"] = true, ["ClientName"] = true, nil }

function asserts.AssertUpdateUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["CallbackURLs"] then asserts.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["AllowedOAuthScopes"] then asserts.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then asserts.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
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
-- * CallbackURLs [CallbackURLsListType] <p>A list of allowed callback URLs for the identity providers.</p>
-- * AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to update the user pool client.</p>
-- * AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
-- * AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- * ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>Explicit authentication flows.</p>
-- * LogoutURLs [LogoutURLsListType] <p>A list ofallowed logout URLs for the identity providers.</p>
-- * WriteAttributes [ClientPermissionListType] <p>The writeable attributes of the user pool.</p>
-- * SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- * ReadAttributes [ClientPermissionListType] <p>The read-only attributes of the user pool.</p>
-- * RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- * ClientName [ClientNameType] <p>The client name from the update user pool client request.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- @return UpdateUserPoolClientRequest structure as a key-value pair table
function M.UpdateUserPoolClientRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateUserPoolClientRequest")
	local t = { 
		["CallbackURLs"] = args["CallbackURLs"],
		["AllowedOAuthScopes"] = args["AllowedOAuthScopes"],
		["UserPoolId"] = args["UserPoolId"],
		["AllowedOAuthFlowsUserPoolClient"] = args["AllowedOAuthFlowsUserPoolClient"],
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
	asserts.AssertUpdateUserPoolClientRequest(t)
	return t
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
-- * PreviousPassword [PasswordType] <p>The old password in the change password request.</p>
-- * ProposedPassword [PasswordType] <p>The new password in the change password request.</p>
-- * AccessToken [TokenModelType] <p>The access token in the change password request.</p>
-- Required key: PreviousPassword
-- Required key: ProposedPassword
-- Required key: AccessToken
-- @return ChangePasswordRequest structure as a key-value pair table
function M.ChangePasswordRequest(args)
	assert(args, "You must provdide an argument table when creating ChangePasswordRequest")
	local t = { 
		["PreviousPassword"] = args["PreviousPassword"],
		["ProposedPassword"] = args["ProposedPassword"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertChangePasswordRequest(t)
	return t
end

keys.CodeDeliveryFailureException = { ["message"] = true, nil }

function asserts.AssertCodeDeliveryFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeDeliveryFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeDeliveryFailureException[k], "CodeDeliveryFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeDeliveryFailureException
-- <p>This exception is thrown when a verification code fails to deliver successfully.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message sent when a verification code fails to deliver successfully.</p>
-- @return CodeDeliveryFailureException structure as a key-value pair table
function M.CodeDeliveryFailureException(args)
	assert(args, "You must provdide an argument table when creating CodeDeliveryFailureException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertCodeDeliveryFailureException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating MFAOptionType")
	local t = { 
		["DeliveryMedium"] = args["DeliveryMedium"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertMFAOptionType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListGroupsResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertListGroupsResponse(t)
	return t
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
-- * Precedence [PrecedenceType] <p>The new precedence value for the group. For more information about this parameter, see <a href="API_CreateGroup.html">CreateGroup</a>.</p>
-- * Description [DescriptionType] <p>A string containing the new description of the group.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required key: GroupName
-- Required key: UserPoolId
-- @return UpdateGroupRequest structure as a key-value pair table
function M.UpdateGroupRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateGroupRequest")
	local t = { 
		["GroupName"] = args["GroupName"],
		["RoleArn"] = args["RoleArn"],
		["Precedence"] = args["Precedence"],
		["Description"] = args["Description"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertUpdateGroupRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminUserGlobalSignOutResponse")
	local t = { 
	}
	asserts.AssertAdminUserGlobalSignOutResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserAttributesResponse")
	local t = { 
	}
	asserts.AssertDeleteUserAttributesResponse(t)
	return t
end

keys.CodeMismatchException = { ["message"] = true, nil }

function asserts.AssertCodeMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeMismatchException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeMismatchException[k], "CodeMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeMismatchException
-- <p>This exception is thrown if the provided code does not match what the server was expecting.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message provided when the code mismatch exception is thrown.</p>
-- @return CodeMismatchException structure as a key-value pair table
function M.CodeMismatchException(args)
	assert(args, "You must provdide an argument table when creating CodeMismatchException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertCodeMismatchException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ForgetDeviceRequest")
	local t = { 
		["DeviceKey"] = args["DeviceKey"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertForgetDeviceRequest(t)
	return t
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
-- * ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see <a href="API_InitiateAuth.html">InitiateAuth</a>.</p>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. For more information, see <a href="API_InitiateAuth.html">InitiateAuth</a>.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the <a href="API_InitiateAuth.html">InitiateAuth</a> or <a href="API_RespondToAuthChallenge.html">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- @return RespondToAuthChallengeResponse structure as a key-value pair table
function M.RespondToAuthChallengeResponse(args)
	assert(args, "You must provdide an argument table when creating RespondToAuthChallengeResponse")
	local t = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertRespondToAuthChallengeResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateIdentityProviderResponse")
	local t = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertUpdateIdentityProviderResponse(t)
	return t
end

keys.ForgotPasswordRequest = { ["Username"] = true, ["SecretHash"] = true, ["ClientId"] = true, nil }

function asserts.AssertForgotPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgotPasswordRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
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
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required key: ClientId
-- Required key: Username
-- @return ForgotPasswordRequest structure as a key-value pair table
function M.ForgotPasswordRequest(args)
	assert(args, "You must provdide an argument table when creating ForgotPasswordRequest")
	local t = { 
		["Username"] = args["Username"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertForgotPasswordRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeIdentityProviderResponse")
	local t = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertDescribeIdentityProviderResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SetUserSettingsRequest")
	local t = { 
		["MFAOptions"] = args["MFAOptions"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertSetUserSettingsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminConfirmSignUpRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminConfirmSignUpRequest(t)
	return t
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
-- * ReplyToEmailAddress [EmailAddressType] <p>The REPLY-TO email address.</p>
-- * SourceArn [ArnType] <p>The Amazon Resource Name (ARN) of the email source.</p>
-- @return EmailConfigurationType structure as a key-value pair table
function M.EmailConfigurationType(args)
	assert(args, "You must provdide an argument table when creating EmailConfigurationType")
	local t = { 
		["ReplyToEmailAddress"] = args["ReplyToEmailAddress"],
		["SourceArn"] = args["SourceArn"],
	}
	asserts.AssertEmailConfigurationType(t)
	return t
end

keys.AdminRespondToAuthChallengeRequest = { ["ChallengeResponses"] = true, ["ChallengeName"] = true, ["ClientId"] = true, ["UserPoolId"] = true, ["Session"] = true, nil }

function asserts.AssertAdminRespondToAuthChallengeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRespondToAuthChallengeRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ChallengeName"], "Expected key ChallengeName to exist in table")
	if struct["ChallengeResponses"] then asserts.AssertChallengeResponsesType(struct["ChallengeResponses"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminRespondToAuthChallengeRequest[k], "AdminRespondToAuthChallengeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRespondToAuthChallengeRequest
-- <p>The request to respond to the authentication challenge, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChallengeResponses [ChallengeResponsesType] <p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul> <p>The value of the <code>USERNAME</code> attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the <code>AdminInitiateAuth</code> response includes the actual username value in the <code>USERNAMEUSER_ID_FOR_SRP</code> attribute, even if you specified an alias in your call to <code>AdminInitiateAuth</code>.</p>
-- * ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see <a href="API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * UserPoolId [UserPoolIdType] <p>The ID of the Amazon Cognito user pool.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- Required key: ChallengeName
-- @return AdminRespondToAuthChallengeRequest structure as a key-value pair table
function M.AdminRespondToAuthChallengeRequest(args)
	assert(args, "You must provdide an argument table when creating AdminRespondToAuthChallengeRequest")
	local t = { 
		["ChallengeResponses"] = args["ChallengeResponses"],
		["ChallengeName"] = args["ChallengeName"],
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
		["Session"] = args["Session"],
	}
	asserts.AssertAdminRespondToAuthChallengeRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateIdentityProviderRequest")
	local t = { 
		["ProviderDetails"] = args["ProviderDetails"],
		["IdpIdentifiers"] = args["IdpIdentifiers"],
		["AttributeMapping"] = args["AttributeMapping"],
		["ProviderName"] = args["ProviderName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertUpdateIdentityProviderRequest(t)
	return t
end

keys.AdminGetUserResponse = { ["Username"] = true, ["MFAOptions"] = true, ["Enabled"] = true, ["UserStatus"] = true, ["UserCreateDate"] = true, ["UserAttributes"] = true, ["UserLastModifiedDate"] = true, nil }

function asserts.AssertAdminGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetUserResponse to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then asserts.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["UserStatus"] then asserts.AssertUserStatusType(struct["UserStatus"]) end
	if struct["UserCreateDate"] then asserts.AssertDateType(struct["UserCreateDate"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["UserLastModifiedDate"] then asserts.AssertDateType(struct["UserLastModifiedDate"]) end
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
-- * UserCreateDate [DateType] <p>The date the user was created.</p>
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p>
-- * UserLastModifiedDate [DateType] <p>The date the user was last modified.</p>
-- Required key: Username
-- @return AdminGetUserResponse structure as a key-value pair table
function M.AdminGetUserResponse(args)
	assert(args, "You must provdide an argument table when creating AdminGetUserResponse")
	local t = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["Enabled"] = args["Enabled"],
		["UserStatus"] = args["UserStatus"],
		["UserCreateDate"] = args["UserCreateDate"],
		["UserAttributes"] = args["UserAttributes"],
		["UserLastModifiedDate"] = args["UserLastModifiedDate"],
	}
	asserts.AssertAdminGetUserResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserPoolResponse")
	local t = { 
		["UserPool"] = args["UserPool"],
	}
	asserts.AssertDescribeUserPoolResponse(t)
	return t
end

keys.InvalidLambdaResponseException = { ["message"] = true, nil }

function asserts.AssertInvalidLambdaResponseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaResponseException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLambdaResponseException[k], "InvalidLambdaResponseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaResponseException
-- <p>This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service throws an invalid AWS Lambda response exception.</p>
-- @return InvalidLambdaResponseException structure as a key-value pair table
function M.InvalidLambdaResponseException(args)
	assert(args, "You must provdide an argument table when creating InvalidLambdaResponseException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidLambdaResponseException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminUpdateDeviceStatusRequest")
	local t = { 
		["Username"] = args["Username"],
		["DeviceKey"] = args["DeviceKey"],
		["DeviceRememberedStatus"] = args["DeviceRememberedStatus"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminUpdateDeviceStatusRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminGetDeviceRequest")
	local t = { 
		["Username"] = args["Username"],
		["DeviceKey"] = args["DeviceKey"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminGetDeviceRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetDeviceRequest")
	local t = { 
		["DeviceKey"] = args["DeviceKey"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGetDeviceRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SetUserSettingsResponse")
	local t = { 
	}
	asserts.AssertSetUserSettingsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetUserRequest")
	local t = { 
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGetUserRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GlobalSignOutResponse")
	local t = { 
	}
	asserts.AssertGlobalSignOutResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ConfirmForgotPasswordResponse")
	local t = { 
	}
	asserts.AssertConfirmForgotPasswordResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetCSVHeaderRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetCSVHeaderRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserPoolDomainRequest")
	local t = { 
		["Domain"] = args["Domain"],
	}
	asserts.AssertDescribeUserPoolDomainRequest(t)
	return t
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
-- <p>The type of code delivery details being returned from the server.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [AttributeNameType] <p>The name of the attribute in the code delivery details type.</p>
-- * Destination [StringType] <p>The destination for the code delivery details.</p>
-- * DeliveryMedium [DeliveryMediumType] <p>The delivery medium (email message or phone number).</p>
-- @return CodeDeliveryDetailsType structure as a key-value pair table
function M.CodeDeliveryDetailsType(args)
	assert(args, "You must provdide an argument table when creating CodeDeliveryDetailsType")
	local t = { 
		["AttributeName"] = args["AttributeName"],
		["Destination"] = args["Destination"],
		["DeliveryMedium"] = args["DeliveryMedium"],
	}
	asserts.AssertCodeDeliveryDetailsType(t)
	return t
end

keys.UserNotFoundException = { ["message"] = true, nil }

function asserts.AssertUserNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserNotFoundException[k], "UserNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserNotFoundException
-- <p>This exception is thrown when a user is not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when a user is not found.</p>
-- @return UserNotFoundException structure as a key-value pair table
function M.UserNotFoundException(args)
	assert(args, "You must provdide an argument table when creating UserNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUserNotFoundException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListDevicesResponse")
	local t = { 
		["PaginationToken"] = args["PaginationToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertListDevicesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetIdentityProviderByIdentifierResponse")
	local t = { 
		["IdentityProvider"] = args["IdentityProvider"],
	}
	asserts.AssertGetIdentityProviderByIdentifierResponse(t)
	return t
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
-- * ChallengeName [ChallengeNameType] <p>The name of the challenge. For more information, see <a href="API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. For more information, see <a href="API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the <a href="API_InitiateAuth.html">InitiateAuth</a> or <a href="API_RespondToAuthChallenge.html">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- @return AdminRespondToAuthChallengeResponse structure as a key-value pair table
function M.AdminRespondToAuthChallengeResponse(args)
	assert(args, "You must provdide an argument table when creating AdminRespondToAuthChallengeResponse")
	local t = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertAdminRespondToAuthChallengeResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateUserPoolResponse")
	local t = { 
	}
	asserts.AssertUpdateUserPoolResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserImportJobsResponse")
	local t = { 
		["UserImportJobs"] = args["UserImportJobs"],
		["PaginationToken"] = args["PaginationToken"],
	}
	asserts.AssertListUserImportJobsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserPoolsResponse")
	local t = { 
		["UserPools"] = args["UserPools"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListUserPoolsResponse(t)
	return t
end

keys.UserPoolType = { ["AliasAttributes"] = true, ["SchemaAttributes"] = true, ["EmailVerificationSubject"] = true, ["MfaConfiguration"] = true, ["SmsAuthenticationMessage"] = true, ["SmsConfiguration"] = true, ["AutoVerifiedAttributes"] = true, ["LambdaConfig"] = true, ["Status"] = true, ["LastModifiedDate"] = true, ["AdminCreateUserConfig"] = true, ["EmailConfiguration"] = true, ["SmsConfigurationFailure"] = true, ["Name"] = true, ["EmailConfigurationFailure"] = true, ["Policies"] = true, ["UserPoolTags"] = true, ["DeviceConfiguration"] = true, ["SmsVerificationMessage"] = true, ["EmailVerificationMessage"] = true, ["CreationDate"] = true, ["EstimatedNumberOfUsers"] = true, ["Id"] = true, nil }

function asserts.AssertUserPoolType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolType to be of type 'table'")
	if struct["AliasAttributes"] then asserts.AssertAliasAttributesListType(struct["AliasAttributes"]) end
	if struct["SchemaAttributes"] then asserts.AssertSchemaAttributesListType(struct["SchemaAttributes"]) end
	if struct["EmailVerificationSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["SmsAuthenticationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["SmsConfiguration"] then asserts.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then asserts.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["LambdaConfig"] then asserts.AssertLambdaConfigType(struct["LambdaConfig"]) end
	if struct["Status"] then asserts.AssertStatusType(struct["Status"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["AdminCreateUserConfig"] then asserts.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["EmailConfiguration"] then asserts.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["SmsConfigurationFailure"] then asserts.AssertStringType(struct["SmsConfigurationFailure"]) end
	if struct["Name"] then asserts.AssertUserPoolNameType(struct["Name"]) end
	if struct["EmailConfigurationFailure"] then asserts.AssertStringType(struct["EmailConfigurationFailure"]) end
	if struct["Policies"] then asserts.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then asserts.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["DeviceConfiguration"] then asserts.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["SmsVerificationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["EstimatedNumberOfUsers"] then asserts.AssertIntegerType(struct["EstimatedNumberOfUsers"]) end
	if struct["Id"] then asserts.AssertUserPoolIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolType[k], "UserPoolType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolType
-- <p>A container for information about the user pool type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AliasAttributes [AliasAttributesListType] <p>Specifies the attributes that are aliased in a user pool.</p>
-- * SchemaAttributes [SchemaAttributesListType] <p>A container with the schema attributes of a user pool.</p>
-- * EmailVerificationSubject [EmailVerificationSubjectType] <p>The subject of the email verification message.</p>
-- * MfaConfiguration [UserPoolMfaType] <p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>
-- * SmsAuthenticationMessage [SmsVerificationMessageType] <p>The contents of the SMS authentication message.</p>
-- * SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- * AutoVerifiedAttributes [VerifiedAttributesListType] <p>Specifies the attributes that are auto-verified in a user pool.</p>
-- * LambdaConfig [LambdaConfigType] <p>A container for the AWS Lambda triggers associated with a user pool.</p>
-- * Status [StatusType] <p>The status of a user pool.</p>
-- * LastModifiedDate [DateType] <p>The date the user pool was last modified.</p>
-- * AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- * EmailConfiguration [EmailConfigurationType] <p>The email configuration.</p>
-- * SmsConfigurationFailure [StringType] <p>The reason why the SMS configuration cannot send the messages to your users.</p>
-- * Name [UserPoolNameType] <p>The name of the user pool.</p>
-- * EmailConfigurationFailure [StringType] <p>The reason why the email configuration cannot send the messages to your users.</p>
-- * Policies [UserPoolPolicyType] <p>A container for the policies associated with a user pool.</p>
-- * UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- * DeviceConfiguration [DeviceConfigurationType] <p>The device configuration.</p>
-- * SmsVerificationMessage [SmsVerificationMessageType] <p>The contents of the SMS verification message.</p>
-- * EmailVerificationMessage [EmailVerificationMessageType] <p>The contents of the email verification message.</p>
-- * CreationDate [DateType] <p>The date the user pool was created.</p>
-- * EstimatedNumberOfUsers [IntegerType] <p>A number estimating the size of the user pool.</p>
-- * Id [UserPoolIdType] <p>The ID of the user pool.</p>
-- @return UserPoolType structure as a key-value pair table
function M.UserPoolType(args)
	assert(args, "You must provdide an argument table when creating UserPoolType")
	local t = { 
		["AliasAttributes"] = args["AliasAttributes"],
		["SchemaAttributes"] = args["SchemaAttributes"],
		["EmailVerificationSubject"] = args["EmailVerificationSubject"],
		["MfaConfiguration"] = args["MfaConfiguration"],
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["SmsConfiguration"] = args["SmsConfiguration"],
		["AutoVerifiedAttributes"] = args["AutoVerifiedAttributes"],
		["LambdaConfig"] = args["LambdaConfig"],
		["Status"] = args["Status"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["AdminCreateUserConfig"] = args["AdminCreateUserConfig"],
		["EmailConfiguration"] = args["EmailConfiguration"],
		["SmsConfigurationFailure"] = args["SmsConfigurationFailure"],
		["Name"] = args["Name"],
		["EmailConfigurationFailure"] = args["EmailConfigurationFailure"],
		["Policies"] = args["Policies"],
		["UserPoolTags"] = args["UserPoolTags"],
		["DeviceConfiguration"] = args["DeviceConfiguration"],
		["SmsVerificationMessage"] = args["SmsVerificationMessage"],
		["EmailVerificationMessage"] = args["EmailVerificationMessage"],
		["CreationDate"] = args["CreationDate"],
		["EstimatedNumberOfUsers"] = args["EstimatedNumberOfUsers"],
		["Id"] = args["Id"],
	}
	asserts.AssertUserPoolType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminForgetDeviceRequest")
	local t = { 
		["Username"] = args["Username"],
		["DeviceKey"] = args["DeviceKey"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminForgetDeviceRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeIdentityProviderRequest")
	local t = { 
		["ProviderName"] = args["ProviderName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeIdentityProviderRequest(t)
	return t
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
-- * Mutable [BooleanType] <p>Specifies whether the attribute can be changed once it has been created.</p>
-- @return SchemaAttributeType structure as a key-value pair table
function M.SchemaAttributeType(args)
	assert(args, "You must provdide an argument table when creating SchemaAttributeType")
	local t = { 
		["Name"] = args["Name"],
		["NumberAttributeConstraints"] = args["NumberAttributeConstraints"],
		["StringAttributeConstraints"] = args["StringAttributeConstraints"],
		["DeveloperOnlyAttribute"] = args["DeveloperOnlyAttribute"],
		["Required"] = args["Required"],
		["AttributeDataType"] = args["AttributeDataType"],
		["Mutable"] = args["Mutable"],
	}
	asserts.AssertSchemaAttributeType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminSetUserSettingsRequest")
	local t = { 
		["Username"] = args["Username"],
		["MFAOptions"] = args["MFAOptions"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminSetUserSettingsRequest(t)
	return t
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
-- * User [UserType] <p>The user returned in the request to create a new user.</p>
-- @return AdminCreateUserResponse structure as a key-value pair table
function M.AdminCreateUserResponse(args)
	assert(args, "You must provdide an argument table when creating AdminCreateUserResponse")
	local t = { 
		["User"] = args["User"],
	}
	asserts.AssertAdminCreateUserResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AddCustomAttributesResponse")
	local t = { 
	}
	asserts.AssertAddCustomAttributesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateUserPoolResponse")
	local t = { 
		["UserPool"] = args["UserPool"],
	}
	asserts.AssertCreateUserPoolResponse(t)
	return t
end

keys.InvalidUserPoolConfigurationException = { ["message"] = true, nil }

function asserts.AssertInvalidUserPoolConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUserPoolConfigurationException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidUserPoolConfigurationException[k], "InvalidUserPoolConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUserPoolConfigurationException
-- <p>This exception is thrown when the user pool configuration is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the user pool configuration is invalid.</p>
-- @return InvalidUserPoolConfigurationException structure as a key-value pair table
function M.InvalidUserPoolConfigurationException(args)
	assert(args, "You must provdide an argument table when creating InvalidUserPoolConfigurationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidUserPoolConfigurationException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserPoolRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteUserPoolRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating NewDeviceMetadataType")
	local t = { 
		["DeviceKey"] = args["DeviceKey"],
		["DeviceGroupKey"] = args["DeviceGroupKey"],
	}
	asserts.AssertNewDeviceMetadataType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserPoolsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListUserPoolsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminEnableUserRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminEnableUserRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetUserAttributeVerificationCodeResponse")
	local t = { 
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertGetUserAttributeVerificationCodeResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserPoolDomainResponse")
	local t = { 
		["DomainDescription"] = args["DomainDescription"],
	}
	asserts.AssertDescribeUserPoolDomainResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeviceSecretVerifierConfigType")
	local t = { 
		["Salt"] = args["Salt"],
		["PasswordVerifier"] = args["PasswordVerifier"],
	}
	asserts.AssertDeviceSecretVerifierConfigType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AttributeType")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertAttributeType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ConfirmDeviceRequest")
	local t = { 
		["DeviceSecretVerifierConfig"] = args["DeviceSecretVerifierConfig"],
		["DeviceName"] = args["DeviceName"],
		["DeviceKey"] = args["DeviceKey"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertConfirmDeviceRequest(t)
	return t
end

keys.DuplicateProviderException = { ["message"] = true, nil }

function asserts.AssertDuplicateProviderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateProviderException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateProviderException[k], "DuplicateProviderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateProviderException
-- <p>This exception is thrown when the provider is already supported by the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] 
-- @return DuplicateProviderException structure as a key-value pair table
function M.DuplicateProviderException(args)
	assert(args, "You must provdide an argument table when creating DuplicateProviderException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDuplicateProviderException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListIdentityProvidersRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListIdentityProvidersRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GlobalSignOutRequest")
	local t = { 
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGlobalSignOutRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UserImportJobType")
	local t = { 
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
	asserts.AssertUserImportJobType(t)
	return t
end

keys.UnsupportedUserStateException = { ["message"] = true, nil }

function asserts.AssertUnsupportedUserStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedUserStateException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedUserStateException[k], "UnsupportedUserStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedUserStateException
-- <p>The request failed because the user is in an unsupported state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the user is in an unsupported state.</p>
-- @return UnsupportedUserStateException structure as a key-value pair table
function M.UnsupportedUserStateException(args)
	assert(args, "You must provdide an argument table when creating UnsupportedUserStateException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedUserStateException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AddCustomAttributesRequest")
	local t = { 
		["CustomAttributes"] = args["CustomAttributes"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAddCustomAttributesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminGetDeviceResponse")
	local t = { 
		["Device"] = args["Device"],
	}
	asserts.AssertAdminGetDeviceResponse(t)
	return t
end

keys.CreateUserPoolRequest = { ["AliasAttributes"] = true, ["SmsVerificationMessage"] = true, ["EmailVerificationSubject"] = true, ["MfaConfiguration"] = true, ["Schema"] = true, ["EmailVerificationMessage"] = true, ["PoolName"] = true, ["SmsAuthenticationMessage"] = true, ["SmsConfiguration"] = true, ["EmailConfiguration"] = true, ["AutoVerifiedAttributes"] = true, ["Policies"] = true, ["UserPoolTags"] = true, ["AdminCreateUserConfig"] = true, ["DeviceConfiguration"] = true, ["LambdaConfig"] = true, nil }

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
	if struct["SmsConfiguration"] then asserts.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["EmailConfiguration"] then asserts.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then asserts.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["Policies"] then asserts.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then asserts.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["AdminCreateUserConfig"] then asserts.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
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
-- * SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- * EmailConfiguration [EmailConfigurationType] <p>The email configuration.</p>
-- * AutoVerifiedAttributes [VerifiedAttributesListType] <p>The attributes to be auto-verified. Possible values: <b>email</b>, <b>phone_number</b>.</p>
-- * Policies [UserPoolPolicyType] <p>The policies associated with the new user pool.</p>
-- * UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- * AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- * DeviceConfiguration [DeviceConfigurationType] <p>The device configuration.</p>
-- * LambdaConfig [LambdaConfigType] <p>The Lambda trigger configuration information for the new user pool.</p>
-- Required key: PoolName
-- @return CreateUserPoolRequest structure as a key-value pair table
function M.CreateUserPoolRequest(args)
	assert(args, "You must provdide an argument table when creating CreateUserPoolRequest")
	local t = { 
		["AliasAttributes"] = args["AliasAttributes"],
		["SmsVerificationMessage"] = args["SmsVerificationMessage"],
		["EmailVerificationSubject"] = args["EmailVerificationSubject"],
		["MfaConfiguration"] = args["MfaConfiguration"],
		["Schema"] = args["Schema"],
		["EmailVerificationMessage"] = args["EmailVerificationMessage"],
		["PoolName"] = args["PoolName"],
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["SmsConfiguration"] = args["SmsConfiguration"],
		["EmailConfiguration"] = args["EmailConfiguration"],
		["AutoVerifiedAttributes"] = args["AutoVerifiedAttributes"],
		["Policies"] = args["Policies"],
		["UserPoolTags"] = args["UserPoolTags"],
		["AdminCreateUserConfig"] = args["AdminCreateUserConfig"],
		["DeviceConfiguration"] = args["DeviceConfiguration"],
		["LambdaConfig"] = args["LambdaConfig"],
	}
	asserts.AssertCreateUserPoolRequest(t)
	return t
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
-- <p>The type of configuration for creating a new user profile.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InviteMessageTemplate [MessageTemplateType] <p>The message template to be used for the welcome message to new users.</p>
-- * UnusedAccountValidityDays [AdminCreateUserUnusedAccountValidityDaysType] <p>The user account expiration limit, in days, after which the account is no longer usable. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the <code>MessageAction</code> parameter. The default value for this parameter is 7.</p>
-- * AllowAdminCreateUserOnly [BooleanType] <p>Set to <code>True</code> if only the administrator is allowed to create user profiles. Set to <code>False</code> if users can sign themselves up via an app.</p>
-- @return AdminCreateUserConfigType structure as a key-value pair table
function M.AdminCreateUserConfigType(args)
	assert(args, "You must provdide an argument table when creating AdminCreateUserConfigType")
	local t = { 
		["InviteMessageTemplate"] = args["InviteMessageTemplate"],
		["UnusedAccountValidityDays"] = args["UnusedAccountValidityDays"],
		["AllowAdminCreateUserOnly"] = args["AllowAdminCreateUserOnly"],
	}
	asserts.AssertAdminCreateUserConfigType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating VerifyUserAttributeResponse")
	local t = { 
	}
	asserts.AssertVerifyUserAttributeResponse(t)
	return t
end

keys.ConfirmForgotPasswordRequest = { ["Username"] = true, ["Password"] = true, ["ConfirmationCode"] = true, ["SecretHash"] = true, ["ClientId"] = true, nil }

function asserts.AssertConfirmForgotPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmForgotPasswordRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["ConfirmationCode"], "Expected key ConfirmationCode to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["Password"] then asserts.AssertPasswordType(struct["Password"]) end
	if struct["ConfirmationCode"] then asserts.AssertConfirmationCodeType(struct["ConfirmationCode"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmForgotPasswordRequest[k], "ConfirmForgotPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmForgotPasswordRequest
-- <p>The request representing the confirmation for a password reset.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The user name of the user for whom you want to enter a code to retrieve a forgotten password.</p>
-- * Password [PasswordType] <p>The password sent by a user's request to retrieve a forgotten password.</p>
-- * ConfirmationCode [ConfirmationCodeType] <p>The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see <a href="API_ForgotPassword.html">ForgotPassword</a> </p>
-- * SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required key: ClientId
-- Required key: Username
-- Required key: ConfirmationCode
-- Required key: Password
-- @return ConfirmForgotPasswordRequest structure as a key-value pair table
function M.ConfirmForgotPasswordRequest(args)
	assert(args, "You must provdide an argument table when creating ConfirmForgotPasswordRequest")
	local t = { 
		["Username"] = args["Username"],
		["Password"] = args["Password"],
		["ConfirmationCode"] = args["ConfirmationCode"],
		["SecretHash"] = args["SecretHash"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertConfirmForgotPasswordRequest(t)
	return t
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
-- * Filter [UserFilterType] <p>A filter string of the form "<i>AttributeName</i> <i>Filter-Type</i> "<i>AttributeValue</i>"". Quotation marks within the filter string must be escaped using the backslash (\) character. For example, "<code>family_name</code> = \"Reddy\"".</p> <ul> <li> <p> <i>AttributeName</i>: The name of the attribute to search for. You can only search for one attribute at a time.</p> </li> <li> <p> <i>Filter-Type</i>: For an exact match, use =, for example, "<code>given_name</code> = \"Jon\"". For a prefix ("starts with") match, use ^=, for example, "<code>given_name</code> ^= \"Jon\"". </p> </li> <li> <p> <i>AttributeValue</i>: The attribute value that must be matched for each user.</p> </li> </ul> <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user pool.</p> <p>You can only search for the following standard attributes:</p> <ul> <li> <p> <code>username</code> (case-sensitive)</p> </li> <li> <p> <code>email</code> </p> </li> <li> <p> <code>phone_number</code> </p> </li> <li> <p> <code>name</code> </p> </li> <li> <p> <code>given_name</code> </p> </li> <li> <p> <code>family_name</code> </p> </li> <li> <p> <code>preferred_username</code> </p> </li> <li> <p> <code>cognito:user_status</code> (called <b>Enabled</b> in the Console) (case-sensitive)</p> </li> <li> <p> <code>status</code> (case-insensitive)</p> </li> </ul> <p>Custom attributes are not searchable.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
-- * AttributesToGet [SearchedAttributeNamesListType] <p>An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is empty, all attributes are returned.</p>
-- * Limit [QueryLimitType] <p>Maximum number of users to be returned.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool on which the search should be performed.</p>
-- Required key: UserPoolId
-- @return ListUsersRequest structure as a key-value pair table
function M.ListUsersRequest(args)
	assert(args, "You must provdide an argument table when creating ListUsersRequest")
	local t = { 
		["PaginationToken"] = args["PaginationToken"],
		["Filter"] = args["Filter"],
		["AttributesToGet"] = args["AttributesToGet"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUsersRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ConfirmSignUpResponse")
	local t = { 
	}
	asserts.AssertConfirmSignUpResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserPoolClientResponse")
	local t = { 
		["UserPoolClient"] = args["UserPoolClient"],
	}
	asserts.AssertDescribeUserPoolClientResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminConfirmSignUpResponse")
	local t = { 
	}
	asserts.AssertAdminConfirmSignUpResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetUserAttributeVerificationCodeRequest")
	local t = { 
		["AttributeName"] = args["AttributeName"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertGetUserAttributeVerificationCodeRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating MessageTemplateType")
	local t = { 
		["EmailMessage"] = args["EmailMessage"],
		["EmailSubject"] = args["EmailSubject"],
		["SMSMessage"] = args["SMSMessage"],
	}
	asserts.AssertMessageTemplateType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ConfirmDeviceResponse")
	local t = { 
		["UserConfirmationNecessary"] = args["UserConfirmationNecessary"],
	}
	asserts.AssertConfirmDeviceResponse(t)
	return t
end

keys.AdminInitiateAuthRequest = { ["ClientMetadata"] = true, ["AuthParameters"] = true, ["AuthFlow"] = true, ["ClientId"] = true, ["UserPoolId"] = true, nil }

function asserts.AssertAdminInitiateAuthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminInitiateAuthRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["AuthFlow"], "Expected key AuthFlow to exist in table")
	if struct["ClientMetadata"] then asserts.AssertClientMetadataType(struct["ClientMetadata"]) end
	if struct["AuthParameters"] then asserts.AssertAuthParametersType(struct["AuthParameters"]) end
	if struct["AuthFlow"] then asserts.AssertAuthFlowType(struct["AuthFlow"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AdminInitiateAuthRequest[k], "AdminInitiateAuthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminInitiateAuthRequest
-- <p>Initiates the authorization request, as an administrator.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientMetadata [ClientMetadataType] <p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>
-- * AuthParameters [AuthParametersType] <p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRPA</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>REFRESH_TOKEN</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>PASSWORD</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>
-- * AuthFlow [AuthFlowType] <p>The authentication flow for this call to execute. The API action will depend on this value. For example:</p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and <code>SRPA</code> and return the SRP variables to be used for next challenge execution.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.</p> </li> </ul>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * UserPoolId [UserPoolIdType] <p>The ID of the Amazon Cognito user pool.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- Required key: AuthFlow
-- @return AdminInitiateAuthRequest structure as a key-value pair table
function M.AdminInitiateAuthRequest(args)
	assert(args, "You must provdide an argument table when creating AdminInitiateAuthRequest")
	local t = { 
		["ClientMetadata"] = args["ClientMetadata"],
		["AuthParameters"] = args["AuthParameters"],
		["AuthFlow"] = args["AuthFlow"],
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminInitiateAuthRequest(t)
	return t
end

keys.RespondToAuthChallengeRequest = { ["ChallengeResponses"] = true, ["ChallengeName"] = true, ["ClientId"] = true, ["Session"] = true, nil }

function asserts.AssertRespondToAuthChallengeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondToAuthChallengeRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ChallengeName"], "Expected key ChallengeName to exist in table")
	if struct["ChallengeResponses"] then asserts.AssertChallengeResponsesType(struct["ChallengeResponses"]) end
	if struct["ChallengeName"] then asserts.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
	if struct["Session"] then asserts.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondToAuthChallengeRequest[k], "RespondToAuthChallengeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondToAuthChallengeRequest
-- <p>The request to respond to an authentication challenge.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChallengeResponses [ChallengeResponsesType] <p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul>
-- * ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see <a href="API_InitiateAuth.html">InitiateAuth</a>.</p> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>
-- * ClientId [ClientIdType] <p>The app client ID.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- Required key: ClientId
-- Required key: ChallengeName
-- @return RespondToAuthChallengeRequest structure as a key-value pair table
function M.RespondToAuthChallengeRequest(args)
	assert(args, "You must provdide an argument table when creating RespondToAuthChallengeRequest")
	local t = { 
		["ChallengeResponses"] = args["ChallengeResponses"],
		["ChallengeName"] = args["ChallengeName"],
		["ClientId"] = args["ClientId"],
		["Session"] = args["Session"],
	}
	asserts.AssertRespondToAuthChallengeRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetCSVHeaderResponse")
	local t = { 
		["CSVHeader"] = args["CSVHeader"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertGetCSVHeaderResponse(t)
	return t
end

keys.SignUpRequest = { ["Username"] = true, ["ValidationData"] = true, ["SecretHash"] = true, ["UserAttributes"] = true, ["ClientId"] = true, ["Password"] = true, nil }

function asserts.AssertSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignUpRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["ValidationData"] then asserts.AssertAttributeListType(struct["ValidationData"]) end
	if struct["SecretHash"] then asserts.AssertSecretHashType(struct["SecretHash"]) end
	if struct["UserAttributes"] then asserts.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["ClientId"] then asserts.AssertClientIdType(struct["ClientId"]) end
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
-- * UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * Password [PasswordType] <p>The password of the user you wish to register.</p>
-- Required key: ClientId
-- Required key: Username
-- Required key: Password
-- @return SignUpRequest structure as a key-value pair table
function M.SignUpRequest(args)
	assert(args, "You must provdide an argument table when creating SignUpRequest")
	local t = { 
		["Username"] = args["Username"],
		["ValidationData"] = args["ValidationData"],
		["SecretHash"] = args["SecretHash"],
		["UserAttributes"] = args["UserAttributes"],
		["ClientId"] = args["ClientId"],
		["Password"] = args["Password"],
	}
	asserts.AssertSignUpRequest(t)
	return t
end

keys.InvalidSmsRoleAccessPolicyException = { ["message"] = true, nil }

function asserts.AssertInvalidSmsRoleAccessPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSmsRoleAccessPolicyException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSmsRoleAccessPolicyException[k], "InvalidSmsRoleAccessPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSmsRoleAccessPolicyException
-- <p>This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message retuned when the invalid SMS role access policy exception is thrown.</p>
-- @return InvalidSmsRoleAccessPolicyException structure as a key-value pair table
function M.InvalidSmsRoleAccessPolicyException(args)
	assert(args, "You must provdide an argument table when creating InvalidSmsRoleAccessPolicyException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidSmsRoleAccessPolicyException(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>This exception is thrown when the Amazon Cognito service cannot find the requested resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service returns a resource not found exception.</p>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminRemoveUserFromGroupRequest")
	local t = { 
		["Username"] = args["Username"],
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminRemoveUserFromGroupRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating VerifyUserAttributeRequest")
	local t = { 
		["Code"] = args["Code"],
		["AttributeName"] = args["AttributeName"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertVerifyUserAttributeRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminEnableUserResponse")
	local t = { 
	}
	asserts.AssertAdminEnableUserResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserAttributesRequest")
	local t = { 
		["UserAttributeNames"] = args["UserAttributeNames"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertDeleteUserAttributesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserImportJobResponse")
	local t = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertDescribeUserImportJobResponse(t)
	return t
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
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the <a href="API_InitiateAuth.html">InitiateAuth</a> or <a href="API_RespondToAuthChallenge.html">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- @return InitiateAuthResponse structure as a key-value pair table
function M.InitiateAuthResponse(args)
	assert(args, "You must provdide an argument table when creating InitiateAuthResponse")
	local t = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertInitiateAuthResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminUpdateDeviceStatusResponse")
	local t = { 
	}
	asserts.AssertAdminUpdateDeviceStatusResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserPoolRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeUserPoolRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUsersInGroupRequest")
	local t = { 
		["GroupName"] = args["GroupName"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListUsersInGroupRequest(t)
	return t
end

keys.InvalidOAuthFlowException = { ["message"] = true, nil }

function asserts.AssertInvalidOAuthFlowException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOAuthFlowException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOAuthFlowException[k], "InvalidOAuthFlowException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOAuthFlowException
-- <p>This exception is thrown when the specified OAuth flow is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] 
-- @return InvalidOAuthFlowException structure as a key-value pair table
function M.InvalidOAuthFlowException(args)
	assert(args, "You must provdide an argument table when creating InvalidOAuthFlowException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidOAuthFlowException(t)
	return t
end

keys.PasswordResetRequiredException = { ["message"] = true, nil }

function asserts.AssertPasswordResetRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordResetRequiredException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PasswordResetRequiredException[k], "PasswordResetRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordResetRequiredException
-- <p>This exception is thrown when a password reset is required.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when a password reset is required.</p>
-- @return PasswordResetRequiredException structure as a key-value pair table
function M.PasswordResetRequiredException(args)
	assert(args, "You must provdide an argument table when creating PasswordResetRequiredException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertPasswordResetRequiredException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListGroupsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertListGroupsRequest(t)
	return t
end

keys.TooManyRequestsException = { ["message"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>This exception is thrown when the user has made too many requests for a given operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service returns a too many requests exception.</p>
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provdide an argument table when creating TooManyRequestsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyRequestsException(t)
	return t
end

keys.ExpiredCodeException = { ["message"] = true, nil }

function asserts.AssertExpiredCodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredCodeException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredCodeException[k], "ExpiredCodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredCodeException
-- <p>This exception is thrown if a code has expired.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the expired code exception is thrown.</p>
-- @return ExpiredCodeException structure as a key-value pair table
function M.ExpiredCodeException(args)
	assert(args, "You must provdide an argument table when creating ExpiredCodeException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertExpiredCodeException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminDisableUserRequest")
	local t = { 
		["Username"] = args["Username"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminDisableUserRequest(t)
	return t
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
	if struct["ProviderName"] then asserts.AssertProviderNameType(struct["ProviderName"]) end
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
-- * ProviderName [ProviderNameType] <p>The identity provider name.</p>
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
	assert(args, "You must provdide an argument table when creating CreateIdentityProviderRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
		["ProviderName"] = args["ProviderName"],
		["ProviderType"] = args["ProviderType"],
		["ProviderDetails"] = args["ProviderDetails"],
		["IdpIdentifiers"] = args["IdpIdentifiers"],
		["AttributeMapping"] = args["AttributeMapping"],
	}
	asserts.AssertCreateIdentityProviderRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminAddUserToGroupRequest")
	local t = { 
		["Username"] = args["Username"],
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminAddUserToGroupRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminUpdateUserAttributesResponse")
	local t = { 
	}
	asserts.AssertAdminUpdateUserAttributesResponse(t)
	return t
end

keys.UpdateUserPoolRequest = { ["SmsVerificationMessage"] = true, ["EmailVerificationSubject"] = true, ["MfaConfiguration"] = true, ["UserPoolId"] = true, ["EmailVerificationMessage"] = true, ["SmsAuthenticationMessage"] = true, ["SmsConfiguration"] = true, ["EmailConfiguration"] = true, ["AutoVerifiedAttributes"] = true, ["Policies"] = true, ["UserPoolTags"] = true, ["AdminCreateUserConfig"] = true, ["DeviceConfiguration"] = true, ["LambdaConfig"] = true, nil }

function asserts.AssertUpdateUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["SmsVerificationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationSubject"] then asserts.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then asserts.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["EmailVerificationMessage"] then asserts.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["SmsAuthenticationMessage"] then asserts.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
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
-- * SmsAuthenticationMessage [SmsVerificationMessageType] <p>The contents of the SMS authentication message.</p>
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
	assert(args, "You must provdide an argument table when creating UpdateUserPoolRequest")
	local t = { 
		["SmsVerificationMessage"] = args["SmsVerificationMessage"],
		["EmailVerificationSubject"] = args["EmailVerificationSubject"],
		["MfaConfiguration"] = args["MfaConfiguration"],
		["UserPoolId"] = args["UserPoolId"],
		["EmailVerificationMessage"] = args["EmailVerificationMessage"],
		["SmsAuthenticationMessage"] = args["SmsAuthenticationMessage"],
		["SmsConfiguration"] = args["SmsConfiguration"],
		["EmailConfiguration"] = args["EmailConfiguration"],
		["AutoVerifiedAttributes"] = args["AutoVerifiedAttributes"],
		["Policies"] = args["Policies"],
		["UserPoolTags"] = args["UserPoolTags"],
		["AdminCreateUserConfig"] = args["AdminCreateUserConfig"],
		["DeviceConfiguration"] = args["DeviceConfiguration"],
		["LambdaConfig"] = args["LambdaConfig"],
	}
	asserts.AssertUpdateUserPoolRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SmsConfigurationType")
	local t = { 
		["ExternalId"] = args["ExternalId"],
		["SnsCallerArn"] = args["SnsCallerArn"],
	}
	asserts.AssertSmsConfigurationType(t)
	return t
end

keys.UserLambdaValidationException = { ["message"] = true, nil }

function asserts.AssertUserLambdaValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserLambdaValidationException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserLambdaValidationException[k], "UserLambdaValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserLambdaValidationException
-- <p>This exception is thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service returns a user validation exception with the AWS Lambda service.</p>
-- @return UserLambdaValidationException structure as a key-value pair table
function M.UserLambdaValidationException(args)
	assert(args, "You must provdide an argument table when creating UserLambdaValidationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUserLambdaValidationException(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>This exception is thrown when the Amazon Cognito service encounters an invalid parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the Amazon Cognito service throws an invalid parameter exception.</p>
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.LambdaConfigType = { ["PostConfirmation"] = true, ["CreateAuthChallenge"] = true, ["VerifyAuthChallengeResponse"] = true, ["PreAuthentication"] = true, ["PostAuthentication"] = true, ["CustomMessage"] = true, ["PreSignUp"] = true, ["DefineAuthChallenge"] = true, nil }

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
	if struct["DefineAuthChallenge"] then asserts.AssertArnType(struct["DefineAuthChallenge"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaConfigType[k], "LambdaConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaConfigType
-- <p>Specifies the type of configuration for AWS Lambda triggers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PostConfirmation [ArnType] <p>A post-confirmation AWS Lambda trigger.</p>
-- * CreateAuthChallenge [ArnType] <p>Creates an authentication challenge.</p>
-- * VerifyAuthChallengeResponse [ArnType] <p>Verifies the authentication challenge response.</p>
-- * PreAuthentication [ArnType] <p>A pre-authentication AWS Lambda trigger.</p>
-- * PostAuthentication [ArnType] <p>A post-authentication AWS Lambda trigger.</p>
-- * CustomMessage [ArnType] <p>A custom Message AWS Lambda trigger.</p>
-- * PreSignUp [ArnType] <p>A pre-registration AWS Lambda trigger.</p>
-- * DefineAuthChallenge [ArnType] <p>Defines the authentication challenge.</p>
-- @return LambdaConfigType structure as a key-value pair table
function M.LambdaConfigType(args)
	assert(args, "You must provdide an argument table when creating LambdaConfigType")
	local t = { 
		["PostConfirmation"] = args["PostConfirmation"],
		["CreateAuthChallenge"] = args["CreateAuthChallenge"],
		["VerifyAuthChallengeResponse"] = args["VerifyAuthChallengeResponse"],
		["PreAuthentication"] = args["PreAuthentication"],
		["PostAuthentication"] = args["PostAuthentication"],
		["CustomMessage"] = args["CustomMessage"],
		["PreSignUp"] = args["PreSignUp"],
		["DefineAuthChallenge"] = args["DefineAuthChallenge"],
	}
	asserts.AssertLambdaConfigType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating StopUserImportJobResponse")
	local t = { 
		["UserImportJob"] = args["UserImportJob"],
	}
	asserts.AssertStopUserImportJobResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserImportJobRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeUserImportJobRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ProviderDescription")
	local t = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ProviderType"] = args["ProviderType"],
		["ProviderName"] = args["ProviderName"],
		["CreationDate"] = args["CreationDate"],
	}
	asserts.AssertProviderDescription(t)
	return t
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
	assert(args, "You must provdide an argument table when creating NumberAttributeConstraintsType")
	local t = { 
		["MaxValue"] = args["MaxValue"],
		["MinValue"] = args["MinValue"],
	}
	asserts.AssertNumberAttributeConstraintsType(t)
	return t
end

keys.UserPoolTaggingException = { ["message"] = true, nil }

function asserts.AssertUserPoolTaggingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolTaggingException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolTaggingException[k], "UserPoolTaggingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolTaggingException
-- <p>This exception is thrown when a user pool tag cannot be set or updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] 
-- @return UserPoolTaggingException structure as a key-value pair table
function M.UserPoolTaggingException(args)
	assert(args, "You must provdide an argument table when creating UserPoolTaggingException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUserPoolTaggingException(t)
	return t
end

keys.CreateUserPoolClientRequest = { ["GenerateSecret"] = true, ["AllowedOAuthScopes"] = true, ["UserPoolId"] = true, ["AllowedOAuthFlowsUserPoolClient"] = true, ["LogoutURLs"] = true, ["DefaultRedirectURI"] = true, ["AllowedOAuthFlows"] = true, ["CallbackURLs"] = true, ["ExplicitAuthFlows"] = true, ["WriteAttributes"] = true, ["SupportedIdentityProviders"] = true, ["ReadAttributes"] = true, ["RefreshTokenValidity"] = true, ["ClientName"] = true, nil }

function asserts.AssertCreateUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientName"], "Expected key ClientName to exist in table")
	if struct["GenerateSecret"] then asserts.AssertGenerateSecret(struct["GenerateSecret"]) end
	if struct["AllowedOAuthScopes"] then asserts.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then asserts.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then asserts.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
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
-- * LogoutURLs [LogoutURLsListType] <p>A list of allowed logout URLs for the identity providers.</p>
-- * DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
-- * AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- * CallbackURLs [CallbackURLsListType] <p>A list of allowed callback URLs for the identity providers.</p>
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
	assert(args, "You must provdide an argument table when creating CreateUserPoolClientRequest")
	local t = { 
		["GenerateSecret"] = args["GenerateSecret"],
		["AllowedOAuthScopes"] = args["AllowedOAuthScopes"],
		["UserPoolId"] = args["UserPoolId"],
		["AllowedOAuthFlowsUserPoolClient"] = args["AllowedOAuthFlowsUserPoolClient"],
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
	asserts.AssertCreateUserPoolClientRequest(t)
	return t
end

keys.PreconditionNotMetException = { ["message"] = true, nil }

function asserts.AssertPreconditionNotMetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionNotMetException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PreconditionNotMetException[k], "PreconditionNotMetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionNotMetException
-- <p>This exception is thrown when a precondition is not met.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when a precondition is not met.</p>
-- @return PreconditionNotMetException structure as a key-value pair table
function M.PreconditionNotMetException(args)
	assert(args, "You must provdide an argument table when creating PreconditionNotMetException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertPreconditionNotMetException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ResendConfirmationCodeResponse")
	local t = { 
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertResendConfirmationCodeResponse(t)
	return t
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
-- <p>The type of configuration for the user pool's device tracking.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChallengeRequiredOnNewDevice [BooleanType] <p>Indicates whether a challenge is required on a new device. Only applicable to a new device.</p>
-- * DeviceOnlyRememberedOnUserPrompt [BooleanType] <p>If true, a device is only remembered on user prompt.</p>
-- @return DeviceConfigurationType structure as a key-value pair table
function M.DeviceConfigurationType(args)
	assert(args, "You must provdide an argument table when creating DeviceConfigurationType")
	local t = { 
		["ChallengeRequiredOnNewDevice"] = args["ChallengeRequiredOnNewDevice"],
		["DeviceOnlyRememberedOnUserPrompt"] = args["DeviceOnlyRememberedOnUserPrompt"],
	}
	asserts.AssertDeviceConfigurationType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminDisableUserResponse")
	local t = { 
	}
	asserts.AssertAdminDisableUserResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetDeviceResponse")
	local t = { 
		["Device"] = args["Device"],
	}
	asserts.AssertGetDeviceResponse(t)
	return t
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
-- <p>The result type of the authentication result.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExpiresIn [IntegerType] <p>The expiration period of the authentication result.</p>
-- * RefreshToken [TokenModelType] <p>The refresh token of the authentication result.</p>
-- * TokenType [StringType] <p>The token type of the authentication result.</p>
-- * NewDeviceMetadata [NewDeviceMetadataType] <p>The new device metadata from an authentication result.</p>
-- * IdToken [TokenModelType] <p>The ID token of the authentication result.</p>
-- * AccessToken [TokenModelType] <p>The access token of the authentication result.</p>
-- @return AuthenticationResultType structure as a key-value pair table
function M.AuthenticationResultType(args)
	assert(args, "You must provdide an argument table when creating AuthenticationResultType")
	local t = { 
		["ExpiresIn"] = args["ExpiresIn"],
		["RefreshToken"] = args["RefreshToken"],
		["TokenType"] = args["TokenType"],
		["NewDeviceMetadata"] = args["NewDeviceMetadata"],
		["IdToken"] = args["IdToken"],
		["AccessToken"] = args["AccessToken"],
	}
	asserts.AssertAuthenticationResultType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminSetUserSettingsResponse")
	local t = { 
	}
	asserts.AssertAdminSetUserSettingsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating StopUserImportJobRequest")
	local t = { 
		["UserPoolId"] = args["UserPoolId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopUserImportJobRequest(t)
	return t
end

keys.InvalidSmsRoleTrustRelationshipException = { ["message"] = true, nil }

function asserts.AssertInvalidSmsRoleTrustRelationshipException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSmsRoleTrustRelationshipException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSmsRoleTrustRelationshipException[k], "InvalidSmsRoleTrustRelationshipException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSmsRoleTrustRelationshipException
-- <p>This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when the role trust relationship for the SMS message is invalid.</p>
-- @return InvalidSmsRoleTrustRelationshipException structure as a key-value pair table
function M.InvalidSmsRoleTrustRelationshipException(args)
	assert(args, "You must provdide an argument table when creating InvalidSmsRoleTrustRelationshipException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidSmsRoleTrustRelationshipException(t)
	return t
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
-- * ChallengeName [ChallengeNameType] <p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <ul> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: This is returned if you need to authenticate with <code>USERNAME</code> and <code>PASSWORD</code> directly. An app client must be enabled to use this flow.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>
-- * ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. These are returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>AdminRespondToAuthChallenge</code>).</p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p> <p>The value of the <code>USER_IF_FOR_SRP</code> attribute will be the user's actual username, not an alias (such as email address or phone number), even if you specified an alias in your call to <code>AdminInitiateAuth</code>. This is because, in the <code>AdminRespondToAuthChallenge</code> API <code>ChallengeResponses</code>, the <code>USERNAME</code> attribute cannot be an alias.</p>
-- * Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>AdminInitiateAuth</code> or <code>AdminRespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>AdminRespondToAuthChallenge</code> API call.</p>
-- @return AdminInitiateAuthResponse structure as a key-value pair table
function M.AdminInitiateAuthResponse(args)
	assert(args, "You must provdide an argument table when creating AdminInitiateAuthResponse")
	local t = { 
		["AuthenticationResult"] = args["AuthenticationResult"],
		["ChallengeName"] = args["ChallengeName"],
		["ChallengeParameters"] = args["ChallengeParameters"],
		["Session"] = args["Session"],
	}
	asserts.AssertAdminInitiateAuthResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminResetUserPasswordResponse")
	local t = { 
	}
	asserts.AssertAdminResetUserPasswordResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ChangePasswordResponse")
	local t = { 
	}
	asserts.AssertChangePasswordResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ForgotPasswordResponse")
	local t = { 
		["CodeDeliveryDetails"] = args["CodeDeliveryDetails"],
	}
	asserts.AssertForgotPasswordResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteGroupRequest")
	local t = { 
		["GroupName"] = args["GroupName"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDeleteGroupRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateDeviceStatusResponse")
	local t = { 
	}
	asserts.AssertUpdateDeviceStatusResponse(t)
	return t
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
-- * ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- * UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to describe.</p>
-- Required key: UserPoolId
-- Required key: ClientId
-- @return DescribeUserPoolClientRequest structure as a key-value pair table
function M.DescribeUserPoolClientRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeUserPoolClientRequest")
	local t = { 
		["ClientId"] = args["ClientId"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertDescribeUserPoolClientRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminListDevicesRequest")
	local t = { 
		["Username"] = args["Username"],
		["PaginationToken"] = args["PaginationToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminListDevicesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUsersInGroupResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Users"] = args["Users"],
	}
	asserts.AssertListUsersInGroupResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UserPoolDescriptionType")
	local t = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["CreationDate"] = args["CreationDate"],
		["Id"] = args["Id"],
		["LambdaConfig"] = args["LambdaConfig"],
	}
	asserts.AssertUserPoolDescriptionType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeviceType")
	local t = { 
		["DeviceLastAuthenticatedDate"] = args["DeviceLastAuthenticatedDate"],
		["DeviceKey"] = args["DeviceKey"],
		["DeviceAttributes"] = args["DeviceAttributes"],
		["DeviceCreateDate"] = args["DeviceCreateDate"],
		["DeviceLastModifiedDate"] = args["DeviceLastModifiedDate"],
	}
	asserts.AssertDeviceType(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminListGroupsForUserRequest")
	local t = { 
		["Username"] = args["Username"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["UserPoolId"] = args["UserPoolId"],
	}
	asserts.AssertAdminListGroupsForUserRequest(t)
	return t
end

keys.MFAMethodNotFoundException = { ["message"] = true, nil }

function asserts.AssertMFAMethodNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MFAMethodNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MFAMethodNotFoundException[k], "MFAMethodNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MFAMethodNotFoundException
-- <p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [MessageType] <p>The message returned when Amazon Cognito throws an MFA method not found exception.</p>
-- @return MFAMethodNotFoundException structure as a key-value pair table
function M.MFAMethodNotFoundException(args)
	assert(args, "You must provdide an argument table when creating MFAMethodNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertMFAMethodNotFoundException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AdminDeleteUserAttributesResponse")
	local t = { 
	}
	asserts.AssertAdminDeleteUserAttributesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateGroupResponse")
	local t = { 
		["Group"] = args["Group"],
	}
	asserts.AssertCreateGroupResponse(t)
	return t
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
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainType(str)
	asserts.AssertDomainType(str)
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

function asserts.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	asserts.AssertMessageType(str)
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

function asserts.AssertMessageActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageActionType to be of type 'string'")
end

--  
function M.MessageActionType(str)
	asserts.AssertMessageActionType(str)
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

function asserts.AssertDeliveryMediumType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryMediumType to be of type 'string'")
end

--  
function M.DeliveryMediumType(str)
	asserts.AssertDeliveryMediumType(str)
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

function asserts.AssertUserPoolMfaType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolMfaType to be of type 'string'")
end

--  
function M.UserPoolMfaType(str)
	asserts.AssertUserPoolMfaType(str)
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

function asserts.AssertVerifiedAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VerifiedAttributeType to be of type 'string'")
end

--  
function M.VerifiedAttributeType(str)
	asserts.AssertVerifiedAttributeType(str)
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

function asserts.AssertAttributeDataType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeDataType to be of type 'string'")
end

--  
function M.AttributeDataType(str)
	asserts.AssertAttributeDataType(str)
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

function asserts.AssertDomainStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatusType to be of type 'string'")
end

--  
function M.DomainStatusType(str)
	asserts.AssertDomainStatusType(str)
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

function asserts.AssertUserStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserStatusType to be of type 'string'")
end

--  
function M.UserStatusType(str)
	asserts.AssertUserStatusType(str)
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

function asserts.AssertTokenModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected TokenModelType to be of type 'string'")
end

--  
function M.TokenModelType(str)
	asserts.AssertTokenModelType(str)
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

function asserts.AssertIdentityProviderTypeType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderTypeType to be of type 'string'")
end

--  
function M.IdentityProviderTypeType(str)
	asserts.AssertIdentityProviderTypeType(str)
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

function asserts.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	asserts.AssertStatusType(str)
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

function asserts.AssertOAuthFlowType(str)
	assert(str)
	assert(type(str) == "string", "Expected OAuthFlowType to be of type 'string'")
end

--  
function M.OAuthFlowType(str)
	asserts.AssertOAuthFlowType(str)
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

function asserts.AssertPrecedenceType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PrecedenceType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PrecedenceType(integer)
	asserts.AssertPrecedenceType(integer)
	return integer
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
	assert(integer <= 90, "Expected integer to be max 90")
end

function M.AdminCreateUserUnusedAccountValidityDaysType(integer)
	asserts.AssertAdminCreateUserUnusedAccountValidityDaysType(integer)
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

function asserts.AssertGenerateSecret(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected GenerateSecret to be of type 'boolean'")
end

function M.GenerateSecret(boolean)
	asserts.AssertGenerateSecret(boolean)
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

function asserts.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	asserts.AssertBooleanType(boolean)
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
		asserts.AssertCustomAttributeNameType(k)
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

function asserts.AssertScopeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ScopeListType to be of type ''table")
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
--- Call GetIdentityProviderByIdentifier asynchronously, invoking a callback when done
-- @param GetIdentityProviderByIdentifierRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityProviderByIdentifierAsync(GetIdentityProviderByIdentifierRequest, cb)
	assert(GetIdentityProviderByIdentifierRequest, "You must provide a GetIdentityProviderByIdentifierRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetIdentityProviderByIdentifier",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetIdentityProviderByIdentifierSync(GetIdentityProviderByIdentifierRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityProviderByIdentifierAsync(GetIdentityProviderByIdentifierRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmSignUp asynchronously, invoking a callback when done
-- @param ConfirmSignUpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmSignUpAsync(ConfirmSignUpRequest, cb)
	assert(ConfirmSignUpRequest, "You must provide a ConfirmSignUpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmSignUp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ConfirmSignUpSync(ConfirmSignUpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmSignUpAsync(ConfirmSignUpRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDisableUser asynchronously, invoking a callback when done
-- @param AdminDisableUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminDisableUserAsync(AdminDisableUserRequest, cb)
	assert(AdminDisableUserRequest, "You must provide a AdminDisableUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDisableUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminDisableUserSync(AdminDisableUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDisableUserAsync(AdminDisableUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminListDevices asynchronously, invoking a callback when done
-- @param AdminListDevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminListDevicesAsync(AdminListDevicesRequest, cb)
	assert(AdminListDevicesRequest, "You must provide a AdminListDevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListDevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminListDevicesSync(AdminListDevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminListDevicesAsync(AdminListDevicesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminRemoveUserFromGroup asynchronously, invoking a callback when done
-- @param AdminRemoveUserFromGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminRemoveUserFromGroupAsync(AdminRemoveUserFromGroupRequest, cb)
	assert(AdminRemoveUserFromGroupRequest, "You must provide a AdminRemoveUserFromGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminRemoveUserFromGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminRemoveUserFromGroupSync(AdminRemoveUserFromGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminRemoveUserFromGroupAsync(AdminRemoveUserFromGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ForgotPassword asynchronously, invoking a callback when done
-- @param ForgotPasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ForgotPasswordAsync(ForgotPasswordRequest, cb)
	assert(ForgotPasswordRequest, "You must provide a ForgotPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ForgotPassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ForgotPasswordSync(ForgotPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ForgotPasswordAsync(ForgotPasswordRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUpdateUserAttributes asynchronously, invoking a callback when done
-- @param AdminUpdateUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminUpdateUserAttributesAsync(AdminUpdateUserAttributesRequest, cb)
	assert(AdminUpdateUserAttributesRequest, "You must provide a AdminUpdateUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminUpdateUserAttributesSync(AdminUpdateUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUpdateUserAttributesAsync(AdminUpdateUserAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SignUp asynchronously, invoking a callback when done
-- @param SignUpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SignUpAsync(SignUpRequest, cb)
	assert(SignUpRequest, "You must provide a SignUpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SignUp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SignUpSync(SignUpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SignUpAsync(SignUpRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminCreateUser asynchronously, invoking a callback when done
-- @param AdminCreateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminCreateUserAsync(AdminCreateUserRequest, cb)
	assert(AdminCreateUserRequest, "You must provide a AdminCreateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminCreateUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminCreateUserSync(AdminCreateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminCreateUserAsync(AdminCreateUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserAttributes asynchronously, invoking a callback when done
-- @param UpdateUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserAttributesAsync(UpdateUserAttributesRequest, cb)
	assert(UpdateUserAttributesRequest, "You must provide a UpdateUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateUserAttributesSync(UpdateUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserAttributesAsync(UpdateUserAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserPoolDomain asynchronously, invoking a callback when done
-- @param DescribeUserPoolDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserPoolDomainAsync(DescribeUserPoolDomainRequest, cb)
	assert(DescribeUserPoolDomainRequest, "You must provide a DescribeUserPoolDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPoolDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeUserPoolDomainSync(DescribeUserPoolDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserPoolDomainAsync(DescribeUserPoolDomainRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ForgetDevice asynchronously, invoking a callback when done
-- @param ForgetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ForgetDeviceAsync(ForgetDeviceRequest, cb)
	assert(ForgetDeviceRequest, "You must provide a ForgetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ForgetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ForgetDeviceSync(ForgetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ForgetDeviceAsync(ForgetDeviceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentityProvider asynchronously, invoking a callback when done
-- @param DeleteIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentityProviderAsync(DeleteIdentityProviderRequest, cb)
	assert(DeleteIdentityProviderRequest, "You must provide a DeleteIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteIdentityProviderSync(DeleteIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityProviderAsync(DeleteIdentityProviderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmForgotPassword asynchronously, invoking a callback when done
-- @param ConfirmForgotPasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmForgotPasswordAsync(ConfirmForgotPasswordRequest, cb)
	assert(ConfirmForgotPasswordRequest, "You must provide a ConfirmForgotPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmForgotPassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ConfirmForgotPasswordSync(ConfirmForgotPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmForgotPasswordAsync(ConfirmForgotPasswordRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGroup asynchronously, invoking a callback when done
-- @param CreateGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGroupAsync(CreateGroupRequest, cb)
	assert(CreateGroupRequest, "You must provide a CreateGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateGroupSync(CreateGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupAsync(CreateGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyUserAttribute asynchronously, invoking a callback when done
-- @param VerifyUserAttributeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyUserAttributeAsync(VerifyUserAttributeRequest, cb)
	assert(VerifyUserAttributeRequest, "You must provide a VerifyUserAttributeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.VerifyUserAttribute",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.VerifyUserAttributeSync(VerifyUserAttributeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyUserAttributeAsync(VerifyUserAttributeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminResetUserPassword asynchronously, invoking a callback when done
-- @param AdminResetUserPasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminResetUserPasswordAsync(AdminResetUserPasswordRequest, cb)
	assert(AdminResetUserPasswordRequest, "You must provide a AdminResetUserPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminResetUserPassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminResetUserPasswordSync(AdminResetUserPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminResetUserPasswordAsync(AdminResetUserPasswordRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPool asynchronously, invoking a callback when done
-- @param DeleteUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPoolAsync(DeleteUserPoolRequest, cb)
	assert(DeleteUserPoolRequest, "You must provide a DeleteUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteUserPoolSync(DeleteUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPoolAsync(DeleteUserPoolRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminConfirmSignUp asynchronously, invoking a callback when done
-- @param AdminConfirmSignUpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminConfirmSignUpAsync(AdminConfirmSignUpRequest, cb)
	assert(AdminConfirmSignUpRequest, "You must provide a AdminConfirmSignUpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminConfirmSignUp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminConfirmSignUpSync(AdminConfirmSignUpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminConfirmSignUpAsync(AdminConfirmSignUpRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserPool asynchronously, invoking a callback when done
-- @param UpdateUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserPoolAsync(UpdateUserPoolRequest, cb)
	assert(UpdateUserPoolRequest, "You must provide a UpdateUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateUserPoolSync(UpdateUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserPoolAsync(UpdateUserPoolRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserPoolClients asynchronously, invoking a callback when done
-- @param ListUserPoolClientsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserPoolClientsAsync(ListUserPoolClientsRequest, cb)
	assert(ListUserPoolClientsRequest, "You must provide a ListUserPoolClientsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserPoolClients",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListUserPoolClientsSync(ListUserPoolClientsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserPoolClientsAsync(ListUserPoolClientsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserPool asynchronously, invoking a callback when done
-- @param DescribeUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserPoolAsync(DescribeUserPoolRequest, cb)
	assert(DescribeUserPoolRequest, "You must provide a DescribeUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeUserPoolSync(DescribeUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserPoolAsync(DescribeUserPoolRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopUserImportJob asynchronously, invoking a callback when done
-- @param StopUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopUserImportJobAsync(StopUserImportJobRequest, cb)
	assert(StopUserImportJobRequest, "You must provide a StopUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.StopUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StopUserImportJobSync(StopUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopUserImportJobAsync(StopUserImportJobRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserPools asynchronously, invoking a callback when done
-- @param ListUserPoolsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserPoolsAsync(ListUserPoolsRequest, cb)
	assert(ListUserPoolsRequest, "You must provide a ListUserPoolsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserPools",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListUserPoolsSync(ListUserPoolsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserPoolsAsync(ListUserPoolsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUserGlobalSignOut asynchronously, invoking a callback when done
-- @param AdminUserGlobalSignOutRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminUserGlobalSignOutAsync(AdminUserGlobalSignOutRequest, cb)
	assert(AdminUserGlobalSignOutRequest, "You must provide a AdminUserGlobalSignOutRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUserGlobalSignOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminUserGlobalSignOutSync(AdminUserGlobalSignOutRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUserGlobalSignOutAsync(AdminUserGlobalSignOutRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPoolDomain asynchronously, invoking a callback when done
-- @param DeleteUserPoolDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPoolDomainAsync(DeleteUserPoolDomainRequest, cb)
	assert(DeleteUserPoolDomainRequest, "You must provide a DeleteUserPoolDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPoolDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteUserPoolDomainSync(DeleteUserPoolDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPoolDomainAsync(DeleteUserPoolDomainRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminGetDevice asynchronously, invoking a callback when done
-- @param AdminGetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminGetDeviceAsync(AdminGetDeviceRequest, cb)
	assert(AdminGetDeviceRequest, "You must provide a AdminGetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminGetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminGetDeviceSync(AdminGetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminGetDeviceAsync(AdminGetDeviceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGroup asynchronously, invoking a callback when done
-- @param DeleteGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGroupAsync(DeleteGroupRequest, cb)
	assert(DeleteGroupRequest, "You must provide a DeleteGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteGroupSync(DeleteGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGroupAsync(DeleteGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResendConfirmationCode asynchronously, invoking a callback when done
-- @param ResendConfirmationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResendConfirmationCodeAsync(ResendConfirmationCodeRequest, cb)
	assert(ResendConfirmationCodeRequest, "You must provide a ResendConfirmationCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ResendConfirmationCode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ResendConfirmationCodeSync(ResendConfirmationCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResendConfirmationCodeAsync(ResendConfirmationCodeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUserAttributeVerificationCode asynchronously, invoking a callback when done
-- @param GetUserAttributeVerificationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUserAttributeVerificationCodeAsync(GetUserAttributeVerificationCodeRequest, cb)
	assert(GetUserAttributeVerificationCodeRequest, "You must provide a GetUserAttributeVerificationCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUserAttributeVerificationCode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetUserAttributeVerificationCodeSync(GetUserAttributeVerificationCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserAttributeVerificationCodeAsync(GetUserAttributeVerificationCodeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUser asynchronously, invoking a callback when done
-- @param GetUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUserAsync(GetUserRequest, cb)
	assert(GetUserRequest, "You must provide a GetUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetUserSync(GetUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserAsync(GetUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmDevice asynchronously, invoking a callback when done
-- @param ConfirmDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmDeviceAsync(ConfirmDeviceRequest, cb)
	assert(ConfirmDeviceRequest, "You must provide a ConfirmDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ConfirmDeviceSync(ConfirmDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmDeviceAsync(ConfirmDeviceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangePassword asynchronously, invoking a callback when done
-- @param ChangePasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangePasswordAsync(ChangePasswordRequest, cb)
	assert(ChangePasswordRequest, "You must provide a ChangePasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ChangePassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ChangePasswordSync(ChangePasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangePasswordAsync(ChangePasswordRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCSVHeader asynchronously, invoking a callback when done
-- @param GetCSVHeaderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCSVHeaderAsync(GetCSVHeaderRequest, cb)
	assert(GetCSVHeaderRequest, "You must provide a GetCSVHeaderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetCSVHeader",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetCSVHeaderSync(GetCSVHeaderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCSVHeaderAsync(GetCSVHeaderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUsers asynchronously, invoking a callback when done
-- @param ListUsersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUsersAsync(ListUsersRequest, cb)
	assert(ListUsersRequest, "You must provide a ListUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUsers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListUsersSync(ListUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUsersAsync(ListUsersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminUpdateDeviceStatus asynchronously, invoking a callback when done
-- @param AdminUpdateDeviceStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminUpdateDeviceStatusAsync(AdminUpdateDeviceStatusRequest, cb)
	assert(AdminUpdateDeviceStatusRequest, "You must provide a AdminUpdateDeviceStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateDeviceStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminUpdateDeviceStatusSync(AdminUpdateDeviceStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminUpdateDeviceStatusAsync(AdminUpdateDeviceStatusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIdentityProvider asynchronously, invoking a callback when done
-- @param DescribeIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityProviderAsync(DescribeIdentityProviderRequest, cb)
	assert(DescribeIdentityProviderRequest, "You must provide a DescribeIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeIdentityProviderSync(DescribeIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIdentityProviderAsync(DescribeIdentityProviderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserAttributes asynchronously, invoking a callback when done
-- @param DeleteUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserAttributesAsync(DeleteUserAttributesRequest, cb)
	assert(DeleteUserAttributesRequest, "You must provide a DeleteUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteUserAttributesSync(DeleteUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAttributesAsync(DeleteUserAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIdentityProvider asynchronously, invoking a callback when done
-- @param UpdateIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIdentityProviderAsync(UpdateIdentityProviderRequest, cb)
	assert(UpdateIdentityProviderRequest, "You must provide a UpdateIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateIdentityProviderSync(UpdateIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIdentityProviderAsync(UpdateIdentityProviderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroup asynchronously, invoking a callback when done
-- @param GetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGroupAsync(GetGroupRequest, cb)
	assert(GetGroupRequest, "You must provide a GetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetGroupSync(GetGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupAsync(GetGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminEnableUser asynchronously, invoking a callback when done
-- @param AdminEnableUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminEnableUserAsync(AdminEnableUserRequest, cb)
	assert(AdminEnableUserRequest, "You must provide a AdminEnableUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminEnableUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminEnableUserSync(AdminEnableUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminEnableUserAsync(AdminEnableUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserPoolClient asynchronously, invoking a callback when done
-- @param UpdateUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserPoolClientAsync(UpdateUserPoolClientRequest, cb)
	assert(UpdateUserPoolClientRequest, "You must provide a UpdateUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateUserPoolClientSync(UpdateUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserPoolClientAsync(UpdateUserPoolClientRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddCustomAttributes asynchronously, invoking a callback when done
-- @param AddCustomAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddCustomAttributesAsync(AddCustomAttributesRequest, cb)
	assert(AddCustomAttributesRequest, "You must provide a AddCustomAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AddCustomAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AddCustomAttributesSync(AddCustomAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddCustomAttributesAsync(AddCustomAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminForgetDevice asynchronously, invoking a callback when done
-- @param AdminForgetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminForgetDeviceAsync(AdminForgetDeviceRequest, cb)
	assert(AdminForgetDeviceRequest, "You must provide a AdminForgetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminForgetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminForgetDeviceSync(AdminForgetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminForgetDeviceAsync(AdminForgetDeviceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserPoolClient asynchronously, invoking a callback when done
-- @param CreateUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserPoolClientAsync(CreateUserPoolClientRequest, cb)
	assert(CreateUserPoolClientRequest, "You must provide a CreateUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateUserPoolClientSync(CreateUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserPoolClientAsync(CreateUserPoolClientRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminListGroupsForUser asynchronously, invoking a callback when done
-- @param AdminListGroupsForUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminListGroupsForUserAsync(AdminListGroupsForUserRequest, cb)
	assert(AdminListGroupsForUserRequest, "You must provide a AdminListGroupsForUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListGroupsForUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminListGroupsForUserSync(AdminListGroupsForUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminListGroupsForUserAsync(AdminListGroupsForUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroups asynchronously, invoking a callback when done
-- @param ListGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGroupsAsync(ListGroupsRequest, cb)
	assert(ListGroupsRequest, "You must provide a ListGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListGroupsSync(ListGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupsAsync(ListGroupsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserPoolClient asynchronously, invoking a callback when done
-- @param DescribeUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserPoolClientAsync(DescribeUserPoolClientRequest, cb)
	assert(DescribeUserPoolClientRequest, "You must provide a DescribeUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeUserPoolClientSync(DescribeUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserPoolClientAsync(DescribeUserPoolClientRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDeleteUser asynchronously, invoking a callback when done
-- @param AdminDeleteUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminDeleteUserAsync(AdminDeleteUserRequest, cb)
	assert(AdminDeleteUserRequest, "You must provide a AdminDeleteUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDeleteUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminDeleteUserSync(AdminDeleteUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDeleteUserAsync(AdminDeleteUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminInitiateAuth asynchronously, invoking a callback when done
-- @param AdminInitiateAuthRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminInitiateAuthAsync(AdminInitiateAuthRequest, cb)
	assert(AdminInitiateAuthRequest, "You must provide a AdminInitiateAuthRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminInitiateAuth",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminInitiateAuthSync(AdminInitiateAuthRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminInitiateAuthAsync(AdminInitiateAuthRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminGetUser asynchronously, invoking a callback when done
-- @param AdminGetUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminGetUserAsync(AdminGetUserRequest, cb)
	assert(AdminGetUserRequest, "You must provide a AdminGetUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminGetUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminGetUserSync(AdminGetUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminGetUserAsync(AdminGetUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeviceStatus asynchronously, invoking a callback when done
-- @param UpdateDeviceStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeviceStatusAsync(UpdateDeviceStatusRequest, cb)
	assert(UpdateDeviceStatusRequest, "You must provide a UpdateDeviceStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateDeviceStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateDeviceStatusSync(UpdateDeviceStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceStatusAsync(UpdateDeviceStatusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserImportJobs asynchronously, invoking a callback when done
-- @param ListUserImportJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserImportJobsAsync(ListUserImportJobsRequest, cb)
	assert(ListUserImportJobsRequest, "You must provide a ListUserImportJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserImportJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListUserImportJobsSync(ListUserImportJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserImportJobsAsync(ListUserImportJobsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDevices asynchronously, invoking a callback when done
-- @param ListDevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDevicesAsync(ListDevicesRequest, cb)
	assert(ListDevicesRequest, "You must provide a ListDevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListDevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListDevicesSync(ListDevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDevicesAsync(ListDevicesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevice asynchronously, invoking a callback when done
-- @param GetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeviceAsync(GetDeviceRequest, cb)
	assert(GetDeviceRequest, "You must provide a GetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetDeviceSync(GetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceAsync(GetDeviceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUsersInGroup asynchronously, invoking a callback when done
-- @param ListUsersInGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUsersInGroupAsync(ListUsersInGroupRequest, cb)
	assert(ListUsersInGroupRequest, "You must provide a ListUsersInGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUsersInGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListUsersInGroupSync(ListUsersInGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUsersInGroupAsync(ListUsersInGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GlobalSignOut asynchronously, invoking a callback when done
-- @param GlobalSignOutRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GlobalSignOutAsync(GlobalSignOutRequest, cb)
	assert(GlobalSignOutRequest, "You must provide a GlobalSignOutRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GlobalSignOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GlobalSignOutSync(GlobalSignOutRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GlobalSignOutAsync(GlobalSignOutRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserImportJob asynchronously, invoking a callback when done
-- @param CreateUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserImportJobAsync(CreateUserImportJobRequest, cb)
	assert(CreateUserImportJobRequest, "You must provide a CreateUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateUserImportJobSync(CreateUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserImportJobAsync(CreateUserImportJobRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminSetUserSettings asynchronously, invoking a callback when done
-- @param AdminSetUserSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminSetUserSettingsAsync(AdminSetUserSettingsRequest, cb)
	assert(AdminSetUserSettingsRequest, "You must provide a AdminSetUserSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminSetUserSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminSetUserSettingsSync(AdminSetUserSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminSetUserSettingsAsync(AdminSetUserSettingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUser asynchronously, invoking a callback when done
-- @param DeleteUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserAsync(DeleteUserRequest, cb)
	assert(DeleteUserRequest, "You must provide a DeleteUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteUserSync(DeleteUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAsync(DeleteUserRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateAuth asynchronously, invoking a callback when done
-- @param InitiateAuthRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateAuthAsync(InitiateAuthRequest, cb)
	assert(InitiateAuthRequest, "You must provide a InitiateAuthRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.InitiateAuth",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.InitiateAuthSync(InitiateAuthRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateAuthAsync(InitiateAuthRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentityProviders asynchronously, invoking a callback when done
-- @param ListIdentityProvidersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentityProvidersAsync(ListIdentityProvidersRequest, cb)
	assert(ListIdentityProvidersRequest, "You must provide a ListIdentityProvidersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListIdentityProviders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListIdentityProvidersSync(ListIdentityProvidersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentityProvidersAsync(ListIdentityProvidersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetUserSettings asynchronously, invoking a callback when done
-- @param SetUserSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetUserSettingsAsync(SetUserSettingsRequest, cb)
	assert(SetUserSettingsRequest, "You must provide a SetUserSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetUserSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SetUserSettingsSync(SetUserSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetUserSettingsAsync(SetUserSettingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserPoolDomain asynchronously, invoking a callback when done
-- @param CreateUserPoolDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserPoolDomainAsync(CreateUserPoolDomainRequest, cb)
	assert(CreateUserPoolDomainRequest, "You must provide a CreateUserPoolDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPoolDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateUserPoolDomainSync(CreateUserPoolDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserPoolDomainAsync(CreateUserPoolDomainRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondToAuthChallenge asynchronously, invoking a callback when done
-- @param RespondToAuthChallengeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RespondToAuthChallengeAsync(RespondToAuthChallengeRequest, cb)
	assert(RespondToAuthChallengeRequest, "You must provide a RespondToAuthChallengeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.RespondToAuthChallenge",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RespondToAuthChallengeSync(RespondToAuthChallengeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondToAuthChallengeAsync(RespondToAuthChallengeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartUserImportJob asynchronously, invoking a callback when done
-- @param StartUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartUserImportJobAsync(StartUserImportJobRequest, cb)
	assert(StartUserImportJobRequest, "You must provide a StartUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.StartUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.StartUserImportJobSync(StartUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartUserImportJobAsync(StartUserImportJobRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserImportJob asynchronously, invoking a callback when done
-- @param DescribeUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserImportJobAsync(DescribeUserImportJobRequest, cb)
	assert(DescribeUserImportJobRequest, "You must provide a DescribeUserImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeUserImportJobSync(DescribeUserImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserImportJobAsync(DescribeUserImportJobRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGroup asynchronously, invoking a callback when done
-- @param UpdateGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGroupAsync(UpdateGroupRequest, cb)
	assert(UpdateGroupRequest, "You must provide a UpdateGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateGroupSync(UpdateGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupAsync(UpdateGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminAddUserToGroup asynchronously, invoking a callback when done
-- @param AdminAddUserToGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminAddUserToGroupAsync(AdminAddUserToGroupRequest, cb)
	assert(AdminAddUserToGroupRequest, "You must provide a AdminAddUserToGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminAddUserToGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminAddUserToGroupSync(AdminAddUserToGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminAddUserToGroupAsync(AdminAddUserToGroupRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserPool asynchronously, invoking a callback when done
-- @param CreateUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserPoolAsync(CreateUserPoolRequest, cb)
	assert(CreateUserPoolRequest, "You must provide a CreateUserPoolRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateUserPoolSync(CreateUserPoolRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserPoolAsync(CreateUserPoolRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminDeleteUserAttributes asynchronously, invoking a callback when done
-- @param AdminDeleteUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminDeleteUserAttributesAsync(AdminDeleteUserAttributesRequest, cb)
	assert(AdminDeleteUserAttributesRequest, "You must provide a AdminDeleteUserAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDeleteUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminDeleteUserAttributesSync(AdminDeleteUserAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminDeleteUserAttributesAsync(AdminDeleteUserAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPoolClient asynchronously, invoking a callback when done
-- @param DeleteUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPoolClientAsync(DeleteUserPoolClientRequest, cb)
	assert(DeleteUserPoolClientRequest, "You must provide a DeleteUserPoolClientRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteUserPoolClientSync(DeleteUserPoolClientRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPoolClientAsync(DeleteUserPoolClientRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AdminRespondToAuthChallenge asynchronously, invoking a callback when done
-- @param AdminRespondToAuthChallengeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminRespondToAuthChallengeAsync(AdminRespondToAuthChallengeRequest, cb)
	assert(AdminRespondToAuthChallengeRequest, "You must provide a AdminRespondToAuthChallengeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminRespondToAuthChallenge",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AdminRespondToAuthChallengeSync(AdminRespondToAuthChallengeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AdminRespondToAuthChallengeAsync(AdminRespondToAuthChallengeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIdentityProvider asynchronously, invoking a callback when done
-- @param CreateIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIdentityProviderAsync(CreateIdentityProviderRequest, cb)
	assert(CreateIdentityProviderRequest, "You must provide a CreateIdentityProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateIdentityProviderSync(CreateIdentityProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIdentityProviderAsync(CreateIdentityProviderRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
