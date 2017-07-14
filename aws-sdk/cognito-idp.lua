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

local AdminUserGlobalSignOutRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminUserGlobalSignOutRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUserGlobalSignOutRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminUserGlobalSignOutRequest_keys[k], "AdminUserGlobalSignOutRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUserGlobalSignOutRequest
-- <p>The request to sign out of all devices, as an administrator.</p>
-- @param Username [UsernameType] <p>The user name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminUserGlobalSignOutRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminUserGlobalSignOutRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminUserGlobalSignOutRequest(t)
	return t
end

local AdminResetUserPasswordRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminResetUserPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminResetUserPasswordRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminResetUserPasswordRequest_keys[k], "AdminResetUserPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminResetUserPasswordRequest
-- <p>Represents the request to reset a user's password as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user whose password you wish to reset.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to reset the user's password.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminResetUserPasswordRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminResetUserPasswordRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminResetUserPasswordRequest(t)
	return t
end

local GetUserResponse_keys = { "Username" = true, "MFAOptions" = true, "UserAttributes" = true, nil }

function M.AssertGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserResponse to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then M.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["UserAttributes"] then M.AssertAttributeListType(struct["UserAttributes"]) end
	for k,_ in pairs(struct) do
		assert(GetUserResponse_keys[k], "GetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserResponse
-- <p>Represents the response from the server from the request to get information about the user.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to retrieve from the get user request.</p>
-- @param MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- @param UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- Required parameter: Username
-- Required parameter: UserAttributes
function M.GetUserResponse(Username, MFAOptions, UserAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserResponse")
	local t = { 
		["Username"] = Username,
		["MFAOptions"] = MFAOptions,
		["UserAttributes"] = UserAttributes,
	}
	M.AssertGetUserResponse(t)
	return t
end

local ListIdentityProvidersResponse_keys = { "NextToken" = true, "Providers" = true, nil }

function M.AssertListIdentityProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityProvidersResponse to be of type 'table'")
	assert(struct["Providers"], "Expected key Providers to exist in table")
	if struct["NextToken"] then M.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["Providers"] then M.AssertProvidersListType(struct["Providers"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityProvidersResponse_keys[k], "ListIdentityProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityProvidersResponse
--  
-- @param NextToken [PaginationKeyType] <p>A pagination token.</p>
-- @param Providers [ProvidersListType] <p>A list of identity provider objects.</p>
-- Required parameter: Providers
function M.ListIdentityProvidersResponse(NextToken, Providers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityProvidersResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Providers"] = Providers,
	}
	M.AssertListIdentityProvidersResponse(t)
	return t
end

local InitiateAuthRequest_keys = { "ClientMetadata" = true, "AuthParameters" = true, "ClientId" = true, "AuthFlow" = true, nil }

function M.AssertInitiateAuthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateAuthRequest to be of type 'table'")
	assert(struct["AuthFlow"], "Expected key AuthFlow to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["ClientMetadata"] then M.AssertClientMetadataType(struct["ClientMetadata"]) end
	if struct["AuthParameters"] then M.AssertAuthParametersType(struct["AuthParameters"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["AuthFlow"] then M.AssertAuthFlowType(struct["AuthFlow"]) end
	for k,_ in pairs(struct) do
		assert(InitiateAuthRequest_keys[k], "InitiateAuthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateAuthRequest
-- <p>Initiates the authentication request.</p>
-- @param ClientMetadata [ClientMetadataType] <p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>
-- @param AuthParameters [AuthParametersType] <p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRPA</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>REFRESH_TOKEN</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>
-- @param ClientId [ClientIdType] <p>The app client ID.</p>
-- @param AuthFlow [AuthFlowType] <p>The authentication flow for this call to execute. The API action will depend on this value. For example: </p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in USERNAME and SRPA and return the SRP variables to be used for next challenge execution.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> </ul> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>
-- Required parameter: AuthFlow
-- Required parameter: ClientId
function M.InitiateAuthRequest(ClientMetadata, AuthParameters, ClientId, AuthFlow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateAuthRequest")
	local t = { 
		["ClientMetadata"] = ClientMetadata,
		["AuthParameters"] = AuthParameters,
		["ClientId"] = ClientId,
		["AuthFlow"] = AuthFlow,
	}
	M.AssertInitiateAuthRequest(t)
	return t
end

local DeleteUserPoolDomainRequest_keys = { "Domain" = true, "UserPoolId" = true, nil }

function M.AssertDeleteUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Domain"] then M.AssertDomainType(struct["Domain"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserPoolDomainRequest_keys[k], "DeleteUserPoolDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolDomainRequest
--  
-- @param Domain [DomainType] <p>The domain string.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: Domain
-- Required parameter: UserPoolId
function M.DeleteUserPoolDomainRequest(Domain, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserPoolDomainRequest")
	local t = { 
		["Domain"] = Domain,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDeleteUserPoolDomainRequest(t)
	return t
end

local GetIdentityProviderByIdentifierRequest_keys = { "IdpIdentifier" = true, "UserPoolId" = true, nil }

function M.AssertGetIdentityProviderByIdentifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityProviderByIdentifierRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["IdpIdentifier"], "Expected key IdpIdentifier to exist in table")
	if struct["IdpIdentifier"] then M.AssertIdpIdentifierType(struct["IdpIdentifier"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityProviderByIdentifierRequest_keys[k], "GetIdentityProviderByIdentifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityProviderByIdentifierRequest
--  
-- @param IdpIdentifier [IdpIdentifierType] <p>The identity provider ID.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: IdpIdentifier
function M.GetIdentityProviderByIdentifierRequest(IdpIdentifier, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityProviderByIdentifierRequest")
	local t = { 
		["IdpIdentifier"] = IdpIdentifier,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertGetIdentityProviderByIdentifierRequest(t)
	return t
end

local CreateUserPoolDomainResponse_keys = { nil }

function M.AssertCreateUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateUserPoolDomainResponse_keys[k], "CreateUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolDomainResponse
--  
function M.CreateUserPoolDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserPoolDomainResponse")
	local t = { 
	}
	M.AssertCreateUserPoolDomainResponse(t)
	return t
end

local CreateUserImportJobResponse_keys = { "UserImportJob" = true, nil }

function M.AssertCreateUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then M.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserImportJobResponse_keys[k], "CreateUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserImportJobResponse
-- <p>Represents the response from the server to the request to create the user import job.</p>
-- @param UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
function M.CreateUserImportJobResponse(UserImportJob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserImportJobResponse")
	local t = { 
		["UserImportJob"] = UserImportJob,
	}
	M.AssertCreateUserImportJobResponse(t)
	return t
end

local IdentityProviderType_keys = { "UserPoolId" = true, "ProviderName" = true, "LastModifiedDate" = true, "ProviderType" = true, "ProviderDetails" = true, "IdpIdentifiers" = true, "AttributeMapping" = true, "CreationDate" = true, nil }

function M.AssertIdentityProviderType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityProviderType to be of type 'table'")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ProviderName"] then M.AssertProviderNameType(struct["ProviderName"]) end
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ProviderType"] then M.AssertIdentityProviderTypeType(struct["ProviderType"]) end
	if struct["ProviderDetails"] then M.AssertProviderDetailsType(struct["ProviderDetails"]) end
	if struct["IdpIdentifiers"] then M.AssertIdpIdentifiersListType(struct["IdpIdentifiers"]) end
	if struct["AttributeMapping"] then M.AssertAttributeMappingType(struct["AttributeMapping"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(IdentityProviderType_keys[k], "IdentityProviderType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityProviderType
-- <p>A container for information about an identity provider.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- @param ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- @param LastModifiedDate [DateType] <p>The date the identity provider was last modified.</p>
-- @param ProviderType [IdentityProviderTypeType] <p>The identity provider type.</p>
-- @param ProviderDetails [ProviderDetailsType] <p>The identity provider details, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>
-- @param IdpIdentifiers [IdpIdentifiersListType] <p>A list of identity provider identifiers.</p>
-- @param AttributeMapping [AttributeMappingType] <p>A mapping of identity provider attributes to standard and custom user pool attributes.</p>
-- @param CreationDate [DateType] <p>The date the identity provider was created.</p>
function M.IdentityProviderType(UserPoolId, ProviderName, LastModifiedDate, ProviderType, ProviderDetails, IdpIdentifiers, AttributeMapping, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityProviderType")
	local t = { 
		["UserPoolId"] = UserPoolId,
		["ProviderName"] = ProviderName,
		["LastModifiedDate"] = LastModifiedDate,
		["ProviderType"] = ProviderType,
		["ProviderDetails"] = ProviderDetails,
		["IdpIdentifiers"] = IdpIdentifiers,
		["AttributeMapping"] = AttributeMapping,
		["CreationDate"] = CreationDate,
	}
	M.AssertIdentityProviderType(t)
	return t
end

local ResendConfirmationCodeRequest_keys = { "Username" = true, "SecretHash" = true, "ClientId" = true, nil }

function M.AssertResendConfirmationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendConfirmationCodeRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["SecretHash"] then M.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(ResendConfirmationCodeRequest_keys[k], "ResendConfirmationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendConfirmationCodeRequest
-- <p>Represents the request to resend the confirmation code.</p>
-- @param Username [UsernameType] <p>The user name of the user to whom you wish to resend a confirmation code.</p>
-- @param SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required parameter: ClientId
-- Required parameter: Username
function M.ResendConfirmationCodeRequest(Username, SecretHash, ClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendConfirmationCodeRequest")
	local t = { 
		["Username"] = Username,
		["SecretHash"] = SecretHash,
		["ClientId"] = ClientId,
	}
	M.AssertResendConfirmationCodeRequest(t)
	return t
end

local AdminGetUserRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminGetUserRequest_keys[k], "AdminGetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetUserRequest
-- <p>Represents the request to get the specified user as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to retrieve.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to get information about the user.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminGetUserRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminGetUserRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminGetUserRequest(t)
	return t
end

local UpdateUserAttributesResponse_keys = { "CodeDeliveryDetailsList" = true, nil }

function M.AssertUpdateUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserAttributesResponse to be of type 'table'")
	if struct["CodeDeliveryDetailsList"] then M.AssertCodeDeliveryDetailsListType(struct["CodeDeliveryDetailsList"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserAttributesResponse_keys[k], "UpdateUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserAttributesResponse
-- <p>Represents the response from the server for the request to update user attributes.</p>
-- @param CodeDeliveryDetailsList [CodeDeliveryDetailsListType] <p>The code delivery details list from the server for the request to update user attributes.</p>
function M.UpdateUserAttributesResponse(CodeDeliveryDetailsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserAttributesResponse")
	local t = { 
		["CodeDeliveryDetailsList"] = CodeDeliveryDetailsList,
	}
	M.AssertUpdateUserAttributesResponse(t)
	return t
end

local ListUserPoolClientsRequest_keys = { "NextToken" = true, "MaxResults" = true, "UserPoolId" = true, nil }

function M.AssertListUserPoolClientsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolClientsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertQueryLimit(struct["MaxResults"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(ListUserPoolClientsRequest_keys[k], "ListUserPoolClientsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolClientsRequest
-- <p>Represents the request to list the user pool clients.</p>
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param MaxResults [QueryLimit] <p>The maximum number of results you want the request to return when listing the user pool clients.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to list user pool clients.</p>
-- Required parameter: UserPoolId
function M.ListUserPoolClientsRequest(NextToken, MaxResults, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoolClientsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertListUserPoolClientsRequest(t)
	return t
end

local UserType_keys = { "Username" = true, "MFAOptions" = true, "Enabled" = true, "UserStatus" = true, "UserCreateDate" = true, "UserLastModifiedDate" = true, "Attributes" = true, nil }

function M.AssertUserType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserType to be of type 'table'")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then M.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["Enabled"] then M.AssertBooleanType(struct["Enabled"]) end
	if struct["UserStatus"] then M.AssertUserStatusType(struct["UserStatus"]) end
	if struct["UserCreateDate"] then M.AssertDateType(struct["UserCreateDate"]) end
	if struct["UserLastModifiedDate"] then M.AssertDateType(struct["UserLastModifiedDate"]) end
	if struct["Attributes"] then M.AssertAttributeListType(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(UserType_keys[k], "UserType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserType
-- <p>The user type.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to describe.</p>
-- @param MFAOptions [MFAOptionListType] <p>The MFA options for the user.</p>
-- @param Enabled [BooleanType] <p>Specifies whether the user is enabled.</p>
-- @param UserStatus [UserStatusType] <p>The user status. Can be one of the following:</p> <ul> <li> <p>UNCONFIRMED - User has been created but not confirmed.</p> </li> <li> <p>CONFIRMED - User has been confirmed.</p> </li> <li> <p>ARCHIVED - User is no longer active.</p> </li> <li> <p>COMPROMISED - User is disabled due to a potential security threat.</p> </li> <li> <p>UNKNOWN - User status is not known.</p> </li> </ul>
-- @param UserCreateDate [DateType] <p>The creation date of the user.</p>
-- @param UserLastModifiedDate [DateType] <p>The last modified date of the user.</p>
-- @param Attributes [AttributeListType] <p>A container with information about the user type attributes.</p>
function M.UserType(Username, MFAOptions, Enabled, UserStatus, UserCreateDate, UserLastModifiedDate, Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserType")
	local t = { 
		["Username"] = Username,
		["MFAOptions"] = MFAOptions,
		["Enabled"] = Enabled,
		["UserStatus"] = UserStatus,
		["UserCreateDate"] = UserCreateDate,
		["UserLastModifiedDate"] = UserLastModifiedDate,
		["Attributes"] = Attributes,
	}
	M.AssertUserType(t)
	return t
end

local ListUserImportJobsRequest_keys = { "PaginationToken" = true, "MaxResults" = true, "UserPoolId" = true, nil }

function M.AssertListUserImportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserImportJobsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["PaginationToken"] then M.AssertPaginationKeyType(struct["PaginationToken"]) end
	if struct["MaxResults"] then M.AssertPoolQueryLimitType(struct["MaxResults"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(ListUserImportJobsRequest_keys[k], "ListUserImportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserImportJobsRequest
-- <p>Represents the request to list the user import jobs.</p>
-- @param PaginationToken [PaginationKeyType] <p>An identifier that was returned from the previous call to <code>ListUserImportJobs</code>, which can be used to return the next set of import jobs in the list.</p>
-- @param MaxResults [PoolQueryLimitType] <p>The maximum number of import jobs you want the request to return.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- Required parameter: UserPoolId
-- Required parameter: MaxResults
function M.ListUserImportJobsRequest(PaginationToken, MaxResults, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserImportJobsRequest")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["MaxResults"] = MaxResults,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertListUserImportJobsRequest(t)
	return t
end

local DeleteUserPoolClientRequest_keys = { "ClientId" = true, "UserPoolId" = true, nil }

function M.AssertDeleteUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserPoolClientRequest_keys[k], "DeleteUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolClientRequest
-- <p>Represents the request to delete a user pool client.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete the client.</p>
-- Required parameter: UserPoolId
-- Required parameter: ClientId
function M.DeleteUserPoolClientRequest(ClientId, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserPoolClientRequest")
	local t = { 
		["ClientId"] = ClientId,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDeleteUserPoolClientRequest(t)
	return t
end

local ListDevicesRequest_keys = { "PaginationToken" = true, "Limit" = true, "AccessToken" = true, nil }

function M.AssertListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["PaginationToken"] then M.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Limit"] then M.AssertQueryLimitType(struct["Limit"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDevicesRequest_keys[k], "ListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesRequest
-- <p>Represents the request to list the devices.</p>
-- @param PaginationToken [SearchPaginationTokenType] <p>The pagination token for the list request.</p>
-- @param Limit [QueryLimitType] <p>The limit of the device request.</p>
-- @param AccessToken [TokenModelType] <p>The access tokens for the request to list devices.</p>
-- Required parameter: AccessToken
function M.ListDevicesRequest(PaginationToken, Limit, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevicesRequest")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["Limit"] = Limit,
		["AccessToken"] = AccessToken,
	}
	M.AssertListDevicesRequest(t)
	return t
end

local UserPoolClientType_keys = { "ClientSecret" = true, "CallbackURLs" = true, "AllowedOAuthScopes" = true, "UserPoolId" = true, "AllowedOAuthFlowsUserPoolClient" = true, "LastModifiedDate" = true, "ClientId" = true, "DefaultRedirectURI" = true, "AllowedOAuthFlows" = true, "ExplicitAuthFlows" = true, "LogoutURLs" = true, "WriteAttributes" = true, "SupportedIdentityProviders" = true, "ReadAttributes" = true, "RefreshTokenValidity" = true, "CreationDate" = true, "ClientName" = true, nil }

function M.AssertUserPoolClientType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolClientType to be of type 'table'")
	if struct["ClientSecret"] then M.AssertClientSecretType(struct["ClientSecret"]) end
	if struct["CallbackURLs"] then M.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["AllowedOAuthScopes"] then M.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then M.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["DefaultRedirectURI"] then M.AssertRedirectUrlType(struct["DefaultRedirectURI"]) end
	if struct["AllowedOAuthFlows"] then M.AssertOAuthFlowsType(struct["AllowedOAuthFlows"]) end
	if struct["ExplicitAuthFlows"] then M.AssertExplicitAuthFlowsListType(struct["ExplicitAuthFlows"]) end
	if struct["LogoutURLs"] then M.AssertLogoutURLsListType(struct["LogoutURLs"]) end
	if struct["WriteAttributes"] then M.AssertClientPermissionListType(struct["WriteAttributes"]) end
	if struct["SupportedIdentityProviders"] then M.AssertSupportedIdentityProvidersListType(struct["SupportedIdentityProviders"]) end
	if struct["ReadAttributes"] then M.AssertClientPermissionListType(struct["ReadAttributes"]) end
	if struct["RefreshTokenValidity"] then M.AssertRefreshTokenValidityType(struct["RefreshTokenValidity"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	if struct["ClientName"] then M.AssertClientNameType(struct["ClientName"]) end
	for k,_ in pairs(struct) do
		assert(UserPoolClientType_keys[k], "UserPoolClientType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolClientType
-- <p>A user pool of the client type.</p>
-- @param ClientSecret [ClientSecretType] <p>The client secret from the user pool request of the client type.</p>
-- @param CallbackURLs [CallbackURLsListType] <p>A list of allowed callback URLs for the identity providers.</p>
-- @param AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool client.</p>
-- @param AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- @param LastModifiedDate [DateType] <p>The date the user pool client was last modified.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- @param DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
-- @param AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- @param ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>The explicit authentication flows.</p>
-- @param LogoutURLs [LogoutURLsListType] <p>A list ofallowed logout URLs for the identity providers.</p>
-- @param WriteAttributes [ClientPermissionListType] <p>The writeable attributes.</p>
-- @param SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- @param ReadAttributes [ClientPermissionListType] <p>The Read-only attributes.</p>
-- @param RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- @param CreationDate [DateType] <p>The date the user pool client was created.</p>
-- @param ClientName [ClientNameType] <p>The client name from the user pool request of the client type.</p>
function M.UserPoolClientType(ClientSecret, CallbackURLs, AllowedOAuthScopes, UserPoolId, AllowedOAuthFlowsUserPoolClient, LastModifiedDate, ClientId, DefaultRedirectURI, AllowedOAuthFlows, ExplicitAuthFlows, LogoutURLs, WriteAttributes, SupportedIdentityProviders, ReadAttributes, RefreshTokenValidity, CreationDate, ClientName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserPoolClientType")
	local t = { 
		["ClientSecret"] = ClientSecret,
		["CallbackURLs"] = CallbackURLs,
		["AllowedOAuthScopes"] = AllowedOAuthScopes,
		["UserPoolId"] = UserPoolId,
		["AllowedOAuthFlowsUserPoolClient"] = AllowedOAuthFlowsUserPoolClient,
		["LastModifiedDate"] = LastModifiedDate,
		["ClientId"] = ClientId,
		["DefaultRedirectURI"] = DefaultRedirectURI,
		["AllowedOAuthFlows"] = AllowedOAuthFlows,
		["ExplicitAuthFlows"] = ExplicitAuthFlows,
		["LogoutURLs"] = LogoutURLs,
		["WriteAttributes"] = WriteAttributes,
		["SupportedIdentityProviders"] = SupportedIdentityProviders,
		["ReadAttributes"] = ReadAttributes,
		["RefreshTokenValidity"] = RefreshTokenValidity,
		["CreationDate"] = CreationDate,
		["ClientName"] = ClientName,
	}
	M.AssertUserPoolClientType(t)
	return t
end

local AdminDeleteUserAttributesRequest_keys = { "Username" = true, "UserAttributeNames" = true, "UserPoolId" = true, nil }

function M.AssertAdminDeleteUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDeleteUserAttributesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributeNames"], "Expected key UserAttributeNames to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserAttributeNames"] then M.AssertAttributeNameListType(struct["UserAttributeNames"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminDeleteUserAttributesRequest_keys[k], "AdminDeleteUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDeleteUserAttributesRequest
-- <p>Represents the request to delete user attributes as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user from which you would like to delete attributes.</p>
-- @param UserAttributeNames [AttributeNameListType] <p>An array of strings representing the user attribute names you wish to delete.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete user attributes.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: UserAttributeNames
function M.AdminDeleteUserAttributesRequest(Username, UserAttributeNames, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminDeleteUserAttributesRequest")
	local t = { 
		["Username"] = Username,
		["UserAttributeNames"] = UserAttributeNames,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminDeleteUserAttributesRequest(t)
	return t
end

local TooManyFailedAttemptsException_keys = { "message" = true, nil }

function M.AssertTooManyFailedAttemptsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyFailedAttemptsException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyFailedAttemptsException_keys[k], "TooManyFailedAttemptsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyFailedAttemptsException
-- <p>This exception is thrown when the user has made too many failed attempts for a given action (e.g., sign in).</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service returns a too many failed attempts exception.</p>
function M.TooManyFailedAttemptsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyFailedAttemptsException")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyFailedAttemptsException(t)
	return t
end

local AdminCreateUserRequest_keys = { "Username" = true, "MessageAction" = true, "UserPoolId" = true, "ValidationData" = true, "UserAttributes" = true, "ForceAliasCreation" = true, "TemporaryPassword" = true, "DesiredDeliveryMediums" = true, nil }

function M.AssertAdminCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminCreateUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["MessageAction"] then M.AssertMessageActionType(struct["MessageAction"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ValidationData"] then M.AssertAttributeListType(struct["ValidationData"]) end
	if struct["UserAttributes"] then M.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["ForceAliasCreation"] then M.AssertForceAliasCreation(struct["ForceAliasCreation"]) end
	if struct["TemporaryPassword"] then M.AssertPasswordType(struct["TemporaryPassword"]) end
	if struct["DesiredDeliveryMediums"] then M.AssertDeliveryMediumListType(struct["DesiredDeliveryMediums"]) end
	for k,_ in pairs(struct) do
		assert(AdminCreateUserRequest_keys[k], "AdminCreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminCreateUserRequest
-- <p>Represents the request to create a user in the specified user pool.</p>
-- @param Username [UsernameType] <p>The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.</p>
-- @param MessageAction [MessageActionType] <p>Set to <code>"RESEND"</code> to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to <code>"SUPPRESS"</code> to suppress sending the message. Only one value can be specified.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where the user will be created.</p>
-- @param ValidationData [AttributeListType] <p>The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. For example, you might choose to allow or disallow user sign-up based on the user's domain.</p> <p>To configure custom validation, you must create a Pre Sign-up Lambda trigger for the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the validation data and uses it in the validation process.</p> <p>The user's validation data is not persisted.</p>
-- @param UserAttributes [AttributeListType] <p>An array of name-value pairs that contain user attributes and attribute values to be set for the user to be created. You can create a user without specifying any attributes other than <code>Username</code>. However, any attributes that you specify as required (in <a href="API_CreateUserPool.html">CreateUserPool</a> or in the <b>Attributes</b> tab of the console) must be supplied either by you (in your call to <code>AdminCreateUser</code>) or by the user (when he or she signs up in response to your welcome message).</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>To send a message inviting the user to sign up, you must specify the user's email address or phone number. This can be done in your call to AdminCreateUser or in the <b>Users</b> tab of the Amazon Cognito console for managing your user pools.</p> <p>In your call to <code>AdminCreateUser</code>, you can set the <code>email_verified</code> attribute to <code>True</code>, and you can set the <code>phone_number_verified</code> attribute to <code>True</code>. (You can also do this by calling <a href="API_AdminUpdateUserAttributes.html">AdminUpdateUserAttributes</a>.)</p> <ul> <li> <p> <b>email</b>: The email address of the user to whom the message that contains the code and username will be sent. Required if the <code>email_verified</code> attribute is set to <code>True</code>, or if <code>"EMAIL"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> <li> <p> <b>phone_number</b>: The phone number of the user to whom the message that contains the code and username will be sent. Required if the <code>phone_number_verified</code> attribute is set to <code>True</code>, or if <code>"SMS"</code> is specified in the <code>DesiredDeliveryMediums</code> parameter.</p> </li> </ul>
-- @param ForceAliasCreation [ForceAliasCreation] <p>This parameter is only used if the <code>phone_number_verified</code> or <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is ignored.</p> <p>If this parameter is set to <code>True</code> and the phone number or email address specified in the UserAttributes parameter already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias.</p> <p>If this parameter is set to <code>False</code>, the API throws an <code>AliasExistsException</code> error if the alias already exists. The default value is <code>False</code>.</p>
-- @param TemporaryPassword [PasswordType] <p>The user's temporary password. This password must conform to the password policy that you specified when you created the user pool.</p> <p>The temporary password is valid only once. To complete the Admin Create User flow, the user must enter the temporary password in the sign-in page along with a new password to be used in all future sign-ins.</p> <p>This parameter is not required. If you do not specify a value, Amazon Cognito generates one for you.</p> <p>The temporary password can only be used until the user account expiration limit that you specified when you created the user pool. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the <code>MessageAction</code> parameter.</p>
-- @param DesiredDeliveryMediums [DeliveryMediumListType] <p>Specify <code>"EMAIL"</code> if email will be used to send the welcome message. Specify <code>"SMS"</code> if the phone number will be used. The default value is <code>"SMS"</code>. More than one value can be specified.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminCreateUserRequest(Username, MessageAction, UserPoolId, ValidationData, UserAttributes, ForceAliasCreation, TemporaryPassword, DesiredDeliveryMediums, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminCreateUserRequest")
	local t = { 
		["Username"] = Username,
		["MessageAction"] = MessageAction,
		["UserPoolId"] = UserPoolId,
		["ValidationData"] = ValidationData,
		["UserAttributes"] = UserAttributes,
		["ForceAliasCreation"] = ForceAliasCreation,
		["TemporaryPassword"] = TemporaryPassword,
		["DesiredDeliveryMediums"] = DesiredDeliveryMediums,
	}
	M.AssertAdminCreateUserRequest(t)
	return t
end

local InvalidPasswordException_keys = { "message" = true, nil }

function M.AssertInvalidPasswordException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPasswordException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidPasswordException_keys[k], "InvalidPasswordException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPasswordException
-- <p>This exception is thrown when the Amazon Cognito service encounters an invalid password.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service throws an invalid user password exception.</p>
function M.InvalidPasswordException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPasswordException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidPasswordException(t)
	return t
end

local DeleteUserPoolDomainResponse_keys = { nil }

function M.AssertDeleteUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteUserPoolDomainResponse_keys[k], "DeleteUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolDomainResponse
--  
function M.DeleteUserPoolDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserPoolDomainResponse")
	local t = { 
	}
	M.AssertDeleteUserPoolDomainResponse(t)
	return t
end

local UpdateGroupResponse_keys = { "Group" = true, nil }

function M.AssertUpdateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupResponse to be of type 'table'")
	if struct["Group"] then M.AssertGroupType(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGroupResponse_keys[k], "UpdateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupResponse
--  
-- @param Group [GroupType] <p>The group object for the group.</p>
function M.UpdateGroupResponse(Group, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupResponse")
	local t = { 
		["Group"] = Group,
	}
	M.AssertUpdateGroupResponse(t)
	return t
end

local CreateGroupRequest_keys = { "GroupName" = true, "RoleArn" = true, "Precedence" = true, "Description" = true, "UserPoolId" = true, nil }

function M.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["RoleArn"] then M.AssertArnType(struct["RoleArn"]) end
	if struct["Precedence"] then M.AssertPrecedenceType(struct["Precedence"]) end
	if struct["Description"] then M.AssertDescriptionType(struct["Description"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupRequest_keys[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param GroupName [GroupNameType] <p>The name of the group. Must be unique.</p>
-- @param RoleArn [ArnType] <p>The role ARN for the group.</p>
-- @param Precedence [PrecedenceType] <p>A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. Zero is the highest precedence value. Groups with lower <code>Precedence</code> values take precedence over groups with higher or null <code>Precedence</code> values. If a user belongs to two or more groups, it is the group with the lowest precedence value whose role ARN will be used in the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the user's tokens.</p> <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither group takes precedence over the other. If two groups with the same <code>Precedence</code> have the same role ARN, that role is used in the <code>cognito:preferred_role</code> claim in tokens for users in each group. If the two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is not set in users' tokens.</p> <p>The default <code>Precedence</code> value is null.</p>
-- @param Description [DescriptionType] <p>A string containing the description of the group.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: GroupName
-- Required parameter: UserPoolId
function M.CreateGroupRequest(GroupName, RoleArn, Precedence, Description, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupRequest")
	local t = { 
		["GroupName"] = GroupName,
		["RoleArn"] = RoleArn,
		["Precedence"] = Precedence,
		["Description"] = Description,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertCreateGroupRequest(t)
	return t
end

local GetGroupRequest_keys = { "GroupName" = true, "UserPoolId" = true, nil }

function M.AssertGetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupRequest_keys[k], "GetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupRequest
--  
-- @param GroupName [GroupNameType] <p>The name of the group.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: GroupName
-- Required parameter: UserPoolId
function M.GetGroupRequest(GroupName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupRequest")
	local t = { 
		["GroupName"] = GroupName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertGetGroupRequest(t)
	return t
end

local ListUsersResponse_keys = { "PaginationToken" = true, "Users" = true, nil }

function M.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	if struct["PaginationToken"] then M.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Users"] then M.AssertUsersListType(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(ListUsersResponse_keys[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
-- <p>The response from the request to list users.</p>
-- @param PaginationToken [SearchPaginationTokenType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Users [UsersListType] <p>The users returned in the request to list users.</p>
function M.ListUsersResponse(PaginationToken, Users, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersResponse")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["Users"] = Users,
	}
	M.AssertListUsersResponse(t)
	return t
end

local NotAuthorizedException_keys = { "message" = true, nil }

function M.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotAuthorizedException_keys[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>This exception is thrown when a user is not authorized.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service returns a not authorized exception.</p>
function M.NotAuthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotAuthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotAuthorizedException(t)
	return t
end

local UserPoolClientDescription_keys = { "ClientName" = true, "UserPoolId" = true, "ClientId" = true, nil }

function M.AssertUserPoolClientDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolClientDescription to be of type 'table'")
	if struct["ClientName"] then M.AssertClientNameType(struct["ClientName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(UserPoolClientDescription_keys[k], "UserPoolClientDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolClientDescription
-- <p>The description of the user pool client.</p>
-- @param ClientName [ClientNameType] <p>The client name from the user pool client description.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to describe the user pool client.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
function M.UserPoolClientDescription(ClientName, UserPoolId, ClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserPoolClientDescription")
	local t = { 
		["ClientName"] = ClientName,
		["UserPoolId"] = UserPoolId,
		["ClientId"] = ClientId,
	}
	M.AssertUserPoolClientDescription(t)
	return t
end

local StartUserImportJobRequest_keys = { "UserPoolId" = true, "JobId" = true, nil }

function M.AssertStartUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartUserImportJobRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobId"] then M.AssertUserImportJobIdType(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(StartUserImportJobRequest_keys[k], "StartUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartUserImportJobRequest
-- <p>Represents the request to start the user import job.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- @param JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- Required parameter: UserPoolId
-- Required parameter: JobId
function M.StartUserImportJobRequest(UserPoolId, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartUserImportJobRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
		["JobId"] = JobId,
	}
	M.AssertStartUserImportJobRequest(t)
	return t
end

local StringAttributeConstraintsType_keys = { "MinLength" = true, "MaxLength" = true, nil }

function M.AssertStringAttributeConstraintsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StringAttributeConstraintsType to be of type 'table'")
	if struct["MinLength"] then M.AssertStringType(struct["MinLength"]) end
	if struct["MaxLength"] then M.AssertStringType(struct["MaxLength"]) end
	for k,_ in pairs(struct) do
		assert(StringAttributeConstraintsType_keys[k], "StringAttributeConstraintsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StringAttributeConstraintsType
-- <p>The type of constraints associated with an attribute of the string type.</p>
-- @param MinLength [StringType] <p>The minimum length of an attribute value of the string type.</p>
-- @param MaxLength [StringType] <p>The maximum length of an attribute value of the string type.</p>
function M.StringAttributeConstraintsType(MinLength, MaxLength, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StringAttributeConstraintsType")
	local t = { 
		["MinLength"] = MinLength,
		["MaxLength"] = MaxLength,
	}
	M.AssertStringAttributeConstraintsType(t)
	return t
end

local UnexpectedLambdaException_keys = { "message" = true, nil }

function M.AssertUnexpectedLambdaException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnexpectedLambdaException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnexpectedLambdaException_keys[k], "UnexpectedLambdaException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnexpectedLambdaException
-- <p>This exception is thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service returns an unexpected AWS Lambda exception.</p>
function M.UnexpectedLambdaException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnexpectedLambdaException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnexpectedLambdaException(t)
	return t
end

local AdminListGroupsForUserResponse_keys = { "NextToken" = true, "Groups" = true, nil }

function M.AssertAdminListGroupsForUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListGroupsForUserResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Groups"] then M.AssertGroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(AdminListGroupsForUserResponse_keys[k], "AdminListGroupsForUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListGroupsForUserResponse
--  
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Groups [GroupListType] <p>The groups that the user belongs to.</p>
function M.AdminListGroupsForUserResponse(NextToken, Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminListGroupsForUserResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Groups"] = Groups,
	}
	M.AssertAdminListGroupsForUserResponse(t)
	return t
end

local UpdateUserAttributesRequest_keys = { "UserAttributes" = true, "AccessToken" = true, nil }

function M.AssertUpdateUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserAttributesRequest to be of type 'table'")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["UserAttributes"] then M.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserAttributesRequest_keys[k], "UpdateUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserAttributesRequest
-- <p>Represents the request to update user attributes.</p>
-- @param UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- @param AccessToken [TokenModelType] <p>The access token for the request to update user attributes.</p>
-- Required parameter: UserAttributes
-- Required parameter: AccessToken
function M.UpdateUserAttributesRequest(UserAttributes, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserAttributesRequest")
	local t = { 
		["UserAttributes"] = UserAttributes,
		["AccessToken"] = AccessToken,
	}
	M.AssertUpdateUserAttributesRequest(t)
	return t
end

local UpdateUserPoolClientResponse_keys = { "UserPoolClient" = true, nil }

function M.AssertUpdateUserPoolClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolClientResponse to be of type 'table'")
	if struct["UserPoolClient"] then M.AssertUserPoolClientType(struct["UserPoolClient"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserPoolClientResponse_keys[k], "UpdateUserPoolClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolClientResponse
-- <p>Represents the response from the server to the request to update the user pool client.</p>
-- @param UserPoolClient [UserPoolClientType] <p>The user pool client value from the response from the server when an update user pool client request is made.</p>
function M.UpdateUserPoolClientResponse(UserPoolClient, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserPoolClientResponse")
	local t = { 
		["UserPoolClient"] = UserPoolClient,
	}
	M.AssertUpdateUserPoolClientResponse(t)
	return t
end

local SignUpResponse_keys = { "UserConfirmed" = true, "UserSub" = true, "CodeDeliveryDetails" = true, nil }

function M.AssertSignUpResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignUpResponse to be of type 'table'")
	assert(struct["UserConfirmed"], "Expected key UserConfirmed to exist in table")
	assert(struct["UserSub"], "Expected key UserSub to exist in table")
	if struct["UserConfirmed"] then M.AssertBooleanType(struct["UserConfirmed"]) end
	if struct["UserSub"] then M.AssertStringType(struct["UserSub"]) end
	if struct["CodeDeliveryDetails"] then M.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(SignUpResponse_keys[k], "SignUpResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignUpResponse
-- <p>The response from the server for a registration request.</p>
-- @param UserConfirmed [BooleanType] <p>A response from the server indicating that a user registration has been confirmed.</p>
-- @param UserSub [StringType] <p>The UUID of the authenticated user. This is not the same as <code>username</code>.</p>
-- @param CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server response to the user registration request.</p>
-- Required parameter: UserConfirmed
-- Required parameter: UserSub
function M.SignUpResponse(UserConfirmed, UserSub, CodeDeliveryDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignUpResponse")
	local t = { 
		["UserConfirmed"] = UserConfirmed,
		["UserSub"] = UserSub,
		["CodeDeliveryDetails"] = CodeDeliveryDetails,
	}
	M.AssertSignUpResponse(t)
	return t
end

local UpdateDeviceStatusRequest_keys = { "DeviceKey" = true, "DeviceRememberedStatus" = true, "AccessToken" = true, nil }

function M.AssertUpdateDeviceStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceStatusRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceRememberedStatus"] then M.AssertDeviceRememberedStatusType(struct["DeviceRememberedStatus"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDeviceStatusRequest_keys[k], "UpdateDeviceStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceStatusRequest
-- <p>Represents the request to update the device status.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param DeviceRememberedStatus [DeviceRememberedStatusType] <p>The status of whether a device is remembered.</p>
-- @param AccessToken [TokenModelType] <p>The access token.</p>
-- Required parameter: AccessToken
-- Required parameter: DeviceKey
function M.UpdateDeviceStatusRequest(DeviceKey, DeviceRememberedStatus, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeviceStatusRequest")
	local t = { 
		["DeviceKey"] = DeviceKey,
		["DeviceRememberedStatus"] = DeviceRememberedStatus,
		["AccessToken"] = AccessToken,
	}
	M.AssertUpdateDeviceStatusRequest(t)
	return t
end

local AliasExistsException_keys = { "message" = true, nil }

function M.AssertAliasExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasExistsException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AliasExistsException_keys[k], "AliasExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasExistsException
-- <p>This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.</p>
-- @param message [MessageType] <p>The message sent to the user when an alias exists.</p>
function M.AliasExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AliasExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertAliasExistsException(t)
	return t
end

local AdminListDevicesResponse_keys = { "PaginationToken" = true, "Devices" = true, nil }

function M.AssertAdminListDevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListDevicesResponse to be of type 'table'")
	if struct["PaginationToken"] then M.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Devices"] then M.AssertDeviceListType(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(AdminListDevicesResponse_keys[k], "AdminListDevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListDevicesResponse
-- <p>Lists the device's response, as an administrator.</p>
-- @param PaginationToken [SearchPaginationTokenType] <p>The pagination token.</p>
-- @param Devices [DeviceListType] <p>The devices in the list of devices response.</p>
function M.AdminListDevicesResponse(PaginationToken, Devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminListDevicesResponse")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["Devices"] = Devices,
	}
	M.AssertAdminListDevicesResponse(t)
	return t
end

local GroupType_keys = { "Description" = true, "Precedence" = true, "LastModifiedDate" = true, "RoleArn" = true, "GroupName" = true, "UserPoolId" = true, "CreationDate" = true, nil }

function M.AssertGroupType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupType to be of type 'table'")
	if struct["Description"] then M.AssertDescriptionType(struct["Description"]) end
	if struct["Precedence"] then M.AssertPrecedenceType(struct["Precedence"]) end
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["RoleArn"] then M.AssertArnType(struct["RoleArn"]) end
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(GroupType_keys[k], "GroupType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupType
-- <p>The group type.</p>
-- @param Description [DescriptionType] <p>A string containing the description of the group.</p>
-- @param Precedence [PrecedenceType] <p>A nonnegative integer value that specifies the precedence of this group relative to the other groups that a user can belong to in the user pool. If a user belongs to two or more groups, it is the group with the highest precedence whose role ARN will be used in the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the user's tokens. Groups with higher <code>Precedence</code> values take precedence over groups with lower <code>Precedence</code> values or with null <code>Precedence</code> values.</p> <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither group takes precedence over the other. If two groups with the same <code>Precedence</code> have the same role ARN, that role is used in the <code>cognito:preferred_role</code> claim in tokens for users in each group. If the two groups have different role ARNs, the <code>cognito:preferred_role</code> claim is not set in users' tokens.</p> <p>The default <code>Precedence</code> value is null.</p>
-- @param LastModifiedDate [DateType] <p>The date the group was last modified.</p>
-- @param RoleArn [ArnType] <p>The role ARN for the group.</p>
-- @param GroupName [GroupNameType] <p>The name of the group.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- @param CreationDate [DateType] <p>The date the group was created.</p>
function M.GroupType(Description, Precedence, LastModifiedDate, RoleArn, GroupName, UserPoolId, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupType")
	local t = { 
		["Description"] = Description,
		["Precedence"] = Precedence,
		["LastModifiedDate"] = LastModifiedDate,
		["RoleArn"] = RoleArn,
		["GroupName"] = GroupName,
		["UserPoolId"] = UserPoolId,
		["CreationDate"] = CreationDate,
	}
	M.AssertGroupType(t)
	return t
end

local DeleteIdentityProviderRequest_keys = { "ProviderName" = true, "UserPoolId" = true, nil }

function M.AssertDeleteIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	if struct["ProviderName"] then M.AssertProviderNameType(struct["ProviderName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIdentityProviderRequest_keys[k], "DeleteIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityProviderRequest
--  
-- @param ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: ProviderName
function M.DeleteIdentityProviderRequest(ProviderName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityProviderRequest")
	local t = { 
		["ProviderName"] = ProviderName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDeleteIdentityProviderRequest(t)
	return t
end

local GetGroupResponse_keys = { "Group" = true, nil }

function M.AssertGetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupResponse to be of type 'table'")
	if struct["Group"] then M.AssertGroupType(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupResponse_keys[k], "GetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupResponse
--  
-- @param Group [GroupType] <p>The group object for the group.</p>
function M.GetGroupResponse(Group, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupResponse")
	local t = { 
		["Group"] = Group,
	}
	M.AssertGetGroupResponse(t)
	return t
end

local UserPoolPolicyType_keys = { "PasswordPolicy" = true, nil }

function M.AssertUserPoolPolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolPolicyType to be of type 'table'")
	if struct["PasswordPolicy"] then M.AssertPasswordPolicyType(struct["PasswordPolicy"]) end
	for k,_ in pairs(struct) do
		assert(UserPoolPolicyType_keys[k], "UserPoolPolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolPolicyType
-- <p>The type of policy in a user pool.</p>
-- @param PasswordPolicy [PasswordPolicyType] <p>A container for information about the user pool password policy.</p>
function M.UserPoolPolicyType(PasswordPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserPoolPolicyType")
	local t = { 
		["PasswordPolicy"] = PasswordPolicy,
	}
	M.AssertUserPoolPolicyType(t)
	return t
end

local DeleteUserRequest_keys = { "AccessToken" = true, nil }

function M.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserRequest_keys[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
-- <p>Represents the request to delete a user.</p>
-- @param AccessToken [TokenModelType] <p>The access token from a request to delete a user.</p>
-- Required parameter: AccessToken
function M.DeleteUserRequest(AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserRequest")
	local t = { 
		["AccessToken"] = AccessToken,
	}
	M.AssertDeleteUserRequest(t)
	return t
end

local ListUserPoolClientsResponse_keys = { "NextToken" = true, "UserPoolClients" = true, nil }

function M.AssertListUserPoolClientsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolClientsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["UserPoolClients"] then M.AssertUserPoolClientListType(struct["UserPoolClients"]) end
	for k,_ in pairs(struct) do
		assert(ListUserPoolClientsResponse_keys[k], "ListUserPoolClientsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolClientsResponse
-- <p>Represents the response from the server that lists user pool clients.</p>
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param UserPoolClients [UserPoolClientListType] <p>The user pool clients in the response that lists user pool clients.</p>
function M.ListUserPoolClientsResponse(NextToken, UserPoolClients, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoolClientsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["UserPoolClients"] = UserPoolClients,
	}
	M.AssertListUserPoolClientsResponse(t)
	return t
end

local GroupExistsException_keys = { "message" = true, nil }

function M.AssertGroupExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupExistsException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(GroupExistsException_keys[k], "GroupExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupExistsException
-- <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>
-- @param message [MessageType] <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>
function M.GroupExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertGroupExistsException(t)
	return t
end

local UserImportInProgressException_keys = { "message" = true, nil }

function M.AssertUserImportInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserImportInProgressException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UserImportInProgressException_keys[k], "UserImportInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserImportInProgressException
-- <p>This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.</p>
-- @param message [MessageType] <p>The message returned when the user pool has an import job running.</p>
function M.UserImportInProgressException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserImportInProgressException")
	local t = { 
		["message"] = message,
	}
	M.AssertUserImportInProgressException(t)
	return t
end

local UsernameExistsException_keys = { "message" = true, nil }

function M.AssertUsernameExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsernameExistsException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UsernameExistsException_keys[k], "UsernameExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsernameExistsException
-- <p>This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.</p>
-- @param message [MessageType] <p>The message returned when Amazon Cognito throws a user name exists exception.</p>
function M.UsernameExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsernameExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertUsernameExistsException(t)
	return t
end

local UnsupportedIdentityProviderException_keys = { "message" = true, nil }

function M.AssertUnsupportedIdentityProviderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedIdentityProviderException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedIdentityProviderException_keys[k], "UnsupportedIdentityProviderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedIdentityProviderException
-- <p>This exception is thrown when the specified identifier is not supported.</p>
-- @param message [MessageType] <p>This exception is thrown when the specified identifier is not supported.</p>
function M.UnsupportedIdentityProviderException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedIdentityProviderException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedIdentityProviderException(t)
	return t
end

local InternalErrorException_keys = { "message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
-- @param message [MessageType] <p>The message returned when Amazon Cognito throws an internal error exception.</p>
function M.InternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local AdminUpdateUserAttributesRequest_keys = { "Username" = true, "UserAttributes" = true, "UserPoolId" = true, nil }

function M.AssertAdminUpdateUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateUserAttributesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserAttributes"], "Expected key UserAttributes to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserAttributes"] then M.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminUpdateUserAttributesRequest_keys[k], "AdminUpdateUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateUserAttributesRequest
-- <p>Represents the request to update the user's attributes as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user for whom you want to update user attributes.</p>
-- @param UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to update user attributes.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: UserAttributes
function M.AdminUpdateUserAttributesRequest(Username, UserAttributes, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminUpdateUserAttributesRequest")
	local t = { 
		["Username"] = Username,
		["UserAttributes"] = UserAttributes,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminUpdateUserAttributesRequest(t)
	return t
end

local AdminDeleteUserRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDeleteUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminDeleteUserRequest_keys[k], "AdminDeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDeleteUserRequest
-- <p>Represents the request to delete a user as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to delete.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to delete the user.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminDeleteUserRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminDeleteUserRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminDeleteUserRequest(t)
	return t
end

local ScopeDoesNotExistException_keys = { "message" = true, nil }

function M.AssertScopeDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScopeDoesNotExistException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ScopeDoesNotExistException_keys[k], "ScopeDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScopeDoesNotExistException
-- <p>This exception is thrown when the specified scope does not exist.</p>
-- @param message [MessageType] <p>This exception is thrown when the specified scope does not exist.</p>
function M.ScopeDoesNotExistException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScopeDoesNotExistException")
	local t = { 
		["message"] = message,
	}
	M.AssertScopeDoesNotExistException(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>This exception is thrown when a user exceeds the limit for a requested AWS resource.</p>
-- @param message [MessageType] <p>The message returned when Amazon Cognito throws a limit exceeded exception.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local CreateUserPoolClientResponse_keys = { "UserPoolClient" = true, nil }

function M.AssertCreateUserPoolClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolClientResponse to be of type 'table'")
	if struct["UserPoolClient"] then M.AssertUserPoolClientType(struct["UserPoolClient"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserPoolClientResponse_keys[k], "CreateUserPoolClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolClientResponse
-- <p>Represents the response from the server to create a user pool client.</p>
-- @param UserPoolClient [UserPoolClientType] <p>The user pool client that was just created.</p>
function M.CreateUserPoolClientResponse(UserPoolClient, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserPoolClientResponse")
	local t = { 
		["UserPoolClient"] = UserPoolClient,
	}
	M.AssertCreateUserPoolClientResponse(t)
	return t
end

local CreateIdentityProviderResponse_keys = { "IdentityProvider" = true, nil }

function M.AssertCreateIdentityProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIdentityProviderResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then M.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(CreateIdentityProviderResponse_keys[k], "CreateIdentityProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIdentityProviderResponse
--  
-- @param IdentityProvider [IdentityProviderType] <p>The newly created identity provider object.</p>
-- Required parameter: IdentityProvider
function M.CreateIdentityProviderResponse(IdentityProvider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIdentityProviderResponse")
	local t = { 
		["IdentityProvider"] = IdentityProvider,
	}
	M.AssertCreateIdentityProviderResponse(t)
	return t
end

local DomainDescriptionType_keys = { "Status" = true, "Domain" = true, "UserPoolId" = true, "CloudFrontDistribution" = true, "S3Bucket" = true, "Version" = true, "AWSAccountId" = true, nil }

function M.AssertDomainDescriptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDescriptionType to be of type 'table'")
	if struct["Status"] then M.AssertDomainStatusType(struct["Status"]) end
	if struct["Domain"] then M.AssertDomainType(struct["Domain"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["CloudFrontDistribution"] then M.AssertArnType(struct["CloudFrontDistribution"]) end
	if struct["S3Bucket"] then M.AssertS3BucketType(struct["S3Bucket"]) end
	if struct["Version"] then M.AssertDomainVersionType(struct["Version"]) end
	if struct["AWSAccountId"] then M.AssertAWSAccountIdType(struct["AWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(DomainDescriptionType_keys[k], "DomainDescriptionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDescriptionType
-- <p>A container for information about a domain.</p>
-- @param Status [DomainStatusType] <p>The domain status.</p>
-- @param Domain [DomainType] <p>The domain string.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- @param CloudFrontDistribution [ArnType] <p>The ARN of the CloudFront distribution.</p>
-- @param S3Bucket [S3BucketType] <p>The S3 bucket where the static files for this domain are stored.</p>
-- @param Version [DomainVersionType] <p>The app version.</p>
-- @param AWSAccountId [AWSAccountIdType] <p>The AWS account ID for the user pool owner.</p>
function M.DomainDescriptionType(Status, Domain, UserPoolId, CloudFrontDistribution, S3Bucket, Version, AWSAccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainDescriptionType")
	local t = { 
		["Status"] = Status,
		["Domain"] = Domain,
		["UserPoolId"] = UserPoolId,
		["CloudFrontDistribution"] = CloudFrontDistribution,
		["S3Bucket"] = S3Bucket,
		["Version"] = Version,
		["AWSAccountId"] = AWSAccountId,
	}
	M.AssertDomainDescriptionType(t)
	return t
end

local ConcurrentModificationException_keys = { "message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>This exception is thrown if two or more modifications are happening concurrently.</p>
-- @param message [MessageType] <p>The message provided when the concurrent exception is thrown.</p>
function M.ConcurrentModificationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local ConfirmSignUpRequest_keys = { "Username" = true, "ForceAliasCreation" = true, "ConfirmationCode" = true, "SecretHash" = true, "ClientId" = true, nil }

function M.AssertConfirmSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSignUpRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["ConfirmationCode"], "Expected key ConfirmationCode to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["ForceAliasCreation"] then M.AssertForceAliasCreation(struct["ForceAliasCreation"]) end
	if struct["ConfirmationCode"] then M.AssertConfirmationCodeType(struct["ConfirmationCode"]) end
	if struct["SecretHash"] then M.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmSignUpRequest_keys[k], "ConfirmSignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSignUpRequest
-- <p>Represents the request to confirm registration of a user.</p>
-- @param Username [UsernameType] <p>The user name of the user whose registration you wish to confirm.</p>
-- @param ForceAliasCreation [ForceAliasCreation] <p>Boolean to be specified to force user confirmation irrespective of existing alias. By default set to <code>False</code>. If this parameter is set to <code>True</code> and the phone number/email used for sign up confirmation already exists as an alias with a different user, the API call will migrate the alias from the previous user to the newly created user being confirmed. If set to <code>False</code>, the API will throw an <b>AliasExistsException</b> error.</p>
-- @param ConfirmationCode [ConfirmationCodeType] <p>The confirmation code sent by a user's request to confirm registration.</p>
-- @param SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required parameter: ClientId
-- Required parameter: Username
-- Required parameter: ConfirmationCode
function M.ConfirmSignUpRequest(Username, ForceAliasCreation, ConfirmationCode, SecretHash, ClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmSignUpRequest")
	local t = { 
		["Username"] = Username,
		["ForceAliasCreation"] = ForceAliasCreation,
		["ConfirmationCode"] = ConfirmationCode,
		["SecretHash"] = SecretHash,
		["ClientId"] = ClientId,
	}
	M.AssertConfirmSignUpRequest(t)
	return t
end

local UserNotConfirmedException_keys = { "message" = true, nil }

function M.AssertUserNotConfirmedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserNotConfirmedException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UserNotConfirmedException_keys[k], "UserNotConfirmedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserNotConfirmedException
-- <p>This exception is thrown when a user is not confirmed successfully.</p>
-- @param message [MessageType] <p>The message returned when a user is not confirmed successfully.</p>
function M.UserNotConfirmedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserNotConfirmedException")
	local t = { 
		["message"] = message,
	}
	M.AssertUserNotConfirmedException(t)
	return t
end

local StartUserImportJobResponse_keys = { "UserImportJob" = true, nil }

function M.AssertStartUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then M.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(StartUserImportJobResponse_keys[k], "StartUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartUserImportJobResponse
-- <p>Represents the response from the server to the request to start the user import job.</p>
-- @param UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
function M.StartUserImportJobResponse(UserImportJob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartUserImportJobResponse")
	local t = { 
		["UserImportJob"] = UserImportJob,
	}
	M.AssertStartUserImportJobResponse(t)
	return t
end

local PasswordPolicyType_keys = { "RequireLowercase" = true, "RequireSymbols" = true, "RequireNumbers" = true, "MinimumLength" = true, "RequireUppercase" = true, nil }

function M.AssertPasswordPolicyType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordPolicyType to be of type 'table'")
	if struct["RequireLowercase"] then M.AssertBooleanType(struct["RequireLowercase"]) end
	if struct["RequireSymbols"] then M.AssertBooleanType(struct["RequireSymbols"]) end
	if struct["RequireNumbers"] then M.AssertBooleanType(struct["RequireNumbers"]) end
	if struct["MinimumLength"] then M.AssertPasswordPolicyMinLengthType(struct["MinimumLength"]) end
	if struct["RequireUppercase"] then M.AssertBooleanType(struct["RequireUppercase"]) end
	for k,_ in pairs(struct) do
		assert(PasswordPolicyType_keys[k], "PasswordPolicyType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordPolicyType
-- <p>The password policy type.</p>
-- @param RequireLowercase [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one lowercase letter in their password.</p>
-- @param RequireSymbols [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one symbol in their password.</p>
-- @param RequireNumbers [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one number in their password.</p>
-- @param MinimumLength [PasswordPolicyMinLengthType] <p>The minimum length of the password policy that you have set. Cannot be less than 6.</p>
-- @param RequireUppercase [BooleanType] <p>In the password policy that you have set, refers to whether you have required users to use at least one uppercase letter in their password.</p>
function M.PasswordPolicyType(RequireLowercase, RequireSymbols, RequireNumbers, MinimumLength, RequireUppercase, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PasswordPolicyType")
	local t = { 
		["RequireLowercase"] = RequireLowercase,
		["RequireSymbols"] = RequireSymbols,
		["RequireNumbers"] = RequireNumbers,
		["MinimumLength"] = MinimumLength,
		["RequireUppercase"] = RequireUppercase,
	}
	M.AssertPasswordPolicyType(t)
	return t
end

local CreateUserImportJobRequest_keys = { "CloudWatchLogsRoleArn" = true, "UserPoolId" = true, "JobName" = true, nil }

function M.AssertCreateUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserImportJobRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["CloudWatchLogsRoleArn"], "Expected key CloudWatchLogsRoleArn to exist in table")
	if struct["CloudWatchLogsRoleArn"] then M.AssertArnType(struct["CloudWatchLogsRoleArn"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobName"] then M.AssertUserImportJobNameType(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserImportJobRequest_keys[k], "CreateUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserImportJobRequest
-- <p>Represents the request to create the user import job.</p>
-- @param CloudWatchLogsRoleArn [ArnType] <p>The role ARN for the Amazon CloudWatch Logging role for the user import job.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- @param JobName [UserImportJobNameType] <p>The job name for the user import job.</p>
-- Required parameter: JobName
-- Required parameter: UserPoolId
-- Required parameter: CloudWatchLogsRoleArn
function M.CreateUserImportJobRequest(CloudWatchLogsRoleArn, UserPoolId, JobName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserImportJobRequest")
	local t = { 
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["UserPoolId"] = UserPoolId,
		["JobName"] = JobName,
	}
	M.AssertCreateUserImportJobRequest(t)
	return t
end

local CreateUserPoolDomainRequest_keys = { "Domain" = true, "UserPoolId" = true, nil }

function M.AssertCreateUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Domain"] then M.AssertDomainType(struct["Domain"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserPoolDomainRequest_keys[k], "CreateUserPoolDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolDomainRequest
--  
-- @param Domain [DomainType] <p>The domain string.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: Domain
-- Required parameter: UserPoolId
function M.CreateUserPoolDomainRequest(Domain, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserPoolDomainRequest")
	local t = { 
		["Domain"] = Domain,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertCreateUserPoolDomainRequest(t)
	return t
end

local InvalidEmailRoleAccessPolicyException_keys = { "message" = true, nil }

function M.AssertInvalidEmailRoleAccessPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEmailRoleAccessPolicyException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidEmailRoleAccessPolicyException_keys[k], "InvalidEmailRoleAccessPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEmailRoleAccessPolicyException
-- <p>This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.</p>
-- @param message [MessageType] <p>The message returned when you have an unverified email address or the identity policy is not set on an email address that Amazon Cognito can access.</p>
function M.InvalidEmailRoleAccessPolicyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEmailRoleAccessPolicyException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidEmailRoleAccessPolicyException(t)
	return t
end

local UpdateUserPoolClientRequest_keys = { "CallbackURLs" = true, "AllowedOAuthScopes" = true, "UserPoolId" = true, "AllowedOAuthFlowsUserPoolClient" = true, "ClientId" = true, "DefaultRedirectURI" = true, "AllowedOAuthFlows" = true, "ExplicitAuthFlows" = true, "LogoutURLs" = true, "WriteAttributes" = true, "SupportedIdentityProviders" = true, "ReadAttributes" = true, "RefreshTokenValidity" = true, "ClientName" = true, nil }

function M.AssertUpdateUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["CallbackURLs"] then M.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["AllowedOAuthScopes"] then M.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then M.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["DefaultRedirectURI"] then M.AssertRedirectUrlType(struct["DefaultRedirectURI"]) end
	if struct["AllowedOAuthFlows"] then M.AssertOAuthFlowsType(struct["AllowedOAuthFlows"]) end
	if struct["ExplicitAuthFlows"] then M.AssertExplicitAuthFlowsListType(struct["ExplicitAuthFlows"]) end
	if struct["LogoutURLs"] then M.AssertLogoutURLsListType(struct["LogoutURLs"]) end
	if struct["WriteAttributes"] then M.AssertClientPermissionListType(struct["WriteAttributes"]) end
	if struct["SupportedIdentityProviders"] then M.AssertSupportedIdentityProvidersListType(struct["SupportedIdentityProviders"]) end
	if struct["ReadAttributes"] then M.AssertClientPermissionListType(struct["ReadAttributes"]) end
	if struct["RefreshTokenValidity"] then M.AssertRefreshTokenValidityType(struct["RefreshTokenValidity"]) end
	if struct["ClientName"] then M.AssertClientNameType(struct["ClientName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserPoolClientRequest_keys[k], "UpdateUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolClientRequest
-- <p>Represents the request to update the user pool client.</p>
-- @param CallbackURLs [CallbackURLsListType] <p>A list of allowed callback URLs for the identity providers.</p>
-- @param AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to update the user pool client.</p>
-- @param AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to TRUE if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- @param DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
-- @param AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- @param ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>Explicit authentication flows.</p>
-- @param LogoutURLs [LogoutURLsListType] <p>A list ofallowed logout URLs for the identity providers.</p>
-- @param WriteAttributes [ClientPermissionListType] <p>The writeable attributes of the user pool.</p>
-- @param SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- @param ReadAttributes [ClientPermissionListType] <p>The read-only attributes of the user pool.</p>
-- @param RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- @param ClientName [ClientNameType] <p>The client name from the update user pool client request.</p>
-- Required parameter: UserPoolId
-- Required parameter: ClientId
function M.UpdateUserPoolClientRequest(CallbackURLs, AllowedOAuthScopes, UserPoolId, AllowedOAuthFlowsUserPoolClient, ClientId, DefaultRedirectURI, AllowedOAuthFlows, ExplicitAuthFlows, LogoutURLs, WriteAttributes, SupportedIdentityProviders, ReadAttributes, RefreshTokenValidity, ClientName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserPoolClientRequest")
	local t = { 
		["CallbackURLs"] = CallbackURLs,
		["AllowedOAuthScopes"] = AllowedOAuthScopes,
		["UserPoolId"] = UserPoolId,
		["AllowedOAuthFlowsUserPoolClient"] = AllowedOAuthFlowsUserPoolClient,
		["ClientId"] = ClientId,
		["DefaultRedirectURI"] = DefaultRedirectURI,
		["AllowedOAuthFlows"] = AllowedOAuthFlows,
		["ExplicitAuthFlows"] = ExplicitAuthFlows,
		["LogoutURLs"] = LogoutURLs,
		["WriteAttributes"] = WriteAttributes,
		["SupportedIdentityProviders"] = SupportedIdentityProviders,
		["ReadAttributes"] = ReadAttributes,
		["RefreshTokenValidity"] = RefreshTokenValidity,
		["ClientName"] = ClientName,
	}
	M.AssertUpdateUserPoolClientRequest(t)
	return t
end

local ChangePasswordRequest_keys = { "PreviousPassword" = true, "ProposedPassword" = true, "AccessToken" = true, nil }

function M.AssertChangePasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangePasswordRequest to be of type 'table'")
	assert(struct["PreviousPassword"], "Expected key PreviousPassword to exist in table")
	assert(struct["ProposedPassword"], "Expected key ProposedPassword to exist in table")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["PreviousPassword"] then M.AssertPasswordType(struct["PreviousPassword"]) end
	if struct["ProposedPassword"] then M.AssertPasswordType(struct["ProposedPassword"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(ChangePasswordRequest_keys[k], "ChangePasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangePasswordRequest
-- <p>Represents the request to change a user password.</p>
-- @param PreviousPassword [PasswordType] <p>The old password in the change password request.</p>
-- @param ProposedPassword [PasswordType] <p>The new password in the change password request.</p>
-- @param AccessToken [TokenModelType] <p>The access token in the change password request.</p>
-- Required parameter: PreviousPassword
-- Required parameter: ProposedPassword
-- Required parameter: AccessToken
function M.ChangePasswordRequest(PreviousPassword, ProposedPassword, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangePasswordRequest")
	local t = { 
		["PreviousPassword"] = PreviousPassword,
		["ProposedPassword"] = ProposedPassword,
		["AccessToken"] = AccessToken,
	}
	M.AssertChangePasswordRequest(t)
	return t
end

local CodeDeliveryFailureException_keys = { "message" = true, nil }

function M.AssertCodeDeliveryFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeDeliveryFailureException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CodeDeliveryFailureException_keys[k], "CodeDeliveryFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeDeliveryFailureException
-- <p>This exception is thrown when a verification code fails to deliver successfully.</p>
-- @param message [MessageType] <p>The message sent when a verification code fails to deliver successfully.</p>
function M.CodeDeliveryFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CodeDeliveryFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertCodeDeliveryFailureException(t)
	return t
end

local MFAOptionType_keys = { "DeliveryMedium" = true, "AttributeName" = true, nil }

function M.AssertMFAOptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MFAOptionType to be of type 'table'")
	if struct["DeliveryMedium"] then M.AssertDeliveryMediumType(struct["DeliveryMedium"]) end
	if struct["AttributeName"] then M.AssertAttributeNameType(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(MFAOptionType_keys[k], "MFAOptionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MFAOptionType
-- <p>Specifies the different settings for multi-factor authentication (MFA).</p>
-- @param DeliveryMedium [DeliveryMediumType] <p>The delivery medium (email message or SMS message) to send the MFA code.</p>
-- @param AttributeName [AttributeNameType] <p>The attribute name of the MFA option type.</p>
function M.MFAOptionType(DeliveryMedium, AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MFAOptionType")
	local t = { 
		["DeliveryMedium"] = DeliveryMedium,
		["AttributeName"] = AttributeName,
	}
	M.AssertMFAOptionType(t)
	return t
end

local ListGroupsResponse_keys = { "NextToken" = true, "Groups" = true, nil }

function M.AssertListGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Groups"] then M.AssertGroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsResponse_keys[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
--  
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Groups [GroupListType] <p>The group objects for the groups.</p>
function M.ListGroupsResponse(NextToken, Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Groups"] = Groups,
	}
	M.AssertListGroupsResponse(t)
	return t
end

local UpdateGroupRequest_keys = { "GroupName" = true, "RoleArn" = true, "Precedence" = true, "Description" = true, "UserPoolId" = true, nil }

function M.AssertUpdateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["RoleArn"] then M.AssertArnType(struct["RoleArn"]) end
	if struct["Precedence"] then M.AssertPrecedenceType(struct["Precedence"]) end
	if struct["Description"] then M.AssertDescriptionType(struct["Description"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGroupRequest_keys[k], "UpdateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupRequest
--  
-- @param GroupName [GroupNameType] <p>The name of the group.</p>
-- @param RoleArn [ArnType] <p>The new role ARN for the group. This is used for setting the <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the token.</p>
-- @param Precedence [PrecedenceType] <p>The new precedence value for the group. For more information about this parameter, see <a href="API_CreateGroup.html">CreateGroup</a>.</p>
-- @param Description [DescriptionType] <p>A string containing the new description of the group.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: GroupName
-- Required parameter: UserPoolId
function M.UpdateGroupRequest(GroupName, RoleArn, Precedence, Description, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupRequest")
	local t = { 
		["GroupName"] = GroupName,
		["RoleArn"] = RoleArn,
		["Precedence"] = Precedence,
		["Description"] = Description,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertUpdateGroupRequest(t)
	return t
end

local AdminUserGlobalSignOutResponse_keys = { nil }

function M.AssertAdminUserGlobalSignOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUserGlobalSignOutResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminUserGlobalSignOutResponse_keys[k], "AdminUserGlobalSignOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUserGlobalSignOutResponse
-- <p>The global sign-out response, as an administrator.</p>
function M.AdminUserGlobalSignOutResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminUserGlobalSignOutResponse")
	local t = { 
	}
	M.AssertAdminUserGlobalSignOutResponse(t)
	return t
end

local DeleteUserAttributesResponse_keys = { nil }

function M.AssertDeleteUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteUserAttributesResponse_keys[k], "DeleteUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserAttributesResponse
-- <p>Represents the response from the server to delete user attributes.</p>
function M.DeleteUserAttributesResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserAttributesResponse")
	local t = { 
	}
	M.AssertDeleteUserAttributesResponse(t)
	return t
end

local CodeMismatchException_keys = { "message" = true, nil }

function M.AssertCodeMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeMismatchException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CodeMismatchException_keys[k], "CodeMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeMismatchException
-- <p>This exception is thrown if the provided code does not match what the server was expecting.</p>
-- @param message [MessageType] <p>The message provided when the code mismatch exception is thrown.</p>
function M.CodeMismatchException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CodeMismatchException")
	local t = { 
		["message"] = message,
	}
	M.AssertCodeMismatchException(t)
	return t
end

local ForgetDeviceRequest_keys = { "DeviceKey" = true, "AccessToken" = true, nil }

function M.AssertForgetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgetDeviceRequest to be of type 'table'")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(ForgetDeviceRequest_keys[k], "ForgetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgetDeviceRequest
-- <p>Represents the request to forget the device.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param AccessToken [TokenModelType] <p>The access token for the forgotten device request.</p>
-- Required parameter: DeviceKey
function M.ForgetDeviceRequest(DeviceKey, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForgetDeviceRequest")
	local t = { 
		["DeviceKey"] = DeviceKey,
		["AccessToken"] = AccessToken,
	}
	M.AssertForgetDeviceRequest(t)
	return t
end

local RespondToAuthChallengeResponse_keys = { "AuthenticationResult" = true, "ChallengeName" = true, "ChallengeParameters" = true, "Session" = true, nil }

function M.AssertRespondToAuthChallengeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondToAuthChallengeResponse to be of type 'table'")
	if struct["AuthenticationResult"] then M.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then M.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then M.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then M.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(RespondToAuthChallengeResponse_keys[k], "RespondToAuthChallengeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondToAuthChallengeResponse
-- <p>The response to respond to the authentication challenge.</p>
-- @param AuthenticationResult [AuthenticationResultType] <p>The result returned by the server in response to the request to respond to the authentication challenge.</p>
-- @param ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see <a href="API_InitiateAuth.html">InitiateAuth</a>.</p>
-- @param ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. For more information, see <a href="API_InitiateAuth.html">InitiateAuth</a>.</p>
-- @param Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the <a href="API_InitiateAuth.html">InitiateAuth</a> or <a href="API_RespondToAuthChallenge.html">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
function M.RespondToAuthChallengeResponse(AuthenticationResult, ChallengeName, ChallengeParameters, Session, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondToAuthChallengeResponse")
	local t = { 
		["AuthenticationResult"] = AuthenticationResult,
		["ChallengeName"] = ChallengeName,
		["ChallengeParameters"] = ChallengeParameters,
		["Session"] = Session,
	}
	M.AssertRespondToAuthChallengeResponse(t)
	return t
end

local UpdateIdentityProviderResponse_keys = { "IdentityProvider" = true, nil }

function M.AssertUpdateIdentityProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIdentityProviderResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then M.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(UpdateIdentityProviderResponse_keys[k], "UpdateIdentityProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIdentityProviderResponse
--  
-- @param IdentityProvider [IdentityProviderType] <p>The identity provider object.</p>
-- Required parameter: IdentityProvider
function M.UpdateIdentityProviderResponse(IdentityProvider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateIdentityProviderResponse")
	local t = { 
		["IdentityProvider"] = IdentityProvider,
	}
	M.AssertUpdateIdentityProviderResponse(t)
	return t
end

local ForgotPasswordRequest_keys = { "Username" = true, "SecretHash" = true, "ClientId" = true, nil }

function M.AssertForgotPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgotPasswordRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["SecretHash"] then M.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(ForgotPasswordRequest_keys[k], "ForgotPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgotPasswordRequest
-- <p>Represents the request to reset a user's password.</p>
-- @param Username [UsernameType] <p>The user name of the user for whom you want to enter a code to reset a forgotten password.</p>
-- @param SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required parameter: ClientId
-- Required parameter: Username
function M.ForgotPasswordRequest(Username, SecretHash, ClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForgotPasswordRequest")
	local t = { 
		["Username"] = Username,
		["SecretHash"] = SecretHash,
		["ClientId"] = ClientId,
	}
	M.AssertForgotPasswordRequest(t)
	return t
end

local DescribeIdentityProviderResponse_keys = { "IdentityProvider" = true, nil }

function M.AssertDescribeIdentityProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityProviderResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then M.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityProviderResponse_keys[k], "DescribeIdentityProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityProviderResponse
--  
-- @param IdentityProvider [IdentityProviderType] <p>The identity provider that was deleted.</p>
-- Required parameter: IdentityProvider
function M.DescribeIdentityProviderResponse(IdentityProvider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityProviderResponse")
	local t = { 
		["IdentityProvider"] = IdentityProvider,
	}
	M.AssertDescribeIdentityProviderResponse(t)
	return t
end

local SetUserSettingsRequest_keys = { "MFAOptions" = true, "AccessToken" = true, nil }

function M.AssertSetUserSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserSettingsRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["MFAOptions"], "Expected key MFAOptions to exist in table")
	if struct["MFAOptions"] then M.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(SetUserSettingsRequest_keys[k], "SetUserSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserSettingsRequest
-- <p>Represents the request to set user settings.</p>
-- @param MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- @param AccessToken [TokenModelType] <p>The access token for the set user settings request.</p>
-- Required parameter: AccessToken
-- Required parameter: MFAOptions
function M.SetUserSettingsRequest(MFAOptions, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetUserSettingsRequest")
	local t = { 
		["MFAOptions"] = MFAOptions,
		["AccessToken"] = AccessToken,
	}
	M.AssertSetUserSettingsRequest(t)
	return t
end

local AdminConfirmSignUpRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminConfirmSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminConfirmSignUpRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminConfirmSignUpRequest_keys[k], "AdminConfirmSignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminConfirmSignUpRequest
-- <p>Represents the request to confirm user registration.</p>
-- @param Username [UsernameType] <p>The user name for which you want to confirm user registration.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for which you want to confirm user registration.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminConfirmSignUpRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminConfirmSignUpRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminConfirmSignUpRequest(t)
	return t
end

local EmailConfigurationType_keys = { "ReplyToEmailAddress" = true, "SourceArn" = true, nil }

function M.AssertEmailConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailConfigurationType to be of type 'table'")
	if struct["ReplyToEmailAddress"] then M.AssertEmailAddressType(struct["ReplyToEmailAddress"]) end
	if struct["SourceArn"] then M.AssertArnType(struct["SourceArn"]) end
	for k,_ in pairs(struct) do
		assert(EmailConfigurationType_keys[k], "EmailConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailConfigurationType
-- <p>The email configuration type.</p>
-- @param ReplyToEmailAddress [EmailAddressType] <p>The REPLY-TO email address.</p>
-- @param SourceArn [ArnType] <p>The Amazon Resource Name (ARN) of the email source.</p>
function M.EmailConfigurationType(ReplyToEmailAddress, SourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmailConfigurationType")
	local t = { 
		["ReplyToEmailAddress"] = ReplyToEmailAddress,
		["SourceArn"] = SourceArn,
	}
	M.AssertEmailConfigurationType(t)
	return t
end

local AdminRespondToAuthChallengeRequest_keys = { "ChallengeResponses" = true, "ChallengeName" = true, "ClientId" = true, "UserPoolId" = true, "Session" = true, nil }

function M.AssertAdminRespondToAuthChallengeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRespondToAuthChallengeRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ChallengeName"], "Expected key ChallengeName to exist in table")
	if struct["ChallengeResponses"] then M.AssertChallengeResponsesType(struct["ChallengeResponses"]) end
	if struct["ChallengeName"] then M.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["Session"] then M.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(AdminRespondToAuthChallengeRequest_keys[k], "AdminRespondToAuthChallengeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRespondToAuthChallengeRequest
-- <p>The request to respond to the authentication challenge, as an administrator.</p>
-- @param ChallengeResponses [ChallengeResponsesType] <p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul> <p>The value of the <code>USERNAME</code> attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the <code>AdminInitiateAuth</code> response includes the actual username value in the <code>USERNAMEUSER_ID_FOR_SRP</code> attribute, even if you specified an alias in your call to <code>AdminInitiateAuth</code>.</p>
-- @param ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see <a href="API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
-- @param ClientId [ClientIdType] <p>The app client ID.</p>
-- @param UserPoolId [UserPoolIdType] <p>The ID of the Amazon Cognito user pool.</p>
-- @param Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- Required parameter: UserPoolId
-- Required parameter: ClientId
-- Required parameter: ChallengeName
function M.AdminRespondToAuthChallengeRequest(ChallengeResponses, ChallengeName, ClientId, UserPoolId, Session, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminRespondToAuthChallengeRequest")
	local t = { 
		["ChallengeResponses"] = ChallengeResponses,
		["ChallengeName"] = ChallengeName,
		["ClientId"] = ClientId,
		["UserPoolId"] = UserPoolId,
		["Session"] = Session,
	}
	M.AssertAdminRespondToAuthChallengeRequest(t)
	return t
end

local UpdateIdentityProviderRequest_keys = { "ProviderDetails" = true, "IdpIdentifiers" = true, "AttributeMapping" = true, "ProviderName" = true, "UserPoolId" = true, nil }

function M.AssertUpdateIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	if struct["ProviderDetails"] then M.AssertProviderDetailsType(struct["ProviderDetails"]) end
	if struct["IdpIdentifiers"] then M.AssertIdpIdentifiersListType(struct["IdpIdentifiers"]) end
	if struct["AttributeMapping"] then M.AssertAttributeMappingType(struct["AttributeMapping"]) end
	if struct["ProviderName"] then M.AssertProviderNameType(struct["ProviderName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateIdentityProviderRequest_keys[k], "UpdateIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIdentityProviderRequest
--  
-- @param ProviderDetails [ProviderDetailsType] <p>The identity provider details to be updated, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>
-- @param IdpIdentifiers [IdpIdentifiersListType] <p>A list of identity provider identifiers.</p>
-- @param AttributeMapping [AttributeMappingType] <p>The identity provider attribute mapping to be changed.</p>
-- @param ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: ProviderName
function M.UpdateIdentityProviderRequest(ProviderDetails, IdpIdentifiers, AttributeMapping, ProviderName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateIdentityProviderRequest")
	local t = { 
		["ProviderDetails"] = ProviderDetails,
		["IdpIdentifiers"] = IdpIdentifiers,
		["AttributeMapping"] = AttributeMapping,
		["ProviderName"] = ProviderName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertUpdateIdentityProviderRequest(t)
	return t
end

local AdminGetUserResponse_keys = { "Username" = true, "MFAOptions" = true, "Enabled" = true, "UserStatus" = true, "UserCreateDate" = true, "UserAttributes" = true, "UserLastModifiedDate" = true, nil }

function M.AssertAdminGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetUserResponse to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then M.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["Enabled"] then M.AssertBooleanType(struct["Enabled"]) end
	if struct["UserStatus"] then M.AssertUserStatusType(struct["UserStatus"]) end
	if struct["UserCreateDate"] then M.AssertDateType(struct["UserCreateDate"]) end
	if struct["UserAttributes"] then M.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["UserLastModifiedDate"] then M.AssertDateType(struct["UserLastModifiedDate"]) end
	for k,_ in pairs(struct) do
		assert(AdminGetUserResponse_keys[k], "AdminGetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetUserResponse
-- <p>Represents the response from the server from the request to get the specified user as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user about whom you are receiving information.</p>
-- @param MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- @param Enabled [BooleanType] <p>Indicates that the status is enabled.</p>
-- @param UserStatus [UserStatusType] <p>The user status. Can be one of the following:</p> <ul> <li> <p>UNCONFIRMED - User has been created but not confirmed.</p> </li> <li> <p>CONFIRMED - User has been confirmed.</p> </li> <li> <p>ARCHIVED - User is no longer active.</p> </li> <li> <p>COMPROMISED - User is disabled due to a potential security threat.</p> </li> <li> <p>UNKNOWN - User status is not known.</p> </li> </ul>
-- @param UserCreateDate [DateType] <p>The date the user was created.</p>
-- @param UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p>
-- @param UserLastModifiedDate [DateType] <p>The date the user was last modified.</p>
-- Required parameter: Username
function M.AdminGetUserResponse(Username, MFAOptions, Enabled, UserStatus, UserCreateDate, UserAttributes, UserLastModifiedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminGetUserResponse")
	local t = { 
		["Username"] = Username,
		["MFAOptions"] = MFAOptions,
		["Enabled"] = Enabled,
		["UserStatus"] = UserStatus,
		["UserCreateDate"] = UserCreateDate,
		["UserAttributes"] = UserAttributes,
		["UserLastModifiedDate"] = UserLastModifiedDate,
	}
	M.AssertAdminGetUserResponse(t)
	return t
end

local DescribeUserPoolResponse_keys = { "UserPool" = true, nil }

function M.AssertDescribeUserPoolResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolResponse to be of type 'table'")
	if struct["UserPool"] then M.AssertUserPoolType(struct["UserPool"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserPoolResponse_keys[k], "DescribeUserPoolResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolResponse
-- <p>Represents the response to describe the user pool.</p>
-- @param UserPool [UserPoolType] <p>The container of metadata returned by the server to describe the pool.</p>
function M.DescribeUserPoolResponse(UserPool, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserPoolResponse")
	local t = { 
		["UserPool"] = UserPool,
	}
	M.AssertDescribeUserPoolResponse(t)
	return t
end

local InvalidLambdaResponseException_keys = { "message" = true, nil }

function M.AssertInvalidLambdaResponseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaResponseException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLambdaResponseException_keys[k], "InvalidLambdaResponseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaResponseException
-- <p>This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service throws an invalid AWS Lambda response exception.</p>
function M.InvalidLambdaResponseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaResponseException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidLambdaResponseException(t)
	return t
end

local AdminUpdateDeviceStatusRequest_keys = { "Username" = true, "DeviceKey" = true, "DeviceRememberedStatus" = true, "UserPoolId" = true, nil }

function M.AssertAdminUpdateDeviceStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateDeviceStatusRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceRememberedStatus"] then M.AssertDeviceRememberedStatusType(struct["DeviceRememberedStatus"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminUpdateDeviceStatusRequest_keys[k], "AdminUpdateDeviceStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateDeviceStatusRequest
-- <p>The request to update the device status, as an administrator.</p>
-- @param Username [UsernameType] <p>The user name.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param DeviceRememberedStatus [DeviceRememberedStatusType] <p>The status indicating whether a device has been remembered or not.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: DeviceKey
function M.AdminUpdateDeviceStatusRequest(Username, DeviceKey, DeviceRememberedStatus, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminUpdateDeviceStatusRequest")
	local t = { 
		["Username"] = Username,
		["DeviceKey"] = DeviceKey,
		["DeviceRememberedStatus"] = DeviceRememberedStatus,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminUpdateDeviceStatusRequest(t)
	return t
end

local AdminGetDeviceRequest_keys = { "Username" = true, "DeviceKey" = true, "UserPoolId" = true, nil }

function M.AssertAdminGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetDeviceRequest to be of type 'table'")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminGetDeviceRequest_keys[k], "AdminGetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetDeviceRequest
-- <p>Represents the request to get the device, as an administrator.</p>
-- @param Username [UsernameType] <p>The user name.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: DeviceKey
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminGetDeviceRequest(Username, DeviceKey, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminGetDeviceRequest")
	local t = { 
		["Username"] = Username,
		["DeviceKey"] = DeviceKey,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminGetDeviceRequest(t)
	return t
end

local GetDeviceRequest_keys = { "DeviceKey" = true, "AccessToken" = true, nil }

function M.AssertGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceRequest to be of type 'table'")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceRequest_keys[k], "GetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceRequest
-- <p>Represents the request to get the device.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param AccessToken [TokenModelType] <p>The access token.</p>
-- Required parameter: DeviceKey
function M.GetDeviceRequest(DeviceKey, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceRequest")
	local t = { 
		["DeviceKey"] = DeviceKey,
		["AccessToken"] = AccessToken,
	}
	M.AssertGetDeviceRequest(t)
	return t
end

local SetUserSettingsResponse_keys = { nil }

function M.AssertSetUserSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetUserSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetUserSettingsResponse_keys[k], "SetUserSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetUserSettingsResponse
-- <p>The response from the server for a set user settings request.</p>
function M.SetUserSettingsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetUserSettingsResponse")
	local t = { 
	}
	M.AssertSetUserSettingsResponse(t)
	return t
end

local GetUserRequest_keys = { "AccessToken" = true, nil }

function M.AssertGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(GetUserRequest_keys[k], "GetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserRequest
-- <p>Represents the request to get information about the user.</p>
-- @param AccessToken [TokenModelType] <p>The access token returned by the server response to get information about the user.</p>
-- Required parameter: AccessToken
function M.GetUserRequest(AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserRequest")
	local t = { 
		["AccessToken"] = AccessToken,
	}
	M.AssertGetUserRequest(t)
	return t
end

local GlobalSignOutResponse_keys = { nil }

function M.AssertGlobalSignOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSignOutResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GlobalSignOutResponse_keys[k], "GlobalSignOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSignOutResponse
-- <p>The response to the request to sign out all devices.</p>
function M.GlobalSignOutResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSignOutResponse")
	local t = { 
	}
	M.AssertGlobalSignOutResponse(t)
	return t
end

local ConfirmForgotPasswordResponse_keys = { nil }

function M.AssertConfirmForgotPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmForgotPasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ConfirmForgotPasswordResponse_keys[k], "ConfirmForgotPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmForgotPasswordResponse
-- <p>The response from the server that results from a user's request to retrieve a forgotten password.</p>
function M.ConfirmForgotPasswordResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmForgotPasswordResponse")
	local t = { 
	}
	M.AssertConfirmForgotPasswordResponse(t)
	return t
end

local GetCSVHeaderRequest_keys = { "UserPoolId" = true, nil }

function M.AssertGetCSVHeaderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCSVHeaderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetCSVHeaderRequest_keys[k], "GetCSVHeaderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCSVHeaderRequest
-- <p>Represents the request to get the header information for the .csv file for the user import job.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are to be imported into.</p>
-- Required parameter: UserPoolId
function M.GetCSVHeaderRequest(UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCSVHeaderRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
	}
	M.AssertGetCSVHeaderRequest(t)
	return t
end

local DescribeUserPoolDomainRequest_keys = { "Domain" = true, nil }

function M.AssertDescribeUserPoolDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolDomainRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	if struct["Domain"] then M.AssertDomainType(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserPoolDomainRequest_keys[k], "DescribeUserPoolDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolDomainRequest
--  
-- @param Domain [DomainType] <p>The domain string.</p>
-- Required parameter: Domain
function M.DescribeUserPoolDomainRequest(Domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserPoolDomainRequest")
	local t = { 
		["Domain"] = Domain,
	}
	M.AssertDescribeUserPoolDomainRequest(t)
	return t
end

local CodeDeliveryDetailsType_keys = { "AttributeName" = true, "Destination" = true, "DeliveryMedium" = true, nil }

function M.AssertCodeDeliveryDetailsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeDeliveryDetailsType to be of type 'table'")
	if struct["AttributeName"] then M.AssertAttributeNameType(struct["AttributeName"]) end
	if struct["Destination"] then M.AssertStringType(struct["Destination"]) end
	if struct["DeliveryMedium"] then M.AssertDeliveryMediumType(struct["DeliveryMedium"]) end
	for k,_ in pairs(struct) do
		assert(CodeDeliveryDetailsType_keys[k], "CodeDeliveryDetailsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeDeliveryDetailsType
-- <p>The type of code delivery details being returned from the server.</p>
-- @param AttributeName [AttributeNameType] <p>The name of the attribute in the code delivery details type.</p>
-- @param Destination [StringType] <p>The destination for the code delivery details.</p>
-- @param DeliveryMedium [DeliveryMediumType] <p>The delivery medium (email message or phone number).</p>
function M.CodeDeliveryDetailsType(AttributeName, Destination, DeliveryMedium, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CodeDeliveryDetailsType")
	local t = { 
		["AttributeName"] = AttributeName,
		["Destination"] = Destination,
		["DeliveryMedium"] = DeliveryMedium,
	}
	M.AssertCodeDeliveryDetailsType(t)
	return t
end

local UserNotFoundException_keys = { "message" = true, nil }

function M.AssertUserNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UserNotFoundException_keys[k], "UserNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserNotFoundException
-- <p>This exception is thrown when a user is not found.</p>
-- @param message [MessageType] <p>The message returned when a user is not found.</p>
function M.UserNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertUserNotFoundException(t)
	return t
end

local ListDevicesResponse_keys = { "PaginationToken" = true, "Devices" = true, nil }

function M.AssertListDevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevicesResponse to be of type 'table'")
	if struct["PaginationToken"] then M.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Devices"] then M.AssertDeviceListType(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(ListDevicesResponse_keys[k], "ListDevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevicesResponse
-- <p>Represents the response to list devices.</p>
-- @param PaginationToken [SearchPaginationTokenType] <p>The pagination token for the list device response.</p>
-- @param Devices [DeviceListType] <p>The devices returned in the list devices response.</p>
function M.ListDevicesResponse(PaginationToken, Devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevicesResponse")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["Devices"] = Devices,
	}
	M.AssertListDevicesResponse(t)
	return t
end

local GetIdentityProviderByIdentifierResponse_keys = { "IdentityProvider" = true, nil }

function M.AssertGetIdentityProviderByIdentifierResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityProviderByIdentifierResponse to be of type 'table'")
	assert(struct["IdentityProvider"], "Expected key IdentityProvider to exist in table")
	if struct["IdentityProvider"] then M.AssertIdentityProviderType(struct["IdentityProvider"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityProviderByIdentifierResponse_keys[k], "GetIdentityProviderByIdentifierResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityProviderByIdentifierResponse
--  
-- @param IdentityProvider [IdentityProviderType] <p>The identity provider object.</p>
-- Required parameter: IdentityProvider
function M.GetIdentityProviderByIdentifierResponse(IdentityProvider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityProviderByIdentifierResponse")
	local t = { 
		["IdentityProvider"] = IdentityProvider,
	}
	M.AssertGetIdentityProviderByIdentifierResponse(t)
	return t
end

local AdminRespondToAuthChallengeResponse_keys = { "AuthenticationResult" = true, "ChallengeName" = true, "ChallengeParameters" = true, "Session" = true, nil }

function M.AssertAdminRespondToAuthChallengeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRespondToAuthChallengeResponse to be of type 'table'")
	if struct["AuthenticationResult"] then M.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then M.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then M.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then M.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(AdminRespondToAuthChallengeResponse_keys[k], "AdminRespondToAuthChallengeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRespondToAuthChallengeResponse
-- <p>Responds to the authentication challenge, as an administrator.</p>
-- @param AuthenticationResult [AuthenticationResultType] <p>The result returned by the server in response to the authentication request.</p>
-- @param ChallengeName [ChallengeNameType] <p>The name of the challenge. For more information, see <a href="API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
-- @param ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. For more information, see <a href="API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
-- @param Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the <a href="API_InitiateAuth.html">InitiateAuth</a> or <a href="API_RespondToAuthChallenge.html">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
function M.AdminRespondToAuthChallengeResponse(AuthenticationResult, ChallengeName, ChallengeParameters, Session, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminRespondToAuthChallengeResponse")
	local t = { 
		["AuthenticationResult"] = AuthenticationResult,
		["ChallengeName"] = ChallengeName,
		["ChallengeParameters"] = ChallengeParameters,
		["Session"] = Session,
	}
	M.AssertAdminRespondToAuthChallengeResponse(t)
	return t
end

local UpdateUserPoolResponse_keys = { nil }

function M.AssertUpdateUserPoolResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateUserPoolResponse_keys[k], "UpdateUserPoolResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolResponse
-- <p>Represents the response from the server when you make a request to update the user pool.</p>
function M.UpdateUserPoolResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserPoolResponse")
	local t = { 
	}
	M.AssertUpdateUserPoolResponse(t)
	return t
end

local ListUserImportJobsResponse_keys = { "UserImportJobs" = true, "PaginationToken" = true, nil }

function M.AssertListUserImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserImportJobsResponse to be of type 'table'")
	if struct["UserImportJobs"] then M.AssertUserImportJobsListType(struct["UserImportJobs"]) end
	if struct["PaginationToken"] then M.AssertPaginationKeyType(struct["PaginationToken"]) end
	for k,_ in pairs(struct) do
		assert(ListUserImportJobsResponse_keys[k], "ListUserImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserImportJobsResponse
-- <p>Represents the response from the server to the request to list the user import jobs.</p>
-- @param UserImportJobs [UserImportJobsListType] <p>The user import jobs.</p>
-- @param PaginationToken [PaginationKeyType] <p>An identifier that can be used to return the next set of user import jobs in the list.</p>
function M.ListUserImportJobsResponse(UserImportJobs, PaginationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserImportJobsResponse")
	local t = { 
		["UserImportJobs"] = UserImportJobs,
		["PaginationToken"] = PaginationToken,
	}
	M.AssertListUserImportJobsResponse(t)
	return t
end

local ListUserPoolsResponse_keys = { "UserPools" = true, "NextToken" = true, nil }

function M.AssertListUserPoolsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolsResponse to be of type 'table'")
	if struct["UserPools"] then M.AssertUserPoolListType(struct["UserPools"]) end
	if struct["NextToken"] then M.AssertPaginationKeyType(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListUserPoolsResponse_keys[k], "ListUserPoolsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolsResponse
-- <p>Represents the response to list user pools.</p>
-- @param UserPools [UserPoolListType] <p>The user pools from the response to list users.</p>
-- @param NextToken [PaginationKeyType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
function M.ListUserPoolsResponse(UserPools, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoolsResponse")
	local t = { 
		["UserPools"] = UserPools,
		["NextToken"] = NextToken,
	}
	M.AssertListUserPoolsResponse(t)
	return t
end

local UserPoolType_keys = { "AliasAttributes" = true, "SchemaAttributes" = true, "EmailVerificationSubject" = true, "MfaConfiguration" = true, "SmsAuthenticationMessage" = true, "SmsConfiguration" = true, "AutoVerifiedAttributes" = true, "LambdaConfig" = true, "Status" = true, "LastModifiedDate" = true, "AdminCreateUserConfig" = true, "EmailConfiguration" = true, "SmsConfigurationFailure" = true, "Name" = true, "EmailConfigurationFailure" = true, "Policies" = true, "UserPoolTags" = true, "DeviceConfiguration" = true, "SmsVerificationMessage" = true, "EmailVerificationMessage" = true, "CreationDate" = true, "EstimatedNumberOfUsers" = true, "Id" = true, nil }

function M.AssertUserPoolType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolType to be of type 'table'")
	if struct["AliasAttributes"] then M.AssertAliasAttributesListType(struct["AliasAttributes"]) end
	if struct["SchemaAttributes"] then M.AssertSchemaAttributesListType(struct["SchemaAttributes"]) end
	if struct["EmailVerificationSubject"] then M.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then M.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["SmsAuthenticationMessage"] then M.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["SmsConfiguration"] then M.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then M.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["LambdaConfig"] then M.AssertLambdaConfigType(struct["LambdaConfig"]) end
	if struct["Status"] then M.AssertStatusType(struct["Status"]) end
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["AdminCreateUserConfig"] then M.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["EmailConfiguration"] then M.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["SmsConfigurationFailure"] then M.AssertStringType(struct["SmsConfigurationFailure"]) end
	if struct["Name"] then M.AssertUserPoolNameType(struct["Name"]) end
	if struct["EmailConfigurationFailure"] then M.AssertStringType(struct["EmailConfigurationFailure"]) end
	if struct["Policies"] then M.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then M.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["DeviceConfiguration"] then M.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["SmsVerificationMessage"] then M.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationMessage"] then M.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	if struct["EstimatedNumberOfUsers"] then M.AssertIntegerType(struct["EstimatedNumberOfUsers"]) end
	if struct["Id"] then M.AssertUserPoolIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UserPoolType_keys[k], "UserPoolType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolType
-- <p>A container for information about the user pool type.</p>
-- @param AliasAttributes [AliasAttributesListType] <p>Specifies the attributes that are aliased in a user pool.</p>
-- @param SchemaAttributes [SchemaAttributesListType] <p>A container with the schema attributes of a user pool.</p>
-- @param EmailVerificationSubject [EmailVerificationSubjectType] <p>The subject of the email verification message.</p>
-- @param MfaConfiguration [UserPoolMfaType] <p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>
-- @param SmsAuthenticationMessage [SmsVerificationMessageType] <p>The contents of the SMS authentication message.</p>
-- @param SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- @param AutoVerifiedAttributes [VerifiedAttributesListType] <p>Specifies the attributes that are auto-verified in a user pool.</p>
-- @param LambdaConfig [LambdaConfigType] <p>A container for the AWS Lambda triggers associated with a user pool.</p>
-- @param Status [StatusType] <p>The status of a user pool.</p>
-- @param LastModifiedDate [DateType] <p>The date the user pool was last modified.</p>
-- @param AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- @param EmailConfiguration [EmailConfigurationType] <p>The email configuration.</p>
-- @param SmsConfigurationFailure [StringType] <p>The reason why the SMS configuration cannot send the messages to your users.</p>
-- @param Name [UserPoolNameType] <p>The name of the user pool.</p>
-- @param EmailConfigurationFailure [StringType] <p>The reason why the email configuration cannot send the messages to your users.</p>
-- @param Policies [UserPoolPolicyType] <p>A container for the policies associated with a user pool.</p>
-- @param UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- @param DeviceConfiguration [DeviceConfigurationType] <p>The device configuration.</p>
-- @param SmsVerificationMessage [SmsVerificationMessageType] <p>The contents of the SMS verification message.</p>
-- @param EmailVerificationMessage [EmailVerificationMessageType] <p>The contents of the email verification message.</p>
-- @param CreationDate [DateType] <p>The date the user pool was created.</p>
-- @param EstimatedNumberOfUsers [IntegerType] <p>A number estimating the size of the user pool.</p>
-- @param Id [UserPoolIdType] <p>The ID of the user pool.</p>
function M.UserPoolType(AliasAttributes, SchemaAttributes, EmailVerificationSubject, MfaConfiguration, SmsAuthenticationMessage, SmsConfiguration, AutoVerifiedAttributes, LambdaConfig, Status, LastModifiedDate, AdminCreateUserConfig, EmailConfiguration, SmsConfigurationFailure, Name, EmailConfigurationFailure, Policies, UserPoolTags, DeviceConfiguration, SmsVerificationMessage, EmailVerificationMessage, CreationDate, EstimatedNumberOfUsers, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserPoolType")
	local t = { 
		["AliasAttributes"] = AliasAttributes,
		["SchemaAttributes"] = SchemaAttributes,
		["EmailVerificationSubject"] = EmailVerificationSubject,
		["MfaConfiguration"] = MfaConfiguration,
		["SmsAuthenticationMessage"] = SmsAuthenticationMessage,
		["SmsConfiguration"] = SmsConfiguration,
		["AutoVerifiedAttributes"] = AutoVerifiedAttributes,
		["LambdaConfig"] = LambdaConfig,
		["Status"] = Status,
		["LastModifiedDate"] = LastModifiedDate,
		["AdminCreateUserConfig"] = AdminCreateUserConfig,
		["EmailConfiguration"] = EmailConfiguration,
		["SmsConfigurationFailure"] = SmsConfigurationFailure,
		["Name"] = Name,
		["EmailConfigurationFailure"] = EmailConfigurationFailure,
		["Policies"] = Policies,
		["UserPoolTags"] = UserPoolTags,
		["DeviceConfiguration"] = DeviceConfiguration,
		["SmsVerificationMessage"] = SmsVerificationMessage,
		["EmailVerificationMessage"] = EmailVerificationMessage,
		["CreationDate"] = CreationDate,
		["EstimatedNumberOfUsers"] = EstimatedNumberOfUsers,
		["Id"] = Id,
	}
	M.AssertUserPoolType(t)
	return t
end

local AdminForgetDeviceRequest_keys = { "Username" = true, "DeviceKey" = true, "UserPoolId" = true, nil }

function M.AssertAdminForgetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminForgetDeviceRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminForgetDeviceRequest_keys[k], "AdminForgetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminForgetDeviceRequest
-- <p>Sends the forgot device request, as an administrator.</p>
-- @param Username [UsernameType] <p>The user name.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: DeviceKey
function M.AdminForgetDeviceRequest(Username, DeviceKey, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminForgetDeviceRequest")
	local t = { 
		["Username"] = Username,
		["DeviceKey"] = DeviceKey,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminForgetDeviceRequest(t)
	return t
end

local DescribeIdentityProviderRequest_keys = { "ProviderName" = true, "UserPoolId" = true, nil }

function M.AssertDescribeIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	if struct["ProviderName"] then M.AssertProviderNameType(struct["ProviderName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityProviderRequest_keys[k], "DescribeIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityProviderRequest
--  
-- @param ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: ProviderName
function M.DescribeIdentityProviderRequest(ProviderName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityProviderRequest")
	local t = { 
		["ProviderName"] = ProviderName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDescribeIdentityProviderRequest(t)
	return t
end

local SchemaAttributeType_keys = { "Name" = true, "NumberAttributeConstraints" = true, "StringAttributeConstraints" = true, "DeveloperOnlyAttribute" = true, "Required" = true, "AttributeDataType" = true, "Mutable" = true, nil }

function M.AssertSchemaAttributeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaAttributeType to be of type 'table'")
	if struct["Name"] then M.AssertCustomAttributeNameType(struct["Name"]) end
	if struct["NumberAttributeConstraints"] then M.AssertNumberAttributeConstraintsType(struct["NumberAttributeConstraints"]) end
	if struct["StringAttributeConstraints"] then M.AssertStringAttributeConstraintsType(struct["StringAttributeConstraints"]) end
	if struct["DeveloperOnlyAttribute"] then M.AssertBooleanType(struct["DeveloperOnlyAttribute"]) end
	if struct["Required"] then M.AssertBooleanType(struct["Required"]) end
	if struct["AttributeDataType"] then M.AssertAttributeDataType(struct["AttributeDataType"]) end
	if struct["Mutable"] then M.AssertBooleanType(struct["Mutable"]) end
	for k,_ in pairs(struct) do
		assert(SchemaAttributeType_keys[k], "SchemaAttributeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaAttributeType
-- <p>Contains information about the schema attribute.</p>
-- @param Name [CustomAttributeNameType] <p>A schema attribute of the name type.</p>
-- @param NumberAttributeConstraints [NumberAttributeConstraintsType] <p>Specifies the constraints for an attribute of the number type.</p>
-- @param StringAttributeConstraints [StringAttributeConstraintsType] <p>Specifies the constraints for an attribute of the string type.</p>
-- @param DeveloperOnlyAttribute [BooleanType] <p>Specifies whether the attribute type is developer only.</p>
-- @param Required [BooleanType] <p>Specifies whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.</p>
-- @param AttributeDataType [AttributeDataType] <p>The attribute data type.</p>
-- @param Mutable [BooleanType] <p>Specifies whether the attribute can be changed once it has been created.</p>
function M.SchemaAttributeType(Name, NumberAttributeConstraints, StringAttributeConstraints, DeveloperOnlyAttribute, Required, AttributeDataType, Mutable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaAttributeType")
	local t = { 
		["Name"] = Name,
		["NumberAttributeConstraints"] = NumberAttributeConstraints,
		["StringAttributeConstraints"] = StringAttributeConstraints,
		["DeveloperOnlyAttribute"] = DeveloperOnlyAttribute,
		["Required"] = Required,
		["AttributeDataType"] = AttributeDataType,
		["Mutable"] = Mutable,
	}
	M.AssertSchemaAttributeType(t)
	return t
end

local AdminSetUserSettingsRequest_keys = { "Username" = true, "MFAOptions" = true, "UserPoolId" = true, nil }

function M.AssertAdminSetUserSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminSetUserSettingsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["MFAOptions"], "Expected key MFAOptions to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["MFAOptions"] then M.AssertMFAOptionListType(struct["MFAOptions"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminSetUserSettingsRequest_keys[k], "AdminSetUserSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminSetUserSettingsRequest
-- <p>Represents the request to set user settings as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user for whom you wish to set user settings.</p>
-- @param MFAOptions [MFAOptionListType] <p>Specifies the options for MFA (e.g., email or phone number).</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to set the user's settings, such as MFA options.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: MFAOptions
function M.AdminSetUserSettingsRequest(Username, MFAOptions, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminSetUserSettingsRequest")
	local t = { 
		["Username"] = Username,
		["MFAOptions"] = MFAOptions,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminSetUserSettingsRequest(t)
	return t
end

local AdminCreateUserResponse_keys = { "User" = true, nil }

function M.AssertAdminCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminCreateUserResponse to be of type 'table'")
	if struct["User"] then M.AssertUserType(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(AdminCreateUserResponse_keys[k], "AdminCreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminCreateUserResponse
-- <p>Represents the response from the server to the request to create the user.</p>
-- @param User [UserType] <p>The user returned in the request to create a new user.</p>
function M.AdminCreateUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminCreateUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertAdminCreateUserResponse(t)
	return t
end

local AddCustomAttributesResponse_keys = { nil }

function M.AssertAddCustomAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCustomAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddCustomAttributesResponse_keys[k], "AddCustomAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCustomAttributesResponse
-- <p>Represents the response from the server for the request to add custom attributes.</p>
function M.AddCustomAttributesResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCustomAttributesResponse")
	local t = { 
	}
	M.AssertAddCustomAttributesResponse(t)
	return t
end

local CreateUserPoolResponse_keys = { "UserPool" = true, nil }

function M.AssertCreateUserPoolResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolResponse to be of type 'table'")
	if struct["UserPool"] then M.AssertUserPoolType(struct["UserPool"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserPoolResponse_keys[k], "CreateUserPoolResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolResponse
-- <p>Represents the response from the server for the request to create a user pool.</p>
-- @param UserPool [UserPoolType] <p>A container for the user pool details.</p>
function M.CreateUserPoolResponse(UserPool, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserPoolResponse")
	local t = { 
		["UserPool"] = UserPool,
	}
	M.AssertCreateUserPoolResponse(t)
	return t
end

local InvalidUserPoolConfigurationException_keys = { "message" = true, nil }

function M.AssertInvalidUserPoolConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUserPoolConfigurationException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidUserPoolConfigurationException_keys[k], "InvalidUserPoolConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUserPoolConfigurationException
-- <p>This exception is thrown when the user pool configuration is invalid.</p>
-- @param message [MessageType] <p>The message returned when the user pool configuration is invalid.</p>
function M.InvalidUserPoolConfigurationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidUserPoolConfigurationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidUserPoolConfigurationException(t)
	return t
end

local DeleteUserPoolRequest_keys = { "UserPoolId" = true, nil }

function M.AssertDeleteUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserPoolRequest_keys[k], "DeleteUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPoolRequest
-- <p>Represents the request to delete a user pool.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to delete.</p>
-- Required parameter: UserPoolId
function M.DeleteUserPoolRequest(UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserPoolRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDeleteUserPoolRequest(t)
	return t
end

local NewDeviceMetadataType_keys = { "DeviceKey" = true, "DeviceGroupKey" = true, nil }

function M.AssertNewDeviceMetadataType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NewDeviceMetadataType to be of type 'table'")
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceGroupKey"] then M.AssertStringType(struct["DeviceGroupKey"]) end
	for k,_ in pairs(struct) do
		assert(NewDeviceMetadataType_keys[k], "NewDeviceMetadataType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NewDeviceMetadataType
-- <p>The new device metadata type.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param DeviceGroupKey [StringType] <p>The device group key.</p>
function M.NewDeviceMetadataType(DeviceKey, DeviceGroupKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NewDeviceMetadataType")
	local t = { 
		["DeviceKey"] = DeviceKey,
		["DeviceGroupKey"] = DeviceGroupKey,
	}
	M.AssertNewDeviceMetadataType(t)
	return t
end

local ListUserPoolsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListUserPoolsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoolsRequest to be of type 'table'")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["NextToken"] then M.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPoolQueryLimitType(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListUserPoolsRequest_keys[k], "ListUserPoolsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoolsRequest
-- <p>Represents the request to list user pools.</p>
-- @param NextToken [PaginationKeyType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param MaxResults [PoolQueryLimitType] <p>The maximum number of results you want the request to return when listing the user pools.</p>
-- Required parameter: MaxResults
function M.ListUserPoolsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoolsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListUserPoolsRequest(t)
	return t
end

local AdminEnableUserRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminEnableUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminEnableUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminEnableUserRequest_keys[k], "AdminEnableUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminEnableUserRequest
-- <p>Represents the request that enables the user as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to enable.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to enable the user.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminEnableUserRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminEnableUserRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminEnableUserRequest(t)
	return t
end

local GetUserAttributeVerificationCodeResponse_keys = { "CodeDeliveryDetails" = true, nil }

function M.AssertGetUserAttributeVerificationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserAttributeVerificationCodeResponse to be of type 'table'")
	if struct["CodeDeliveryDetails"] then M.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(GetUserAttributeVerificationCodeResponse_keys[k], "GetUserAttributeVerificationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserAttributeVerificationCodeResponse
-- <p>The verification code response returned by the server response to get the user attribute verification code.</p>
-- @param CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server in response to the request to get the user attribute verification code.</p>
function M.GetUserAttributeVerificationCodeResponse(CodeDeliveryDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserAttributeVerificationCodeResponse")
	local t = { 
		["CodeDeliveryDetails"] = CodeDeliveryDetails,
	}
	M.AssertGetUserAttributeVerificationCodeResponse(t)
	return t
end

local DescribeUserPoolDomainResponse_keys = { "DomainDescription" = true, nil }

function M.AssertDescribeUserPoolDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolDomainResponse to be of type 'table'")
	if struct["DomainDescription"] then M.AssertDomainDescriptionType(struct["DomainDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserPoolDomainResponse_keys[k], "DescribeUserPoolDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolDomainResponse
--  
-- @param DomainDescription [DomainDescriptionType] <p>A domain description object containing information about the domain.</p>
function M.DescribeUserPoolDomainResponse(DomainDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserPoolDomainResponse")
	local t = { 
		["DomainDescription"] = DomainDescription,
	}
	M.AssertDescribeUserPoolDomainResponse(t)
	return t
end

local DeviceSecretVerifierConfigType_keys = { "Salt" = true, "PasswordVerifier" = true, nil }

function M.AssertDeviceSecretVerifierConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceSecretVerifierConfigType to be of type 'table'")
	if struct["Salt"] then M.AssertStringType(struct["Salt"]) end
	if struct["PasswordVerifier"] then M.AssertStringType(struct["PasswordVerifier"]) end
	for k,_ in pairs(struct) do
		assert(DeviceSecretVerifierConfigType_keys[k], "DeviceSecretVerifierConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceSecretVerifierConfigType
-- <p>The device verifier against which it will be authenticated.</p>
-- @param Salt [StringType] <p>The salt.</p>
-- @param PasswordVerifier [StringType] <p>The password verifier.</p>
function M.DeviceSecretVerifierConfigType(Salt, PasswordVerifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceSecretVerifierConfigType")
	local t = { 
		["Salt"] = Salt,
		["PasswordVerifier"] = PasswordVerifier,
	}
	M.AssertDeviceSecretVerifierConfigType(t)
	return t
end

local AttributeType_keys = { "Name" = true, "Value" = true, nil }

function M.AssertAttributeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeType to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertAttributeNameType(struct["Name"]) end
	if struct["Value"] then M.AssertAttributeValueType(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(AttributeType_keys[k], "AttributeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeType
-- <p>Specifies whether the attribute is standard or custom.</p>
-- @param Name [AttributeNameType] <p>The name of the attribute.</p>
-- @param Value [AttributeValueType] <p>The value of the attribute.</p>
-- Required parameter: Name
function M.AttributeType(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeType")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertAttributeType(t)
	return t
end

local ConfirmDeviceRequest_keys = { "DeviceSecretVerifierConfig" = true, "DeviceName" = true, "DeviceKey" = true, "AccessToken" = true, nil }

function M.AssertConfirmDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmDeviceRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["DeviceKey"], "Expected key DeviceKey to exist in table")
	if struct["DeviceSecretVerifierConfig"] then M.AssertDeviceSecretVerifierConfigType(struct["DeviceSecretVerifierConfig"]) end
	if struct["DeviceName"] then M.AssertDeviceNameType(struct["DeviceName"]) end
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmDeviceRequest_keys[k], "ConfirmDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmDeviceRequest
-- <p>Confirms the device request.</p>
-- @param DeviceSecretVerifierConfig [DeviceSecretVerifierConfigType] <p>The configuration of the device secret verifier.</p>
-- @param DeviceName [DeviceNameType] <p>The device name.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param AccessToken [TokenModelType] <p>The access token.</p>
-- Required parameter: AccessToken
-- Required parameter: DeviceKey
function M.ConfirmDeviceRequest(DeviceSecretVerifierConfig, DeviceName, DeviceKey, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmDeviceRequest")
	local t = { 
		["DeviceSecretVerifierConfig"] = DeviceSecretVerifierConfig,
		["DeviceName"] = DeviceName,
		["DeviceKey"] = DeviceKey,
		["AccessToken"] = AccessToken,
	}
	M.AssertConfirmDeviceRequest(t)
	return t
end

local DuplicateProviderException_keys = { "message" = true, nil }

function M.AssertDuplicateProviderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateProviderException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateProviderException_keys[k], "DuplicateProviderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateProviderException
-- <p>This exception is thrown when the provider is already supported by the user pool.</p>
-- @param message [MessageType] <p>This exception is thrown when the provider is already supported by the user pool.</p>
function M.DuplicateProviderException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateProviderException")
	local t = { 
		["message"] = message,
	}
	M.AssertDuplicateProviderException(t)
	return t
end

local ListIdentityProvidersRequest_keys = { "NextToken" = true, "MaxResults" = true, "UserPoolId" = true, nil }

function M.AssertListIdentityProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityProvidersRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then M.AssertPaginationKeyType(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertListProvidersLimitType(struct["MaxResults"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityProvidersRequest_keys[k], "ListIdentityProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityProvidersRequest
--  
-- @param NextToken [PaginationKeyType] <p>A pagination token.</p>
-- @param MaxResults [ListProvidersLimitType] <p>The maximum number of identity providers to return.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
function M.ListIdentityProvidersRequest(NextToken, MaxResults, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityProvidersRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertListIdentityProvidersRequest(t)
	return t
end

local GlobalSignOutRequest_keys = { "AccessToken" = true, nil }

function M.AssertGlobalSignOutRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalSignOutRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(GlobalSignOutRequest_keys[k], "GlobalSignOutRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalSignOutRequest
-- <p>Represents the request to sign out all devices.</p>
-- @param AccessToken [TokenModelType] <p>The access token.</p>
-- Required parameter: AccessToken
function M.GlobalSignOutRequest(AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GlobalSignOutRequest")
	local t = { 
		["AccessToken"] = AccessToken,
	}
	M.AssertGlobalSignOutRequest(t)
	return t
end

local UserImportJobType_keys = { "CompletionDate" = true, "StartDate" = true, "Status" = true, "UserPoolId" = true, "ImportedUsers" = true, "SkippedUsers" = true, "JobName" = true, "CompletionMessage" = true, "JobId" = true, "PreSignedUrl" = true, "CloudWatchLogsRoleArn" = true, "FailedUsers" = true, "CreationDate" = true, nil }

function M.AssertUserImportJobType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserImportJobType to be of type 'table'")
	if struct["CompletionDate"] then M.AssertDateType(struct["CompletionDate"]) end
	if struct["StartDate"] then M.AssertDateType(struct["StartDate"]) end
	if struct["Status"] then M.AssertUserImportJobStatusType(struct["Status"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ImportedUsers"] then M.AssertLongType(struct["ImportedUsers"]) end
	if struct["SkippedUsers"] then M.AssertLongType(struct["SkippedUsers"]) end
	if struct["JobName"] then M.AssertUserImportJobNameType(struct["JobName"]) end
	if struct["CompletionMessage"] then M.AssertCompletionMessageType(struct["CompletionMessage"]) end
	if struct["JobId"] then M.AssertUserImportJobIdType(struct["JobId"]) end
	if struct["PreSignedUrl"] then M.AssertPreSignedUrlType(struct["PreSignedUrl"]) end
	if struct["CloudWatchLogsRoleArn"] then M.AssertArnType(struct["CloudWatchLogsRoleArn"]) end
	if struct["FailedUsers"] then M.AssertLongType(struct["FailedUsers"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(UserImportJobType_keys[k], "UserImportJobType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserImportJobType
-- <p>The user import job type.</p>
-- @param CompletionDate [DateType] <p>The date when the user import job was completed.</p>
-- @param StartDate [DateType] <p>The date when the user import job was started.</p>
-- @param Status [UserImportJobStatusType] <p>The status of the user import job. One of the following:</p> <ul> <li> <p> <code>Created</code> - The job was created but not started.</p> </li> <li> <p> <code>Pending</code> - A transition state. You have started the job, but it has not begun importing users yet.</p> </li> <li> <p> <code>InProgress</code> - The job has started, and users are being imported.</p> </li> <li> <p> <code>Stopping</code> - You have stopped the job, but the job has not stopped importing users yet.</p> </li> <li> <p> <code>Stopped</code> - You have stopped the job, and the job has stopped importing users.</p> </li> <li> <p> <code>Succeeded</code> - The job has completed successfully.</p> </li> <li> <p> <code>Failed</code> - The job has stopped due to an error.</p> </li> <li> <p> <code>Expired</code> - You created a job, but did not start the job within 24-48 hours. All data associated with the job was deleted, and the job cannot be started.</p> </li> </ul>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- @param ImportedUsers [LongType] <p>The number of users that were successfully imported.</p>
-- @param SkippedUsers [LongType] <p>The number of users that were skipped.</p>
-- @param JobName [UserImportJobNameType] <p>The job name for the user import job.</p>
-- @param CompletionMessage [CompletionMessageType] <p>The message returned when the user import job is completed.</p>
-- @param JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- @param PreSignedUrl [PreSignedUrlType] <p>The pre-signed URL to be used to upload the <code>.csv</code> file.</p>
-- @param CloudWatchLogsRoleArn [ArnType] <p>The role ARN for the Amazon CloudWatch Logging role for the user import job. For more information, see "Creating the CloudWatch Logs IAM Role" in the Amazon Cognito Developer Guide.</p>
-- @param FailedUsers [LongType] <p>The number of users that could not be imported.</p>
-- @param CreationDate [DateType] <p>The date the user import job was created.</p>
function M.UserImportJobType(CompletionDate, StartDate, Status, UserPoolId, ImportedUsers, SkippedUsers, JobName, CompletionMessage, JobId, PreSignedUrl, CloudWatchLogsRoleArn, FailedUsers, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserImportJobType")
	local t = { 
		["CompletionDate"] = CompletionDate,
		["StartDate"] = StartDate,
		["Status"] = Status,
		["UserPoolId"] = UserPoolId,
		["ImportedUsers"] = ImportedUsers,
		["SkippedUsers"] = SkippedUsers,
		["JobName"] = JobName,
		["CompletionMessage"] = CompletionMessage,
		["JobId"] = JobId,
		["PreSignedUrl"] = PreSignedUrl,
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["FailedUsers"] = FailedUsers,
		["CreationDate"] = CreationDate,
	}
	M.AssertUserImportJobType(t)
	return t
end

local UnsupportedUserStateException_keys = { "message" = true, nil }

function M.AssertUnsupportedUserStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedUserStateException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedUserStateException_keys[k], "UnsupportedUserStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedUserStateException
-- <p>The request failed because the user is in an unsupported state.</p>
-- @param message [MessageType] <p>The message returned when the user is in an unsupported state.</p>
function M.UnsupportedUserStateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedUserStateException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedUserStateException(t)
	return t
end

local AddCustomAttributesRequest_keys = { "CustomAttributes" = true, "UserPoolId" = true, nil }

function M.AssertAddCustomAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddCustomAttributesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["CustomAttributes"], "Expected key CustomAttributes to exist in table")
	if struct["CustomAttributes"] then M.AssertCustomAttributesListType(struct["CustomAttributes"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AddCustomAttributesRequest_keys[k], "AddCustomAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddCustomAttributesRequest
-- <p>Represents the request to add custom attributes.</p>
-- @param CustomAttributes [CustomAttributesListType] <p>An array of custom attributes, such as Mutable and Name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to add custom attributes.</p>
-- Required parameter: UserPoolId
-- Required parameter: CustomAttributes
function M.AddCustomAttributesRequest(CustomAttributes, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddCustomAttributesRequest")
	local t = { 
		["CustomAttributes"] = CustomAttributes,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAddCustomAttributesRequest(t)
	return t
end

local AdminGetDeviceResponse_keys = { "Device" = true, nil }

function M.AssertAdminGetDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminGetDeviceResponse to be of type 'table'")
	assert(struct["Device"], "Expected key Device to exist in table")
	if struct["Device"] then M.AssertDeviceType(struct["Device"]) end
	for k,_ in pairs(struct) do
		assert(AdminGetDeviceResponse_keys[k], "AdminGetDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminGetDeviceResponse
-- <p>Gets the device response, as an administrator.</p>
-- @param Device [DeviceType] <p>The device.</p>
-- Required parameter: Device
function M.AdminGetDeviceResponse(Device, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminGetDeviceResponse")
	local t = { 
		["Device"] = Device,
	}
	M.AssertAdminGetDeviceResponse(t)
	return t
end

local CreateUserPoolRequest_keys = { "AliasAttributes" = true, "SmsVerificationMessage" = true, "EmailVerificationSubject" = true, "MfaConfiguration" = true, "Schema" = true, "EmailVerificationMessage" = true, "PoolName" = true, "SmsAuthenticationMessage" = true, "SmsConfiguration" = true, "EmailConfiguration" = true, "AutoVerifiedAttributes" = true, "Policies" = true, "UserPoolTags" = true, "AdminCreateUserConfig" = true, "DeviceConfiguration" = true, "LambdaConfig" = true, nil }

function M.AssertCreateUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolRequest to be of type 'table'")
	assert(struct["PoolName"], "Expected key PoolName to exist in table")
	if struct["AliasAttributes"] then M.AssertAliasAttributesListType(struct["AliasAttributes"]) end
	if struct["SmsVerificationMessage"] then M.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationSubject"] then M.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then M.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["Schema"] then M.AssertSchemaAttributesListType(struct["Schema"]) end
	if struct["EmailVerificationMessage"] then M.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["PoolName"] then M.AssertUserPoolNameType(struct["PoolName"]) end
	if struct["SmsAuthenticationMessage"] then M.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["SmsConfiguration"] then M.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["EmailConfiguration"] then M.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then M.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["Policies"] then M.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then M.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["AdminCreateUserConfig"] then M.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["DeviceConfiguration"] then M.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["LambdaConfig"] then M.AssertLambdaConfigType(struct["LambdaConfig"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserPoolRequest_keys[k], "CreateUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolRequest
-- <p>Represents the request to create a user pool.</p>
-- @param AliasAttributes [AliasAttributesListType] <p>Attributes supported as an alias for this user pool. Possible values: <b>phone_number</b>, <b>email</b>, or <b>preferred_username</b>.</p>
-- @param SmsVerificationMessage [SmsVerificationMessageType] <p>A string representing the SMS verification message.</p>
-- @param EmailVerificationSubject [EmailVerificationSubjectType] <p>A string representing the email verification subject.</p>
-- @param MfaConfiguration [UserPoolMfaType] <p>Specifies MFA configuration details.</p>
-- @param Schema [SchemaAttributesListType] <p>An array of schema attributes for the new user pool. These attributes can be standard or custom attributes.</p>
-- @param EmailVerificationMessage [EmailVerificationMessageType] <p>A string representing the email verification message.</p>
-- @param PoolName [UserPoolNameType] <p>A string used to name the user pool.</p>
-- @param SmsAuthenticationMessage [SmsVerificationMessageType] <p>A string representing the SMS authentication message.</p>
-- @param SmsConfiguration [SmsConfigurationType] <p>The SMS configuration.</p>
-- @param EmailConfiguration [EmailConfigurationType] <p>The email configuration.</p>
-- @param AutoVerifiedAttributes [VerifiedAttributesListType] <p>The attributes to be auto-verified. Possible values: <b>email</b>, <b>phone_number</b>.</p>
-- @param Policies [UserPoolPolicyType] <p>The policies associated with the new user pool.</p>
-- @param UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- @param AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- @param DeviceConfiguration [DeviceConfigurationType] <p>The device configuration.</p>
-- @param LambdaConfig [LambdaConfigType] <p>The Lambda trigger configuration information for the new user pool.</p>
-- Required parameter: PoolName
function M.CreateUserPoolRequest(AliasAttributes, SmsVerificationMessage, EmailVerificationSubject, MfaConfiguration, Schema, EmailVerificationMessage, PoolName, SmsAuthenticationMessage, SmsConfiguration, EmailConfiguration, AutoVerifiedAttributes, Policies, UserPoolTags, AdminCreateUserConfig, DeviceConfiguration, LambdaConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserPoolRequest")
	local t = { 
		["AliasAttributes"] = AliasAttributes,
		["SmsVerificationMessage"] = SmsVerificationMessage,
		["EmailVerificationSubject"] = EmailVerificationSubject,
		["MfaConfiguration"] = MfaConfiguration,
		["Schema"] = Schema,
		["EmailVerificationMessage"] = EmailVerificationMessage,
		["PoolName"] = PoolName,
		["SmsAuthenticationMessage"] = SmsAuthenticationMessage,
		["SmsConfiguration"] = SmsConfiguration,
		["EmailConfiguration"] = EmailConfiguration,
		["AutoVerifiedAttributes"] = AutoVerifiedAttributes,
		["Policies"] = Policies,
		["UserPoolTags"] = UserPoolTags,
		["AdminCreateUserConfig"] = AdminCreateUserConfig,
		["DeviceConfiguration"] = DeviceConfiguration,
		["LambdaConfig"] = LambdaConfig,
	}
	M.AssertCreateUserPoolRequest(t)
	return t
end

local AdminCreateUserConfigType_keys = { "InviteMessageTemplate" = true, "UnusedAccountValidityDays" = true, "AllowAdminCreateUserOnly" = true, nil }

function M.AssertAdminCreateUserConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminCreateUserConfigType to be of type 'table'")
	if struct["InviteMessageTemplate"] then M.AssertMessageTemplateType(struct["InviteMessageTemplate"]) end
	if struct["UnusedAccountValidityDays"] then M.AssertAdminCreateUserUnusedAccountValidityDaysType(struct["UnusedAccountValidityDays"]) end
	if struct["AllowAdminCreateUserOnly"] then M.AssertBooleanType(struct["AllowAdminCreateUserOnly"]) end
	for k,_ in pairs(struct) do
		assert(AdminCreateUserConfigType_keys[k], "AdminCreateUserConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminCreateUserConfigType
-- <p>The type of configuration for creating a new user profile.</p>
-- @param InviteMessageTemplate [MessageTemplateType] <p>The message template to be used for the welcome message to new users.</p>
-- @param UnusedAccountValidityDays [AdminCreateUserUnusedAccountValidityDaysType] <p>The user account expiration limit, in days, after which the account is no longer usable. To reset the account after that time limit, you must call <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the <code>MessageAction</code> parameter. The default value for this parameter is 7.</p>
-- @param AllowAdminCreateUserOnly [BooleanType] <p>Set to <code>True</code> if only the administrator is allowed to create user profiles. Set to <code>False</code> if users can sign themselves up via an app.</p>
function M.AdminCreateUserConfigType(InviteMessageTemplate, UnusedAccountValidityDays, AllowAdminCreateUserOnly, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminCreateUserConfigType")
	local t = { 
		["InviteMessageTemplate"] = InviteMessageTemplate,
		["UnusedAccountValidityDays"] = UnusedAccountValidityDays,
		["AllowAdminCreateUserOnly"] = AllowAdminCreateUserOnly,
	}
	M.AssertAdminCreateUserConfigType(t)
	return t
end

local VerifyUserAttributeResponse_keys = { nil }

function M.AssertVerifyUserAttributeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyUserAttributeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(VerifyUserAttributeResponse_keys[k], "VerifyUserAttributeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyUserAttributeResponse
-- <p>A container representing the response from the server from the request to verify user attributes.</p>
function M.VerifyUserAttributeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyUserAttributeResponse")
	local t = { 
	}
	M.AssertVerifyUserAttributeResponse(t)
	return t
end

local ConfirmForgotPasswordRequest_keys = { "Username" = true, "Password" = true, "ConfirmationCode" = true, "SecretHash" = true, "ClientId" = true, nil }

function M.AssertConfirmForgotPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmForgotPasswordRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["ConfirmationCode"], "Expected key ConfirmationCode to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["Password"] then M.AssertPasswordType(struct["Password"]) end
	if struct["ConfirmationCode"] then M.AssertConfirmationCodeType(struct["ConfirmationCode"]) end
	if struct["SecretHash"] then M.AssertSecretHashType(struct["SecretHash"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmForgotPasswordRequest_keys[k], "ConfirmForgotPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmForgotPasswordRequest
-- <p>The request representing the confirmation for a password reset.</p>
-- @param Username [UsernameType] <p>The user name of the user for whom you want to enter a code to retrieve a forgotten password.</p>
-- @param Password [PasswordType] <p>The password sent by a user's request to retrieve a forgotten password.</p>
-- @param ConfirmationCode [ConfirmationCodeType] <p>The confirmation code sent by a user's request to retrieve a forgotten password. For more information, see <a href="API_ForgotPassword.html">ForgotPassword</a> </p>
-- @param SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- Required parameter: ClientId
-- Required parameter: Username
-- Required parameter: ConfirmationCode
-- Required parameter: Password
function M.ConfirmForgotPasswordRequest(Username, Password, ConfirmationCode, SecretHash, ClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmForgotPasswordRequest")
	local t = { 
		["Username"] = Username,
		["Password"] = Password,
		["ConfirmationCode"] = ConfirmationCode,
		["SecretHash"] = SecretHash,
		["ClientId"] = ClientId,
	}
	M.AssertConfirmForgotPasswordRequest(t)
	return t
end

local ListUsersRequest_keys = { "PaginationToken" = true, "Filter" = true, "AttributesToGet" = true, "Limit" = true, "UserPoolId" = true, nil }

function M.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["PaginationToken"] then M.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Filter"] then M.AssertUserFilterType(struct["Filter"]) end
	if struct["AttributesToGet"] then M.AssertSearchedAttributeNamesListType(struct["AttributesToGet"]) end
	if struct["Limit"] then M.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(ListUsersRequest_keys[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
-- <p>Represents the request to list users.</p>
-- @param PaginationToken [SearchPaginationTokenType] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Filter [UserFilterType] <p>A filter string of the form "<i>AttributeName</i> <i>Filter-Type</i> "<i>AttributeValue</i>"". Quotation marks within the filter string must be escaped using the backslash (\) character. For example, "<code>family_name</code> = \"Reddy\"".</p> <ul> <li> <p> <i>AttributeName</i>: The name of the attribute to search for. You can only search for one attribute at a time.</p> </li> <li> <p> <i>Filter-Type</i>: For an exact match, use =, for example, "<code>given_name</code> = \"Jon\"". For a prefix ("starts with") match, use ^=, for example, "<code>given_name</code> ^= \"Jon\"". </p> </li> <li> <p> <i>AttributeValue</i>: The attribute value that must be matched for each user.</p> </li> </ul> <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user pool.</p> <p>You can only search for the following standard attributes:</p> <ul> <li> <p> <code>username</code> (case-sensitive)</p> </li> <li> <p> <code>email</code> </p> </li> <li> <p> <code>phone_number</code> </p> </li> <li> <p> <code>name</code> </p> </li> <li> <p> <code>given_name</code> </p> </li> <li> <p> <code>family_name</code> </p> </li> <li> <p> <code>preferred_username</code> </p> </li> <li> <p> <code>cognito:user_status</code> (called <b>Enabled</b> in the Console) (case-sensitive)</p> </li> <li> <p> <code>status</code> (case-insensitive)</p> </li> </ul> <p>Custom attributes are not searchable.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
-- @param AttributesToGet [SearchedAttributeNamesListType] <p>An array of strings, where each string is the name of a user attribute to be returned for each user in the search results. If the array is empty, all attributes are returned.</p>
-- @param Limit [QueryLimitType] <p>Maximum number of users to be returned.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool on which the search should be performed.</p>
-- Required parameter: UserPoolId
function M.ListUsersRequest(PaginationToken, Filter, AttributesToGet, Limit, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersRequest")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["Filter"] = Filter,
		["AttributesToGet"] = AttributesToGet,
		["Limit"] = Limit,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertListUsersRequest(t)
	return t
end

local ConfirmSignUpResponse_keys = { nil }

function M.AssertConfirmSignUpResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSignUpResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ConfirmSignUpResponse_keys[k], "ConfirmSignUpResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSignUpResponse
-- <p>Represents the response from the server for the registration confirmation.</p>
function M.ConfirmSignUpResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmSignUpResponse")
	local t = { 
	}
	M.AssertConfirmSignUpResponse(t)
	return t
end

local DescribeUserPoolClientResponse_keys = { "UserPoolClient" = true, nil }

function M.AssertDescribeUserPoolClientResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolClientResponse to be of type 'table'")
	if struct["UserPoolClient"] then M.AssertUserPoolClientType(struct["UserPoolClient"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserPoolClientResponse_keys[k], "DescribeUserPoolClientResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolClientResponse
-- <p>Represents the response from the server from a request to describe the user pool client.</p>
-- @param UserPoolClient [UserPoolClientType] <p>The user pool client from a server response to describe the user pool client.</p>
function M.DescribeUserPoolClientResponse(UserPoolClient, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserPoolClientResponse")
	local t = { 
		["UserPoolClient"] = UserPoolClient,
	}
	M.AssertDescribeUserPoolClientResponse(t)
	return t
end

local AdminConfirmSignUpResponse_keys = { nil }

function M.AssertAdminConfirmSignUpResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminConfirmSignUpResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminConfirmSignUpResponse_keys[k], "AdminConfirmSignUpResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminConfirmSignUpResponse
-- <p>Represents the response from the server for the request to confirm registration.</p>
function M.AdminConfirmSignUpResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminConfirmSignUpResponse")
	local t = { 
	}
	M.AssertAdminConfirmSignUpResponse(t)
	return t
end

local GetUserAttributeVerificationCodeRequest_keys = { "AttributeName" = true, "AccessToken" = true, nil }

function M.AssertGetUserAttributeVerificationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserAttributeVerificationCodeRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then M.AssertAttributeNameType(struct["AttributeName"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(GetUserAttributeVerificationCodeRequest_keys[k], "GetUserAttributeVerificationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserAttributeVerificationCodeRequest
-- <p>Represents the request to get user attribute verification.</p>
-- @param AttributeName [AttributeNameType] <p>The attribute name returned by the server response to get the user attribute verification code.</p>
-- @param AccessToken [TokenModelType] <p>The access token returned by the server response to get the user attribute verification code.</p>
-- Required parameter: AccessToken
-- Required parameter: AttributeName
function M.GetUserAttributeVerificationCodeRequest(AttributeName, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserAttributeVerificationCodeRequest")
	local t = { 
		["AttributeName"] = AttributeName,
		["AccessToken"] = AccessToken,
	}
	M.AssertGetUserAttributeVerificationCodeRequest(t)
	return t
end

local MessageTemplateType_keys = { "EmailMessage" = true, "EmailSubject" = true, "SMSMessage" = true, nil }

function M.AssertMessageTemplateType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageTemplateType to be of type 'table'")
	if struct["EmailMessage"] then M.AssertEmailVerificationMessageType(struct["EmailMessage"]) end
	if struct["EmailSubject"] then M.AssertEmailVerificationSubjectType(struct["EmailSubject"]) end
	if struct["SMSMessage"] then M.AssertSmsVerificationMessageType(struct["SMSMessage"]) end
	for k,_ in pairs(struct) do
		assert(MessageTemplateType_keys[k], "MessageTemplateType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageTemplateType
-- <p>The message template structure.</p>
-- @param EmailMessage [EmailVerificationMessageType] <p>The message template for email messages.</p>
-- @param EmailSubject [EmailVerificationSubjectType] <p>The subject line for email messages.</p>
-- @param SMSMessage [SmsVerificationMessageType] <p>The message template for SMS messages.</p>
function M.MessageTemplateType(EmailMessage, EmailSubject, SMSMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageTemplateType")
	local t = { 
		["EmailMessage"] = EmailMessage,
		["EmailSubject"] = EmailSubject,
		["SMSMessage"] = SMSMessage,
	}
	M.AssertMessageTemplateType(t)
	return t
end

local ConfirmDeviceResponse_keys = { "UserConfirmationNecessary" = true, nil }

function M.AssertConfirmDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmDeviceResponse to be of type 'table'")
	if struct["UserConfirmationNecessary"] then M.AssertBooleanType(struct["UserConfirmationNecessary"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmDeviceResponse_keys[k], "ConfirmDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmDeviceResponse
-- <p>Confirms the device response.</p>
-- @param UserConfirmationNecessary [BooleanType] <p>Indicates whether the user confirmation is necessary to confirm the device response.</p>
function M.ConfirmDeviceResponse(UserConfirmationNecessary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmDeviceResponse")
	local t = { 
		["UserConfirmationNecessary"] = UserConfirmationNecessary,
	}
	M.AssertConfirmDeviceResponse(t)
	return t
end

local AdminInitiateAuthRequest_keys = { "ClientMetadata" = true, "AuthParameters" = true, "AuthFlow" = true, "ClientId" = true, "UserPoolId" = true, nil }

function M.AssertAdminInitiateAuthRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminInitiateAuthRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["AuthFlow"], "Expected key AuthFlow to exist in table")
	if struct["ClientMetadata"] then M.AssertClientMetadataType(struct["ClientMetadata"]) end
	if struct["AuthParameters"] then M.AssertAuthParametersType(struct["AuthParameters"]) end
	if struct["AuthFlow"] then M.AssertAuthFlowType(struct["AuthFlow"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminInitiateAuthRequest_keys[k], "AdminInitiateAuthRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminInitiateAuthRequest
-- <p>Initiates the authorization request, as an administrator.</p>
-- @param ClientMetadata [ClientMetadataType] <p>This is a random key-value pair map which can contain any key and will be passed to your PreAuthentication Lambda trigger as-is. It can be used to implement additional validations around authentication.</p>
-- @param AuthParameters [AuthParametersType] <p>The authentication parameters. These are inputs corresponding to the <code>AuthFlow</code> that you are invoking. The required values depend on the value of <code>AuthFlow</code>:</p> <ul> <li> <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SRPA</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (required if the app client is configured with a client secret), <code>REFRESH_TOKEN</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>PASSWORD</code> (required), <code>DEVICE_KEY</code> </p> </li> <li> <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required), <code>SECRET_HASH</code> (if app client is configured with client secret), <code>DEVICE_KEY</code> </p> </li> </ul>
-- @param AuthFlow [AuthFlowType] <p>The authentication flow for this call to execute. The API action will depend on this value. For example:</p> <ul> <li> <p> <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return new tokens.</p> </li> <li> <p> <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and <code>SRPA</code> and return the SRP variables to be used for next challenge execution.</p> </li> </ul> <p>Valid values include:</p> <ul> <li> <p> <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password (SRP) protocol.</p> </li> <li> <p> <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication flow for refreshing the access token and ID token by supplying a valid refresh token.</p> </li> <li> <p> <code>CUSTOM_AUTH</code>: Custom authentication flow.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you can pass in the USERNAME and PASSWORD directly if the flow is enabled for calling the app client.</p> </li> </ul>
-- @param ClientId [ClientIdType] <p>The app client ID.</p>
-- @param UserPoolId [UserPoolIdType] <p>The ID of the Amazon Cognito user pool.</p>
-- Required parameter: UserPoolId
-- Required parameter: ClientId
-- Required parameter: AuthFlow
function M.AdminInitiateAuthRequest(ClientMetadata, AuthParameters, AuthFlow, ClientId, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminInitiateAuthRequest")
	local t = { 
		["ClientMetadata"] = ClientMetadata,
		["AuthParameters"] = AuthParameters,
		["AuthFlow"] = AuthFlow,
		["ClientId"] = ClientId,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminInitiateAuthRequest(t)
	return t
end

local RespondToAuthChallengeRequest_keys = { "ChallengeResponses" = true, "ChallengeName" = true, "ClientId" = true, "Session" = true, nil }

function M.AssertRespondToAuthChallengeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondToAuthChallengeRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["ChallengeName"], "Expected key ChallengeName to exist in table")
	if struct["ChallengeResponses"] then M.AssertChallengeResponsesType(struct["ChallengeResponses"]) end
	if struct["ChallengeName"] then M.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["Session"] then M.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(RespondToAuthChallengeRequest_keys[k], "RespondToAuthChallengeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondToAuthChallengeRequest
-- <p>The request to respond to an authentication challenge.</p>
-- @param ChallengeResponses [ChallengeResponsesType] <p>The challenge responses. These are inputs corresponding to the value of <code>ChallengeName</code>, for example:</p> <ul> <li> <p> <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret).</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>, any other required attributes, <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured with client secret). </p> </li> </ul>
-- @param ChallengeName [ChallengeNameType] <p>The challenge name. For more information, see <a href="API_InitiateAuth.html">InitiateAuth</a>.</p> <p> <code>ADMIN_NO_SRP_AUTH</code> is not a valid value.</p>
-- @param ClientId [ClientIdType] <p>The app client ID.</p>
-- @param Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
-- Required parameter: ClientId
-- Required parameter: ChallengeName
function M.RespondToAuthChallengeRequest(ChallengeResponses, ChallengeName, ClientId, Session, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondToAuthChallengeRequest")
	local t = { 
		["ChallengeResponses"] = ChallengeResponses,
		["ChallengeName"] = ChallengeName,
		["ClientId"] = ClientId,
		["Session"] = Session,
	}
	M.AssertRespondToAuthChallengeRequest(t)
	return t
end

local GetCSVHeaderResponse_keys = { "CSVHeader" = true, "UserPoolId" = true, nil }

function M.AssertGetCSVHeaderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCSVHeaderResponse to be of type 'table'")
	if struct["CSVHeader"] then M.AssertListOfStringTypes(struct["CSVHeader"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetCSVHeaderResponse_keys[k], "GetCSVHeaderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCSVHeaderResponse
-- <p>Represents the response from the server to the request to get the header information for the .csv file for the user import job.</p>
-- @param CSVHeader [ListOfStringTypes] <p>The header information for the .csv file for the user import job.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are to be imported into.</p>
function M.GetCSVHeaderResponse(CSVHeader, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCSVHeaderResponse")
	local t = { 
		["CSVHeader"] = CSVHeader,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertGetCSVHeaderResponse(t)
	return t
end

local SignUpRequest_keys = { "Username" = true, "ValidationData" = true, "SecretHash" = true, "UserAttributes" = true, "ClientId" = true, "Password" = true, nil }

function M.AssertSignUpRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignUpRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["ValidationData"] then M.AssertAttributeListType(struct["ValidationData"]) end
	if struct["SecretHash"] then M.AssertSecretHashType(struct["SecretHash"]) end
	if struct["UserAttributes"] then M.AssertAttributeListType(struct["UserAttributes"]) end
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["Password"] then M.AssertPasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(SignUpRequest_keys[k], "SignUpRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignUpRequest
-- <p>Represents the request to register a user.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to register.</p>
-- @param ValidationData [AttributeListType] <p>The validation data in the request to register a user.</p>
-- @param SecretHash [SecretHashType] <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.</p>
-- @param UserAttributes [AttributeListType] <p>An array of name-value pairs representing user attributes.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- @param Password [PasswordType] <p>The password of the user you wish to register.</p>
-- Required parameter: ClientId
-- Required parameter: Username
-- Required parameter: Password
function M.SignUpRequest(Username, ValidationData, SecretHash, UserAttributes, ClientId, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignUpRequest")
	local t = { 
		["Username"] = Username,
		["ValidationData"] = ValidationData,
		["SecretHash"] = SecretHash,
		["UserAttributes"] = UserAttributes,
		["ClientId"] = ClientId,
		["Password"] = Password,
	}
	M.AssertSignUpRequest(t)
	return t
end

local InvalidSmsRoleAccessPolicyException_keys = { "message" = true, nil }

function M.AssertInvalidSmsRoleAccessPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSmsRoleAccessPolicyException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSmsRoleAccessPolicyException_keys[k], "InvalidSmsRoleAccessPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSmsRoleAccessPolicyException
-- <p>This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.</p>
-- @param message [MessageType] <p>The message retuned when the invalid SMS role access policy exception is thrown.</p>
function M.InvalidSmsRoleAccessPolicyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSmsRoleAccessPolicyException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidSmsRoleAccessPolicyException(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>This exception is thrown when the Amazon Cognito service cannot find the requested resource.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service returns a resource not found exception.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local AdminRemoveUserFromGroupRequest_keys = { "Username" = true, "GroupName" = true, "UserPoolId" = true, nil }

function M.AssertAdminRemoveUserFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminRemoveUserFromGroupRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminRemoveUserFromGroupRequest_keys[k], "AdminRemoveUserFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminRemoveUserFromGroupRequest
--  
-- @param Username [UsernameType] <p>The username for the user.</p>
-- @param GroupName [GroupNameType] <p>The group name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: GroupName
function M.AdminRemoveUserFromGroupRequest(Username, GroupName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminRemoveUserFromGroupRequest")
	local t = { 
		["Username"] = Username,
		["GroupName"] = GroupName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminRemoveUserFromGroupRequest(t)
	return t
end

local VerifyUserAttributeRequest_keys = { "Code" = true, "AttributeName" = true, "AccessToken" = true, nil }

function M.AssertVerifyUserAttributeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyUserAttributeRequest to be of type 'table'")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["Code"] then M.AssertConfirmationCodeType(struct["Code"]) end
	if struct["AttributeName"] then M.AssertAttributeNameType(struct["AttributeName"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(VerifyUserAttributeRequest_keys[k], "VerifyUserAttributeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyUserAttributeRequest
-- <p>Represents the request to verify user attributes.</p>
-- @param Code [ConfirmationCodeType] <p>The verification code in the request to verify user attributes.</p>
-- @param AttributeName [AttributeNameType] <p>The attribute name in the request to verify user attributes.</p>
-- @param AccessToken [TokenModelType] <p>Represents the access token of the request to verify user attributes.</p>
-- Required parameter: AccessToken
-- Required parameter: AttributeName
-- Required parameter: Code
function M.VerifyUserAttributeRequest(Code, AttributeName, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyUserAttributeRequest")
	local t = { 
		["Code"] = Code,
		["AttributeName"] = AttributeName,
		["AccessToken"] = AccessToken,
	}
	M.AssertVerifyUserAttributeRequest(t)
	return t
end

local AdminEnableUserResponse_keys = { nil }

function M.AssertAdminEnableUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminEnableUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminEnableUserResponse_keys[k], "AdminEnableUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminEnableUserResponse
-- <p>Represents the response from the server for the request to enable a user as an administrator.</p>
function M.AdminEnableUserResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminEnableUserResponse")
	local t = { 
	}
	M.AssertAdminEnableUserResponse(t)
	return t
end

local DeleteUserAttributesRequest_keys = { "UserAttributeNames" = true, "AccessToken" = true, nil }

function M.AssertDeleteUserAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserAttributesRequest to be of type 'table'")
	assert(struct["UserAttributeNames"], "Expected key UserAttributeNames to exist in table")
	assert(struct["AccessToken"], "Expected key AccessToken to exist in table")
	if struct["UserAttributeNames"] then M.AssertAttributeNameListType(struct["UserAttributeNames"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserAttributesRequest_keys[k], "DeleteUserAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserAttributesRequest
-- <p>Represents the request to delete user attributes.</p>
-- @param UserAttributeNames [AttributeNameListType] <p>An array of strings representing the user attribute names you wish to delete.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p>
-- @param AccessToken [TokenModelType] <p>The access token used in the request to delete user attributes.</p>
-- Required parameter: UserAttributeNames
-- Required parameter: AccessToken
function M.DeleteUserAttributesRequest(UserAttributeNames, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserAttributesRequest")
	local t = { 
		["UserAttributeNames"] = UserAttributeNames,
		["AccessToken"] = AccessToken,
	}
	M.AssertDeleteUserAttributesRequest(t)
	return t
end

local DescribeUserImportJobResponse_keys = { "UserImportJob" = true, nil }

function M.AssertDescribeUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then M.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserImportJobResponse_keys[k], "DescribeUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserImportJobResponse
-- <p>Represents the response from the server to the request to describe the user import job.</p>
-- @param UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
function M.DescribeUserImportJobResponse(UserImportJob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserImportJobResponse")
	local t = { 
		["UserImportJob"] = UserImportJob,
	}
	M.AssertDescribeUserImportJobResponse(t)
	return t
end

local InitiateAuthResponse_keys = { "AuthenticationResult" = true, "ChallengeName" = true, "ChallengeParameters" = true, "Session" = true, nil }

function M.AssertInitiateAuthResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateAuthResponse to be of type 'table'")
	if struct["AuthenticationResult"] then M.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then M.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then M.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then M.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(InitiateAuthResponse_keys[k], "InitiateAuthResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateAuthResponse
-- <p>Initiates the authentication response.</p>
-- @param AuthenticationResult [AuthenticationResultType] <p>The result of the authentication response. This is only returned if the caller does not need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>
-- @param ChallengeName [ChallengeNameType] <p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <p>Valid values include the following. Note that all of these challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable) in the parameters.</p> <ul> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>
-- @param ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. These are returned to you in the <code>InitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>RespondToAuthChallenge</code>). </p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p>
-- @param Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If the <a href="API_InitiateAuth.html">InitiateAuth</a> or <a href="API_RespondToAuthChallenge.html">RespondToAuthChallenge</a> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>RespondToAuthChallenge</code> API call.</p>
function M.InitiateAuthResponse(AuthenticationResult, ChallengeName, ChallengeParameters, Session, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateAuthResponse")
	local t = { 
		["AuthenticationResult"] = AuthenticationResult,
		["ChallengeName"] = ChallengeName,
		["ChallengeParameters"] = ChallengeParameters,
		["Session"] = Session,
	}
	M.AssertInitiateAuthResponse(t)
	return t
end

local AdminUpdateDeviceStatusResponse_keys = { nil }

function M.AssertAdminUpdateDeviceStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateDeviceStatusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminUpdateDeviceStatusResponse_keys[k], "AdminUpdateDeviceStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateDeviceStatusResponse
-- <p>The status response from the request to update the device, as an administrator.</p>
function M.AdminUpdateDeviceStatusResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminUpdateDeviceStatusResponse")
	local t = { 
	}
	M.AssertAdminUpdateDeviceStatusResponse(t)
	return t
end

local DescribeUserPoolRequest_keys = { "UserPoolId" = true, nil }

function M.AssertDescribeUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserPoolRequest_keys[k], "DescribeUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolRequest
-- <p>Represents the request to describe the user pool.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to describe.</p>
-- Required parameter: UserPoolId
function M.DescribeUserPoolRequest(UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserPoolRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDescribeUserPoolRequest(t)
	return t
end

local ListUsersInGroupRequest_keys = { "GroupName" = true, "NextToken" = true, "Limit" = true, "UserPoolId" = true, nil }

function M.AssertListUsersInGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersInGroupRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Limit"] then M.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(ListUsersInGroupRequest_keys[k], "ListUsersInGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersInGroupRequest
--  
-- @param GroupName [GroupNameType] <p>The name of the group.</p>
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Limit [QueryLimitType] <p>The limit of the request to list users.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: UserPoolId
-- Required parameter: GroupName
function M.ListUsersInGroupRequest(GroupName, NextToken, Limit, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersInGroupRequest")
	local t = { 
		["GroupName"] = GroupName,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertListUsersInGroupRequest(t)
	return t
end

local InvalidOAuthFlowException_keys = { "message" = true, nil }

function M.AssertInvalidOAuthFlowException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOAuthFlowException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOAuthFlowException_keys[k], "InvalidOAuthFlowException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOAuthFlowException
-- <p>This exception is thrown when the specified OAuth flow is invalid.</p>
-- @param message [MessageType] <p>This exception is thrown when the specified OAuth flow is invalid.</p>
function M.InvalidOAuthFlowException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOAuthFlowException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidOAuthFlowException(t)
	return t
end

local PasswordResetRequiredException_keys = { "message" = true, nil }

function M.AssertPasswordResetRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordResetRequiredException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PasswordResetRequiredException_keys[k], "PasswordResetRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordResetRequiredException
-- <p>This exception is thrown when a password reset is required.</p>
-- @param message [MessageType] <p>The message returned when a password reset is required.</p>
function M.PasswordResetRequiredException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PasswordResetRequiredException")
	local t = { 
		["message"] = message,
	}
	M.AssertPasswordResetRequiredException(t)
	return t
end

local ListGroupsRequest_keys = { "NextToken" = true, "Limit" = true, "UserPoolId" = true, nil }

function M.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Limit"] then M.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsRequest_keys[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Limit [QueryLimitType] <p>The limit of the request to list groups.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: UserPoolId
function M.ListGroupsRequest(NextToken, Limit, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertListGroupsRequest(t)
	return t
end

local TooManyRequestsException_keys = { "message" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>This exception is thrown when the user has made too many requests for a given operation.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service returns a too many requests exception.</p>
function M.TooManyRequestsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local ExpiredCodeException_keys = { "message" = true, nil }

function M.AssertExpiredCodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredCodeException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredCodeException_keys[k], "ExpiredCodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredCodeException
-- <p>This exception is thrown if a code has expired.</p>
-- @param message [MessageType] <p>The message returned when the expired code exception is thrown.</p>
function M.ExpiredCodeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredCodeException")
	local t = { 
		["message"] = message,
	}
	M.AssertExpiredCodeException(t)
	return t
end

local AdminDisableUserRequest_keys = { "Username" = true, "UserPoolId" = true, nil }

function M.AssertAdminDisableUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDisableUserRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminDisableUserRequest_keys[k], "AdminDisableUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDisableUserRequest
-- <p>Represents the request to disable any user as an administrator.</p>
-- @param Username [UsernameType] <p>The user name of the user you wish to disable.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to disable the user.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminDisableUserRequest(Username, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminDisableUserRequest")
	local t = { 
		["Username"] = Username,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminDisableUserRequest(t)
	return t
end

local CreateIdentityProviderRequest_keys = { "UserPoolId" = true, "ProviderName" = true, "ProviderType" = true, "ProviderDetails" = true, "IdpIdentifiers" = true, "AttributeMapping" = true, nil }

function M.AssertCreateIdentityProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIdentityProviderRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ProviderName"], "Expected key ProviderName to exist in table")
	assert(struct["ProviderType"], "Expected key ProviderType to exist in table")
	assert(struct["ProviderDetails"], "Expected key ProviderDetails to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["ProviderName"] then M.AssertProviderNameType(struct["ProviderName"]) end
	if struct["ProviderType"] then M.AssertIdentityProviderTypeType(struct["ProviderType"]) end
	if struct["ProviderDetails"] then M.AssertProviderDetailsType(struct["ProviderDetails"]) end
	if struct["IdpIdentifiers"] then M.AssertIdpIdentifiersListType(struct["IdpIdentifiers"]) end
	if struct["AttributeMapping"] then M.AssertAttributeMappingType(struct["AttributeMapping"]) end
	for k,_ in pairs(struct) do
		assert(CreateIdentityProviderRequest_keys[k], "CreateIdentityProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIdentityProviderRequest
--  
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- @param ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- @param ProviderType [IdentityProviderTypeType] <p>The identity provider type.</p>
-- @param ProviderDetails [ProviderDetailsType] <p>The identity provider details, such as <code>MetadataURL</code> and <code>MetadataFile</code>.</p>
-- @param IdpIdentifiers [IdpIdentifiersListType] <p>A list of identity provider identifiers.</p>
-- @param AttributeMapping [AttributeMappingType] <p>A mapping of identity provider attributes to standard and custom user pool attributes.</p>
-- Required parameter: UserPoolId
-- Required parameter: ProviderName
-- Required parameter: ProviderType
-- Required parameter: ProviderDetails
function M.CreateIdentityProviderRequest(UserPoolId, ProviderName, ProviderType, ProviderDetails, IdpIdentifiers, AttributeMapping, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIdentityProviderRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
		["ProviderName"] = ProviderName,
		["ProviderType"] = ProviderType,
		["ProviderDetails"] = ProviderDetails,
		["IdpIdentifiers"] = IdpIdentifiers,
		["AttributeMapping"] = AttributeMapping,
	}
	M.AssertCreateIdentityProviderRequest(t)
	return t
end

local AdminAddUserToGroupRequest_keys = { "Username" = true, "GroupName" = true, "UserPoolId" = true, nil }

function M.AssertAdminAddUserToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminAddUserToGroupRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminAddUserToGroupRequest_keys[k], "AdminAddUserToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminAddUserToGroupRequest
--  
-- @param Username [UsernameType] <p>The username for the user.</p>
-- @param GroupName [GroupNameType] <p>The group name.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
-- Required parameter: GroupName
function M.AdminAddUserToGroupRequest(Username, GroupName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminAddUserToGroupRequest")
	local t = { 
		["Username"] = Username,
		["GroupName"] = GroupName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminAddUserToGroupRequest(t)
	return t
end

local AdminUpdateUserAttributesResponse_keys = { nil }

function M.AssertAdminUpdateUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminUpdateUserAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminUpdateUserAttributesResponse_keys[k], "AdminUpdateUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminUpdateUserAttributesResponse
-- <p>Represents the response from the server for the request to update user attributes as an administrator.</p>
function M.AdminUpdateUserAttributesResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminUpdateUserAttributesResponse")
	local t = { 
	}
	M.AssertAdminUpdateUserAttributesResponse(t)
	return t
end

local UpdateUserPoolRequest_keys = { "SmsVerificationMessage" = true, "EmailVerificationSubject" = true, "MfaConfiguration" = true, "UserPoolId" = true, "EmailVerificationMessage" = true, "SmsAuthenticationMessage" = true, "SmsConfiguration" = true, "EmailConfiguration" = true, "AutoVerifiedAttributes" = true, "Policies" = true, "UserPoolTags" = true, "AdminCreateUserConfig" = true, "DeviceConfiguration" = true, "LambdaConfig" = true, nil }

function M.AssertUpdateUserPoolRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPoolRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["SmsVerificationMessage"] then M.AssertSmsVerificationMessageType(struct["SmsVerificationMessage"]) end
	if struct["EmailVerificationSubject"] then M.AssertEmailVerificationSubjectType(struct["EmailVerificationSubject"]) end
	if struct["MfaConfiguration"] then M.AssertUserPoolMfaType(struct["MfaConfiguration"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["EmailVerificationMessage"] then M.AssertEmailVerificationMessageType(struct["EmailVerificationMessage"]) end
	if struct["SmsAuthenticationMessage"] then M.AssertSmsVerificationMessageType(struct["SmsAuthenticationMessage"]) end
	if struct["SmsConfiguration"] then M.AssertSmsConfigurationType(struct["SmsConfiguration"]) end
	if struct["EmailConfiguration"] then M.AssertEmailConfigurationType(struct["EmailConfiguration"]) end
	if struct["AutoVerifiedAttributes"] then M.AssertVerifiedAttributesListType(struct["AutoVerifiedAttributes"]) end
	if struct["Policies"] then M.AssertUserPoolPolicyType(struct["Policies"]) end
	if struct["UserPoolTags"] then M.AssertUserPoolTagsType(struct["UserPoolTags"]) end
	if struct["AdminCreateUserConfig"] then M.AssertAdminCreateUserConfigType(struct["AdminCreateUserConfig"]) end
	if struct["DeviceConfiguration"] then M.AssertDeviceConfigurationType(struct["DeviceConfiguration"]) end
	if struct["LambdaConfig"] then M.AssertLambdaConfigType(struct["LambdaConfig"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserPoolRequest_keys[k], "UpdateUserPoolRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPoolRequest
-- <p>Represents the request to update the user pool.</p>
-- @param SmsVerificationMessage [SmsVerificationMessageType] <p>A container with information about the SMS verification message.</p>
-- @param EmailVerificationSubject [EmailVerificationSubjectType] <p>The subject of the email verification message.</p>
-- @param MfaConfiguration [UserPoolMfaType] <p>Can be one of the following values:</p> <ul> <li> <p> <code>OFF</code> - MFA tokens are not required and cannot be specified during user registration.</p> </li> <li> <p> <code>ON</code> - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.</p> </li> <li> <p> <code>OPTIONAL</code> - Users have the option when registering to create an MFA token.</p> </li> </ul>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to update.</p>
-- @param EmailVerificationMessage [EmailVerificationMessageType] <p>The contents of the email verification message.</p>
-- @param SmsAuthenticationMessage [SmsVerificationMessageType] <p>The contents of the SMS authentication message.</p>
-- @param SmsConfiguration [SmsConfigurationType] <p>SMS configuration.</p>
-- @param EmailConfiguration [EmailConfigurationType] <p>Email configuration.</p>
-- @param AutoVerifiedAttributes [VerifiedAttributesListType] <p>The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.</p>
-- @param Policies [UserPoolPolicyType] <p>A container with the policies you wish to update in a user pool.</p>
-- @param UserPoolTags [UserPoolTagsType] <p>The cost allocation tags for the user pool. For more information, see <a href="http://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-cost-allocation-tagging.html">Adding Cost Allocation Tags to Your User Pool</a> </p>
-- @param AdminCreateUserConfig [AdminCreateUserConfigType] <p>The configuration for <code>AdminCreateUser</code> requests.</p>
-- @param DeviceConfiguration [DeviceConfigurationType] <p>Device configuration.</p>
-- @param LambdaConfig [LambdaConfigType] <p>The AWS Lambda configuration information from the request to update the user pool.</p>
-- Required parameter: UserPoolId
function M.UpdateUserPoolRequest(SmsVerificationMessage, EmailVerificationSubject, MfaConfiguration, UserPoolId, EmailVerificationMessage, SmsAuthenticationMessage, SmsConfiguration, EmailConfiguration, AutoVerifiedAttributes, Policies, UserPoolTags, AdminCreateUserConfig, DeviceConfiguration, LambdaConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserPoolRequest")
	local t = { 
		["SmsVerificationMessage"] = SmsVerificationMessage,
		["EmailVerificationSubject"] = EmailVerificationSubject,
		["MfaConfiguration"] = MfaConfiguration,
		["UserPoolId"] = UserPoolId,
		["EmailVerificationMessage"] = EmailVerificationMessage,
		["SmsAuthenticationMessage"] = SmsAuthenticationMessage,
		["SmsConfiguration"] = SmsConfiguration,
		["EmailConfiguration"] = EmailConfiguration,
		["AutoVerifiedAttributes"] = AutoVerifiedAttributes,
		["Policies"] = Policies,
		["UserPoolTags"] = UserPoolTags,
		["AdminCreateUserConfig"] = AdminCreateUserConfig,
		["DeviceConfiguration"] = DeviceConfiguration,
		["LambdaConfig"] = LambdaConfig,
	}
	M.AssertUpdateUserPoolRequest(t)
	return t
end

local SmsConfigurationType_keys = { "ExternalId" = true, "SnsCallerArn" = true, nil }

function M.AssertSmsConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SmsConfigurationType to be of type 'table'")
	assert(struct["SnsCallerArn"], "Expected key SnsCallerArn to exist in table")
	if struct["ExternalId"] then M.AssertStringType(struct["ExternalId"]) end
	if struct["SnsCallerArn"] then M.AssertArnType(struct["SnsCallerArn"]) end
	for k,_ in pairs(struct) do
		assert(SmsConfigurationType_keys[k], "SmsConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SmsConfigurationType
-- <p>The SMS configuration type.</p>
-- @param ExternalId [StringType] <p>The external ID.</p>
-- @param SnsCallerArn [ArnType] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) caller.</p>
-- Required parameter: SnsCallerArn
function M.SmsConfigurationType(ExternalId, SnsCallerArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SmsConfigurationType")
	local t = { 
		["ExternalId"] = ExternalId,
		["SnsCallerArn"] = SnsCallerArn,
	}
	M.AssertSmsConfigurationType(t)
	return t
end

local UserLambdaValidationException_keys = { "message" = true, nil }

function M.AssertUserLambdaValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserLambdaValidationException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UserLambdaValidationException_keys[k], "UserLambdaValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserLambdaValidationException
-- <p>This exception is thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service returns a user validation exception with the AWS Lambda service.</p>
function M.UserLambdaValidationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserLambdaValidationException")
	local t = { 
		["message"] = message,
	}
	M.AssertUserLambdaValidationException(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>This exception is thrown when the Amazon Cognito service encounters an invalid parameter.</p>
-- @param message [MessageType] <p>The message returned when the Amazon Cognito service throws an invalid parameter exception.</p>
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local LambdaConfigType_keys = { "PostConfirmation" = true, "CreateAuthChallenge" = true, "VerifyAuthChallengeResponse" = true, "PreAuthentication" = true, "PostAuthentication" = true, "CustomMessage" = true, "PreSignUp" = true, "DefineAuthChallenge" = true, nil }

function M.AssertLambdaConfigType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaConfigType to be of type 'table'")
	if struct["PostConfirmation"] then M.AssertArnType(struct["PostConfirmation"]) end
	if struct["CreateAuthChallenge"] then M.AssertArnType(struct["CreateAuthChallenge"]) end
	if struct["VerifyAuthChallengeResponse"] then M.AssertArnType(struct["VerifyAuthChallengeResponse"]) end
	if struct["PreAuthentication"] then M.AssertArnType(struct["PreAuthentication"]) end
	if struct["PostAuthentication"] then M.AssertArnType(struct["PostAuthentication"]) end
	if struct["CustomMessage"] then M.AssertArnType(struct["CustomMessage"]) end
	if struct["PreSignUp"] then M.AssertArnType(struct["PreSignUp"]) end
	if struct["DefineAuthChallenge"] then M.AssertArnType(struct["DefineAuthChallenge"]) end
	for k,_ in pairs(struct) do
		assert(LambdaConfigType_keys[k], "LambdaConfigType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaConfigType
-- <p>Specifies the type of configuration for AWS Lambda triggers.</p>
-- @param PostConfirmation [ArnType] <p>A post-confirmation AWS Lambda trigger.</p>
-- @param CreateAuthChallenge [ArnType] <p>Creates an authentication challenge.</p>
-- @param VerifyAuthChallengeResponse [ArnType] <p>Verifies the authentication challenge response.</p>
-- @param PreAuthentication [ArnType] <p>A pre-authentication AWS Lambda trigger.</p>
-- @param PostAuthentication [ArnType] <p>A post-authentication AWS Lambda trigger.</p>
-- @param CustomMessage [ArnType] <p>A custom Message AWS Lambda trigger.</p>
-- @param PreSignUp [ArnType] <p>A pre-registration AWS Lambda trigger.</p>
-- @param DefineAuthChallenge [ArnType] <p>Defines the authentication challenge.</p>
function M.LambdaConfigType(PostConfirmation, CreateAuthChallenge, VerifyAuthChallengeResponse, PreAuthentication, PostAuthentication, CustomMessage, PreSignUp, DefineAuthChallenge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaConfigType")
	local t = { 
		["PostConfirmation"] = PostConfirmation,
		["CreateAuthChallenge"] = CreateAuthChallenge,
		["VerifyAuthChallengeResponse"] = VerifyAuthChallengeResponse,
		["PreAuthentication"] = PreAuthentication,
		["PostAuthentication"] = PostAuthentication,
		["CustomMessage"] = CustomMessage,
		["PreSignUp"] = PreSignUp,
		["DefineAuthChallenge"] = DefineAuthChallenge,
	}
	M.AssertLambdaConfigType(t)
	return t
end

local StopUserImportJobResponse_keys = { "UserImportJob" = true, nil }

function M.AssertStopUserImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopUserImportJobResponse to be of type 'table'")
	if struct["UserImportJob"] then M.AssertUserImportJobType(struct["UserImportJob"]) end
	for k,_ in pairs(struct) do
		assert(StopUserImportJobResponse_keys[k], "StopUserImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopUserImportJobResponse
-- <p>Represents the response from the server to the request to stop the user import job.</p>
-- @param UserImportJob [UserImportJobType] <p>The job object that represents the user import job.</p>
function M.StopUserImportJobResponse(UserImportJob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopUserImportJobResponse")
	local t = { 
		["UserImportJob"] = UserImportJob,
	}
	M.AssertStopUserImportJobResponse(t)
	return t
end

local DescribeUserImportJobRequest_keys = { "UserPoolId" = true, "JobId" = true, nil }

function M.AssertDescribeUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserImportJobRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobId"] then M.AssertUserImportJobIdType(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserImportJobRequest_keys[k], "DescribeUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserImportJobRequest
-- <p>Represents the request to describe the user import job.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- @param JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- Required parameter: UserPoolId
-- Required parameter: JobId
function M.DescribeUserImportJobRequest(UserPoolId, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserImportJobRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
		["JobId"] = JobId,
	}
	M.AssertDescribeUserImportJobRequest(t)
	return t
end

local ProviderDescription_keys = { "LastModifiedDate" = true, "ProviderType" = true, "ProviderName" = true, "CreationDate" = true, nil }

function M.AssertProviderDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProviderDescription to be of type 'table'")
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["ProviderType"] then M.AssertIdentityProviderTypeType(struct["ProviderType"]) end
	if struct["ProviderName"] then M.AssertProviderNameType(struct["ProviderName"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	for k,_ in pairs(struct) do
		assert(ProviderDescription_keys[k], "ProviderDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProviderDescription
-- <p>A container for identity provider details.</p>
-- @param LastModifiedDate [DateType] <p>The date the provider was last modified.</p>
-- @param ProviderType [IdentityProviderTypeType] <p>The identity provider type.</p>
-- @param ProviderName [ProviderNameType] <p>The identity provider name.</p>
-- @param CreationDate [DateType] <p>The date the provider was added to the user pool.</p>
function M.ProviderDescription(LastModifiedDate, ProviderType, ProviderName, CreationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProviderDescription")
	local t = { 
		["LastModifiedDate"] = LastModifiedDate,
		["ProviderType"] = ProviderType,
		["ProviderName"] = ProviderName,
		["CreationDate"] = CreationDate,
	}
	M.AssertProviderDescription(t)
	return t
end

local NumberAttributeConstraintsType_keys = { "MaxValue" = true, "MinValue" = true, nil }

function M.AssertNumberAttributeConstraintsType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberAttributeConstraintsType to be of type 'table'")
	if struct["MaxValue"] then M.AssertStringType(struct["MaxValue"]) end
	if struct["MinValue"] then M.AssertStringType(struct["MinValue"]) end
	for k,_ in pairs(struct) do
		assert(NumberAttributeConstraintsType_keys[k], "NumberAttributeConstraintsType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberAttributeConstraintsType
-- <p>The minimum and maximum value of an attribute that is of the number data type.</p>
-- @param MaxValue [StringType] <p>The maximum value of an attribute that is of the number data type.</p>
-- @param MinValue [StringType] <p>The minimum value of an attribute that is of the number data type.</p>
function M.NumberAttributeConstraintsType(MaxValue, MinValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberAttributeConstraintsType")
	local t = { 
		["MaxValue"] = MaxValue,
		["MinValue"] = MinValue,
	}
	M.AssertNumberAttributeConstraintsType(t)
	return t
end

local UserPoolTaggingException_keys = { "message" = true, nil }

function M.AssertUserPoolTaggingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolTaggingException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UserPoolTaggingException_keys[k], "UserPoolTaggingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolTaggingException
-- <p>This exception is thrown when a user pool tag cannot be set or updated.</p>
-- @param message [MessageType] <p>This exception is thrown when a user pool tag cannot be set or updated.</p>
function M.UserPoolTaggingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserPoolTaggingException")
	local t = { 
		["message"] = message,
	}
	M.AssertUserPoolTaggingException(t)
	return t
end

local CreateUserPoolClientRequest_keys = { "GenerateSecret" = true, "AllowedOAuthScopes" = true, "UserPoolId" = true, "AllowedOAuthFlowsUserPoolClient" = true, "LogoutURLs" = true, "DefaultRedirectURI" = true, "AllowedOAuthFlows" = true, "CallbackURLs" = true, "ExplicitAuthFlows" = true, "WriteAttributes" = true, "SupportedIdentityProviders" = true, "ReadAttributes" = true, "RefreshTokenValidity" = true, "ClientName" = true, nil }

function M.AssertCreateUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientName"], "Expected key ClientName to exist in table")
	if struct["GenerateSecret"] then M.AssertGenerateSecret(struct["GenerateSecret"]) end
	if struct["AllowedOAuthScopes"] then M.AssertScopeListType(struct["AllowedOAuthScopes"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["AllowedOAuthFlowsUserPoolClient"] then M.AssertBooleanType(struct["AllowedOAuthFlowsUserPoolClient"]) end
	if struct["LogoutURLs"] then M.AssertLogoutURLsListType(struct["LogoutURLs"]) end
	if struct["DefaultRedirectURI"] then M.AssertRedirectUrlType(struct["DefaultRedirectURI"]) end
	if struct["AllowedOAuthFlows"] then M.AssertOAuthFlowsType(struct["AllowedOAuthFlows"]) end
	if struct["CallbackURLs"] then M.AssertCallbackURLsListType(struct["CallbackURLs"]) end
	if struct["ExplicitAuthFlows"] then M.AssertExplicitAuthFlowsListType(struct["ExplicitAuthFlows"]) end
	if struct["WriteAttributes"] then M.AssertClientPermissionListType(struct["WriteAttributes"]) end
	if struct["SupportedIdentityProviders"] then M.AssertSupportedIdentityProvidersListType(struct["SupportedIdentityProviders"]) end
	if struct["ReadAttributes"] then M.AssertClientPermissionListType(struct["ReadAttributes"]) end
	if struct["RefreshTokenValidity"] then M.AssertRefreshTokenValidityType(struct["RefreshTokenValidity"]) end
	if struct["ClientName"] then M.AssertClientNameType(struct["ClientName"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserPoolClientRequest_keys[k], "CreateUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserPoolClientRequest
-- <p>Represents the request to create a user pool client.</p>
-- @param GenerateSecret [GenerateSecret] <p>Boolean to specify whether you want to generate a secret for the user pool client being created.</p>
-- @param AllowedOAuthScopes [ScopeListType] <p>A list of allowed <code>OAuth</code> scopes. Currently supported values are <code>"phone"</code>, <code>"email"</code>, <code>"openid"</code>, and <code>"Cognito"</code>.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool where you want to create a user pool client.</p>
-- @param AllowedOAuthFlowsUserPoolClient [BooleanType] <p>Set to <code>True</code> if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.</p>
-- @param LogoutURLs [LogoutURLsListType] <p>A list of allowed logout URLs for the identity providers.</p>
-- @param DefaultRedirectURI [RedirectUrlType] <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
-- @param AllowedOAuthFlows [OAuthFlowsType] <p>Set to <code>code</code> to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint.</p> <p>Set to <code>token</code> to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly.</p>
-- @param CallbackURLs [CallbackURLsListType] <p>A list of allowed callback URLs for the identity providers.</p>
-- @param ExplicitAuthFlows [ExplicitAuthFlowsListType] <p>The explicit authentication flows.</p>
-- @param WriteAttributes [ClientPermissionListType] <p>The write attributes.</p>
-- @param SupportedIdentityProviders [SupportedIdentityProvidersListType] <p>A list of provider names for the identity providers that are supported on this client.</p>
-- @param ReadAttributes [ClientPermissionListType] <p>The read attributes.</p>
-- @param RefreshTokenValidity [RefreshTokenValidityType] <p>The time limit, in days, after which the refresh token is no longer valid and cannot be used.</p>
-- @param ClientName [ClientNameType] <p>The client name for the user pool client you would like to create.</p>
-- Required parameter: UserPoolId
-- Required parameter: ClientName
function M.CreateUserPoolClientRequest(GenerateSecret, AllowedOAuthScopes, UserPoolId, AllowedOAuthFlowsUserPoolClient, LogoutURLs, DefaultRedirectURI, AllowedOAuthFlows, CallbackURLs, ExplicitAuthFlows, WriteAttributes, SupportedIdentityProviders, ReadAttributes, RefreshTokenValidity, ClientName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserPoolClientRequest")
	local t = { 
		["GenerateSecret"] = GenerateSecret,
		["AllowedOAuthScopes"] = AllowedOAuthScopes,
		["UserPoolId"] = UserPoolId,
		["AllowedOAuthFlowsUserPoolClient"] = AllowedOAuthFlowsUserPoolClient,
		["LogoutURLs"] = LogoutURLs,
		["DefaultRedirectURI"] = DefaultRedirectURI,
		["AllowedOAuthFlows"] = AllowedOAuthFlows,
		["CallbackURLs"] = CallbackURLs,
		["ExplicitAuthFlows"] = ExplicitAuthFlows,
		["WriteAttributes"] = WriteAttributes,
		["SupportedIdentityProviders"] = SupportedIdentityProviders,
		["ReadAttributes"] = ReadAttributes,
		["RefreshTokenValidity"] = RefreshTokenValidity,
		["ClientName"] = ClientName,
	}
	M.AssertCreateUserPoolClientRequest(t)
	return t
end

local PreconditionNotMetException_keys = { "message" = true, nil }

function M.AssertPreconditionNotMetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionNotMetException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PreconditionNotMetException_keys[k], "PreconditionNotMetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionNotMetException
-- <p>This exception is thrown when a precondition is not met.</p>
-- @param message [MessageType] <p>The message returned when a precondition is not met.</p>
function M.PreconditionNotMetException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreconditionNotMetException")
	local t = { 
		["message"] = message,
	}
	M.AssertPreconditionNotMetException(t)
	return t
end

local ResendConfirmationCodeResponse_keys = { "CodeDeliveryDetails" = true, nil }

function M.AssertResendConfirmationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResendConfirmationCodeResponse to be of type 'table'")
	if struct["CodeDeliveryDetails"] then M.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(ResendConfirmationCodeResponse_keys[k], "ResendConfirmationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResendConfirmationCodeResponse
-- <p>The response from the server when the Amazon Cognito Your User Pools service makes the request to resend a confirmation code.</p>
-- @param CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server in response to the request to resend the confirmation code.</p>
function M.ResendConfirmationCodeResponse(CodeDeliveryDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResendConfirmationCodeResponse")
	local t = { 
		["CodeDeliveryDetails"] = CodeDeliveryDetails,
	}
	M.AssertResendConfirmationCodeResponse(t)
	return t
end

local DeviceConfigurationType_keys = { "ChallengeRequiredOnNewDevice" = true, "DeviceOnlyRememberedOnUserPrompt" = true, nil }

function M.AssertDeviceConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceConfigurationType to be of type 'table'")
	if struct["ChallengeRequiredOnNewDevice"] then M.AssertBooleanType(struct["ChallengeRequiredOnNewDevice"]) end
	if struct["DeviceOnlyRememberedOnUserPrompt"] then M.AssertBooleanType(struct["DeviceOnlyRememberedOnUserPrompt"]) end
	for k,_ in pairs(struct) do
		assert(DeviceConfigurationType_keys[k], "DeviceConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceConfigurationType
-- <p>The type of configuration for the user pool's device tracking.</p>
-- @param ChallengeRequiredOnNewDevice [BooleanType] <p>Indicates whether a challenge is required on a new device. Only applicable to a new device.</p>
-- @param DeviceOnlyRememberedOnUserPrompt [BooleanType] <p>If true, a device is only remembered on user prompt.</p>
function M.DeviceConfigurationType(ChallengeRequiredOnNewDevice, DeviceOnlyRememberedOnUserPrompt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceConfigurationType")
	local t = { 
		["ChallengeRequiredOnNewDevice"] = ChallengeRequiredOnNewDevice,
		["DeviceOnlyRememberedOnUserPrompt"] = DeviceOnlyRememberedOnUserPrompt,
	}
	M.AssertDeviceConfigurationType(t)
	return t
end

local AdminDisableUserResponse_keys = { nil }

function M.AssertAdminDisableUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDisableUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminDisableUserResponse_keys[k], "AdminDisableUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDisableUserResponse
-- <p>Represents the response received from the server to disable the user as an administrator.</p>
function M.AdminDisableUserResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminDisableUserResponse")
	local t = { 
	}
	M.AssertAdminDisableUserResponse(t)
	return t
end

local GetDeviceResponse_keys = { "Device" = true, nil }

function M.AssertGetDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceResponse to be of type 'table'")
	assert(struct["Device"], "Expected key Device to exist in table")
	if struct["Device"] then M.AssertDeviceType(struct["Device"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceResponse_keys[k], "GetDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceResponse
-- <p>Gets the device response.</p>
-- @param Device [DeviceType] <p>The device.</p>
-- Required parameter: Device
function M.GetDeviceResponse(Device, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceResponse")
	local t = { 
		["Device"] = Device,
	}
	M.AssertGetDeviceResponse(t)
	return t
end

local AuthenticationResultType_keys = { "ExpiresIn" = true, "RefreshToken" = true, "TokenType" = true, "NewDeviceMetadata" = true, "IdToken" = true, "AccessToken" = true, nil }

function M.AssertAuthenticationResultType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthenticationResultType to be of type 'table'")
	if struct["ExpiresIn"] then M.AssertIntegerType(struct["ExpiresIn"]) end
	if struct["RefreshToken"] then M.AssertTokenModelType(struct["RefreshToken"]) end
	if struct["TokenType"] then M.AssertStringType(struct["TokenType"]) end
	if struct["NewDeviceMetadata"] then M.AssertNewDeviceMetadataType(struct["NewDeviceMetadata"]) end
	if struct["IdToken"] then M.AssertTokenModelType(struct["IdToken"]) end
	if struct["AccessToken"] then M.AssertTokenModelType(struct["AccessToken"]) end
	for k,_ in pairs(struct) do
		assert(AuthenticationResultType_keys[k], "AuthenticationResultType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthenticationResultType
-- <p>The result type of the authentication result.</p>
-- @param ExpiresIn [IntegerType] <p>The expiration period of the authentication result.</p>
-- @param RefreshToken [TokenModelType] <p>The refresh token of the authentication result.</p>
-- @param TokenType [StringType] <p>The token type of the authentication result.</p>
-- @param NewDeviceMetadata [NewDeviceMetadataType] <p>The new device metadata from an authentication result.</p>
-- @param IdToken [TokenModelType] <p>The ID token of the authentication result.</p>
-- @param AccessToken [TokenModelType] <p>The access token of the authentication result.</p>
function M.AuthenticationResultType(ExpiresIn, RefreshToken, TokenType, NewDeviceMetadata, IdToken, AccessToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthenticationResultType")
	local t = { 
		["ExpiresIn"] = ExpiresIn,
		["RefreshToken"] = RefreshToken,
		["TokenType"] = TokenType,
		["NewDeviceMetadata"] = NewDeviceMetadata,
		["IdToken"] = IdToken,
		["AccessToken"] = AccessToken,
	}
	M.AssertAuthenticationResultType(t)
	return t
end

local AdminSetUserSettingsResponse_keys = { nil }

function M.AssertAdminSetUserSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminSetUserSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminSetUserSettingsResponse_keys[k], "AdminSetUserSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminSetUserSettingsResponse
-- <p>Represents the response from the server to set user settings as an administrator.</p>
function M.AdminSetUserSettingsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminSetUserSettingsResponse")
	local t = { 
	}
	M.AssertAdminSetUserSettingsResponse(t)
	return t
end

local StopUserImportJobRequest_keys = { "UserPoolId" = true, "JobId" = true, nil }

function M.AssertStopUserImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopUserImportJobRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	if struct["JobId"] then M.AssertUserImportJobIdType(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(StopUserImportJobRequest_keys[k], "StopUserImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopUserImportJobRequest
-- <p>Represents the request to stop the user import job.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool that the users are being imported into.</p>
-- @param JobId [UserImportJobIdType] <p>The job ID for the user import job.</p>
-- Required parameter: UserPoolId
-- Required parameter: JobId
function M.StopUserImportJobRequest(UserPoolId, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopUserImportJobRequest")
	local t = { 
		["UserPoolId"] = UserPoolId,
		["JobId"] = JobId,
	}
	M.AssertStopUserImportJobRequest(t)
	return t
end

local InvalidSmsRoleTrustRelationshipException_keys = { "message" = true, nil }

function M.AssertInvalidSmsRoleTrustRelationshipException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSmsRoleTrustRelationshipException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSmsRoleTrustRelationshipException_keys[k], "InvalidSmsRoleTrustRelationshipException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSmsRoleTrustRelationshipException
-- <p>This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.</p>
-- @param message [MessageType] <p>The message returned when the role trust relationship for the SMS message is invalid.</p>
function M.InvalidSmsRoleTrustRelationshipException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSmsRoleTrustRelationshipException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidSmsRoleTrustRelationshipException(t)
	return t
end

local AdminInitiateAuthResponse_keys = { "AuthenticationResult" = true, "ChallengeName" = true, "ChallengeParameters" = true, "Session" = true, nil }

function M.AssertAdminInitiateAuthResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminInitiateAuthResponse to be of type 'table'")
	if struct["AuthenticationResult"] then M.AssertAuthenticationResultType(struct["AuthenticationResult"]) end
	if struct["ChallengeName"] then M.AssertChallengeNameType(struct["ChallengeName"]) end
	if struct["ChallengeParameters"] then M.AssertChallengeParametersType(struct["ChallengeParameters"]) end
	if struct["Session"] then M.AssertSessionType(struct["Session"]) end
	for k,_ in pairs(struct) do
		assert(AdminInitiateAuthResponse_keys[k], "AdminInitiateAuthResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminInitiateAuthResponse
-- <p>Initiates the authentication response, as an administrator.</p>
-- @param AuthenticationResult [AuthenticationResultType] <p>The result of the authentication response. This is only returned if the caller does not need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>
-- @param ChallengeName [ChallengeNameType] <p>The name of the challenge which you are responding to with this call. This is returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge.</p> <ul> <li> <p> <code>SMS_MFA</code>: Next challenge is to supply an <code>SMS_MFA_CODE</code>, delivered via SMS.</p> </li> <li> <p> <code>PASSWORD_VERIFIER</code>: Next challenge is to supply <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after the client-side SRP calculations.</p> </li> <li> <p> <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.</p> </li> <li> <p> <code>DEVICE_SRP_AUTH</code>: If device tracking was enabled on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.</p> </li> <li> <p> <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to <code>PASSWORD_VERIFIER</code>, but for devices only.</p> </li> <li> <p> <code>ADMIN_NO_SRP_AUTH</code>: This is returned if you need to authenticate with <code>USERNAME</code> and <code>PASSWORD</code> directly. An app client must be enabled to use this flow.</p> </li> <li> <p> <code>NEW_PASSWORD_REQUIRED</code>: For users which are required to change their passwords after successful first login. This challenge should be passed with <code>NEW_PASSWORD</code> and any other required attributes.</p> </li> </ul>
-- @param ChallengeParameters [ChallengeParametersType] <p>The challenge parameters. These are returned to you in the <code>AdminInitiateAuth</code> response if you need to pass another challenge. The responses in this parameter should be used to compute inputs to the next call (<code>AdminRespondToAuthChallenge</code>).</p> <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if applicable).</p> <p>The value of the <code>USER_IF_FOR_SRP</code> attribute will be the user's actual username, not an alias (such as email address or phone number), even if you specified an alias in your call to <code>AdminInitiateAuth</code>. This is because, in the <code>AdminRespondToAuthChallenge</code> API <code>ChallengeResponses</code>, the <code>USERNAME</code> attribute cannot be an alias.</p>
-- @param Session [SessionType] <p>The session which should be passed both ways in challenge-response calls to the service. If <code>AdminInitiateAuth</code> or <code>AdminRespondToAuthChallenge</code> API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next <code>AdminRespondToAuthChallenge</code> API call.</p>
function M.AdminInitiateAuthResponse(AuthenticationResult, ChallengeName, ChallengeParameters, Session, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminInitiateAuthResponse")
	local t = { 
		["AuthenticationResult"] = AuthenticationResult,
		["ChallengeName"] = ChallengeName,
		["ChallengeParameters"] = ChallengeParameters,
		["Session"] = Session,
	}
	M.AssertAdminInitiateAuthResponse(t)
	return t
end

local AdminResetUserPasswordResponse_keys = { nil }

function M.AssertAdminResetUserPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminResetUserPasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminResetUserPasswordResponse_keys[k], "AdminResetUserPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminResetUserPasswordResponse
-- <p>Represents the response from the server to reset a user password as an administrator.</p>
function M.AdminResetUserPasswordResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminResetUserPasswordResponse")
	local t = { 
	}
	M.AssertAdminResetUserPasswordResponse(t)
	return t
end

local ChangePasswordResponse_keys = { nil }

function M.AssertChangePasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangePasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ChangePasswordResponse_keys[k], "ChangePasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangePasswordResponse
-- <p>The response from the server to the change password request.</p>
function M.ChangePasswordResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangePasswordResponse")
	local t = { 
	}
	M.AssertChangePasswordResponse(t)
	return t
end

local ForgotPasswordResponse_keys = { "CodeDeliveryDetails" = true, nil }

function M.AssertForgotPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgotPasswordResponse to be of type 'table'")
	if struct["CodeDeliveryDetails"] then M.AssertCodeDeliveryDetailsType(struct["CodeDeliveryDetails"]) end
	for k,_ in pairs(struct) do
		assert(ForgotPasswordResponse_keys[k], "ForgotPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgotPasswordResponse
-- <p>Respresents the response from the server regarding the request to reset a password.</p>
-- @param CodeDeliveryDetails [CodeDeliveryDetailsType] <p>The code delivery details returned by the server in response to the request to reset a password.</p>
function M.ForgotPasswordResponse(CodeDeliveryDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForgotPasswordResponse")
	local t = { 
		["CodeDeliveryDetails"] = CodeDeliveryDetails,
	}
	M.AssertForgotPasswordResponse(t)
	return t
end

local DeleteGroupRequest_keys = { "GroupName" = true, "UserPoolId" = true, nil }

function M.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["GroupName"] then M.AssertGroupNameType(struct["GroupName"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGroupRequest_keys[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param GroupName [GroupNameType] <p>The name of the group.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: GroupName
-- Required parameter: UserPoolId
function M.DeleteGroupRequest(GroupName, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupRequest")
	local t = { 
		["GroupName"] = GroupName,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDeleteGroupRequest(t)
	return t
end

local UpdateDeviceStatusResponse_keys = { nil }

function M.AssertUpdateDeviceStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceStatusResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateDeviceStatusResponse_keys[k], "UpdateDeviceStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceStatusResponse
-- <p>The response to the request to update the device status.</p>
function M.UpdateDeviceStatusResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeviceStatusResponse")
	local t = { 
	}
	M.AssertUpdateDeviceStatusResponse(t)
	return t
end

local DescribeUserPoolClientRequest_keys = { "ClientId" = true, "UserPoolId" = true, nil }

function M.AssertDescribeUserPoolClientRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserPoolClientRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	if struct["ClientId"] then M.AssertClientIdType(struct["ClientId"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserPoolClientRequest_keys[k], "DescribeUserPoolClientRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserPoolClientRequest
-- <p>Represents the request to describe a user pool client.</p>
-- @param ClientId [ClientIdType] <p>The ID of the client associated with the user pool.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool you want to describe.</p>
-- Required parameter: UserPoolId
-- Required parameter: ClientId
function M.DescribeUserPoolClientRequest(ClientId, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserPoolClientRequest")
	local t = { 
		["ClientId"] = ClientId,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertDescribeUserPoolClientRequest(t)
	return t
end

local AdminListDevicesRequest_keys = { "Username" = true, "PaginationToken" = true, "Limit" = true, "UserPoolId" = true, nil }

function M.AssertAdminListDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListDevicesRequest to be of type 'table'")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	assert(struct["Username"], "Expected key Username to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["PaginationToken"] then M.AssertSearchPaginationTokenType(struct["PaginationToken"]) end
	if struct["Limit"] then M.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminListDevicesRequest_keys[k], "AdminListDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListDevicesRequest
-- <p>Represents the request to list devices, as an administrator.</p>
-- @param Username [UsernameType] <p>The user name.</p>
-- @param PaginationToken [SearchPaginationTokenType] <p>The pagination token.</p>
-- @param Limit [QueryLimitType] <p>The limit of the devices request.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID.</p>
-- Required parameter: UserPoolId
-- Required parameter: Username
function M.AdminListDevicesRequest(Username, PaginationToken, Limit, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminListDevicesRequest")
	local t = { 
		["Username"] = Username,
		["PaginationToken"] = PaginationToken,
		["Limit"] = Limit,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminListDevicesRequest(t)
	return t
end

local ListUsersInGroupResponse_keys = { "NextToken" = true, "Users" = true, nil }

function M.AssertListUsersInGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersInGroupResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Users"] then M.AssertUsersListType(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(ListUsersInGroupResponse_keys[k], "ListUsersInGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersInGroupResponse
--  
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Users [UsersListType] <p>The users returned in the request to list users.</p>
function M.ListUsersInGroupResponse(NextToken, Users, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersInGroupResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Users"] = Users,
	}
	M.AssertListUsersInGroupResponse(t)
	return t
end

local UserPoolDescriptionType_keys = { "Status" = true, "Name" = true, "LastModifiedDate" = true, "CreationDate" = true, "Id" = true, "LambdaConfig" = true, nil }

function M.AssertUserPoolDescriptionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolDescriptionType to be of type 'table'")
	if struct["Status"] then M.AssertStatusType(struct["Status"]) end
	if struct["Name"] then M.AssertUserPoolNameType(struct["Name"]) end
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	if struct["Id"] then M.AssertUserPoolIdType(struct["Id"]) end
	if struct["LambdaConfig"] then M.AssertLambdaConfigType(struct["LambdaConfig"]) end
	for k,_ in pairs(struct) do
		assert(UserPoolDescriptionType_keys[k], "UserPoolDescriptionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolDescriptionType
-- <p>A user pool description.</p>
-- @param Status [StatusType] <p>The user pool status in a user pool description.</p>
-- @param Name [UserPoolNameType] <p>The name in a user pool description.</p>
-- @param LastModifiedDate [DateType] <p>The date the user pool description was last modified.</p>
-- @param CreationDate [DateType] <p>The date the user pool description was created.</p>
-- @param Id [UserPoolIdType] <p>The ID in a user pool description.</p>
-- @param LambdaConfig [LambdaConfigType] <p>The AWS Lambda configuration information in a user pool description.</p>
function M.UserPoolDescriptionType(Status, Name, LastModifiedDate, CreationDate, Id, LambdaConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserPoolDescriptionType")
	local t = { 
		["Status"] = Status,
		["Name"] = Name,
		["LastModifiedDate"] = LastModifiedDate,
		["CreationDate"] = CreationDate,
		["Id"] = Id,
		["LambdaConfig"] = LambdaConfig,
	}
	M.AssertUserPoolDescriptionType(t)
	return t
end

local DeviceType_keys = { "DeviceLastAuthenticatedDate" = true, "DeviceKey" = true, "DeviceAttributes" = true, "DeviceCreateDate" = true, "DeviceLastModifiedDate" = true, nil }

function M.AssertDeviceType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceType to be of type 'table'")
	if struct["DeviceLastAuthenticatedDate"] then M.AssertDateType(struct["DeviceLastAuthenticatedDate"]) end
	if struct["DeviceKey"] then M.AssertDeviceKeyType(struct["DeviceKey"]) end
	if struct["DeviceAttributes"] then M.AssertAttributeListType(struct["DeviceAttributes"]) end
	if struct["DeviceCreateDate"] then M.AssertDateType(struct["DeviceCreateDate"]) end
	if struct["DeviceLastModifiedDate"] then M.AssertDateType(struct["DeviceLastModifiedDate"]) end
	for k,_ in pairs(struct) do
		assert(DeviceType_keys[k], "DeviceType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceType
-- <p>The device type.</p>
-- @param DeviceLastAuthenticatedDate [DateType] <p>The date in which the device was last authenticated.</p>
-- @param DeviceKey [DeviceKeyType] <p>The device key.</p>
-- @param DeviceAttributes [AttributeListType] <p>The device attributes.</p>
-- @param DeviceCreateDate [DateType] <p>The creation date of the device.</p>
-- @param DeviceLastModifiedDate [DateType] <p>The last modified date of the device.</p>
function M.DeviceType(DeviceLastAuthenticatedDate, DeviceKey, DeviceAttributes, DeviceCreateDate, DeviceLastModifiedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceType")
	local t = { 
		["DeviceLastAuthenticatedDate"] = DeviceLastAuthenticatedDate,
		["DeviceKey"] = DeviceKey,
		["DeviceAttributes"] = DeviceAttributes,
		["DeviceCreateDate"] = DeviceCreateDate,
		["DeviceLastModifiedDate"] = DeviceLastModifiedDate,
	}
	M.AssertDeviceType(t)
	return t
end

local AdminListGroupsForUserRequest_keys = { "Username" = true, "NextToken" = true, "Limit" = true, "UserPoolId" = true, nil }

function M.AssertAdminListGroupsForUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminListGroupsForUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["UserPoolId"], "Expected key UserPoolId to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Limit"] then M.AssertQueryLimitType(struct["Limit"]) end
	if struct["UserPoolId"] then M.AssertUserPoolIdType(struct["UserPoolId"]) end
	for k,_ in pairs(struct) do
		assert(AdminListGroupsForUserRequest_keys[k], "AdminListGroupsForUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminListGroupsForUserRequest
--  
-- @param Username [UsernameType] <p>The username for the user.</p>
-- @param NextToken [PaginationKey] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- @param Limit [QueryLimitType] <p>The limit of the request to list groups.</p>
-- @param UserPoolId [UserPoolIdType] <p>The user pool ID for the user pool.</p>
-- Required parameter: Username
-- Required parameter: UserPoolId
function M.AdminListGroupsForUserRequest(Username, NextToken, Limit, UserPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminListGroupsForUserRequest")
	local t = { 
		["Username"] = Username,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["UserPoolId"] = UserPoolId,
	}
	M.AssertAdminListGroupsForUserRequest(t)
	return t
end

local MFAMethodNotFoundException_keys = { "message" = true, nil }

function M.AssertMFAMethodNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MFAMethodNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MFAMethodNotFoundException_keys[k], "MFAMethodNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MFAMethodNotFoundException
-- <p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.</p>
-- @param message [MessageType] <p>The message returned when Amazon Cognito throws an MFA method not found exception.</p>
function M.MFAMethodNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MFAMethodNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertMFAMethodNotFoundException(t)
	return t
end

local AdminDeleteUserAttributesResponse_keys = { nil }

function M.AssertAdminDeleteUserAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AdminDeleteUserAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AdminDeleteUserAttributesResponse_keys[k], "AdminDeleteUserAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AdminDeleteUserAttributesResponse
-- <p>Represents the response received from the server for a request to delete user attributes.</p>
function M.AdminDeleteUserAttributesResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AdminDeleteUserAttributesResponse")
	local t = { 
	}
	M.AssertAdminDeleteUserAttributesResponse(t)
	return t
end

local CreateGroupResponse_keys = { "Group" = true, nil }

function M.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	if struct["Group"] then M.AssertGroupType(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupResponse_keys[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
--  
-- @param Group [GroupType] <p>The group object for the group.</p>
function M.CreateGroupResponse(Group, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupResponse")
	local t = { 
		["Group"] = Group,
	}
	M.AssertCreateGroupResponse(t)
	return t
end

function M.AssertChallengeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChallengeNameType to be of type 'string'")
end

--  
function M.ChallengeNameType(str)
	M.AssertChallengeNameType(str)
	return str
end

function M.AssertAttributeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeNameType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.AttributeNameType(str)
	M.AssertAttributeNameType(str)
	return str
end

function M.AssertSecretHashType(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretHashType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=/]+"), "Expected string to match pattern '[%w+=/]+'")
end

--  
function M.SecretHashType(str)
	M.AssertSecretHashType(str)
	return str
end

function M.AssertUserImportJobIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserImportJobIdType to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("import-[0-9a-zA-Z-]+"), "Expected string to match pattern 'import-[0-9a-zA-Z-]+'")
end

--  
function M.UserImportJobIdType(str)
	M.AssertUserImportJobIdType(str)
	return str
end

function M.AssertDomainType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainType(str)
	M.AssertDomainType(str)
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

function M.AssertClientPermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientPermissionType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientPermissionType(str)
	M.AssertClientPermissionType(str)
	return str
end

function M.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	M.AssertMessageType(str)
	return str
end

function M.AssertEmailAddressType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddressType to be of type 'string'")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+@[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+@[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.EmailAddressType(str)
	M.AssertEmailAddressType(str)
	return str
end

function M.AssertSessionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.SessionType(str)
	M.AssertSessionType(str)
	return str
end

function M.AssertDomainVersionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainVersionType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainVersionType(str)
	M.AssertDomainVersionType(str)
	return str
end

function M.AssertDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.DescriptionType(str)
	M.AssertDescriptionType(str)
	return str
end

function M.AssertDeviceNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceNameType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceNameType(str)
	M.AssertDeviceNameType(str)
	return str
end

function M.AssertMessageActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageActionType to be of type 'string'")
end

--  
function M.MessageActionType(str)
	M.AssertMessageActionType(str)
	return str
end

function M.AssertCompletionMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected CompletionMessageType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.CompletionMessageType(str)
	M.AssertCompletionMessageType(str)
	return str
end

function M.AssertEmailVerificationMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailVerificationMessageType to be of type 'string'")
	assert(#str <= 20000, "Expected string to be max 20000 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}%s*]*%{####%}[%p{L}%p{M}%p{S}%p{N}%p{P}%s*]*"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}%s*]*%{####%}[%p{L}%p{M}%p{S}%p{N}%p{P}%s*]*'")
end

--  
function M.EmailVerificationMessageType(str)
	M.AssertEmailVerificationMessageType(str)
	return str
end

function M.AssertProviderNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderNameType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.ProviderNameType(str)
	M.AssertProviderNameType(str)
	return str
end

function M.AssertUsernameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UsernameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.UsernameType(str)
	M.AssertUsernameType(str)
	return str
end

function M.AssertUserImportJobNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserImportJobNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w%s+=,.@-]+"), "Expected string to match pattern '[%w%s+=,.@-]+'")
end

--  
function M.UserImportJobNameType(str)
	M.AssertUserImportJobNameType(str)
	return str
end

function M.AssertAttributeValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValueType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.AttributeValueType(str)
	M.AssertAttributeValueType(str)
	return str
end

function M.AssertSmsVerificationMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected SmsVerificationMessageType to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match(".*%{####%}.*"), "Expected string to match pattern '.*%{####%}.*'")
end

--  
function M.SmsVerificationMessageType(str)
	M.AssertSmsVerificationMessageType(str)
	return str
end

function M.AssertPasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected PasswordType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match("[%S]+"), "Expected string to match pattern '[%S]+'")
end

--  
function M.PasswordType(str)
	M.AssertPasswordType(str)
	return str
end

function M.AssertDeliveryMediumType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryMediumType to be of type 'string'")
end

--  
function M.DeliveryMediumType(str)
	M.AssertDeliveryMediumType(str)
	return str
end

function M.AssertAliasAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasAttributeType to be of type 'string'")
end

--  
function M.AliasAttributeType(str)
	M.AssertAliasAttributeType(str)
	return str
end

function M.AssertConfirmationCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfirmationCodeType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%S]+"), "Expected string to match pattern '[%S]+'")
end

--  
function M.ConfirmationCodeType(str)
	M.AssertConfirmationCodeType(str)
	return str
end

function M.AssertSearchPaginationTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchPaginationTokenType to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%S]+"), "Expected string to match pattern '[%S]+'")
end

--  
function M.SearchPaginationTokenType(str)
	M.AssertSearchPaginationTokenType(str)
	return str
end

function M.AssertUserPoolMfaType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolMfaType to be of type 'string'")
end

--  
function M.UserPoolMfaType(str)
	M.AssertUserPoolMfaType(str)
	return str
end

function M.AssertPreSignedUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected PreSignedUrlType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PreSignedUrlType(str)
	M.AssertPreSignedUrlType(str)
	return str
end

function M.AssertVerifiedAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected VerifiedAttributeType to be of type 'string'")
end

--  
function M.VerifiedAttributeType(str)
	M.AssertVerifiedAttributeType(str)
	return str
end

function M.AssertAuthFlowType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthFlowType to be of type 'string'")
end

--  
function M.AuthFlowType(str)
	M.AssertAuthFlowType(str)
	return str
end

function M.AssertUserPoolIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolIdType to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+_[0-9a-zA-Z]+"), "Expected string to match pattern '[%w-]+_[0-9a-zA-Z]+'")
end

--  
function M.UserPoolIdType(str)
	M.AssertUserPoolIdType(str)
	return str
end

function M.AssertS3BucketType(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("^[0-9A-Za-z%.%-_]*(?<!%.)$"), "Expected string to match pattern '^[0-9A-Za-z%.%-_]*(?<!%.)$'")
end

--  
function M.S3BucketType(str)
	M.AssertS3BucketType(str)
	return str
end

function M.AssertGroupNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.GroupNameType(str)
	M.AssertGroupNameType(str)
	return str
end

function M.AssertEmailVerificationSubjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailVerificationSubjectType to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}%s]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}%s]+'")
end

--  
function M.EmailVerificationSubjectType(str)
	M.AssertEmailVerificationSubjectType(str)
	return str
end

function M.AssertAttributeDataType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeDataType to be of type 'string'")
end

--  
function M.AttributeDataType(str)
	M.AssertAttributeDataType(str)
	return str
end

function M.AssertStringType(str)
	assert(str)
	assert(type(str) == "string", "Expected StringType to be of type 'string'")
end

--  
function M.StringType(str)
	M.AssertStringType(str)
	return str
end

function M.AssertUserFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserFilterType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.UserFilterType(str)
	M.AssertUserFilterType(str)
	return str
end

function M.AssertDeviceKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceKeyType to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+_[0-9a-f-]+"), "Expected string to match pattern '[%w-]+_[0-9a-f-]+'")
end

--  
function M.DeviceKeyType(str)
	M.AssertDeviceKeyType(str)
	return str
end

function M.AssertDomainStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainStatusType to be of type 'string'")
end

--  
function M.DomainStatusType(str)
	M.AssertDomainStatusType(str)
	return str
end

function M.AssertClientSecretType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientSecretType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+]+"), "Expected string to match pattern '[%w+]+'")
end

--  
function M.ClientSecretType(str)
	M.AssertClientSecretType(str)
	return str
end

function M.AssertUserStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserStatusType to be of type 'string'")
end

--  
function M.UserStatusType(str)
	M.AssertUserStatusType(str)
	return str
end

function M.AssertScopeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScopeType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%x21%x23-%x5B%x5D-%x7E]+"), "Expected string to match pattern '[%x21%x23-%x5B%x5D-%x7E]+'")
end

--  
function M.ScopeType(str)
	M.AssertScopeType(str)
	return str
end

function M.AssertClientNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w%s+=,.@-]+"), "Expected string to match pattern '[%w%s+=,.@-]+'")
end

--  
function M.ClientNameType(str)
	M.AssertClientNameType(str)
	return str
end

function M.AssertTokenModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected TokenModelType to be of type 'string'")
	assert(str:match("[A-Za-z0-9-_=.]+"), "Expected string to match pattern '[A-Za-z0-9-_=.]+'")
end

--  
function M.TokenModelType(str)
	M.AssertTokenModelType(str)
	return str
end

function M.AssertDeviceRememberedStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceRememberedStatusType to be of type 'string'")
end

--  
function M.DeviceRememberedStatusType(str)
	M.AssertDeviceRememberedStatusType(str)
	return str
end

function M.AssertCustomAttributeNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomAttributeNameType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.CustomAttributeNameType(str)
	M.AssertCustomAttributeNameType(str)
	return str
end

function M.AssertIdentityProviderTypeType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderTypeType to be of type 'string'")
end

--  
function M.IdentityProviderTypeType(str)
	M.AssertIdentityProviderTypeType(str)
	return str
end

function M.AssertExplicitAuthFlowsType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExplicitAuthFlowsType to be of type 'string'")
end

--  
function M.ExplicitAuthFlowsType(str)
	M.AssertExplicitAuthFlowsType(str)
	return str
end

function M.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	M.AssertStatusType(str)
	return str
end

function M.AssertUserImportJobStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserImportJobStatusType to be of type 'string'")
end

--  
function M.UserImportJobStatusType(str)
	M.AssertUserImportJobStatusType(str)
	return str
end

function M.AssertClientIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+]+"), "Expected string to match pattern '[%w+]+'")
end

--  
function M.ClientIdType(str)
	M.AssertClientIdType(str)
	return str
end

function M.AssertPaginationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%S]+"), "Expected string to match pattern '[%S]+'")
end

--  
function M.PaginationKey(str)
	M.AssertPaginationKey(str)
	return str
end

function M.AssertOAuthFlowType(str)
	assert(str)
	assert(type(str) == "string", "Expected OAuthFlowType to be of type 'string'")
end

--  
function M.OAuthFlowType(str)
	M.AssertOAuthFlowType(str)
	return str
end

function M.AssertArnType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("arn:[%w+=/,.@-]+:[%w+=/,.@-]+:([%w+=/,.@-]*)?:[0-9]+:[%w+=/,.@-]+(:[%w+=/,.@-]+)?(:[%w+=/,.@-]+)?"), "Expected string to match pattern 'arn:[%w+=/,.@-]+:[%w+=/,.@-]+:([%w+=/,.@-]*)?:[0-9]+:[%w+=/,.@-]+(:[%w+=/,.@-]+)?(:[%w+=/,.@-]+)?'")
end

--  
function M.ArnType(str)
	M.AssertArnType(str)
	return str
end

function M.AssertPaginationKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationKeyType to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%S]+"), "Expected string to match pattern '[%S]+'")
end

--  
function M.PaginationKeyType(str)
	M.AssertPaginationKeyType(str)
	return str
end

function M.AssertIdpIdentifierType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdpIdentifierType to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w%s+=.@-]+"), "Expected string to match pattern '[%w%s+=.@-]+'")
end

--  
function M.IdpIdentifierType(str)
	M.AssertIdpIdentifierType(str)
	return str
end

function M.AssertUserPoolNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserPoolNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w%s+=,.@-]+"), "Expected string to match pattern '[%w%s+=,.@-]+'")
end

--  
function M.UserPoolNameType(str)
	M.AssertUserPoolNameType(str)
	return str
end

function M.AssertRedirectUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected RedirectUrlType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.RedirectUrlType(str)
	M.AssertRedirectUrlType(str)
	return str
end

function M.AssertLongType(long)
	assert(long)
	assert(type(long) == "number", "Expected LongType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongType(long)
	M.AssertLongType(long)
	return long
end

function M.AssertPrecedenceType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PrecedenceType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PrecedenceType(integer)
	M.AssertPrecedenceType(integer)
	return integer
end

function M.AssertListProvidersLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListProvidersLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListProvidersLimitType(integer)
	M.AssertListProvidersLimitType(integer)
	return integer
end

function M.AssertQueryLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected QueryLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.QueryLimit(integer)
	M.AssertQueryLimit(integer)
	return integer
end

function M.AssertPoolQueryLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PoolQueryLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PoolQueryLimitType(integer)
	M.AssertPoolQueryLimitType(integer)
	return integer
end

function M.AssertAdminCreateUserUnusedAccountValidityDaysType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AdminCreateUserUnusedAccountValidityDaysType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 90, "Expected integer to be max 90")
end

function M.AdminCreateUserUnusedAccountValidityDaysType(integer)
	M.AssertAdminCreateUserUnusedAccountValidityDaysType(integer)
	return integer
end

function M.AssertQueryLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected QueryLimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
end

function M.QueryLimitType(integer)
	M.AssertQueryLimitType(integer)
	return integer
end

function M.AssertIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerType(integer)
	M.AssertIntegerType(integer)
	return integer
end

function M.AssertPasswordPolicyMinLengthType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PasswordPolicyMinLengthType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 99, "Expected integer to be max 99")
	assert(integer >= 6, "Expected integer to be min 6")
end

function M.PasswordPolicyMinLengthType(integer)
	M.AssertPasswordPolicyMinLengthType(integer)
	return integer
end

function M.AssertRefreshTokenValidityType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RefreshTokenValidityType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3650, "Expected integer to be max 3650")
end

function M.RefreshTokenValidityType(integer)
	M.AssertRefreshTokenValidityType(integer)
	return integer
end

function M.AssertGenerateSecret(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected GenerateSecret to be of type 'boolean'")
end

function M.GenerateSecret(boolean)
	M.AssertGenerateSecret(boolean)
	return boolean
end

function M.AssertForceAliasCreation(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceAliasCreation to be of type 'boolean'")
end

function M.ForceAliasCreation(boolean)
	M.AssertForceAliasCreation(boolean)
	return boolean
end

function M.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	M.AssertBooleanType(boolean)
	return boolean
end

function M.AssertAuthParametersType(map)
	assert(map)
	assert(type(map) == "table", "Expected AuthParametersType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.AuthParametersType(map)
	M.AssertAuthParametersType(map)
	return map
end

function M.AssertAttributeMappingType(map)
	assert(map)
	assert(type(map) == "table", "Expected AttributeMappingType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertCustomAttributeNameType(k)
		M.AssertStringType(v)
	end
end

function M.AttributeMappingType(map)
	M.AssertAttributeMappingType(map)
	return map
end

function M.AssertChallengeParametersType(map)
	assert(map)
	assert(type(map) == "table", "Expected ChallengeParametersType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.ChallengeParametersType(map)
	M.AssertChallengeParametersType(map)
	return map
end

function M.AssertClientMetadataType(map)
	assert(map)
	assert(type(map) == "table", "Expected ClientMetadataType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.ClientMetadataType(map)
	M.AssertClientMetadataType(map)
	return map
end

function M.AssertUserPoolTagsType(map)
	assert(map)
	assert(type(map) == "table", "Expected UserPoolTagsType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.UserPoolTagsType(map)
	M.AssertUserPoolTagsType(map)
	return map
end

function M.AssertProviderDetailsType(map)
	assert(map)
	assert(type(map) == "table", "Expected ProviderDetailsType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.ProviderDetailsType(map)
	M.AssertProviderDetailsType(map)
	return map
end

function M.AssertChallengeResponsesType(map)
	assert(map)
	assert(type(map) == "table", "Expected ChallengeResponsesType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStringType(k)
		M.AssertStringType(v)
	end
end

function M.ChallengeResponsesType(map)
	M.AssertChallengeResponsesType(map)
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

function M.AssertScopeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ScopeListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertScopeType(v)
	end
end

--  
-- List of ScopeType objects
function M.ScopeListType(list)
	M.AssertScopeListType(list)
	return list
end

function M.AssertClientPermissionListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ClientPermissionListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClientPermissionType(v)
	end
end

--  
-- List of ClientPermissionType objects
function M.ClientPermissionListType(list)
	M.AssertClientPermissionListType(list)
	return list
end

function M.AssertSupportedIdentityProvidersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedIdentityProvidersListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProviderNameType(v)
	end
end

--  
-- List of ProviderNameType objects
function M.SupportedIdentityProvidersListType(list)
	M.AssertSupportedIdentityProvidersListType(list)
	return list
end

function M.AssertUserPoolListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserPoolListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserPoolDescriptionType(v)
	end
end

--  
-- List of UserPoolDescriptionType objects
function M.UserPoolListType(list)
	M.AssertUserPoolListType(list)
	return list
end

function M.AssertProvidersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ProvidersListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertProviderDescription(v)
	end
end

--  
-- List of ProviderDescription objects
function M.ProvidersListType(list)
	M.AssertProvidersListType(list)
	return list
end

function M.AssertUsersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UsersListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserType(v)
	end
end

--  
-- List of UserType objects
function M.UsersListType(list)
	M.AssertUsersListType(list)
	return list
end

function M.AssertAttributeNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeNameType(v)
	end
end

--  
-- List of AttributeNameType objects
function M.AttributeNameListType(list)
	M.AssertAttributeNameListType(list)
	return list
end

function M.AssertUserPoolClientListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserPoolClientListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserPoolClientDescription(v)
	end
end

--  
-- List of UserPoolClientDescription objects
function M.UserPoolClientListType(list)
	M.AssertUserPoolClientListType(list)
	return list
end

function M.AssertDeviceListType(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeviceType(v)
	end
end

--  
-- List of DeviceType objects
function M.DeviceListType(list)
	M.AssertDeviceListType(list)
	return list
end

function M.AssertIdpIdentifiersListType(list)
	assert(list)
	assert(type(list) == "table", "Expected IdpIdentifiersListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertIdpIdentifierType(v)
	end
end

--  
-- List of IdpIdentifierType objects
function M.IdpIdentifiersListType(list)
	M.AssertIdpIdentifiersListType(list)
	return list
end

function M.AssertExplicitAuthFlowsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ExplicitAuthFlowsListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExplicitAuthFlowsType(v)
	end
end

--  
-- List of ExplicitAuthFlowsType objects
function M.ExplicitAuthFlowsListType(list)
	M.AssertExplicitAuthFlowsListType(list)
	return list
end

function M.AssertVerifiedAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected VerifiedAttributesListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVerifiedAttributeType(v)
	end
end

--  
-- List of VerifiedAttributeType objects
function M.VerifiedAttributesListType(list)
	M.AssertVerifiedAttributesListType(list)
	return list
end

function M.AssertUserImportJobsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected UserImportJobsListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertUserImportJobType(v)
	end
end

--  
-- List of UserImportJobType objects
function M.UserImportJobsListType(list)
	M.AssertUserImportJobsListType(list)
	return list
end

function M.AssertCodeDeliveryDetailsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected CodeDeliveryDetailsListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCodeDeliveryDetailsType(v)
	end
end

--  
-- List of CodeDeliveryDetailsType objects
function M.CodeDeliveryDetailsListType(list)
	M.AssertCodeDeliveryDetailsListType(list)
	return list
end

function M.AssertSchemaAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaAttributesListType to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertSchemaAttributeType(v)
	end
end

--  
-- List of SchemaAttributeType objects
function M.SchemaAttributesListType(list)
	M.AssertSchemaAttributesListType(list)
	return list
end

function M.AssertAliasAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasAttributesListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAliasAttributeType(v)
	end
end

--  
-- List of AliasAttributeType objects
function M.AliasAttributesListType(list)
	M.AssertAliasAttributesListType(list)
	return list
end

function M.AssertLogoutURLsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected LogoutURLsListType to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertRedirectUrlType(v)
	end
end

--  
-- List of RedirectUrlType objects
function M.LogoutURLsListType(list)
	M.AssertLogoutURLsListType(list)
	return list
end

function M.AssertAttributeListType(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeType(v)
	end
end

--  
-- List of AttributeType objects
function M.AttributeListType(list)
	M.AssertAttributeListType(list)
	return list
end

function M.AssertOAuthFlowsType(list)
	assert(list)
	assert(type(list) == "table", "Expected OAuthFlowsType to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	for _,v in ipairs(list) do
		M.AssertOAuthFlowType(v)
	end
end

--  
-- List of OAuthFlowType objects
function M.OAuthFlowsType(list)
	M.AssertOAuthFlowsType(list)
	return list
end

function M.AssertCallbackURLsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected CallbackURLsListType to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertRedirectUrlType(v)
	end
end

--  
-- List of RedirectUrlType objects
function M.CallbackURLsListType(list)
	M.AssertCallbackURLsListType(list)
	return list
end

function M.AssertMFAOptionListType(list)
	assert(list)
	assert(type(list) == "table", "Expected MFAOptionListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMFAOptionType(v)
	end
end

--  
-- List of MFAOptionType objects
function M.MFAOptionListType(list)
	M.AssertMFAOptionListType(list)
	return list
end

function M.AssertSearchedAttributeNamesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchedAttributeNamesListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeNameType(v)
	end
end

--  
-- List of AttributeNameType objects
function M.SearchedAttributeNamesListType(list)
	M.AssertSearchedAttributeNamesListType(list)
	return list
end

function M.AssertCustomAttributesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomAttributesListType to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertSchemaAttributeType(v)
	end
end

--  
-- List of SchemaAttributeType objects
function M.CustomAttributesListType(list)
	M.AssertCustomAttributesListType(list)
	return list
end

function M.AssertGroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGroupType(v)
	end
end

--  
-- List of GroupType objects
function M.GroupListType(list)
	M.AssertGroupListType(list)
	return list
end

function M.AssertDeliveryMediumListType(list)
	assert(list)
	assert(type(list) == "table", "Expected DeliveryMediumListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeliveryMediumType(v)
	end
end

--  
-- List of DeliveryMediumType objects
function M.DeliveryMediumListType(list)
	M.AssertDeliveryMediumListType(list)
	return list
end

function M.AssertListOfStringTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfStringTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStringType(v)
	end
end

--  
-- List of StringType objects
function M.ListOfStringTypes(list)
	M.AssertListOfStringTypes(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- GetIdentityProviderByIdentifier
-- @param GetIdentityProviderByIdentifierRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityProviderByIdentifierAsync(GetIdentityProviderByIdentifierRequest, cb)
	assert(GetIdentityProviderByIdentifierRequest, "You must provide a GetIdentityProviderByIdentifierRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetIdentityProviderByIdentifier",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityProviderByIdentifierRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmSignUp
-- @param ConfirmSignUpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmSignUpAsync(ConfirmSignUpRequest, cb)
	assert(ConfirmSignUpRequest, "You must provide a ConfirmSignUpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmSignUp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmSignUpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminDisableUser
-- @param AdminDisableUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminDisableUserAsync(AdminDisableUserRequest, cb)
	assert(AdminDisableUserRequest, "You must provide a AdminDisableUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDisableUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminDisableUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminListDevices
-- @param AdminListDevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminListDevicesAsync(AdminListDevicesRequest, cb)
	assert(AdminListDevicesRequest, "You must provide a AdminListDevicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListDevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminListDevicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminRemoveUserFromGroup
-- @param AdminRemoveUserFromGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminRemoveUserFromGroupAsync(AdminRemoveUserFromGroupRequest, cb)
	assert(AdminRemoveUserFromGroupRequest, "You must provide a AdminRemoveUserFromGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminRemoveUserFromGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminRemoveUserFromGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ForgotPassword
-- @param ForgotPasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ForgotPasswordAsync(ForgotPasswordRequest, cb)
	assert(ForgotPasswordRequest, "You must provide a ForgotPasswordRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ForgotPassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ForgotPasswordRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminUpdateUserAttributes
-- @param AdminUpdateUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminUpdateUserAttributesAsync(AdminUpdateUserAttributesRequest, cb)
	assert(AdminUpdateUserAttributesRequest, "You must provide a AdminUpdateUserAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminUpdateUserAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SignUp
-- @param SignUpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SignUpAsync(SignUpRequest, cb)
	assert(SignUpRequest, "You must provide a SignUpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SignUp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SignUpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminCreateUser
-- @param AdminCreateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminCreateUserAsync(AdminCreateUserRequest, cb)
	assert(AdminCreateUserRequest, "You must provide a AdminCreateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminCreateUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminCreateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUserAttributes
-- @param UpdateUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserAttributesAsync(UpdateUserAttributesRequest, cb)
	assert(UpdateUserAttributesRequest, "You must provide a UpdateUserAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateUserAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUserPoolDomain
-- @param DescribeUserPoolDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserPoolDomainAsync(DescribeUserPoolDomainRequest, cb)
	assert(DescribeUserPoolDomainRequest, "You must provide a DescribeUserPoolDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPoolDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUserPoolDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ForgetDevice
-- @param ForgetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ForgetDeviceAsync(ForgetDeviceRequest, cb)
	assert(ForgetDeviceRequest, "You must provide a ForgetDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ForgetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ForgetDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIdentityProvider
-- @param DeleteIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentityProviderAsync(DeleteIdentityProviderRequest, cb)
	assert(DeleteIdentityProviderRequest, "You must provide a DeleteIdentityProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIdentityProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmForgotPassword
-- @param ConfirmForgotPasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmForgotPasswordAsync(ConfirmForgotPasswordRequest, cb)
	assert(ConfirmForgotPasswordRequest, "You must provide a ConfirmForgotPasswordRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmForgotPassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmForgotPasswordRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGroup
-- @param CreateGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGroupAsync(CreateGroupRequest, cb)
	assert(CreateGroupRequest, "You must provide a CreateGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- VerifyUserAttribute
-- @param VerifyUserAttributeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyUserAttributeAsync(VerifyUserAttributeRequest, cb)
	assert(VerifyUserAttributeRequest, "You must provide a VerifyUserAttributeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.VerifyUserAttribute",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", VerifyUserAttributeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminResetUserPassword
-- @param AdminResetUserPasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminResetUserPasswordAsync(AdminResetUserPasswordRequest, cb)
	assert(AdminResetUserPasswordRequest, "You must provide a AdminResetUserPasswordRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminResetUserPassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminResetUserPasswordRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserPool
-- @param DeleteUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPoolAsync(DeleteUserPoolRequest, cb)
	assert(DeleteUserPoolRequest, "You must provide a DeleteUserPoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserPoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminConfirmSignUp
-- @param AdminConfirmSignUpRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminConfirmSignUpAsync(AdminConfirmSignUpRequest, cb)
	assert(AdminConfirmSignUpRequest, "You must provide a AdminConfirmSignUpRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminConfirmSignUp",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminConfirmSignUpRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUserPool
-- @param UpdateUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserPoolAsync(UpdateUserPoolRequest, cb)
	assert(UpdateUserPoolRequest, "You must provide a UpdateUserPoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateUserPoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUserPoolClients
-- @param ListUserPoolClientsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserPoolClientsAsync(ListUserPoolClientsRequest, cb)
	assert(ListUserPoolClientsRequest, "You must provide a ListUserPoolClientsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserPoolClients",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUserPoolClientsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUserPool
-- @param DescribeUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserPoolAsync(DescribeUserPoolRequest, cb)
	assert(DescribeUserPoolRequest, "You must provide a DescribeUserPoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUserPoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopUserImportJob
-- @param StopUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopUserImportJobAsync(StopUserImportJobRequest, cb)
	assert(StopUserImportJobRequest, "You must provide a StopUserImportJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.StopUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopUserImportJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUserPools
-- @param ListUserPoolsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserPoolsAsync(ListUserPoolsRequest, cb)
	assert(ListUserPoolsRequest, "You must provide a ListUserPoolsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserPools",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUserPoolsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminUserGlobalSignOut
-- @param AdminUserGlobalSignOutRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminUserGlobalSignOutAsync(AdminUserGlobalSignOutRequest, cb)
	assert(AdminUserGlobalSignOutRequest, "You must provide a AdminUserGlobalSignOutRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUserGlobalSignOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminUserGlobalSignOutRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserPoolDomain
-- @param DeleteUserPoolDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPoolDomainAsync(DeleteUserPoolDomainRequest, cb)
	assert(DeleteUserPoolDomainRequest, "You must provide a DeleteUserPoolDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPoolDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserPoolDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminGetDevice
-- @param AdminGetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminGetDeviceAsync(AdminGetDeviceRequest, cb)
	assert(AdminGetDeviceRequest, "You must provide a AdminGetDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminGetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminGetDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteGroup
-- @param DeleteGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGroupAsync(DeleteGroupRequest, cb)
	assert(DeleteGroupRequest, "You must provide a DeleteGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResendConfirmationCode
-- @param ResendConfirmationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResendConfirmationCodeAsync(ResendConfirmationCodeRequest, cb)
	assert(ResendConfirmationCodeRequest, "You must provide a ResendConfirmationCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ResendConfirmationCode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResendConfirmationCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUserAttributeVerificationCode
-- @param GetUserAttributeVerificationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUserAttributeVerificationCodeAsync(GetUserAttributeVerificationCodeRequest, cb)
	assert(GetUserAttributeVerificationCodeRequest, "You must provide a GetUserAttributeVerificationCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUserAttributeVerificationCode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetUserAttributeVerificationCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUser
-- @param GetUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUserAsync(GetUserRequest, cb)
	assert(GetUserRequest, "You must provide a GetUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmDevice
-- @param ConfirmDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmDeviceAsync(ConfirmDeviceRequest, cb)
	assert(ConfirmDeviceRequest, "You must provide a ConfirmDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ConfirmDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ChangePassword
-- @param ChangePasswordRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangePasswordAsync(ChangePasswordRequest, cb)
	assert(ChangePasswordRequest, "You must provide a ChangePasswordRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ChangePassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ChangePasswordRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCSVHeader
-- @param GetCSVHeaderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCSVHeaderAsync(GetCSVHeaderRequest, cb)
	assert(GetCSVHeaderRequest, "You must provide a GetCSVHeaderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetCSVHeader",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCSVHeaderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUsers
-- @param ListUsersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUsersAsync(ListUsersRequest, cb)
	assert(ListUsersRequest, "You must provide a ListUsersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUsers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUsersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminUpdateDeviceStatus
-- @param AdminUpdateDeviceStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminUpdateDeviceStatusAsync(AdminUpdateDeviceStatusRequest, cb)
	assert(AdminUpdateDeviceStatusRequest, "You must provide a AdminUpdateDeviceStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminUpdateDeviceStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminUpdateDeviceStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeIdentityProvider
-- @param DescribeIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityProviderAsync(DescribeIdentityProviderRequest, cb)
	assert(DescribeIdentityProviderRequest, "You must provide a DescribeIdentityProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeIdentityProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserAttributes
-- @param DeleteUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserAttributesAsync(DeleteUserAttributesRequest, cb)
	assert(DeleteUserAttributesRequest, "You must provide a DeleteUserAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateIdentityProvider
-- @param UpdateIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIdentityProviderAsync(UpdateIdentityProviderRequest, cb)
	assert(UpdateIdentityProviderRequest, "You must provide a UpdateIdentityProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateIdentityProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGroup
-- @param GetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGroupAsync(GetGroupRequest, cb)
	assert(GetGroupRequest, "You must provide a GetGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminEnableUser
-- @param AdminEnableUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminEnableUserAsync(AdminEnableUserRequest, cb)
	assert(AdminEnableUserRequest, "You must provide a AdminEnableUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminEnableUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminEnableUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUserPoolClient
-- @param UpdateUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserPoolClientAsync(UpdateUserPoolClientRequest, cb)
	assert(UpdateUserPoolClientRequest, "You must provide a UpdateUserPoolClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateUserPoolClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddCustomAttributes
-- @param AddCustomAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddCustomAttributesAsync(AddCustomAttributesRequest, cb)
	assert(AddCustomAttributesRequest, "You must provide a AddCustomAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AddCustomAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddCustomAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminForgetDevice
-- @param AdminForgetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminForgetDeviceAsync(AdminForgetDeviceRequest, cb)
	assert(AdminForgetDeviceRequest, "You must provide a AdminForgetDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminForgetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminForgetDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUserPoolClient
-- @param CreateUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserPoolClientAsync(CreateUserPoolClientRequest, cb)
	assert(CreateUserPoolClientRequest, "You must provide a CreateUserPoolClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserPoolClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminListGroupsForUser
-- @param AdminListGroupsForUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminListGroupsForUserAsync(AdminListGroupsForUserRequest, cb)
	assert(AdminListGroupsForUserRequest, "You must provide a AdminListGroupsForUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminListGroupsForUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminListGroupsForUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGroups
-- @param ListGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGroupsAsync(ListGroupsRequest, cb)
	assert(ListGroupsRequest, "You must provide a ListGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUserPoolClient
-- @param DescribeUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserPoolClientAsync(DescribeUserPoolClientRequest, cb)
	assert(DescribeUserPoolClientRequest, "You must provide a DescribeUserPoolClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUserPoolClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminDeleteUser
-- @param AdminDeleteUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminDeleteUserAsync(AdminDeleteUserRequest, cb)
	assert(AdminDeleteUserRequest, "You must provide a AdminDeleteUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDeleteUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminDeleteUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminInitiateAuth
-- @param AdminInitiateAuthRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminInitiateAuthAsync(AdminInitiateAuthRequest, cb)
	assert(AdminInitiateAuthRequest, "You must provide a AdminInitiateAuthRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminInitiateAuth",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminInitiateAuthRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminGetUser
-- @param AdminGetUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminGetUserAsync(AdminGetUserRequest, cb)
	assert(AdminGetUserRequest, "You must provide a AdminGetUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminGetUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminGetUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDeviceStatus
-- @param UpdateDeviceStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeviceStatusAsync(UpdateDeviceStatusRequest, cb)
	assert(UpdateDeviceStatusRequest, "You must provide a UpdateDeviceStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateDeviceStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDeviceStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUserImportJobs
-- @param ListUserImportJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserImportJobsAsync(ListUserImportJobsRequest, cb)
	assert(ListUserImportJobsRequest, "You must provide a ListUserImportJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUserImportJobs",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUserImportJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDevices
-- @param ListDevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDevicesAsync(ListDevicesRequest, cb)
	assert(ListDevicesRequest, "You must provide a ListDevicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListDevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDevicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDevice
-- @param GetDeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeviceAsync(GetDeviceRequest, cb)
	assert(GetDeviceRequest, "You must provide a GetDeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GetDevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUsersInGroup
-- @param ListUsersInGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUsersInGroupAsync(ListUsersInGroupRequest, cb)
	assert(ListUsersInGroupRequest, "You must provide a ListUsersInGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListUsersInGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUsersInGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GlobalSignOut
-- @param GlobalSignOutRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GlobalSignOutAsync(GlobalSignOutRequest, cb)
	assert(GlobalSignOutRequest, "You must provide a GlobalSignOutRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.GlobalSignOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GlobalSignOutRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUserImportJob
-- @param CreateUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserImportJobAsync(CreateUserImportJobRequest, cb)
	assert(CreateUserImportJobRequest, "You must provide a CreateUserImportJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserImportJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminSetUserSettings
-- @param AdminSetUserSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminSetUserSettingsAsync(AdminSetUserSettingsRequest, cb)
	assert(AdminSetUserSettingsRequest, "You must provide a AdminSetUserSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminSetUserSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminSetUserSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUser
-- @param DeleteUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserAsync(DeleteUserRequest, cb)
	assert(DeleteUserRequest, "You must provide a DeleteUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InitiateAuth
-- @param InitiateAuthRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateAuthAsync(InitiateAuthRequest, cb)
	assert(InitiateAuthRequest, "You must provide a InitiateAuthRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.InitiateAuth",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", InitiateAuthRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIdentityProviders
-- @param ListIdentityProvidersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentityProvidersAsync(ListIdentityProvidersRequest, cb)
	assert(ListIdentityProvidersRequest, "You must provide a ListIdentityProvidersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.ListIdentityProviders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIdentityProvidersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetUserSettings
-- @param SetUserSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetUserSettingsAsync(SetUserSettingsRequest, cb)
	assert(SetUserSettingsRequest, "You must provide a SetUserSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.SetUserSettings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetUserSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUserPoolDomain
-- @param CreateUserPoolDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserPoolDomainAsync(CreateUserPoolDomainRequest, cb)
	assert(CreateUserPoolDomainRequest, "You must provide a CreateUserPoolDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPoolDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserPoolDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RespondToAuthChallenge
-- @param RespondToAuthChallengeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RespondToAuthChallengeAsync(RespondToAuthChallengeRequest, cb)
	assert(RespondToAuthChallengeRequest, "You must provide a RespondToAuthChallengeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.RespondToAuthChallenge",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RespondToAuthChallengeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartUserImportJob
-- @param StartUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartUserImportJobAsync(StartUserImportJobRequest, cb)
	assert(StartUserImportJobRequest, "You must provide a StartUserImportJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.StartUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartUserImportJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUserImportJob
-- @param DescribeUserImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserImportJobAsync(DescribeUserImportJobRequest, cb)
	assert(DescribeUserImportJobRequest, "You must provide a DescribeUserImportJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DescribeUserImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUserImportJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGroup
-- @param UpdateGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGroupAsync(UpdateGroupRequest, cb)
	assert(UpdateGroupRequest, "You must provide a UpdateGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.UpdateGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminAddUserToGroup
-- @param AdminAddUserToGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminAddUserToGroupAsync(AdminAddUserToGroupRequest, cb)
	assert(AdminAddUserToGroupRequest, "You must provide a AdminAddUserToGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminAddUserToGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminAddUserToGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUserPool
-- @param CreateUserPoolRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserPoolAsync(CreateUserPoolRequest, cb)
	assert(CreateUserPoolRequest, "You must provide a CreateUserPoolRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateUserPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserPoolRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminDeleteUserAttributes
-- @param AdminDeleteUserAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminDeleteUserAttributesAsync(AdminDeleteUserAttributesRequest, cb)
	assert(AdminDeleteUserAttributesRequest, "You must provide a AdminDeleteUserAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminDeleteUserAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminDeleteUserAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserPoolClient
-- @param DeleteUserPoolClientRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPoolClientAsync(DeleteUserPoolClientRequest, cb)
	assert(DeleteUserPoolClientRequest, "You must provide a DeleteUserPoolClientRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.DeleteUserPoolClient",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserPoolClientRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AdminRespondToAuthChallenge
-- @param AdminRespondToAuthChallengeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AdminRespondToAuthChallengeAsync(AdminRespondToAuthChallengeRequest, cb)
	assert(AdminRespondToAuthChallengeRequest, "You must provide a AdminRespondToAuthChallengeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.AdminRespondToAuthChallenge",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AdminRespondToAuthChallengeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateIdentityProvider
-- @param CreateIdentityProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIdentityProviderAsync(CreateIdentityProviderRequest, cb)
	assert(CreateIdentityProviderRequest, "You must provide a CreateIdentityProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityProviderService.CreateIdentityProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateIdentityProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
