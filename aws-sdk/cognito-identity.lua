--- GENERATED CODE - DO NOT MODIFY
-- Amazon Cognito Identity (cognito-identity-2014-06-30)

local M = {}

M.metadata = {
	api_version = "2014-06-30",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cognito-identity",
	service_abbreviation = "",
	service_full_name = "Amazon Cognito Identity",
	signature_version = "v4",
	target_prefix = "AWSCognitoIdentityService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cognito-identity-2014-06-30",
}

local GetOpenIdTokenInput_keys = { "Logins" = true, "IdentityId" = true, nil }

function M.AssertGetOpenIdTokenInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["Logins"] then M.AssertLoginsMap(struct["Logins"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetOpenIdTokenInput_keys[k], "GetOpenIdTokenInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenInput
-- &lt;p&gt;Input to the GetOpenIdToken action.&lt;/p&gt;
-- @param Logins [LoginsMap] &lt;p&gt;A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito Identity Provider, or any other OpenId Connect provider, always include the &lt;code&gt;id_token&lt;/code&gt;.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityId
function M.GetOpenIdTokenInput(Logins, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIdTokenInput")
	local t = { 
		["Logins"] = Logins,
		["IdentityId"] = IdentityId,
	}
	M.AssertGetOpenIdTokenInput(t)
	return t
end

local RulesConfigurationType_keys = { "Rules" = true, nil }

function M.AssertRulesConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RulesConfigurationType to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then M.AssertMappingRulesList(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(RulesConfigurationType_keys[k], "RulesConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RulesConfigurationType
-- &lt;p&gt;A container for rules.&lt;/p&gt;
-- @param Rules [MappingRulesList] &lt;p&gt;An array of rules. You can specify up to 25 rules per identity provider.&lt;/p&gt; &lt;p&gt;Rules are evaluated in order. The first one to match specifies the role.&lt;/p&gt;
-- Required parameter: Rules
function M.RulesConfigurationType(Rules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RulesConfigurationType")
	local t = { 
		["Rules"] = Rules,
	}
	M.AssertRulesConfigurationType(t)
	return t
end

local GetIdentityPoolRolesResponse_keys = { "IdentityPoolId" = true, "Roles" = true, "RoleMappings" = true, nil }

function M.AssertGetIdentityPoolRolesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolRolesResponse to be of type 'table'")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Roles"] then M.AssertRolesMap(struct["Roles"]) end
	if struct["RoleMappings"] then M.AssertRoleMappingMap(struct["RoleMappings"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityPoolRolesResponse_keys[k], "GetIdentityPoolRolesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolRolesResponse
-- &lt;p&gt;Returned in response to a successful &lt;code&gt;GetIdentityPoolRoles&lt;/code&gt; operation.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param Roles [RolesMap] &lt;p&gt;The map of roles associated with this pool. Currently only authenticated and unauthenticated roles are supported.&lt;/p&gt;
-- @param RoleMappings [RoleMappingMap] &lt;p&gt;How users for a specific identity provider are to mapped to roles. This is a String-to-&lt;a&gt;RoleMapping&lt;/a&gt; object map. The string identifies the identity provider, for example, &quot;graph.facebook.com&quot; or &quot;cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id&quot;.&lt;/p&gt;
function M.GetIdentityPoolRolesResponse(IdentityPoolId, Roles, RoleMappings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoolRolesResponse")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["Roles"] = Roles,
		["RoleMappings"] = RoleMappings,
	}
	M.AssertGetIdentityPoolRolesResponse(t)
	return t
end

local ListIdentityPoolsInput_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListIdentityPoolsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolsInput to be of type 'table'")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertQueryLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityPoolsInput_keys[k], "ListIdentityPoolsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolsInput
-- &lt;p&gt;Input to the ListIdentityPools action.&lt;/p&gt;
-- @param NextToken [PaginationKey] &lt;p&gt;A pagination token.&lt;/p&gt;
-- @param MaxResults [QueryLimit] &lt;p&gt;The maximum number of identities to return.&lt;/p&gt;
-- Required parameter: MaxResults
function M.ListIdentityPoolsInput(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoolsInput")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListIdentityPoolsInput(t)
	return t
end

local NotAuthorizedException_keys = { "message" = true, nil }

function M.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotAuthorizedException_keys[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- &lt;p&gt;Thrown when a user is not authorized to access the requested resource.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by a NotAuthorizedException&lt;/p&gt;
function M.NotAuthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotAuthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotAuthorizedException(t)
	return t
end

local CreateIdentityPoolInput_keys = { "DeveloperProviderName" = true, "SamlProviderARNs" = true, "SupportedLoginProviders" = true, "AllowUnauthenticatedIdentities" = true, "CognitoIdentityProviders" = true, "IdentityPoolName" = true, "OpenIdConnectProviderARNs" = true, nil }

function M.AssertCreateIdentityPoolInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIdentityPoolInput to be of type 'table'")
	assert(struct["IdentityPoolName"], "Expected key IdentityPoolName to exist in table")
	assert(struct["AllowUnauthenticatedIdentities"], "Expected key AllowUnauthenticatedIdentities to exist in table")
	if struct["DeveloperProviderName"] then M.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["SamlProviderARNs"] then M.AssertSAMLProviderList(struct["SamlProviderARNs"]) end
	if struct["SupportedLoginProviders"] then M.AssertIdentityProviders(struct["SupportedLoginProviders"]) end
	if struct["AllowUnauthenticatedIdentities"] then M.AssertIdentityPoolUnauthenticated(struct["AllowUnauthenticatedIdentities"]) end
	if struct["CognitoIdentityProviders"] then M.AssertCognitoIdentityProviderList(struct["CognitoIdentityProviders"]) end
	if struct["IdentityPoolName"] then M.AssertIdentityPoolName(struct["IdentityPoolName"]) end
	if struct["OpenIdConnectProviderARNs"] then M.AssertOIDCProviderList(struct["OpenIdConnectProviderARNs"]) end
	for k,_ in pairs(struct) do
		assert(CreateIdentityPoolInput_keys[k], "CreateIdentityPoolInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIdentityPoolInput
-- &lt;p&gt;Input to the CreateIdentityPool action.&lt;/p&gt;
-- @param DeveloperProviderName [DeveloperProviderName] &lt;p&gt;The &quot;domain&quot; by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the &lt;code&gt;DeveloperProviderName&lt;/code&gt;, you can use letters as well as period (&lt;code&gt;.&lt;/code&gt;), underscore (&lt;code&gt;_&lt;/code&gt;), and dash (&lt;code&gt;-&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.&lt;/p&gt;
-- @param SamlProviderARNs [SAMLProviderList] &lt;p&gt;An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.&lt;/p&gt;
-- @param SupportedLoginProviders [IdentityProviders] &lt;p&gt;Optional key:value pairs mapping provider names to provider app IDs.&lt;/p&gt;
-- @param AllowUnauthenticatedIdentities [IdentityPoolUnauthenticated] &lt;p&gt;TRUE if the identity pool supports unauthenticated logins.&lt;/p&gt;
-- @param CognitoIdentityProviders [CognitoIdentityProviderList] &lt;p&gt;An array of Amazon Cognito Identity user pools and their client IDs.&lt;/p&gt;
-- @param IdentityPoolName [IdentityPoolName] &lt;p&gt;A string that you provide.&lt;/p&gt;
-- @param OpenIdConnectProviderARNs [OIDCProviderList] &lt;p&gt;A list of OpendID Connect provider ARNs.&lt;/p&gt;
-- Required parameter: IdentityPoolName
-- Required parameter: AllowUnauthenticatedIdentities
function M.CreateIdentityPoolInput(DeveloperProviderName, SamlProviderARNs, SupportedLoginProviders, AllowUnauthenticatedIdentities, CognitoIdentityProviders, IdentityPoolName, OpenIdConnectProviderARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIdentityPoolInput")
	local t = { 
		["DeveloperProviderName"] = DeveloperProviderName,
		["SamlProviderARNs"] = SamlProviderARNs,
		["SupportedLoginProviders"] = SupportedLoginProviders,
		["AllowUnauthenticatedIdentities"] = AllowUnauthenticatedIdentities,
		["CognitoIdentityProviders"] = CognitoIdentityProviders,
		["IdentityPoolName"] = IdentityPoolName,
		["OpenIdConnectProviderARNs"] = OpenIdConnectProviderARNs,
	}
	M.AssertCreateIdentityPoolInput(t)
	return t
end

local GetOpenIdTokenForDeveloperIdentityResponse_keys = { "Token" = true, "IdentityId" = true, nil }

function M.AssertGetOpenIdTokenForDeveloperIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenForDeveloperIdentityResponse to be of type 'table'")
	if struct["Token"] then M.AssertOIDCToken(struct["Token"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetOpenIdTokenForDeveloperIdentityResponse_keys[k], "GetOpenIdTokenForDeveloperIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenForDeveloperIdentityResponse
-- &lt;p&gt;Returned in response to a successful &lt;code&gt;GetOpenIdTokenForDeveloperIdentity&lt;/code&gt; request.&lt;/p&gt;
-- @param Token [OIDCToken] &lt;p&gt;An OpenID token.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.GetOpenIdTokenForDeveloperIdentityResponse(Token, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIdTokenForDeveloperIdentityResponse")
	local t = { 
		["Token"] = Token,
		["IdentityId"] = IdentityId,
	}
	M.AssertGetOpenIdTokenForDeveloperIdentityResponse(t)
	return t
end

local GetIdResponse_keys = { "IdentityId" = true, nil }

function M.AssertGetIdResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdResponse to be of type 'table'")
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetIdResponse_keys[k], "GetIdResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdResponse
-- &lt;p&gt;Returned in response to a GetId request.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.GetIdResponse(IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdResponse")
	local t = { 
		["IdentityId"] = IdentityId,
	}
	M.AssertGetIdResponse(t)
	return t
end

local GetOpenIdTokenResponse_keys = { "Token" = true, "IdentityId" = true, nil }

function M.AssertGetOpenIdTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenResponse to be of type 'table'")
	if struct["Token"] then M.AssertOIDCToken(struct["Token"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetOpenIdTokenResponse_keys[k], "GetOpenIdTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenResponse
-- &lt;p&gt;Returned in response to a successful GetOpenIdToken request.&lt;/p&gt;
-- @param Token [OIDCToken] &lt;p&gt;An OpenID token, valid for 15 minutes.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID. Note that the IdentityId returned may not match the one passed on input.&lt;/p&gt;
function M.GetOpenIdTokenResponse(Token, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIdTokenResponse")
	local t = { 
		["Token"] = Token,
		["IdentityId"] = IdentityId,
	}
	M.AssertGetOpenIdTokenResponse(t)
	return t
end

local RoleMapping_keys = { "AmbiguousRoleResolution" = true, "Type" = true, "RulesConfiguration" = true, nil }

function M.AssertRoleMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleMapping to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["AmbiguousRoleResolution"] then M.AssertAmbiguousRoleResolutionType(struct["AmbiguousRoleResolution"]) end
	if struct["Type"] then M.AssertRoleMappingType(struct["Type"]) end
	if struct["RulesConfiguration"] then M.AssertRulesConfigurationType(struct["RulesConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(RoleMapping_keys[k], "RoleMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleMapping
-- &lt;p&gt;A role mapping.&lt;/p&gt;
-- @param AmbiguousRoleResolution [AmbiguousRoleResolutionType] &lt;p&gt;If you specify Token or Rules as the &lt;code&gt;Type&lt;/code&gt;, &lt;code&gt;AmbiguousRoleResolution&lt;/code&gt; is required.&lt;/p&gt; &lt;p&gt;Specifies the action to be taken if either no rules match the claim value for the &lt;code&gt;Rules&lt;/code&gt; type, or there is no &lt;code&gt;cognito:preferred_role&lt;/code&gt; claim and there are multiple &lt;code&gt;cognito:roles&lt;/code&gt; matches for the &lt;code&gt;Token&lt;/code&gt; type.&lt;/p&gt;
-- @param Type [RoleMappingType] &lt;p&gt;The role mapping type. Token will use &lt;code&gt;cognito:roles&lt;/code&gt; and &lt;code&gt;cognito:preferred_role&lt;/code&gt; claims from the Cognito identity provider token to map groups to roles. Rules will attempt to match claims from the token to map to a role.&lt;/p&gt;
-- @param RulesConfiguration [RulesConfigurationType] &lt;p&gt;The rules to be used for mapping users to roles.&lt;/p&gt; &lt;p&gt;If you specify Rules as the role mapping type, &lt;code&gt;RulesConfiguration&lt;/code&gt; is required.&lt;/p&gt;
-- Required parameter: Type
function M.RoleMapping(AmbiguousRoleResolution, Type, RulesConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoleMapping")
	local t = { 
		["AmbiguousRoleResolution"] = AmbiguousRoleResolution,
		["Type"] = Type,
		["RulesConfiguration"] = RulesConfiguration,
	}
	M.AssertRoleMapping(t)
	return t
end

local MappingRule_keys = { "Claim" = true, "MatchType" = true, "RoleARN" = true, "Value" = true, nil }

function M.AssertMappingRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MappingRule to be of type 'table'")
	assert(struct["Claim"], "Expected key Claim to exist in table")
	assert(struct["MatchType"], "Expected key MatchType to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["Claim"] then M.AssertClaimName(struct["Claim"]) end
	if struct["MatchType"] then M.AssertMappingRuleMatchType(struct["MatchType"]) end
	if struct["RoleARN"] then M.AssertARNString(struct["RoleARN"]) end
	if struct["Value"] then M.AssertClaimValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(MappingRule_keys[k], "MappingRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MappingRule
-- &lt;p&gt;A rule that maps a claim name, a claim value, and a match type to a role ARN.&lt;/p&gt;
-- @param Claim [ClaimName] &lt;p&gt;The claim name that must be present in the token, for example, &quot;isAdmin&quot; or &quot;paid&quot;.&lt;/p&gt;
-- @param MatchType [MappingRuleMatchType] &lt;p&gt;The match condition that specifies how closely the claim value in the IdP token must match &lt;code&gt;Value&lt;/code&gt;.&lt;/p&gt;
-- @param RoleARN [ARNString] &lt;p&gt;The role ARN.&lt;/p&gt;
-- @param Value [ClaimValue] &lt;p&gt;A brief string that the claim must match, for example, &quot;paid&quot; or &quot;yes&quot;.&lt;/p&gt;
-- Required parameter: Claim
-- Required parameter: MatchType
-- Required parameter: Value
-- Required parameter: RoleARN
function M.MappingRule(Claim, MatchType, RoleARN, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MappingRule")
	local t = { 
		["Claim"] = Claim,
		["MatchType"] = MatchType,
		["RoleARN"] = RoleARN,
		["Value"] = Value,
	}
	M.AssertMappingRule(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- &lt;p&gt;Thrown for missing or bad input parameter(s).&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by an InvalidParameterException.&lt;/p&gt;
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local UnprocessedIdentityId_keys = { "ErrorCode" = true, "IdentityId" = true, nil }

function M.AssertUnprocessedIdentityId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedIdentityId to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(UnprocessedIdentityId_keys[k], "UnprocessedIdentityId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedIdentityId
-- &lt;p&gt;An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The error code indicating the type of error that occurred.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.UnprocessedIdentityId(ErrorCode, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedIdentityId")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["IdentityId"] = IdentityId,
	}
	M.AssertUnprocessedIdentityId(t)
	return t
end

local GetIdentityPoolRolesInput_keys = { "IdentityPoolId" = true, nil }

function M.AssertGetIdentityPoolRolesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolRolesInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityPoolRolesInput_keys[k], "GetIdentityPoolRolesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolRolesInput
-- &lt;p&gt;Input to the &lt;code&gt;GetIdentityPoolRoles&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.GetIdentityPoolRolesInput(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoolRolesInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertGetIdentityPoolRolesInput(t)
	return t
end

local ListIdentitiesInput_keys = { "IdentityPoolId" = true, "NextToken" = true, "HideDisabled" = true, "MaxResults" = true, nil }

function M.AssertListIdentitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["HideDisabled"] then M.AssertHideDisabled(struct["HideDisabled"]) end
	if struct["MaxResults"] then M.AssertQueryLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentitiesInput_keys[k], "ListIdentitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesInput
-- &lt;p&gt;Input to the ListIdentities action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param NextToken [PaginationKey] &lt;p&gt;A pagination token.&lt;/p&gt;
-- @param HideDisabled [HideDisabled] &lt;p&gt;An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.&lt;/p&gt;
-- @param MaxResults [QueryLimit] &lt;p&gt;The maximum number of identities to return.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: MaxResults
function M.ListIdentitiesInput(IdentityPoolId, NextToken, HideDisabled, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentitiesInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["NextToken"] = NextToken,
		["HideDisabled"] = HideDisabled,
		["MaxResults"] = MaxResults,
	}
	M.AssertListIdentitiesInput(t)
	return t
end

local DeleteIdentityPoolInput_keys = { "IdentityPoolId" = true, nil }

function M.AssertDeleteIdentityPoolInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityPoolInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIdentityPoolInput_keys[k], "DeleteIdentityPoolInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityPoolInput
-- &lt;p&gt;Input to the DeleteIdentityPool action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.DeleteIdentityPoolInput(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityPoolInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertDeleteIdentityPoolInput(t)
	return t
end

local DeleteIdentitiesInput_keys = { "IdentityIdsToDelete" = true, nil }

function M.AssertDeleteIdentitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentitiesInput to be of type 'table'")
	assert(struct["IdentityIdsToDelete"], "Expected key IdentityIdsToDelete to exist in table")
	if struct["IdentityIdsToDelete"] then M.AssertIdentityIdList(struct["IdentityIdsToDelete"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIdentitiesInput_keys[k], "DeleteIdentitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentitiesInput
-- &lt;p&gt;Input to the &lt;code&gt;DeleteIdentities&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityIdsToDelete [IdentityIdList] &lt;p&gt;A list of 1-60 identities that you want to delete.&lt;/p&gt;
-- Required parameter: IdentityIdsToDelete
function M.DeleteIdentitiesInput(IdentityIdsToDelete, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentitiesInput")
	local t = { 
		["IdentityIdsToDelete"] = IdentityIdsToDelete,
	}
	M.AssertDeleteIdentitiesInput(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;Thrown when the total number of user pools has exceeded a preset limit.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by a LimitExceededException.&lt;/p&gt;
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ListIdentityPoolsResponse_keys = { "NextToken" = true, "IdentityPools" = true, nil }

function M.AssertListIdentityPoolsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["IdentityPools"] then M.AssertIdentityPoolsList(struct["IdentityPools"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityPoolsResponse_keys[k], "ListIdentityPoolsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolsResponse
-- &lt;p&gt;The result of a successful ListIdentityPools action.&lt;/p&gt;
-- @param NextToken [PaginationKey] &lt;p&gt;A pagination token.&lt;/p&gt;
-- @param IdentityPools [IdentityPoolsList] &lt;p&gt;The identity pools returned by the ListIdentityPools action.&lt;/p&gt;
function M.ListIdentityPoolsResponse(NextToken, IdentityPools, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoolsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["IdentityPools"] = IdentityPools,
	}
	M.AssertListIdentityPoolsResponse(t)
	return t
end

local ConcurrentModificationException_keys = { "message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- &lt;p&gt;Thrown if there are parallel requests to modify a resource.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by a ConcurrentModificationException.&lt;/p&gt;
function M.ConcurrentModificationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["message"] = message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local GetOpenIdTokenForDeveloperIdentityInput_keys = { "Logins" = true, "IdentityPoolId" = true, "TokenDuration" = true, "IdentityId" = true, nil }

function M.AssertGetOpenIdTokenForDeveloperIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenForDeveloperIdentityInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["Logins"], "Expected key Logins to exist in table")
	if struct["Logins"] then M.AssertLoginsMap(struct["Logins"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["TokenDuration"] then M.AssertTokenDuration(struct["TokenDuration"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetOpenIdTokenForDeveloperIdentityInput_keys[k], "GetOpenIdTokenForDeveloperIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenForDeveloperIdentityInput
-- &lt;p&gt;Input to the &lt;code&gt;GetOpenIdTokenForDeveloperIdentity&lt;/code&gt; action.&lt;/p&gt;
-- @param Logins [LoginsMap] &lt;p&gt;A set of optional name-value pairs that map provider names to provider tokens. Each name-value pair represents a user from a public provider or developer provider. If the user is from a developer provider, the name-value pair will follow the syntax &lt;code&gt;&quot;developer_provider_name&quot;: &quot;developer_user_identifier&quot;&lt;/code&gt;. The developer provider is the &quot;domain&quot; by which Cognito will refer to your users; you provided this domain while creating/updating the identity pool. The developer user identifier is an identifier from your backend that uniquely identifies a user. When you create an identity pool, you can specify the supported logins.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param TokenDuration [TokenDuration] &lt;p&gt;The expiration time of the token, in seconds. You can specify a custom expiration time for the token so that you can cache it. If you don't provide an expiration time, the token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token's duration.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: Logins
function M.GetOpenIdTokenForDeveloperIdentityInput(Logins, IdentityPoolId, TokenDuration, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIdTokenForDeveloperIdentityInput")
	local t = { 
		["Logins"] = Logins,
		["IdentityPoolId"] = IdentityPoolId,
		["TokenDuration"] = TokenDuration,
		["IdentityId"] = IdentityId,
	}
	M.AssertGetOpenIdTokenForDeveloperIdentityInput(t)
	return t
end

local CognitoIdentityProvider_keys = { "ServerSideTokenCheck" = true, "ClientId" = true, "ProviderName" = true, nil }

function M.AssertCognitoIdentityProvider(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CognitoIdentityProvider to be of type 'table'")
	if struct["ServerSideTokenCheck"] then M.AssertCognitoIdentityProviderTokenCheck(struct["ServerSideTokenCheck"]) end
	if struct["ClientId"] then M.AssertCognitoIdentityProviderClientId(struct["ClientId"]) end
	if struct["ProviderName"] then M.AssertCognitoIdentityProviderName(struct["ProviderName"]) end
	for k,_ in pairs(struct) do
		assert(CognitoIdentityProvider_keys[k], "CognitoIdentityProvider contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CognitoIdentityProvider
-- &lt;p&gt;A provider representing an Amazon Cognito Identity User Pool and its client ID.&lt;/p&gt;
-- @param ServerSideTokenCheck [CognitoIdentityProviderTokenCheck] &lt;p&gt;TRUE if server-side token validation is enabled for the identity provider’s token.&lt;/p&gt;
-- @param ClientId [CognitoIdentityProviderClientId] &lt;p&gt;The client ID for the Amazon Cognito Identity User Pool.&lt;/p&gt;
-- @param ProviderName [CognitoIdentityProviderName] &lt;p&gt;The provider name for an Amazon Cognito Identity User Pool. For example, &lt;code&gt;cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789&lt;/code&gt;.&lt;/p&gt;
function M.CognitoIdentityProvider(ServerSideTokenCheck, ClientId, ProviderName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CognitoIdentityProvider")
	local t = { 
		["ServerSideTokenCheck"] = ServerSideTokenCheck,
		["ClientId"] = ClientId,
		["ProviderName"] = ProviderName,
	}
	M.AssertCognitoIdentityProvider(t)
	return t
end

local TooManyRequestsException_keys = { "message" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- &lt;p&gt;Thrown when a request is throttled.&lt;/p&gt;
-- @param message [String] &lt;p&gt;Message returned by a TooManyRequestsException&lt;/p&gt;
function M.TooManyRequestsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local IdentityDescription_keys = { "Logins" = true, "LastModifiedDate" = true, "CreationDate" = true, "IdentityId" = true, nil }

function M.AssertIdentityDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityDescription to be of type 'table'")
	if struct["Logins"] then M.AssertLoginsList(struct["Logins"]) end
	if struct["LastModifiedDate"] then M.AssertDateType(struct["LastModifiedDate"]) end
	if struct["CreationDate"] then M.AssertDateType(struct["CreationDate"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(IdentityDescription_keys[k], "IdentityDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityDescription
-- &lt;p&gt;A description of the identity.&lt;/p&gt;
-- @param Logins [LoginsList] &lt;p&gt;A set of optional name-value pairs that map provider names to provider tokens.&lt;/p&gt;
-- @param LastModifiedDate [DateType] &lt;p&gt;Date on which the identity was last modified.&lt;/p&gt;
-- @param CreationDate [DateType] &lt;p&gt;Date on which the identity was created.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.IdentityDescription(Logins, LastModifiedDate, CreationDate, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityDescription")
	local t = { 
		["Logins"] = Logins,
		["LastModifiedDate"] = LastModifiedDate,
		["CreationDate"] = CreationDate,
		["IdentityId"] = IdentityId,
	}
	M.AssertIdentityDescription(t)
	return t
end

local ListIdentitiesResponse_keys = { "IdentityPoolId" = true, "NextToken" = true, "Identities" = true, nil }

function M.AssertListIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesResponse to be of type 'table'")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["Identities"] then M.AssertIdentitiesList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentitiesResponse_keys[k], "ListIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesResponse
-- &lt;p&gt;The response to a ListIdentities request.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param NextToken [PaginationKey] &lt;p&gt;A pagination token.&lt;/p&gt;
-- @param Identities [IdentitiesList] &lt;p&gt;An object containing a set of identities and associated mappings.&lt;/p&gt;
function M.ListIdentitiesResponse(IdentityPoolId, NextToken, Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentitiesResponse")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["NextToken"] = NextToken,
		["Identities"] = Identities,
	}
	M.AssertListIdentitiesResponse(t)
	return t
end

local IdentityPoolShortDescription_keys = { "IdentityPoolId" = true, "IdentityPoolName" = true, nil }

function M.AssertIdentityPoolShortDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityPoolShortDescription to be of type 'table'")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["IdentityPoolName"] then M.AssertIdentityPoolName(struct["IdentityPoolName"]) end
	for k,_ in pairs(struct) do
		assert(IdentityPoolShortDescription_keys[k], "IdentityPoolShortDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityPoolShortDescription
-- &lt;p&gt;A description of the identity pool.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param IdentityPoolName [IdentityPoolName] &lt;p&gt;A string that you provide.&lt;/p&gt;
function M.IdentityPoolShortDescription(IdentityPoolId, IdentityPoolName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityPoolShortDescription")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["IdentityPoolName"] = IdentityPoolName,
	}
	M.AssertIdentityPoolShortDescription(t)
	return t
end

local InternalErrorException_keys = { "message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- &lt;p&gt;Thrown when the service encounters an error during processing the request.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by an InternalErrorException.&lt;/p&gt;
function M.InternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local InvalidIdentityPoolConfigurationException_keys = { "message" = true, nil }

function M.AssertInvalidIdentityPoolConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdentityPoolConfigurationException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidIdentityPoolConfigurationException_keys[k], "InvalidIdentityPoolConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdentityPoolConfigurationException
-- &lt;p&gt;Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned for an &lt;code&gt;InvalidIdentityPoolConfigurationException&lt;/code&gt; &lt;/p&gt;
function M.InvalidIdentityPoolConfigurationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIdentityPoolConfigurationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidIdentityPoolConfigurationException(t)
	return t
end

local Credentials_keys = { "SecretKey" = true, "SessionToken" = true, "Expiration" = true, "AccessKeyId" = true, nil }

function M.AssertCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Credentials to be of type 'table'")
	if struct["SecretKey"] then M.AssertSecretKeyString(struct["SecretKey"]) end
	if struct["SessionToken"] then M.AssertSessionTokenString(struct["SessionToken"]) end
	if struct["Expiration"] then M.AssertDateType(struct["Expiration"]) end
	if struct["AccessKeyId"] then M.AssertAccessKeyString(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(Credentials_keys[k], "Credentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Credentials
-- &lt;p&gt;Credentials for the provided identity ID.&lt;/p&gt;
-- @param SecretKey [SecretKeyString] &lt;p&gt;The Secret Access Key portion of the credentials&lt;/p&gt;
-- @param SessionToken [SessionTokenString] &lt;p&gt;The Session Token portion of the credentials&lt;/p&gt;
-- @param Expiration [DateType] &lt;p&gt;The date at which these credentials will expire.&lt;/p&gt;
-- @param AccessKeyId [AccessKeyString] &lt;p&gt;The Access Key portion of the credentials.&lt;/p&gt;
function M.Credentials(SecretKey, SessionToken, Expiration, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Credentials")
	local t = { 
		["SecretKey"] = SecretKey,
		["SessionToken"] = SessionToken,
		["Expiration"] = Expiration,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertCredentials(t)
	return t
end

local SetIdentityPoolRolesInput_keys = { "IdentityPoolId" = true, "Roles" = true, "RoleMappings" = true, nil }

function M.AssertSetIdentityPoolRolesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityPoolRolesInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["Roles"], "Expected key Roles to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Roles"] then M.AssertRolesMap(struct["Roles"]) end
	if struct["RoleMappings"] then M.AssertRoleMappingMap(struct["RoleMappings"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityPoolRolesInput_keys[k], "SetIdentityPoolRolesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityPoolRolesInput
-- &lt;p&gt;Input to the &lt;code&gt;SetIdentityPoolRoles&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param Roles [RolesMap] &lt;p&gt;The map of roles associated with this pool. For a given role, the key will be either &quot;authenticated&quot; or &quot;unauthenticated&quot; and the value will be the Role ARN.&lt;/p&gt;
-- @param RoleMappings [RoleMappingMap] &lt;p&gt;How users for a specific identity provider are to mapped to roles. This is a string to &lt;a&gt;RoleMapping&lt;/a&gt; object map. The string identifies the identity provider, for example, &quot;graph.facebook.com&quot; or &quot;cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id&quot;.&lt;/p&gt; &lt;p&gt;Up to 25 rules can be specified per identity provider.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: Roles
function M.SetIdentityPoolRolesInput(IdentityPoolId, Roles, RoleMappings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityPoolRolesInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["Roles"] = Roles,
		["RoleMappings"] = RoleMappings,
	}
	M.AssertSetIdentityPoolRolesInput(t)
	return t
end

local GetIdInput_keys = { "Logins" = true, "IdentityPoolId" = true, "AccountId" = true, nil }

function M.AssertGetIdInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["Logins"] then M.AssertLoginsMap(struct["Logins"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(GetIdInput_keys[k], "GetIdInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdInput
-- &lt;p&gt;Input to the GetId action.&lt;/p&gt;
-- @param Logins [LoginsMap] &lt;p&gt;A set of optional name-value pairs that map provider names to provider tokens. The available provider names for &lt;code&gt;Logins&lt;/code&gt; are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Facebook: &lt;code&gt;graph.facebook.com&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Amazon Cognito Identity Provider: &lt;code&gt;cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Google: &lt;code&gt;accounts.google.com&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Amazon: &lt;code&gt;www.amazon.com&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Twitter: &lt;code&gt;api.twitter.com&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Digits: &lt;code&gt;www.digits.com&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param AccountId [AccountId] &lt;p&gt;A standard AWS account ID (9+ digits).&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.GetIdInput(Logins, IdentityPoolId, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdInput")
	local t = { 
		["Logins"] = Logins,
		["IdentityPoolId"] = IdentityPoolId,
		["AccountId"] = AccountId,
	}
	M.AssertGetIdInput(t)
	return t
end

local DescribeIdentityPoolInput_keys = { "IdentityPoolId" = true, nil }

function M.AssertDescribeIdentityPoolInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityPoolInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityPoolInput_keys[k], "DescribeIdentityPoolInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityPoolInput
-- &lt;p&gt;Input to the DescribeIdentityPool action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.DescribeIdentityPoolInput(IdentityPoolId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityPoolInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
	}
	M.AssertDescribeIdentityPoolInput(t)
	return t
end

local UnlinkDeveloperIdentityInput_keys = { "IdentityPoolId" = true, "DeveloperUserIdentifier" = true, "DeveloperProviderName" = true, "IdentityId" = true, nil }

function M.AssertUnlinkDeveloperIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnlinkDeveloperIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["DeveloperProviderName"], "Expected key DeveloperProviderName to exist in table")
	assert(struct["DeveloperUserIdentifier"], "Expected key DeveloperUserIdentifier to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DeveloperUserIdentifier"] then M.AssertDeveloperUserIdentifier(struct["DeveloperUserIdentifier"]) end
	if struct["DeveloperProviderName"] then M.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(UnlinkDeveloperIdentityInput_keys[k], "UnlinkDeveloperIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnlinkDeveloperIdentityInput
-- &lt;p&gt;Input to the &lt;code&gt;UnlinkDeveloperIdentity&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param DeveloperUserIdentifier [DeveloperUserIdentifier] &lt;p&gt;A unique ID used by your backend authentication process to identify a user.&lt;/p&gt;
-- @param DeveloperProviderName [DeveloperProviderName] &lt;p&gt;The &quot;domain&quot; by which Cognito will refer to your users.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityId
-- Required parameter: IdentityPoolId
-- Required parameter: DeveloperProviderName
-- Required parameter: DeveloperUserIdentifier
function M.UnlinkDeveloperIdentityInput(IdentityPoolId, DeveloperUserIdentifier, DeveloperProviderName, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnlinkDeveloperIdentityInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["DeveloperUserIdentifier"] = DeveloperUserIdentifier,
		["DeveloperProviderName"] = DeveloperProviderName,
		["IdentityId"] = IdentityId,
	}
	M.AssertUnlinkDeveloperIdentityInput(t)
	return t
end

local IdentityPool_keys = { "DeveloperProviderName" = true, "SamlProviderARNs" = true, "SupportedLoginProviders" = true, "AllowUnauthenticatedIdentities" = true, "IdentityPoolName" = true, "IdentityPoolId" = true, "CognitoIdentityProviders" = true, "OpenIdConnectProviderARNs" = true, nil }

function M.AssertIdentityPool(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityPool to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityPoolName"], "Expected key IdentityPoolName to exist in table")
	assert(struct["AllowUnauthenticatedIdentities"], "Expected key AllowUnauthenticatedIdentities to exist in table")
	if struct["DeveloperProviderName"] then M.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["SamlProviderARNs"] then M.AssertSAMLProviderList(struct["SamlProviderARNs"]) end
	if struct["SupportedLoginProviders"] then M.AssertIdentityProviders(struct["SupportedLoginProviders"]) end
	if struct["AllowUnauthenticatedIdentities"] then M.AssertIdentityPoolUnauthenticated(struct["AllowUnauthenticatedIdentities"]) end
	if struct["IdentityPoolName"] then M.AssertIdentityPoolName(struct["IdentityPoolName"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["CognitoIdentityProviders"] then M.AssertCognitoIdentityProviderList(struct["CognitoIdentityProviders"]) end
	if struct["OpenIdConnectProviderARNs"] then M.AssertOIDCProviderList(struct["OpenIdConnectProviderARNs"]) end
	for k,_ in pairs(struct) do
		assert(IdentityPool_keys[k], "IdentityPool contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityPool
-- &lt;p&gt;An object representing an Amazon Cognito identity pool.&lt;/p&gt;
-- @param DeveloperProviderName [DeveloperProviderName] &lt;p&gt;The &quot;domain&quot; by which Cognito will refer to your users.&lt;/p&gt;
-- @param SamlProviderARNs [SAMLProviderList] &lt;p&gt;An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.&lt;/p&gt;
-- @param SupportedLoginProviders [IdentityProviders] &lt;p&gt;Optional key:value pairs mapping provider names to provider app IDs.&lt;/p&gt;
-- @param AllowUnauthenticatedIdentities [IdentityPoolUnauthenticated] &lt;p&gt;TRUE if the identity pool supports unauthenticated logins.&lt;/p&gt;
-- @param IdentityPoolName [IdentityPoolName] &lt;p&gt;A string that you provide.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param CognitoIdentityProviders [CognitoIdentityProviderList] &lt;p&gt;A list representing an Amazon Cognito Identity User Pool and its client ID.&lt;/p&gt;
-- @param OpenIdConnectProviderARNs [OIDCProviderList] &lt;p&gt;A list of OpendID Connect provider ARNs.&lt;/p&gt;
-- Required parameter: IdentityPoolId
-- Required parameter: IdentityPoolName
-- Required parameter: AllowUnauthenticatedIdentities
function M.IdentityPool(DeveloperProviderName, SamlProviderARNs, SupportedLoginProviders, AllowUnauthenticatedIdentities, IdentityPoolName, IdentityPoolId, CognitoIdentityProviders, OpenIdConnectProviderARNs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityPool")
	local t = { 
		["DeveloperProviderName"] = DeveloperProviderName,
		["SamlProviderARNs"] = SamlProviderARNs,
		["SupportedLoginProviders"] = SupportedLoginProviders,
		["AllowUnauthenticatedIdentities"] = AllowUnauthenticatedIdentities,
		["IdentityPoolName"] = IdentityPoolName,
		["IdentityPoolId"] = IdentityPoolId,
		["CognitoIdentityProviders"] = CognitoIdentityProviders,
		["OpenIdConnectProviderARNs"] = OpenIdConnectProviderARNs,
	}
	M.AssertIdentityPool(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;Thrown when the requested resource (for example, a dataset or record) does not exist.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by a ResourceNotFoundException.&lt;/p&gt;
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local LookupDeveloperIdentityInput_keys = { "IdentityPoolId" = true, "NextToken" = true, "DeveloperUserIdentifier" = true, "MaxResults" = true, "IdentityId" = true, nil }

function M.AssertLookupDeveloperIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupDeveloperIdentityInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["DeveloperUserIdentifier"] then M.AssertDeveloperUserIdentifier(struct["DeveloperUserIdentifier"]) end
	if struct["MaxResults"] then M.AssertQueryLimit(struct["MaxResults"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(LookupDeveloperIdentityInput_keys[k], "LookupDeveloperIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupDeveloperIdentityInput
-- &lt;p&gt;Input to the &lt;code&gt;LookupDeveloperIdentityInput&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param NextToken [PaginationKey] &lt;p&gt;A pagination token. The first call you make will have &lt;code&gt;NextToken&lt;/code&gt; set to null. After that the service will return &lt;code&gt;NextToken&lt;/code&gt; values as needed. For example, let's say you make a request with &lt;code&gt;MaxResults&lt;/code&gt; set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.&lt;/p&gt;
-- @param DeveloperUserIdentifier [DeveloperUserIdentifier] &lt;p&gt;A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.&lt;/p&gt;
-- @param MaxResults [QueryLimit] &lt;p&gt;The maximum number of identities to return.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityPoolId
function M.LookupDeveloperIdentityInput(IdentityPoolId, NextToken, DeveloperUserIdentifier, MaxResults, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupDeveloperIdentityInput")
	local t = { 
		["IdentityPoolId"] = IdentityPoolId,
		["NextToken"] = NextToken,
		["DeveloperUserIdentifier"] = DeveloperUserIdentifier,
		["MaxResults"] = MaxResults,
		["IdentityId"] = IdentityId,
	}
	M.AssertLookupDeveloperIdentityInput(t)
	return t
end

local MergeDeveloperIdentitiesInput_keys = { "DestinationUserIdentifier" = true, "IdentityPoolId" = true, "DeveloperProviderName" = true, "SourceUserIdentifier" = true, nil }

function M.AssertMergeDeveloperIdentitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeDeveloperIdentitiesInput to be of type 'table'")
	assert(struct["SourceUserIdentifier"], "Expected key SourceUserIdentifier to exist in table")
	assert(struct["DestinationUserIdentifier"], "Expected key DestinationUserIdentifier to exist in table")
	assert(struct["DeveloperProviderName"], "Expected key DeveloperProviderName to exist in table")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["DestinationUserIdentifier"] then M.AssertDeveloperUserIdentifier(struct["DestinationUserIdentifier"]) end
	if struct["IdentityPoolId"] then M.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DeveloperProviderName"] then M.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["SourceUserIdentifier"] then M.AssertDeveloperUserIdentifier(struct["SourceUserIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(MergeDeveloperIdentitiesInput_keys[k], "MergeDeveloperIdentitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeDeveloperIdentitiesInput
-- &lt;p&gt;Input to the &lt;code&gt;MergeDeveloperIdentities&lt;/code&gt; action.&lt;/p&gt;
-- @param DestinationUserIdentifier [DeveloperUserIdentifier] &lt;p&gt;User identifier for the destination user. The value should be a &lt;code&gt;DeveloperUserIdentifier&lt;/code&gt;.&lt;/p&gt;
-- @param IdentityPoolId [IdentityPoolId] &lt;p&gt;An identity pool ID in the format REGION:GUID.&lt;/p&gt;
-- @param DeveloperProviderName [DeveloperProviderName] &lt;p&gt;The &quot;domain&quot; by which Cognito will refer to your users. This is a (pseudo) domain name that you provide while creating an identity pool. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the &lt;code&gt;DeveloperProviderName&lt;/code&gt;, you can use letters as well as period (.), underscore (_), and dash (-).&lt;/p&gt;
-- @param SourceUserIdentifier [DeveloperUserIdentifier] &lt;p&gt;User identifier for the source user. The value should be a &lt;code&gt;DeveloperUserIdentifier&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: SourceUserIdentifier
-- Required parameter: DestinationUserIdentifier
-- Required parameter: DeveloperProviderName
-- Required parameter: IdentityPoolId
function M.MergeDeveloperIdentitiesInput(DestinationUserIdentifier, IdentityPoolId, DeveloperProviderName, SourceUserIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MergeDeveloperIdentitiesInput")
	local t = { 
		["DestinationUserIdentifier"] = DestinationUserIdentifier,
		["IdentityPoolId"] = IdentityPoolId,
		["DeveloperProviderName"] = DeveloperProviderName,
		["SourceUserIdentifier"] = SourceUserIdentifier,
	}
	M.AssertMergeDeveloperIdentitiesInput(t)
	return t
end

local DeveloperUserAlreadyRegisteredException_keys = { "message" = true, nil }

function M.AssertDeveloperUserAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeveloperUserAlreadyRegisteredException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DeveloperUserAlreadyRegisteredException_keys[k], "DeveloperUserAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeveloperUserAlreadyRegisteredException
-- &lt;p&gt;The provided developer user identifier is already registered with Cognito under a different identity ID.&lt;/p&gt;
-- @param message [String] &lt;p&gt;This developer user identifier is already registered with Cognito.&lt;/p&gt;
function M.DeveloperUserAlreadyRegisteredException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeveloperUserAlreadyRegisteredException")
	local t = { 
		["message"] = message,
	}
	M.AssertDeveloperUserAlreadyRegisteredException(t)
	return t
end

local UnlinkIdentityInput_keys = { "Logins" = true, "LoginsToRemove" = true, "IdentityId" = true, nil }

function M.AssertUnlinkIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnlinkIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["Logins"], "Expected key Logins to exist in table")
	assert(struct["LoginsToRemove"], "Expected key LoginsToRemove to exist in table")
	if struct["Logins"] then M.AssertLoginsMap(struct["Logins"]) end
	if struct["LoginsToRemove"] then M.AssertLoginsList(struct["LoginsToRemove"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(UnlinkIdentityInput_keys[k], "UnlinkIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnlinkIdentityInput
-- &lt;p&gt;Input to the UnlinkIdentity action.&lt;/p&gt;
-- @param Logins [LoginsMap] &lt;p&gt;A set of optional name-value pairs that map provider names to provider tokens.&lt;/p&gt;
-- @param LoginsToRemove [LoginsList] &lt;p&gt;Provider names to unlink from this identity.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityId
-- Required parameter: Logins
-- Required parameter: LoginsToRemove
function M.UnlinkIdentityInput(Logins, LoginsToRemove, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnlinkIdentityInput")
	local t = { 
		["Logins"] = Logins,
		["LoginsToRemove"] = LoginsToRemove,
		["IdentityId"] = IdentityId,
	}
	M.AssertUnlinkIdentityInput(t)
	return t
end

local ExternalServiceException_keys = { "message" = true, nil }

function M.AssertExternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExternalServiceException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExternalServiceException_keys[k], "ExternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExternalServiceException
-- &lt;p&gt;An exception thrown when a dependent service such as Facebook or Twitter is not responding&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by an ExternalServiceException&lt;/p&gt;
function M.ExternalServiceException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExternalServiceException")
	local t = { 
		["message"] = message,
	}
	M.AssertExternalServiceException(t)
	return t
end

local GetCredentialsForIdentityResponse_keys = { "Credentials" = true, "IdentityId" = true, nil }

function M.AssertGetCredentialsForIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCredentialsForIdentityResponse to be of type 'table'")
	if struct["Credentials"] then M.AssertCredentials(struct["Credentials"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetCredentialsForIdentityResponse_keys[k], "GetCredentialsForIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCredentialsForIdentityResponse
-- &lt;p&gt;Returned in response to a successful &lt;code&gt;GetCredentialsForIdentity&lt;/code&gt; operation.&lt;/p&gt;
-- @param Credentials [Credentials] &lt;p&gt;Credentials for the provided identity ID.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.GetCredentialsForIdentityResponse(Credentials, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCredentialsForIdentityResponse")
	local t = { 
		["Credentials"] = Credentials,
		["IdentityId"] = IdentityId,
	}
	M.AssertGetCredentialsForIdentityResponse(t)
	return t
end

local GetCredentialsForIdentityInput_keys = { "Logins" = true, "CustomRoleArn" = true, "IdentityId" = true, nil }

function M.AssertGetCredentialsForIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCredentialsForIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["Logins"] then M.AssertLoginsMap(struct["Logins"]) end
	if struct["CustomRoleArn"] then M.AssertARNString(struct["CustomRoleArn"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(GetCredentialsForIdentityInput_keys[k], "GetCredentialsForIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCredentialsForIdentityInput
-- &lt;p&gt;Input to the &lt;code&gt;GetCredentialsForIdentity&lt;/code&gt; action.&lt;/p&gt;
-- @param Logins [LoginsMap] &lt;p&gt;A set of optional name-value pairs that map provider names to provider tokens.&lt;/p&gt;
-- @param CustomRoleArn [ARNString] &lt;p&gt;The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityId
function M.GetCredentialsForIdentityInput(Logins, CustomRoleArn, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCredentialsForIdentityInput")
	local t = { 
		["Logins"] = Logins,
		["CustomRoleArn"] = CustomRoleArn,
		["IdentityId"] = IdentityId,
	}
	M.AssertGetCredentialsForIdentityInput(t)
	return t
end

local DescribeIdentityInput_keys = { "IdentityId" = true, nil }

function M.AssertDescribeIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeIdentityInput_keys[k], "DescribeIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityInput
-- &lt;p&gt;Input to the &lt;code&gt;DescribeIdentity&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
-- Required parameter: IdentityId
function M.DescribeIdentityInput(IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeIdentityInput")
	local t = { 
		["IdentityId"] = IdentityId,
	}
	M.AssertDescribeIdentityInput(t)
	return t
end

local DeleteIdentitiesResponse_keys = { "UnprocessedIdentityIds" = true, nil }

function M.AssertDeleteIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentitiesResponse to be of type 'table'")
	if struct["UnprocessedIdentityIds"] then M.AssertUnprocessedIdentityIdList(struct["UnprocessedIdentityIds"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIdentitiesResponse_keys[k], "DeleteIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentitiesResponse
-- &lt;p&gt;Returned in response to a successful &lt;code&gt;DeleteIdentities&lt;/code&gt; operation.&lt;/p&gt;
-- @param UnprocessedIdentityIds [UnprocessedIdentityIdList] &lt;p&gt;An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.&lt;/p&gt;
function M.DeleteIdentitiesResponse(UnprocessedIdentityIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentitiesResponse")
	local t = { 
		["UnprocessedIdentityIds"] = UnprocessedIdentityIds,
	}
	M.AssertDeleteIdentitiesResponse(t)
	return t
end

local ResourceConflictException_keys = { "message" = true, nil }

function M.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceConflictException_keys[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- &lt;p&gt;Thrown when a user tries to use a login which is already linked to another account.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The message returned by a ResourceConflictException.&lt;/p&gt;
function M.ResourceConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceConflictException(t)
	return t
end

local MergeDeveloperIdentitiesResponse_keys = { "IdentityId" = true, nil }

function M.AssertMergeDeveloperIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeDeveloperIdentitiesResponse to be of type 'table'")
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(MergeDeveloperIdentitiesResponse_keys[k], "MergeDeveloperIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeDeveloperIdentitiesResponse
-- &lt;p&gt;Returned in response to a successful &lt;code&gt;MergeDeveloperIdentities&lt;/code&gt; action.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.MergeDeveloperIdentitiesResponse(IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MergeDeveloperIdentitiesResponse")
	local t = { 
		["IdentityId"] = IdentityId,
	}
	M.AssertMergeDeveloperIdentitiesResponse(t)
	return t
end

local LookupDeveloperIdentityResponse_keys = { "NextToken" = true, "DeveloperUserIdentifierList" = true, "IdentityId" = true, nil }

function M.AssertLookupDeveloperIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupDeveloperIdentityResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationKey(struct["NextToken"]) end
	if struct["DeveloperUserIdentifierList"] then M.AssertDeveloperUserIdentifierList(struct["DeveloperUserIdentifierList"]) end
	if struct["IdentityId"] then M.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(LookupDeveloperIdentityResponse_keys[k], "LookupDeveloperIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupDeveloperIdentityResponse
-- &lt;p&gt;Returned in response to a successful &lt;code&gt;LookupDeveloperIdentity&lt;/code&gt; action.&lt;/p&gt;
-- @param NextToken [PaginationKey] &lt;p&gt;A pagination token. The first call you make will have &lt;code&gt;NextToken&lt;/code&gt; set to null. After that the service will return &lt;code&gt;NextToken&lt;/code&gt; values as needed. For example, let's say you make a request with &lt;code&gt;MaxResults&lt;/code&gt; set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.&lt;/p&gt;
-- @param DeveloperUserIdentifierList [DeveloperUserIdentifierList] &lt;p&gt;This is the list of developer user identifiers associated with an identity ID. Cognito supports the association of multiple developer user identifiers with an identity ID.&lt;/p&gt;
-- @param IdentityId [IdentityId] &lt;p&gt;A unique identifier in the format REGION:GUID.&lt;/p&gt;
function M.LookupDeveloperIdentityResponse(NextToken, DeveloperUserIdentifierList, IdentityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupDeveloperIdentityResponse")
	local t = { 
		["NextToken"] = NextToken,
		["DeveloperUserIdentifierList"] = DeveloperUserIdentifierList,
		["IdentityId"] = IdentityId,
	}
	M.AssertLookupDeveloperIdentityResponse(t)
	return t
end

function M.AssertCognitoIdentityProviderClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected CognitoIdentityProviderClientId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w_]+"), "Expected string to match pattern '[%w_]+'")
end

--  
function M.CognitoIdentityProviderClientId(str)
	M.AssertCognitoIdentityProviderClientId(str)
	return str
end

function M.AssertIdentityProviderToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderToken to be of type 'string'")
	assert(#str <= 50000, "Expected string to be max 50000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityProviderToken(str)
	M.AssertIdentityProviderToken(str)
	return str
end

function M.AssertSecretKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretKeyString to be of type 'string'")
end

--  
function M.SecretKeyString(str)
	M.AssertSecretKeyString(str)
	return str
end

function M.AssertDeveloperProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeveloperProviderName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w._-]+"), "Expected string to match pattern '[%w._-]+'")
end

--  
function M.DeveloperProviderName(str)
	M.AssertDeveloperProviderName(str)
	return str
end

function M.AssertCognitoIdentityProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected CognitoIdentityProviderName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w._:/-]+"), "Expected string to match pattern '[%w._:/-]+'")
end

--  
function M.CognitoIdentityProviderName(str)
	M.AssertCognitoIdentityProviderName(str)
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

function M.AssertIdentityPoolName(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w ]+"), "Expected string to match pattern '[%w ]+'")
end

--  
function M.IdentityPoolName(str)
	M.AssertIdentityPoolName(str)
	return str
end

function M.AssertMappingRuleMatchType(str)
	assert(str)
	assert(type(str) == "string", "Expected MappingRuleMatchType to be of type 'string'")
end

--  
function M.MappingRuleMatchType(str)
	M.AssertMappingRuleMatchType(str)
	return str
end

function M.AssertRoleType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleType to be of type 'string'")
	assert(str:match("(un)?authenticated"), "Expected string to match pattern '(un)?authenticated'")
end

--  
function M.RoleType(str)
	M.AssertRoleType(str)
	return str
end

function M.AssertIdentityProviderId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w.;_/-]+"), "Expected string to match pattern '[%w.;_/-]+'")
end

--  
function M.IdentityProviderId(str)
	M.AssertIdentityProviderId(str)
	return str
end

function M.AssertClaimName(str)
	assert(str)
	assert(type(str) == "string", "Expected ClaimName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%p{L}%p{M}%p{S}%p{N}%p{P}]+"), "Expected string to match pattern '[%p{L}%p{M}%p{S}%p{N}%p{P}]+'")
end

--  
function M.ClaimName(str)
	M.AssertClaimName(str)
	return str
end

function M.AssertIdentityPoolId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+:[0-9a-f-]+"), "Expected string to match pattern '[%w-]+:[0-9a-f-]+'")
end

--  
function M.IdentityPoolId(str)
	M.AssertIdentityPoolId(str)
	return str
end

function M.AssertARNString(str)
	assert(str)
	assert(type(str) == "string", "Expected ARNString to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ARNString(str)
	M.AssertARNString(str)
	return str
end

function M.AssertAccessKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessKeyString to be of type 'string'")
end

--  
function M.AccessKeyString(str)
	M.AssertAccessKeyString(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertOIDCToken(str)
	assert(str)
	assert(type(str) == "string", "Expected OIDCToken to be of type 'string'")
end

--  
function M.OIDCToken(str)
	M.AssertOIDCToken(str)
	return str
end

function M.AssertClaimValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ClaimValue to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClaimValue(str)
	M.AssertClaimValue(str)
	return str
end

function M.AssertRoleMappingType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleMappingType to be of type 'string'")
end

--  
function M.RoleMappingType(str)
	M.AssertRoleMappingType(str)
	return str
end

function M.AssertIdentityProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityProviderName(str)
	M.AssertIdentityProviderName(str)
	return str
end

function M.AssertAmbiguousRoleResolutionType(str)
	assert(str)
	assert(type(str) == "string", "Expected AmbiguousRoleResolutionType to be of type 'string'")
end

--  
function M.AmbiguousRoleResolutionType(str)
	M.AssertAmbiguousRoleResolutionType(str)
	return str
end

function M.AssertIdentityId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+:[0-9a-f-]+"), "Expected string to match pattern '[%w-]+:[0-9a-f-]+'")
end

--  
function M.IdentityId(str)
	M.AssertIdentityId(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("%d+"), "Expected string to match pattern '%d+'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertDeveloperUserIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected DeveloperUserIdentifier to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeveloperUserIdentifier(str)
	M.AssertDeveloperUserIdentifier(str)
	return str
end

function M.AssertSessionTokenString(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionTokenString to be of type 'string'")
end

--  
function M.SessionTokenString(str)
	M.AssertSessionTokenString(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertTokenDuration(long)
	assert(long)
	assert(type(long) == "number", "Expected TokenDuration to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TokenDuration(long)
	M.AssertTokenDuration(long)
	return long
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

function M.AssertHideDisabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HideDisabled to be of type 'boolean'")
end

function M.HideDisabled(boolean)
	M.AssertHideDisabled(boolean)
	return boolean
end

function M.AssertIdentityPoolUnauthenticated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IdentityPoolUnauthenticated to be of type 'boolean'")
end

function M.IdentityPoolUnauthenticated(boolean)
	M.AssertIdentityPoolUnauthenticated(boolean)
	return boolean
end

function M.AssertCognitoIdentityProviderTokenCheck(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CognitoIdentityProviderTokenCheck to be of type 'boolean'")
end

function M.CognitoIdentityProviderTokenCheck(boolean)
	M.AssertCognitoIdentityProviderTokenCheck(boolean)
	return boolean
end

function M.AssertIdentityProviders(map)
	assert(map)
	assert(type(map) == "table", "Expected IdentityProviders to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentityProviderName(k)
		M.AssertIdentityProviderId(v)
	end
end

function M.IdentityProviders(map)
	M.AssertIdentityProviders(map)
	return map
end

function M.AssertLoginsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LoginsMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentityProviderName(k)
		M.AssertIdentityProviderToken(v)
	end
end

function M.LoginsMap(map)
	M.AssertLoginsMap(map)
	return map
end

function M.AssertRoleMappingMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RoleMappingMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentityProviderName(k)
		M.AssertRoleMapping(v)
	end
end

function M.RoleMappingMap(map)
	M.AssertRoleMappingMap(map)
	return map
end

function M.AssertRolesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RolesMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertRoleType(k)
		M.AssertARNString(v)
	end
end

function M.RolesMap(map)
	M.AssertRolesMap(map)
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

function M.AssertOIDCProviderList(list)
	assert(list)
	assert(type(list) == "table", "Expected OIDCProviderList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertARNString(v)
	end
end

--  
-- List of ARNString objects
function M.OIDCProviderList(list)
	M.AssertOIDCProviderList(list)
	return list
end

function M.AssertMappingRulesList(list)
	assert(list)
	assert(type(list) == "table", "Expected MappingRulesList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertMappingRule(v)
	end
end

--  
-- List of MappingRule objects
function M.MappingRulesList(list)
	M.AssertMappingRulesList(list)
	return list
end

function M.AssertIdentitiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentitiesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIdentityDescription(v)
	end
end

--  
-- List of IdentityDescription objects
function M.IdentitiesList(list)
	M.AssertIdentitiesList(list)
	return list
end

function M.AssertDeveloperUserIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeveloperUserIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeveloperUserIdentifier(v)
	end
end

--  
-- List of DeveloperUserIdentifier objects
function M.DeveloperUserIdentifierList(list)
	M.AssertDeveloperUserIdentifierList(list)
	return list
end

function M.AssertIdentityPoolsList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityPoolsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIdentityPoolShortDescription(v)
	end
end

--  
-- List of IdentityPoolShortDescription objects
function M.IdentityPoolsList(list)
	M.AssertIdentityPoolsList(list)
	return list
end

function M.AssertIdentityIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityIdList to be of type ''table")
	assert(#list <= 60, "Expected list to be contain 60 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertIdentityId(v)
	end
end

--  
-- List of IdentityId objects
function M.IdentityIdList(list)
	M.AssertIdentityIdList(list)
	return list
end

function M.AssertLoginsList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoginsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIdentityProviderName(v)
	end
end

--  
-- List of IdentityProviderName objects
function M.LoginsList(list)
	M.AssertLoginsList(list)
	return list
end

function M.AssertCognitoIdentityProviderList(list)
	assert(list)
	assert(type(list) == "table", "Expected CognitoIdentityProviderList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCognitoIdentityProvider(v)
	end
end

--  
-- List of CognitoIdentityProvider objects
function M.CognitoIdentityProviderList(list)
	M.AssertCognitoIdentityProviderList(list)
	return list
end

function M.AssertUnprocessedIdentityIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedIdentityIdList to be of type ''table")
	assert(#list <= 60, "Expected list to be contain 60 elements")
	for _,v in ipairs(list) do
		M.AssertUnprocessedIdentityId(v)
	end
end

--  
-- List of UnprocessedIdentityId objects
function M.UnprocessedIdentityIdList(list)
	M.AssertUnprocessedIdentityIdList(list)
	return list
end

function M.AssertSAMLProviderList(list)
	assert(list)
	assert(type(list) == "table", "Expected SAMLProviderList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertARNString(v)
	end
end

--  
-- List of ARNString objects
function M.SAMLProviderList(list)
	M.AssertSAMLProviderList(list)
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
			return "cognito-identity.amazonaws.com"
		end
	end
	local ss = { "cognito-identity" }
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
--- MergeDeveloperIdentities
-- @param MergeDeveloperIdentitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.MergeDeveloperIdentitiesAsync(MergeDeveloperIdentitiesInput, cb)
	assert(MergeDeveloperIdentitiesInput, "You must provide a MergeDeveloperIdentitiesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.MergeDeveloperIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", MergeDeveloperIdentitiesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityPoolRoles
-- @param GetIdentityPoolRolesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityPoolRolesAsync(GetIdentityPoolRolesInput, cb)
	assert(GetIdentityPoolRolesInput, "You must provide a GetIdentityPoolRolesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetIdentityPoolRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityPoolRolesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIdentities
-- @param DeleteIdentitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentitiesAsync(DeleteIdentitiesInput, cb)
	assert(DeleteIdentitiesInput, "You must provide a DeleteIdentitiesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DeleteIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIdentitiesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOpenIdTokenForDeveloperIdentity
-- @param GetOpenIdTokenForDeveloperIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetOpenIdTokenForDeveloperIdentityAsync(GetOpenIdTokenForDeveloperIdentityInput, cb)
	assert(GetOpenIdTokenForDeveloperIdentityInput, "You must provide a GetOpenIdTokenForDeveloperIdentityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetOpenIdTokenForDeveloperIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOpenIdTokenForDeveloperIdentityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- LookupDeveloperIdentity
-- @param LookupDeveloperIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.LookupDeveloperIdentityAsync(LookupDeveloperIdentityInput, cb)
	assert(LookupDeveloperIdentityInput, "You must provide a LookupDeveloperIdentityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.LookupDeveloperIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", LookupDeveloperIdentityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIdentityPools
-- @param ListIdentityPoolsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentityPoolsAsync(ListIdentityPoolsInput, cb)
	assert(ListIdentityPoolsInput, "You must provide a ListIdentityPoolsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.ListIdentityPools",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIdentityPoolsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeIdentity
-- @param DescribeIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityAsync(DescribeIdentityInput, cb)
	assert(DescribeIdentityInput, "You must provide a DescribeIdentityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DescribeIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeIdentityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetId
-- @param GetIdInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdAsync(GetIdInput, cb)
	assert(GetIdInput, "You must provide a GetIdInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetId",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnlinkIdentity
-- @param UnlinkIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.UnlinkIdentityAsync(UnlinkIdentityInput, cb)
	assert(UnlinkIdentityInput, "You must provide a UnlinkIdentityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.UnlinkIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnlinkIdentityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIdentities
-- @param ListIdentitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentitiesAsync(ListIdentitiesInput, cb)
	assert(ListIdentitiesInput, "You must provide a ListIdentitiesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.ListIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIdentitiesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIdentityPool
-- @param DeleteIdentityPoolInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentityPoolAsync(DeleteIdentityPoolInput, cb)
	assert(DeleteIdentityPoolInput, "You must provide a DeleteIdentityPoolInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DeleteIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIdentityPoolInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCredentialsForIdentity
-- @param GetCredentialsForIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetCredentialsForIdentityAsync(GetCredentialsForIdentityInput, cb)
	assert(GetCredentialsForIdentityInput, "You must provide a GetCredentialsForIdentityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetCredentialsForIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCredentialsForIdentityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateIdentityPool
-- @param IdentityPool
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIdentityPoolAsync(IdentityPool, cb)
	assert(IdentityPool, "You must provide a IdentityPool")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.UpdateIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", IdentityPool, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityPoolRoles
-- @param SetIdentityPoolRolesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityPoolRolesAsync(SetIdentityPoolRolesInput, cb)
	assert(SetIdentityPoolRolesInput, "You must provide a SetIdentityPoolRolesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.SetIdentityPoolRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIdentityPoolRolesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnlinkDeveloperIdentity
-- @param UnlinkDeveloperIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.UnlinkDeveloperIdentityAsync(UnlinkDeveloperIdentityInput, cb)
	assert(UnlinkDeveloperIdentityInput, "You must provide a UnlinkDeveloperIdentityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.UnlinkDeveloperIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnlinkDeveloperIdentityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeIdentityPool
-- @param DescribeIdentityPoolInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityPoolAsync(DescribeIdentityPoolInput, cb)
	assert(DescribeIdentityPoolInput, "You must provide a DescribeIdentityPoolInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DescribeIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeIdentityPoolInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOpenIdToken
-- @param GetOpenIdTokenInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetOpenIdTokenAsync(GetOpenIdTokenInput, cb)
	assert(GetOpenIdTokenInput, "You must provide a GetOpenIdTokenInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetOpenIdToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOpenIdTokenInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateIdentityPool
-- @param CreateIdentityPoolInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIdentityPoolAsync(CreateIdentityPoolInput, cb)
	assert(CreateIdentityPoolInput, "You must provide a CreateIdentityPoolInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.CreateIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateIdentityPoolInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
